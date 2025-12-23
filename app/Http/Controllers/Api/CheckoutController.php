<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Item;
use App\Models\ShippingService;
use App\Models\State;
use App\Models\PromoCode;
use App\Models\Setting;
use App\Models\TrackOrder;
use App\Models\Transaction;
use App\Models\Notification;
use App\Helpers\PriceHelper;
use App\Helpers\EmailHelper;
use App\Helpers\SmsHelper;
use App\Jobs\EmailSendJob;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
use Carbon\Carbon;

class CheckoutController extends Controller
{
    /**
     * SAVE BILLING ADDRESS
     */
    public function billing(Request $request)
    {
        $request->validate([
            'bill_first_name' => 'required|max:255',
            'bill_last_name' => 'required|max:255',
            'bill_email' => 'required|email',
            'bill_phone' => 'required|max:255',
            'bill_address1' => 'required|max:255',
            'bill_city' => 'required|max:255',
            'bill_zip' => 'required|max:255',
            'bill_country' => 'sometimes|max:255',
            'same_ship_address' => 'sometimes|boolean',
        ]);

        Session::put('billing_address', $request->all());

        if ($request->same_ship_address) {
            Session::put('shipping_address', [
                'ship_first_name' => $request->bill_first_name,
                'ship_last_name' => $request->bill_last_name,
                'ship_email' => $request->bill_email,
                'ship_phone' => $request->bill_phone,
                'ship_address1' => $request->bill_address1,
                'ship_address2' => $request->bill_address2 ?? '',
                'ship_city' => $request->bill_city,
                'ship_zip' => $request->bill_zip,
                'ship_country' => $request->bill_country ?? '',
                'ship_company' => $request->bill_company ?? '',
            ]);
        }

        return response()->json([
            'message' => 'Billing address saved',
            'next_step' => $request->same_ship_address ? 'payment' : 'shipping'
        ]);
    }

    /**
     * SAVE SHIPPING ADDRESS
     */
    public function shipping(Request $request)
    {
        $request->validate([
            'ship_first_name' => 'required|max:255',
            'ship_last_name' => 'required|max:255',
            'ship_email' => 'required|email',
            'ship_phone' => 'required|max:255',
            'ship_address1' => 'required|max:255',
            'ship_city' => 'required|max:255',
            'ship_zip' => 'required|max:255',
        ]);

        Session::put('shipping_address', $request->all());

        return response()->json([
            'message' => 'Shipping address saved',
            'next_step' => 'payment'
        ]);
    }

    /**
     * SUBMIT CHECKOUT (Create Order)
     */
    public function submit(Request $request)
    {
        $request->validate([
            'payment_method' => 'required|in:Cash On Delivery,Bank,Stripe,Paypal,Mollie,Paystack',
            'shipping_id' => 'sometimes|required|exists:shipping_services,id',
            'state_id' => 'sometimes|nullable|exists:states,id',
            'txn_id' => 'sometimes|nullable|string',
        ]);

        if (!Session::has('cart') || empty(Session::get('cart'))) {
            return response()->json([
                'message' => 'Cart is empty'
            ], 422);
        }

        if (!Session::has('billing_address')) {
            return response()->json([
                'message' => 'Billing address required'
            ], 422);
        }

        if (!Session::has('shipping_address')) {
            return response()->json([
                'message' => 'Shipping address required'
            ], 422);
        }

        $cart = Session::get('cart');
        $user = Auth::user();
        $total_tax = 0;
        $cart_total = 0;
        $total = 0;

        foreach ($cart as $key => $items) {
            $total += ($items['main_price'] + $items['attribute_price']) * $items['qty'];
            $cart_total = $total;
            $item = Item::findOrFail($key);
            if ($item->tax) {
                $total_tax += $item::taxCalculate($item) * $items['qty'];
            }
        }

        $shipping = null;
        if (!PriceHelper::Digital() && $request->shipping_id) {
            $shipping = ShippingService::findOrFail($request->shipping_id);
        }

        $discount = [];
        if (Session::has('coupon')) {
            $discount = Session::get('coupon');
        }

        $grand_total = ($cart_total + ($shipping ? $shipping->price : 0)) + $total_tax;
        $grand_total = $grand_total - ($discount ? $discount['discount'] : 0);
        $state_tax = PriceHelper::StatePrce($request->state_id, $cart_total);
        $grand_total += $state_tax;
        $total_amount = PriceHelper::setConvertPrice($grand_total);

        // CREATE ORDER
        $orderData = [];
        $orderData['state'] = $request->state_id ? json_encode(State::find($request->state_id), true) : null;
        $orderData['cart'] = json_encode($cart, true);
        $orderData['discount'] = json_encode($discount, true);
        $orderData['shipping'] = json_encode($shipping, true);
        $orderData['tax'] = $total_tax;
        $orderData['state_price'] = $state_tax;
        $orderData['shipping_info'] = json_encode(Session::get('shipping_address'), true);
        $orderData['billing_info'] = json_encode(Session::get('billing_address'), true);
        $orderData['payment_method'] = $request->payment_method;
        $orderData['user_id'] = $user ? $user->id : 0;
        $orderData['transaction_number'] = Str::random(10);
        $orderData['currency_sign'] = PriceHelper::setCurrencySign();
        $orderData['currency_value'] = PriceHelper::setCurrencyValue();
        $orderData['payment_status'] = in_array($request->payment_method, ['Cash On Delivery', 'Bank']) ? 'Unpaid' : 'Paid';
        $orderData['order_status'] = 'Pending';

        if ($request->txn_id) {
            $orderData['txnid'] = $request->txn_id;
        }

        $order = Order::create($orderData);

        // UPDATE TRANSACTION NUMBER
        $new_txn = 'ORD-' . str_pad(Carbon::now()->format('Ymd'), 4, '0000', STR_PAD_LEFT) . '-' . $order->id;
        $order->transaction_number = $new_txn;
        $order->save();

        // CREATE TRACK ORDER
        TrackOrder::create([
            'title' => 'Pending',
            'order_id' => $order->id,
        ]);

        // CREATE TRANSACTION
        PriceHelper::Transaction($order->id, $order->transaction_number, $user->email ?? Session::get('billing_address')['bill_email'], PriceHelper::OrderTotal($order, 'trns'));

        // DECREASE STOCK
        PriceHelper::stockDecrese();
        PriceHelper::LicenseQtyDecrese($cart);

        // CREATE NOTIFICATION
        Notification::create([
            'order_id' => $order->id
        ]);

        // SEND EMAIL
        $setting = Setting::first();
        $emailData = [
            'to' => $user->email ?? Session::get('billing_address')['bill_email'],
            'type' => "Order",
            'user_name' => $user ? $user->displayName() : Session::get('billing_address')['bill_first_name'],
            'order_cost' => $total_amount,
            'transaction_number' => $order->transaction_number,
            'site_title' => $setting->title,
        ];

        if ($setting->is_queue_enabled == 1) {
            dispatch(new EmailSendJob($emailData, "template"));
        } else {
            (new EmailHelper())->sendTemplateMail($emailData, "template");
        }

        // SEND SMS
        if ($setting->is_twilio == 1) {
            $sms = new SmsHelper();
            $user_number = $user->phone ?? json_decode($order->billing_info, true)['bill_phone'];
            if ($user_number) {
                $sms->SendSms($user_number, "'purchase'", $order->transaction_number);
            }
        }

        // UPDATE COUPON
        if ($discount && isset($discount['code']['id'])) {
            $coupon = PromoCode::findOrFail($discount['code']['id']);
            $coupon->no_of_times -= 1;
            $coupon->save();
        }

        // CLEAR SESSION
        Session::forget('cart');
        Session::forget('coupon');
        Session::forget('discount');

        return response()->json([
            'message' => 'Order placed successfully',
            'order' => [
                'id' => $order->id,
                'transaction_number' => $order->transaction_number,
                'total' => $total_amount,
                'payment_status' => $order->payment_status,
                'order_status' => $order->order_status,
            ]
        ], 201);
    }

    /**
     * CHECKOUT SUCCESS
     */
    public function success(Request $request)
    {
        $request->validate([
            'order_id' => 'required|exists:orders,id'
        ]);

        $order = Order::findOrFail($request->order_id);

        if ($order->user_id != Auth::id()) {
            return response()->json([
                'message' => 'Unauthorized'
            ], 403);
        }

        return response()->json([
            'message' => 'Order confirmed',
            'order' => new \App\Http\Resources\OrderResource($order)
        ]);
    }
}
