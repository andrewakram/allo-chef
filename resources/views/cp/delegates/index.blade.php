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
                                المناديب
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">المستخدمين</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('إضافة مندوب'))
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#subCat"><i
                                        class="icon-plus"></i>
                                اضافة مندوب
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
                                        <th scope="col" style="text-align: right">#</th>
                                        <th scope="col"> الاسم</th>
                                        <th scope="col">الموبايل</th>
                                        <th scope="col"> البريد الالكتروني</th>
                                        <th scope="col">رقم الهوية</th>
                                        <th scope="col"> حالة الايقاف</th>
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
                                            <td>{{$c->phone}}</td>
                                            <td>{{$c->email}}</td>
                                            <td>{{$c->id_num}}</td>

                                            <td>
                                                @if($c->suspend == 1)
                                                    <i class="font-success show icon-check"></i>
                                                @else
                                                    <i class="font-danger show icon-close"></i>
                                                @endif
                                            </td>
                                            <td>
                                                @if(auth()->user()->hasPermissionTo('طلبات المندوب'))
                                                <a href="{{asset('admin/users/orders/'.$c->id)}}">
                                                    <button title="طلبات المندوب " class="btn btn-info">
                                                        <i class="fa fa-shopping-cart"></i>
                                                    </button>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تعديل مندوب'))
                                                <button title="تعديل" type="button" class="btn btn-warning"
                                                        data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تفعيل مندوب'))
                                                    @if($c->suspend == 0)
                                                        <a href="{{route('editDelegateStatus',$c->id)}}">
                                                            <button title="ايقاف " class="btn btn-danger">
                                                                <i class="fa fa-minus-circle"></i>
                                                            </button>
                                                        </a>
                                                    @else
                                                        <a href="{{route('editDelegateStatus',$c->id)}}">
                                                            <button title="اعادة تشغيل " class="btn btn-success">
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
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">
                                                                تعديل بيانات المندوب
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editDelegate')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="user_id" value="{{$c->id}}">


                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الاسم </label>
                                                                    <div class="col-lg-12">
                                                                        <input name="name" type="text"
                                                                               placeholder="الاسم "
                                                                               class="form-control btn-square"
                                                                               value="{{$c->name}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">البريد الالكتروني</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="email" type="email"
                                                                               placeholder="البريد الالكتروني"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->email}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">رقم الهوية</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="id_num" type="number"
                                                                               placeholder="رقم الهوية"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->id_num}}">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الهاتف</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="phone" type="tel"
                                                                               placeholder="الهاتف"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->phone}}" required
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
                            </div>{{--{{$users->links()}}--}}
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
                    <h5 class="modal-title" id="exampleModalLabel">اضافة مندوب</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal needs-validation was-validated" method="post"
                      action="{{route('delegates.store')}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">


                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الاسم </label>
                            <div class="col-lg-12">
                                <input id="name" name="name" type="text" placeholder="الاسم "
                                       class="form-control btn-square" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">البريد الالكتروني</label>
                            <div class="col-lg-12">
                                <input id="email" name="email" type="email" placeholder="البريد الالكتروني"
                                       class="form-control btn-square" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">رقم الهوية</label>
                            <div class="col-lg-12">
                                <input name="id_num" type="number"
                                       placeholder="رقم الهوية"
                                       class="form-control btn-square"
                                       >
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الهاتف</label>
                            <div class="col-lg-12">
                                <input id="phone" name="phone" type="tel" placeholder="الهاتف"
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
