<?php

namespace App\Services;

use App\Helpers\EmailHelper;
use App\Helpers\PriceHelper;
use App\Helpers\SmsHelper;
use App\Jobs\EmailSendJob;
use App\Models\AttributeOption;
use App\Models\Item;
use App\Models\Notification;
use App\Models\Order;
use App\Models\PromoCode;
use App\Models\Setting;
use App\Models\TrackOrder;
use App\Models\Transaction;
use Carbon\Carbon;

class OrderPaymentFinalizer
{
    public function finalize(Order $order, string $transactionId): Order
    {
        if ($order->payment_status === 'Paid') {
            return $order;
        }

        $order->txnid = $transactionId;
        $order->payment_status = 'Paid';

        if (!str_starts_with((string) $order->transaction_number, 'ORD-')) {
            $order->transaction_number = 'ORD-' . str_pad(Carbon::now()->format('Ymd'), 4, '0000', STR_PAD_LEFT) . '-' . $order->id;
        }

        $order->save();

        $cart = json_decode($order->cart, true) ?: [];
        $discount = json_decode($order->discount, true) ?: [];

        $this->createTransaction($order);
        PriceHelper::LicenseQtyDecrese($cart);
        $this->stockDecreaseFromCart($cart);
        $this->decreaseCouponUsage($discount);

        if (!$order->tracks_data()->exists()) {
            TrackOrder::create([
                'title' => 'Pending',
                'order_id' => $order->id,
            ]);
        }

        if (!$order->notificaton()->exists()) {
            Notification::create([
                'order_id' => $order->id,
            ]);
        }

        $this->sendSms($order);
        $this->sendOrderEmail($order);

        return $order;
    }

    private function createTransaction(Order $order): void
    {
        if ($order->tranaction()->exists()) {
            return;
        }

        $currencyValue = (float) $order->currency_value;

        $transaction = new Transaction();
        $transaction->order_id = $order->id;
        $transaction->txn_id = $order->transaction_number;
        $transaction->user_email = $this->getOrderEmail($order);
        $transaction->amount = $currencyValue > 0
            ? PriceHelper::OrderTotal($order, 'trns') / $currencyValue
            : PriceHelper::OrderTotal($order, 'trns');
        $transaction->currency_sign = $order->currency_sign;
        $transaction->currency_value = $order->currency_value;
        $transaction->save();
    }

    private function decreaseCouponUsage(array $discount): void
    {
        if (!isset($discount['code']['id'])) {
            return;
        }

        $coupon = PromoCode::find($discount['code']['id']);

        if ($coupon && $coupon->no_of_times > 0) {
            $coupon->no_of_times -= 1;
            $coupon->save();
        }
    }

    private function stockDecreaseFromCart(array $cart): void
    {
        foreach ($cart as $itemId => $item) {
            $mainItemId = PriceHelper::GetItemId((string) $itemId);
            $mainItem = Item::find($mainItemId);

            if (!$mainItem || $mainItem->item_type !== 'normal') {
                continue;
            }

            $currentStock = $mainItem->stock - $item['qty'];
            $mainItem->stock = $currentStock <= 0 ? 0 : $currentStock;
            $mainItem->save();

            foreach ($item['options_id'] ?? [] as $optionId) {
                $option = AttributeOption::find($optionId);

                if (!$option || $option->stock === 'unlimited') {
                    continue;
                }

                $newStock = (int) $option->stock - $item['qty'];
                $option->stock = $newStock <= 0 ? '0' : (string) $newStock;
                $option->save();
            }
        }
    }

    private function sendSms(Order $order): void
    {
        $setting = Setting::first();

        if (!$setting || $setting->is_twilio != 1) {
            return;
        }

        $billingInfo = json_decode($order->billing_info, true) ?: [];
        $userNumber = $billingInfo['bill_phone'] ?? null;

        if (!$userNumber) {
            return;
        }

        $sms = new SmsHelper();
        $sms->SendSms($userNumber, "'purchase'", $order->transaction_number);
    }

    private function sendOrderEmail(Order $order): void
    {
        $setting = Setting::first();

        if (!$setting) {
            return;
        }

        $billingInfo = json_decode($order->billing_info, true) ?: [];
        $emailData = [
            'to' => $this->getOrderEmail($order),
            'type' => 'Order',
            'user_name' => $order->user_id && $order->user ? $order->user->displayName() : ($billingInfo['bill_first_name'] ?? 'Customer'),
            'order_cost' => PriceHelper::OrderTotal($order, 'trns'),
            'transaction_number' => $order->transaction_number,
            'site_title' => $setting->title,
        ];

        if ($setting->is_queue_enabled == 1) {
            dispatch(new EmailSendJob($emailData, 'template'));
            return;
        }

        $email = new EmailHelper();
        $email->sendTemplateMail($emailData);
    }

    private function getOrderEmail(Order $order): string
    {
        $billingInfo = json_decode($order->billing_info, true) ?: [];

        if ($order->user_id && $order->user) {
            return $order->user->email;
        }

        return $billingInfo['bill_email'] ?? '';
    }
}
