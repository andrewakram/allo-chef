<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class MealRate extends Model
{
    use Notifiable;


    protected $table = 'meal_rates';

    protected $fillable = [
        'id','rate','user_id', 'meal_id'
    ];

//    protected $hidden = ['meal_id'];



}
