<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Interfaces\User\AuthRepositoryInterface;
use App\Models\User;
use App\Models\UserSubscription;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    protected $authRepository;

    public function __construct(AuthRepositoryInterface $authRepository)
    {
        $this->authRepository = $authRepository;
    }

    public function checkSocial(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'sometimes|',
            'phone' => 'sometimes|numeric|unique:users',
//            'password' => 'required|min:6',
            'gender' => 'sometimes|',
            'token' => 'sometimes',
            'email' => 'sometimes|unique:users',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }
        //provider_id
        //objective
        if ($request->has('provider_id')) {
            $user = User::where('provider_id', $request->provider_id)
                ->where('objective', $request->objective)->first();
            if ($user) {
                return response()->json(msgdata($request, success(), 'logged_in', $user));
            }else{
                global $provider_id;//social_id
                global $objective;//social_type
                $provider_id = null;
                $objective = null;
                if ($request->has('provider_id')) {
                    $provider_id = $request->provider_id;
                }
                if ($request->has('objective')) {
                    $objective = $request->objective;
                }
                $array = array(
                    'jwt' => generateJWT(),
                    'name' => $request->name,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'password' => $request->password,
                    'token' => $request->token,
                    'active' => 1,
                    'gender' => $request->gender,
                    'provider_id' => $request->provider_id,
                    'objective' => $request->objective,
//            'region_id' => null,
//            'city_id' => null,
                );

                if($user = User::create($array))
                {
                    if($request->image)
                    {
                        $user->image = $request->image;
                    }

//                    $this->sendSMS('user', 'activate', $user->phone);
                    $user->save();
                }
                return response()->json(msgdata($request, success(), 'logged_in', $user));

            }
        }
        return response()->json(msg($request, failed(), 'user_not_found'));
    }

    public function phoneCheck(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        if ($this->authRepository->checkIfEmailExist($request->phone)) {
            return response()->json(msg($request, success(), 'email_checked'));
        }
        return response()->json(msg($request, failed(), 'email_not_exist'));

    }

    public function register(Request $request)
    {
//        $validator = Validator::make($request->all(), [
//            'name' => 'required',
//            'phone' => 'required|numeric',
//            'password' => 'required|min:6',
//            'gender' => 'required',
//            //'token' => 'required',
//            'email' => 'required',
//        ]);
//
//        if ($validator->fails()) {
//            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
//        }
        $validator = Validator::make($request->all(), [
            'name' => '',
            'phone' => 'numeric|unique:users',
            'password' => 'required|min:6',
            'gender' => '',
            //'token' => 'required',
            'email' => 'unique:users',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

//        $email = $request->email;
//
//        if($this->authRepository->checkIfEmailExist($email))
//        {
//            return response()->json(msg($request, failed(), 'email_exist'));
//        }

        if ($this->authRepository->checkIfPhoneExist($request->phone)) {
            return response()->json(msg($request, failed(), 'phone_exist'));
        }

        $user = $this->authRepository->create($request);

        if ($user) {
            //$user = $this->authRepository->userData($user);
            return response()->json(msgdata($request, success(), 'register_success',$user));
            //return response()->json(msg($request, success(), 'register_success'));
        }
    }

    public function codeSend(Request $request)
    {
        $validator = Validator::make($request->all(), [
//            'role' => 'required|in:user,company',
//            'type' => 'required|in:activate,reset',
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 'error', 'msg' => $validator->messages()->first()]);
        }
        if (
            $data = $this->authRepository->checkIfPhoneExist($request->phone)
//                ||
//            $data = $this->authRepository->checkIfEmailExist($request->phone)
        ) {
            $this->authRepository->sendSMS('user', "reset", "$request->phone",$data->name,$data->phone);

            return response()->json(msg($request, success(), 'code_sent'));
        }

        return response()->json(msg($request, failed(), 'phone_not_exist'));
    }

    public function codeCheck(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
            'code' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        if(is_numeric($request->phone)){
            $user = User::where('phone',$request->phone)->first();
        }else{
            $user = User::where('email',$request->phone)->first();
        }

        if($user){
            $check = $this->authRepository->codeCheck('user', $user->phone, $request->code);
            if ($check) {
                if (Carbon::now()->format('Y-m-d H') > Carbon::parse($check->expire_at)->format('Y-m-d H')) {
                    return response()->json(msg($request, failed(), 'code_expire'));
                } else {
                    $user = $this->authRepository->checkIfPhoneExist($check->phone);
                    if ($check->type == 'activate') {
                        $this->authRepository->activeUser($check->phone);
                        return response()->json(msgdata($request, success(), 'activated', $user));
                    } else {
                        return response()->json(msgdata($request, success(), 'activated', $user));
                    }
                }
            } else {
                return response()->json(msg($request, failed(), 'invalid_code'));
            }
        }else
            return response()->json(msg($request, failed(), 'user_not_found'));

    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required|numeric',
            'password' => 'required',
            'token' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        $user = $this->authRepository->checkIfPhoneExist($request->phone);
        if ($user) {
            if (Auth::attempt([
                'phone' => $request->phone,
                'password' => $request->password,
                'suspend' => 0
            ])) {
                if ($user->active == 0) {
                    //$this->authRepository->sendSMS("user","activate", "$request->phone");
                    return response()->json(msg($request, not_active(), 'not_active'));
                }
                $user->token = $request->token;
                $user->jwt = generateJWT();
                $user->platform = $request->header('platform') ? $request->header('platform') : 'android';
                $user->lang = request()->header('lang');
                $user->save();
                $subscription_name = UserSubscription::orderBy('id','desc')->where('user_id',$user->id)
                    ->select('name_'.getLang().' as subscription_name')->first();
                $user->subscription_name = isset($subscription_name) ? $subscription_name->subscription_name : "";
                return response()->json(msgdata($request, success(), 'logged_in', $user));
            }
            else return response()->json(msg($request, failed(), 'invalid_data'));
        } else return response()->json(msg($request, failed(), 'invalid_data'));
    }

    public function forgetPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        $user = $this->authRepository->checkId($request->user_id);
        if ($user) {
            $user->password = Hash::make($request->password);
            $user->save();
            return response()->json(msg($request, success(), 'password_changed'));
        }
        return response()->json(msg($request, failed(), 'invalid_data'));
    }

    public function updateProfile(Request $request)
    {
        if ($d = checkJWT($request->header('jwt'))) {

            /////
            $user = $this->authRepository->editeProfile($d->id, $request, $request->header('lang'));
            if ($user) {
                return response()->json(msgdata($request, success(), 'success', $user));
            }
            /////
            /*if($request->email){
                if($this->authRepository->checkIfEmailExist2($request->email,$d->id))
                {
                    return response()->json(msg($request, failed(), 'email_exist'));
                }else{
                    $this->authRepository->updateEmail($d->id,$d->is_captin,$request,$request->header('lang'));
                }
            }*/
            /////
            /*if($request->phone){
                if($this->authRepository->checkIfPhoneExist2($request->phone,$d->id))
                {
                    return response()->json(msg($request, failed(), 'phone_exist'));
                }else{
                    $this->authRepository->updatePhone($d->id,$d->is_captin,$request,$request->header('lang'));
                }
            }*/
            $user = $this->authRepository->userData($request->header('jwt'));
            return response()->json(msgdata($request, success(), 'success', $user));
        } else return response()->json(msg($request, failed(), 'invalid_data'));

    }

    public function addUserLocation(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'street' => 'required',
            'floor' => 'required',
            'appartment' => '',
            'region_id' => 'required',
            'city_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        if ($user = checkJWT($request->header('jwt'))) {
            $data = $this->authRepository
                ->addUserLocation($user->id,$request, $request->header('lang'));

            return response()->json(msg($request, success(), 'success'));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));
    }

    public function mainLocation(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'location_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        if ($user = checkJWT($request->header('jwt'))) {
            $data = $this->authRepository
                ->mainLocation($user->id,$request, $request->header('lang'));
            if($data)
                return response()->json(msg($request, success(), 'success'));
            return response()->json(msg($request, failed(), 'failed'));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));
    }

    public function updateUserLocation(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'location_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        if ($user = checkJWT($request->header('jwt'))) {
            $data = $this->authRepository
                ->updateUserLocation($user->id,$request, $request->header('lang'));
            if($data)
                return response()->json(msg($request, success(), 'success'));
            return response()->json(msg($request, failed(), 'failed'));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));
    }

    public function getUserLocation(Request $request)
    {

        if ($user = checkJWT($request->header('jwt'))) {
            $data = $this->authRepository
                ->getUserLocation($user->id,$request, $request->header('lang'));

            return response()->json(msgdata($request, success(), 'success',$data));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));
    }

    public function deleteUserLocation(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'location_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => failed(), 'msg' => $validator->messages()->first()]);
        }

        if ($user = checkJWT($request->header('jwt'))) {
            $data = $this->authRepository
                ->deleteUserLocation($user->id,$request, $request->header('lang'));

            return response()->json(msg($request, success(), 'success'));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));
    }

    public function getProfileData(Request $request)
    {
        if ($user = checkJWT($request->header('jwt'))) {
            $data = $this->authRepository
                ->getProfileData($user->id);

            return response()->json(msgdata($request, success(), 'success',$data));
        }
        return response()->json(msg($request, not_authoize(), 'invalid_data'));
    }
}
