<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Models\Wishlist;
use App\Models\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{
    /**
     * GET WISHLIST ITEMS
     */
    public function index()
    {
        $wishlist_ids = Wishlist::where('user_id', Auth::id())
            ->pluck('item_id')
            ->toArray();

        $items = Item::with(['category', 'brand'])
            ->where('status', 1)
            ->whereIn('id', $wishlist_ids)
            ->latest('id')
            ->get();

        return response()->json([
            'wishlist' => ProductResource::collection($items),
            'count' => count($wishlist_ids)
        ]);
    }

    /**
     * ADD TO WISHLIST
     */
    public function store($id)
    {
        $item = Item::where('id', $id)->where('status', 1)->firstOrFail();
        $user = Auth::user();

        if (Wishlist::where('user_id', $user->id)->where('item_id', $id)->exists()) {
            return response()->json([
                'message' => 'Already added to wishlist',
                'status' => 2
            ], 422);
        }

        Wishlist::create([
            'user_id' => $user->id,
            'item_id' => $id
        ]);

        return response()->json([
            'message' => 'Successfully added to wishlist',
            'count' => Wishlist::where('user_id', $user->id)->count(),
            'status' => 1
        ]);
    }

    /**
     * REMOVE FROM WISHLIST
     */
    public function delete($id)
    {
        $wishlist = Wishlist::where('id', $id)
            ->where('user_id', Auth::id())
            ->firstOrFail();

        $wishlist->delete();

        return response()->json([
            'message' => 'Successfully removed from wishlist',
            'count' => Wishlist::where('user_id', Auth::id())->count()
        ]);
    }
}
