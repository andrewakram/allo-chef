<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\MealImage;
use App\Models\MealIngredient;
use App\Models\SchedualedMeal;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Meal;
use DB;
use Route;
use Session;


class MealController extends Controller
{
    public function index(){
        $cities = Meal::orderBy('id','desc')->get();
        return view('cp.meals.index',[
            'cities'=>$cities,
        ]);

    }

    public function addMeal(){
        return view('cp.meals.create');

    }

    public function show($meal_id){
        $meal = Meal::whereId($meal_id)
            ->with('images')
            ->with('meal_ingredients')
            ->with('userLikes')
            ->first();
        return view('cp.meals.show',[
            'meal'=>$meal,
        ]);

    }

    public function editMeal($meal_id){
//        $countries = Country::whereActive(1)->get();
        $meal = Meal::whereId($meal_id)
            ->with('images')
            ->with('meal_ingredients')
            ->with('userLikes')
            ->first();
        return view('cp.meals.edit',[
            'meal'=>$meal,
//            'countries'=>$countries,
        ]);

    }
    public function deleteMealImage($image_id){
//        $meal = MealImage::whereId($image_id)->first();
//        $meal = Meal::whereId($meal->meal_id)
//            ->with('images')
//            ->with('meal_ingredients')
//            ->with('userLikes')
//            ->first();
        MealImage::whereId($image_id)->delete();
        return back()->with('success','Meal updated successfully');
        return view('cp.meals.edit',[
            'meal'=>$meal,
//            'countries'=>$countries,
        ]);

        return back()->with('success','Meal updated successfully');
    }

    public function deleteMealIngredient($ingredient_id){
        MealIngredient::whereId($ingredient_id)->delete();
        return back()->with('success','Meal updated successfully');
        return view('cp.meals.edit',[
            'meal'=>$meal,
//            'countries'=>$countries,
        ]);

        return back()->with('success','Meal updated successfully');
    }

    public function addMealImage(Request $request)
    {
        //dd($request->all());
        MealImage::create([
            'image' => $request->image,
            'meal_id' => $request->meal_id,
        ]);
        return back()->with('success','Meal updated successfully');
    }

    public function storeMeal(Request $request)
    {
        $meal = Meal::create([
            'meal_no'      => $request->meal_no,
            'name_ar'      => $request->name_ar,
            'name_en'      => $request->name_en,
            'description_ar'      => $request->description_ar,
            'description_en'      => $request->description_en,
            'method_ar'      => $request->method_ar,
            'method_en'      => $request->method_en,
            'points'      => $request->points,
            'price'      => $request->price,
            'grams'      => $request->grams,
            'persons'      => $request->persons,
            'url'      => $request->url,
        ]);
        if(isset($request->ingridient_name_ar)
            && $request->ingridient_name_ar
            && sizeof($request->ingridient_name_ar) > 0 ){
            for($i=0; $i<sizeof($request->ingridient_name_ar) ; $i++ ){
                MealIngredient::create([
                    'meal_id' => $meal->id,
                    'name_ar' => $request->ingridient_name_ar[$i],
                    'name_en' => $request->ingridient_name_en[$i],
                ]);
            }
        }
        MealImage::create([
            'image' => $request->image,
            'meal_id' => $meal->id,
        ]);
        foreach ($request->publish_date as $publish_date){
            if(Carbon::parse($publish_date)->format('l') != "Friday"){
                SchedualedMeal::create([
                    'lable_ar'      => $request->lable_ar,
                    'lable_en'      => $request->lable_en,
                    'price_before'      => $request->price_before,
                    'price_after'      => $request->price_after,
                    'points'      => $request->points,
                    'publish_date'      => $publish_date,
                    'meal_id'      => $meal->id
                ]);
            }
        }
        return redirect('admin/meals');
        $cities = Meal::orderBy('id','desc')->get();
        return view('cp.meals.index',[
            'cities'=>$cities,
        ]);
    }



    public function updateMeal(Request $request){

        Meal::where('id', $request->model_id)
            ->update([
                'meal_no'      => $request->meal_no,
                'name_ar'      => $request->name_ar,
                'name_en'      => $request->name_en,
                'description_ar'      => $request->description_ar,
                'description_en'      => $request->description_en,
                'method_ar'      => $request->method_ar,
                'method_en'      => $request->method_en,
                'points'      => $request->points,
                'price'      => $request->price,
                'grams'      => $request->grams,
                'persons'      => $request->persons,
                'url'      => $request->url,
            ]);
        if(isset($request->ingridient_name_ar)
            && $request->ingridient_name_ar
            && sizeof($request->ingridient_name_ar) > 0 ){
            MealIngredient::where('meal_id',$request->model_id)->delete();
            for($i=0; $i<sizeof($request->ingridient_name_ar) ; $i++ ){
                MealIngredient::create([
                    'meal_id' => $request->model_id,
                    'name_ar' => $request->ingridient_name_ar[$i],
                    'name_en' => $request->ingridient_name_en[$i],
                ]);
            }
        }
        return back()->with('success','Meal updated successfully');
    }
    
    public function editMealStatus(Request $request,$id)
    {
        $cat=Meal::where("id",$id)->first();
        if($cat->active == 1){
            Meal::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Meal::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
