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
                                جدولة الطبخات
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الطبخات</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('إضافة طبخة للجدولة'))
                            <a href="{{route('addSchedualMeal')}}" class="btn btn-success" ><i
                                        class="icon-plus"></i>
                                اضافة طبخة للجدولة
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
                                        <th scope="col">اسم الطبخة</th>
                                        <th scope="col">العنوان بالعربي</th>
                                        <th scope="col">العنوان بالانجليزي</th>
                                        <th scope="col"> تاريح الاتاحة</th>
                                        <th scope="col">السعر قبل الخصم</th>
                                        <th scope="col">السعر بعد الخصم</th>
                                        <th scope="col">النقاط للطبخة</th>
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cities as $key => $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"
                                            class="">
                                            <td>{{$loop->iteration}}</td>
                                            <td>{{$c->meal ? $c->meal->name_ar : "-"}}</td>
                                            <td>{{$c->lable_ar}}</td>
                                            <td>{{$c->lable_en}}</td>
                                            <td>{{$c->publish_date}}</td>
                                            <td>{{$c->price_before}}</td>
                                            <td>{{$c->price_after}}</td>
                                            <td>{{$c->points}}</td>
                                            <td>

                                                @if(auth()->user()->hasPermissionTo('تفاصيل جدولة الطبخة'))
                                                <a href="{{route('showSchedualMealDetails',$c->id)}}">
                                                    <button title="عرض التفاصيل" class="btn btn-info">
                                                        <i class="fa fa-eye"></i>
                                                    </button>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تعديل جدولة طبخة'))
                                                <a href="{{route('editSchedualMeal',$c->id)}}">
                                                    <button title="تعديل" class="btn btn-warning">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                </a>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('حذف جدولة طبخة'))
                                                <button title="حذف" type="button" class="btn btn-danger"
                                                        data-toggle="modal" data-target="#delete_{{$c->id}}">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                                {{--                            modal--}}
                                                @endif
                                                <div class="modal animated fadeIn" id="delete_{{$c->id}}" tabindex="-1"
                                                     role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
                                                     style="text-align:right">
                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header btn-danger">
                                                                <h5 class="modal-title" id="exampleModalLabel">حذف الحقل</h5>
                                                                {{--                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
                                                                {{--                                                <span aria-hidden="true">&times;</span>--}}
                                                                {{--                                            </button>--}}
                                                            </div>
                                                            {{--                                        <form method="get"  class="buttons">--}}

                                                            <div class="modal-body">
                                                                <h4>هل انت متأكد ؟</h4>
                                                                <h6>
                                                                    انت علي وشك حذف هذا الحقل
                                                                </h6>
                                                            </div>
                                                            <div class="modal-footer">
                                                                {{--                                                <input type="hidden" name="model_id" value="{{$meal->id}}">--}}
                                                                <button class="btn btn-dark" type="button" data-dismiss="modal">
                                                                    اغلاق
                                                                </button>
                                                                <a href="{{route('deleteSchedualMeal',$c->id)}}" class="btn btn-danger"
                                                                   title="حذف">
                                                                    تأكيد
                                                                </a>
                                                            </div>
                                                            {{--                                        </form>--}}
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>


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
