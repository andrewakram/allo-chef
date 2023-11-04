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
                                عن التطبيق
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">عن التطبيق</li>
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
                                    <thead class="">
                                    <tr>
                                        {{--<th scope="col">#</th>--}}
                                        <th scope="col"> الصورة</th>
                                        <th scope="col">النص بالعربية</th>
                                        <th scope="col">النص بالانجليزية</th>
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($abouts as $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})">
                                            {{--<td>{{$c->id}}</td>--}}
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
                                            <td>{{$c->body_ar}}
{{--                                                <textarea class="form-control" name="body_ar" rows="15"--}}
{{--                                                          placeholder="النص بالعربية">{{$c->body_ar}}</textarea>--}}
                                            </td>
                                            <td>{{$c->body_en}}
{{--                                                <textarea class="form-control" name="body_en" rows="15"--}}
{{--                                                          placeholder="النص بالنجليزية"--}}
{{--                                                          dir="ltr">{{$c->body_en}}</textarea>--}}
                                            </td>


                                            <td>
                                                @if(auth()->user()->hasPermissionTo('تعديل عن التطبيق'))
                                                <button title="تعديل" type="button" class="btn btn-warning"
                                                        data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                @endif
                                            </td>

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">تعديل عن
                                                                التطبيق</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editAbout')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="term_id" value="{{$c->id}}">


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

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput"> النص بالعربية</label>
                                                                    <div class="col-lg-12">
                                                                        <textarea class="form-control" name="body_ar"
                                                                                  rows="10" placeholder="النص بالعربية"
                                                                                  required
                                                                                  oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">{{$c->body_ar}}</textarea>
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'ar_name'])

                                                                <div class="form-group row {{ $errors->has('en_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">النص بالنجليزية</label>
                                                                    <div class="col-lg-12">
                                                                        <textarea class="form-control" name="body_en"
                                                                                  rows="10"
                                                                                  placeholder="النص بالنجليزية" required
                                                                                  oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">{{$c->body_en}}</textarea>
                                                                    </div>
                                                                </div>
                                                                @include('cp.layouts.error', ['input' => 'en_name'])


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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->

    </div>


@endsection
