<?php

namespace App\Models;

//use Illuminate\Contracts\Auth\Authenticatable;
//use Illuminate\Auth\Authenticatable as AuthenticableTrait;
//use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Hash;

class Admin extends Authenticatable
{
    use HasRoles;

    public $guard_name = 'admin';

    protected $fillable = [
        'active', 'name', 'email', 'phone', 'password', 'image', 'app_percent', 'fee_percent',
        'user_max_value', 'delegate_max_valuer', 'driver_max_value'
    ];

    protected $hidden = [
        'password'
    ];

    public function setImageAttribute($value)
    {
        if (is_file($value)) {
            $img_name = time() . uniqid() . '.' . $value->getClientOriginalExtension();
            $value->move(public_path('/uploads/admin/images/'), $img_name);
            $this->attributes['image'] = $img_name;
        }
    }

    public function getImageAttribute($value)
    {
        if ($value) {
            return asset('/uploads/admin/images/' . $value);
        } else {
            return asset('/default.png');
        }
    }

    public function setPasswordAttribute($value)
    {
        if (isset($value))
            $this->attributes['password'] = Hash::make($value);
        else
            $this->attributes['password'] = Hash::make('123456');
    }
}
