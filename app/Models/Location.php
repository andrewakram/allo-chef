<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Location extends Model
{
    use Notifiable;
    use SoftDeletes;


    protected $table = 'locations';

    protected $fillable = [
        'main','lat','lng',
        'user_id','title','street','floor','appartment','region_id','city_id'
    ];
    protected $appends = [
        'region_name','city_name','delivery'
    ];

    protected $hidden = [
        'updated_at','deleted_at',
    ];


    public function getDeliveryAttribute()
    {
        if($this->region()->first())
            return $this->region()->first()->delivery;
        return Setting::first()->delivery_cost_in_egp;
    }


    public function getLatAttribute($value)
    {
        if($value)
            return (string)$value;
        return "";
    }

    public function getLngAttribute($value)
    {
        if($value)
            return (string)$value;
        return "";
    }

    public function getCreatedAtAttribute()
    {
        return Carbon::parse($this->attributes['created_at'])->format('d F Y H:i A');
    }

    public function getRegionNameAttribute()
    {
        $lang =getLang();
        if($lang=="ar"){
            if($this->region()->first())
                return $this->region()->first()->name_ar;
            return "";
        }
        if($this->region()->first())
            return $this->region()->first()->name_en;
        return "";
    }

    public function getCityNameAttribute()
    {
        $lang =getLang();
        if($lang=="ar"){
            if($this->city()->first())
                return $this->city()->first()->name_ar;
            return "";
        }
        if($this->city()->first())
            return $this->city()->first()->name_en;
        return "";
    }

    public function region(){
        return $this->belongsTo(Region::class, 'region_id');
    }
    public function city(){
        return $this->belongsTo(City::class, 'city_id');
    }

    

}
