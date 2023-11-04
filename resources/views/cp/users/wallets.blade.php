@extends('cp.index')
@section('content')
    <style>
        .btn {
            font-size: 12px !important;
            padding: 0.375rem 0.75rem !important;
            letter-spacing: 0.7px;
        }
    </style>
    <div class="page-body" dir="rtl">
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <div class="page-header-right">


                            @include('cp.layouts.messages')


                            <h3>
                                <i class="fa fa-home"></i>
                                <a class="" href="{{route('home')}}" style="color: #Fd5A1F">
                                    الرئيسية
                                </a>
                                /
                                <i class="fa fa-users"></i>
                                <a class="" href="{{asset('/admin/users')}}" style="color: #Fd5A1F">
                                    العملاء
                                </a>
                                /
                                تفاصيل المحفظة
                                {{--                                [ {{$user->name}} - {{$user->phone}} - {{$user->email}} ]--}}
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">المستخدمين</li>
                            </ol>--}}
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">

                <div class="col-sm-12 col-xl-12 col-lg-12">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="user"></i></div>
                                <div class="media-body"><span class="m-0">بيانات العميل:</span>
                                    <h4 class="mb-0  text-dark">
                                        @if($user)
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <button title="عرض" type="button" class="btn btn-warning"
                                                            data-toggle="modal" data-target="#image"
                                                            style="padding: 0">
                                                        <img src="{{$user->image}}" width="50px" height="50px"></img>
                                                    </button>

                                                    {{--==image==--}}
                                                    <div class="modal fade" id="image" tabindex="-1"
                                                         role="dialog" aria-labelledby="exampleModalLabel"
                                                         aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <img src="{{$user->image}}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {{--==image==--}}
                                                </div>
                                                <div class="col-md-4">
                                                    الأسم:{{$user->name}} <br>
                                                    الهاتف:{{$user->phone}} <br>
                                                    البريد الالكتروني:{{$user->email}}
                                                </div>
                                                <div class="col-md-4">
                                                    المحفظة:<span class="badge badge-dark">{{$user->wallet}}</span> <br>
                                                    النقاط:<span class="badge badge-dark">{{$user->points}}</span> <br>
                                                    تاريخ انتاء الاشتراك:<span
                                                            class="badge badge-dark">{{$user->subscription_expire}}</span>
                                                </div>
                                            </div>
                                        @endif
                                    </h4>
                                    <i class="icon-bg" data-feather="user"></i>
                                </div>
                            </div>
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
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="display" id="basic-9">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th scope="col" style="text-align: right">#</th>
                                        <th scope="col"> الطلب</th>
                                        <th scope="col"> القيمة القديمة للباقة</th>
                                        <th scope="col"> القيمة الجديدة للباقة</th>
                                        <th scope="col"> القيمة القديمة للنقاط</th>
                                        <th scope="col"> القيمة الجديدة للنقاط</th>
                                        <th scope="col"> الوصف</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($results as $key => $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"
                                            class="{{$c->suspend == 1 ? 'table-danger' :''}}">
                                            <td style="text-align: right">
                                                {{$key+1}} <br>

                                            </td>
                                            <td>
                                                @if($c->order_id)
                                                    <a title="طباعة التفاصيل" href="{{asset('admin/orders/print/'.$c->order_id)}}" class="btn btn-success"
                                                       style="padding:4px 9px" target="_blank">
                                                        <i class="fa fa-print"></i>
                                                    </a>
                                                    <a title="عرض التفاصيل" href="{{asset('admin/orders/show/'.$c->order_id)}}" class="btn btn-info"
                                                       style="padding:4px 9px">
                                                        <i class="fa fa-eye"></i>
                                                    </a>
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td>{{$c->wallet_old_value}}</td>
                                            <td>{{$c->wallet_new_value}}</td>
                                            <td>{{$c->points_old_value}}</td>
                                            <td>{{$c->points_new_value}}</td>
                                            <td>{{$c->description_ar}}</td>


                                        </tr>
                                    @endforeach
                                    {{--<tbody id="sub_cats_{{$category->id}}"></tbody>--}}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    {{--{{$users->links()}}--}}
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>


@endsection
