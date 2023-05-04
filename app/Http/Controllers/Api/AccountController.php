<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Customers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AccountController extends Controller
{
    public function makeCustomer(Request $request){
        $validator = Validator::make($request->all(),[
            "customer_name"=>'required|string|max:100',
            "account_number"=>'required|digits:8|unique:account'
        ]);

        if($validator->fails()){
            return response()->json(["err"=>$validator->messages(),"status"=>false],422);
        }else{
            $customer = Customers::create([
                "account_number"=>$request->account_number,
                "customer_name"=>$request->customer_name
            ]);
            if($customer){
                return response()->json([
                    "status"=>true,
                    "msg"=>"Successfully Registered Customer {$request->customer_name}"
                ]);
            }else{
                return response()->json([
                    "status"=>false,
                    "msg"=>"Failed to Register Customer {$request->customer_name}"
                ]);
            }
        }

    }

    public function verifyCustomer($number){
        $validator = Validator::make(["account_number"=>$number],[
            "account_number"=>'required | digits:8'
        ]);

        if(!$validator->fails()){

            $customer = Customers::where('account_number',$number);

            if($customer->count() > 0){
                return response()->json([
                    'status'=>true,
                    'customer_data'=>$customer->first(),
                    "msg"=>'Valid Customer Account Number',
                    "err"=>$validator->messages()
                ]);

            }else{
                return response()->json([
                    'status'=>false,
                    'customer_data'=>null,
                    "msg"=>'Invalid Customer Account Number',
                    "err"=>$validator->messages()
                ]);
            }

        }else{
            return response()->json([
                'status'=>false,
                'Number'=>$number,
                'customer_data'=>null,
                "err"=>$validator->messages()
            ]);
        }
    }
}
