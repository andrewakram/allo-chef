<?php

namespace App\Http\Controllers\Admin;

use App\Models\Notification;
use App\Models\UserAdminMessage;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Session;

class ChatController extends Controller
{
    public function index()
    {
        $result = [];
        $user_ids = UserAdminMessage::select('user_id')->groupBy('user_id')->pluck('user_id');

        foreach ($user_ids as $user_id){
            $message = UserAdminMessage::orderBy('id','desc')
                ->where('user_id',$user_id)
                ->with('user')
                ->with('user_admin_messages_image')
                ->first();
//dd($message);
            array_push($result ,$message);

        }
        //dd($user_ids);
        $data=[];
        $data['title'] ='الدردشة';
        //dd($users);

        return view('cp.chat.index',compact('result','data'));
        //return view('chat.index', compact('users'));
    }

    public function reply($id)
    {
        $messages = UserAdminMessage::where('user_id', $id)
            ->with('user_admin_messages_image')
            ->get();
        foreach ($messages as $message) {
            $message->is_read = 1;
            $message->save();
        }
        $user = User::where('id', $id)->first();
        //dd(Auth::guard('admin')->user()->image);
        $data=[];
        $data['title'] ='الدردشة';

        return view('cp.chat.reply',compact('messages','user','data'));
        //return view('chat.reply', compact('messages', 'user'));
    }

    public function create_message(Request $request)
    {

        $message = UserAdminMessage::create(array_merge($request->all(), [
            'admin_id' => Auth::guard('admin')->user()->id,
            'sender_type' => 1,
            'is_read' => 1,
            'user_id' => $request->user_id,
            'message' => $request->message
        ]));
        $time = date("F j, Y, g:i a",strtotime($message->created_at));
        //Chat::sendChat($request->user_id, $request->message,$time,$request->imag);
        //$message->load('admin');
        $user = User::whereId($request->user_id)->first();
        Notification::send($user->token,$request->message,$request->message,
            1,"","","",
            "","","",
            "","","");

//        if ($message){
        return response()->json($message);
//        }else{
//            session()->flash('error', __('خطا في البيانات'));
//            return redirect()->back();
//        }
    }


}
