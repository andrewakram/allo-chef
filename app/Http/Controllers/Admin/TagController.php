<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Models\Tag;
use DB;
use Route;
use Session;


class TagController extends Controller
{
    public function index(){
//        $countries = Country::whereActive(1)->get();
        $cities = Tag::orderBy('id','desc')->get();
        return view('cp.tags.index',[
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
        $add            = new Tag();
        $add->name_ar   = $request->name_ar;
        $add->name_en   = $request->name_en;
        $add->active   = 1;
//        $add->code   = $country->code;
        $add->save();
        return back()->with('success','Tag added successfully');
    }



    public function edit_city(Request $request){
//        $this->validate($request,[
//            'name' => 'required',
//
//        ]);
//        $country = Country::whereId($request->country_id)->first();
        Tag::where('id', $request->city_id)
            ->update([
                'name_ar'      => $request->name_ar,
                'name_en'      => $request->name_en,
//                'code'      => $country->code,
            ]);
        return back()->with('success','Tag updated successfully');
    }
    
    public function editTagStatus(Request $request,$id)
    {
        $cat=Tag::where("id",$id)->first();
        if($cat->active == 1){
            Tag::where("id",$id)
                ->update(["active" => 0 ]);
        }else{
            Tag::where("id",$id)
                ->update(["active" => 1 ]);
        }
        return back();
    }

}
