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
                                <i class="fa fa-users"></i>
                                <a class="" href="{{asset('admin/users')}}" style="color: #Fd5A1F">
                                    المستخدمين
                                </a>
                                /
                                تفاصيل إشتراكات العميل

                                </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الاعلانات</li>
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
                                                            style="padding: 1px">
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
                                                    تاريخ انتاء الاشتراك:<span class="badge badge-dark">{{$user->subscription_expire}}</span>
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
                                        <th scope="col">#</th>
                                        <th scope="col">اسم الباقة</th>
                                        <th scope="col">عدد ايام الباقة</th>
                                        <th scope="col">السعر المدفوع</th>
                                        <th scope="col">النقاط</th>
                                        <th scope="col">تاريخ انتهاء الاشتراك</th>
                                        <th scope="col">تاريخ الاشتراك</th>
                                    </tr>
                                    </thead>
                                    <tbody >
                                    @foreach($subscriptions as $key => $subscription)
                                        <tr id="main_cat_{{$subscription->id}}">
                                            <td>{{$key+1}}</td>
                                            <td>
                                                {{$subscription->name_ar}}
                                            </td>
                                            <td>
                                                {{$subscription->days}}
                                            </td>
                                            <td>
                                                {{$subscription->price}}
                                            </td>
                                            <td>
                                                {{$subscription->points}}
                                            </td>
                                            <td>
                                                {{$subscription->expire_at}}
                                            </td>
                                            <td>
                                                {{$subscription->created_at}}
                                            </td>

                                        </tr>
                                    @endforeach
                                    {{--<tbody id="sub_cats_{{$category->id}}"></tbody>--}}
                                    </tbody>
                                </table>
                            </div>{{--{{$trips->links()}}--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>


    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title rtl" id="exampleModalLongTitle">الموقع</h5>

                </div>
                <div class="modal-body">
                    <div id="oneordermap"></div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>

                </div>
            </div>
        </div>
    </div>



@endsection

