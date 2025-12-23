<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\OrderResource;
use App\Models\Order;
use App\Models\TrackOrder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    /**
     * GET USER ORDERS
     */
    public function index()
    {
        $orders = Order::where('user_id', Auth::id())
            ->latest('id')
            ->get();

        return response()->json([
            'orders' => OrderResource::collection($orders)
        ]);
    }

    /**
     * GET ORDER DETAILS
     */
    public function details($id)
    {
        $order = Order::where('id', $id)
            ->where('user_id', Auth::id())
            ->firstOrFail();

        return response()->json([
            'order' => new OrderResource($order)
        ]);
    }

    /**
     * GET ORDER INVOICE (for printing)
     */
    public function invoice($id)
    {
        $order = Order::where('id', $id)
            ->where('user_id', Auth::id())
            ->firstOrFail();

        $cart = json_decode($order->cart, true);

        return response()->json([
            'order' => new OrderResource($order),
            'cart' => $cart,
            'invoice_data' => [
                'order_number' => $order->transaction_number,
                'date' => $order->created_at->format('Y-m-d H:i:s'),
                'status' => $order->order_status,
                'payment_status' => $order->payment_status,
                'payment_method' => $order->payment_method,
                'billing' => json_decode($order->billing_info, true),
                'shipping' => json_decode($order->shipping_info, true),
            ]
        ]);
    }

    /**
     * TRACK ORDER
     */
    public function track($order_no)
    {
        $order = Order::where('transaction_number', $order_no)
            ->where('user_id', Auth::id())
            ->firstOrFail();

        $track_orders = TrackOrder::where('order_id', $order->id)
            ->orderBy('id', 'asc')
            ->get();

        return response()->json([
            'order' => [
                'id' => $order->id,
                'transaction_number' => $order->transaction_number,
                'status' => $order->order_status,
            ],
            'tracking' => $track_orders->map(function ($track) {
                return [
                    'id' => $track->id,
                    'title' => $track->title,
                    'text' => $track->text,
                    'date' => $track->created_at->format('Y-m-d H:i:s'),
                ];
            })
        ]);
    }
}
