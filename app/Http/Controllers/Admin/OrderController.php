<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Interfaces\Admin\OrderRepositoryInterface;
use App\Http\Controllers\Interfaces\Admin\WorkerRepositoryInterface;
use App\Models\Category;
use App\Models\Delegate;
use App\Models\Driver;
use App\Models\Notification;
use App\Models\Order;
use App\Models\OrderMeal;
use App\Models\OrderProduct;
use App\Models\OrderProductVariation;
use App\Models\OrderProductVariationOption;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Maatwebsite\Excel\Facades\Excel;
use Session;

class OrderController extends Controller
{

    public function __construct()
    {
    }

    protected function index()
    {
        $delegates = Delegate::orderBy('id','desc')->select('id','name','phone')->get();
        $drivers = Driver::orderBy('id','desc')->select('id','name','phone')->get();

        $orders = Order::orderBy('id','desc')
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->get();
//        dd($orders);
        return view('cp.orders.index',compact('orders','delegates','drivers'));
    }

    protected function show($order_id)
    {
        $delegates = Delegate::orderBy('id','desc')->select('id','name','phone')->get();
        $drivers = Driver::orderBy('id','desc')->select('id','name','phone')->get();

        $order = Order::whereId($order_id)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->first();
        return view('cp.orders.show',compact('order','delegates','drivers'));
    }

    protected function printOrderAll($date)
    {
        $order_ids = OrderMeal::where('order_date',$date)
            ->pluck('order_id')->toArray();
        $ordersAfter2days = Order::orderBy('id','desc')
            ->whereIn('id',$order_ids)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->get();
        return view('cp.orders.print_all',compact('ordersAfter2days'));
    }

    protected function printOrder($order_id)
    {
        $order = Order::whereId($order_id)
            ->with('user')
            ->with('period')
            ->with('location')
            ->with('orderMeals')
            ->first();
        return view('cp.orders.print',compact('order'));
    }

    protected function editOrderStatus(Request $request)
    {
        $order = Order::whereId($request->order_id)->first();
        $user = User::whereId($order->user_id)->first();

        //prepared
        if($request->status == "prepared"){
            Order::whereId($request->order_id)->update([
                "prepared" => Carbon::now()
            ]);
        }

        //on_way
        if($request->status == "on_way"){
            Order::whereId($request->order_id)->update([
                "on_way" => Carbon::now()
            ]);
            $title = 'طلبك جاي في الطريق';
            $msg = 'الو شيف بيتمنالك وجبة هنية';

            if($user && $user->token){
                Notification::send($user->platform,$user->token,"$title","$msg",$order,null,null,null);
            }
        }

        //delivered
        if($request->status == "delivered"){
            Order::whereId($request->order_id)->update([
                "delivered" => Carbon::now()
            ]);
            $title = 'تم توصيل طلبك بنجاح';
            $msg = 'الو شيف بيتمنالك وجبة هنية - شاركنا برأيك لتحسين مستوي خدمتنا';

            if($user && $user->token){
                Notification::send($user->platform,$user->token,"$title","$msg",$order,null,null,null);
            }
        }
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    protected function editOrderDelegate(Request $request)
    {
        $order = Order::whereId($request->order_id)->first();
        $user = User::whereId($order->user_id)->first();
        $delegate = Delegate::whereId($request->delegate_id)->first();

        Order::whereId($request->order_id)->update([
            "delegate_id" => $request->delegate_id
        ]);
        $title = 'تم تحديد المندوب لطلبك';
        $msg = 'المندوب: '. $delegate->name . " ( " . $delegate->phone . " ) "  . " هيوصل طلبك";

        if($user && $user->token){
            Notification::send($user->platform,$user->token,"$title","$msg",$order,null,null,null);
        }
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    protected function editOrderDriver(Request $request)
    {
        $order = Order::whereId($request->order_id)->first();
        $user = User::whereId($order->user_id)->first();
        $driver = Driver::whereId($request->driver_id)->first();

        Order::whereId($request->order_id)->update([
            "driver_id" => $request->driver_id
        ]);
        $title = 'تم تحديد السائق لطلبك';
        $msg = 'السائق: '. $driver->name . " ( " . $driver->phone . " ) " . " هيوصل طلبك";

        if($user && $user->token){
            Notification::send($user->platform,$user->token,"$title","$msg",$order,null,null,null);
        }
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

    protected function acceptOrders()
    {
        $type = "الطلبات المقبولة";
        $orderStatusArray = OrderStatus::where('accept','!=',null)
            ->where('on_way','=',null)
            ->where('finished','=',null)
            ->where('cancelled','=',null)
            ->pluck('order_id');
        $orders = Order::whereIn('id',$orderStatusArray)
            ->with('user')
            ->with('delegate')
            ->with(["order_products" => function ($query) {
                $query->with(["order_product_variations" => function ($query) {
                    $query->with('order_product_variation_options');
                }]);
            }])
            ->with("order_images")
            ->get();
        foreach($orders as $order){
            $order->order_status = OrderStatus::where('order_id',$order->id)->first();
        }
//        dd($orders);
        return view('cp.orders.index',compact('orders','type'));
    }

    protected function onwayOrders()
    {
        $type = "طلبات في الطريق";
        $orderStatusArray = OrderStatus::where('accept','!=',null)
            ->where('on_way','!=',null)
            ->where('finished','=',null)
            ->where('cancelled','=',null)
            ->pluck('order_id');
        $orders = Order::whereIn('id',$orderStatusArray)
            ->with('user')
            ->with('delegate')
            ->with(["order_products" => function ($query) {
                $query->with(["order_product_variations" => function ($query) {
                    $query->with('order_product_variation_options');
                }]);
            }])
            ->with("order_images")
            ->get();
        foreach($orders as $order){
            $order->order_status = OrderStatus::where('order_id',$order->id)->first();
        }
//        dd($orders);
        return view('cp.orders.index',compact('orders','type'));
    }

    protected function finishedOrders()
    {
        $type = "الطلبات المنتهية";
        $orderStatusArray = OrderStatus::where('accept','!=',null)
            ->where('on_way','!=',null)
            ->where('finished','!=',null)
            ->where('cancelled','=',null)
            ->pluck('order_id');
        $orders = Order::whereIn('id',$orderStatusArray)
            ->with('user')
            ->with('delegate')
            ->with(["order_products" => function ($query) {
                $query->with(["order_product_variations" => function ($query) {
                    $query->with('order_product_variation_options');
                }]);
            }])
            ->with("order_images")
            ->get();
        foreach($orders as $order){
            $order->order_status = OrderStatus::where('order_id',$order->id)->first();
        }
//        dd($orders);
        return view('cp.orders.index',compact('orders','type'));
    }

    protected function cancelledOrders()
    {
        $type = "الطلبات الملغية";
        $orderStatusArray = OrderStatus::where('cancelled','!=',null)
            ->pluck('order_id');
        $orders = Order::whereIn('id',$orderStatusArray)
            ->with('user')
            ->with('delegate')
            ->with(["order_products" => function ($query) {
                $query->with(["order_product_variations" => function ($query) {
                    $query->with('order_product_variation_options');
                }]);
            }])
            ->with("order_images")
            ->get();
        foreach($orders as $order){
            $order->order_status = OrderStatus::where('order_id',$order->id)->first();
        }
//        dd($orders);
        return view('cp.orders.index',compact('orders','type'));
    }

}
