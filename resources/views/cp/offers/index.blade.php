@extends('cp_shop.index')
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
                                <i data-feather="home"></i>
                                الاعلانات
                                ({{sizeof($offers)}})
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الاعلانات</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            @if(auth()->user()->hasPermissionTo('لوحة التحكم'))
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#subCat"><i class="icon-plus"></i>
                                    اضافة سليدر
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
                                <th scope="col">المتجر</th>
                                <th scope="col"> الصورة</th>
                                <th scope="col"> تاريخ انشاء الاعلان</th>
                                <th scope="col"> العمليات</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($offers as $c)
                                <tr id="main_cat_{{$c->id}}" onclick="myFunction({{$c->id}})">
                                    <td>{{$c->id}}</td>
                                    <td>{{$c->shop->name}}</td>
                                    @if($c->image != NULL)
                                        <th>
                                            <img src="{{$c->image}}" width="50px" height="50px">
                                            <a href="{{$c->image}}" target="_blank" class="btn btn-primary">
                                                <b>عرض</b>
                                            </a>
                                        </th>

                                    @else
                                        <th> -</th>
                                    @endif
                                    <td>{{$c->created_at}}</td>
                                    <td>
                                        @if(auth()->user()->hasPermissionTo('لوحة التحكم'))
                                            <button title="تعديل" type="button" class="btn btn-warning" data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                        @endif
                                            @if(auth()->user()->hasPermissionTo('لوحة التحكم'))
                                                <a href="{{route('deleteOffer',$c->id)}}" data-original-title="" title="">
                                                    <button title="" class="btn btn-danger" data-original-title="حذف">
                                                        <i class="fa fa-minus-circle"></i>
                                                    </button>
                                                </a>
                                            @endif
                                    </td>

                                    <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">تعديل السلايدر</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form class="form-horizontal" method="post" action="{{route('editOffer')}}" enctype="multipart/form-data">
                                                    {{csrf_field()}}
                                                    <div class="modal-body">
                                                        <input type="hidden" name="slider_id" value="{{$c->id}}">

                                                        <div class="form-group row ">
                                                            <label class="col-lg-12 control-label text-lg-right" for="textinput">المتجر</label>
                                                            <div class="col-lg-12">
                                                                <select class="form-control" name="shop_id" required>
                                                                    <option disabled>اختر المتجر</option>
                                                                    @foreach($shops as $shop)
                                                                        <option value="{{$shop->id}}" {{$c->shop_id == $shop->id ? "selected" : "" }}>
                                                                            {{$shop->name}}
                                                                        </option>
                                                                    @endforeach
                                                                </select>

                                                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row ">
                                                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الصورة</label>
                                                            <div class="col-lg-12">
                                                                <input name="image" class="form-control digits" type="file" >
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
                    </div>{{--{{$offers->links()}}--}}
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>

    <div class="modal fade" id="subCat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">اضافة سليدر</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal needs-validation was-validated" method="post" action="{{route('offerss.store')}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">


                        <div class="form-group row ">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">المتجر</label>
                            <div class="col-lg-12">
                                <select class="form-control" name="shop_id" required>
                                    <option disabled>اختر المتجر</option>
                                    @foreach($shops as $shop)
                                        <option value="{{$shop->id}}">{{$shop->name}}</option>
                                    @endforeach
                                </select>

                                <div class="invalid-feedback">هذا الحقل مطلوب ادخاله .</div>
                            </div>
                        </div>


                        <div class="form-group row ">
                            <label class="col-lg-12 control-label text-lg-right" for="textinput">الصورة</label>
                            <div class="col-lg-12">
                                <input name="image" class="form-control digits" type="file" required>
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
