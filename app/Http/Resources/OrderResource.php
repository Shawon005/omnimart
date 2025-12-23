<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'transaction_number' => $this->transaction_number,
            'order_status' => $this->order_status,
            'payment_status' => $this->payment_status,
            'payment_method' => $this->payment_method,
            'cart' => json_decode($this->cart, true),
            'shipping_info' => json_decode($this->shipping_info, true),
            'billing_info' => json_decode($this->billing_info, true),
            'shipping' => $this->shipping ? json_decode($this->shipping, true) : null,
            'discount' => $this->discount ? json_decode($this->discount, true) : null,
            'tax' => $this->tax,
            'state_price' => $this->state_price,
            'currency_sign' => $this->currency_sign,
            'currency_value' => $this->currency_value,
            'total' => $this->tranaction ? $this->tranaction->amount : 0,
            'created_at' => $this->created_at->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at->format('Y-m-d H:i:s'),
        ];
    }
}
