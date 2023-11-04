@extends('cp.index')
@section('content')
    <div class="page-body" style="padding-top: 0;margin-top: 0">
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <div class="page-header-left">
                            <h5>عرض الرسائل بين
                                {{ $user->name }} و {{ Auth::guard('admin')->user()->name }}
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid starts-->
        <div class="container-fluid">
            <div class="row">
                <div class="col call-chat-body">
                    <div class="card">
                        <div class="card-body p-0">
                            <div class="row chat-box">
                                <!-- Chat right side start-->
                                <div class="col pr-0 chat-right-aside">
                                    <!-- chat start-->
                                    <div class="chat">
                                        <!-- chat-header start-->
                                        <div class="chat-header clearfix"><img class="rounded-circle"
                                                                               src="{{asset('uploads/users').'/'.$user->image}}" alt="">
                                            <div class="about">
                                                <div class="name">{{$user->name}}  </div>
                                            </div>
                                        </div>
                                        <!-- chat-header end-->
                                        <div class="chat-history chat-msg-box custom-scrollbar" id="chat-history">
                                            <ul class="message-container">
                                                @foreach($messages as $message)
                                                    @if($message->sender_type == 1)
                                                        <li>
                                                            <div class="message my-message"><img
                                                                    class="rounded-circle float-left chat-user-img img-30"
                                                                    src="{{asset('default.png')}}" alt="">
                                                                <div class="message-data text-right"><span
                                                                        class="message-data-time">{{$message->created_at}}</span>
                                                                </div>
                                                                @if(!empty($message->message))
                                                                    {{$message->message}}
                                                                @else
                                                                    @if(!empty($message->image))
                                                                        <img src="{{$message->image}}" style="width: 100px">
                                                                    @else
                                                                        -
                                                                    @endif
                                                                @endif
                                                            </div>
                                                        </li>
                                                    @else
                                                        <li class="clearfix">
                                                            <div class="message other-message pull-right"><img
                                                                    class="rounded-circle float-right chat-user-img img-30"
                                                                    src="{{$user->image}}" alt="">
                                                                <div class="message-data"><span
                                                                        class="message-data-time">{{$message->created_at}}</span>
                                                                </div>
                                                                @if($message->message != null)
                                                                    {{$message->message}}
                                                                @else
                                                                    @if(isset($message->user_admin_messages_image))
                                                                        <img src="{{$message->user_admin_messages_image->image}}"
                                                                             style="width: 100px">
                                                                    @endif

                                                                @endif
                                                            </div>
                                                        </li>
                                                    @endif
                                                @endforeach
                                            </ul>
                                        </div>
                                        <!-- end chat-history-->
{{--                                        @if (auth()->user()->hasPermissionTo('الرد على شات العملاء'))--}}
                                        <div class="chat-message clearfix">
                                            <form id="send" action="" method="post">
                                                {{@csrf_field()}}
                                                <div class="row">
                                                    <div class="col-xl-12 d-flex">
                                                        <div class="input-group text-box">
                                                            <input class="form-control input-txt-bx"
                                                                   id="message-to-send" type="text" name="message" placeholder="نص الرسالة">
                                                            <input type="hidden" value="{{$user->id}}" id="user_id"/>
                                                            <div class="input-group-append">
                                                                <button class="btn btn-primary" type="submit">إرسال
                                                                </button>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
{{--                                    @endif--}}
                                        <!-- end chat-message-->
                                        <!-- chat end-->
                                        <!-- Chat right side ends-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            var element = document.getElementById("chat-history");
            element.scrollTop = element.scrollHeight;
        });
        var token="{{csrf_token()}}";
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': token
            }
        });

        $('#send').on('submit', function (e) {
            e.preventDefault();
            var message = $('#message-to-send').val();
            var userId = $('#user_id').val();

            $.ajax({
                type: "post",
                url: "{{route('admin.send')}}",
                headers: {
                    'X-CSRF-TOKEN': token
                },
                data: "message=" + encodeURIComponent(message)
                    + "&user_id=" + encodeURIComponent(userId),
                success: function (data) {
                    $('.message-container').last().append('<li><div class="message my-message"><img class="rounded-circle float-left chat-user-img img-30" src="' + "{{asset('default.png')}}" + '" alt="">\n' +
                        '    <div class="message-data text-right"><span class="message-data-time">' + data.created_at + '</span></div> ' + data.message + '' +
                        '    </div></li>');
                    $('#message-to-send').val('');
                    var element = document.getElementById("chat-history");
                    element.scrollTop = element.scrollHeight;
                }
            });
        });
    </script>

@endsection
