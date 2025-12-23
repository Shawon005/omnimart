<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Helpers\PriceHelper;

class CartResource extends JsonResource
{
    public function toArray($request)
    {
        $item = \App\Models\Item::find($this['item_id'] ?? null);
        
        return [
            'item_id' => $this['item_id'] ?? null,
            'name' => $item->name ?? null,
            'slug' => $item->slug ?? null,
            'photo' => $item && $item->photo ? asset('assets/images/' . $item->photo) : null,
            'qty' => $this['qty'] ?? 1,
            'main_price' => $this['main_price'] ?? 0,
            'attribute_price' => $this['attribute_price'] ?? 0,
            'total_price' => (($this['main_price'] ?? 0) + ($this['attribute_price'] ?? 0)) * ($this['qty'] ?? 1),
            'selected_attributes' => $this['selected_attributes'] ?? [],
        ];
    }
}
