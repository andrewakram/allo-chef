<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Order;
use App\Models\Payment;
use App\Models\UserSubscription;
use App\Models\UserWallet;
use Carbon\Carbon;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Validator;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function firstStepPaymentOld(Request $request)
    {
        $validator = \Illuminate\Support\Facades\Validator::make($request->all(), [
            'full_name' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 401, 'msg' => $validator->messages()->first()]);
        }
        $lang = ($request->hasHeader('lang')) ? $request->header('lang') : 'en';
        $jwt = ($request->hasHeader('jwt')) ? $request->header('jwt') : false;
        $jwt = "hpBA0WUSlVBbrAoTJdKLpZwKU1684775558";
        $user = User::where('jwt',$jwt)->first();
        if (!$user) {

            return $response=[
                'success'=>403,
                'message'=>trans('api.please login first'),
            ];
        }

        $CustomerName = $request->full_name;
        $CustomerEmail = $user->email ? $user->email : "andrewakramalbert@gmail.com";
        $CustomerMobile = $user->mobile;
        $InvoiceValue = $request->invoice_value;
        $CustomerMobile="55633331";

        $token = "rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL";
        //$token = "4ZPYVZD4YpR-FcJCWDUFB5cxd0cJDAPqzfyBDVJnvvTaq4zeFbizb8KWS_sfyCg66lOv73LmEmAaFrKFsssR_hs0ySNDk_9f9_SzzFIV2OPi7M6tRW6i-T9kw8hj_bBFv1LFSMZ3IQrc7iVjw6AV6i49wIGDsz-ed3KOQzZ2FsGDqJ4KSuW_Ww050GN_-xvxIAedQ__lMVV7_YC8YSnuPXD-Sv1v6iODqxUMlNDwDvUodXMdh-RwWr8ZxZZhmALBVHsNCpEkyH9w-CPBi7E40zuRSwwXwToI0oEtMmun5EsdZ6nFBEYWbocqyNPF18U1h9C8kv3Nj4oldaWhnZRmSxbWRDHs2ITUPn_Tggg6g8h96SWWH8HraGfdcDPLg2-Dbk3zIjOLRvLKRZEBuA0Hl-Y3phbiEsecdQqoZ5ynzzSdjZVwo90cpsI4BgNVekXCl5PRla98IK3bgx2vC4ykbH8CTM0FD7OeIXTEiIuktADe-uRFiglHfWUCLoHPVoDP_Y2pq-LaUT3g9cdvxADt2D7Py4o0SwBYVaB9LoEAADVy_4IKa1fNGckW0z8BNF6Qe7RREf6haIuMWZp1X0Q7LsjbagE8U5fFntkcx7gtALwmGu971GFOlJ4u539RwAGZm-5r8CS9TXlbwg9v3TBuokoXfsu4n5pP3aIZ4C5zEFuUVxnSAhilT9ildrUoYwqvzGdJZQ";
        $basURL = "https://apitest.myfatoorah.com";
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => "$basURL/v2/SendPayment",
            CURLOPT_CUSTOMREQUEST => "POST",
            //CURLOPT_POSTFIELDS => "{\"NotificationOption\":\"ALL\",\"CustomerName\": \"Ahmed\",\"DisplayCurrencyIso\": \"KWD\", \"MobileCountryCode\":\"+965\",\"CustomerMobile\": \"92249038\",\"CustomerEmail\": \"aramadan@myfatoorah.com\",\"InvoiceValue\": 200,\"CallBackUrl\": \"https://google.com\",\"ErrorUrl\": \"https://facebook.com\",\"Language\": \"en\",\"CustomerReference\" :\"ref 1\",\"CustomerCivilId\":12345678,\"UserDefinedField\": \"Custom field\",\"ExpireDate\": \"\",\"CustomerAddress\" :{\"Block\":\"\",\"Street\":\"\",\"HouseBuildingNo\":\"\",\"Address\":\"\",\"AddressInstructions\":\"\"},\"InvoiceItems\": [{\"ItemName\": \"Product 01\",\"Quantity\": 1,\"UnitPrice\": 200}]}",
            CURLOPT_POSTFIELDS => "{\"NotificationOption\":\"ALL\",\"CustomerName\": \"$CustomerName\",\"DisplayCurrencyIso\": \"EGP\", \"MobileCountryCode\":\"+20\",\"CustomerMobile\": \"$CustomerMobile\",\"CustomerEmail\": \"$CustomerEmail\",\"InvoiceValue\": $InvoiceValue,\"CallBackUrl\": \"http://allochef-eg.com/api/payment-success\",\"ErrorUrl\": \"http://allochef-eg.com/api/payment-failed\",\"Language\": \"en\",\"CustomerReference\" :\"ref 1\",\"CustomerCivilId\":12345678,\"UserDefinedField\": \"Custom field\",\"ExpireDate\": \"\",\"CustomerAddress\" :{\"Block\":\"\",\"Street\":\"\",\"HouseBuildingNo\":\"\",\"Address\":\"\",\"AddressInstructions\":\"\"},\"InvoiceItems\": [{\"ItemName\": \"Product & Service\",\"Quantity\": 1,\"UnitPrice\": $InvoiceValue}]}",
//            CURLOPT_POSTFIELDS => json_encode($request->all()),
            CURLOPT_HTTPHEADER => array("Authorization: Bearer $token", "Content-Type: application/json"),

        ));
        //http://ghusn.net/api/payment-success
        //http://ghusn.net/api/payment-failed
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

        $response = curl_exec($curl);
        $err = curl_error($curl);
//dd($err);
        curl_close($curl);
//return $response;
        if ($err) {
            return "cURL Error #:" . $err;
        } else {
            $data = json_decode($response);
            if($data){
                if($data->IsSuccess == true){
                    $InvoiceId = $data->Data->InvoiceId;
                    $InvoiceURL = $data->Data->InvoiceURL;
                    $ResponseURL = "http://allochef-eg.com/api/payment-success";
                    $data->Data->ResponseURL = $ResponseURL;
//                    PaymentDetail::create([
//                        'InvoiceValue' => $request->invoice_value,
//                        'InvoiceId' => $InvoiceId,
//                        'InvoiceURL' => $InvoiceURL,
//                        'payment_id' => NULL,
//                        '_id' => NULL,
//                        'user_id' => $user->id,
//                        'order_id' => rand(100000,999999),
//                    ]);
                    return json_encode($data);
                }
            }

            return "$response ";
        }
    }

    public function firstStepPayment(Request $request)
    {
        $lang = ($request->hasHeader('lang')) ? $request->header('lang') : 'en';
        $user = checkJWT($request->header('jwt'));
        if (!$user) {
            return response()->json(msg($request, not_authoize(), 'please_login_first'));
        }

        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'invoice_value' => 'required',
            'type' => 'required|in:order,subscription',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 401, 'msg' => $validator->messages()->first()]);
        }

        $order = Order::whereId($request->id)->first();
//        if (!$order) {
//            return response()->json(msg($request, not_found(), 'order_not_found'));
//        }
        $orderId = isset($order) ? $order->id : null;

        $CustomerName = $user->name;
        $CustomerEmail = $user->email ? $user->email : "andrewakramalbert@gmail.com";
//        $CustomerEmail = "andrewakramalbert@gmail.com";
        $CustomerMobile = $user->mobile;
//        $CustomerMobile = "55633331";
        $InvoiceValue = $request->invoice_value;
//        $InvoiceValue = 500;

        $testToken = "rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL";
        $token = $testToken;
        $basURL = "https://apitest.myfatoorah.com";
//        $domainServerUrl = "http://127.0.0.1:8000";
        $domainServerUrl = "http://allo.chef.el3amd.com";
        $successURL = "$domainServerUrl" . '/api/payment-success';
        $failedURL = "$domainServerUrl" . '/api/payment-failed';
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => "$basURL/v2/SendPayment",
            CURLOPT_CUSTOMREQUEST => "POST",
            //CURLOPT_POSTFIELDS => "{\"NotificationOption\":\"ALL\",\"CustomerName\": \"Ahmed\",\"DisplayCurrencyIso\": \"KWD\", \"MobileCountryCode\":\"+965\",\"CustomerMobile\": \"92249038\",\"CustomerEmail\": \"aramadan@myfatoorah.com\",\"InvoiceValue\": 200,\"CallBackUrl\": \"https://google.com\",\"ErrorUrl\": \"https://facebook.com\",\"Language\": \"en\",\"CustomerReference\" :\"ref 1\",\"CustomerCivilId\":12345678,\"UserDefinedField\": \"Custom field\",\"ExpireDate\": \"\",\"CustomerAddress\" :{\"Block\":\"\",\"Street\":\"\",\"HouseBuildingNo\":\"\",\"Address\":\"\",\"AddressInstructions\":\"\"},\"InvoiceItems\": [{\"ItemName\": \"Product 01\",\"Quantity\": 1,\"UnitPrice\": 200}]}",
            CURLOPT_POSTFIELDS => "{\"NotificationOption\":\"ALL\",\"CustomerName\": \"$CustomerName\",\"DisplayCurrencyIso\": \"EGP\", \"MobileCountryCode\":\"+20\",\"CustomerMobile\": \"$CustomerMobile\",\"CustomerEmail\": \"$CustomerEmail\",\"InvoiceValue\": $InvoiceValue,\"CallBackUrl\": \"$successURL\",\"ErrorUrl\": \"$failedURL\",\"Language\": \"en\",\"CustomerReference\" :\"Order_num:$orderId\",\"CustomerCivilId\":12345678,\"UserDefinedField\": \"Custom field\",\"ExpireDate\": \"\",\"CustomerAddress\" :{\"Block\":\"\",\"Street\":\"\",\"HouseBuildingNo\":\"\",\"Address\":\"\",\"AddressInstructions\":\"\"},\"InvoiceItems\": [{\"ItemName\": \"Allo chef Order\",\"Quantity\": 1,\"UnitPrice\": $InvoiceValue}]}",
//            CURLOPT_POSTFIELDS => json_encode($request->all()),
            CURLOPT_HTTPHEADER => array("Authorization: Bearer $token", "Content-Type: application/json"),

        ));

        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

        $response = curl_exec($curl);
//        dd($response);
        $err = curl_error($curl);
//dd($err);
        curl_close($curl);
//return $response;
        if ($err) {
            return "cURL Error #:" . $err;
        } else {
            $data = json_decode($response);
            if ($data) {
                if ($data->IsSuccess == true) {
                    $InvoiceId = $data->Data->InvoiceId;
                    $InvoiceURL = $data->Data->InvoiceURL;
                    $successURL = $domainServerUrl."/api/payment-success";
                    $failedURL = $domainServerUrl."/api/payment-failed";
                    $data->Data->successURL = $successURL;
                    $data->Data->failedURL = $failedURL;
                    Payment::create([
                        'type' => isset($request->type) ? $request->type : null,
                        'order_id' => $request->id,
                        'user_id' => $user->id,
                        'status' => null,
                        'invoice_id' => $InvoiceId,
                        'invoice_value' => $InvoiceValue,
                        'invoice_url' => $InvoiceURL,
                        '_id' => null,
                        'payment_id' => null,
                        'response' => null,
                    ]);

                    if($request->type == 'subscription')
                        return $data;
                    if($request->type == 'order')
                        return $data;
//                    return json_encode($data);
                    return response()->json(msgdata($request, success(), 'success',$data));
                }
            }

            return "$response ";
        }
    }

    public function paymentSuccess(Request $request)
    {
        if(!$request->paymentId)
            return response()->json(msg($request, failed(), 'failed'));

        /* ------------------------ Configurations ---------------------------------- */
//Test
        $apiURL = 'https://apitest.myfatoorah.com';
        $apiKey = 'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL';

//Live
//$apiURL = 'https://api.myfatoorah.com';
//$apiKey = ''; //Live token value to be placed here: https://myfatoorah.readme.io/docs/live-token


        /* ------------------------ Call getPaymentStatus Endpoint ------------------ */
//Inquiry using paymentId
        $keyId = '100202110305128442';
        $keyId = $request->paymentId;
        $KeyType = 'paymentId';

//Inquiry using invoiceId
//        $keyId   = '613842';
//        $keyId   = $request->paymentId;
//        $KeyType = 'invoiceId';

//Fill POST fields array
        $postFields = [
            'Key' => $keyId,
            'KeyType' => $KeyType
        ];
//Call endpoint
        $json = $this->callAPI($request->id,$request->Id, $request->paymentId, "$apiURL/v2/getPaymentStatus", $apiKey, $postFields);
//        $user = checkJWT($request->header('jwt'));
        $payment = Payment::where('_id',$request->paymentId)->first();
        $user = User::whereId($payment->user_id)->first();
        $subscription_name = UserSubscription::orderBy('id','desc')->where('user_id',$user->id)
            ->select('name_'.getLang().' as subscription_name')->first();
        $user->subscription_name = isset($subscription_name) ? $subscription_name->subscription_name : "";

        $status = $json->Data->InvoiceStatus;

//        if (isset($json->Data->InvoiceStatus) && $json->Data->InvoiceStatus == "Paid"){
//            return response()->json(msgdata($request, success(), 'success',$user));
//        } else{
//            return response()->json(msgdata($request, failed(), 'failed',$user));
//        }
        return view('payment',compact('status'));

//        return response()->json(msgdata($request, success(), 'success',$user));

//Display the payment result to your customer
//        echo 'Payment status is ' . $json->Data->InvoiceStatus;
//        if (isset($json->Data->InvoiceStatus) && $json->Data->InvoiceStatus == "Paid"){
//            return $this->sendSuccessData('Payment status is ' . $json->Data->InvoiceStatus, $json->Data->InvoiceStatus);
//            return response()->json(msgdata($request, success(), 'success',$json));
//            $status = $json->Data->InvoiceStatus;
//            return view('payment',compact('status'));
//        } else{
//            $status = $json->Data->InvoiceStatus;
//            return view('payment',compact('status'));
//            return response()->json(msgdata($request, failed(), 'failed',$json));
//        }

    }

    function callAPI($orderId, $_id, $PaymentId, $endpointURL, $apiKey, $postFields = [])
    {
        $user = checkJWT(request()->header('jwt'));

        $curl = curl_init($endpointURL);
        curl_setopt_array($curl, array(
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_encode($postFields),
            CURLOPT_HTTPHEADER => array("Authorization: Bearer $apiKey", 'Content-Type: application/json'),
            CURLOPT_RETURNTRANSFER => true,
        ));

        $response = curl_exec($curl);
        $data = json_decode($response);
        if ($data) {
            if ($data->IsSuccess == true) {
                $InvoiceId = $data->Data->InvoiceId;
                $InvoiceStatus = $data->Data->InvoiceStatus;
                $InvoiceValue = $data->Data->InvoiceValue;

                $payment = Payment::where('invoice_id', $InvoiceId)->first();
                if (!$payment) {
                    $payment = Payment::create([
                        'order_id' => $orderId,
                        'type' => 'subscription',
                        'user_id' => $user->id,
                        'status' => null,
                        'invoice_id' => $InvoiceId,
                        'invoice_value' => $InvoiceValue,
//                    'invoice_url' => $InvoiceURL,
                        '_id' => null,
                        'payment_id' => null,
                        'response' => null,
                    ]);
                }
                Payment::whereId($payment->id)->update([
                    'status' => $InvoiceStatus,
                    '_id' => $_id,
                    'payment_id' => $PaymentId,
                    'response' => json_encode($data),
                ]);
                // $payment->type == 'order'
                if($payment->type == 'order'){
                    Order::whereId($payment->order_id)->update([
                        'payment_status' => 'paid',
                        'visa_value' => $payment->invoice_value,
                    ]);
                }
                // $payment->type == 'subscription'
                if($payment->type == 'subscription'){
                    $userSubscription = UserSubscription::whereId($payment->order_id)->first();
                    $userSubscription->update([
                        'payment_status' => 'paid',
                        'visa_value' => $payment->invoice_value,
                    ]);
                    $user = User::whereId($userSubscription->user_id)->first();

                    UserWallet::create([
                        'user_id' => $userSubscription->user_id,
                        'order_id' => null,
                        'subscription_id' => $userSubscription->id,
                        'wallet_old_value' => $user->wallet,
                        'wallet_new_value' => ($user->wallet + $userSubscription->price),
                        'points_old_value' => $user->points,
                        'points_new_value' => ($user->points + $userSubscription->points),
                        'description_ar' => "شحن للباقة بقيمة: " . $userSubscription->price . " جنية و " . $userSubscription->points . " نقطة ",
                        'description_en' => "Shipping the package with: " . $userSubscription->price . " EGP & " . $userSubscription->points . " point "
                    ]);
                    $user->update([
                        'wallet' => ($user->wallet + $userSubscription->price),
                        'points' => ($user->points + $userSubscription->points),
                        'subscription_expire' => Carbon::now()->addDays($userSubscription->days),
                    ]);
                }

            }
        }
        $curlErr = curl_error($curl);

        curl_close($curl);
        return json_decode($response);

        if ($curlErr) {
            //Curl is not working in your server
            die("Curl Error: $curlErr");
        }

        $error = $this->handleError($response);
        if ($error) {
            die("Error: $error");
        }
        return json_decode($response);

    }

    //------------------------------------------------------------------------------
    /*
     * Handle Endpoint Errors Function
     */

    function handleError($response)
    {

        $json = json_decode($response);
        if (isset($json->IsSuccess) && $json->IsSuccess == true) {
            return null;
        }

        //Check for the errors
        if (isset($json->ValidationErrors) || isset($json->FieldsErrors)) {
            $errorsObj = isset($json->ValidationErrors) ? $json->ValidationErrors : $json->FieldsErrors;
            $blogDatas = array_column($errorsObj, 'Error', 'Name');

            $error = implode(', ', array_map(function ($k, $v) {
                return "$k: $v";
            }, array_keys($blogDatas), array_values($blogDatas)));
        } else if (isset($json->Data->ErrorMessage)) {
            $error = $json->Data->ErrorMessage;
        }

        if (empty($error)) {
            $error = (isset($json->Message)) ? $json->Message : (!empty($response) ? $response : 'API key or API URL is not correct');
        }

        return $error;
    }

    /* -------------------------------------------------------------------------- */

    public function paymentFailed(Request $request)
    {
        $apiURL = 'https://apitest.myfatoorah.com';
        $apiKey = 'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL';

        /* ------------------------ Call getPaymentStatus Endpoint ------------------ */
//Inquiry using paymentId
        $keyId = '100202110305128442';
        $keyId = $request->paymentId;
        $KeyType = 'paymentId';
        $postFields = [
            'Key' => $keyId,
            'KeyType' => $KeyType
        ];
        $json = $this->callAPI($request->id,$request->Id, $request->paymentId, "$apiURL/v2/getPaymentStatus", $apiKey, $postFields);
//        $user = checkJWT($request->header('jwt'));
        $status = $json->Data->InvoiceStatus;

//        if (isset($json->Data->InvoiceStatus) && $json->Data->InvoiceStatus == "Paid"){
//            return response()->json(msgdata($request, success(), 'success',$user));
//        } else{
//            return response()->json(msgdata($request, failed(), 'failed',$user));
//        }
        return view('payment',compact('status'));
        return response()->json(msgdata($request, failed(), 'Payment status is failed',$request));
//        return $this->sendErrorData('Payment status is failed');
    }


}
