<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use App\Models\User;
use App\Models\Notification;
use App\Helpers\EmailHelper;
use App\Jobs\EmailSendJob;
use App\Repositories\Front\UserRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    /**
     * MOBILE LOGIN
     */
    public function login(Request $request)
    {
        $request->validate([
            'email'    => 'required|email',
            'password' => 'required'
        ]);

        if (!Auth::attempt([
            'email' => $request->email,
            'password' => $request->password
        ])) {
            return response()->json([
                'message' => 'Email or password does not match'
            ], 401);
        }

        $user = Auth::user();
        $setting = Setting::first();

        // EMAIL VERIFICATION CHECK
        if (!$user->email_verify && $setting->is_mail_verify == 1) {

            $verify = rand(100000, 999999);
            $user->update(['email_token' => $verify]);

            $emailData = [
                'to' => $user->email,
                'subject' => 'Email Verification',
                'body' => 'Your verification code is ' . $verify,
            ];

            if ($setting->is_queue_enabled == 1) {
                dispatch(new EmailSendJob($emailData));
            } else {
                (new EmailHelper())->sendCustomMail($emailData, "custom");
            }

            Auth::logout();

            return response()->json([
                'message' => 'Email not verified',
                'verify_required' => true
            ], 403);
        }

        // CREATE SANCTUM TOKEN
        $token = $user->createToken('mobile')->plainTextToken;

        return response()->json([
            'token' => $token,
            'user'  => $user
        ]);
    }

    /**
     * EMAIL VERIFY (MOBILE)
     */
    public function verify(Request $request)
    {
        $request->validate([
            'code' => 'required'
        ]);

        $user = User::where('email_token', $request->code)->first();

        if (!$user) {
            return response()->json([
                'message' => 'Invalid verification code'
            ], 422);
        }

        $user->update([
            'email_token' => null,
            'email_verify' => 1
        ]);

        // SEND CONFIRMATION EMAIL
        $setting = Setting::first();
        $emailData = [
            'to' => $user->email,
            'type' => "Registration",
            'user_name' => $user->displayName(),
            'site_title' => $setting->title,
        ];

        if ($setting->is_queue_enabled == 1) {
            dispatch(new EmailSendJob($emailData, "template"));
        } else {
            (new EmailHelper())->sendTemplateMail($emailData, "template");
        }

        $token = $user->createToken('mobile')->plainTextToken;

        return response()->json([
            'message' => 'Email verified successfully',
            'token' => $token,
            'user' => $user
        ]);
    }

    /**
     * MOBILE REGISTER
     */
    public function register(Request $request)
    {
        $request->validate([
            'first_name' => 'required|max:255',
            'last_name' => 'required|max:255',
            'email' => 'required|email|unique:users,email',
            'phone' => 'required|max:255',
            'password' => 'required|min:6|max:16|confirmed',
        ]);

        $setting = Setting::first();
        $verify = rand(100000, 999999);

        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'phone' => $request->phone,
            'password' => Hash::make($request->password),
            'email_token' => $verify,
            'email_verify' => $setting->is_mail_verify == 0 ? 1 : 0,
        ]);

        Notification::create(['user_id' => $user->id]);

        // SEND VERIFICATION EMAIL
        if ($setting->is_mail_verify == 1) {
            $emailData = [
                'to' => $user->email,
                'subject' => 'Email Verification',
                'body' => 'Your verification code is ' . $verify,
            ];

            if ($setting->is_queue_enabled == 1) {
                dispatch(new EmailSendJob($emailData));
            } else {
                (new EmailHelper())->sendCustomMail($emailData, "custom");
            }

            return response()->json([
                'message' => 'Registration successful. Please verify your email.',
                'verify_required' => true,
                'user' => $user
            ], 201);
        }

        // AUTO LOGIN IF VERIFICATION NOT REQUIRED
        $token = $user->createToken('mobile')->plainTextToken;

        return response()->json([
            'message' => 'Registration successful',
            'token' => $token,
            'user' => $user
        ], 201);
    }

    /**
     * FORGOT PASSWORD
     */
    public function forgot(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email'
        ]);

        $user = User::where('email', $request->email)->first();
        $token = Str::random(64);
        
        // Store token in password_resets table or use a custom field
        // For now, using email_token as reset token
        $user->update(['email_token' => $token]);

        $setting = Setting::first();
        $resetLink = url("/user/change-password/{$token}");

        $emailData = [
            'to' => $user->email,
            'subject' => 'Reset Password',
            'body' => "Click here to reset your password: {$resetLink}",
        ];

        if ($setting->is_queue_enabled == 1) {
            dispatch(new EmailSendJob($emailData));
        } else {
            (new EmailHelper())->sendCustomMail($emailData, "custom");
        }

        return response()->json([
            'message' => 'Password reset link sent to your email'
        ]);
    }

    /**
     * RESET PASSWORD
     */
    public function reset(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:6|max:16|confirmed',
        ]);

        $user = User::where('email', $request->email)
            ->where('email_token', $request->token)
            ->first();

        if (!$user) {
            return response()->json([
                'message' => 'Invalid or expired reset token'
            ], 422);
        }

        $user->update([
            'password' => Hash::make($request->password),
            'email_token' => null,
        ]);

        return response()->json([
            'message' => 'Password reset successfully'
        ]);
    }

    /**
     * MOBILE LOGOUT
     */
    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        return response()->json([
            'message' => 'Logged out successfully'
        ]);
    }
}
