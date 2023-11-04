@extends('cp.index')
@section('content')
    <div class="page-body" dir="rtl">
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <div class="page-header-right">


                            <?php if(session()->has('insert_message')): ?>
                            <div class="alert alert-success dark alert-dismissible fade show col-lg-3" role="alert">
                                <i class="icon-thumb-up"></i>
                                <b>
                                    <?php echo e(session()->get('insert_message')); ?>
                                </b>
                                <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <?php endif; ?>

                            @if($errors->any())
                                <div class="alert alert-danger dark alert-dismissible fade show col-lg-3" role="alert">
                                    <i class="icon-thumb-down"></i>
                                    <b>
                                        @if ($errors)
                                            <?php echo "من فضلك اكمل ادخال البيانات المطلوبة !"; ?>
                                        @endif
                                    </b>
                                    <button class="close" type="button" data-dismiss="alert" aria-label="Close"
                                            data-original-title="" title="">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                            @endif


                            <h3>
                                <i class="fa fa-home"></i>
                                <a class="" href="{{route('home')}}" style="color: #Fd5A1F">
                                    الرئيسية
                                </a>
                                /
                                تواصل معنا
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الاقسام</li>
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
                                        <th scope="col">#</th>
                                        <th scope="col">الاسم</th>
                                        <th scope="col">البريد الالكتروني</th>
{{--                                        <th scope="col">الهاتف</th>--}}
                                        <th scope="col"> الرسالة</th>
                                        <th scope="col">تاريخ الرسالة</th>
                                        <th scope="col">ملاحظات الادمن</th>
                                        <th scope="col">مقروء</th>
                                        <th scope="col">العمليات</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cats as $c)
                                        <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})" class="">
                                            <td>{{$loop->iteration}}</td>

                                            <td>{{$c->name}}</td>
                                            <td>{{$c->email}}</td>
{{--                                            <th> {{$c->phone}} </th>--}}
                                            <th> {{$c->message}} </th>
                                            <th> {{$c->created_at}} </th>
                                            <th> {{$c->notes}} </th>
                                            <th>
                                                @if($c->is_read == 1)
                                                    <i class="font-success show icon-check"></i>
                                                @else
                                                    <i class="font-danger show icon-close"></i>
                                                @endif
                                            </th>
                                            <th>
                                                @if(auth()->user()->hasPermissionTo('تعديل حالة تواصل معنا'))
                                                @if($c->is_read == 1)
                                                        <a href="{{route('ContactUs.editStatus',$c->id)}}">
                                                            <button title="غير مقروء" class="btn btn-danger"
                                                                    style="padding:0px 4px">
                                                                <i class="fa fa-minus-circle"></i>
                                                            </button>
                                                        </a>
                                                        @else
                                                        <a href="{{route('ContactUs.editStatus',$c->id)}}">
                                                            <button title="مقروء" class="btn btn-success"
                                                                    style="padding:0px 4px">
                                                                <i class="fa fa-plus-circle"></i>
                                                            </button>
                                                        </a>
                                                        @endif
                                                    @endif
                                                    @if(auth()->user()->hasPermissionTo('اضف ملاحظة تواصل معنا'))
                                                    <button title="اضف ملاحظة" type="button" class="btn btn-warning"
                                                            style="padding:0px 4px"
                                                            data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                    @endif
                                            </th>

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header bg-warning">
                                                            <h5 class="modal-title" id="exampleModalLabel">
                                                                إضافة ملاحظة
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editContactUs')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="message_id" value="{{$c->id}}">

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">الملاحظات</label>
                                                                    <div class="col-lg-12">
                                                                    <textarea name="notes"
                                                                              class="form-control btn-square"
                                                                              required>{{$c->notes}}</textarea>
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
                            </div>{{--{{$cats->links()}}--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>


@endsection
