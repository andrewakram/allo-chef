<?php

use App\Models\User;
use App\Models\Delegate;
use App\Models\Driver;
use App\Models\Admin;
use App\Models\Country;
use Illuminate\Support\Facades\Config;
use \Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;


function admin()
{
    return Auth::guard('admin')->user();
}

function success()
{
    return 200;
}

function failed()
{
    return 401;
}

function not_authoize()
{
    return 403;
}

function not_found()
{
    return 404;
}

function not_active()
{
    return 405;
}

function msg($request,$status,$key)
{
    $msg['status'] = $status;
    $msg['msg'] = Config::get('response.'.$key.'.'.getLang());

    return $msg;
}

function msgdata($request,$status,$key,$data)
{
    $msg['status'] = $status;
    $msg['msg'] = Config::get('response.'.$key.'.'.getLang());
    $msg['data'] = $data;

    return $msg;
}
function getLang()
{
    $lang = request()->header('lang');
    if($lang)
        return $lang;
    return "ar";
}
function image($path,$url)
{
    return 'http://'.$_SERVER['SERVER_NAME'].$path.$url;
}

function unique_file($fileName)
{
    $fileName = str_replace(' ','-',$fileName);
    return time() . uniqid().'-'.$fileName;
}

function generateJWT()
{
    return Str::random(25).time();
}

function generateActivationCode()
{
    return rand(1000,9999);
}

function checkJWT($jwt)
{
    return User::where("jwt",$jwt)->first();
}

function checkDelegateJWT($jwt)
{
    //dd($jwt);
    return Delegate::where("jwt",$jwt)
        ->first();
}
function checkDriverJWT($jwt)
{
    return Driver::where("jwt",$jwt)->first();
}

function checkLang()
{
    if(!isset(getallheaders()['lang'])){
        return response()->json(['status' => 401, 'msg' => 'The language is Required']);
    }
}

function getDistanceLatLng($locationData)
{
    // $locationData='[{"lat":30.12449000000000154386725625954568386077880859375,"lng":31.375885000000000246700437855906784534454345703125,"speed":0,"speed_accuracy":0,"time":"1606302462"},{"lat":30.12449000000000154386725625954568386077880859375,"lng":31.375885000000000246700437855906784534454345703125,"speed":0,"speed_accuracy":0,"time":"1606302466"},{"lat":30.12449000000000154386725625954568386077880859375,"lng":31.375885000000000246700437855906784534454345703125,"speed":0,"speed_accuracy":0,"time":"1606302471"},{"lat":30.12449000000000154386725625954568386077880859375,"lng":31.375885000000000246700437855906784534454345703125,"speed":0,"speed_accuracy":0,"time":"1606302476"},{"lat":30.12449000000000154386725625954568386077880859375,"lng":31.375885000000000246700437855906784534454345703125,"speed":0,"speed_accuracy":0,"time":"1606302482"},{"lat":30.12449000000000154386725625954568386077880859375,"lng":31.375885000000000246700437855906784534454345703125,"speed":0,"speed_accuracy":0,"time":"1606302487"},{"lat":30.123836699999998245402821339666843414306640625,"lng":31.37520500000000112095221993513405323028564453125,"speed":45.1099999999999994315658113919198513031005859375,"speed_accuracy":0,"time":"1606302492"},{"lat":30.123045000000001181206243927590548992156982421875,"lng":31.374218299999999004512574174441397190093994140625,"speed":45.1099999999999994315658113919198513031005859375,"speed_accuracy":0,"time":"1606302497"},{"lat":30.122420000000001749640432535670697689056396484375,"lng":31.37346000000000145746525959111750125885009765625,"speed":45.1099999999999994315658113919198513031005859375,"speed_accuracy":0,"time":"1606302503"},{"lat":30.121683300000000826912582851946353912353515625,"lng":31.3724567000000007510607247240841388702392578125,"speed":45.1099999999999994315658113919198513031005859375,"speed_accuracy":0,"time":"1606302508"},{"lat":30.1212799999999987221599440090358257293701171875,"lng":31.371919999999999362216840381734073162078857421875,"speed":45.1099999999999994315658113919198513031005859375,"speed_accuracy":0,"time":"1606302513"},{"lat":30.120349999999998402699930011294782161712646484375,"lng":31.370913300000001555645212647505104541778564453125,"speed":71.469999999999998863131622783839702606201171875,"speed_accuracy":0,"time":"1606302519"},{"lat":30.119119999999998782413968001492321491241455078125,"lng":31.369319999999998316297933342866599559783935546875,"speed":71.469999999999998863131622783839702606201171875,"speed_accuracy":0,"time":"1606302524"},{"lat":30.117999999999998550492819049395620822906494140625,"lng":31.367830000000001433591023669578135013580322265625,"speed":71.469999999999998863131622783839702606201171875,"speed_accuracy":0,"time":"1606302530"},{"lat":30.1166699999999991632648743689060211181640625,"lng":31.36683000000000021145751816220581531524658203125,"speed":71.469999999999998863131622783839702606201171875,"speed_accuracy":0,"time":"1606302535"},{"lat":30.114969999999999572537490166723728179931640625,"lng":31.36674000000000006593836587853729724884033203125,"speed":71.469999999999998863131622783839702606201171875,"speed_accuracy":0,"time":"1606302541"},{"lat":30.11325000000000073896444519050419330596923828125,"lng":31.367709999999998871089701424352824687957763671875,"speed":71.469999999999998863131622783839702606201171875,"speed_accuracy":0,"time":"1606302547"},{"lat":30.111670000000000158024704433046281337738037109375,"lng":31.369170000000000442241798737086355686187744140625,"speed":78.7300000000000039790393202565610408782958984375,"speed_accuracy":0,"time":"1606302553"},{"lat":30.110230000000001382431946694850921630859375,"lng":31.369369999999999976125764078460633754730224609375,"speed":63.2000000000000028421709430404007434844970703125,"speed_accuracy":0,"time":"1606302558"},{"lat":30.10940169999999937999746180139482021331787109375,"lng":31.36789999999999878355083637870848178863525390625,"speed":63.2000000000000028421709430404007434844970703125,"speed_accuracy":0,"time":"1606302563"},{"lat":30.108571699999998827479430474340915679931640625,"lng":31.366286699999999854071575100533664226531982421875,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302568"},{"lat":30.1073650000000014870238373987376689910888671875,"lng":31.36383500000000168483893503434956073760986328125,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302573"},{"lat":30.10591670000000164009179570712149143218994140625,"lng":31.360948300000000443787939730100333690643310546875,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302579"},{"lat":30.10479000000000127101884572766721248626708984375,"lng":31.358709999999998530029188259504735469818115234375,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302585"},{"lat":30.103390000000000981117409537546336650848388671875,"lng":31.35616999999999876536094234324991703033447265625,"speed":0,"speed_accuracy":0,"time":"1606302591"},{"lat":30.10188670000000144000296131707727909088134765625,"lng":31.353506700000000506634023622609674930572509765625,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302597"},{"lat":30.100319999999999964757080306299030780792236328125,"lng":31.350739999999998275370671763084828853607177734375,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302602"},{"lat":30.09910169999999851597749511711299419403076171875,"lng":31.34850829999999888286765781231224536895751953125,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302607"},{"lat":30.097950000000000869704308570362627506256103515625,"lng":31.34649999999999891997504164464771747589111328125,"speed":103.2699999999999960209606797434389591217041015625,"speed_accuracy":0,"time":"1606302613"},{"lat":30.09622829999999993333403836004436016082763671875,"lng":31.343726700000001272883309866301715373992919921875,"speed":107.150000000000005684341886080801486968994140625,"speed_accuracy":0,"time":"1606302618"},{"lat":30.09600999999999970668795867823064327239990234375,"lng":31.3433500000000009322320693172514438629150390625,"speed":107.150000000000005684341886080801486968994140625,"speed_accuracy":0,"time":"1606302624"},{"lat":30.09600999999999970668795867823064327239990234375,"lng":31.3433500000000009322320693172514438629150390625,"speed":107.150000000000005684341886080801486968994140625,"speed_accuracy":0,"time":"1606302629"},{"lat":30.09600999999999970668795867823064327239990234375,"lng":31.3433500000000009322320693172514438629150390625,"speed":107.150000000000005684341886080801486968994140625,"speed_accuracy":0,"time":"1606302634"},{"lat":30.09600999999999970668795867823064327239990234375,"lng":31.3433500000000009322320693172514438629150390625,"speed":107.150000000000005684341886080801486968994140625,"speed_accuracy":0,"time":"1606302639"},{"lat":30.09600999999999970668795867823064327239990234375,"lng":31.3433500000000009322320693172514438629150390625,"speed":107.150000000000005684341886080801486968994140625,"speed_accuracy":0,"time":"1606302644"}]';

    //$locationData=$locString;
    $locations =json_decode($locationData);

    //echo date('H:i:s', $locations[0]->{'time'})."  <br></br>";

    //echo date('H:i:s', $locations[1]->{'time'});

    $distance=0;

    $timers=0;

    for($i=1; $i<count($locations)-1; $i++) {

        if($locations[$i]->{'lat'}==$locations[$i+1]->{'lat'}&&
            $locations[$i]->{'lng'}==$locations[$i+1]->{'lng'}){
            continue;
        }


        $time1 = new DateTime(date('H:i:s', $locations[$i]->{'time'}));
        $time2 = new DateTime(date('H:i:s', $locations[$i+1]->{'time'}));
        $interval = abs($time2->getTimestamp()-$time1->getTimestamp())*((intval($locations[$i]->{'speed'})+intval($locations[$i+1]->{'speed'}))/2);
        $timers+=abs($time2->getTimestamp()-$time1->getTimestamp());
        //dd(abs($time1->getTimestamp()-$time2->getTimestamp()));
        // intval($time1->diff($time2))
        $distance += $interval;

    }
    $distance/=1000;
    $timers/=60;
    //dd($distance,$timers);

//        '30.1243502,31.3757953','30.1236198,31.3749196','30.1232079,31.374411','30.1221937,31.3731624','30.1218785,31.3727314','30.1215097,31.3721974','30.1204943,31.3709169','30.1188341,31.3689759','30.1160976,31.3664356','30.1127029,31.3671662','30.1112891,31.3695268','30.1098672,31.3710297','30.1087037,31.372808','30.1079401,31.3744095','30.1068789,31.3748766','30.1062727,31.3741457','30.1059321,31.3735014','30.1052669,31.3727638','30.104587,31.3719825','30.1041925,31.3720628','30.1042933,31.3726417','30.1039022,31.3730937','30.10353,31.3735209','30.1033384,31.3737587','30.1033406,31.37376');;
//    dd($locations);

    /*$locations = ["30.0997474,31.3506236",
        "30.0997551,31.3506031",
        "30.0997946,31.3505099",
        "30.0997301,31.350629",

        "30.0997741,31.3505266",
"30.0997467,31.3506144"];*/
//"30.0997633,31.3505891","30.099789,31.3505439","30.0998864,31.3503562","30.1000795,31.3499971","30.1000593,31.3499006","30.1001195,31.3502582","30.1000724,31.3502619","30.100008,31.350252","30.0999015,31.3499516","30.1000353,31.3499533","30.1001159,31.3501312","30.1001391,31.3501133","30.1001829,31.3500114","30.1002078,31.349959","30.1001443,31.3501526","30.1000493,31.3503204","30.1000276,31.3504695","30.1000395,31.3505461","30.1001191,31.3505526","30.1001879,31.3505368","30.1014047,31.3538193","30.10212,31.3550801","30.102216,31.3551455","30.1021216,31.3550892","30.1024163,31.3555137","30.1024987,31.3556479","30.1029253,31.3563354","30.1034795,31.357332","30.1036193,31.3577398","30.1033359,31.3580461","30.1032142,31.3580036","30.1030906,31.3580415","30.1030475,31.3580428","30.1030183,31.3580312","30.1056643,31.3611319","30.1056643,31.3611319","30.1056643,31.3611319","30.1056643,31.3611319","30.1056643,31.3611319","30.1064767,31.3638805","30.1064196,31.3639745","30.106842,31.3643401","30.107596,31.3658174","30.1077223,31.3662996","30.1077292,31.3662014","30.1076938,31.3661641","30.1073443,31.3660897","30.1072218,31.3666553","30.1074842,31.3667543","30.1081194,31.3693836","30.1085104,31.3699282","30.1086478,31.3701054","30.1090714,31.3706366","30.1092776,31.3708911","30.1091572,31.3713308","30.1089484,31.3717664","30.108972,31.3717296","30.1094187,31.3713325","30.1110957,31.3703411","30.1114428,31.3698248","30.1118924,31.3693849","30.1125133,31.3689239","30.1131519,31.3683072","30.1140488,31.3677929","30.11492,31.3675033","30.115864,31.3672091","30.1167866,31.3669696","30.117321,31.366893","30.1144017,31.3661349","30.1144017,31.3661349","30.1178901,31.3675869","30.1178901,31.3675869","30.1178901,31.3675869","30.1178901,31.3675869","30.1178901,31.3675869","30.1179459,31.3676963","30.1180431,31.3678866","30.1223866,31.371897","30.1222639,31.3727295","30.1229048,31.3737432","30.1230031,31.3743729","30.1229376,31.3746922","30.1227947,31.3745973","30.1227994,31.3746011","30.1227708,31.3746111","30.1227625,31.3746121","30.1227635,31.3746119"];
    // $time=0;
    // $distance=0;
//    for($i=0; $i<count($locations)-1; $i++) {
//
//        //echo $resultzzz[$i]."|";
//
//
//
//
//        $url = 'https://maps.googleapis.com/maps/api/distancematrix/json?origins=' . $locations[$i] . '&destinations=' . $locations[$i+1 ] . '&departure_time=now&key=AIzaSyBnvQN4kpnqp2a2qJ48fKIQx-CvdJxZyUs';
//
//        //https://maps.googleapis.com/maps/api/directions/json?origin=30.125872654388537,31.37511044740677&waypoints=optimize:true|30.10334989999999,31.374175|30.112315,31.3438507|&destination=30.12269509999999,31.2607568&sensor=false&mode=driving&key=AIzaSyBnvQN4kpnqp2a2qJ48fKIQx-CvdJxZyUs
//
//        $ch = curl_init();
//
//
//        curl_setopt($ch, CURLOPT_URL, str_replace(" ", "", $url));
//
//
//        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
//
//
//        $result = curl_exec($ch);
//
////        print_r($result);
////            echo $url;
//         //  print_r($result);
//
//        // echo "<br>";
//
//        $result_array = json_decode($result);
//
//
////        print_r($result_array);
//
//
//        //  $obj = json_decode(json_encode($result_array));
//        $obj =  json_decode($result);
//
//
//
////        if($obj->{'destination_addresses'}!=$obj->{'origin_addresses'}) {
//
//            $time += intval($obj->{'rows'}[0]->{'elements'}[0]->{'duration'}->{'value'});
//            $distance += intval($obj->{'rows'}[0]->{'elements'}[0]->{'distance'}->{'value'});
////          print_r($obj);
////        }
////            echo $obj;
////
////            echo "'";
////            echo $obj->{'rows'}[0]->{'elements'}[0]->{'distance'}->{'value'} . ",";
////
////            echo $obj->{'rows'}[0]->{'elements'}[0]->{'duration'}->{'value'} . "',";
////
////
////            curl_close($ch);
//
//    }
//    $res=array();
    $res['time']=$timers;
    $res['distance']=$distance;
    //dd($res);
    return $res;
}

function filterbylatlng($mylat,$mylng,$radius,$model)
{
    $haversine = "(6371 * acos(cos(radians($mylat))
                           * cos(radians($model.lat))
                           * cos(radians($model.lng)
                           - radians($mylng))
                           + sin(radians($mylat))
                           * sin(radians($model.lat))))";
    $datainradiusrange = Shop::orderBy('sh.id','desc')
        ->join("captin_infos","captin_infos.user_id","users.id")
        ->select('users.id','users.name','users.phone','users.lat','users.lng',
            'users.image','car_color','car_num','car_model','car_level')
        ->selectRaw("{$haversine} AS distance")
        ->whereRaw("{$haversine} < ?", [$radius])
        ->where('active', 1)
        ->where('suspend', 0)
        ->where('is_captin',1)
        ->where('accept', 1)//captin_infos
        ->where('busy', 0)//captin_infos
        ->where('online', 1)//captin_infos
        ->get();

    return $datainradiusrange;
}

function calculateDistanceBetweenTwoPoints($lat1,$lng1,$lat2,$lng2){
     $latitudeFrom=$lat1;
     $longitudeFrom=$lng1;
     $latitudeTo=$lat2;
     $longitudeTo=$lng2;
     $earthRadius=6371;
     // convert from degrees to radians
     $latFrom = deg2rad($latitudeFrom);
     $lonFrom = deg2rad($longitudeFrom);
     $latTo = deg2rad($latitudeTo);
     $lonTo = deg2rad($longitudeTo);
     $latDelta = $latTo - $latFrom;
     $lonDelta = $lonTo - $lonFrom;
     $angle = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) +
             cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2)));
     $angle2= $angle * $earthRadius;
     return $angle2;
}

function getMinMaxPrice($country_id, $distance){
    $data = Country::whereId($country_id)->first();
    $admin = Admin::where('email','admin@admin.com')->first();
    $app_percent = $admin->app_percent;
    $fee_percent = $admin->fee_percent;

    $distance_price = $distance * $data->price_per_kilo;
    $percent = $distance_price * 0.2 ;
    $result = [
      'min_price' => $distance_price - $percent,
      'max_price' => $distance_price + $percent,
    ];
    return $result;
}

function distance($lat1, $lon1, $lat2, $lon2, $unit = "K") {
    if (($lat1 == $lat2) && ($lon1 == $lon2)) {
        return 0;
    }
    else {
        $theta = $lon1 - $lon2;
        $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
        $dist = acos($dist);
        $dist = rad2deg($dist);
        $miles = $dist * 60 * 1.1515;
        $unit = strtoupper($unit);

        if ($unit == "K") {
            return ($miles * 1.609344);
        } else if ($unit == "N") {
            return ($miles * 0.8684);
        } else {
            return $miles;
        }
    }
}
