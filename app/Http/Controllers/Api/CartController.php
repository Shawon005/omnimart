<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CartResource;
use App\Repositories\Front\CartRepository;
use App\Models\Item;
use App\Helpers\PriceHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    protected $repository;

    public function __construct(CartRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * GET CART ITEMS
     */
    public function index()
    {
        $cart = Session::get('cart', []);
        $cartItems = [];
        
        $total = 0;
        $tax = 0;
        
        foreach ($cart as $itemId => $itemData) {
            $item = Item::find($itemId);
            if ($item && $item->status == 1) {
                $itemTotal = (($itemData['main_price'] ?? 0) + ($itemData['attribute_price'] ?? 0)) * ($itemData['qty'] ?? 1);
                $total += $itemTotal;
                
                if ($item->tax) {
                    $tax += $item::taxCalculate($item) * ($itemData['qty'] ?? 1);
                }
                
                $cartItems[] = array_merge($itemData, [
                    'item_id' => $itemId,
                    'item' => [
                        'id' => $item->id,
                        'name' => $item->name,
                        'slug' => $item->slug,
                        'photo' => $item->photo ? asset('assets/images/' . $item->photo) : null,
                    ]
                ]);
            }
        }

        return response()->json([
            'cart' => $cartItems,
            'subtotal' => PriceHelper::setCurrencyPrice($total),
            'tax' => PriceHelper::setCurrencyPrice($tax),
            'total' => PriceHelper::setCurrencyPrice($total + $tax),
            'items_count' => count($cartItems),
        ]);
    }

    /**
     * ADD TO CART
     */
    public function add(Request $request)
    {
        $request->validate([
            'item_id' => 'required|exists:items,id',
            'quantity' => 'required|integer|min:1',
            'options_ids' => 'sometimes|string',
            'type' => 'sometimes|integer',
        ]);

        $result = $this->repository->store($request);

        if (isset($result['status']) && $result['status'] != 'success') {
            return response()->json([
                'message' => $result['message'] ?? 'Error adding to cart',
                'status' => $result['status']
            ], 422);
        }

        return response()->json([
            'message' => 'Product added to cart successfully',
            'cart' => Session::get('cart', []),
        ]);
    }

    /**
     * UPDATE CART ITEM
     */
    public function update(Request $request)
    {
        $request->validate([
            'item_id' => 'required|exists:items,id',
            'quantity' => 'required|integer|min:1',
        ]);

        $cart = Session::get('cart', []);
        $itemId = $request->item_id;

        if (!isset($cart[$itemId])) {
            return response()->json([
                'message' => 'Item not found in cart'
            ], 404);
        }

        $item = Item::findOrFail($itemId);
        
        if ($item->item_type == 'normal' && $item->stock < $request->quantity) {
            return response()->json([
                'message' => 'Product out of stock'
            ], 422);
        }

        $cart[$itemId]['qty'] = $request->quantity;
        Session::put('cart', $cart);

        return response()->json([
            'message' => 'Cart updated successfully',
            'cart' => $cart,
        ]);
    }

    /**
     * REMOVE FROM CART
     */
    public function remove($id)
    {
        $cart = Session::get('cart', []);
        
        if (!isset($cart[$id])) {
            return response()->json([
                'message' => 'Item not found in cart'
            ], 404);
        }

        unset($cart[$id]);
        
        if (count($cart) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return response()->json([
            'message' => 'Item removed from cart',
            'cart' => $cart,
        ]);
    }

    /**
     * CLEAR CART
     */
    public function clear()
    {
        Session::forget('cart');
        Session::forget('coupon');
        Session::forget('discount');

        return response()->json([
            'message' => 'Cart cleared successfully'
        ]);
    }
}
