<?php

namespace App\Http\Controllers\Admin;

use App\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request\validate;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function login(){
        return view('admin.auth.login');
    }

    public function doLogin(Request $request){
        $data = $request->validate([
            'email'=>'required|email|max:100',
            'password'=>'required|string'
         ]);

         if(!auth()->guard('admin')->attempt(['email'=>$data['email'],'password'=>$data['password']]))
         {
            return back();
         }
         else{

             return redirect(route('admin.home'));
         }
         
         }

         public function logout(){
             auth()->guard()->logout();
             return redirect(route('admin.login'));
         }
}
