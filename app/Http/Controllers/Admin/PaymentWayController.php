<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Models\PaymentWay;
use DB;
use Route;
use Session;


class PaymentWayController extends Controller
{
    public function index(){
//        $countries = Country::whereActive(1)->get();
        $cities = PaymentWay::orderBy('id','desc')->where('accept',1)->get();
        return view('cp.payment_ways.index',[
            'cities'=>$cities,
//            'countries'=>$countries,
        ]);

    }

    public function store(Request $request)
    {
//        $this->validate($request,[
//            'name' => 'required|unique:cities,name',
//
//        ]);
//        $country = Country::whereId($request->country_id)->first();
        $add            = new PaymentWay();
        $add->name_ar   = $request->name_ar;
        $add->name_en   = $request->name_en;
        $add->active   = 1;
//        $add->code   = $country->code;
        $add->save();
        return back()->with('success','PaymentWay added successfully');
    }



    public function editPaymentWay(Request $request){
//        $this->validate($request,[
//            'name' => 'required',
//
//        ]);
//        $country = Country::whereId($request->country_id)->first();
        PaymentWay::where('id', $request->city_id)
            ->update([
                'name_ar'      => $request->name_ar,
                'name_en'      => $request->name_en,
//                'code'      => $country->code,
            ]);
        return back()->with('success','PaymentWay updated successfully');
    }
    
    public function editPaymentWayStatus(Request $request,$id)
    {
        $cat=PaymentWay::where("id",$id)->first();
        if($cat->active == 1){
            PaymentWay::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            PaymentWay::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
