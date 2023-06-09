<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Bill;
use App\Models\Customers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
                                "message"=>'Successfully Saved the Bill.'
                            ]);
                        }else{
                            return response()->json([
                                "status"=>false,
                                "err"=>null,
                                "message"=>'Failed to Save the Bill.'
                            ]);
                        }

                    }else{

                        return response()->json([
                            "status"=>false,
                            "err"=>null,
                            "message"=>'Already Saved the Bill.'
                        ]);

                    }


                }else{
                    return response()->json([
                        "status"=>false,
                        "err"=>null,
                        "message"=>'Invalid Customer Account Number.',
                        'req'=>$request->all()
                    ]);
                }
            }else{
                return response()->json([
                    "status"=>false,
                    "err"=>null,
                    "message"=>'Invalid User',
                    'req'=>$request->all()
                ]);
            }

            
        }else{
            return response()->json([
                "status"=>false,
                "err"=>$validator->messages(),

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

                // $res = Bill::where('account_number',"$number");
                $res = DB::table('bill')
                        // ->select('bill.account_number,bill.units,bill.date,account.customer_name')
                        ->join('account','account.account_number','=','bill.account_number')
                        ->join('users','users.id','=','bill.read_by')
                        ->where('bill.account_number',$number)
                        ->orderByDesc('bill.date')
                        ->get([
                            'bill.account_number',
                            'account.customer_name',
                            'bill.date',
                            'bill.id',
                            'users.name',
                            'bill.units',
                            'bill.created_at'
                        ]);

                $billData = [];

                if($res->count() > 0){
                    for ($i=$request->offset; $i < $request->limit; $i++) { 
                        array_push($billData,$res[$i]);
                    }
    
                    return response()->json([
                        "status"=>true,
                        "total_bills"=>$res->count(),
                        "bills"=>sizeof($billData),
                        "bill_data"=>$billData,
                        "msg"=>($res->count() > 1)? "{$res->count()} Bills Found" : "{$res->count()} Bill Found"
                    ]);
                }else{
                    return response()->json([
                        "status"=>false,
                        "total_bills"=>$res->count(),
                        "bills"=>sizeof($billData),
                        "bill_data"=>null,
                        "msg"=>"You Don't Have received any bills yet"
                    ]);
                }


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

    public function calc($units){
        $fixed = 0;
        $f = 0;
        $s = 0;
        $t = 0;
        $total = 0;

        if(30 >= $units){
            $fixed = 500;
            $f = $units * 20;
            return $f + $fixed;   
        }elseif(30 < $units && $units <= 90){
            $m = (($units - 30) / 30);
            return $m;
        }
    }
}
