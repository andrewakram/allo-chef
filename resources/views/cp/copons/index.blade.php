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
                                الكوبونات
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الكوبونات</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('إضافة كوبون'))
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#subCat"><i
                                        class="icon-plus"></i>
                                اضافة كوبون
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
                                        <th scope="col">#</th>
                                        <th scope="col">كود الخصم</th>
                                        <th scope="col">قيمة الخصم</th>
                                        <th scope="col">الحد الادني للطلب</th>
                                        <th scope="col">الحد الاقصي للطلب</th>
                                        <th scope="col">تاريخ الانتهاء</th>
                                        <th scope="col">الوصف بالعربي</th>
                                        <th scope="col">الوصف بالانجليزي</th>
                                        {{--                                <th scope="col">الدولة التابع لها</th>--}}
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cities as $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"
                                            class="">
                                            <td>{{$c->id}}</td>
                                            <td>{{$c->code}}</td>
                                            <td>{{$c->discount}}</td>
                                            <td>{{$c->min_order}}</td>
                                            <td>{{$c->max_order}}</td>
                                            <td>{{$c->expire_at}}</td>
                                            <td>{{$c->description_ar}}</td>
                                            <td>{{$c->description_en}}</td>
{{--                                            <td>{{$c->country->name}}</td>--}}
                                            <td>
                                                @if(auth()->user()->hasPermissionTo('تعديل كوبون'))
                                                    <button title="تعديل" type="button" class="btn btn-warning"
                                                            data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                @endif
{{--                                               
{{--                                            </td>--}}

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">تعديل
                                                                كوبون</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editCopon')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="city_id" value="{{$c->id}}">

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">كود الخصم</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="code" type="text"
                                                                               placeholder="كود الخصم"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->code}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>


                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">قيمة الخصم</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="discount" type="number"
                                                                               placeholder="قيمة الخصم"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->discount}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الحد الادني للطلب</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="min_order" type="number"
                                                                               placeholder="الحد الادني للطلب"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->min_order}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الحد الاقصي للطلب</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="max_order" type="number"
                                                                               placeholder="الحد الاقصي للطلب"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->max_order}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">تاريخ الانتهاء</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="expire_at" type="date" placeholder="تاريخ الانتهاء"
                                                                               value="{{$c->expire_at}}" class="form-control btn-square"
                                                                               required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">

                                                                    </div>
                                                                </div>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الوصف بالعربي</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="description_ar" type="text"
                                                                               placeholder="الوصف بالعربي"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->description_ar}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الوصف بالانجليزي</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="description_en" type="text"
                                                                               placeholder="الوصف بالانجليزي"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->description_en}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])


{{--                                                                <div class="form-group row {{ $errors->has('en_name') ? ' has-error' : '' }}">--}}
{{--                                                                    <label class="col-lg-12 control-label text-lg-right"--}}
{{--                                                                           for="textinput">الدول التابع لها</label>--}}
{{--                                                                    <div class="col-lg-12">--}}
{{--                                                                        <select name="country_id"--}}
{{--                                                                                class="btn form-control b-light digits"--}}
{{--                                                                                required--}}
{{--                                                                                oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">--}}
{{--                                                                            @foreach($countries as $country)--}}
{{--                                                                                <option value="{{$country->id}}" {{$country->id == $c->country_id ? "selected" : ""}}>{{$country->name}}</option>--}}
{{--                                                                            @endforeach--}}
{{--                                                                        </select>--}}
{{--                                                                    </div>--}}
{{--                                                                </div>--}}
{{--                                                                @include('cp.layouts.error', ['input' => 'en_name'])--}}


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
                            </div>{{--{{$cities->links()}}--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->

    </div>

    <div class="modal fade" id="subCat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">اضافة كوبون</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal needs-validation was-validated" method="post"
                      action="{{route('copons.store')}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">كود الخصم</label>
                            <div class="col-lg-12">
                                <input name="code" type="text"
                                       placeholder="كود الخصم"
                                       class="form-control btn-square"
                                        required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>


                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">قيمة الخصم</label>
                            <div class="col-lg-12">
                                <input name="discount" type="number"
                                       placeholder="قيمة الخصم"
                                       class="form-control btn-square"
                                        required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">الحد الادني للطلب</label>
                            <div class="col-lg-12">
                                <input name="min_order" type="number"
                                       placeholder="الحد الادني للطلب"
                                       class="form-control btn-square"
                                        required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">الحد الاقصي للطلب</label>
                            <div class="col-lg-12">
                                <input name="max_order" type="number"
                                       placeholder="الحد الاقصي للطلب"
                                       class="form-control btn-square"
                                        required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">تاريخ الانتهاء</label>
                            <div class="col-lg-12">
                                <input name="expire_at" type="date" placeholder="تاريخ الانتهاء"
                                        class="form-control btn-square"
                                       required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الوصف بالعربية</label>
                            <div class="col-lg-12">
                                <input id="name" name="description_ar" type="text" placeholder="الوصف بالعربية"
                                       class="form-control btn-square" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الوصف بالانجليزية</label>
                            <div class="col-lg-12">
                                <input id="name" name="description_en" type="text" placeholder="الوصف بالانجليزية"
                                       class="form-control btn-square" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>

{{--                        <div class="form-group row {{ $errors->has('en_name') ? ' has-error' : '' }}">--}}
{{--                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الدول التابع--}}
{{--                                لها</label>--}}
{{--                            <div class="col-lg-12">--}}
{{--                                <select name="country_id" class="btn form-control b-light digits" required--}}
{{--                                        oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">--}}
{{--                                    @foreach($countries as $country)--}}
{{--                                        <option value="{{$country->id}}">{{$country->name}}</option>--}}
{{--                                    @endforeach--}}
{{--                                </select>--}}
{{--                            </div>--}}
{{--                        </div>--}}

                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-dark" data-dismiss="modal">اغلاق</button>
                        <button class="btn btn-success">حفظ</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


@endsection
