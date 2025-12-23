<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Helpers\PriceHelper;

class ProductResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'slug' => $this->slug,
            'sku' => $this->sku,
            'category' => $this->category ? $this->category->name : null,
            'brand' => $this->brand ? $this->brand->name : null,
            'photo' => $this->photo ? asset('assets/images/' . $this->photo) : null,
            'thumbnail' => $this->thumbnail ? asset('assets/images/' . $this->thumbnail) : null,
            'price' => PriceHelper::setPrice($this->discount_price ?: $this->previous_price),
            'previous_price' => $this->previous_price ? PriceHelper::setPrice($this->previous_price) : null,
            'discount_price' => $this->discount_price ? PriceHelper::setPrice($this->discount_price) : null,
            'discount_percent' => $this->previous_price && $this->discount_price 
                ? round((($this->previous_price - $this->discount_price) / $this->previous_price) * 100) 
                : 0,
            'stock' => $this->stock,
            'in_stock' => $this->stock > 0,
            'status' => (bool) $this->status,
            'details' => $this->details,
            'sort_details' => $this->sort_details,
            'video' => $this->video,
            'rating' => round($this->reviews()->whereStatus(1)->avg('rating') ?? 0, 1),
            'reviews_count' => $this->reviews()->whereStatus(1)->count(),
            'is_wishlisted' => auth('sanctum')->check() 
                ? $this->wishlists()->whereUserId(auth('sanctum')->id())->exists() 
                : false,
        ];
    }
}
