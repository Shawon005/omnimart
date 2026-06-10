<?php

namespace App\Http\Controllers\Payment;

use App\Helpers\EmailHelper;
use App\Helpers\PriceHelper;
use App\Http\Controllers\Controller;
use App\Jobs\EmailSendJob;
use App\Models\Item;
use App\Models\Order;
use App\Models\PaymentSetting;
use App\Models\Setting;
use App\Models\ShippingService;
use App\Models\State;
use App\Services\OrderPaymentFinalizer;
use Ifthenpay\PaymentGateway\Enums\Status;
use Ifthenpay\PaymentGateway\Exception\WebhookValidationException;
use Ifthenpay\PaymentGateway\IfthenpayGateway;
use Ifthenpay\PaymentGateway\Model\PayByLink;
use Ifthenpay\PaymentGateway\RequestObj\WebhookRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use InvalidArgumentException;
use Illuminate\Support\Str;
class IfthenpayController extends Controller
{
    public function __construct(private OrderPaymentFinalizer $orderPaymentFinalizer)
    {
    }

    public function store(Request $request)
    {
        $this->validateCheckoutRequest($request);
        PriceHelper::checkCheckout($request);

        $data = $request->all();
        $selectedOption = $this->normalizeSelectedOption((string) $request->input('ifthenpay_option'));
        $order = $this->createPendingOrder($data, $selectedOption);

        // try {
            $gateway = $this->makeGateway($selectedOption);
            $this->registerWebhook($gateway);
            //dd($gateway);
            $payment = $gateway->payByLink()->initPayment(
                (string) $order->id,
                $this->formatAmount((float) PriceHelper::OrderTotal($order, 'trns')),
                'Order #' . $order->transaction_number,
                route('front.ifthenpay.success', ['order_id' => $order->id]),
                route('front.ifthenpay.error', ['order_id' => $order->id]),
                route('front.ifthenpay.cancel', ['order_id' => $order->id]),
                route('front.ifthenpay.return', ['order_id' => $order->id]),
                $this->getGatewayLanguage(),
                $this->getDaysToExpire()
            );

            $order->charge_id = $payment->getPinCode();
            $order->save();
            $this->sendPendingOrderEmail($order);

            return redirect()->away($payment->getPaymentUrl());
        // } catch (\Throwable $exception) {
        //     $order->delete();

        //     return redirect()
        //         ->route('front.checkout.cancle')
        //         ->withError($exception->getMessage());
        // }
    }

    public function success(Request $request)
    {
        $order = $this->resolveOrder($request);

        if (!$order) {
            return redirect()->route('front.checkout.cancle');
        }

        if ($order->payment_status === 'Paid') {
            Session::put('order_id', $order->id);
            $this->clearCheckoutSession();

            return redirect()->route('front.checkout.success');
        }

        if (!$request->filled('tid')) {
            return redirect()
                ->route('front.ifthenpay.return', ['order_id' => $order->id])
                ->with('info', __('Your order was created, but payment confirmation is still pending.'));
        }

        try {
            $paymentMethod = $this->makeGateway()->payByLink()->isTransactionPaid((string) $request->tid);

            if ($paymentMethod) {
                $this->orderPaymentFinalizer->finalize($order, (string) $request->tid);
                Session::put('order_id', $order->id);
                $this->clearCheckoutSession();

                return redirect()->route('front.checkout.success');
            }
        } catch (\Throwable $exception) {
            Log::warning('IfthenPay success verification failed.', [
                'order_id' => $order->id,
                'message' => $exception->getMessage(),
            ]);
        }

        return redirect()
            ->route('front.ifthenpay.return', ['order_id' => $order->id])
            ->with('info', __('Your order was created, but payment confirmation is still pending.'));
    }

    public function cancel(Request $request)
    {
        return $this->showPendingPage(
            $request,
            __('The IfthenPay window was closed before payment confirmation. If you already completed payment, your order will update automatically.')
        );
    }

    public function error(Request $request)
    {
        return $this->showPendingPage(
            $request,
            __('IfthenPay returned an error for this attempt. If your payment was still completed, your order will update automatically.')
        );
    }

    public function returnPage(Request $request)
    {
        return $this->showPendingPage(
            $request,
            __('Your order was created. Complete the payment on IfthenPay, and the payment status will update automatically after confirmation.')
        );
    }

    public function webhook(Request $request)
    {
        $order = Order::find($request->oid);

        if (!$order) {
            return response('Order not found.', 404);
        }

        try {
            $storedPayment = new PayByLink(
                $this->formatAmount((float) PriceHelper::OrderTotal($order, 'trns')),
                (string) $order->id,
                (string) ($order->charge_id ?? ''),
                '',
                Status::PENDING
            );

            $webhookRequest = new WebhookRequest(
                (string) $request->val,
                (string) $request->oid,
                (string) $request->apk,
                $request->filled('tid') ? (string) $request->tid : null,
                $request->filled('ref') ? (string) $request->ref : null
            );

            $this->makeGateway()->payByLink()->validateWebhook($webhookRequest, $storedPayment);

            if ($request->filled('tid')) {
                $this->orderPaymentFinalizer->finalize($order, (string) $request->tid);
            }

            return response('OK', 200);
        } catch (WebhookValidationException $exception) {
            Log::warning('IfthenPay webhook validation failed.', [
                'order_id' => $order->id,
                'message' => $exception->getMessage(),
                'payload' => $request->all(),
            ]);

            return response('Invalid webhook.', 400);
        } catch (\Throwable $exception) {
            Log::error('IfthenPay webhook processing failed.', [
                'order_id' => $order->id,
                'message' => $exception->getMessage(),
                'payload' => $request->all(),
            ]);

            return response('Webhook processing failed.', 500);
        }
    }

    private function showPendingPage(Request $request, string $message)
    {
        $order = $this->resolveOrder($request);

        if (!$order) {
            return redirect()->route('front.checkout.cancle');
        }

        if ($order->payment_status === 'Paid') {
            Session::put('order_id', $order->id);
            $this->clearCheckoutSession();

            return redirect()->route('front.checkout.success');
        }

        return view('front.checkout.ifthenpay-pending', [
            'order' => $order,
            'message' => session('info', $message),
        ]);
    }

    private function resolveOrder(Request $request): ?Order
    {
        if ($request->filled('order_id')) {
            return Order::find($request->order_id);
        }

        if ($request->filled('oid')) {
            return Order::find($request->oid);
        }

        return null;
    }

    private function createPendingOrder(array $data, string $selectedOption): Order
    {
        $user = Auth::user();
        $cart = Session::get('cart');
        $totalTax = 0;
        $cartTotal = 0;
        $total = 0;
        $optionPrice = 0;

        foreach ($cart as $key => $items) {
            $total += $items['main_price'] * $items['qty'];
            $optionPrice += $items['attribute_price'];
            $cartTotal = $total + $optionPrice;

            $item = Item::findOrFail($key);
            if ($item->tax) {
                $totalTax += $item::taxCalculate($item) * $items['qty'];
            }
        }

        $shipping = !PriceHelper::Digital() ? null : ShippingService::findOrFail($data['shipping_id']);
        $discount = Session::has('coupon') ? Session::get('coupon') : [];

        $orderData['state'] = $data['state_id'] ? json_encode(State::findOrFail($data['state_id']), true) : null;
        $orderData['cart'] = json_encode($cart, true);
        $orderData['discount'] = json_encode($discount, true);
        $orderData['shipping'] = json_encode($shipping, true);
        $orderData['tax'] = $totalTax;
        $orderData['state_price'] = PriceHelper::StatePrce($data['state_id'], $cartTotal);
        $orderData['shipping_info'] = json_encode(Session::get('shipping_address'), true);
        $orderData['billing_info'] = json_encode(Session::get('billing_address'), true);
        $orderData['payment_method'] = $this->ifthenpayPaymentMethodLabel($selectedOption);
        $orderData['user_id'] = isset($user) ? $user->id : 0;
        $orderData['transaction_number'] = Str::random(10);
        $orderData['currency_sign'] = PriceHelper::setCurrencySign();
        $orderData['currency_value'] = PriceHelper::setCurrencyValue();
        $orderData['payment_status'] = 'Unpaid';
        $orderData['order_status'] = 'Pending';

        $order = Order::create($orderData);
        $order->transaction_number = Order::formatTransactionNumber($order->id);
        $order->save();

        return $order;
    }

    private function validateCheckoutRequest(Request $request): void
    {
        $shipping = ShippingService::whereStatus(1)->count() == 0 || PriceHelper::CheckDigital() == true ? 'required' : '';

        if ($request->single_page_checkout == 1) {
            $request->validate([
                'state_id' => 'nullable',
                'shipping_id' => $shipping,
                'ifthenpay_option' => 'required',
                'bill_first_name' => 'required',
                'bill_last_name' => 'required',
                'bill_email' => 'required',
                'bill_phone' => 'required',
                'bill_address1' => 'required',
                'bill_city' => 'required',
                'bill_zip' => 'required',
            ]);

            return;
        }

        $request->validate([
            'state_id' => 'nullable',
            'shipping_id' => $shipping,
            'ifthenpay_option' => 'required',
        ]);
    }

    private function makeGateway(?string $selectedOption = null): IfthenpayGateway
    {
        $gatewayData = $this->getGatewaySettings();
        $methodAccounts = $this->buildMethodAccounts($gatewayData, $selectedOption);

        if (empty($gatewayData['backoffice_key'])) {
            throw new \Exception('IfthenPay Backoffice Key is missing in admin payment settings.');
        }

        if (empty($gatewayData['anti_phishing_key'])) {
            throw new \Exception('IfthenPay Anti Phishing Key is missing in admin payment settings.');
        }

        if (empty($gatewayData['gateway_key'])) {
            throw new \Exception('IfthenPay Gateway Key is missing in admin payment settings.');
        }

        if (empty($methodAccounts)) {
            throw new \Exception('Configure at least one IfthenPay payment account or Multibanco entity/sub-entity in admin payment settings.');
        }

        return new IfthenpayGateway([
            'backofficeKey' => $gatewayData['backoffice_key'],
            'antiPhishingKey' => $gatewayData['anti_phishing_key'],
            'language' => $this->getGatewayLanguage(),
            'payByLink' => [
                'key' => $gatewayData['gateway_key'],
                'methodAccounts' => $methodAccounts,
                'defaultMethod' => $selectedOption ?: ($gatewayData['default_method'] ?: null),
                'daysToExpire' => $this->getDaysToExpire(),
                'isOneTimePayment' => (bool) ($gatewayData['is_one_time_payment'] ?? false),
                'successUrl' => route('front.ifthenpay.success'),
                'errorUrl' => route('front.ifthenpay.error'),
                'cancelUrl' => route('front.ifthenpay.cancel'),
                'btnCloseUrl' => route('front.ifthenpay.return'),
                'btnCloseLabel' => $gatewayData['close_button_label'] ?: 'Close',
            ],
        ]);
    }

    private function registerWebhook(IfthenpayGateway $gateway): void
    {
        try {
            $gateway->payByLink()->registerWebhook(route('front.ifthenpay.webhook'));
        } catch (\Throwable $exception) {
            Log::warning('IfthenPay webhook registration failed.', [
                'message' => $exception->getMessage(),
            ]);
        }
    }

    private function getGatewayLanguage(): string
    {
        $gatewayData = $this->getGatewaySettings();

        return !empty($gatewayData['language']) ? (string) $gatewayData['language'] : 'pt';
    }

    private function getDaysToExpire(): ?int
    {
        $gatewayData = $this->getGatewaySettings();

        if (!isset($gatewayData['days_to_expire']) || $gatewayData['days_to_expire'] === '') {
            return null;
        }

        return (int) $gatewayData['days_to_expire'];
    }

    private function clearCheckoutSession(): void
    {
        Session::forget('cart');
        Session::forget('discount');
        Session::forget('coupon');
        Session::forget('order_data');
        Session::forget('order_payment_id');
    }

    private function formatAmount(float $amount): string
    {
        return number_format($amount, 2, '.', '');
    }

    private function sendPendingOrderEmail(Order $order): void
    {
        
        $setting = Setting::first();
        if (!$setting) {
            return;
        }

        $gatewayData = $this->getGatewaySettings();
        if ((int) ($gatewayData['send_order_email'] ?? 1) !== 1) {
            return;
        }

        $billingInfo = json_decode($order->billing_info, true) ?: [];
        $emailData = [
            'to' => $order->user_id && $order->user ? $order->user->email : ($billingInfo['bill_email'] ?? ''),
            'type' => 'Order',
            'user_name' => $order->user_id && $order->user ? $order->user->displayName() : ($billingInfo['bill_first_name'] ?? 'Customer'),
            'order_cost' => PriceHelper::OrderTotal($order, 'trns'),
            'transaction_number' => $order->transaction_number,
            'site_title' => $setting->title,
            'order'=> $order,
        ];
       // dd($order);
        $email = new EmailHelper();
        $userEmailSent = false;
        //$email->adminMail($emailData);
        if (!empty($emailData['to'])) {
            if ($setting->is_queue_enabled == 1) {
                dispatch(new EmailSendJob($emailData, 'template'));
                $userEmailSent = true;
            } else {
                $userEmailSent = $email->sendTemplateMail($emailData);
                
            }
        }

        // Ensure admin receives order email for IfthenPay even if user email is missing/fails.
        if (
            (int) $setting->order_mail !== 1 ||
            empty($emailData['to']) ||
            ($setting->is_queue_enabled != 1 && !$userEmailSent)
        ) {
            // $email->adminMail($emailData);
        }
    }

    private function getGatewaySettings(): array
    {
        $paymentData = PaymentSetting::whereUniqueKeyword('ifthenpay')->firstOrFail();
        $gatewayData = $paymentData->convertJsonData() ?: [];

        return array_merge([
            'backoffice_key' => '',
            'anti_phishing_key' => '',
            'gateway_key' => '',
            'multibanco_entity' => '',
            'multibanco_sub_entity' => '',
            'mbway_key' => '',
            'payshop_key' => '',
            'credit_card_key' => '',
            'default_method' => 'CCARD',
            'language' => 'pt',
            'days_to_expire' => '3',
            'is_one_time_payment' => 1,
            'send_order_email' => 1,
            'close_button_label' => 'Close',
        ], $gatewayData);
    }

    private function buildMethodAccounts(array $gatewayData, ?string $selectedOption = null): array
    {
        $available = [];

        if (!empty($gatewayData['credit_card_key'])) {
            $available['CCARD'] = $gatewayData['credit_card_key'];
        }

        if (!empty($gatewayData['mbway_key'])) {
            $available['MBWAY'] = $gatewayData['mbway_key'];
        }

        if (!empty($gatewayData['payshop_key'])) {
            $available['PAYSHOP'] = $gatewayData['payshop_key'];
        }

        if (!empty($gatewayData['multibanco_entity']) && !empty($gatewayData['multibanco_sub_entity'])) {
            $available[$gatewayData['multibanco_entity']] = $gatewayData['multibanco_sub_entity'];
        }

        if ($selectedOption === null || $selectedOption === '') {
            return $available;
        }

        return match ($selectedOption) {
            'CCARD' => !empty($gatewayData['credit_card_key']) ? ['CCARD' => $gatewayData['credit_card_key']] : throw new InvalidArgumentException('IfthenPay Card key is not configured.'),
            'MBWAY' => !empty($gatewayData['mbway_key']) ? ['MBWAY' => $gatewayData['mbway_key']] : throw new InvalidArgumentException('IfthenPay MB WAY key is not configured.'),
            'PAYSHOP' => !empty($gatewayData['payshop_key']) ? ['PAYSHOP' => $gatewayData['payshop_key']] : throw new InvalidArgumentException('IfthenPay Payshop key is not configured.'),
            'MB' => (!empty($gatewayData['multibanco_entity']) && !empty($gatewayData['multibanco_sub_entity']))
                ? [$gatewayData['multibanco_entity'] => $gatewayData['multibanco_sub_entity']]
                : throw new InvalidArgumentException('IfthenPay Multibanco entity or sub-entity is not configured.'),
            default => throw new InvalidArgumentException('Invalid IfthenPay payment option selected.'),
        };
    }

    private function normalizeSelectedOption(string $selectedOption): string
    {
        $selectedOption = strtoupper(trim($selectedOption));

        return match ($selectedOption) {
            'CCARD', 'MBWAY', 'PAYSHOP', 'MB' => $selectedOption,
            default => throw new InvalidArgumentException('Please select a valid IfthenPay payment option.'),
        };
    }

    private function ifthenpayPaymentMethodLabel(string $selectedOption): string
    {
        return match ($selectedOption) {
            'CCARD' => 'Credit Card',
            'MB' => 'Multibanco',
            'MBWAY' => 'MB WAY',
            'PAYSHOP' => 'Payshop',
            default => 'IfthenPay',
        };
    }
}
