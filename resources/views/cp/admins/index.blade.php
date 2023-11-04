@extends('cp.index')
@section('content')
    <style>
        .modal-content {
            width: 120%;
        }
    </style>
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
                                المشرفين
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">المستخدمين</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('اضافة مشرف'))
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#subCat">
                                    <i class="icon-plus"></i>
                                    اضافة مشرف
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
                                    <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col"> الاسم</th>
                                        <th scope="col"> الصورة</th>
                                        <th scope="col">الموبايل</th>
                                        <th scope="col"> البريد الالكتروني</th>
                                        {{--<th scope="col"> المدينة </th>--}}
                                        <th scope="col"> الحالة</th>
                                        <th scope="col">الاختيارات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($users as $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})"
                                            class="{{$c->active == 0 ? 'table-danger' :''}}">
                                            <td>{{$c->id}}</td>
                                            <td>{{$c->name}}</td>
                                            @if($c->image)
                                                <td>
                                                    <button title="عرض" type="button" class="btn btn-warning"
                                                            data-toggle="modal" data-target="#image{{$c->id}}"
                                                            style="padding: 1px">
                                                        <img src="{{$c->image}}" width="30px" height="30px"></img>
                                                    </button>

                                                    {{--==image==--}}
                                                    <div class="modal fade" id="image{{$c->id}}" tabindex="-1"
                                                         role="dialog"
                                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <img src="{{$c->image}}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {{--==image==--}}
                                                </td>
                                            @else
                                                <th> -</th>
                                            @endif

                                            <td>{{$c->phone}}</td>
                                            <td>{{$c->email}}</td>
                                            {{--<td>{{$c->name_en}} / {{$c->name_ar}}</td>--}}
                                            <td>
                                                @if($c->active == 1)
                                                    <i class="font-success show icon-check"></i>
                                                @else
                                                    <i class="font-danger show icon-close"></i>
                                                @endif
                                            </td>
                                            <td>
                                                @if(auth()->user()->hasPermissionTo('تفعيل مشرف'))
                                                    @if($c->active == 1)
                                                        <a href="{{route('editAdminStatus',$c->id)}}">
                                                            <button title="ايقاف " class="btn btn-danger">
                                                                <i class="fa fa-minus-circle"></i>
                                                            </button>
                                                        </a>
                                                    @else
                                                        <a href="{{route('editAdminStatus',$c->id)}}">
                                                            <button title="اعادة تشغيل " class="btn btn-success">
                                                                <i class="fa fa-plus-circle"></i>
                                                            </button>
                                                        </a>
                                                    @endif
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('تعديل مشرف'))
                                                    <button title="تعديل" type="button" class="btn btn-warning"
                                                            data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                @endif
                                                @if(auth()->user()->hasPermissionTo('حذف مشرف'))
                                                    <a href="{{route('deleteAdmin',$c->id)}}" data-original-title=""
                                                       title="">
                                                        <button title="" class="btn btn-danger"
                                                                data-original-title="حذف">
                                                            <i class="fa fa-trash"></i>
                                                        </button>
                                                    </a>
                                                @endif
                                            </td>

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">تعديل
                                                                المشرف </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editAdmin')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="model_id" value="{{$c->id}}">


                                                                <div class="form-group ">
                                                                    <label style="float: right">اسم العميل</label>
                                                                    <input id="name" type="text"
                                                                           class="form-control @error('name') is-invalid @enderror"
                                                                           name="name" required
                                                                           oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"
                                                                           autocomplete="name"
                                                                           value="{{$c->name}}"
                                                                           autofocus placeholder="اسم العميل">
                                                                    @error('name')
                                                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                                                    @enderror
                                                                    {{--<input name="userName" type="text" class="form-control" placeholder="اسم العميل">--}}
                                                                </div>

                                                                <div class="form-group ">
                                                                    <label style="float: right">البريد
                                                                        الالكتروني</label>
                                                                    <input id="email" type="email"
                                                                           class="form-control @error('email') is-invalid @enderror"
                                                                           name="email" required
                                                                           oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"
                                                                           autocomplete="email"
                                                                           value="{{$c->email}}"
                                                                           placeholder="البريد الالكتروني">
                                                                    @error('email')
                                                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                                                    @enderror
                                                                    {{--<input name="userEmail" type="email" class="form-control" placeholder="البريد الالكتروني">--}}
                                                                </div>

                                                                <div class="form-group ">
                                                                    <label style="float: right">الهاتف</label>
                                                                    <input id="phone" type="text" class="form-control"
                                                                           name="phone"
                                                                           required
                                                                           value="{{$c->phone}}"
                                                                           oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"
                                                                           autocomplete="phone" placeholder="الهاتف">

                                                                </div>

                                                                <div class="form-group ">
                                                                    <label style="float: right">كلمة المرور</label>
                                                                    <input id="password" type="password"
                                                                           class="form-control @error('password') is-invalid @enderror"
                                                                           name="password"


                                                                           placeholder="كلمة المرور">
                                                                    @error('password')
                                                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                                                    @enderror
                                                                    {{--<input name="userPassword" type="password" class="form-control" placeholder="كلمة المرور">--}}
                                                                </div>


                                                                <div class="form-group">
                                                                    <label style="float: right">الصورة</label>
                                                                    <input name="image" type="file"
                                                                           class="form-control">
                                                                </div>

                                                                <div class="clearfix"></div>
                                                                <hr>
                                                                <h3 class="" style="float: right;">الصلاحيات</h3>
                                                                <div class="row">
                                                                    <br>
                                                                    @foreach($permissions as $permission)
                                                                        <div class="col-md-4 mb-4">
                                                                            <div class="" style="float: right;">
                                                                                <input class="checkbox_animated"
                                                                                       id="{{$permission->id}}"
                                                                                       value="{{$permission->name}}"
                                                                                       @if($c->hasPermissionTo($permission->name)) checked
                                                                                       @endif
                                                                                       type="checkbox"
                                                                                       name="permissions[]">
                                                                                <label class="mb-0"
                                                                                       for="{{$permission->id}}">{{$permission->name}}</label>

                                                                            </div>
                                                                        </div>

                                                                    @endforeach
                                                                </div>


                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="reset" class="btn btn-dark"
                                                                        data-dismiss="modal">
                                                                    اغلاق
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
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">اضافة مشرف</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal needs-validation was-validated" method="post"
                      action="{{ route('createAdmin') }}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">


                        <div class="form-group ">
                            <label style="float: right">اسم العميل</label>
                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror"
                                   name="name" value="{{ old('name') }}" required
                                   oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')" autocomplete="name"
                                   autofocus placeholder="اسم العميل">
                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                            {{--<input name="userName" type="text" class="form-control" placeholder="اسم العميل">--}}
                        </div>

                        <div class="form-group ">
                            <label style="float: right">البريد الالكتروني</label>
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                   name="email" value="{{ old('email') }}" required
                                   oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')" autocomplete="email"
                                   placeholder="البريد الالكتروني">
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                            {{--<input name="userEmail" type="email" class="form-control" placeholder="البريد الالكتروني">--}}
                        </div>

                        <div class="form-group ">
                            <label style="float: right">الهاتف</label>
                            <input id="phone" type="text" class="form-control" name="phone" value="{{ old('phone') }}"
                                   required oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"
                                   autocomplete="phone" placeholder="الهاتف">

                        </div>

                        <div class="form-group ">
                            <label style="float: right">كلمة المرور</label>
                            <input id="password" type="password"
                                   class="form-control @error('password') is-invalid @enderror" name="password" required
                                   oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')"
                                   autocomplete="new-password" placeholder="كلمة المرور">
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                            {{--<input name="userPassword" type="password" class="form-control" placeholder="كلمة المرور">--}}
                        </div>

                        <div class="form-group">
                            <label style="float: right">الصورة</label>
                            <input name="image" type="file" class="form-control">
                        </div>

                        <div class="clearfix"></div>
                        <hr>
                        <h3 class="" style="float: right;">الصلاحيات</h3>
                        <div class="row">
                            <br>
                            @foreach($permissions as $perm)
                                <div class="col-md-4 mb-4">
                                    <div class="" style="float: right;">
                                        <input class="checkbox_animated" id="{{$perm->id}}" value="{{$perm->name}}"
                                               type="checkbox" name="permissions[]">
                                        <label class="mb-0" for="{{$perm->id}}">{{$perm->name}}</label>

                                    </div>
                                </div>

                            @endforeach
                        </div>

                        <div class="clearfix"></div>

                        <div class="box-footer form-group">
                            {{--<button type="submit" class="btn btn-primary">حفظ</button>--}}
                            <button type="submit" class="btn btn-success">
                            <!--{{ __('Register') }}-->
                                حفظ
                            </button>
                        </div>

                    </div>
                    <!-- /.box-body -->


                </form>
            </div>
        </div>
    </div>

@endsection
