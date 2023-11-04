<?php

namespace App\Providers;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
//        $lang = request()->header('lang');
//        if(!$lang)
//            request()->header('lang') = 'ar';
//


        App::setLocale('ar');
        Schema::defaultStringLength(191);
        date_default_timezone_set("Africa/Cairo");
    }
}
