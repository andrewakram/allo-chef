<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class MealImage extends Model
{
    use Notifiable;


    protected $table = 'meal_images';

    protected $fillable = [
        'id','image', 'meal_id'
    ];

    public function setImageAttribute($value)
    {
        $img_name = time().uniqid().'.'.$value->getClientOriginalExtension();
        $value->move(public_path('/uploads/meal_images/'),$img_name);
        $this->attributes['image'] = $img_name ;
    }

    public function getImageAttribute($value)
    {
        if($value)
        {
            return asset('/uploads/meal_images/'.$value);
        }else{
            return asset('/default.png');
        }
    }




}
