<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
//use Laravel\Passport\HasApiTokens;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Traits\HasRoles;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Str;

class UserSubscription extends Model
{
    use  Notifiable;
    //use HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     *
     */
    protected $table = 'user_subscriptions';
    protected $fillable = [
        'user_id','packge_id','expire_at','price', 'points','days','name_ar','name_en',
        'visa_value',
        'payment_status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token','email_verified_at','created_at','updated_at','deleted_at',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }


}
