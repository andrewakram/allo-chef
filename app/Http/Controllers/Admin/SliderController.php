<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Shop;
use Illuminate\Http\Request;
use App\Models\City;
use App\Models\Slider;
use DB;
use Route;
use Session;


class SliderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        //dd('aa');
        $offers = Slider::orderBy('id','desc')->with('shop')->get();
        $shops = Shop::orderBy('id','desc')->get();

        return view('cp.sliders.index',[
            'offers'=>$offers,
            'shops'=>$shops,
        ]);

    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'image' => 'required',
            'shop_id' => 'required',
        ]);
        $add            = new Slider();
        $add->shop_id   = $request->shop_id;
        $add->image   = $request->image;
        $add->save();
        return back()->with('success','Data added successfully');
    }



    public function editSlider(Request $request){
        $this->validate($request,[
            //'image' => 'required',
            'shop_id' => 'required',
        ]);

        $x=Slider::where('id', $request->slider_id)->first();
        $x->shop_id = $request->shop_id;
        if($request->image)
        {
            $x->image = $request->image;

        }
        $x->save();
        return back()->with('success','Data updated successfully');
    }

    public function deleteSlider(Request $request,$id){
        Slider::where('id', $id)->delete();
        return back()->with('success','Data added successfully');
    }



}
