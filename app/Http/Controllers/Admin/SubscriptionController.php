<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\UserSubscription;
use Illuminate\Http\Request;
use App\Models\Album;
use DB;
use Route;
use Session;


class SubscriptionController extends Controller
{
    public function index(){
        $subscriptions = UserSubscription::orderBy('id','desc')
            ->get();
        return view('cp.subscriptions.index',compact('subscriptions'));
    }


}
