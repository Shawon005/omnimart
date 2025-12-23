<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Models\Item;
use App\Models\Category;
use App\Models\Brand;
use App\Models\CampaignItem;
use App\Models\Setting;
use App\Helpers\PriceHelper;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * GET ALL PRODUCTS (with filters)
     */
    public function index(Request $request)
    {
        $setting = Setting::first();
        
        $items = Item::with(['category', 'brand', 'reviews'])
            ->when($request->category, function ($query) use ($request) {
                $category = Category::whereSlug($request->category)->first();
                return $query->where('category_id', $category->id ?? 0);
            })
            ->when($request->brand, function ($query) use ($request) {
                $brand = Brand::whereSlug($request->brand)->first();
                return $query->where('brand_id', $brand->id ?? 0);
            })
            ->when($request->search, function ($query, $search) {
                return $query->where('name', 'like', '%' . $search . '%')
                    ->orWhere('tags', 'like', '%' . $search . '%');
            })
            ->when($request->min_price, function ($query, $minPrice) {
                return $query->where('discount_price', '>=', PriceHelper::convertPrice($minPrice));
            })
            ->when($request->max_price, function ($query, $maxPrice) {
                return $query->where('discount_price', '<=', PriceHelper::convertPrice($maxPrice));
            })
            ->when($request->sort, function ($query, $sort) {
                if ($sort == 'low_to_high') {
                    return $query->orderBy('discount_price', 'asc');
                } elseif ($sort == 'high_to_low') {
                    return $query->orderBy('discount_price', 'desc');
                } elseif ($sort == 'newest') {
                    return $query->orderBy('id', 'desc');
                }
            })
            ->where('status', 1)
            ->paginate($request->per_page ?? $setting->view_product ?? 20);

        return response()->json([
            'products' => ProductResource::collection($items),
            'pagination' => [
                'current_page' => $items->currentPage(),
                'last_page' => $items->lastPage(),
                'per_page' => $items->perPage(),
                'total' => $items->total(),
            ]
        ]);
    }

    /**
     * GET SINGLE PRODUCT
     */
    public function show($slug)
    {
        $item = Item::with(['category', 'brand', 'attributes.options', 'galleries', 'reviews.user'])
            ->whereStatus(1)
            ->whereSlug($slug)
            ->firstOrFail();

        $related_items = Item::where('category_id', $item->category_id)
            ->where('id', '!=', $item->id)
            ->whereStatus(1)
            ->take(8)
            ->get();

        return response()->json([
            'product' => new ProductResource($item),
            'attributes' => $item->attributes,
            'galleries' => $item->galleries->map(function ($gallery) {
                return [
                    'id' => $gallery->id,
                    'photo' => asset('assets/images/' . $gallery->photo)
                ];
            }),
            'reviews' => $item->reviews()->whereStatus(1)->with('user')->latest()->take(10)->get()->map(function ($review) {
                return [
                    'id' => $review->id,
                    'user_name' => $review->user->displayName() ?? 'Anonymous',
                    'rating' => $review->rating,
                    'comment' => $review->comment,
                    'created_at' => $review->created_at->format('Y-m-d'),
                ];
            }),
            'related_products' => ProductResource::collection($related_items),
        ]);
    }

    /**
     * GET CAMPAIGN PRODUCTS
     */
    public function campaigns()
    {
        $campaign_items = CampaignItem::with('item')
            ->whereStatus(1)
            ->orderBy('id', 'desc')
            ->get();

        return response()->json([
            'campaigns' => ProductResource::collection($campaign_items->pluck('item')->filter())
        ]);
    }

    /**
     * GET BRANDS
     */
    public function brands()
    {
        $brands = Brand::whereStatus(1)->get();

        return response()->json([
            'brands' => $brands->map(function ($brand) {
                return [
                    'id' => $brand->id,
                    'name' => $brand->name,
                    'slug' => $brand->slug,
                    'logo' => $brand->photo ? asset('assets/images/' . $brand->photo) : null,
                ];
            })
        ]);
    }

    /**
     * GET CATEGORIES
     */
    public function categories()
    {
        $categories = Category::whereStatus(1)->with('subcategories.childcategories')->get();

        return response()->json([
            'categories' => $categories->map(function ($category) {
                return [
                    'id' => $category->id,
                    'name' => $category->name,
                    'slug' => $category->slug,
                    'photo' => $category->photo ? asset('assets/images/' . $category->photo) : null,
                    'subcategories' => $category->subcategories->map(function ($sub) {
                        return [
                            'id' => $sub->id,
                            'name' => $sub->name,
                            'slug' => $sub->slug,
                            'childcategories' => $sub->childcategories->map(function ($child) {
                                return [
                                    'id' => $child->id,
                                    'name' => $child->name,
                                    'slug' => $child->slug,
                                ];
                            })
                        ];
                    })
                ];
            })
        ]);
    }

    /**
     * SEARCH PRODUCTS
     */
    public function search(Request $request)
    {
        $request->validate([
            'q' => 'required|string|min:2'
        ]);

        $items = Item::with(['category', 'brand'])
            ->where('name', 'like', '%' . $request->q . '%')
            ->orWhere('tags', 'like', '%' . $request->q . '%')
            ->whereStatus(1)
            ->take(20)
            ->get();

        return response()->json([
            'products' => ProductResource::collection($items)
        ]);
    }
}
