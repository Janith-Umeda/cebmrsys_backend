<?php

use App\Http\Controllers\Api\AccountController;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\BillController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('register',[AuthController::class,'register']);
Route::post('login',[AuthController::class,'login']);
Route::get('bill/{number}',[BillController::class,"findBill"]);

Route::middleware('auth:sanctum')->group( function () {
    Route::post('customer',[AccountController::class,'makeCustomer']);
    Route::get('customer/check/{number}',[AccountController::class,'verifyCustomer']);
    Route::get('me',[AuthController::class,"me"]);
    Route::post('bill',[BillController::class,"makeBill"]);
});

