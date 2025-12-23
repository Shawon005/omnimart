<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\CartController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\WishlistController;
use App\Http\Controllers\Api\TicketController;
use App\Http\Controllers\Api\CheckoutController;

/*
|--------------------------------------------------------------------------
| Mobile App API Routes
|--------------------------------------------------------------------------
| Prefix: /api/app
| Auth: Sanctum (Token)
| Response: JSON only
*/

Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::post('/verify-email', [AuthController::class, 'verify']);
Route::post('/forgot-password', [AuthController::class, 'forgot']);
Route::post('/reset-password', [AuthController::class, 'reset']);

Route::middleware('auth:sanctum')->group(function () {

    // 🔐 AUTH
    Route::post('/logout', [AuthController::class, 'logout']);

    // 👤 USER
    Route::get('/profile', [UserController::class, 'profile']);
    Route::post('/profile/update', [UserController::class, 'update']);
    Route::get('/addresses', [UserController::class, 'addresses']);

    // 📦 PRODUCTS (authenticated endpoints - can include personalized data like wishlist status)
    Route::get('/products', [ProductController::class, 'index']);
    Route::get('/product/{slug}', [ProductController::class, 'show']);
    Route::get('/campaign/products', [ProductController::class, 'campaigns']);
    Route::get('/brands', [ProductController::class, 'brands']);
    Route::get('/categories', [ProductController::class, 'categories']);
    Route::get('/search', [ProductController::class, 'search']);

    // 🛒 CART
    Route::get('/cart', [CartController::class, 'index']);
    Route::post('/cart/add', [CartController::class, 'add']);
    Route::post('/cart/update', [CartController::class, 'update']);
    Route::delete('/cart/remove/{id}', [CartController::class, 'remove']);
    Route::post('/cart/clear', [CartController::class, 'clear']);

    // ❤️ WISHLIST
    Route::get('/wishlist', [WishlistController::class, 'index']);
    Route::post('/wishlist/add/{id}', [WishlistController::class, 'store']);
    Route::delete('/wishlist/remove/{id}', [WishlistController::class, 'delete']);

    // 💳 CHECKOUT
    Route::post('/checkout/billing', [CheckoutController::class, 'billing']);
    Route::post('/checkout/shipping', [CheckoutController::class, 'shipping']);
    Route::post('/checkout/submit', [CheckoutController::class, 'submit']);
    Route::get('/checkout/success', [CheckoutController::class, 'success']);

    // 📑 ORDERS
    Route::get('/orders', [OrderController::class, 'index']);
    Route::get('/order/{id}', [OrderController::class, 'details']);
    Route::get('/order/invoice/{id}', [OrderController::class, 'invoice']);
    Route::get('/order/track/{order_no}', [OrderController::class, 'track']);

    // 🎫 TICKETS
    Route::get('/tickets', [TicketController::class, 'index']);
    Route::post('/ticket/store', [TicketController::class, 'store']);
    Route::post('/ticket/reply', [TicketController::class, 'reply']);
    Route::delete('/ticket/delete/{id}', [TicketController::class, 'delete']);
});
