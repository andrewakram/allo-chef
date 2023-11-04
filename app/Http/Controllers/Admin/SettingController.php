<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Interfaces\Admin\CategoryRepositoryInterface;
use App\Models\AboutUs;
use App\Models\Admin;
use App\Models\Offer;
use App\Models\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SettingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $data = Setting::first();

        return view('cp.settings.index',[
            'data'=>$data
        ]);

    }


    public function edit_settings(Request $request){

        Setting::whereId(1)->update([
            'meal_price_percentage' => $request->meal_price_percentage,
            'point_equality_in_egp' => $request->point_equality_in_egp,
        ]);
        session()->flash('insert_message','تمت العملية بنجاح');
        return back()->with('success','Terms updated successfully');
    }



}
