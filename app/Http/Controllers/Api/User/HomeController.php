<?php

namespace App\Http\Controllers\Api\User;


use App\Http\Controllers\Interfaces\User\HomeRepositoryInterface;
use App\Models\Admin;
use App\Models\Order;
use App\Models\UserSubscription;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    protected $homeRepository;

    public function __construct(HomeRepositoryInterface $homeRepository)
    {
        $this->homeRepository = $homeRepository;
    }

    public function getMeals(Request $request)
    {
        $user = checkJWT($request->header('jwt'));
        if($user)
            $results = $this->homeRepository->getMeals($user->id,$request,$request->header('lang'));
        else
            $results = $this->homeRepository->getMeals(null,$request,$request->header('lang'));

        return response()->json(msgdata($request, success(), 'success', $results));
        //return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function getMealDetails(Request $request)
    {
        $user = checkJWT($request->header('jwt'));
        if($user)
            $results = $this->homeRepository->getMealDetails($user->id,$request,$request->header('lang'));
        else
            $results = $this->homeRepository->getMealDetails(null,$request,$request->header('lang'));

        return response()->json(msgdata($request, success(), 'success', $results));
        //return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function searchMeals(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'serch_key' => 'required'
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);


        $user = checkJWT($request->header('jwt'));
        if($user)
            $results = $this->homeRepository->searchMeals($user->id,$request,$request->header('lang'));
        else
            $results = $this->homeRepository->searchMeals(null,$request,$request->header('lang'));

        return response()->json(msgdata($request, success(), 'success', $results));
        //return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function likeMeal(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'meal_id' => 'required|exists:meals,id'
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);

        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository->likeMeal($user->id,$request,$request->header('lang'));
            if($results)
                return response()->json(msg($request, success(), 'meal_liked'));
            return response()->json(msg($request, success(), 'meal_disliked'));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function getLikedMeals(Request $request)
    {
        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository->getLikedMeals($user->id,$request,$request->header('lang'));

            return response()->json(msgdata($request, success(), 'success', $results));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function searchLikedMeals(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'serch_key' => 'required'
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);

        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository->searchLikedMeals($user->id,$request,$request->header('lang'));

            return response()->json(msgdata($request, success(), 'success', $results));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function getPackages(Request $request)
    {
        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository->getPackages($user->id,$request,$request->header('lang'));

            return response()->json(msgdata($request, success(), 'success', $results));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function makeSubscription(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'package_id' => 'required|exists:packages,id'
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);

        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository->makeSubscription($user->id,$request,$request->header('lang'));

            return response()->json(msgdata($request, success(), 'success',$results));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function getPeriods(Request $request)
    {

        $results = $this->homeRepository->getPeriods($request,$request->header('lang'));

        return response()->json(msgdata($request, success(), 'success',$results));

    }

    public function checkCopon(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'code' => 'required',
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);

        $results = $this->homeRepository->checkCopon($request,$request->header('lang'));
        if($results)
            return response()->json(msgdata($request, success(), 'success',$results));
        return response()->json(msg($request, failed(), 'invalid_code'));
    }

    public function makeOrder(Request $request)
    {
        $validator = Validator::make($request->all(), [
//            'order_date' => 'required',
            'location_id' => 'required|exists:locations,id',
            'period_id' => 'required|exists:periods,id',
            'meals' => 'required'
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);

        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository
                ->makeOrder($user->id,$user->subscription_expire,$user->wallet,$user->points,$request,$request->header('lang'));

            if($results){
                if(is_string($results) && $results == "subscription_expire")
                    return response()->json(msg($request, failed(), 'subscription_expire'));

                if(is_string($results) && $results == "please_subscribe")
                    return response()->json(msg($request, failed(), 'please_subscribe'));

                if(is_string($results) && $results == "order_payed_cash")
                    return response()->json(msgdata($request, success(), 'order_payed_cash',$user));

                return response()->json(msgdata($request, success(), 'success',$results));
            }else{
                return response()->json(msg($request, failed(), 'low_cost'));

            }

        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function myOrders(Request $request)
    {
        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository
                ->myOrders($user->id,$request,$request->header('lang'));

            return response()->json(msgdata($request, success(), 'success',$results));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function getOrderDetails(Request $request){
        $user = checkJWT($request->header('jwt'));

        $validator = Validator::make($request->all(), [
            'order_id' => 'required|exists:orders,id,user_id,'.$user->id,
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);

        if($user){
            $results = $this->homeRepository
                ->getOrderDetails($user->id,$request,$request->header('lang'));

            return response()->json(msgdata($request, success(), 'success',$results));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));
    }

    public function getVipMeals(Request $request)
    {
        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository
                ->getVipMeals($user->id,$request,$request->header('lang'));

            return response()->json(msgdata($request, success(), 'success',$results));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

    public function rateMeal(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'meal_id' => 'required|exists:meals,id',
            'rate' => 'required|',
        ]);

        if($validator->fails())
            return response()->json(['status'=>failed(),'msg'=>$validator->messages()->first()]);


        $user = checkJWT($request->header('jwt'));
        if($user){
            $results = $this->homeRepository
                ->rateMeal($user->id,$request,$request->header('lang'));

            return response()->json(msg($request, success(), 'success'));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));

    }

}
