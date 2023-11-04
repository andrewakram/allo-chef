<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Package extends Model
{
    use Notifiable;
    use SoftDeletes;


    protected $table = 'packages';

    protected $fillable = [
        'active',
        'price', 'points','days','name_ar','name_en'
    ];

    protected $hidden = [
        'updated_at','deleted_at',
    ];



    

}
