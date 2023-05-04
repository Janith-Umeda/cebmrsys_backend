<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Bill;
use App\Models\Customers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BillController extends Controller
{
    public function makeBill(Request $request){

        $validator = Validator::make($request->all(),[
            "account_number"=>'required | digits:8',
            "date"=>'required | date',
            "id"=>'required | int',
            "units"=>'required | int'
        ]);

        if(!$validator->fails()){

            if(User::find($request->id)){
                if(Customers::where('account_number',$request->account_number)->count() > 0){

                    if(Bill::where(["account_number"=>$request->account_number,"date"=>$request->date])->count() === 0){

                        $res = Bill::create([
                            'account_number'=>$request->account_number,
                            'read_by'=>$request->id,
                            'units'=>$request->units,
                            'date'=>$request->date
                        ]);
    
                        if($res){
                            return response()->json([
                                "status"=>true,
                                "err"=>null,
                                "msg"=>'Successfully Saved the Bill.'
                            ]);
                        }else{
                            return response()->json([
                                "status"=>false,
                                "err"=>null,
                                "msg"=>'Failed to Save the Bill.'
                            ]);
                        }

                    }else{

                        return response()->json([
                            "status"=>false,
                            "err"=>null,
                            "msg"=>'Already Saved the Bill.'
                        ]);

                    }


                }else{
                    return response()->json([
                        "status"=>false,
                        "err"=>null,
                        "msg"=>'Invalid Customer Account Number.',
                        'req'=>$request->all()
                    ]);
                }
            }else{
                return response()->json([
                    "status"=>false,
                    "err"=>null,
                    "msg"=>'Invalid User',
                    'req'=>$request->all()
                ]);
            }

            
        }else{
            return response()->json([
                "status"=>false,
                "err"=>$validator->messages(),
                'req'=>$request->all()
            ]);
        }

    }

    public function findBill(Request $request,$number){

        $validator = Validator::make($request->all(),[
            "offset"=>'required | int',
            "limit"=>'required | int',
        ]);

        if(!$validator->fails()){

            if(Customers::where('account_number',$number)->count() > 0){

                $res = Bill::where('account_number',"$number");

                $billData = [];

                for ($i=$request->offset; $i < $request->limit; $i++) { 
                    array_push($billData,$res->get()[$i]);
                }

                return response()->json([
                    "status"=>true,
                    "total_bills"=>$res->count(),
                    "bills"=>sizeof($billData),
                    "bill_data"=>$billData
                ]);

            }else{
                return response()->json([
                    "status"=>false,
                    "msg"=>"$number is an Invalid Account Number."
                ]);
            }

        }else{
            return response()->json([
                "status"=>false,
                "err"=>$validator->messages()
            ]);
        }

    }
}