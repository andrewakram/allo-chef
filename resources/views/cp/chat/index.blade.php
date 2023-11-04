@extends('cp.index')
@section('content')
    <div class="page-body" dir="rtl">
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <div class="page-header-right">


                            <?php if(session()->has('insert_message')): ?>
                            <div class="alert alert-success dark alert-dismissible fade show col-lg-3" role="alert">
                                <i class="icon-thumb-up"></i>
                                <b>
                                    <?php echo e(session()->get('insert_message')); ?>
                                </b>
                                <button class="close" type="button" data-dismiss="alert" aria-label="Close" >
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <?php endif; ?>

                            @if($errors->any())
                                <div class="alert alert-danger dark alert-dismissible fade show col-lg-3" role="alert">
                                    <i class="icon-thumb-down"></i>
                                    <b>
                                        @if ($errors)
                                            <?php echo "من فضلك اكمل ادخال البيانات المطلوبة !"; ?>
                                        @endif
                                    </b>
                                    <button class="close" type="button" data-dismiss="alert" aria-label="Close" data-original-title="" title="">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                            @endif


                            <h3>
                                <i data-feather="home"></i>
                                {{$data['title']}}
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الاقسام</li>
                            </ol>--}}
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid starts-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        @if( count($result) > 0)

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="display dataTable" id="basic-1">
                                        <thead>
                                        <tr>
                                            <th>المسلسل</th>
                                            <th>صوره العميل</th>
                                            <th>إسم العميل</th>
                                            <th>أخر رسالة من العميل</th>
                                            {{--                                        <th>حالة الرسالة</th>--}}
                                            <th>العمليات</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($result as $index=>$value)
                                            <tr style="border-bottom: 5px #0a6aa1 dashed ">
                                                <td>{{$index + 1}}</td>
                                                <td><img src=" {{ isset($value->user) ?$value->user->image : asset('default.png') }}" style="width: 50px ; height:50px" alt=""></td>
                                                <td style="margin-bottom: 5px; padding-bottom: 5px">
                                                    <b class="badge badge-dark">{{isset($value->user) ? $value->user->name : "عميل"}}</b> <br>
                                                    <b class="badge badge-dark">{{isset($value->user) ? $value->user->phone : "عميل"}}</b> <br>
                                                    <b class="badge badge-dark">{{isset($value->user) ? $value->user->email : "عميل"}}</b> <br>
                                                </td>
                                                @if($value['messages'] != null)
                                                    <td> {{$value['messages']}} </td>
                                                @else
                                                    <td>
                                                        @if(!empty($value['user_admin_messages_image']['image']))

                                                            <button title="عرض" type="button" class="btn btn-success" data-toggle="modal" data-target="#image{{$value->id}}" style="padding: 1px">
                                                                <img src="{{$value['user_admin_messages_image']['image']}}" width="50px" height="50px"></img>
                                                            </button>

                                                            {{--==image==--}}
                                                            <div class="modal fade" id="image{{$value->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                <div class="modal-dialog" role="document">
                                                                    <div class="modal-content">
                                                                        <img src="{{$value['user_admin_messages_image']['image']}}"/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            {{--==image==--}}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                @endif
                                                <td>
                                                    <a href="{{route('admin.reply',['id'=>$value->user_id])}}"
                                                       title="مشاهده الرسائل" class="btn btn-success btn-sm"><i
                                                                class="fa fa-send"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        @else
                            <h4 class="text-center"> لا توجد رسائل </h4>
                        @endif

                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>


@endsection
