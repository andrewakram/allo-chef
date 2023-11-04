<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class MealIngridient extends Model
{
    use Notifiable;


    protected $table = 'meal_ingredients';

    protected $fillable = [
        'id','name_ar','name_en', 'meal_id'
    ];





}
