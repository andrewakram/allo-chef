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
                                الطلبات
                                ({{sizeof($orders)}})
                                {{--                                [{{$type}}]--}}
                                {{--                                <a href="{{route('admin-accept-orders')}}" class="btn btn-primary"><span>الطلبات المقبولة</span></a>--}}
                                {{--                                <a href="{{route('admin-onway-orders')}}" class="btn btn-warning"><span>الطلبات في الطريق</span></a>--}}
                                {{--                                <a href="{{route('admin-finished-orders')}}" class="btn btn-success"><span>الطلبات المنتهية</span></a>--}}
                                {{--                                <a href="{{route('admin-cancelled-orders')}}" class="btn btn-danger"><span>الطلبات الملغية</span></a>--}}
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
                                        <th scope="col">طريقة الدفع</th>
                                        <th scope="col">العميل</th>
                                        <th scope="col">عدد الطبخات</th>
                                        <th scope="col">وقت التوصيل</th>
                                        {{--                                        <th scope="col">عنوان التوصيل</th>--}}
                                        <th scope="col"> تاريخ الانشاء</th>
                                        <th scope="col">المندوب</th>
                                        <th scope="col">السائق</th>
                                        <th scope="col"> الحالة ( في الطريق )</th>
                                        <th scope="col"> الحالة ( تم التوصيل )</th>
                                        <th scope="col"> العمليات</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($orders as $c)
                                        <tr id="main_cat_{{$c->id}}">
                                            <td>{{$loop->iteration}}</td>
                                            <td>
                                                @if($c->payment_type == 1)
                                                    <b class="badge badge-dark">الباقة</b>
                                                @elseif($c->payment_type == 2)
                                                    <b class="badge badge-dark">النقاط</b>
                                                @elseif($c->payment_type == 3)
                                                    <b class="badge badge-dark">اون لاين</b>
                                                @elseif($c->payment_type == 4)
                                                    <b class="badge badge-dark">كاش</b>
                                                @endif
                                                <br>
                                                {{$c->id}}
                                            </td>
                                            @if(($c->user) != null)
                                                <td>
                                                    {{$c->user->name}} <br>
                                                    <b class="bg-warning p-1">
                                                        {{$c->user->phone}}
                                                    </b>
                                                </td>
                                            @else
                                                <td>
                                                    -
                                                </td>
                                            @endif

                                            <td>{{sizeof($c->orderMeals)}}</td>
                                            <td>
                                                @if($c->period)
                                                    {{$c->period->from}} - {{$c->period->to}}
                                                @else
                                                    -
                                                @endif

                                            </td>
                                            {{--                                            <td>--}}
                                            {{--                                                @if($c->location)--}}
                                            {{--                                                    {{$c->location->street}} / {{$c->location->floor}}--}}
                                            {{--                                                    <br>--}}
                                            {{--                                                    {{$c->location->region->name_ar}} /--}}
                                            {{--                                                    {{$c->location->city->name_ar}}--}}
                                            {{--                                                @else--}}
                                            {{--                                                    ---}}
                                            {{--                                                @endif--}}
                                            {{--                                            </td>--}}

                                            <td>{{$c->created_at}}</td>
                                            <td>
                                                @if($c->delegate)
                                                    {{$c->delegate->name}} <br>
                                                    <b class="bg-primary p-1">
                                                        {{$c->delegate->phone}}
                                                    </b>
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td>
                                                @if($c->driver)
                                                    {{$c->driver->name}} <br>
                                                    <b class="bg-dark p-1">
                                                        {{$c->driver->phone}}
                                                    </b>
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td>{{$c->on_way ?? "-"}}</td>
                                            <td>{{$c->delivered ?? "-"}}</td>
                                            <td>
                                                @if(auth()->user()->hasPermissionTo('طباعة الطلب'))
                                                <a title="طباعة التفاصيل" href="{{asset('admin/orders/print/'.$c->id)}}"
                                                   class="btn btn-success"
                                                   style="padding:2px 7px" target="_blank">
                                                    <i class="fa fa-print"></i>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تفاصيل الطلب'))
                                                <a title="عرض التفاصيل" href="{{asset('admin/orders/show/'.$c->id)}}"
                                                   class="btn btn-info"
                                                   style="padding:2px 7px" target="_blank">
                                                    <i class="fa fa-eye"></i>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تغيير حالة الطلب'))
                                                <button title="تغيير حالة الطلب" type="button" class="btn btn-warning"
                                                        style="padding:0px 4px"
                                                        data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('المندوب الخاص الطلب'))
                                                <button title="المندوب" type="button" class="btn btn-primary"
                                                        style="padding:0px 6px"
                                                        data-toggle="modal" data-target="#delegate_{{$c->id}}">
                                                    <i class="fa fa-user"></i>
                                                </button>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('السائق الخاص الطلب'))
                                                <button title="السائق" type="button" class="btn btn-dark"
                                                        style="padding:0px 2px"
                                                        data-toggle="modal" data-target="#driver_{{$c->id}}">
                                                    <i class="fa fa-car"></i>
                                                </button>
                                                @endif
                                            </td>

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
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
                                                                <input type="hidden" name="order_id" value="{{$c->id}}">

                                                                <div class="row text-center">
                                                                    <div class="col-md-6">تم التجهيز</div>
                                                                    <div class="col-md-6">{{$c->prepared ?? "-"}}</div>
                                                                </div>
                                                                <hr>
                                                                <div class="row text-center">
                                                                    <div class="col-md-6">في الطريق</div>
                                                                    <div class="col-md-6">{{$c->on_way ?? "-"}}</div>
                                                                </div>
                                                                <hr>
                                                                <div class="row text-center">
                                                                    <div class="col-md-6">تم التوصيل</div>
                                                                    <div class="col-md-6">{{$c->delivered ?? "-"}}</div>
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

                                            <div class="modal fade" id="delegate_{{$c->id}}" tabindex="-1" role="dialog"
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
                                                                <input type="hidden" name="order_id" value="{{$c->id}}">

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

                                            <div class="modal fade" id="driver_{{$c->id}}" tabindex="-1" role="dialog"
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
                                                                <input type="hidden" name="order_id" value="{{$c->id}}">

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

@section('mapLocation')


@endsection
