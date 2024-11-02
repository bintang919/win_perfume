<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class AuthenticatedSessionController extends Controller
{
    /**
     * Handle an incoming authentication request.
     */

    public function showLoginForm(): View
    {
        return view('auth.login');
    }

    public function create()
    {
        // Cek jika pengguna sudah login
        if (Auth::check()) {
            // Jika sudah login, redirect ke halaman welcome
            return redirect()->intended('dashboard'); // Ganti 'welcome' dengan rute yang sesuai
        }

        // Jika belum login, redirect ke method showLoginForm
        return $this->showLoginForm();
    }

    public function store(Request $request)
    {
        $request->validate([
            'email' => ['required', 'string'], // Ganti 'email' dengan 'email'
            'password' => ['required', 'string'],
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $request->session()->regenerate();

            return redirect()->intended('dashboard');
        }

        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ]);
    }


    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/login');
    }
}
