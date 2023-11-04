<?php

use App\Models\Country;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});
Route::get('/1', function () {
    Artisan::call('config:clear');
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    return "good";
});
Route::post('/addContry', function (Request $request) {
    //dd($request[0]);
    for ($i = 0; $i < sizeof($request->all()); $i++) {
        Country::create([
            'name' => $request[$i]['name'],
            'name_en' => $request[$i]['english_name'],
            'code' => $request[$i]['phone_code'],
            'code_name' => $request[$i]['name_code'],
        ]);
    }
});
Route::get('/get-countries', function (Request $request) {
    return Country::get();

});
//===start of myfatorah payment
//payments
Route::get('check-payment-status', [Controller::class, 'paymentSuccess']);
Route::get('go-to-payment-old', [Controller::class, 'firstStepPaymentOld']);
Route::get('go-to-payment', [Controller::class, 'firstStepPayment']);
Route::get('payment-success', [Controller::class, 'paymentSuccess']);
Route::get('payment-failed', [Controller::class, 'paymentFailed']);
//Route::get('go-to-payment', 'Controller@firstStepPayment');
//Route::get('payment-result', 'Controller@paymentResult');
//Route::get('payment-success', function () {
//    return "Payment Success";
//});
//Route::get('payment-failed', function () {
//    return "Payment Failed";
//});
//===end of my fatorah payment

//Route::group(['middleware' => 'setTimeZone'], function () {

Route::get('getcode',function(Request $request){
    $data= \App\Models\Verification::orderBy('id','desc')->where('phone',$request->phone)->first();
    if($data)
        return "<h1>$data->code</h1>";;
    return "<h1>الفون غلط</h1>";
});


    Route::group(['prefix' => '/app', 'namespace' => 'Api\App'], function () {
        Route::get('/app-explanation/{privacy}', 'AppController@appExplanation');
        Route::get('/terms', 'AppController@termCondition');
        Route::get('/about-us', 'AppController@aboutUs');
        Route::post('/contact-us', 'AppController@contactUs');
        Route::get('/cities', 'AppController@cities');
        Route::get('/get-notifications', 'AppController@getNotifications');
        Route::get('/setting', 'AppController@setting');

    });

    Route::group(['prefix' => '/user', 'namespace' => 'Api\User'], function () {
        Route::post('/phone-check', 'AuthController@phoneCheck');
        Route::post('/login', 'AuthController@login');
        Route::post('/register', 'AuthController@register');
        Route::post('/code-send', 'AuthController@codeSend');
        Route::post('/code-check', 'AuthController@codeCheck');
        Route::post('/update-profile', 'AuthController@updateProfile');
        Route::post('/check-social', 'AuthController@checkSocial');
        Route::get('/get-profile-data', 'AuthController@getProfileData');

        Route::post('/change-password', 'AuthController@updateProfile');

        Route::post('/add-user-location', 'AuthController@addUserLocation');
        Route::post('/main-location', 'AuthController@mainLocation');
        Route::post('/update-user-location', 'AuthController@updateUserLocation');
        Route::get('/get-user-locations', 'AuthController@getUserLocation');
        Route::post('/delete-location', 'AuthController@deleteUserLocation');

        Route::get('/get-meals', 'HomeController@getMeals');
        Route::get('/get-meal-details', 'HomeController@getMealDetails');
        Route::post('/like-meal', 'HomeController@likeMeal');
        Route::get('/search-meals', 'HomeController@searchMeals');
        Route::get('/get-liked-meals', 'HomeController@getLikedMeals');
        Route::get('/search-liked-meals', 'HomeController@searchLikedMeals');

        Route::get('/get-packages', 'HomeController@getPackages');
        Route::post('/make-subscription', 'HomeController@makeSubscription');

        Route::get('/get-periods', 'HomeController@getPeriods');
        Route::get('/check-copon', 'HomeController@checkCopon');
        Route::post('/make-order', 'HomeController@makeOrder');
        Route::get('/my-orders', 'HomeController@myOrders');
        Route::get('/get-order-details', 'HomeController@getOrderDetails');
        Route::get('/get-vip-meals', 'HomeController@getVipMeals');
        Route::get('/rate-meal', 'HomeController@rateMeal');


    });

