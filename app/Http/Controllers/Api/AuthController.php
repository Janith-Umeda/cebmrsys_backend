<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request){
        $validator = Validator::make($request->all(),[
            "email"=>'required | email | max:100 | unique:users',
            "name"=>'required | string | max:100',
            "password"=>'required | min:8'
        ]);

        if($validator->fails()){

            return response()->json([
                "status"=>false,
                "errors"=>$validator->messages(),
                "message"=>"Failed to Register User. Please check your input."
            ]);

        }else{

            $res = User::create([
                'name'=>$request->name,
                'email'=>$request->email,
                'password'=>Hash::make($request->password),
            ]);

            if($res){

                $token = $res->createToken('auth_token')->plainTextToken;

                return response()->json([
                    "status"=>true,
                    "message"=>"Successfully Registered User {$request->name}",
                    "token"=>[
                        "token"=>$token,
                        "token_type"=>"Bearer"
                    ]
                ]);

            }else{
                return response()->json([
                    "status"=>false,
                    "message"=>"Failed to Register User {$request->name}"
                ]);
            }

        }
    }

    public function login(Request $request){

        $credentials = $request->validate([
            "email"=>'required | email',
            "password" => 'required'
        ]);

        if(Auth::attempt($credentials)){

            $user = User::where('email',$request->email)->firstOrFail();

            $token = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                "status"=>true,
                "message"=>"Login Success.",
                "token"=>[
                    "token"=>$token,
                    "token_type"=>"Bearer"
                ]
            ]);

        }else{

            return response()->json([
                "status"=>false,
                "message"=>"Failed to Login. Email or Password is Invalid"
            ]);

        }

    }

    public function me(Request $request){
        return $request->user();
    }

    public function getcsrf(Request $request){
        return response()->json([
            "csrf"=>csrf_token()
        ]);
    }
}
