<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Period extends Model
{
    use Notifiable;
    use SoftDeletes;


    protected $table = 'periods';

    protected $fillable = [
        'active',
        'id','from', 'to'
    ];

    protected $hidden = [
        'updated_at','deleted_at',
    ];

    public function getFromAttribute()
    {
        return  Carbon::parse($this->attributes['from'])->isoFormat('h:mm a');
    }

    public function getToAttribute()
    {
        return  Carbon::parse($this->attributes['to'])->isoFormat('h:mm a');
    }


    

}
