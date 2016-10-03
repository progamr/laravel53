<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;

class UsersController extends Controller
{
    //
    public function home() {
        $user = User::find(1);
        return view('home', compact('user'));
    }
}
