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

class User2Controller extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $users = User::orderBy('id','desc')
            ->get();

        return view('cp.users.index',['users'=>$users]);

    }

    public function indexAdmin(){
        $permissions = Permission::get();
        $users = Admin::orderBy('id','desc')
            ->where('id','>',1)
            ->with('permissions')
            ->get();

        return view('cp.admins.index',[
            'users' => $users,
            'permissions' =>$permissions,
        ]);
    }

    public function createAdmin(Request $request){
        //dd($request->permissions);
        $user = Admin::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => $request->password,
            'jwt' => uniqid(),
            'phone' => $request->phone,
            'active' => 1,
            'token' => uniqid(),
            'image' => $request->image,
        ]);
        $user->givePermissionTo($request->permissions);
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    public function editAdmin(Request $request){
        $admin = Admin::whereId($request->model_id)->first();
        $admin->update([
            'name' => $request->name,
            'email' => $request->email,
            'password' => isset($request->password) ? $request->password : '123456',
            'phone' => $request->phone,
        ]);
        if(isset($request->image))
            $admin->update([ 'image' => $request->image ]);
        $admin->syncPermissions($request->permissions);
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    public function editAdminStatus(Request $request,$id)
    {
        $cat=Admin::where("id",$id)->first();
        if($cat->active == 1){
            Admin::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Admin::where("id",$id)
                ->update(["active" => 1 ]);
        }
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    public function deleteAdmin(Request $request,$id)
    {

        Admin::destroy($id);

        session()->flash('insert_message', 'تمت العملية بنجاح');
        return back()->with('success', 'Record deleted successfully');
    }

    public function editClientStatus(Request $request,$id)
    {
        $cat=User::where("id",$id)->first();
        if($cat->suspend == 1){
            User::where("id",$id)
                ->update(["suspend" => 0 ]);
        }else{
            User::where("id",$id)
                ->update(["suspend" => 1 ]);
        }
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    public function userOrders(Request $request,$user_id)
    {
        $delegates = Delegate::orderBy('id','desc')->select('id','name','phone')->get();
        $drivers = Driver::orderBy('id','desc')->select('id','name','phone')->get();

        $orders = Order::orderBy('id','desc')
            ->where('user_id',$user_id)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->get();
        return view('cp.orders.index',compact('orders','delegates','drivers'));
    }

    public function userSubscriptions(Request $request,$user_id)
    {
        $user = User::whereId($user_id)->first();
        $subscriptions = UserSubscription::orderBy('id','desc')
            ->where('user_id',$user_id)
            ->get();
        return view('cp.users.subscriptions',compact('subscriptions','user'));
    }

    public function wallets($user_id){
        $user = User::whereId($user_id)->first();
        $results = UserWallet::orderBy('id','desc')->where('user_id',$user_id)->get();
        return view('cp.users.wallets',compact('results','user'));
    }

    public function editSubscriptionExpire(Request $request)
    {
        $user = User::whereId($request->user_id)->first();
        $user->update([
            "subscription_expire" => $request->subscription_expire
        ]);
        UserWallet::create([
            'user_id' => $request->user_id,
            'order_id' => null,
            'subscription_id' => null,
            'wallet_old_value' => $user->wallet,
            'wallet_new_value' => $user->wallet,
            'points_old_value' => $user->points,
            'points_new_value' => $user->points,
            'description_ar' => "تعديل تاريخ انتهاء الاشتراك من مدير النظام: " . $request->subscription_expire ,
            'description_en' => "Admin updated the expiration date of subscription: " . $request->subscription_expire
        ]);
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }


}
