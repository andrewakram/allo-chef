<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Interfaces\Admin\CategoryRepositoryInterface;
use App\Models\Admin;
use App\Models\CarLevel;
use App\Models\Driver;
use App\Models\Delegate;
use App\Models\DriverCarLevel;
use App\Models\Notification;
use App\Models\Order;
use App\Models\OrderStatus;
use App\Models\Trip;
use App\Models\User;
use App\Models\UserSubscription;
use App\Models\UserWallet;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;

class DriverController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $users = Driver::orderBy('id','desc')
            ->get();

        return view('cp.drivers.index',['users'=>$users]);

    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'id_num' => 'sometimes',
            'email' => 'unique:drivers,email',
            'phone' => 'unique:drivers,phone',
        ]);
        $add            = new Driver();
        $add->name   = $request->name;
        $add->email   = $request->email;
        $add->phone   = $request->phone;
        $add->id_num   = $request->id_num;
        $add->save();
        return back()->with('success','Tag added successfully');
    }



    public function editDriver(Request $request){
        $this->validate($request,[
            'name' => 'required',
            'id_num' => 'sometimes',
            'email' => 'unique:drivers,email,' . $request->user_id,
            'phone' => 'unique:drivers,phone,' . $request->user_id,
        ]);
        Driver::where('id', $request->user_id)
            ->update([
                'name'      => $request->name,
                'email'      => $request->email,
                'phone'      => $request->phone,
                'id_num'      => $request->id_num,
            ]);
        return back()->with('success','Tag updated successfully');
    }

    public function editDriverStatus(Request $request,$id)
    {
        $cat=Driver::where("id",$id)->first();
        if($cat->suspend == 1){
            Driver::where("id",$id)
                ->update(["suspend" => 0 ]);
        }else{
            Driver::where("id",$id)
                ->update(["suspend" => 1 ]);
        }
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    public function driverOrders(Request $request,$driver_id)
    {
        $orders = Order::orderBy('id','desc')
            ->where('driver_id',$driver_id)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->get();
        return view('cp.orders.index',compact('orders'));
    }


}
