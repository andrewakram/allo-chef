<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class UserLocation extends Model
{
    use Notifiable;
    use SoftDeletes;


    protected $table = 'user_locations';

    protected $fillable = [
        'user_id','lat','lng','description','city_name'
    ];

    protected $hidden = [
        'updated_at','deleted_at',
    ];

    public function getCreatedAtAttribute()
    {
        return Carbon::parse($this->attributes['created_at'])->format('d F Y H:i A');
    }

    

}
