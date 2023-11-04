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
                                <i class="fa fa-shopping-cart"></i>
                                <a class="" href="{{asset('admin/orders')}}" style="color: #Fd5A1F">
                                    الطلبات
                                </a>
                                /
                                تفاصيل الطلب

                                <a title="طباعة التفاصيل" href="{{asset('admin/orders/print/'.$order->id)}}" class="btn btn-success"
                                    target="_blank">
                                    <i class="fa fa-print"></i>
                                    طباعة
                                </a>
                                {{--                                [{{$type}}]--}}
                                {{--                                <a href="{{route('admin-accept-orders')}}" class="btn btn-primary"><span>الطلبات المقبولة</span></a>--}}
                                {{--                                <a href="{{route('admin-onway-orders')}}" class="btn btn-warning"><span>الطلبات في الطريق</span></a>--}}
                                {{--                                <a href="{{route('admin-finished-orders')}}" class="btn btn-success"><span>الطلبات المنتهية</span></a>--}}
                                {{--                                <a href="{{route('admin-cancelled-orders')}}" class="btn btn-danger"><span>الطلبات الملغية</span></a>--}}
                                <button title="تغيير حالة الطلب" type="button" class="btn btn-warning"
                                        data-toggle="modal" data-target="#edit_{{$order->id}}">
                                    <i class="fa fa-edit"></i>
                                    تغيير حالة الطلب
                                </button>
                                <button title="المندوب" type="button" class="btn btn-primary"
                                        data-toggle="modal" data-target="#delegate_{{$order->id}}">
                                    <i class="fa fa-user"></i>
                                    المندوب
                                </button>
                                <button title="السائق" type="button" class="btn btn-dark"
                                        data-toggle="modal" data-target="#driver_{{$order->id}}">
                                    <i class="fa fa-car"></i>
                                    السائق
                                </button>
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
                                        @if($order->user)
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <button title="عرض" type="button" class="btn btn-warning"
                                                            data-toggle="modal" data-target="#image"
                                                            style="padding: 1px">
                                                        <img src="{{$order->user->image}}" width="50px" height="50px"></img>
                                                    </button>

                                                    {{--==image==--}}
                                                    <div class="modal fade" id="image" tabindex="-1"
                                                         role="dialog" aria-labelledby="exampleModalLabel"
                                                         aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <img src="{{$order->user->image}}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {{--==image==--}}
                                                </div>
                                                <div class="col-md-8">
                                                    الأسم:{{$order->user->name}} <br>
                                                    الهاتف:{{$order->user->phone}} <br>
                                                    البريد الالكتروني:{{$order->user->email}}
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

                <div class="col-sm-6 col-xl-6 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="map-pin"></i></div>
                                <div class="media-body"><span class="m-0">عنوان الطلب:</span>
                                    <h4 class="mb-0  text-dark">
                                        @if($order->location)
                                            {{$order->location->street}} / {{$order->location->floor}}
                                            <br>
                                            {{$order->location->region->name_ar}} /
                                            {{$order->location->city->name_ar}}
                                        @endif
                                    </h4>
                                    <i class="icon-bg" data-feather="map-pin"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-6 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="clock"></i></div>
                                <div class="media-body"><span class="m-0">وقت توصيل الطلب:</span>
                                    <h4 class="mb-0  text-dark">
                                        @if($order->period)
                                            <br>
                                            {{$order->period->from}}  -  {{$order->period->to}}
                                            <br>
                                        @endif
                                    </h4>
                                    <i class="icon-bg" data-feather="clock"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-6 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="user"></i></div>
                                <div class="media-body"><span class="m-0">مندوب التوصيل:</span>
                                    <h4 class="mb-0  text-dark">
                                        @if($order->delegate)
                                            الأسم:{{$order->delegate->name}} <br>
                                            الهاتف:{{$order->delegate->phone}} <br>
                                            البريد الالكتروني:{{$order->delegate->email}}
                                        @endif
                                    </h4>
                                    <i class="icon-bg" data-feather="user"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-6 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="truck"></i></div>
                                <div class="media-body"><span class="m-0">السائق:</span>
                                    <h4 class="mb-0  text-dark">
                                        @if($order->driver)
                                            الأسم:{{$order->driver->name}} <br>
                                            الهاتف:{{$order->driver->phone}} <br>
                                            البريد الالكتروني:{{$order->driver->email}}
                                        @endif
                                    </h4>
                                    <i class="icon-bg" data-feather="truck"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 col-xl-4 col-lg-4">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        تم التجهيز:
                                        <span style="font-size: x-large">{{$order->prepared}}</span>
                                    </span>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xl-4 col-lg-4">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        في الطريق:
                                        <span style="font-size: x-large">{{$order->on_way}}</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xl-4 col-lg-4">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        تم التوصيل:
                                        <span style="font-size: x-large">{{$order->delivered}}</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 col-xl-4 col-lg-4">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        تكلفة التوصيل:
                                        <span style="font-size: x-large">{{$order->total_delivery}}</span>
                                        ج.م
                                    </span>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xl-4 col-lg-4">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        الخصم:
                                        <span style="font-size: x-large">{{$order->discount}}</span>
                                    ج.م
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xl-4 col-lg-4">
                    <div class="card o-hidden">
                        <div class="bg-default b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        الإجمالي:
                                        <span style="font-size: x-large">{{$order->total_after}}</span>
                                    ج.م
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3 col-xl-3 col-lg-3">
                    <div class="card o-hidden">
                        <div class="bg-success b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        <span style="font-size: small">
                                        المدفوع محفظة الباقة:
                                        </span>
                                        <span style="font-size: x-large">{{$order->order_package}}</span>
                                        ج.م
                                    </span>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-xl-3 col-lg-3">
                    <div class="card o-hidden">
                        <div class="bg-success b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        <span style="font-size: small">
                                        المدفوع نقاط الباقة:
                                        </span>
                                        <span style="font-size: x-large">{{$order->order_points}}</span>
                                    ج.م
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-xl-3 col-lg-3">
                    <div class="card o-hidden">
                        <div class="{{$order->order_visa == $order->visa_value ? "bg-success" : "bg-default"}} b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body"><span class="m-0">
                                        <span style="font-size: small">
                                        المدفوع فيزا:
                                        </span>
                                        <span style="font-size: x-large">{{$order->order_visa}}</span>
                                    ج.م
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-xl-3 col-lg-3">
                    <div class="card o-hidden">
                        <div class="bg-success b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="media-body "><span class="m-0">
                                      <span style="font-size: small">
                                        المدفوع كاش:
                                      </span>
                                        <span style="font-size: x-large">{{$order->order_cash}}</span>
                                    ج.م
                                    </span>
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
                                        <th scope="col">vip</th>
                                        <th scope="col">اسم الطبخة</th>
                                        <th scope="col">تاريح التوصيل</th>
                                        <th scope="col">الكمية</th>
                                        <th scope="col">السعر</th>
                                        <th scope="col">الاجمالي</th>
                                    </tr>
                                    </thead>
                                    <tbody >
                                    @foreach($order->orderMeals as $key => $meal)
                                        <tr id="main_cat_{{$meal->id}}">
                                            <td>{{$key+1}}</td>
                                            <td>
                                                @if($meal->vip == 1)
                                                    <i class="font-success show icon-check"></i>
                                                @else
                                                    <i class="font-danger show icon-close"></i>
                                                @endif
                                            </td>
                                            <td>
                                                {{$meal->meal_name}}
                                            </td>
                                            <td>
                                                {{$meal->order_date}}
                                            </td>
                                            <td>
                                                {{$meal->quantity}}
                                            </td>
                                            <td>
                                                {{$meal->price}}
                                            </td>
                                            <td>
                                                {{$meal->price * $meal->quantity}}
                                            </td>

                                        </tr>
                                    @endforeach
                                    {{--<tbody id="sub_cats_{{$orderategory->id}}"></tbody>--}}
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

    <div class="modal fade" id="edit_{{$order->id}}" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <h5 class="modal-title" id="exampleModalLabel">
                        تغيير حالة الطلب
                    </h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal" method="post"
                      action="{{route('editOrderStatus')}}"
                      enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">
                        <input type="hidden" name="order_id" value="{{$order->id}}">

                        <div class="row text-center">
                            <div class="col-md-6">تم التجهيز</div>
                            <div class="col-md-6">{{$order->prepared ?? "-"}}</div>
                        </div>
                        <hr>
                        <div class="row text-center">
                            <div class="col-md-6">في الطريق</div>
                            <div class="col-md-6">{{$order->on_way ?? "-"}}</div>
                        </div>
                        <hr>
                        <div class="row text-center">
                            <div class="col-md-6">تم التوصيل</div>
                            <div class="col-md-6">{{$order->delivered ?? "-"}}</div>
                        </div>
                        <hr>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">تغيير حالة الطلب</label>
                            <div class="col-lg-12">
                                <select name="status"
                                        class="form-control btn-square"
                                        required>
                                    <option value="prepared">تم التجهيز</option>
                                    <option value="on_way">في الطريق</option>
                                    <option value="delivered">تم التوصيل
                                    </option>
                                </select>
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

    <div class="modal fade" id="delegate_{{$order->id}}" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h5 class="modal-title" id="exampleModalLabel">
                        اختر المندوب
                    </h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal" method="post"
                      action="{{route('editOrderDelegate')}}"
                      enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">
                        <input type="hidden" name="order_id" value="{{$order->id}}">

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">إختر مندوب التوصيل
                                للطلب</label>
                            <div class="col-lg-12">
                                <select name="delegate_id"
                                        class="form-control btn-square"
                                        required>
                                    <option value="null" disabled selected>اختر
                                        المندوب
                                    </option>
                                    @foreach($delegates as $delegate)
                                        <option value="{{$delegate->id}}">
                                            {{$delegate->name}}
                                            (
                                            {{$delegate->phone}}
                                            )
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-danger"
                                data-dismiss="modal">اغلاق
                        </button>
                        <button class="btn btn-primary" type="submit">حفظ
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="driver_{{$order->id}}" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark">
                    <h5 class="modal-title" id="exampleModalLabel">
                        اختر السائق
                    </h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal" method="post"
                      action="{{route('editOrderDriver')}}"
                      enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">
                        <input type="hidden" name="order_id" value="{{$order->id}}">

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">إختر السائق لتوصيل
                                للطلب</label>
                            <div class="col-lg-12">
                                <select name="driver_id"
                                        class="form-control btn-square"
                                        required>
                                    <option value="null" disabled selected>اختر
                                        السائق
                                    </option>
                                    @foreach($drivers as $driver)
                                        <option value="{{$delegate->id}}">
                                            {{$driver->name}}
                                            (
                                            {{$driver->phone}}
                                            )
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-danger"
                                data-dismiss="modal">اغلاق
                        </button>
                        <button class="btn btn-dark" type="submit">حفظ
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection

@section('mapLocation')
    <script type="text/javascript" src="{{asset('js/map.script.js')}}"></script>
    <script>
        var lato;
        var lngo;
        $(document).on('click', '.mapBtnClick', function () {
            lato = parseFloat($(this).attr('lato'));
            lngo = parseFloat($(this).attr('lngo'));
            console.log(lato);
            console.log(lngo);
            initMap(lato, lngo);
        });

    </script>


    <!--++++++++++++++++++++++++++++++++++-->
    <script>
        var marker = null;

        function initMap(lato, lngo) {
            var map = new google.maps.Map(document.getElementById('oneordermap'), {
                zoom: 7,
                center: {lat: lato, lng: lngo}
            });
            var MaekerPos = new google.maps.LatLng(lato, lngo);
            marker = new google.maps.Marker({
                position: MaekerPos,
                map: map
            });
        }
    </script>


    {{--map--}}
    <script>
        $('#myModal').on('shown.bs.modal', function () {
            $('#myInput').trigger('focus')
        })
    </script>



    <script async
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDPN_XufKy-QTSCB68xFJlqtUjHQ8m6uUY&libraries=places&callback=initMap">
    </script>
    <script>
        $(document).ready(function () {
            $('.count').prop('disabled', true);
            $(document).on('click', '.plus', function () {
                $('.count').val(parseInt($('.count').val()) + 1);
            });
            $(document).on('click', '.minus', function () {
                $('.count').val(parseInt($('.count').val()) - 1);
                if ($('.count').val() == 0) {
                    $('.count').val(1);
                }
            });
        });
    </script>



    {{--map--}}


@endsection
