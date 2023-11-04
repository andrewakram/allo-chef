<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class City extends Model
{
    use Notifiable;


    protected $table = 'cities';

    protected $fillable = [
        'name_ar','name_en', 'image','code'
    ];

    protected $hidden = [
        'active', 'deleted_at','created_at', 'updated_at','image'
    ];

    public function regions()
    {
        return $this->hasMany(Region::class,"city_id");
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
