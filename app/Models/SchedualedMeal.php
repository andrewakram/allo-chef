<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class SchedualedMeal extends Model
{
    use Notifiable;


    protected $table = 'schedualed_meals';

    protected $fillable = [
        'id','meal_id', 'publish_date','price_before', 'price_after',
        'lable_ar', 'lable_en'
        ,'points'
    ];

    public function meal()
    {
        return $this->belongsTo(Meal::class,"meal_id");
    }


}
