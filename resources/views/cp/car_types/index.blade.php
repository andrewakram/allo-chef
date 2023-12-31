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
                                <i data-feather="home"></i>
                                انواع مركبات المناديب
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الدول</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('اضافة سيارة'))
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#subCat"><i class="icon-plus"></i>
                                اضافة نوع مركبة
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
                <div class="col-sm-12 col-lg-12 col-xl-12">
                    <div class="table-responsive">
                        <table class="table" id="myTable">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">الاسم </th>
{{--                                <th scope="col">الاسم بالانجليزية</th>--}}
{{--                                <th scope="col"> الصورة</th>--}}
{{--                                <th scope="col">كود الدولة</th>--}}
                                <th scope="col">الاختيارات</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($countries as $c)
                                <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"  class="{{$c->active == 0 ? 'table-danger' :''}}">
                                    <td>{{$c->id}}</td>
                                    <td>{{$c->name}}</td>
{{--                                    <td>{{$c->name_en}}</td>--}}

{{--                                    @if($c->image != NULL)--}}
{{--                                        <th><img src="{{$c->image}}"  width="50px" height="50px"></th>--}}
{{--                                    @else--}}
{{--                                        <th> - </th>--}}
{{--                                    @endif--}}

{{--                                    <td>{{$c->code}}</td>--}}
                                    <td>
                                        @if(auth()->user()->hasPermissionTo('تعديل سيارة'))
                                        <button title="تعديل" type="button" class="btn btn-warning" data-toggle="modal" data-target="#edit_{{$c->id}}">
                                            <i class="fa fa-edit"></i>
                                        </button>

                                            @if($c->active == 1)
                                                <a href="{{route('editCarTypeStatus',$c->id)}}" >
                                                    <button title="الغاء تفعيل" class="btn btn-danger">
                                                        <i class="fa fa-minus-circle"></i>
                                                    </button>
                                                </a>
                                            @else
                                                <a href="{{route('editCarTypeStatus',$c->id)}}"  >
                                                    <button title="تفعيل" class="btn btn-success">
                                                        <i class="fa fa-plus-circle"></i>
                                                    </button>
                                                </a>
                                            @endif
                                        @endif

{{--                                        @if($c->active == 1)--}}
{{--                                                <a href="{{route('editCountryStatus',$c->id)}}" >--}}
{{--                                                    <button title="الغاء تفعيل" class="btn btn-danger">--}}
{{--                                                        <i class="fa fa-minus-circle"></i>--}}
{{--                                                    </button>--}}
{{--                                                </a>--}}
{{--                                            @else--}}
{{--                                                <a href="{{route('editCountryStatus',$c->id)}}"  >--}}
{{--                                                    <button title="تفعيل" class="btn btn-success">--}}
{{--                                                        <i class="fa fa-plus-circle"></i>--}}
{{--                                                    </button>--}}
{{--                                                </a>--}}
{{--                                            @endif--}}
                                    </td>

                                    <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">تعديل نوع مركبة</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form class="form-horizontal" method="post" action="{{route('editCarType')}}" enctype="multipart/form-data">
                                                    {{csrf_field()}}
                                                    <div class="modal-body">
                                                        <input type="hidden" name="country_id" value="{{$c->id}}">


                                                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الاسم </label>
                                                            <div class="col-lg-12">
                                                                <input name="name" type="text" placeholder="الاسم " class="form-control btn-square" value="{{$c->name}}" required>
                                                            </div>
                                                        </div>


                                                    </div>


                                                    <div class="modal-footer">
                                                        <button type="reset" class="btn btn-dark" data-dismiss="modal">اغلاق</button>
                                                        <button class="btn btn-primary" type="submit">تعديل</button>
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
                    </div>{{--{{$countries->links()}}--}}
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->

    </div>

    <div class="modal fade" id="subCat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">اضافة نوع مركبة</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal needs-validation was-validated" method="post" action="{{route('car_types.store')}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">


                        <div class="form-group row">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الاسم </label>
                            <div class="col-lg-12">
                                <input id="name" name="name" type="text" placeholder="الاسم " class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-dark" data-dismiss="modal">اغلاق</button>
                        <button class="btn btn-primary">حفظ</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
