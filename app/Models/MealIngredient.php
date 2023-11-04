<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class MealIngredient extends Model
{
    use Notifiable;


    protected $table = 'meal_ingredients';

    protected $fillable = [
        'id','name_ar','name_en', 'meal_id'
    ];

    protected $hidden = ['meal_id'];



}
