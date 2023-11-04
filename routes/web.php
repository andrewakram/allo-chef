<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/1', function () {
    Artisan::call('config:clear');
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    return "good";
});

Route::get('/', function () {
    return view('welcome');
});
/////////////////////////////////
Route::get('/captin-form', function () {
    return view('captin-form');
});
Route::post('/signup/form', 'SiteController@formRequest')->name('delegate-form-submit');
Route::post('/signup/send_verification_code', 'SiteController@sendVerification');
Route::post('/signup/verify_user', 'SiteController@verifyUser');
Route::get('/signup/form', function () {
    $user_id = request()->user_id;
    $phone = request()->phone;
    //$car_types = \App\CarType::get();
    $car_types = [];
    return view('signup-form', compact('user_id', 'phone', 'car_types'));
});
///////////////////////

//Auth::routes();
Route::group(['prefix' => '/admin'], function () {
    Route::get('/login', 'Admin\AuthController@login_view');
    Route::post('/login', 'Admin\AuthController@login')->name('login');
    Route::get('/logout', 'Admin\AuthController@logout')->name('logout');


    Route::group(['middleware' => 'auth:admin'], function () {
        Route::group(['middleware' => 'IsAdmin'], function () {

            Route::get('/home', 'HomeController@index')->name('home');
            Route::post('/home', 'HomeController@indexWzSearch')->name('indexWzSearch');

            Route::resource('/departments', 'Admin\DepartmentController');
            Route::post('/departments/edit', 'Admin\DepartmentController@editDepartment')->name('editDepartment');
            Route::get('/departments/editStatus/{id}', 'Admin\DepartmentController@editDepartmentStatus')
                ->name('editDepartmentStatus');

            //chat between admin and users
            Route::get('chat', 'Admin\ChatController@index');
            Route::get('reply/{id}', 'Admin\ChatController@reply')->name('admin.reply');
            Route::post('send', 'Admin\ChatController@create_message')->name('admin.send');

            Route::get('/sliders', 'Admin\SliderController@index')->name('sliders');
            Route::post('/sliders', 'Admin\SliderController@store')->name('sliders-store');
            Route::post('/sliders/edit', 'Admin\SliderController@editSlider')->name('editSlider');
            Route::get('/sliders/delet/{id}', 'Admin\SliderController@deleteSlider')->name('deleteSlider');

            Route::resource('/clients', 'Admin\User2Controller');
            Route::get('/clients/editStatus/{id}', 'Admin\User2Controller@editClientStatus')->name('editClientStatus');

            Route::get('/user-trips/{user_id}', 'Admin\User2Controller@userTrips')->name('userTrips');

            Route::get('/admins', 'Admin\User2Controller@indexAdmin');
            Route::post('/createAdmin', 'Admin\User2Controller@createAdmin')->name('createAdmin');
            Route::post('/editAdmin', 'Admin\User2Controller@editAdmin')->name('editAdmin');
            Route::get('/admins/editStatus/{id}', 'Admin\User2Controller@editAdminStatus')->name('editAdminStatus');
            Route::get('/admins/delet/{id}', 'Admin\User2Controller@deleteAdmin')->name('deleteAdmin');
//
            Route::resource('/offer_points', 'Admin\OfferPointController');
            Route::post('/offer_points/edit', 'Admin\OfferPointController@editOfferPoint')->name('editOfferPoint');
            Route::get('/user_offer_points', 'Admin\OfferPointController@user_offer_points');
            Route::get('/user_offer_points/editStatus/{id}', 'Admin\OfferPointController@editUserOfferPointStatus')
                ->name('editUserOfferPointStatus');
            Route::get('/delegate_offer_points', 'Admin\OfferPointController@delegate_offer_points');

            Route::resource('/shop_rates', 'Admin\ShopRateController');

            Route::get('/users', 'Admin\User2Controller@index');
            Route::post('/users/edit', 'Admin\User2Controller@edit_country')->name('editCountry');
            Route::get('/users/editStatus/{id}', 'Admin\User2Controller@editClientStatus')->name('editClientStatus');
            Route::post('users/editSubscriptionExpire', 'Admin\User2Controller@editSubscriptionExpire')->name('editSubscriptionExpire');
            Route::get('/users/orders/{user_id}', 'Admin\User2Controller@userOrders')->name('userOrders');
            Route::get('/users/subscriptions/{user_id}', 'Admin\User2Controller@userSubscriptions')->name('userSubscriptions');
            Route::get('/users/wallets/{user_id}', 'Admin\User2Controller@wallets')->name('users.wallets');

            Route::resource('/delegates', 'Admin\DelegateController');
            Route::post('/delegates/edit', 'Admin\DelegateController@editDelegate')->name('editDelegate');
            Route::get('/delegates/editStatus/{id}', 'Admin\DelegateController@editDelegateStatus')->name('editDelegateStatus');
            Route::get('/delegates/orders/{delegate_id}', 'Admin\DelegateController@delegateOrders')->name('delegateOrders');

            Route::resource('/drivers', 'Admin\DriverController');
            Route::post('/drivers/edit', 'Admin\DriverController@editDriver')->name('editDriver');
            Route::get('/drivers/editStatus/{id}', 'Admin\DriverController@editDriverStatus')->name('editDriverStatus');
            Route::get('/drivers/orders/{driver_id}', 'Admin\DriverController@driverOrders')->name('driverOrders');

            Route::get('/subscriptions', 'Admin\SubscriptionController@index');

            Route::resource('/countriess', 'Admin\CountryController');
            Route::post('/countriess/edit', 'Admin\CountryController@edit_country')->name('editCountry');
            Route::get('/countriess/editStatus/{id}', 'Admin\CountryController@editCountryStatus')->name('editCountryStatus');

            Route::resource('/cities', 'Admin\CityController');
            Route::post('/cities/edit', 'Admin\CityController@edit_city')->name('editCity');
            Route::get('/cities/editStatus/{id}', 'Admin\CityController@editCityStatus')->name('editCityStatus');

            Route::resource('/tags', 'Admin\TagController');
            Route::post('/tags/edit', 'Admin\TagController@edit_city')->name('editTag');
            Route::get('/tags/editStatus/{id}', 'Admin\TagController@editTagStatus')->name('editTagStatus');

            Route::resource('/payment-ways', 'Admin\PaymentWayController');
            Route::post('/payment-ways/edit', 'Admin\PaymentWayController@editPaymentWay')->name('editPaymentWay');
            Route::get('/payment-ways/editStatus/{id}', 'Admin\PaymentWayController@editPaymentWayStatus')->name('editPaymentWayStatus');

            Route::resource('/copons', 'Admin\CoponController');
            Route::post('/copons/edit', 'Admin\CoponController@edit_city')->name('editCopon');

            Route::get('/meals', 'Admin\MealController@index');
            Route::get('/meals/add', 'Admin\MealController@addMeal')->name('addMeal');
            Route::post('/meals/store', 'Admin\MealController@storeMeal')->name('storeMeal');
            Route::get('/meals/edit/{meal_id}', 'Admin\MealController@editMeal')->name('editMeal');
            Route::post('/meals/add-image', 'Admin\MealController@addMealImage')->name('addMealImage');
            Route::post('/meals/update', 'Admin\MealController@updateMeal')->name('updateMeal');
            Route::get('/meals/show/{meal_id}', 'Admin\MealController@show')->name('showMealDetails');
            Route::get('/meals/image-delete/{image_id}', 'Admin\MealController@deleteMealImage')->name('deleteMealImage');
            Route::get('/meals/ingridient-delete/{ingredient_id}', 'Admin\MealController@deleteMealIngredient')->name('deleteMealIngredient');
//
            Route::get('/schedual_meals', 'Admin\SchedualMealController@index');
            Route::get('/schedual_meals/add', 'Admin\SchedualMealController@addMeal')->name('addSchedualMeal');
            Route::post('/schedual_meals/store', 'Admin\SchedualMealController@storeMeal')->name('storeSchedualMeal');
            Route::get('/schedual_meals/edit/{meal_id}', 'Admin\SchedualMealController@editMeal')->name('editSchedualMeal');
            Route::post('/schedual_meals/update', 'Admin\SchedualMealController@updateMeal')->name('updateSchedualMeal');
            Route::get('/schedual_meals/show/{meal_id}', 'Admin\SchedualMealController@show')->name('showSchedualMealDetails');
            Route::get('/schedual_meals/delet/{meal_id}', 'Admin\SchedualMealController@deleteSchedualMeal')->name('deleteSchedualMeal');
//

            Route::resource('/packages', 'Admin\PackageController');
            Route::post('/packages/edit', 'Admin\PackageController@edit_city')->name('editPackage');
            Route::get('/packages/editStatus/{id}', 'Admin\PackageController@editPackageStatus')->name('editPackageStatus');

            Route::resource('/periods', 'Admin\PeriodController');
            Route::post('/periods/edit', 'Admin\PeriodController@edit_city')->name('editPeriod');
            Route::get('/periods/editStatus/{id}', 'Admin\PeriodController@editPeriodStatus')->name('editPeriodStatus');

            Route::resource('/regions', 'Admin\RegionController');
            Route::post('/regions/edit', 'Admin\RegionController@edit_city')->name('editRegion');
            Route::get('/regions/editStatus/{id}', 'Admin\RegionController@editCityStatus')->name('editRegionStatus');


            Route::resource('/nationals', 'Admin\NationalController');
            Route::post('/nationals/edit', 'Admin\NationalController@editNational')->name('editNational');
            Route::get('/national/editStatus/{id}', 'Admin\NationalController@editNationalStatus')->name('editNationalStatus');

            Route::resource('/car_types', 'Admin\CarTypeController');
            Route::post('/car_types/edit', 'Admin\CarTypeController@editCarType')->name('editCarType');
            Route::get('/car_types/editStatus/{id}', 'Admin\CarTypeController@editCarTypeStatus')
                ->name('editCarTypeStatus');

            Route::resource('/rushhours', 'Admin\RushhourController');
            Route::post('/rushhours/edit', 'Admin\RushhourController@edit_rushhour')->name('editRushhour');
            Route::get('/rushhours/delet/{id}', 'Admin\RushhourController@delete_rushhour')->name('deleteRushhour');

            Route::resource('/reasons', 'Admin\ReasonController');
            Route::post('/reasons/edit', 'Admin\ReasonController@edit_reason')->name('editReason');
            Route::get('/reasons/delet/{id}', 'Admin\ReasonController@delete_reason')->name('deleteReason');

            Route::resource('/reasons', 'Admin\ReasonController');
            Route::post('/reasons/edit', 'Admin\ReasonController@edit_reason')->name('editReason');
            Route::get('/reasons/delet/{id}', 'Admin\ReasonController@delete_reason')->name('deleteReason');
//
            Route::resource('/issues', 'Admin\IssueController');
            Route::post('/issues/edit', 'Admin\IssueController@edit_issue')->name('editIssue');
            Route::get('/issues/delet/{id}', 'Admin\IssueController@delete_issue')->name('deleteIssue');
//
            Route::resource('/bank_account', 'Admin\BankAccountController');
            Route::post('/bank_account/edit', 'Admin\BankAccountController@edit_bank_account')->name('editBankAccount');
            Route::get('/bank_account/delet/{id}', 'Admin\BankAccountController@delete_bank_account')->name('deleteBankAccount');
//
            Route::resource('/losts', 'Admin\LostController');
            Route::post('/losts/edit', 'Admin\LostController@edit_lost')->name('editLost');
            Route::get('/losts/delet/{id}', 'Admin\LostController@delete_lost')->name('deleteLost');
//
            Route::resource('/bank_transfers', 'Admin\BankingTransferController');
//
            Route::resource('/promocodes', 'Admin\PromocodeController');
            Route::get('/promocodes/delet/{id}', 'Admin\PromocodeController@delete_promo')->name('deletePromo');

            Route::resource('/carlevelss', 'Admin\LevelController');
            Route::post('/carlevelss/edit', 'Admin\LevelController@edit_carlevels')->name('editCarlevel');
            Route::get('/carlevelss/editStatus/{id}', 'Admin\LevelController@editCarlevelStatus')
                ->name('editCarlevelStatus');

            Route::resource('/carprices', 'Admin\CarPriceController');
            Route::post('/carprices/edit', 'Admin\CarPriceController@edit_carprices')->name('editCarprice');

            Route::resource('/govs', 'Admin\GovController');
            Route::post('/govs/edit', 'Admin\GovController@edit_gov')->name('editGov');

//        Route::resource('/cities', 'Admin\CityController');
//        Route::post('/cities/edit', 'Admin\CityController@edit_city')->name('editCity');
//
//        Route::resource('/regions', 'Admin\RegionController');
//        Route::post('/regions/edit', 'Admin\RegionController@edit_city')->name('editCity');

            Route::resource('/cats', 'Admin\CategoryController');
            Route::post('/cats/edit', 'Admin\CategoryController@edit_cat')->name('editCat');
            Route::get('/cats/editStatus/{id}', 'Admin\CategoryController@editCatStatus')->name('editCatStatus');

            Route::resource('/trips', 'Admin\TripController');
            Route::get('/finished-trips', 'Admin\TripController@finishedTrips');
            Route::get('/unfinished-trips', 'Admin\TripController@unfinishedTrips');
            Route::get('/cancelled-trips', 'Admin\TripController@cancelledTrips');
            Route::post('/trips', 'Admin\TripController@checkPaymentSrtatus')->name('checkPaymentSrtatus');
//Route::get('/offs/editStatus/{id}', 'Admin\OfferController@editOfferStatus')->name('editOfferStatus');

            Route::resource('/notifications', 'Admin\NotificationController');
            Route::get('/notifications/delet/{id}', 'Admin\NotificationController@delete_not');

            Route::resource('/reviews', 'Admin\ReviewController');
            Route::get('/reviews/delet/{id}', 'Admin\ReviewController@delete_review');

            Route::resource('/terms', 'Admin\TermController');
            Route::post('/terms/edit', 'Admin\TermController@edit_terms')->name('editTerm');

            Route::resource('/complains_suggestions', 'Admin\ComplainSuggestController');
            Route::resource('/contact_us', 'Admin\ContactusController');
            Route::get('/contact_us/editStatus/{id}', 'Admin\ContactusController@editStatus')
                ->name('ContactUs.editStatus');
            Route::post('contact_us/edit', 'Admin\ContactusController@editContactUs')->name('editContactUs');


            Route::resource('/abouts', 'Admin\AboutController');
            Route::post('/abouts/edit', 'Admin\AboutController@edit_abouts')->name('editAbout');

            Route::resource('/settings', 'Admin\SettingController');
            Route::post('/settings/edit', 'Admin\SettingController@edit_settings')->name('edit_settings');

            Route::resource('/app_explanations', 'Admin\AppExplanationController');
            Route::post('/app_explanations/edit', 'Admin\AppExplanationController@edit_explains')->name('editExplain');
            Route::post('/app_explanations/delet', 'Admin\AppExplanationController@deleteAppExplanations')->name('deleteAppExplanations');

            Route::resource('/categories', 'Admin\CategoryController');
            Route::post('/categories/mainCat', 'Admin\CategoryController@storeMainCat')->name('storeMainCat');
            Route::post('/categories/delet', 'Admin\CategoryController@delete_cat')->name('deleteCat');

            Route::resource('/shops', 'Admin\ShopController');
            Route::post('/shops/editStatus', 'Admin\ShopController@editShopStatus')->name('editShopStatus');
            Route::post('/shops/editVerified', 'Admin\ShopController@editShopVerified')->name('editShopVerified');
            Route::get('/shops/create', 'Admin\ShopController@createShop')->name('createShop');
            Route::get('/shops/edit/{shop_id}', 'Admin\ShopController@editShop')->name('editShop');
            Route::post('/shops/edit', 'Admin\ShopController@updateShop')->name('updateShop');
            Route::post('/shops/delet', 'Admin\ShopController@delete_shop')->name('deleteShop');
            Route::get('/active-shops', 'Admin\ShopController@activeShops');
            Route::get('/inactive-shops', 'Admin\ShopController@inactiveShops');

            Route::get('/orders', 'Admin\OrderController@index');
            Route::get('orders/printAll/{date}', 'Admin\OrderController@printOrderAll');
            Route::get('orders/show/{order_id}', 'Admin\OrderController@show');
            Route::get('orders/print/{order_id}', 'Admin\OrderController@printOrder');
            Route::post('orders/editStatus', 'Admin\OrderController@editOrderStatus')->name('editOrderStatus');
            Route::post('orders/edit-delegate', 'Admin\OrderController@editOrderDelegate')->name('editOrderDelegate');
            Route::post('orders/edit-driver', 'Admin\OrderController@editOrderDriver')->name('editOrderDriver');
            Route::get('accept-orders', 'Admin\OrderController@acceptOrders')->name('admin-accept-orders');
            Route::get('onway-orders', 'Admin\OrderController@onwayOrders')->name('admin-onway-orders');
            Route::get('finished-orders', 'Admin\OrderController@finishedOrders')->name('admin-finished-orders');
            Route::get('finished-orders', 'Admin\OrderController@finishedOrders')->name('admin-finished-orders');
            Route::get('cancelled-orders', 'Admin\OrderController@cancelledOrders')->name('admin-cancelled-orders');


//reports
            Route::get('reports', "Admin\ReportController@reports")->name('reports');
            Route::post('Report', "Admin\ReportController@makeReport")->name('makeReport');

            Route::post('usersReport', "Admin\ReportController@usersReport")->name('usersReport');
            Route::get('usersInvoice', "Admin\ReportController@usersInvoice")->name('usersInvoice');

            Route::post('delegatesReport', "Admin\ReportController@delegatesReport")->name('delegatesReport');
            Route::get('delegatesInvoice', "Admin\ReportController@delegatesInvoice")->name('delegatesInvoice');

            Route::post('driversReport', "Admin\ReportController@driversReport")->name('driversReport');
            Route::get('driversInvoice', "Admin\ReportController@driversInvoice")->name('driversInvoice');

            Route::post('tripsReport', "Admin\ReportController@tripsReport")->name('tripsReport');
            Route::get('tripsInvoice', "Admin\ReportController@tripsInvoice")->name('tripsInvoice');

            Route::post('ordersShopsReport', "Admin\ReportController@ordersShopsReport")->name('ordersShopsReport');
            Route::get('ordersShopsInvoice', "Admin\ReportController@ordersShopsInvoice")->name('ordersShopsInvoice');

            Route::post('ordersNormalReport', "Admin\ReportController@ordersNormalReport")->name('ordersNormalReport');
            Route::get('ordersNormalInvoice', "Admin\ReportController@ordersNormalInvoice")->name('ordersNormalInvoice');

        });
    });
});


//////////shop
Route::group(['prefix' => '/shop'], function () {
    Route::get('/login', 'Shop\AuthController@login_view');
    Route::post('/login', 'Shop\AuthController@login')->name('login_shop');
    Route::get('/logout', 'Shop\AuthController@logout')->name('logout_shop');
    Route::get('/register', 'Shop\AuthController@register_view');
    Route::post('/register', 'Shop\AuthController@register')->name('register_shop');


    Route::group(['middleware' => 'auth:shop'], function () {

        Route::get('/edit-profile', 'Shop\ShopController@editShopProfile')->name('editShopProfile');
        Route::post('/edit-profile', 'Shop\ShopController@updateShopProfile')->name('updateShopProfile');;

        Route::get('/edit-dailyWork', 'Shop\ShopController@editDailyWork')->name('editDailyWork');
        Route::post('/edit-dailyWork', 'Shop\ShopController@updateDailyWork')->name('updateDailyWork');;

        Route::get('/home', 'ShopHomeController@index')->name('shop_home');

        Route::resource('/clients', 'Shop\User2Controller');
        Route::get('/sliders', 'Shop\User2Controller@sliders');


//
        Route::resource('/menus', 'Shop\MenuController');
        Route::post('/menus/edit', 'Shop\MenuController@editMenu')->name('editMenu');
        Route::post('/menus/delet', 'Shop\MenuController@deleteMenu')->name('deleteMenu');

        Route::resource('/products', 'Shop\ProductController');
        Route::post('/products/edit', 'Shop\ProductController@editProduct')->name('editProduct');
        Route::post('/products/delet', 'Shop\ProductController@deleteProduct')->name('deleteProduct');
        Route::post('/products/addVar', 'Shop\ProductController@addVariation')->name('addVariation');
        Route::post('/products/editVar', 'Shop\ProductController@editVariation')->name('editVariation');
        Route::post('/products/deleteVar', 'Shop\ProductController@deleteVariation')->name('deleteVariation');
        Route::post('/products/deleteOption', 'Shop\ProductController@deleteOption')->name('deleteOption');
        Route::post('/products/addOption', 'Shop\ProductController@addOption')->name('addOption');
        Route::post('/products/editOption', 'Shop\ProductController@editOption')->name('editOption');

        Route::resource('/orders', 'Shop\OrderController');
        Route::get('accept-orders', 'Shop\OrderController@acceptOrders')->name('accept-orders');
        Route::get('onway-orders', 'Shop\OrderController@onwayOrders')->name('onway-orders');
        Route::get('finished-orders', 'Shop\OrderController@finishedOrders')->name('finished-orders');
        Route::get('cancelled-orders', 'Shop\OrderController@cancelledOrders')->name('cancelled-orders');


//reports
//        Route::get('reports', "Admin\ReportController@reports")->name('reports');
//        Route::post('Report', "Admin\ReportController@makeReport")->name('makeReport');
//
//        Route::post('usersReport', "Admin\ReportController@usersReport")->name('usersReport');
//        Route::get('usersInvoice', "Admin\ReportController@usersInvoice")->name('usersInvoice');
//
//        Route::post('driversReport', "Admin\ReportController@driversReport")->name('driversReport');
//        Route::get('driversInvoice', "Admin\ReportController@driversInvoice")->name('driversInvoice');
//
//        Route::post('tripsReport', "Admin\ReportController@tripsReport")->name('tripsReport');
//        Route::get('tripsInvoice', "Admin\ReportController@tripsInvoice")->name('tripsInvoice');

    });
});

