<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Meal extends Model
{
    use Notifiable;


    protected $table = 'meals';

    protected $fillable = [
        'id','name_ar', 'name_en','description_ar', 'description_en',
        'method_ar', 'method_en','grams','price','persons','points',
        'free_delivery','rate','meal_no','rate'
    ];

    protected $appends = ['lable','price_before','price_after','image',
        'publish_date'
    ];


    protected $hidden = ['price'];

    public function details(){
        $date = isset(request()->date) ? request()->date : Carbon::now()->addDays(2)->format('Y-m-d');
        return $this->hasMany(SchedualedMeal::class,'meal_id')
            ->whereDate('publish_date', $date);
    }
    public function image(){
        return $this->hasone(MealImage::class,'meal_id');
    }
    public function images(){
        return $this->hasMany(MealImage::class,'meal_id');
    }

    public function meal_ingredients(){
        return $this->hasMany(MealIngredient::class,'meal_id');
    }

    public function ingredients(){
        return $this->hasMany(MealIngredient::class,'meal_id')
            ->select('id','name_'.getLang().' as name','meal_id');
    }
    public function userLikes(){
        return $this->hasMany(UserLike::class,'meal_id');
    }
    public function getLableAttribute(){
        if($this->details()->first()){
            if(getLang() == 'ar')
                return $this->details()->first()->lable_ar;
            return $this->details()->first()->lable_en;
        }return "";
    }
    public function getPriceBeforeAttribute(){

        if(!$this->details()->first())
            return $this->attributes['price'];
        return $this->details()->first()->price_before;
    }
    public function getPriceAfterAttribute(){
        $setting= Setting::first();
        $meal_price_percentage = $setting->meal_price_percentage;
        $price = $this->price + ($this->price * ($meal_price_percentage/100) );
//        if(!$this->details()->first())
        if(!isset(request()->date))
            return (string)$price;
        return $this->details()->first()->price_after;
    }
    public function getPublishDateAttribute(){
        if(!$this->details()->first())
            return (string)Carbon::now()->addDays(2)->format('Y-m-d');
        return $this->details()->first()->publish_date;
    }
    public function getImageAttribute(){
        return $this->image()->first()->image;
    }

    public function getFreeDeliveryAttribute(){
        return (int)$this->attributes['free_delivery'];
    }
    public function getImagesCountAttribute(){
        return (int)$this->attributes['images_count'];
    }
    public function getUserLilesCountAttribute(){
        return (int)$this->attributes['user_liles_count'];
    }
    public function getPointsAttribute(){
        return (int)$this->attributes['points'];
    }
    public function getUrlAttribute(){
        return (string)$this->attributes['url'];
    }

//    public function getRateAttribute(){
//        if(isset($this->rate))
//            return number_format($this->rate, 1, '.', '');
//        return 0;
//    }
}
