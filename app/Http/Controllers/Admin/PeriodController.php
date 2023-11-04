<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Models\Period;
use DB;
use Route;
use Session;


class PeriodController extends Controller
{
    public function index(){
//        $countries = Country::whereActive(1)->get();
        $cities = Period::orderBy('id','desc')->get();
        return view('cp.periods.index',[
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
        $add            = new Period();
        $add->from   = $request->from;
        $add->to   = $request->to;
        $add->save();
        return back()->with('success','Period added successfully');
    }



    public function edit_city(Request $request){
//        $this->validate($request,[
//            'name' => 'required',
//
//        ]);
//        $country = Country::whereId($request->country_id)->first();
        Period::where('id', $request->city_id)
            ->update([
                'from'      => $request->from,
                'to'      => $request->to,
            ]);
        return back()->with('success','Period updated successfully');
    }
    
    public function editPeriodStatus(Request $request,$id)
    {
        $cat=Period::where("id",$id)->first();
        if($cat->active == 1){
            Period::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Period::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
