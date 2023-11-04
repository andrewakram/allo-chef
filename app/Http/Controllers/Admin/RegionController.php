<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\City;
use Illuminate\Http\Request;
use App\Models\Region;
use DB;
use Route;
use Session;


class RegionController extends Controller
{
    public function index(){
        $countries = City::whereActive(1)->get();
        $cities = Region::orderBy('id','desc')->get();
        return view('cp.regions.index',[
            'cities'=>$cities,
            'countries'=>$countries,
        ]);

    }

    public function store(Request $request)
    {
//        $this->validate($request,[
//            'name' => 'required|unique:cities,name',
//
//        ]);
//        $country = City::whereId($request->country_id)->first();
        $add            = new Region();
        $add->name_ar   = $request->name_ar;
        $add->name_en   = $request->name_en;
        $add->city_id   = $request->city_id;
        $add->delivery   = $request->delivery;
        $add->active   = 1;
        $add->save();
        return back()->with('success','City added successfully');
    }



    public function edit_city(Request $request){
//        $this->validate($request,[
//            'name' => 'required',
//
//        ]);
//        $country = City::whereId($request->country_id)->first();
        Region::where('id', $request->region_id)
            ->update([
                'name_ar'      => $request->name_ar,
                'name_en'      => $request->name_en,
                'city_id'      => $request->city_id,
                'delivery'      => $request->delivery,
            ]);
        return back()->with('success','City updated successfully');
    }
    
    public function editCityStatus(Request $request,$id)
    {
        $cat=Region::where("id",$id)->first();
        if($cat->active == 1){
            Region::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Region::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
