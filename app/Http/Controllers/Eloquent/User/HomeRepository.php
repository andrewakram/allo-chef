<?php
/**
 * Created by PhpStorm.
 * User: Al Mohands
 * Date: 22/05/2019
 * Time: 01:53 م
 */

namespace App\Http\Controllers\Eloquent\User;


use App\Http\Controllers\Controller;
use App\Http\Controllers\Interfaces\User\HomeRepositoryInterface;
use App\Models\Admin;
use App\Models\Category;
use App\Models\Copon;
use App\Models\Location;
use App\Models\Meal;
use App\Models\MealImage;
use App\Models\MealRate;
use App\Models\Notification;
use App\Models\Order;
use App\Models\OrderImage;
use App\Models\OrderMeal;
use App\Models\OrderProduct;
use App\Models\OrderProductVariation;
use App\Models\OrderProductVariationOption;
use App\Models\Package;
use App\Models\Period;
use App\Models\Region;
use App\Models\SchedualedMeal;
use App\Models\Setting;
use App\Models\User;
use App\Models\UserLike;
use App\Models\UserSubscription;
use App\Models\UserWallet;
use Carbon\Carbon;
use DB;

class HomeRepository implements HomeRepositoryInterface
{
    public $model;
    public $paymentController;

    public function __construct(Category $model, Controller $paymentController)
    {
        $this->model = $model;
        $this->paymentController = $paymentController;
    }

    public function getMeals($user_id, $request, $lang)
    {
        $days_array = [
            'Saturday' => [
                'ar' => 'سبت',
                'en' => 'SAT',
            ],
            'Sunday' => [
                'ar' => 'أحد',
                'en' => 'SUN',
            ],
            'Monday' => [
                'ar' => 'أثنين',
                'en' => 'MON',
            ],
            'Tuesday' => [
                'ar' => 'ثلاثاء',
                'en' => 'TUE',
            ],
            'Wednesday' => [
                'ar' => 'أربعاء',
                'en' => 'WED',
            ],
            'Thursday' => [
                'ar' => 'خميس',
                'en' => 'THU',
            ],
            'Friday' => [
                'ar' => 'جمعة',
                'en' => 'FRI',
            ],
        ];
        $days = [];

        $day = [];
        $day['id'] = 0;
        $day['name'] = $days_array[Carbon::now()->addDays(2)->format('l')][getLang()];
        $day['selected'] = 1;
        $day['date'] = Carbon::now()->addDays(2)->format('Y-m-d');
        array_push($days, $day);
        for ($i = 1; $i < 7; $i++) {
            $day = [];
            $day['id'] = $i;
            $day['name'] = $days_array[Carbon::now()->addDays($i + 2)->format('l')][getLang()];
            $day['selected'] = 0;
            $day['date'] = Carbon::now()->addDays($i + 2)->format('Y-m-d');
            array_push($days, $day);
        }
//        $days_ar = [
//            [
//                'name' => 'سبت',
//                'selected' => $day_name == 'Saturday' ? 1 : 0,
//            ],
//            [
//                'name' => 'أحد',
//                'selected' => $day_name == 'Sunday' ? 1 : 0,
//            ],
//            [
//                'name' => 'أثنين',
//                'selected' => $day_name == 'Monday' ? 1 : 0,
//            ],
//            [
//                'name' => 'ثلاثاء',
//                'selected' => $day_name == 'Tuesday' ? 1 : 0,
//            ],
//            [
//                'name' => 'أربعاء',
//                'selected' => $day_name == 'Wednesday' ? 1 : 0,
//            ],
//            [
//                'name' => 'خميس',
//                'selected' => $day_name == 'Thursday' ? 1 : 0,
//            ],
//            [
//                'name' => 'جمعة',
//                'selected' => $day_name == 'Friday' ? 1 : 0,
//            ],
//        ];
//        $days_en = [
//            [
//                'name' => 'SAT',
//                'selected' => $day_name == 'Saturday' ? 1 : 0,
//            ],
//            [
//                'name' => 'SUN',
//                'selected' => $day_name == 'Sunday' ? 1 : 0,
//            ],
//            [
//                'name' => 'MON',
//                'selected' => $day_name == 'Monday' ? 1 : 0,
//            ],
//            [
//                'name' => 'TUE',
//                'selected' => $day_name == 'Tuesday' ? 1 : 0,
//            ],
//            [
//                'name' => 'WED',
//                'selected' => $day_name == 'Wednesday' ? 1 : 0,
//            ],
//            [
//                'name' => 'THU',
//                'selected' => $day_name == 'Thursday' ? 1 : 0,
//            ],
//            [
//                'name' => 'FRI',
//                'selected' => $day_name == 'Friday' ? 1 : 0,
//            ],
//        ];

        $date = isset($request->date) ? $request->date : Carbon::now()->addDays(2)->format('Y-m-d');


        $schedual_meals = SchedualedMeal::whereDate('publish_date', $date)
            ->pluck('meal_id');
        //dd($schedual_meals);
        $meals = Meal::whereIn('id', $schedual_meals)
            ->select('id', 'name_' . getLang() . ' as name',
                'description_' . getLang() . ' as description',
                'grams', 'url')
            ->get();
        foreach ($meals as $meal) {
            $meal->points = (int)SchedualedMeal::whereDate('publish_date', $date)
                ->where('meal_id', $meal->id)->select('points')->first()->points;
            if ($user_id) {
                $user = User::whereId($user_id)->first();
                $is_meal_liked = UserLike::where('meal_id', $meal->id)->where('user_id', $user_id)->first();
                if ($is_meal_liked) {
                    $meal->is_liked = 1;
                } else {
                    $meal->is_liked = 0;
                }
                if (Carbon::now()->addDays(2)->format("Y-m-d") == $meal->publish_date) {
                    $meal->add_to_cart = 1;
                } else {
                    if ($user->subscription_expire) {
                        if ($user->subscription_expire >= $meal->publish_date) {
                            $meal->add_to_cart = 1;
                        } else {
                            $meal->add_to_cart = 0;
                        }
                    } else {
                        $meal->add_to_cart = 0;
                    }
                }
            } else {
                $meal->is_liked = 0;
            }
        }
//$x = Carbon::now()->addDays(2)->format('Y-m-d');
//$y = $request->date;
        if (isset($request->filter) && $request->filter == 1) {
            return $meals;
        }


        $data = [
            'day_name' => $days_array[Carbon::parse($request->date)->format('l')][getLang()],
            'day_date' => Carbon::parse($request->date)->format('Y-m-d'),
            'days' => $days,
            'meals' => $meals,
        ];
        return $data;
    }

    public function getMealDetails($user_id, $request, $lang)
    {
        $date = isset($request->date) ? $request->date : Carbon::now()->addDays(2)->format('Y-m-d');

        $schedual_meal = SchedualedMeal::whereDate('publish_date', $date)
            ->where('meal_id', $request->meal_id)->pluck('meal_id');
        $meal = Meal::whereId($request->meal_id)
            ->whereIn('id', $schedual_meal)
            ->select('id',
                'name_' . getLang() . ' as name',
                'description_' . getLang() . ' as description',
                'method_' . getLang() . ' as method',
                'grams', 'persons', 'points', 'free_delivery', 'rate', 'url')
            ->withCount('images')
            ->withCount('userLikes')
            ->with('images')
            ->with('ingredients')
            ->first();
        $meal->user_likes_count = (string)$meal->user_likes_count;
        $this_schedual_meal = SchedualedMeal::whereDate('publish_date', $date)
            ->where('meal_id', $request->meal_id)->select('points')->first();
        if ($meal) {
            $meal->points = isset($this_schedual_meal->points) ? $this_schedual_meal->points : 0;
            $meal->rate = number_format($meal->rate, 1, '.', '');
            if ($user_id) {
                $user = User::whereId($user_id)->first();
                $is_meal_liked = UserLike::where('meal_id', $meal->id)->where('user_id', $user_id)->first();
                if ($is_meal_liked) {
                    $meal->is_liked = 1;
                } else {
                    $meal->is_liked = 0;
                }
                //367348199
                if ($date == $meal->publish_date) {
                    $meal->add_to_cart = 1;
                } else {
                    if ($user->subscription_expire) {
                        if ($user->subscription_expire >= $meal->publish_date) {
                            $meal->add_to_cart = 1;
                        } else {
                            $meal->add_to_cart = 0;
                        }
                    } else {
                        $meal->add_to_cart = 0;
                    }
                }
            } else {
                $meal->is_liked = 0;
                $meal->add_to_cart = 0;

            }

        }
        //
        $other_schedual_meal = SchedualedMeal::whereDate('publish_date', $date)
            ->pluck('meal_id');
        $other_meals = Meal::where('id', '!=', $request->meal_id)
            ->whereIn('id', $other_schedual_meal)
            ->select('id', 'name_' . getLang() . ' as name', 'grams', 'url')
            ->get();
        foreach ($other_meals as $other_meal) {
            if ($user_id) {
                $is_meal_liked = UserLike::where('meal_id', $other_meal->id)->where('user_id', $user_id)
                    ->first();
                if ($is_meal_liked) {
                    $other_meal->is_liked = 1;
                } else {
                    $other_meal->is_liked = 0;
                }
            } else {
                $other_meal->is_liked = 0;
            }
        }
        //
        $data = [
            'meal' => $meal,
            'other_meals' => $other_meals,
        ];

        return $data;
    }

    public function likeMeal($user_id, $request, $lang)
    {
        $likeMealCheck = UserLike::where('meal_id', $request->meal_id)->where('user_id', $user_id)->first();
        if ($likeMealCheck) {
            UserLike::where('meal_id', $request->meal_id)->where('user_id', $user_id)->delete();
            return false;
        } else {
            UserLike::create([
                'meal_id' => $request->meal_id,
                'user_id' => $user_id,
            ]);
            return true;
        }
    }

    public function searchMeals($user_id, $request, $lang)
    {
        $date = Carbon::now()->addDays(2)->format('Y-m-d');

        $schedual_meals = SchedualedMeal::whereDate('publish_date', $date)
            ->pluck('meal_id');
        //dd($schedual_meals);
        if (getLang() == "ar") {
            $meals = Meal::whereIn('id', $schedual_meals)
                ->where('name_ar', 'like', '%' . $request->serch_key . '%')
                ->select('id', 'name_' . getLang() . ' as name',
                    'description_' . getLang() . ' as description', 'grams', 'url')
                ->get();
        } else {
            $meals = Meal::whereIn('id', $schedual_meals)
                ->where('name_en', 'like', '%' . $request->serch_key . '%')
                ->select('id', 'name_' . getLang() . ' as name', 'grams', 'url')
                ->get();
        }

        foreach ($meals as $meal) {
            $meal->points = (int)SchedualedMeal::whereDate('publish_date', $date)
                ->where('meal_id', $meal->id)->select('points')->first()->points;
            if ($user_id) {
                $user = User::whereId($user_id)->first();
                $is_meal_liked = UserLike::where('meal_id', $meal->id)->where('user_id', $user_id)->first();
                if ($is_meal_liked) {
                    $meal->is_liked = 1;
                } else {
                    $meal->is_liked = 0;
                }
                if ($user->subscription_expire) {
                    if ($user->subscription_expire >= $meal->publish_date) {
                        $meal->add_to_cart = 1;
                    } else {
                        $meal->add_to_cart = 0;
                    }
                } else {
                    $meal->add_to_cart = 0;
                }
            } else {
                $meal->is_liked = 0;
            }
        }

        return $meals;

    }

    public function getLikedMeals($user_id, $request, $lang)
    {
        $likedMeals = UserLike::where('user_id', $user_id)
            ->pluck('meal_id');
        $meals = DB::table('meals')->whereIn('id', $likedMeals)
//            ->where('name_ar', 'like', '%' . $request->serch_key . '%')
//            ->orWhere('name_en', 'like', '%' . $request->serch_key . '%')
            ->select('id', 'name_' . getLang() . ' as name',
                'description_' . getLang() . ' as description', 'grams')
            ->get();
        foreach ($meals as $meal) {
            $meal->id = (int)$meal->id;
            $meal->is_liked = 1;
            $meal->lable = "";
            $meal->price_before = (string)0;
            $meal->price_after = (string)0;
            $meal->publish_date = (string)Carbon::now()->addDays(2)->format('Y-m-d');
            $meal->points = 0;
            $meal->image = MealImage::where('meal_id', $meal->id)->select('image')->first()->image;
        }

        return $meals;

    }

    public function searchLikedMeals($user_id, $request, $lang)
    {
        $likedMeals = UserLike::where('user_id', $user_id)
            ->pluck('meal_id');
        if (getLang() == "ar") {
            $meals = Meal::whereIn('id', $likedMeals)
                ->where('name_ar', 'like', '%' . $request->serch_key . '%')
                ->select('id', 'name_' . getLang() . ' as name',
                    'description_' . getLang() . ' as description',
                    'grams', 'url')
                ->get();
        } else {
            $meals = Meal::whereIn('id', $likedMeals)
                ->where('name_en', 'like', '%' . $request->serch_key . '%')
                ->select('id', 'name_' . getLang() . ' as name', 'grams', 'url')
                ->get();
        }
        foreach ($meals as $meal) {
            $meal->is_liked = 1;
            $meal->image = MealImage::where('meal_id', $meal->id)->select('image')->first()->image;
            $schedual = SchedualedMeal::where('meal_id', $meal->id)
                ->where('publish_date', Carbon::now()->addDays(2)->format("Y-m-d"))->first();
            if ($schedual) {
                $meal->points = $schedual->points;
                $meal->add_to_cart = 1;
                $meal->lable = getLang() == "ar" ? $schedual->lable_ar : $schedual->lable_en;
                $meal->publish_date = $schedual->publish_date;
                $meal->price_before = $schedual->price_before;
                $meal->price_after = $schedual->price_after;
            } else {
                $meal->points = 0;
                $meal->add_to_cart = 0;
                $meal->lable = "";
                $meal->publish_date = "";
                $meal->price_before = "";
                $meal->price_after = "";
            }
        }

        return $meals;

    }

    public function getPackages($user_id, $request, $lang)
    {
        return Package::whereActive(1)
            ->select('id', 'name_' . getLang() . ' as name', 'price', 'points', 'days')
            ->get();

    }

    public function makeSubscription($user_id, $request, $lang)
    {
        $package = Package::whereId($request->package_id)->first();

        $UserSubscription = UserSubscription::create([
            'visa_value' => null,
            'payment_status' => null,
            'user_id' => $user_id,
            'expire_at' => Carbon::now()->addDays($package->days),
            'price' => $package->price,
            'points' => $package->points,
            'days' => $package->days,
            'name_ar' => $package->name_ar,
            'name_en' => $package->name_en,
        ]);
        $user = User::whereId($user_id)->first();
        //here we update after payment is success
//        UserWallet::create([
//            'user_id' => $user_id,
//            'order_id' => null,
//            'subscription_id' => $UserSubscription->id,
//            'wallet_old_value' => $user->wallet,
//            'wallet_new_value' => ($user->wallet + $package->price),
//            'points_old_value' => $user->points,
//            'points_new_value' => ($user->points + $package->points),
//            'description_ar' => "شحن للباقة بقيمة: " . $package->price . " جنبة و " . $package->points . " نقظة ",
//            'description_en' => "Shipping the package with: " . $package->price . " EGP & " . $package->points . " point "
//        ]);
//        $user->update([
//            'wallet' => ($user->wallet + $package->price),
//            'points' => ($user->points + $package->points),
//            'subscription_expire' => Carbon::now()->addDays($package->days),
//        ]);
        //======
        $request['id'] = $UserSubscription->id;
        $request['invoice_value'] = $UserSubscription->price;
        $request['type'] = 'subscription';
        $paymentData = $this->paymentController->firstStepPayment($request);
        //======
        $subscription = UserSubscription::orderBy('id','desc')
            ->where('user_id',$user->id)
            ->first();
        if(getLang() == "ar"){
            $user->subscription_name = isset($subscription) ? $subscription->name_ar : "";
        }elseif(getLang() == "en") {
            $user->subscription_name = isset($subscription) ? $subscription->name_en : "";
        }
        $user->subscription = $UserSubscription;
        $user->payment = $paymentData;

        return $user;

    }

    public function getPeriods($request, $lang)
    {
        return Period::whereActive(1)->select('id', 'from', 'to')->get();
    }

    public function checkCopon($request, $lang)
    {
        $copon = Copon::where('code', $request->code)
            ->select('id', 'code', 'discount', 'description_' . $lang . ' as description', 'expire_at')
            ->first();
        if ($copon) {
            if ($copon->expire_at > Carbon::now()->format('Y-m-d')) {
                return $copon;
            }
        }
        return false;
    }

    public function makeOrderOld($user_id, $subscription_expire, $wallet, $points, $request, $lang)
    {
        $user = User::whereId($user_id)->first();
        if ($request->package == 1 || $request->package == 2) {
            if ($user->subscription_expire) {
                if (!($user->subscription_expire > NOW())) {
                    return "subscription_expire";
                }
            }
        }
        global $costMoney;
        global $costPoint;
        global $costDrlivery;
        $costMoney = 0;
        $costPoint = 0;
        $costDrlivery = 10;

        $mealPricePercentage = Setting::select('meal_price_percentage')->first()->meal_price_percentage;
        foreach ($request->meals as $meal) {
            $schedualMeal = SchedualedMeal::where('meal_id', $meal['id'])
                ->where('publish_date', $meal['publish_date'])->first();
            $quantity = isset($meal['quantity']) ? $meal['quantity'] : 1;
            if ($schedualMeal) {
                $costMoney = $costMoney + ($schedualMeal->price_after * $quantity);
                $costPoint = $costPoint + ($schedualMeal->points * $quantity);
            } else {
                $currentMeal = Meal::whereId($meal['id'])->first();
                $mealPricePercentageCost = $currentMeal->price * ($mealPricePercentage / 100);
                $mealcost = $currentMeal->price + $mealPricePercentageCost;
                $costMoney = $costMoney + ($mealcost * $quantity);
                $costPoint = $costPoint + ($currentMeal->points * $quantity);
            }

        }
        $location = Location::whereId($request->location_id)->first();
        if ($location) {
            $region = Region::whereId($location->region_id)->first();
            $costDrlivery = $region->delivery;
        }
        $costMoney = $costMoney + $costDrlivery;
        /////////////////////=======
        $copon = isset($request->copon_id) ? Copon::whereId($request->copon_id)->first() : null;
        if ($copon) {
            $costMoney = $costMoney - $copon->discount;
        }
        /////creating order
        $order = Order::create([
            'user_id' => $user_id,
            'payment_type' => $request->package,
            'order_number' => rand(10000, 99999) . $user_id,
            'period_id' => $request->period_id,
            'copon_id' => $request->copon_id,
            'location_id' => $request->location_id,
            'total_before' => $request->total_meals,
            'total_after' => $request->total_meals,
            'total_delivery' => $request->total_delivery,
            'discount' => isset($copon) ? $copon->discount : 0,
            'notes' => $request->notes,
            'received' => Carbon::now()
        ]);

        $newWalletValue = $user->wallet - $costMoney;
        $newPointValue = $user->points - $costPoint;
        UserWallet::create([
            'user_id' => $user_id,
            'order_id' => $order->id,
            'subscription_id' => null,
            'wallet_old_value' => $user->wallet,
            'wallet_new_value' => $request->package == 1 ? $newWalletValue : $user->wallet,
            'points_old_value' => $user->points,
            'points_new_value' => $request->package == 2 ? $newPointValue : $user->points,
            'description_ar' => $request->package == 1 ? "طلب جديد من الباقة" : ($request->package == 2 ? "طلب جديد من النقاط" : "طلب جديد اون لاين"),
            'description_en' => $request->package == 1 ? "New order from the package" : ($request->package == 2 ? "New order from the points" : "New order online")
        ]);


        /////////////////////=======
        ///       //package : 1 >> من الباقه
        //        //
        //        //package : 2 >> النقط
        //        //
        //        //package : 3 >> اون لاين
        if ($request->package == 1) {
            if ($user->subscription_expire) {
                if ($user->subscription_expire > NOW())
                    if ($user->wallet < $costMoney) {
                        return false;
                    } else {
                        User::whereId($user_id)->update([
                            'wallet' => $newWalletValue
                        ]);
                    }
            }
//            return "subscription_expire";
        }
        if ($request->package == 2) {
            if ($user->subscription_expire) {
                if ($user->subscription_expire > NOW())
                    if ($user->points < $costPoint) {
                        return false;
                    } else {
                        User::whereId($user_id)->update([
                            'points' => $newPointValue
                        ]);
                    }
            }
//            return "subscription_expire";

        }
        /////////////////////=======


        foreach ($request->meals as $meal) {

            OrderMeal::create([
                'order_id' => $order->id,
                'meal_id' => $meal['id'],
                'quantity' => $meal['quantity'],
                'price' => $meal['price_after'],
                'order_date' => $meal['publish_date'],
                'vip' => $meal['vip'],
            ]);


//            $schedualedMeal = SchedualedMeal::where('publish_date',$meal['publish_date'])
//                ->where('meal_id',$meal['id'])->first();
//
////            if((!$subscription_expire || ) ){
////
////            }
//            if($schedualedMeal){
////                if($subscription_expire) {
////                    if ($subscription_expire > $meal->order_date &&
////                        ($wallet > $schedualedMeal->price_after || $points > $schedualedMeal->points)
////                    ){
//                        OrderMeal::create([
//                            'order_id' => $order->id,
//                            'meal_id' => $meal['id'],
//                            'quantity' => $meal['quantity'],
//                            'price' => $schedualedMeal->price_after,
//                            'order_date' => $meal['publish_date'],
//                            'vip' => $meal['vip'],
//                        ]);
////                        $user->update([
////                            'wallet' => ($user->wallet + $package->price),
////                            'points' => ($user->points + $package->points),
////                        ]);
////                    }
////                }
//            }else{
//
//            }

        }

        return true;

    }

    public function makeOrder($user_id, $subscription_expire, $wallet, $points, $request, $lang)
    {
        global $user;
        $user = User::whereId($user_id)->first();

        //////////////////// >> start
        if ($request->package == 1 || $request->package == 2) {
            if ($user->subscription_expire) {
                if (!($user->subscription_expire > NOW())) {
                    return "subscription_expire";
                }
            }else{
                return "please_subscribe";
            }
        }
        $setting = Setting::first();
        global $subTotalWithoutDeliveryAndCopon;
        global $totalWithDeliveryAndCopon;
        global $totalWithoutDiscount;
        global $costMoney;
        global $costPoint;
        global $costDrlivery;
        $subTotalWithoutDeliveryAndCopon = 0;
        $totalWithDeliveryAndCopon = 0;
        $totalWithoutDiscount = 0;
        $costMoney = 0;
        $costPoint = 0;
        $costDrlivery = $setting->delivery_cost_in_egp;
        $pointEqualityInEgp = $setting->point_equality_in_egp;

        $mealPricePercentage = $setting->meal_price_percentage;
        foreach ($request->meals as $meal) {
            $schedualMeal = SchedualedMeal::where('meal_id', $meal['id'])
                ->where('publish_date', $meal['publish_date'])->first();
            $quantity = isset($meal['quantity']) ? $meal['quantity'] : 1;
            if ($schedualMeal) {
                $costMoney = $costMoney + ($schedualMeal->price_after * $quantity);
                $costPoint = $costPoint + ($schedualMeal->points * $quantity);
            } else {
                $currentMeal = Meal::whereId($meal['id'])->first();
                $mealPricePercentageCost = $currentMeal->price * ($mealPricePercentage / 100);
                $mealcost = $currentMeal->price + $mealPricePercentageCost;
                $costMoney = $costMoney + ($mealcost * $quantity);
                $costPoint = $costPoint + ($currentMeal->points * $quantity);
            }

        }
        $subTotalWithoutDeliveryAndCopon = $costMoney;

        $location = Location::whereId($request->location_id)->first();
        if ($location) {
            $region = Region::whereId($location->region_id)->first();
            $costDrlivery = $region->delivery;
        }
        $costMoney = $costMoney + $costDrlivery;
        /////////////////////=======
        $copon = isset($request->copon_id) ? Copon::whereId($request->copon_id)->first() : null;

        //total cost without copon discount
        $totalWithoutDiscount = $costMoney;
        if ($copon) {
            $costMoney = $costMoney - $copon->discount;
        }

        //total cost plus delivery cost & minus copon discount
        $totalWithDeliveryAndCopon = $costMoney;

        /////creating order
        $order = Order::create([
            'user_id' => $user_id,
            'payment_type' => $request->package,
            'order_number' => rand(10000, 99999) . $user_id,
            'period_id' => $request->period_id,
            'copon_id' => $request->copon_id,
            'location_id' => $request->location_id,
//            'total_before' => $request->total_meals,
            'total_before' => $totalWithoutDiscount,
//            'total_after' => $request->total_meals,
            'total_after' => $totalWithDeliveryAndCopon,
//            'total_delivery' => $request->total_delivery,
            'total_delivery' => $costDrlivery,
            'discount' => isset($copon) ? $copon->discount : 0,
            'notes' => $request->notes,
            'received' => Carbon::now()
        ]);

        foreach ($request->meals as $meal) {

            OrderMeal::create([
                'order_id' => $order->id,
                'meal_id' => $meal['id'],
                'quantity' => $meal['quantity'],
                'price' => $meal['price_after'],
                'order_date' => $meal['publish_date'],
                'vip' => $meal['vip'],
            ]);

        }

        /////////////////////=======
        ///       //package : 1 >> من الباقه
        //        //
        //        //package : 2 >> النقط
        //        //
        //        //package : 3 >> اون لاين
        //        //
        //        //package : 4 >> كاش
        /////////////////////=======
        ///
        global $valueToPayFromWallet;
        global $valueToPayFromPoints;
        global $valueToPayFromVisa;
        global $oldWallet;
        global $oldPoints;
        global $newWallet;
        global $newPoints;
        $valueToPayFromWallet = 0;
        $valueToPayFromPoints = 0;
        $valueToPayFromVisa = 0;
        $oldWallet = $user->wallet;
        $oldPoints = $user->points;
        $newWallet = 0;
        $newPoints = 0;
        ///
        $title = 'طلب جديد';
        $msg = 'تم إنشاء طلبك بنجاح';

        if($user->token){
            Notification::send($user->platform,$user->token,"$title","$msg",$order,null,null,null);
        }
        ///
        if ($request->package == 1) { // pay from package subscription
            if ($user->subscription_expire) {
                if ($user->subscription_expire > NOW()) {
                    //start to pay from wallet
                    if ($user->wallet < $totalWithDeliveryAndCopon) {
                        $valueToPayFromWallet = $user->wallet;
                        $remaingValueOfOrderNeedToBePaid = $totalWithDeliveryAndCopon - $valueToPayFromWallet;
                        $newWallet = 0;
                        //start to pay from points
                        if (($user->points) && ($user->points > 0)) {
                            $userEqualityMoneyFromPoints = $pointEqualityInEgp * $user->points;
                            if ($userEqualityMoneyFromPoints < $remaingValueOfOrderNeedToBePaid) {
                                $valueToPayFromPoints = $user->points;
                                $remaingValueOfOrderNeedToBePaid = $remaingValueOfOrderNeedToBePaid - $userEqualityMoneyFromPoints;
                                $valueToPayFromVisa = $remaingValueOfOrderNeedToBePaid;
                                $newPoints = 0;
                            } else {
                                $remainUserEqualityMoneyFromPoints = $userEqualityMoneyFromPoints - $remaingValueOfOrderNeedToBePaid;
                                $remainingPointsToUser = $remainUserEqualityMoneyFromPoints / $pointEqualityInEgp;
                                $newPoints = $remainingPointsToUser;
                                $valueToPayFromPoints = $oldPoints - $newPoints;
                                $valueToPayFromVisa = 0;
                            }
                        } else {
                            $valueToPayFromPoints = 0;
                            $valueToPayFromVisa = $remaingValueOfOrderNeedToBePaid;
                        }
                    } else {
                        $valueToPayFromWallet = $totalWithDeliveryAndCopon;
                        $newWallet = $user->wallet - $totalWithDeliveryAndCopon;
                        $newPoints = $oldPoints;
                        $valueToPayFromVisa = 0;
                        $valueToPayFromPoints = 0;
                    }
                    User::whereId($user_id)->update([
                        'wallet' => $newWallet,
                        'points' => $newPoints,
                    ]);
                    UserWallet::create([
                        'user_id' => $user_id,
                        'order_id' => $order->id,
                        'subscription_id' => null,
                        'wallet_old_value' => $oldWallet,
                        'wallet_new_value' => $newWallet,
                        'points_old_value' => $oldPoints,
                        'points_new_value' => $newPoints,
                        'description_ar' => "طلب جديد من الباقة",
                        'description_en' => "New order from the package"
                    ]);
                    Order::whereId($order->id)->update([
                        'order_cash' => 0,
                        'order_visa' => $valueToPayFromVisa,
                        'order_points' => $valueToPayFromPoints,
                        'order_package' => $valueToPayFromWallet,
                    ]);
                    //TODO go to pay by visa
                    $paymentData = null;
                    if($valueToPayFromVisa > 0){
                        $request['id'] = $order->id;
                        $request['invoice_value'] = $valueToPayFromVisa;
                        $request['type'] = 'order';
                        $paymentData = $this->paymentController->firstStepPayment($request);
                    }
                    $user = User::whereId($user_id)->first();
                    $subscription = UserSubscription::orderBy('id','desc')
                        ->where('user_id',$user->id)
                        ->first();
                    if(getLang() == "ar"){
                        $user->subscription_name = isset($subscription) ? $subscription->name_ar : "";
                    }elseif(getLang() == "en") {
                        $user->subscription_name = isset($subscription) ? $subscription->name_en : "";
                    }
                    $user->payment = $paymentData;
                    return $user;
                }
                else{
                    return "subscription_expire";
                }
            } else {
                return "please_subscribe";
            }
        }
//        if ($request->package == 2) { // pay from package points
//            if ($user->subscription_expire) {
//                if ($user->subscription_expire > NOW())
//                    if ($user->points < $costPoint) {
//                        return false;
//                    } else {
//                        User::whereId($user_id)->update([
////                            'points' => $newPointValue
//                        ]);
//                    }
//            }
//        }
        if ($request->package == 3) { // pay from visa
            Order::whereId($order->id)->update([
                'order_cash' => 0,
                'order_visa' => $totalWithDeliveryAndCopon,
                'order_points' => 0,
                'order_package' => 0,
            ]);
            //TODO go to pay by visa
            $request['id'] = $order->id;
            $request['invoice_value'] = $totalWithDeliveryAndCopon;
            $request['type'] = 'order';
            $paymentData = $this->paymentController->firstStepPayment($request);
            $user = User::whereId($user_id)->first();
            $subscription = UserSubscription::orderBy('id','desc')
                ->where('user_id',$user->id)
                ->first();
            if(getLang() == "ar"){
                $user->subscription_name = isset($subscription) ? $subscription->name_ar : "";
            }elseif(getLang() == "en") {
                $user->subscription_name = isset($subscription) ? $subscription->name_en : "";
            }
            $user->payment = $paymentData;
            return $user;
        }
        if ($request->package == 4) { // pay from cash
            Order::whereId($order->id)->update([
                'order_cash' => $totalWithDeliveryAndCopon,
                'order_visa' => 0,
                'order_points' => 0,
                'order_package' => 0,
            ]);
            return "order_payed_cash";
        }
        /////////////////////=======
        return "dd";
    }

    public function myOrders($user_id, $request, $lang)
    {
        if ((isset($request->type)) && ($request->type == 'current')) {
            return Order::orderBy('id', 'desc')
                ->whereNull('delivered')
                ->where('user_id', $user_id)
                ->with('orderMeals')
                ->get();
        } else if ((isset($request->type)) && ($request->type == 'previous')) {
            return Order::orderBy('id', 'desc')
                ->whereNotNull('delivered')
                ->where('user_id', $user_id)
                ->with('orderMeals')
                ->get();
        } else {
            return Order::orderBy('id', 'desc')
                ->where('user_id', $user_id)
                ->with('orderMeals')
                ->get();
        }

//        return false;
    }

    public function getOrderDetails($user_id, $request, $lang)
    {
        return Order::whereId($request->order_id)
            ->where('user_id', $user_id)
            ->with('orderMeals')
            ->first();
    }

    public function getVipMeals($user_id, $request, $lang)
    {
        $user_orders_ids = Order::where('user_id', $user_id)->pluck('id')->toArray();
        $user_meals_ids = OrderMeal::whereIn('order_id', $user_orders_ids)->pluck('meal_id')->toArray();
        $meals = Meal::whereIn('id', $user_meals_ids)
            ->select('id', 'name_' . getLang() . ' as name', 'price', 'points',
                'description_' . getLang() . ' as description', 'grams', 'url')
            ->get();

        foreach ($meals as $meal) {
            if ($user_id) {
                $user = User::whereId($user_id)->first();
                $is_meal_liked = UserLike::where('meal_id', $meal->id)->where('user_id', $user_id)->first();
                if ($is_meal_liked) {
                    $meal->is_liked = 1;
                } else {
                    $meal->is_liked = 0;
                }
                $meal->add_to_cart = 1;
            } else {
                $meal->is_liked = 0;
            }
        }

        return $meals;
    }

    public function rateMeal($user_id, $request, $lang)
    {
        $checkRate = MealRate::where('user_id', $user_id)
            ->where('meal_id', $request->meal_id)->first();
        if ($checkRate) {
            MealRate::where('user_id', $user_id)
                ->where('meal_id', $request->meal_id)
                ->update([
                    'rate' => $request->rate
                ]);
        } else {
            MealRate::create([
                'rate' => $request->rate,
                'user_id' => $user_id,
                'meal_id' => $request->meal_id,
            ]);
        }
        $averageRate = MealRate::where('meal_id', $request->meal_id)->avg('rate');
        Meal::whereId($request->meal_id)->update([
            "rate" => $averageRate
        ]);
        return true;
    }
}
