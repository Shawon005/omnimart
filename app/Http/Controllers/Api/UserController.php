<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Repositories\Front\UserRepository;
use App\Helpers\ImageHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    protected $repository;

    public function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * GET USER PROFILE
     */
    public function profile()
    {
        return response()->json([
            'user' => new UserResource(Auth::user())
        ]);
    }

    /**
     * UPDATE USER PROFILE
     */
    public function update(Request $request)
    {
        $request->validate([
            'first_name' => 'sometimes|required|max:255',
            'last_name' => 'sometimes|required|max:255',
            'phone' => 'sometimes|required|max:255',
            'email' => 'sometimes|required|email|unique:users,email,' . Auth::id(),
            'password' => 'sometimes|nullable|min:6|max:16|confirmed',
            'photo' => 'sometimes|image|mimes:jpeg,jpg,png,svg|max:2048',
        ]);

        $user = Auth::user();
        $input = $request->all();

        if ($request->has('password') && $request->password) {
            $input['password'] = bcrypt($request->password);
        } else {
            unset($input['password']);
        }

        if ($request->hasFile('photo')) {
            $input['photo'] = ImageHelper::handleUpdatedUploadedImage(
                $request->file('photo'), 
                'images', 
                $user, 
                'images', 
                'photo'
            );
        }

        $user->fill($input)->save();

        return response()->json([
            'message' => 'Profile updated successfully',
            'user' => new UserResource($user->fresh())
        ]);
    }

    /**
     * GET USER ADDRESSES
     */
    public function addresses()
    {
        $user = Auth::user();
        
        return response()->json([
            'billing' => [
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'email' => $user->email,
                'phone' => $user->phone,
                'address1' => $user->bill_address1,
                'address2' => $user->bill_address2,
                'city' => $user->bill_city,
                'zip' => $user->bill_zip,
                'country' => $user->bill_country,
                'company' => $user->bill_company,
            ],
            'shipping' => [
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'email' => $user->email,
                'phone' => $user->phone,
                'address1' => $user->ship_address1,
                'address2' => $user->ship_address2,
                'city' => $user->ship_city,
                'zip' => $user->ship_zip,
                'country' => $user->ship_country,
                'company' => $user->ship_company,
            ],
            'state_id' => $user->state_id,
        ]);
    }
}
