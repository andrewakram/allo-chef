<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class UserWallet extends Model
{
//    use Notifiable;
//    use SoftDeletes;


    protected $table = 'user_wallets';

    protected $fillable = [
        'user_id',
        'order_id',
        'subscription_id',
        'wallet_old_value','wallet_new_value',
        'points_old_value','points_new_value',
        'description_ar','description_en'
    ];

    protected $hidden = [
        'updated_at','deleted_at',
    ];

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }

    public function getUserIdAttribute($value){
        if($value)
            return (int)$value;
    }

    public function getOrderIdAttribute($value){
        if($value)
            return (int)$value;
    }

    public function getSubscriptionIdAttribute($value){
        if($value)
            return (int)$value;
    }
    

}
