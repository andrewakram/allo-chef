<?php

namespace App\Http\Controllers\Eloquent\User;

use App\Http\Controllers\Interfaces\User\AuthRepositoryInterface;
use App\Models\User;
use App\Models\Location;
use App\Models\UserSubscription;
use App\Models\UserWallet;
use App\Models\Verification;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Mail;

class AuthRepository implements AuthRepositoryInterface {

    public function create($input)
    {
        global $provider_id;//social_id
        global $objective;//social_type
        $provider_id = null;
        $objective = null;
        if ($input->has('provider_id')) {
            $provider_id = $input->provider_id;
        }
        if ($input->has('objective')) {
            $objective = $input->objective;
        }
        $array = array(
            'jwt' => generateJWT(),
            'name' => $input->name,
            'email' => $input->email,
            'phone' => $input->phone,
            'password' => $input->password,
            'token' => $input->token,
            'active' => 0,
            'gender' => $input->gender,
            'provider_id' => $input->provider_id,
            'objective' => $input->objective,
//            'region_id' => null,
//            'city_id' => null,
        );

        if($user = User::create($array))
        {
            if($input->image)
            {
                $user->image = $input->image;
            }

//            if(!(isset($provider_id) && !empty($provider_id))){
                $this->sendSMS('user', 'activate', $user->email,$user->name,$user->phone);
//            }
            $user->save();
        }

        return $user;
    }

    public function sendSMS($role,$type,$email,$name,$phone)
    {
        $activation_code = generateActivationCode();
//        $activation_code = "1111";

        $data = [
            'name' => $name,
            'subject' => 'هذا هو كود التفعيل في تطبيق Allo Chef ',
            'code' => $activation_code
        ];


        // Mail::send('activation', $data, function ($message) use ($data,$email) {
        //     $message->from('info@allochef-eg.com','Activation@Allo_Chef')
        //         ->to($email)
        //         ->subject('تفعيل الحساب | Allo Chef');
        // });

        //smart sms
        $message = "Allo chef activation code is: ".$activation_code;
        $message = urlencode($message);
//        $url = 'https://smssmartegypt.com/sms/api/?username=ihab.allochef@gmail.com&password='.'9ED165*iQ'.'&sendername=Allo chef&mobiles=201128570038&message='.$message;
        $url = 'https://smssmartegypt.com/sms/api/?username=ihab.allochef@gmail.com&password=9ED165*iQ&sendername=Allo%20Chef&mobiles=2'."$phone".'&message='.$message;
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        $data = curl_exec($ch);
//        dd($data);
        curl_close($ch);
        $decodedData = json_decode($data);

        Verification::updateOrcreate
        (
            [
                'role' => $role,
                'type' => $type,
                'phone' => $phone,
            ],
            [
                'code' => $activation_code,
                'expire_at' => Carbon::now()->addHour()->toDateTimeString()
            ]
        );
    }

    public function checkIfEmailExist($email)
    {
        return User::whereEmail($email)->first();
    }

    public function checkIfPhoneExist($phone)
    {
         $user = User::wherePhone($phone)->first();
         return $user;
    }

    public function checkJWT($jwt)
    {
        return User::whereJwt($jwt)->select('id','password')->first();
    }

    public function checkId($id)
    {
        return User::whereId($id)->first();
    }

    public function codeCheck($role,$phone,$code)
    {
        return Verification::whereCode($code)
            ->whereRole('user')
            ->wherePhone($phone)
            ->first();
    }

    public function activeUser($phone)
    {
//        $user = $this->checkIfEmailExist($phone);
        $user = $this->checkIfPhoneExist($phone);
        $user->active = 1;
        $user->save();
        return $user;
    }

    public function userData($jwt)
    {
        return User::whereJwt($jwt)->first();
    }

    public function editeProfile($id,$input,$lang){
            $user = User::where('id', $id)->first();
            //$input->password = Hash::make($input->password);
            $user->update(array_merge($input->all(),[
                'platform' => request()->header('platform'),
                'lang' => request()->header('lang'),
            ]));

//            if(isset($input->password) && !empty($input->password))
//                $user->update(['password' => $input->password ]);

            $user->save();

        return $user;
    }

    public function addUserLocation($user_id,$input,$lang){
        $check_has_location = Location::where('user_id',$user_id)->count();
        Location::create([
           'main' => $check_has_location > 0 ? 0 : 1,
           'user_id' => $user_id,
           'title' => $input->title,
           'street' => $input->street,
           'floor' => $input->floor,
           'appartment' => $input->appartment,
           'region_id' => $input->region_id,
           'city_id' => $input->city_id,
           'lat' => $input->lat,
           'lng' => $input->lng,
        ]);

        return true;
    }

    public function getUserLocation($user_id,$input,$lang){
        return Location::where('user_id',$user_id)->get();
    }

    public function mainLocation($user_id,$input,$lang){
        $location = Location::whereId($input->location_id)
            ->where('user_id',$user_id)
            ->first();
        if($location){
            Location::where('user_id',$user_id)
                ->update(['main' => 0]);
            $location->main = 1;
            $location->save();
            return true;
        }
        return false;
    }

    public function updateUserLocation($user_id,$input,$lang){
        $location = Location::whereId($input->location_id)
            ->where('user_id',$user_id)
            ->first();
        if($location){
            Location::whereId($input->location_id)
                ->where('user_id',$user_id)
                ->update($input->except('location_id'));
            return true;
        }
        return false;
    }

    public function deleteUserLocation($user_id,$input,$lang){
        Location::whereId($input->location_id)->delete();
        return true;
    }

    public function getProfileData($user_id){
        return UserWallet::orderBy('id','desc')->where('user_id',$user_id)
            ->select('user_id',
                'order_id',
                'subscription_id',
                'wallet_old_value','wallet_new_value',
                'points_old_value','points_new_value',
                'description_'.getLang().' as description')
            ->get();;
    }
//    public function getLastSubscription($user_id){
//        $lang = getLang();
//        return UserSubscription::orderBy('id','desc')->where('user_id',$user_id)
//            ->select('id','expire_at','price','points','days','name_'.$lang.' as name')->first();;
//    }
}
