<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class SubDepartment extends Model
{
    use Notifiable;


    protected $table = 'sub_departments';

    protected $fillable = [
        'name_ar','name_en','department_id','active'
    ];
    protected $hidden = [
        'updated_at','deleted_at',
    ];

//    public function setImageAttribute($value)
//    {
//        if($value) {
//            $img_name = time().uniqid().'.'.$value->getClientOriginalExtension();
//            $value->move(public_path('/uploads/sub_departments/'),$img_name);
//            $this->attributes['image'] = $img_name ;
//        }
//
//    }
//
//    public function getImageAttribute($value)
//    {
//        if($value)
//        {
//            return asset('/uploads/sub_departments/'.$value);
//        }else{
//            return asset('/default.png');
//        }
//    }



}
