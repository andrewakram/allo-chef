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
                                الباقات
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الباقات</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('إضافة باقة'))
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#subCat"><i
                                        class="icon-plus"></i>
                                اضافة باقة
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
                                        <th scope="col">الاسم بالعربي</th>
                                        <th scope="col">الاسم بالانجليزي</th>
                                        <th scope="col">عدد ايام الباقة</th>
                                        <th scope="col">سعر الباقة</th>
                                        <th scope="col">نقاط الباقة</th>
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cities as $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"
                                            class="{{$c->active == 0 ? 'table-danger' :''}}">
                                            <td>{{$c->id}}</td>
                                            <td>{{$c->name_ar}}</td>
                                            <td>{{$c->name_en}}</td>
                                            <td>{{$c->days}}</td>
                                            <td>{{$c->price}}</td>
                                            <td>{{$c->points}}</td>
{{--                                            <td>{{$c->country->name}}</td>--}}
                                            <td>
                                                @if(auth()->user()->hasPermissionTo('تعديل باقة'))
                                                    <button title="تعديل" type="button" class="btn btn-warning"
                                                            data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تفعيل باقة'))
                                                    @if($c->active == 1)
                                                        <a href="{{route('editPackageStatus',$c->id)}}">
                                                            <button title="الغاء تفعيل" class="btn btn-danger">
                                                                <i class="fa fa-minus-circle"></i>
                                                            </button>
                                                        </a>
                                                    @else
                                                        <a href="{{route('editPackageStatus',$c->id)}}">
                                                            <button title="تفعيل" class="btn btn-success">
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
                                                            <h5 class="modal-title" id="exampleModalLabel">تعديل
                                                                باقة</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editPackage')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="city_id" value="{{$c->id}}">


                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الاسم بالعربي</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="name_ar" type="text"
                                                                               placeholder="الاسم بالعربي"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->name_ar}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الاسم بالانجليزي</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="name_en" type="text"
                                                                               placeholder="الاسم بالانجليزي"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->name_en}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">عدد ايام الباقة</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="days" type="text"
                                                                               placeholder="عدد ايام الباقة"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->days}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">سعر الباقة</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="price"
                                                                               placeholder="سعر الباقة" type="number"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->price}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">نقاط الباقة</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="points"
                                                                               placeholder="نقاط الباقة" type="number"
                                                                               class="form-control btn-square"
                                                                               value="{{$c->points}}" required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
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
                    <h5 class="modal-title" id="exampleModalLabel">اضافة باقة</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal needs-validation was-validated" method="post"
                      action="{{route('packages.store')}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">


                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الاسم بالعربية</label>
                            <div class="col-lg-12">
                                <input id="name" name="name_ar" type="text" placeholder="الاسم بالعربية"
                                       class="form-control btn-square" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الاسم بالانجليزية</label>
                            <div class="col-lg-12">
                                <input id="name" name="name_en" type="text" placeholder="الاسم بالانجليزية"
                                       class="form-control btn-square" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">عدد ايام الباقة</label>
                            <div class="col-lg-12">
                                <input name="days"
                                       placeholder="عدد ايام الباقة"
                                       class="form-control btn-square"
                                       type="number" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">سعر الباقة</label>
                            <div class="col-lg-12">
                                <input name="price"
                                       placeholder="سعر الباقة"
                                       class="form-control btn-square"
                                       type="number" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">نقاط الباقة</label>
                            <div class="col-lg-12">
                                <input name="points"
                                       placeholder="نقاط الباقة"
                                       class="form-control btn-square"
                                       type="number" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

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
