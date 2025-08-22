<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;

class RegisterController extends Controller
{
    use RegistersUsers;

    protected $redirectTo = RouteServiceProvider::HOME;

    public function __construct()
    {
        $this->middleware('guest');
    }

    protected function validator(array $data)
    {
        $rules = [
            "email" => ['required', 'email', 'max:255', 'unique:users'],
            "name" => ['required', 'string', 'max:255'],
            "password" => ['required', 'string', 'min:6'],
        ];

        if (getOption('register_file_required', 0)) {
            $rules['file'] = ['bail', 'required', 'mimetypes:application/pdf'];
        }

        if (!empty(getOption('google_recaptcha_status')) && getOption('google_recaptcha_status') == 1) {
            $rules['recaptcha_token'] = 'required|string';
        }

        return Validator::make($data, $rules);
    }

    protected function verifyRecaptcha($token)
    {
        $response = Http::asForm()->post('https://www.google.com/recaptcha/api/siteverify', [
            'secret' => getOption('google_recaptcha_secret_key'),
            'response' => $token,
        ]);

        $recaptchaData = $response->json();

        return isset($recaptchaData['success'], $recaptchaData['score']) &&
            $recaptchaData['success'] &&
            $recaptchaData['score'] >= 0.5;
    }

    public function register(Request $request)
    {
        $data = $request->all();

        // Validate user input
        $validator = $this->validator($data);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        // Check reCAPTCHA validation
        if (!empty(getOption('google_recaptcha_status')) && getOption('google_recaptcha_status') == 1) {
            if (!$this->verifyRecaptcha($request->input('recaptcha_token'))) {
                throw ValidationException::withMessages([
                    'recaptcha' => 'reCAPTCHA verification failed. Please try again.',
                ]);
            }
        }

        // Register the user
        event(new Registered($user = $this->create($data)));

        $this->guard()->login($user);

        if ($user->role == USER_ROLE_CLIENT) {
            if (session()->has('url.intended')) {
                return redirect()->intended(); // This will redirect to the checkout route with parameters intact
            }
            // Otherwise, redirect to the user dashboard
            return redirect()->route('user.dashboard');
        }

        return redirect($this->redirectPath());
    }

    protected function create(array $data)
    {
        try {
            DB::beginTransaction();

            $remember_token = Str::random(64);
            $google2fa = app('pragmarx.google2fa');

            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => Hash::make($data['password']),
                'role' => USER_ROLE_CLIENT,
                'remember_token' => $remember_token,
                'status' => USER_STATUS_ACTIVE,
                'verify_token' => str_replace('-', '', Str::uuid()->toString()),
                'google2fa_secret' => $google2fa->generateSecretKey(),
            ]);

            // Send notification to admin
            $adminUser = User::where('role', USER_ROLE_ADMIN)->first();
            if ($adminUser) {
                setCommonNotification($adminUser->id, __('New client registered'), __('A new client, '.$user->name.', has registered.'), route('admin.client.list'));
            }

            DB::commit();

            return $user;
        } catch (\Exception $e) {
            DB::rollBack();
            throw ValidationException::withMessages([
                'error' => [__('Something went wrong, please try again.')],
            ]);
        }
    }

    public function showRegistrationForm()
    {
        return view('auth.register');
    }
}
