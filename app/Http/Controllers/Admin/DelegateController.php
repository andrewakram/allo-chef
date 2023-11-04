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

class DelegateController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $users = Delegate::orderBy('id','desc')
            ->get();

        return view('cp.delegates.index',['users'=>$users]);

    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'id_num' => 'sometimes',
            'email' => 'unique:delegates,email',
            'phone' => 'unique:delegates,phone',
        ]);
        $add            = new Delegate();
        $add->name   = $request->name;
        $add->email   = $request->email;
        $add->phone   = $request->phone;
        $add->id_num   = $request->id_num;
        $add->save();
        return back()->with('success','Tag added successfully');
    }



    public function editDelegate(Request $request){
        $this->validate($request,[
            'name' => 'required',
            'id_num' => 'sometimes',
            'email' => 'unique:delegates,email,' . $request->user_id,
            'phone' => 'unique:delegates,phone,' . $request->user_id,
        ]);
        Delegate::where('id', $request->user_id)
            ->update([
                'name'      => $request->name,
                'email'      => $request->email,
                'phone'      => $request->phone,
                'id_num'      => $request->id_num,
            ]);
        return back()->with('success','Tag updated successfully');
    }

    public function editDelegateStatus(Request $request,$id)
    {
        $cat=Delegate::where("id",$id)->first();
        if($cat->suspend == 1){
            Delegate::where("id",$id)
                ->update(["suspend" => 0 ]);
        }else{
            Delegate::where("id",$id)
                ->update(["suspend" => 1 ]);
        }
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    public function delegateOrders(Request $request,$delegate_id)
    {
        $orders = Order::orderBy('id','desc')
            ->where('delegate_id',$delegate_id)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->get();
        return view('cp.orders.index',compact('orders'));
    }


}
