<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Region extends Model
{
    use Notifiable;


    protected $table = 'regions';

    protected $fillable = [
        'name_ar','name_en', 'image','city_id','code'
    ];

    protected $hidden = [
        'active', 'deleted_at','created_at', 'updated_at','city_id'
    ];

    public function city()
    {
        return $this->belongsTo(City::class,"city_id");
    }

    public function setImageAttribute($value)
    {
        if($value) {
            $img_name = time().uniqid().'.'.$value->getClientOriginalExtension();
            $value->move(public_path('/uploads/cities/'),$img_name);
            $this->attributes['image'] = $img_name ;
        }

    }

    public function getImageAttribute($value)
    {
        if($value)
        {
            return asset('/uploads/cities/'.$value);
        }else{
            return asset('/default.png');
        }
    }



}
