<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Models\Copon;
use DB;
use Route;
use Session;


class CoponController extends Controller
{
    public function index(){
//        $countries = Country::whereActive(1)->get();
        $cities = Copon::orderBy('id','desc')->get();
        return view('cp.copons.index',[
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
        $add            = new Copon();
        $add->min_order   = $request->min_order;
        $add->max_order   = $request->max_order;
        $add->description_ar   = $request->description_ar;
        $add->description_en   = $request->description_en;
        $add->code   = $request->code;
        $add->discount   = $request->discount;
        $add->expire_at   = $request->expire_at;
        $add->save();
        return back()->with('success','Copon added successfully');
    }



    public function edit_city(Request $request){
//        $this->validate($request,[
//            'name' => 'required',
//
//        ]);
//        $country = Country::whereId($request->country_id)->first();
        Copon::where('id', $request->city_id)
            ->update([
                'min_order'      => $request->min_order,
                'max_order'      => $request->max_order,
                'description_ar'      => $request->description_ar,
                'description_en'      => $request->description_en,
                'code'      => $request->code,
                'discount'      => $request->discount,
                'expire_at'      => $request->expire_at,
            ]);
        return back()->with('success','Copon updated successfully');
    }
    
    public function editCoponStatus(Request $request,$id)
    {
        $cat=Copon::where("id",$id)->first();
        if($cat->active == 1){
            Copon::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Copon::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
