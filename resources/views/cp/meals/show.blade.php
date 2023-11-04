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
                                عرض تفاصيل الطبخة
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">المتاجر</li>
                            </ol>--}}
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid starts-->
        <form class="form-horizontal" method="post"
{{--              action="{{route('updateShop')}}"--}}
              enctype="multipart/form-data">
{{--            {{csrf_field()}}--}}
            <div class="modal-body">
                <input type="hidden" name="model_id" value="{{$meal->id}}">


                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">الإسم بالعربي</label>
                    <div class="col-lg-12">
                        <input name="name" type="text" placeholder="الإسم بالعربي" value="{{$meal->name_ar}}" class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">الإسم بالانجليزي</label>
                    <div class="col-lg-12">
                        <input name="name" type="text" placeholder="الإسم بالانجليزي" value="{{$meal->name_en}}" class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">االسعر الافتراضي</label>
                        <div class="col-lg-12">
                            <input name="name" type="text"  value="{{$meal->price}}" class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">عدد النقاظ الافتراضي</label>
                        <div class="col-lg-12">
                            <input name="name" type="text"  value="{{$meal->points}}" class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">عدد الافراد</label>
                        <div class="col-lg-12">
                            <input name="name" type="text"  value="{{$meal->persons}}" class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">الوزن بالجرام</label>
                        <div class="col-lg-12">
                            <input name="name" type="text"  value="{{$meal->grams}}" class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>


                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">الوصف بالعربي</label>
                    <div class="col-lg-12">
                        <textarea rows="5" class="form-control btn-square">{{$meal->description_ar}}</textarea>
{{--                        <input id="inputName1" name="description" type="text" value="{{$meal->description_ar}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
{{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>
                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">الوصف بالانجليزي</label>
                    <div class="col-lg-12">
                        <textarea rows="5" class="form-control btn-square">{{$meal->description_en}}</textarea>
{{--                        <input id="inputName1" name="description" type="text" value="{{$meal->description_en}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
{{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>

                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">طريقة العمل بالعربي</label>
                    <div class="col-lg-12">
                        <textarea rows="8" class="form-control btn-square">{{$meal->method_ar}}</textarea>
{{--                        <input id="inputName1" name="description" type="text" value="{{$meal->method_ar}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
{{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>
                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">طريقة العمل بالانجليزي</label>
                    <div class="col-lg-12">
                        <textarea rows="8" class="form-control btn-square">{{$meal->method_en}}</textarea>
{{--                        <input id="inputName1" name="description" type="text" value="{{$meal->method_en}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
{{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>


                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">المقادير</label>
                    @foreach($meal->meal_ingredients as $ingredient)
                        <div class="col-lg-6">
                            <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">الوصف بالعربي</label>
                            <div class="col-lg-12">
                                <input id="inputName1" name="description" type="text" value="{{$ingredient->name_ar}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">الوصف بالانجليزي</label>
                            <div class="col-lg-12">
                                <input id="inputName1" name="description" type="text" value="{{$ingredient->name_en}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                            </div>
                        </div>
                        <br>
                        <br>

                    @endforeach
                    <div class="clearfix"></div>
                </div>



                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">صور الطبخة</label>
                @foreach($meal->images as $image)
                    <div class="col-lg-12" style="text-align: center">
                        <img src="{{$image->image}}" width="150px" height="100px"></img>
                        <br>
                        <hr>
                        <div class="clearfix"></div>
                    </div>
{{--                    <div class="col-lg-2">--}}
{{--                        <button title="حذف" type="button" class="btn btn-danger deleteItem" data-toggle="modal"--}}
{{--                                item_id="{{$item->id}}">--}}
{{--                            <i class="fa fa-trash"></i>--}}
{{--                        </button>--}}
{{--                    </div>--}}
                    <br>
                    <hr>
                    <div class="clearfix"></div>
                    @endforeach
                </div>





                <br>
            </div>


        </form>
        <!-- Container-fluid Ends-->
    </div>

@endsection
