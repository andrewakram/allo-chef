<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PaymentWay extends Model
{
//    use HasFactory;

    protected $fillable = [
        'accept',
        'active',
        'name_ar',
        'name_en',
    ];
}
