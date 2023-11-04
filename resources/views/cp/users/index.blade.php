@extends('cp.index')
@section('content')
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
                                المستخدمين
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
        <!-- Container-fluid starts-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="display" id="basic-9">
                                    <thead class="">
                                    <tr>
                                        <th scope="col" style="text-align: right">#</th>
                                        <th scope="col"> الاسم</th>
                                        <th scope="col"> الصورة</th>
                                        <th scope="col">الموبايل</th>
{{--                                        <th scope="col"> البريد الالكتروني</th>--}}
                                        <th scope="col"> المحفظة</th>
                                        <th scope="col"> النقاط</th>
                                        <th scope="col">تاريخ التسجيل</th>
                                        <th scope="col"> انتهاء الاشتراك</th>
{{--                                        <th scope="col"> المدينة</th>--}}
{{--                                        <th scope="col"> المنطقة</th>--}}
                                        <th scope="col"> الحالة</th>
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($users as $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"
                                            class="{{$c->suspend == 1 ? 'table-danger' :''}}">
                                            <td style="text-align: right">
                                                {{$loop->iteration}} <br>

                                            </td>
                                            <td>{{$c->name}}</td>
                                            @if($c->image)
                                                <td>
                                                    <button title="عرض" type="button" class="btn btn-warning"
                                                            data-toggle="modal" data-target="#image{{$c->id}}"
                                                            style="padding: 1px">
                                                        <img src="{{$c->image}}" width="30px" height="30px"></img>
                                                    </button>

                                                    {{--==image==--}}
                                                    <div class="modal fade" id="image{{$c->id}}" tabindex="-1"
                                                         role="dialog" aria-labelledby="exampleModalLabel"
                                                         aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <img src="{{$c->image}}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {{--==image==--}}
                                                </td>
                                            @else
                                                <th> -</th>
                                            @endif
                                            <td>{{$c->phone}}</td>
{{--                                            <td>{{$c->email}}</td>--}}
                                            <td>{{isset($c->wallet) ? $c->wallet : "-"}}</td>
                                            <td>{{isset($c->points) ? $c->points : "-"}}</td>
                                            <td>{{isset($c->created_at) ? $c->created_at : "-"}}</td>
                                            <td>{{isset($c->subscription_expire) ? $c->subscription_expire : "-"}}</td>
{{--                                            <td>{{isset($c->city) ? $c->city->name : "-"}}</td>--}}
{{--                                            <td>{{isset($c->region) ? $c->region->name : "-"}}</td>--}}
                                            <td>
                                                @if($c->active == 1)
                                                    <i class="font-success show icon-check"></i>
                                                @else
                                                    <i class="font-danger show icon-close"></i>
                                                @endif
                                            </td>
                                            <td>
                                                @if(auth()->user()->hasPermissionTo('إشتراكات العميل'))
                                                <a href="{{asset('admin/users/subscriptions/'.$c->id)}}">
                                                    <button title="اشتراكات العميل " class="btn btn-dark"
                                                            style="padding:0px 4px">
                                                        <i class="fa fa-money"></i>
                                                    </button>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('طلبات العميل'))
                                                <a href="{{asset('admin/users/orders/'.$c->id)}}">
                                                    <button title="طلبات العميل " class="btn btn-info"
                                                            style="padding:0px 4px">
                                                        <i class="fa fa-shopping-cart"></i>
                                                    </button>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تفاصيل المحفظة'))
                                                <a href="{{route('users.wallets',$c->id)}}" >
                                                    <button title="تفاصيل المحفظة" class="btn btn-warning"
                                                            style="padding:0px 4px">
                                                        <i class="fa fa-dollar"></i>

                                                    </button>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تعديل إنتهاء الإشتراك'))
                                                <button title="تعديل تاريخ انتهاء الاشتراك" type="button" class="btn btn-warning"
                                                        style="padding:0px 4px"
                                                        data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('إيقاف العميل'))
                                                    @if($c->suspend == 0)
                                                        <a href="{{route('editClientStatus',$c->id)}}">
                                                            <button title="ايقاف " class="btn btn-danger"
                                                                    style="padding:0px 4px">
                                                                <i class="fa fa-minus-circle"></i>
                                                            </button>
                                                        </a>
                                                    @else
                                                        <a href="{{route('editClientStatus',$c->id)}}">
                                                            <button title="اعادة تشغيل " class="btn btn-success"
                                                                    style="padding:0px 4px">
                                                                <i class="fa fa-plus-circle"></i>
                                                            </button>
                                                        </a>
                                                    @endif
                                                @endif
                                            </td>

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header bg-warning">
                                                            <h5 class="modal-title" id="exampleModalLabel">
                                                                تعديل تاريخ انتهاء الاشتراك
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editSubscriptionExpire')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="user_id" value="{{$c->id}}">

                                                                <div class="row text-center">
                                                                    <div class="col-md-6">تاريخ انتهاء الاشتراك</div>
                                                                    <div class="col-md-6">
                                                                        {{isset($c->subscription_expire) ? $c->subscription_expire : "-"}}
                                                                    </div>
                                                                </div>
                                                                <hr>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">تعديل تاريخ انتهاء الاشتراك</label>
                                                                    <div class="col-lg-12">
                                                                    <input name="subscription_expire"
                                                                           class="form-control btn-square"
                                                                           type="date"
                                                                              required>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="reset" class="btn btn-dark"
                                                                        data-dismiss="modal">اغلاق
                                                                </button>
                                                                <button class="btn btn-warning" type="submit">تعديل
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                        </tr>
                                    @endforeach
                                    {{--<tbody id="sub_cats_{{$category->id}}"></tbody>--}}
                                    </tbody>
                                </table>
                            </div>{{--{{$users->links()}}--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>


@endsection
