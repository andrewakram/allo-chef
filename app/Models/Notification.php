<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Notification extends Model
{
    use Notifiable;
    use SoftDeletes;


    protected $table = 'notifications';
    protected $fillable = ['title','body','user_id','order_id','department_id','type','image'];
//type =>>>0=>user, 1=>delegate, 2=>driver, 3=>all

    function getCreatedAtAttribute()
    {
        //return  Carbon::parse($this->attributes['created_at'])->diffForHumans();
        return Carbon::parse($this->attributes['created_at'])->format('d M yy g:i A');
    }

    public function setImageAttribute($value)
    {
        if($value) {
            $img_name = time().uniqid().'.'.$value->getClientOriginalExtension();
            $value->move(public_path('/uploads/notifications/'),$img_name);
            $this->attributes['image'] = $img_name ;
        }
    }

    public function getImageAttribute($value)
    {
        if($value)
        {
            return asset('/uploads/notifications/'.$value);
        }else{
            return asset('/default.png');
        }
    }



    public static function send($platform,$tokens, $title="hello", $msg="helo msg", $order=null,$chat=null,$wallet=null,$points=null){

        $key = 'AAAASpBqkZ8:APA91bFFOUyJqBhH_0CUtJHQru1W65SkuSEGRKzWG46uhUO7lT_PM_a07c6Ga27ONND-rzGQAEAMbfZHUlDcLcbgOZaRXXiPp9qm1H_Z-t1A5wTFgOEkZPyZytXob5aS6TafPEq7sUdD';

        if( $platform == 'android' ){
            $fields = array
            (
                "registration_ids" => (array)$tokens,
                "priority" => 10,
                'data' => [
                    'title' => $title,
                    'body' => $msg,
                    'order_id' => isset($order) ? $order->id : null,
//                    'order_details' => $order,
                    'chat' => $chat,
                    'wallet' => $wallet,
                    'points' => $points,
                    'type' => 3,
                    'icon' => 'myIcon',
                    'sound' => 'mySound'
                ],
                'vibrate' => 1,
                'sound' => 1
            );
        }else{
            $fields = array
            (
                "registration_ids" => (array)$tokens,
                "priority" => 10,
                'data' => [
                    'title' => $title,
                    'body' => $msg,
                    'order_id' => isset($order) ? $order->id : null,
//                    'order_details' => $order,
                    'chat' => $chat,
                    'wallet' => $wallet,
                    'points' => $points,
                    'type' => 3,
                    'icon' => 'myIcon',
                    'sound' => 'squek_sms'
                ],
                'notification' => [
                    'title' => $title,
                    'body' => $msg,
                    'order_id' => isset($order) ? $order->id : null,
//                    'order_details' => $order,
                    'chat' => $chat,
                    'wallet' => $wallet,
                    'points' => $points,
                    'type' => 3,
                    'icon' => 'myIcon',
                    'sound' => 'squek_sms'
                ],
                'vibrate' => 1,
                'sound' => 1
            );
        }


        $headers = array
        (
            'accept: application/json',
            'Content-Type: application/json',
            'Authorization: key=' . $key
        );

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        $result = curl_exec($ch);
//        dd($result);
        //  var_dump($result);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
        curl_close($ch);
        //dd($result);
        return $result;
    }


    public function user($user_id){
        return User::whereId($user_id)->first();
    }

    public function delegate($user_id){
        return Delegate::whereId($user_id)->first();
    }

    public function driver($user_id){
        return Driver::whereId($user_id)->first();
    }

}
