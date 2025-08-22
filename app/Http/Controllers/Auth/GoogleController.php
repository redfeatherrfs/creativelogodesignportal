<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Laravel\Socialite\Facades\Socialite;

class GoogleController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return \Illuminate\Http\RedirectResponse|\Symfony\Component\HttpFoundation\RedirectResponse
     */
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    /**
     * Create a new controller instance.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handleGoogleCallback()
    {
        try {
            $googleUser = Socialite::driver('google')->user();
            $user = User::where('google_id', $googleUser->id)->first();
            if ($user) {
                Auth::login($user);
                return redirect()->route('login');
            } else {
                $user = User::where('email', $googleUser->email)->first();

                if ($user) {
                    $user->update(['google_id' => $googleUser->id]);
                } else {

                    $remember_token = Str::random(64);
                    $password = Str::random(8);
                    $google2fa = app('pragmarx.google2fa');

                    $user = User::create([
                        'name' => $googleUser->name,
                        'email' => $googleUser->email,
                        'password' => Hash::make($password),
                        'role' => USER_ROLE_CLIENT,
                        'remember_token' => $remember_token,
                        'status' => USER_STATUS_ACTIVE,
                        'verify_token' => str_replace('-', '', Str::uuid()->toString()),
                        'google2fa_secret' => $google2fa->generateSecretKey(),
                        'google_id' => $googleUser->id,
                    ]);
                }
                Auth::login($user);
                return redirect()->route('login');
            }
        } catch (\Exception $e) {
            return redirect(route('login'))->with('error', 'Failed to authenticate with Google. Please try again.');
        }
    }
}
