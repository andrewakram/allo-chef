<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class OrderMeal extends Model
{
    use Notifiable;
    //use SoftDeletes;


    protected $table = 'order_meals';

    protected $fillable = [
        'vip',
        'order_id','meal_id','quantity','price','order_date'
    ];

    protected $appends = ['meal_name','meal_description','meal_image'];


    protected $hidden = [
        'active', 'deleted_at', 'updated_at','user_id'
    ];

    public function order(){
        return $this->belongsTo(Order::class,"order_id");
    }
    public function meal(){
        return $this->belongsTo(Meal::class,"meal_id");
    }

    function getMealNameAttribute()
    {
        $lang = getLang();
        if($lang == "ar")
            return  $this->meal()->first()->name_ar;
        return  $this->meal()->first()->name_en;
    }
    function getMealDescriptionAttribute()
    {
        $lang = getLang();
        if($lang == "ar")
            return  $this->meal()->first()->description_ar;
        return  $this->meal()->first()->description_en;
    }
    function getMealImageAttribute()
    {
        return  $this->meal()->first()->image;
    }

}
