<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Laravel\Socialite\Facades\Socialite;

class FacebookController extends Controller
{
    /**
     * Redirect to Facebook for authentication.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function redirectToFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    /**
     * Handle callback from Facebook.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handleFacebookCallback()
    {
        try {
            $facebookUser = Socialite::driver('facebook')->user();

            // Check if user already exists with Facebook ID
            $user = User::where('facebook_id', $facebookUser->id)->first();

            if ($user) {
                Auth::login($user);
                return redirect()->route('login');
            }

            // Check if user exists with same email
            $user = User::where('email', $facebookUser->email)->first();

            if ($user) {
                // Update the facebook_id
                $user->update(['facebook_id' => $facebookUser->id]);
            } else {
                // Create new user
                $remember_token = Str::random(64);
                $password = Str::random(8);
                $google2fa = app('pragmarx.google2fa');

                $user = User::create([
                    'name' => $facebookUser->name,
                    'email' => $facebookUser->email,
                    'password' => Hash::make($password),
                    'role' => USER_ROLE_CLIENT, // or replace with string 'client'
                    'remember_token' => $remember_token,
                    'status' => USER_STATUS_ACTIVE, // or 'active'
                    'verify_token' => str_replace('-', '', Str::uuid()->toString()),
                    'google2fa_secret' => $google2fa->generateSecretKey(),
                    'facebook_id' => $facebookUser->id,
                ]);
            }

            Auth::login($user);
            return redirect()->route('login');
        } catch (Exception $e) {
            \Log::error('Facebook login error: ' . $e->getMessage());
            return redirect(route('login'))->with('error', 'Failed to authenticate with Facebook. Please try again.');
        }
    }
}
