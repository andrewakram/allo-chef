<?php

namespace App\Models;

use App\Http\Controllers\Admin\OrderController;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Order extends Model
{
    use Notifiable;
    //use SoftDeletes;
//payment_type >>> 1=>package, 2=>points, 3=>online

    protected $table = 'orders';

    protected $fillable = [
        'payment_type',
        'received','on_way','delivered',
        'order_number','order_date','user_id','period_id','location_id',
        'total_before','total_after','rate','notes','copon_id',
        'discount','total_delivery',
        'payment_status',
        'visa_value',
        'order_cash',
        'order_visa',
        'order_points',
        'order_package',
        'driver_id',
        'delegate_id',
        'prepared',
    ];

    protected $hidden = [
        'active', 'deleted_at', 'updated_at','user_id'
    ];

    public function orderMeals(){
        return $this->hasMany(OrderMeal::class,"order_id");
    }

    public function user(){
        return $this->belongsTo(User::class,"user_id");
    }

    public function period(){
        return $this->belongsTo(Period::class,"period_id");
    }

    public function location(){
        return $this->belongsTo(Location::class,"location_id");
    }

    public function delegate(){
        return $this->belongsTo(Delegate::class,"delegate_id");
    }

    public function driver(){
        return $this->belongsTo(Driver::class,"driver_id");
    }

    function getCreatedAtAttribute()
    {
//        return  Carbon::parse($this->attributes['created_at'])->diffForHumans();
        return  Carbon::parse($this->attributes['created_at']);
    }



}
