<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;

class GoogleShop extends Authenticatable
{
    use Notifiable;
    use SoftDeletes;


    protected $table = 'google_shops';

    protected $fillable = [
        'order_id','name','cover_image','category_id','shop_id',
        'image','lat','lng','address','city_name','description'
    ];

    protected $hidden = [
        'active', 'deleted_at','created_at', 'updated_at'
    ];







    public function setImageAttribute($value)
    {
//        if($value) {
//            $img_name = time().uniqid().'.'.$value->getClientOriginalExtension();
//            $value->move(public_path('/uploads/shops/images/'),$img_name);
//            $this->attributes['image'] = $img_name ;
//        }

    }

    public function getImageAttribute($value)
    {
        if($value)
        {
            return $value;
        }else{
            return asset('/google_default.jpg');
        }
    }

    public function setCoverImageAttribute($value)
    {
        if($value)
        {
            return $value;
        }else{
            return asset('/google_default.jpg');
        }

    }

    public function getCoverImageAttribute($value)
    {
//        if($value)
//        {
//            return asset('/uploads/shops/coverimages/'.$value);
//        }else{
//            return asset('/default.png');
//        }
    }

    public function getDescriptionAttribute($value)
    {
        if($value)
        {
            return $value;
        }else{
            return "";
        }
    }

    public function category()
    {
        return $this->belongsTo(Category::class,"category_id");
    }


}
