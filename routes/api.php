<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ForgetController;
use App\Http\Controllers\ResetController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Admin\VisitorController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\SiteInfoController;
use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\ValuesController;
use App\Http\Controllers\Admin\FuelingBrandController;
use App\Http\Controllers\Admin\WhatWeDoController;
use App\Http\Controllers\Admin\TeamMembersController;
use App\Http\Controllers\Admin\ServicesController;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:api');

// //Login Routes
Route::post('/login',[AuthController::class, 'Login']);

// //Register Routes
Route::post('/register',[AuthController::class, 'Register']);

//Forget Password Routes
Route::post('/forgetpassword',[ForgetController::class, 'ForgetPassword']);

//Reset Password Routes
Route::post('/resetpassword',[ResetController::class, 'ResetPassword']);

//Current User Route
Route::get('/user',[UserController::class, 'User'])->middleware('auth:api');

//



//Get Visitor Details
Route::get('/getvisitor', [VisitorController::class, 'GetVisitorDetails']);
//Contact Page Route
Route::post('/postcontact', [ContactController::class, 'PostContactDetails']);
//Site Infor Route
Route::get('/allsiteinfo', [SiteInfoController::class, 'AllSiteInfo']);

Route::get('/aboutinfo', [AboutController::class, 'AboutInfo']);

Route::get('/aboutvalues', [ValuesController::class, 'OurValues']);

Route::get('/fuelingbrand', [FuelingBrandController::class, 'FuelingBrand']);

Route::get('/whatwedo', [WhatWeDoController::class, 'WhatWeDoDetails']);

Route::get('/team-members', [TeamMembersController::class, 'TeamMembersDetails']);

//All Services Route

Route::get('/allservices', [ServicesController::class, 'AllServices']);
Route::get('/strategy', [ServicesController::class, 'Strategy']);
Route::get('/strategysub', [ServicesController::class, 'StrategySub']);
Route::get('strategydetails',[ServicesController::class, 'StrategySubDetails']);

///Services CRUD
Route::get('services', [ServicesController::class, 'index']); 
Route::get('services/{id}', [ServicesController::class, 'show']); 
Route::post('services', [ServicesController::class, 'store']); 
Route::put('/servicesupdate/{id}', [ServicesController::class, 'update']);
Route::delete('servicesdelete/{id}', [ServicesController::class, 'destroy']);