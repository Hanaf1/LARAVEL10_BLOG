<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Routing\Controller;


class RegisterController extends Controller
{


    public function index(){
        return view('register.index', [
            'title' => 'Register',
            'active' => 'register',
        ]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'username' => ['required', 'min:3', 'max:255', 'unique:users'],
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:5|max:255',
        ]);

        $validatedData['password'] = Hash::make($validatedData['password']);
        User::create($validatedData);

      
        return redirect('/login')->with(  session()->flash('success', 'Registration successful! Please login'));
    }



  
}
