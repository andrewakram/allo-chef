<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Models\Package;
use DB;
use Route;
use Session;


class PackageController extends Controller
{
    public function index(){
//        $countries = Country::whereActive(1)->get();
        $cities = Package::orderBy('id','desc')->get();
        return view('cp.packages.index',[
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
        $add            = new Package();
        $add->name_ar   = $request->name_ar;
        $add->name_en   = $request->name_en;
        $add->days   = $request->days;
        $add->points   = $request->points;
        $add->price   = $request->price;
//        $add->active   = 1;
//        $add->code   = $country->code;
        $add->save();
        return back()->with('success','Package added successfully');
    }



    public function edit_city(Request $request){
//        $this->validate($request,[
//            'name' => 'required',
//
//        ]);
//        $country = Country::whereId($request->country_id)->first();
        Package::where('id', $request->city_id)
            ->update([
                'name_ar'      => $request->name_ar,
                'name_en'      => $request->name_en,
                'days'      => $request->days,
                'points'      => $request->points,
                'price'      => $request->price,
//                'code'      => $country->code,
            ]);
        return back()->with('success','Package updated successfully');
    }
    
    public function editPackageStatus(Request $request,$id)
    {
        $cat=Package::where("id",$id)->first();
        if($cat->active == 1){
            Package::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Package::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
