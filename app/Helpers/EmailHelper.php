<?php

/**
 * Created by UniverseCode.
 */

namespace App\Helpers;

use App\{
    Models\EmailTemplate,
    Models\Order,
    Models\Setting
};
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use PHPMailer\PHPMailer\{
    PHPMailer,
    Exception
};
use Throwable;

class EmailHelper
{

    public $mail;
    public $setting;

    public function __construct()
    {
        $this->setting = Setting::first();

        $this->mail = new PHPMailer(true);

        if ($this->setting->smtp_check == 1) {

            $this->mail->isSMTP();
            $this->mail->Host       = $this->setting->email_host;
            $this->mail->SMTPAuth   = true;
            $this->mail->Username   = $this->setting->email_user;
            $this->mail->Password   = $this->setting->email_pass;
            if ($this->setting->email_encryption == 'ssl') {
                $this->mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
            } else {
                $this->mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            }
            $this->mail->Port           = $this->setting->email_port;
            $this->mail->CharSet        = 'UTF-8';
        }
    }

    public function sendTemplateMail(array $emailData)
    {
        $template = EmailTemplate::whereType($emailData['type'])->first();
        try {
            if (!$template || empty($emailData['to'])) {
                Log::warning('Email template send skipped due to missing template or recipient.', [
                    'type' => $emailData['type'] ?? null,
                    'to' => $emailData['to'] ?? null,
                ]);
                return false;
            }
           

            $orderDetails = '';
            $templateBody = $template->body;
            if (($emailData['type'] ?? '') === 'Order') {
                $order = $this->resolveOrder($emailData);
                $orderDetails = $this->buildOrderDetailsHtml($order);
                if ($orderDetails !== '' && !str_contains($templateBody, '{order_details}')) {
                    $templateBody .= '<br><br>{order_details}';
                }
            }
            $orderDetails = json_decode($order, true);

            $cart = json_decode($orderDetails['cart'], true);
            $shipping = json_decode($orderDetails['shipping'], true);
            $shippingInfo = json_decode($orderDetails['shipping_info'], true);
            $billingInfo = json_decode($orderDetails['billing_info'], true);

            $products = [];
            foreach ($cart as $item) {
                $products[] = [
                    'name' => $item['name'],
                    'qty' => $item['qty'],
                    'price' => $item['price'],
                    'photo' => $item['photo'],
                ];
            }
            $product_rows = '';
            $grand_total = 0;

            foreach ($products as $item) {

                // ✅ Convert price using currency_value
                $price = $item['price'] * $orderDetails['currency_value'];
                $total = $price * $item['qty'];

                $grand_total += $total;

                $product_rows .= '
                <tr>
                    <td>'.$item['name'].'</td>
                    <td align="center">'.$item['qty'].'</td>
                    <td align="right">'.$orderDetails['currency_sign'].number_format($price, 2).'</td>
                    <td align="right">'.$orderDetails['currency_sign'].number_format($total, 2).'</td>
                </tr>';
            }
            $product_rows .= '
          
            <tr>
                <td colspan="3" align="right"><strong>Shipping Cost:</strong></td>
                <td align="right">'.$orderDetails['currency_sign'].number_format($shipping['price'] * $orderDetails['currency_value'], 2).'</td>
            </tr>';

            $shipping_html = '
            '.$shippingInfo['ship_first_name'].' '.$shippingInfo['ship_last_name'].'<br>
            '.$shippingInfo['ship_address1'].'<br>
            '.$shippingInfo['ship_city'].' - '.$shippingInfo['ship_zip'].'<br>
            '.$shippingInfo['ship_country'].'<br>
            Phone: '.$shippingInfo['ship_phone'].'';

            $billing_html = '
            '.$billingInfo['bill_first_name'].' '.$billingInfo['bill_last_name'].'<br>
            '.$billingInfo['bill_address1'].'<br>
            '.$billingInfo['bill_city'].' - '.$billingInfo['bill_zip'].'<br>
            '.$billingInfo['bill_country'].'<br>
            Phone: '.$billingInfo['bill_phone'].'';

            $email_body = strtr($templateBody, [
                '{user_name}' => (string) ($emailData['user_name'] ?? ''),
                '{order_cost}' => (string) ($emailData['order_cost'] ?? ''),
                '{transaction_number}' => (string) ($emailData['transaction_number'] ?? ''),
                '{site_title}' => (string) ($this->setting->title ?? ''),

                // ✅ FIXED
                '{order_items_html}' => $product_rows,
                '{shipping_info_html}' => $shipping_html,
                '{billing_info_html}' => $billing_html,

                '{payment_method}' => $orderDetails['payment_method'] ?? '',
                '{payment_status}' => $orderDetails['payment_status'] ?? '',
                '{order_status}' => $orderDetails['order_status'] ?? '',
                '{currency_sign}' => $orderDetails['currency_sign'] ?? '',
                '{tax}' => number_format(($emailData['order_cost']*0.23), 2),
               
            ]);

            $this->mail->setFrom($this->setting->email_from, $this->setting->email_from_name);
            $this->mail->addAddress($emailData['to']);
            $this->mail->isHTML(true);
            $this->mail->Subject = $template->subject;
            $this->mail->Body = $email_body;
            $this->mail->send();
            if ($this->setting->order_mail == 1) {
                $this->adminMail($emailData);
            }
        } catch (Throwable $e) {
            Log::error('Failed to send template email.', [
                'type' => $emailData['type'] ?? null,
                'to' => $emailData['to'] ?? null,
                'message' => $e->getMessage(),
            ]);
            return false;
        }

        return true;
    }

    public function sendCustomMail(array $emailData)
    {

        try {

            $this->mail->setFrom($this->setting->email_from, $this->setting->email_from_name);
            $this->mail->addAddress($emailData['to']);
            $this->mail->isHTML(true);
            $this->mail->Subject = $emailData['subject'];
            $this->mail->Body = $emailData['body'];
            //dd($this->mail);
            $this->mail->send();
        } catch (Throwable $e) {
            Log::error('Failed to send custom email.', [
                'to' => $emailData['to'] ?? null,
                'subject' => $emailData['subject'] ?? null,
                'message' => $e->getMessage(),
            ]);
            return false;
        }

        return true;
    }


    public static function getEmail()
    {
        $user = Auth::user();
        if (isset($user)) {
            $email = $user->email;
        } else {
            $email = Session::get('billing_address')['bill_email'];
        }
        return $email;
    }


    public function adminMail(array $emailData)
    {

        try {
            $orderDetails='';
            $template = EmailTemplate::whereType('New Order Admin')->first();
            $order = $this->resolveOrder($emailData);
            $orderDetails = $this->buildOrderDetailsHtml($order);
            $templateBody = $template->body;
            if ($orderDetails !== '' && !str_contains($templateBody, '{order_details}')) {
                $templateBody .= '<br><br>{order_details}';
            }

             $orderDetails = json_decode($order, true);

            $cart = json_decode($orderDetails['cart'], true);
            $shipping = json_decode($orderDetails['shipping'], true);
            $shippingInfo = json_decode($orderDetails['shipping_info'], true);
            $billingInfo = json_decode($orderDetails['billing_info'], true);

            $products = [];
            foreach ($cart as $item) {
                $products[] = [
                    'name' => $item['name'],
                    'qty' => $item['qty'],
                    'price' => $item['price'],
                    'photo' => $item['photo'],
                ];
            }
            $product_rows = '';
            $grand_total = 0;

            foreach ($products as $item) {

                // ✅ Convert price using currency_value
                $price = $item['price'] * $orderDetails['currency_value'];
                $total = $price * $item['qty'];

                $grand_total += $total;

                $product_rows .= '
                <tr>
                    <td>'.$item['name'].'</td>
                    <td align="center">'.$item['qty'].'</td>
                    <td align="right">'.$orderDetails['currency_sign'].number_format($price, 2).'</td>
                    <td align="right">'.$orderDetails['currency_sign'].number_format($total, 2).'</td>
                </tr>';
            }
            $product_rows .= '
          
            <tr>
                <td colspan="3" align="right"><strong>Shipping Cost:</strong></td>
                <td align="right">'.$orderDetails['currency_sign'].number_format($shipping['price'] * $orderDetails['currency_value'], 2).'</td>
            </tr>';

            $shipping_html = '
            '.$shippingInfo['ship_first_name'].' '.$shippingInfo['ship_last_name'].'<br>
            '.$shippingInfo['ship_address1'].'<br>
            '.$shippingInfo['ship_city'].' - '.$shippingInfo['ship_zip'].'<br>
            '.$shippingInfo['ship_country'].'<br>
            Phone: '.$shippingInfo['ship_phone'].'';

            $billing_html = '
            '.$billingInfo['bill_first_name'].' '.$billingInfo['bill_last_name'].'<br>
            '.$billingInfo['bill_address1'].'<br>
            '.$billingInfo['bill_city'].' - '.$billingInfo['bill_zip'].'<br>
            '.$billingInfo['bill_country'].'<br>
            Phone: '.$billingInfo['bill_phone'].'';

            $email_body = strtr($templateBody, [
                '{user_name}' => (string) ($emailData['user_name'] ?? ''),
                '{order_cost}' => (string) ($emailData['order_cost'] ?? ''),
                '{transaction_number}' => (string) ($emailData['transaction_number'] ?? ''),
                '{site_title}' => (string) ($this->setting->title ?? ''),

                // ✅ FIXED
                '{order_items_html}' => $product_rows,
                '{shipping_info_html}' => $shipping_html,
                '{billing_info_html}' => $billing_html,

                '{payment_method}' => $orderDetails['payment_method'] ?? '',
                '{payment_status}' => $orderDetails['payment_status'] ?? '',
                '{order_status}' => $orderDetails['order_status'] ?? '',
                '{currency_sign}' => $orderDetails['currency_sign'] ?? '',
                '{tax}' => number_format(($emailData['order_cost']*0.23), 2),
               
            ]);
            $this->mail->setFrom($this->setting->email_from, $this->setting->email_from_name);
            $this->mail->clearAddresses();
            $this->mail->addAddress($this->setting->contact_email);
            $this->mail->isHTML(true);
            $this->mail->Subject = $template->subject;
            $this->mail->Body = $email_body;



            $this->mail->send();
        } catch (Throwable $th) {
            Log::error('Failed to send admin order email.', [
                'to' => $this->setting->contact_email ?? null,
                'message' => $th->getMessage(),
            ]);
        }
    }

    private function resolveOrder(array $emailData): ?Order
    {
        if (!empty($emailData['order_id'])) {
            return Order::find($emailData['order_id']);
        }

        if (!empty($emailData['transaction_number'])) {
            return Order::where('transaction_number', $emailData['transaction_number'])->first();
        }

        return null;
    }

    private function esc($value): string
    {
        return htmlspecialchars((string) $value, ENT_QUOTES, 'UTF-8');
    }

    private function formatMoney(Order $order, float $amount): string
    {
        $price = number_format(round($amount * (float) $order->currency_value, 2), 2, '.', '');
        if ((int) ($this->setting->currency_direction ?? 1) === 1) {
            return $this->esc($order->currency_sign) . $price;
        }

        return $price . $this->esc($order->currency_sign);
    }

    private function buildOrderDetailsHtml(?Order $order): string
    {
        if (!$order) {
            return '';
        }

        $cart = json_decode($order->cart, true) ?: [];
        $billing = json_decode($order->billing_info, true) ?: [];
        $shippingInfo = json_decode($order->shipping_info, true) ?: [];
        $shipping = json_decode($order->shipping, true) ?: null;
        $discount = json_decode($order->discount, true) ?: null;

        $rows = '';
        $subtotal = 0.0;
        foreach ($cart as $item) {
            $qty = (int) ($item['qty'] ?? 0);
            $unitBase = (float) (($item['main_price'] ?? 0) + ($item['attribute_price'] ?? 0));
            $lineBase = $unitBase * $qty;
            $subtotal += $lineBase;

            $rows .= '<tr>'
                . '<td style="border:1px solid #ddd;padding:8px;">' . $this->esc($item['name'] ?? '') . '</td>'
                . '<td style="border:1px solid #ddd;padding:8px;text-align:center;">' . $qty . '</td>'
                . '<td style="border:1px solid #ddd;padding:8px;text-align:right;">' . $this->formatMoney($order, $lineBase) . '</td>'
                . '</tr>';
        }

        $shippingPrice = (float) ($shipping['price'] ?? 0);
        $shippingText = $shippingPrice > 0 ? $this->formatMoney($order, $shippingPrice) : 'Free shipping';
        $total = PriceHelper::OrderTotal($order, 'trns');
        $totalFormatted = ((int) ($this->setting->currency_direction ?? 1) === 1)
            ? $this->esc($order->currency_sign) . number_format((float) $total, 2, '.', '')
            : number_format((float) $total, 2, '.', '') . $this->esc($order->currency_sign);

        $billingName = trim(($billing['bill_first_name'] ?? '') . ' ' . ($billing['bill_last_name'] ?? ''));
        $shippingName = trim(($shippingInfo['ship_first_name'] ?? '') . ' ' . ($shippingInfo['ship_last_name'] ?? ''));

        return '<div style="font-family:Arial,sans-serif;color:#222;">'
            . '<p style="margin:0 0 12px;"><strong>Order ID:</strong> ' . $this->esc($order->transaction_number) . ' &nbsp; <strong>Date:</strong> ' . $this->esc($order->created_at ? $order->created_at->format('F d, Y') : '') . '</p>'
            . '<table style="width:100%;border-collapse:collapse;margin-bottom:14px;">'
            . '<thead><tr style="background:#f5f5f5;"><th style="border:1px solid #ddd;padding:8px;text-align:left;">Product</th><th style="border:1px solid #ddd;padding:8px;text-align:center;">Quantity</th><th style="border:1px solid #ddd;padding:8px;text-align:right;">Price</th></tr></thead>'
            . '<tbody>' . $rows
            . '<tr><td colspan="2" style="border:1px solid #ddd;padding:8px;"><strong>Subtotal:</strong></td><td style="border:1px solid #ddd;padding:8px;text-align:right;">' . $this->formatMoney($order, $subtotal) . '</td></tr>'
            . '<tr><td colspan="2" style="border:1px solid #ddd;padding:8px;"><strong>Shipping:</strong></td><td style="border:1px solid #ddd;padding:8px;text-align:right;">' . $shippingText . '</td></tr>'
            . '<tr><td colspan="2" style="border:1px solid #ddd;padding:8px;"><strong>Payment method:</strong></td><td style="border:1px solid #ddd;padding:8px;text-align:right;">' . $this->esc($order->payment_method) . '</td></tr>'
            . (($discount && isset($discount['discount'])) ? '<tr><td colspan="2" style="border:1px solid #ddd;padding:8px;"><strong>Discount:</strong></td><td style="border:1px solid #ddd;padding:8px;text-align:right;">-' . $this->formatMoney($order, (float) $discount['discount']) . '</td></tr>' : '')
            . '<tr><td colspan="2" style="border:1px solid #ddd;padding:8px;"><strong>Total:</strong></td><td style="border:1px solid #ddd;padding:8px;text-align:right;"><strong>' . $totalFormatted . '</strong></td></tr>'
            . '</tbody></table>'
            . '<table style="width:100%;border-collapse:collapse;">'
            . '<tr>'
            . '<td style="width:50%;vertical-align:top;border:1px solid #ddd;padding:10px;">'
            . '<h4 style="margin:0 0 8px;">Billing address</h4>'
            . '<div>' . $this->esc($billingName) . '</div>'
            . '<div>' . $this->esc($billing['bill_address1'] ?? '') . '</div>'
            . '<div>' . $this->esc($billing['bill_city'] ?? '') . ' ' . $this->esc($billing['bill_zip'] ?? '') . '</div>'
            . '<div>' . $this->esc($billing['bill_phone'] ?? '') . '</div>'
            . '<div>' . $this->esc($billing['bill_email'] ?? '') . '</div>'
            . '</td>'
            . '<td style="width:50%;vertical-align:top;border:1px solid #ddd;padding:10px;">'
            . '<h4 style="margin:0 0 8px;">Shipping address</h4>'
            . '<div>' . $this->esc($shippingName) . '</div>'
            . '<div>' . $this->esc($shippingInfo['ship_address1'] ?? '') . '</div>'
            . '<div>' . $this->esc($shippingInfo['ship_city'] ?? '') . ' ' . $this->esc($shippingInfo['ship_zip'] ?? '') . '</div>'
            . '<div>' . $this->esc($shippingInfo['ship_phone'] ?? '') . '</div>'
            . '<div>' . $this->esc($shippingInfo['ship_email'] ?? '') . '</div>'
            . '</td>'
            . '</tr>'
            . '</table>'
            . '</div>';
    }
}
