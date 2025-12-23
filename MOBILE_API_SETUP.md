# 📱 Mobile API Setup - Complete Structure

## ✅ What's Been Implemented

### 1. **Sanctum Authentication**
- ✅ `HasApiTokens` trait added to `User` model
- ✅ Sanctum already installed in `composer.json`

### 2. **API Routes** (`routes/api.php`)
- **Prefix**: `/api/app`
- **Public Routes** (no auth):
  - `POST /api/app/login` - Login
  - `POST /api/app/register` - Register
  - `POST /api/app/verify-email` - Email verification
  - `POST /api/app/forgot-password` - Forgot password
  - `POST /api/app/reset-password` - Reset password
  - `GET /api/app/public/products` - Browse products
  - `GET /api/app/public/product/{slug}` - View product
  - `GET /api/app/public/campaigns` - Campaign products
  - `GET /api/app/public/brands` - All brands
  - `GET /api/app/public/categories` - All categories
  - `GET /api/app/public/search?q=keyword` - Search

- **Protected Routes** (requires `Authorization: Bearer {token}`):
  - Profile, Products, Cart, Wishlist, Checkout, Orders, Tickets

### 3. **API Controllers Created**
✅ `app/Http/Controllers/Api/AuthController.php`
✅ `app/Http/Controllers/Api/UserController.php`
✅ `app/Http/Controllers/Api/ProductController.php`
✅ `app/Http/Controllers/Api/CartController.php`
✅ `app/Http/Controllers/Api/OrderController.php`
✅ `app/Http/Controllers/Api/WishlistController.php`
✅ `app/Http/Controllers/Api/CheckoutController.php`
✅ `app/Http/Controllers/Api/TicketController.php`

### 4. **API Resources Created**
✅ `app/Http/Resources/UserResource.php`
✅ `app/Http/Resources/ProductResource.php`
✅ `app/Http/Resources/OrderResource.php`
✅ `app/Http/Resources/CartResource.php`

---

## 🚀 Next Steps

### Step 1: Run Migrations (if not done)
```bash
php artisan migrate
```

### Step 2: Test API Endpoints

#### Login Example:
```bash
POST /api/app/login
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "password123"
}

Response:
{
  "token": "1|xxxxxxxxxxxxx",
  "user": { ... }
}
```

#### Get Products (Public):
```bash
GET /api/app/public/products?page=1&per_page=20
```

#### Get Products (Authenticated):
```bash
GET /api/app/products
Authorization: Bearer {token}
```

### Step 3: Configure CORS (Important!)
In `config/cors.php`, make sure your mobile app domain is allowed:

```php
'allowed_origins' => [
    'http://localhost:3000',
    'capacitor://localhost',
    'ionic://localhost',
    // Add your production domain
],
```

### Step 4: Mobile App Integration

#### React/Next.js Example:
```javascript
// api.js
const API_BASE = 'https://yourdomain.com/api/app';

export const login = async (email, password) => {
  const response = await fetch(`${API_BASE}/login`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ email, password })
  });
  return response.json();
};

export const getProducts = async (token) => {
  const response = await fetch(`${API_BASE}/products`, {
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    }
  });
  return response.json();
};
```

#### Store Token in Mobile:
```javascript
// After login, store token
await AsyncStorage.setItem('token', response.token);

// Use in all authenticated requests
const token = await AsyncStorage.getItem('token');
fetch(`${API_BASE}/profile`, {
  headers: {
    'Authorization': `Bearer ${token}`
  }
});
```

---

## 📋 API Endpoints Summary

### Authentication
- `POST /api/app/login` - Login & get token
- `POST /api/app/register` - Register new user
- `POST /api/app/verify-email` - Verify email with code
- `POST /api/app/forgot-password` - Request password reset
- `POST /api/app/reset-password` - Reset password with token
- `POST /api/app/logout` - Logout (auth required)

### User
- `GET /api/app/profile` - Get user profile
- `POST /api/app/profile/update` - Update profile
- `GET /api/app/addresses` - Get billing/shipping addresses

### Products
- `GET /api/app/public/products` - Browse (no auth)
- `GET /api/app/products` - Browse (with wishlist status)
- `GET /api/app/product/{slug}` - Product details
- `GET /api/app/public/categories` - All categories
- `GET /api/app/public/brands` - All brands
- `GET /api/app/public/search?q=keyword` - Search

### Cart
- `GET /api/app/cart` - Get cart
- `POST /api/app/cart/add` - Add item
- `POST /api/app/cart/update` - Update quantity
- `DELETE /api/app/cart/remove/{id}` - Remove item
- `POST /api/app/cart/clear` - Clear cart

### Wishlist
- `GET /api/app/wishlist` - Get wishlist
- `POST /api/app/wishlist/add/{id}` - Add to wishlist
- `DELETE /api/app/wishlist/remove/{id}` - Remove

### Checkout
- `POST /api/app/checkout/billing` - Save billing address
- `POST /api/app/checkout/shipping` - Save shipping address
- `POST /api/app/checkout/submit` - Create order
- `GET /api/app/checkout/success?order_id={id}` - Confirm order

### Orders
- `GET /api/app/orders` - List orders
- `GET /api/app/order/{id}` - Order details
- `GET /api/app/order/invoice/{id}` - Invoice data
- `GET /api/app/order/track/{order_no}` - Track order

### Tickets
- `GET /api/app/tickets` - List tickets
- `POST /api/app/ticket/store` - Create ticket
- `POST /api/app/ticket/reply` - Reply to ticket
- `DELETE /api/app/ticket/delete/{id}` - Delete ticket

---

## 🔐 Authentication Flow

1. **User Registers/Logs In**
   ```json
   POST /api/app/login
   {
     "email": "user@example.com",
     "password": "password"
   }
   ```

2. **Receive Token**
   ```json
   {
     "token": "1|xxxxxxxxxxxx",
     "user": { ... }
   }
   ```

3. **Store Token** (AsyncStorage/SecureStorage)

4. **Use Token in All Requests**
   ```
   Authorization: Bearer {token}
   ```

5. **Token Expires?** → User logs in again

---

## ⚠️ Important Notes

1. **Cart Uses Session** - For mobile, you may want to switch to database storage. Current implementation uses Laravel sessions which work with cookies/tokens.

2. **Image URLs** - Product images use `asset('assets/images/...')`. Make sure your mobile app can access these URLs.

3. **File Uploads** - Ticket file uploads go to `assets/files/`. Ensure proper permissions.

4. **Email/SMS** - Already configured! Order emails and SMS notifications will work automatically.

5. **Queue Jobs** - If using queue (`is_queue_enabled = 1`), make sure to run:
   ```bash
   php artisan queue:work
   ```

---

## 🎯 Mobile App Structure Recommendation

```
mobile-app/
├── src/
│   ├── api/
│   │   ├── auth.js          # Login, register, etc.
│   │   ├── products.js      # Products, categories
│   │   ├── cart.js          # Cart operations
│   │   └── orders.js        # Orders
│   ├── services/
│   │   └── storage.js       # Token storage
│   ├── screens/
│   │   ├── Home.js
│   │   ├── ProductList.js
│   │   ├── ProductDetail.js
│   │   ├── Cart.js
│   │   └── Checkout.js
│   └── components/
└── capacitor.config.json
```

---

## 🐛 Troubleshooting

### "Unauthenticated" Error
- Check token is being sent: `Authorization: Bearer {token}`
- Verify token hasn't expired
- Check `config/sanctum.php` settings

### CORS Errors
- Update `config/cors.php` with your app domain
- Clear config cache: `php artisan config:clear`

### Session Not Working (Cart)
- Consider switching cart to database storage for mobile
- Or use API token-based cart storage

---

## 📝 Next: Capacitor Setup

1. Install Capacitor:
   ```bash
   npm install @capacitor/core @capacitor/cli
   npx cap init
   ```

2. Add Platforms:
   ```bash
   npx cap add ios
   npx cap add android
   ```

3. Build & Sync:
   ```bash
   npm run build
   npx cap sync
   ```

4. Test on Device:
   ```bash
   npx cap open ios
   # or
   npx cap open android
   ```

---

**Your Laravel Mobile API is ready! 🎉**
