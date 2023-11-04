<?php

namespace App\Http\Controllers;

use App\Models\AppExplanation;
use App\Models\Category;
use App\Models\City;
use App\Models\ComplainSuggests;
use App\Models\Copon;
use App\Models\Country;
use App\Models\Meal;
use App\Models\Notification;
use App\Models\Order;
use App\Models\OrderMeal;
use App\Models\Package;
use App\Models\Period;
use App\Models\Region;
use App\Models\SchedualedMeal;
use App\Models\User;
use App\Models\UserSubscription;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users = User::count();
        $meals = Meal::count();
        $cities = City::whereActive(1)->count();
        $regions = Region::count();
        $schedual_meals = SchedualedMeal::count();
        $packages = Package::count();
        $copons = Copon::count();
        $orders = Order::count();
        $subscriptions = UserSubscription::count();
//
        $order_ids = OrderMeal::where('order_date',Carbon::now()->addDays(2)->format('Y-m-d'))
            ->pluck('order_id')->toArray();
        $ordersAfter2days = Order::orderBy('id','desc')
            ->whereIn('id',$order_ids)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->get();
        //==
        $deliverDate = Carbon::now()->addDays(2)->format('Y-m-d');
        $deliverDateFormated = Carbon::now()->addDays(2)->format('d-m-Y');
        $meal_ids = OrderMeal::where('order_date',$deliverDate)
            ->pluck('meal_id')->toArray();
        $meal_counts = array_count_values($meal_ids);
        $data = [];
        $item = [];
        foreach ($meal_counts as $key => $value){
            $item['meal_id'] = $key;
            $item['meal_name'] = Meal::whereId($key)->select('name_ar')->first()->name_ar;
            $item['meal_count'] = $value;
            array_push($data,$item);
        }
        //==

        return view('cp.home',compact('users','meals','cities','regions'
        ,'schedual_meals','packages','copons','subscriptions','orders',
        'ordersAfter2days','data','deliverDateFormated','deliverDate'));
    }

    public function indexWzSearch(Request $request)
    {
        $users = User::count();
        $meals = Meal::count();
        $cities = City::whereActive(1)->count();
        $regions = Region::count();
        $schedual_meals = SchedualedMeal::count();
        $packages = Package::count();
        $copons = Copon::count();
        $orders = Order::count();
        $subscriptions = UserSubscription::count();
//
        $deliverDate = Carbon::parse($request->search)->format('Y-m-d');
        $deliverDateFormated = Carbon::parse($request->search)->format('d-m-Y');
        $order_ids = OrderMeal::where('order_date',$deliverDate)
            ->pluck('order_id')->toArray();
        $ordersAfter2days = Order::orderBy('id','desc')
            ->whereIn('id',$order_ids)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->get();
        //==

        $meal_ids = OrderMeal::where('order_date',$deliverDate)
            ->pluck('meal_id')->toArray();
        $meal_counts = array_count_values($meal_ids);
        $data = [];
        $item = [];
        foreach ($meal_counts as $key => $value){
            $item['meal_id'] = $key;
            $item['meal_name'] = Meal::whereId($key)->select('name_ar')->first()->name_ar;
            $item['meal_count'] = $value;
            array_push($data,$item);
        }
        //==

        return view('cp.home',compact('users','meals','cities','regions'
            ,'schedual_meals','packages','copons','subscriptions','orders',
            'ordersAfter2days','data','deliverDateFormated','deliverDate'));
    }
}
