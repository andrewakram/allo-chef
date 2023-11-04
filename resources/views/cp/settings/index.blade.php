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
                                الاعدادات
                            </h3>
                            @if(auth()->user()->hasPermissionTo('تعديل الإعدادات'))
                            <button title="تعديل" type="button" class="btn btn-warning"
                                    data-toggle="modal" data-target="#edit_setting">
                                <i class="fa fa-edit"></i>
                                تعديل البيانات
                            </button>
                            @endif
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
                                        {{--<th scope="col">#</th>--}}
                                        <th scope="col">العنصر</th>
                                        <th scope="col">القيمة</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <tr id="">


                                        <td>
                                            النسبة المئوية الزيادة علي وجبات ال vip
                                        </td>
                                        <td>
                                            <b class="badge badge-dark"
                                               style="font-size: large">
                                                {{$data->meal_price_percentage}}
                                                %
                                            </b>
                                        </td>

                                    </tr>
                                    <tr id="">


                                        <td>
                                            قيمة النقطة مقابل الجنية المصري
                                        </td>
                                        <td>
                                            <b class="badge badge-dark"
                                               style="font-size: large">
                                                {{$data->point_equality_in_egp}}
                                                ج.م
                                            </b>
                                        </td>

                                    </tr>
                                    <tr id="">


                                        <td>
                                            القيمة الإفتراضية للتوصيل بالجنية المصري
                                        </td>
                                        <td>
                                            <b class="badge badge-dark"
                                               style="font-size: large">
                                                {{$data->delivery_cost_in_egp}}
                                                ج.م
                                            </b>
                                        </td>

                                    </tr>
                                    <div class="modal fade" id="edit_setting" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">
                                                    تعديل البيانات
                                                    </h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form class="form-horizontal" method="post"
                                                      action="{{route('edit_settings')}}"
                                                      enctype="multipart/form-data">
                                                    {{csrf_field()}}
                                                    <div class="modal-body">

                                                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                            <label class="col-lg-12 control-label text-lg-right"
                                                                   for="textinput">
                                                                النسبة المئوية الزيادة علي وجبات ال vip
                                                            </label>
                                                            <div class="col-lg-12">
                                                                <input class="form-control"
                                                                       name="meal_price_percentage"
                                                                       value="{{$data->meal_price_percentage}}"
                                                                       type="number" placeholder=" " required>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">

                                                            <label class="col-lg-12 control-label text-lg-right"
                                                                   for="textinput">
                                                                قيمة النقطة مقابل الجنية المصري
                                                            </label>
                                                            <div class="col-lg-12">
                                                                <input class="form-control"
                                                                       name="point_equality_in_egp"
                                                                       value="{{$data->point_equality_in_egp}}"
                                                                       type="number" placeholder=" " required step="0.01">
                                                            </div>
                                                        </div>

                                                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">

                                                            <label class="col-lg-12 control-label text-lg-right"
                                                                   for="textinput">
                                                                القيمة الإفتراضية للتوصيل بالجنية المصري
                                                            </label>
                                                            <div class="col-lg-12">
                                                                <input class="form-control"
                                                                       name="delivery_cost_in_egp"
                                                                       value="{{$data->delivery_cost_in_egp}}"
                                                                       type="number" placeholder=" " required>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="reset" class="btn btn-dark"
                                                                data-dismiss="modal">اغلاق
                                                        </button>
                                                        <button class="btn btn-warning" type="submit">تعديل</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    {{--<tbody id="sub_cats_{{$category->id}}"></tbody>--}}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->

    </div>


@endsection
