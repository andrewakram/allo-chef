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
                                الشاشات الترحيبية
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">عن التطبيق</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('إضافة شاشة ترحيبية'))
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#subCat"><i
                                        class="icon-plus"></i>
                                اضافة شاشة ترحيبية
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
                                        <th scope="col">العنوان بالعربية</th>
                                        <th scope="col">العنوان بالانجليزية</th>
                                        <th scope="col">النص بالعربية</th>
                                        <th scope="col">النص بالانجليزية</th>
                                        <th scope="col"> الصورة</th>
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($abouts as $key => $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})">
                                            <td>{{$key+1}}</td>
                                            <td>
                                                {{$c->ar_title}}
                                            </td>
                                            <td>
                                                {{$c->en_title}}
                                            </td>
                                            <td>
                                                {{$c->ar_body}}
                                            </td>
                                            <td>
                                                {{$c->en_body}}
                                            </td>
                                            <td>
                                                <button title="عرض" type="button" class="btn btn-success"
                                                        data-toggle="modal" data-target="#image{{$c->id}}"
                                                        style="padding: 1px">
                                                    <img src="{{$c->image}}" width="50px" height="50px"/>
                                                </button>

                                                {{--==image==--}}
                                                <div class="modal fade" id="image{{$c->id}}" tabindex="-1" role="dialog"
                                                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <img src="{{$c->image}}"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                {{--==image==--}}

                                            </td>

                                            <td>
                                                @if(auth()->user()->hasPermissionTo('تعديل شاشة ترحيبية'))
                                                <button title="تعديل" type="button" class="btn btn-warning"
                                                        data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                @endif

                                                @if(auth()->user()->hasPermissionTo('حذف شاشة ترحيبية'))
                                                    <button title="حذف" type="button" class="btn btn-danger"
                                                            data-toggle="modal"
                                                            style="margin: 1px"
                                                            data-target="#delete_{{$c->id}}">
                                                        <i class="fa fa-trash"></i>
                                                    </button>
                                                @endif
                                            </td>

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">تعديل الشاشة
                                                                الترحيبية</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editExplain')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="model_id" value="{{$c->id}}">


                                                                <div class="form-group row ">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput"> العنوان بالعربية</label>
                                                                    <div class="col-lg-12">
                                                                        <textarea class="form-control" name="ar_title"
                                                                                  placeholder="العنوان بالعربية"
                                                                                  required
                                                                                  oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">{{$c->ar_title}}</textarea>
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row ">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">العنوان بالنجليزية</label>
                                                                    <div class="col-lg-12">
                                                                        <textarea class="form-control" name="en_title"
                                                                                  placeholder="العنوان بالنجليزية"
                                                                                  required
                                                                                  oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">{{$c->en_title}}</textarea>
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'en_name'])

                                                                <div class="form-group row ">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput"> النص بالعربية</label>
                                                                    <div class="col-lg-12">
                                                                        <textarea class="form-control" name="ar_body"
                                                                                  rows="5" placeholder="النص بالعربية"
                                                                                  required
                                                                                  oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">{{$c->ar_body}}</textarea>
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row ">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">النص بالنجليزية</label>
                                                                    <div class="col-lg-12">
                                                                        <textarea class="form-control" name="en_body"
                                                                                  rows="5" placeholder="النص بالنجليزية"
                                                                                  required
                                                                                  oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">{{$c->en_body}}</textarea>
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'en_name'])

                                                                <div class="form-group ">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الصورة</label>
                                                                    <input name="image" type="file"
                                                                           class="form-control btn-square">
                                                                </div>
                                                                @if($c->image != NULL)
                                                                    <div class="form-group ">
                                                                        <img src="{{$c->image}}" width="60px"
                                                                             height="60px">
                                                                    </div>
                                                                    {{--@else
                                                                        <div class="form-group ">
                                                                            <span>لا توجد صورة</span>
                                                                        </div>--}}
                                                                @endif


                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="reset" class="btn btn-dark"
                                                                        data-dismiss="modal">اغلاق
                                                                </button>
                                                                <button class="btn btn-primary" type="submit">تعديل
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="modal animated fadeIn" id="delete_{{$c->id}}" tabindex="-1"
                                                 style="text-align: right"
                                                 role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header btn-danger">
                                                            <h5 class="modal-title" id="exampleModalLabel">حذف الشاشة
                                                                الترحيبية</h5>
                                                            {{--                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
                                                            {{--                                                <span aria-hidden="true">&times;</span>--}}
                                                            {{--                                            </button>--}}
                                                        </div>
                                                        <form method="post" action="{{route('deleteAppExplanations')}}"
                                                              class="buttons">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <h4>هل انت متأكد ؟</h4>
                                                                <h6>
                                                                    انت علي وشك الحذف

                                                                </h6>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <input type="hidden" name="model_id" value="{{$c->id}}">
                                                                <button class="btn btn-dark" type="button"
                                                                        data-dismiss="modal">
                                                                    اغلاق
                                                                </button>
                                                                <button type="submit" class="btn btn-primary">تأكيد
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
                            </div>
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
                    <h5 class="modal-title" id="exampleModalLabel">اضافة شاشة ترحيبية</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal needs-validation was-validated" method="post"
                      action="{{route('app_explanations.store')}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">

                        <div class="form-group row ">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput"> العنوان
                                بالعربية</label>
                            <div class="col-lg-12">
                                <textarea class="form-control" name="ar_title" placeholder="العنوان بالعربية" required
                                          oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"></textarea>
                            </div>
                        </div>

                        <div class="form-group row ">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">العنوان
                                بالنجليزية</label>
                            <div class="col-lg-12">
                                <textarea class="form-control" name="en_title" placeholder="العنوان بالنجليزية" required
                                          oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"></textarea>
                            </div>
                        </div>

                        <div class="form-group row ">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput"> النص بالعربية</label>
                            <div class="col-lg-12">
                                <textarea class="form-control" name="ar_body" rows="5" placeholder="النص بالعربية"
                                          required
                                          oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"></textarea>
                            </div>
                        </div>

                        <div class="form-group row ">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">النص بالنجليزية</label>
                            <div class="col-lg-12">
                                <textarea class="form-control" name="en_body" rows="5" placeholder="النص بالنجليزية"
                                          required
                                          oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"></textarea>
                            </div>
                        </div>
                        @include('cp.layouts.error', ['input' => 'en_name'])

                        <div class="form-group ">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الصورة</label>
                            <input name="image" type="file" class="form-control btn-square" required
                                   >

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
