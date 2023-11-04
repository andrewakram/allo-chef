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
                                الطبخات
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الطبخات</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('إضافة طبخة'))
                            <a href="{{route('addMeal')}}" class="btn btn-success"><i
                                        class="icon-plus"></i>
                                اضافة طبخة
                            </a>
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
                                        <th scope="col">رقم الطبخة</th>
                                        <th scope="col">الاسم بالعربي</th>
                                        <th scope="col">الاسم بالانجليزي</th>
                                        <th scope="col">الوزن بالجرام</th>
                                        <th scope="col"> عدد الافراد</th>
                                        <th scope="col">السعر الافتراضي للطبخة</th>
                                        <th scope="col">النقاط الافتراضية للطبخة</th>
                                        <th scope="col">رابط الشرح</th>
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cities as $key => $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"
                                            class="">
                                            <td>{{$key+1}}</td>
                                            <td>{{$c->meal_no}}</td>
                                            <td>{{$c->name_ar}}</td>
                                            <td>{{$c->name_en}}</td>
                                            <td>{{$c->grams}}</td>
                                            <td>{{$c->persons}}</td>
                                            <td>{{$c->price}}</td>
                                            <td>{{$c->points}}</td>
                                            <td>
                                                @if($c->url)
                                                    <a href="{{$c->url}}" target="_blank">
                                                        الرابط
                                                    </a>
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td>
                                                @if(auth()->user()->hasPermissionTo('إضافة صورة للطبخة'))
                                                <button title="اضف صورة للطبخة" type="button" class="btn btn-success"
                                                        data-toggle="modal" data-target="#add_image_{{$c->id}}">
                                                    <i class="fa fa-plus-square"></i>
                                                </button>
                                                @endif

                                                @if(auth()->user()->hasPermissionTo('تفاصيل الطبخة'))
                                                <a href="{{route('showMealDetails',$c->id)}}">
                                                    <button title="عرض التفاصيل" class="btn btn-info">
                                                        <i class="fa fa-eye"></i>
                                                    </button>
                                                @endif
                                                </a>

                                                @if(auth()->user()->hasPermissionTo('تعديل طبخة'))
                                                <a href="{{route('editMeal',$c->id)}}">
                                                    <button title="تعديل" class="btn btn-warning">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                </a>
                                                @endif
                                            </td>

                                            <div class="modal fade" id="add_image_{{$c->id}}" tabindex="-1"
                                                 role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">
                                                                اضف صورة للطبخة</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('addMealImage')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="meal_id" value="{{$c->id}}">

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">اختر صورة</label>
                                                                    <div class="col-lg-12">
                                                                        <input name="image"
                                                                               type="file"
                                                                               class="form-control btn-square"
                                                                               required
                                                                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                                                    </div>
                                                                </div>


                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="reset" class="btn btn-dark"
                                                                        data-dismiss="modal">اغلاق
                                                                </button>
                                                                <button class="btn btn-success" type="submit">حفظ
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
                    <h5 class="modal-title" id="exampleModalLabel">اضافة طبخة</h5>
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
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الاسم
                                بالانجليزية</label>
                            <div class="col-lg-12">
                                <input id="name" name="name_en" type="text" placeholder="الاسم بالانجليزية"
                                       class="form-control btn-square" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">عدد ايام الطبخة</label>
                            <div class="col-lg-12">
                                <input name="days"
                                       placeholder="عدد ايام الطبخة"
                                       class="form-control btn-square"
                                       type="number" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">سعر الطبخة</label>
                            <div class="col-lg-12">
                                <input name="price"
                                       placeholder="سعر الطبخة"
                                       class="form-control btn-square"
                                       type="number" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">نقاط الطبخة</label>
                            <div class="col-lg-12">
                                <input name="points"
                                       placeholder="نقاط الطبخة"
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
