<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class AboutUs extends Model
{
    use Notifiable;


    protected $table = 'aboutus';

    protected $fillable = [
        'image',
        'id','body_ar', 'body_en','type'
    ];

    public function setImageAttribute($value)
    {
        $img_name = time().uniqid().'.'.$value->getClientOriginalExtension();
        $value->move(public_path('/uploads/about_images/'),$img_name);
        $this->attributes['image'] = $img_name ;
    }

    public function getImageAttribute($value)
    {
        if($value)
        {
            return asset('/uploads/about_images/'.$value);
        }else{
            return asset('/default.png');
        }
    }





}
