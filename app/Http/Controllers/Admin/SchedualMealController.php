<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\Meal;
use App\Models\MealImage;
use App\Models\MealIngredient;
use App\Models\Tag;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\SchedualedMeal;
use DB;
use Route;
use Session;


class SchedualMealController extends Controller
{
    public function index(){
        $cities = SchedualedMeal::orderBy('publish_date','desc')->get();
        return view('cp.schedual_meals.index',[
            'cities'=>$cities,
        ]);

    }

    public function addMeal(){
        $tags = Tag::whereActive(1)->get();
        $stored_meals = Meal::get();
        return view('cp.schedual_meals.create',[
            'stored_meals'=>$stored_meals,
            'tags'=>$tags,
        ]);

    }

    public function show($meal_id){
        $meal = SchedualedMeal::whereId($meal_id)
            ->with('meal')
            ->first();
        return view('cp.schedual_meals.show',[
            'meal'=>$meal,
        ]);

    }

    public function editMeal($meal_id){
        $tags = Tag::whereActive(1)->get();
        $stored_meals = Meal::get();
        $meal = SchedualedMeal::whereId($meal_id)
            ->with('meal')
            ->first();
        return view('cp.schedual_meals.edit',[
            'meal'=>$meal,
            'stored_meals'=>$stored_meals,
            'tags'=>$tags,
        ]);

    }

    public function deleteSchedualMeal($id){
        SchedualedMeal::whereId($id)->delete();
        return back()->with('success','Meal updated successfully');
    }



    public function storeMeal(Request $request)
    {
        $tag= Tag::whereId($request->tag_id)->first();
        $meal = SchedualedMeal::orderBy('id','desc')->where('meal_id',$request->meal_id)->first();
        if($meal){
            $lable_ar = $meal->lable_ar;
            $lable_en = $meal->lable_en;
            $price_before = $meal->price_before;
            $price_after = $meal->price_after;
            $points = $meal->points;
        }else{
            $meal = Meal::where('id',$request->meal_id)->first();
            $lable_ar = $meal->name_ar;
            $lable_en = $meal->name_en;
            $price_before = $meal->price;
            $price_after = $meal->price;
            $points = $meal->points;
        }

        foreach ($request->publish_date as $publish_date){
            if(Carbon::parse($publish_date)->format('l') != "Friday"){
                SchedualedMeal::create([
//                    'lable_ar'          => isset($request->lable_ar) ? $request->lable_ar : $lable_ar,
//                    'lable_en'          => isset($request->lable_en) ? $request->lable_en : $lable_en,
                    'lable_ar'          => $tag->name_ar,
                    'lable_en'          => $tag->name_en,
                    'price_before'      => isset($request->price_before) ? $request->price_before : $price_before,
                    'price_after'       => isset($request->price_after) ? $request->price_after : $price_after,
                    'points'            => isset($request->lable_en) ? $request->points : $points,
                    'publish_date'      => $publish_date,
                    'meal_id'           => $request->meal_id
                ]);
            }
        }
//        if(Carbon::parse($request->publish_date)->format('l') != "Friday"){
//            $meal = SchedualedMeal::create([
//                'lable_ar'      => $request->lable_ar,
//                'lable_en'      => $request->lable_en,
//                'price_before'      => $request->price_before,
//                'price_after'      => $request->price_after,
//                'points'      => $request->points,
//                'publish_date'      => $request->publish_date,
//                'meal_id'      => $request->meal_id
//            ]);
//        }
        return redirect('/admin/schedual_meals');
        $cities = SchedualedMeal::orderBy('id','desc')->get();
        return view('cp.schedual_meals.index',[
            'cities'=>$cities,
        ]);
    }



    public function updateMeal(Request $request){

        if(Carbon::parse($request->publish_date)->format('l') != "Friday"){
            SchedualedMeal::where('id', $request->model_id)
                ->update([
                    'lable_ar'      => $request->lable_ar,
                    'lable_en'      => $request->lable_en,
                    'price_before'      => $request->price_before,
                    'price_after'      => $request->price_after,
                    'points'      => $request->points,
                    'publish_date'      => $request->publish_date,
                    'meal_id'      => $request->meal_id
                ]);
        }

        return redirect('/admin/schedual_meals');
        $cities = SchedualedMeal::orderBy('id','desc')->get();
        return view('cp.schedual_meals.index',[
            'cities'=>$cities,
        ]);
    }
    


}
