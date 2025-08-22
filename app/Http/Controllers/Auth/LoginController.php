<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        return view('auth.login');
    }

    /**
     * Validate the user login request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return void
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    protected function validateLogin(Request $request)
    {
        if (!empty(getOption('google_recaptcha_status')) && getOption('google_recaptcha_status') == 1) {
            $rules['g-recaptcha-response'] = ['required', 'recaptchav3:register,0.5'];
        } else {
            $rules = [
                $this->username() => 'required|string',
                'password' => 'required|string',
            ];
        }
        $request->validate($rules);
    }

    public function login(LoginRequest $request)
    {
        if (!empty(getOption('google_recaptcha_status')) && getOption('google_recaptcha_status') == 1) {
            $validatedData = $request->validate([
                'recaptcha_token' => 'required'
            ]);
            if (!$this->verifyRecaptcha($validatedData['recaptcha_token'])) {
                return back()->withErrors(['recaptcha' => 'reCAPTCHA verification failed. Please try again.']);
            }
        }

        Session::put('2fa_status', false);

        $field = 'email';

        $request->merge([$field => $request->input('email')]);

        $credentials = $request->only($field, 'password');

        $remember = request('remember');

        if (!Auth::attempt($credentials, $remember)) {
            return redirect("login")->withInput()->with('error',  __('Email or password is incorrect'));
        }

        $user = User::where('email', $request->email)->first();

        if ($user->email_verification_status == STATUS_ACTIVE) {

            if ($user->status == STATUS_SUSPENDED) {
                Auth::logout();
                return redirect("login")->withInput()->with('error', __('Your account is suspended Please contact our support center'));
            } elseif ($user->deleted_at != null) {
                Auth::logout();
                return redirect("login")->withInput()->with('error', __('Your account has been deleted'));
            }

            if (isset($user) && ($user->status == STATUS_PENDING)) {
                Auth::logout();
                return redirect("login")->with('error', __('Your account is under approval. Please wait for approval'));
            } else if (isset($user) && ($user->status == STATUS_REJECT)) {
                Auth::logout();
                return redirect("login")->withInput()->with('error', __('Your account is inactive. Please contact with admin'));
            } else {
                addUserActivityLog('Sign In', $user);

                if ($user->role == USER_ROLE_CLIENT) {
                    if (session()->has('url.intended')) {
                        return redirect()->intended(); // This will redirect to the checkout route with parameters intact
                    }
                    // Otherwise, redirect to the user dashboard
                    return redirect()->route('user.dashboard');
                }

                return redirect('login');
            }

        }
        addUserActivityLog('Sign In', $user);

        if ($user->role == USER_ROLE_CLIENT) {
            if (session()->has('url.intended')) {
                return redirect()->intended(); // This will redirect to the checkout route with parameters intact
            }
            // Otherwise, redirect to the user dashboard
            return redirect()->route('user.dashboard');
        }

        return redirect('login');
    }
    public function verifyRecaptcha($token)
    {
        $response = Http::asForm()->post('https://www.google.com/recaptcha/api/siteverify', [
            'secret' => getOption('google_recaptcha_secret_key'),
            'response' => $token,
        ]);

        $recaptchaData = $response->json();
        return isset($recaptchaData['success'], $recaptchaData['score']) && $recaptchaData['success'] && $recaptchaData['score'] >= 0.5;
    }
}
