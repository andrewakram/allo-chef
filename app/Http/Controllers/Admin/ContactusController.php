<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\City;
use App\Models\ContactUs;
use DB;
use Route;
use Session;


class ContactusController extends Controller
{
    public function index(){
        $cats = ContactUs::orderBy('id','desc')->get();
        return view('cp.contact_us.index',['cats'=>$cats]);

    }

    public function deleteContact(Request $request,$id){
        ContactUs::where('id', $id)->forcedelete();
        return back();
    }

    public function editStatus(Request $request,$id)
    {
        $cat=ContactUs::where("id",$id)->first();
        if($cat->active == 1){
            ContactUs::where("id",$id)
                ->update(["is_read" => 0 ]);
        }else{
            ContactUs::where("id",$id)
                ->update(["is_read" => 1 ]);
        }
        return back();
    }

    protected function editContactUs(Request $request)
    {
        ContactUs::whereId($request->message_id)->update([
            "notes" => $request->notes
        ]);
        session()->flash('insert_message','تمت العملية بنجاح');
        return back();
    }

}
