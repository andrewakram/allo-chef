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
                                إضافة طبخة جديدة
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
        <form class="form-horizontal needs-validation was-validated" method="post" action="{{route('storeMeal')}}"
              enctype="multipart/form-data">
            {{csrf_field()}}
            <div class="modal-body">
                <input type="hidden" name="model_id" value="">


                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">رقم الطبخة</label>
                    <div class="col-lg-12">
                        <input name="meal_no" type="text" placeholder="رقم الطبخة" value=""
                               class="form-control btn-square" required
                        >
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">الإسم بالعربي</label>
                    <div class="col-lg-12">
                        <input name="name_ar" type="text" placeholder="الإسم بالعربي" value=""
                               class="form-control btn-square" required
                        >
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">الإسم بالانجليزي</label>
                    <div class="col-lg-12">
                        <input name="name_en" type="text" placeholder="الإسم بالانجليزي" value=""
                               class="form-control btn-square" required
                        >
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">االسعر الافتراضي</label>
                        <div class="col-lg-12">
                            <input name="price" type="text" value="" class="form-control btn-square"
                                   required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">عدد النقاظ
                            الافتراضي</label>
                        <div class="col-lg-12">
                            <input name="points" type="text" value="" class="form-control btn-square"
                                   required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">عدد الافراد</label>
                        <div class="col-lg-12">
                            <input name="persons" type="text" value="" class="form-control btn-square"
                                   required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">الوزن بالجرام</label>
                        <div class="col-lg-12">
                            <input name="grams" type="text" value="" class="form-control btn-square"
                                   required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>


                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف بالعربي</label>
                    <div class="col-lg-12">
                        <textarea name="description_ar" rows="5" class="form-control btn-square" required></textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->description_ar}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required >--}}
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>
                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف
                        بالانجليزي</label>
                    <div class="col-lg-12">
                        <textarea name="description_en" rows="5" class="form-control btn-square" required></textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->description_en}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required >--}}
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>

                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">طريقة العمل
                        بالعربي</label>
                    <div class="col-lg-12">
                        <textarea name="method_ar" rows="8" class="form-control btn-square" required></textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->method_ar}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required >--}}
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>
                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">طريقة العمل
                        بالانجليزي</label>
                    <div class="col-lg-12">
                        <textarea name="method_en" rows="8" class="form-control btn-square" required></textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->method_en}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required >--}}
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>


                <div class="form-group row ingridients">
                    <div class="col-lg-12 text-lg-right">
                        <label class="col-lg-1 control-label " for="validationCustom04">المقادير</label>
                        <button id="addIngridient" title="اضف مقادير" type="button" class="btn btn-success"
                                style="padding: 5px 10px">
                            <i class="fa fa-plus"></i>
                        </button>
                        <br>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف
                            بالعربي</label>
                        <div class="col-lg-12">
                            <input id="inputName1" name="ingridient_name_ar[]" type="text"
                                   placeholder="الوصف "
                                   class="form-control btn-square" for="textinput" required
                            >
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف
                            بالانجليزي</label>
                        <div class="col-lg-12">
                            <input id="inputName1" name="ingridient_name_en[]" type="text"
                                   placeholder="الوصف "
                                   class="form-control btn-square" for="textinput" required
                            >
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>


                <div class="form-group row ">
                    <div class="col-lg-12 text-lg-right">
                        <label class="col-lg-2 control-label " for="validationCustom04">اختر صور الطبخة</label>
                        <div class="col-lg-12">
                            <input id="inputName1" name="image" type="file"
                                   class="form-control btn-square" for="textinput" required
                            >
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>

                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12 text-lg-right">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">رابط خارجي لطريقة
                            العمل</label>
                        <div class="col-lg-12">
                            <input name="url" type="text" placeholder="رابط خارجي لطريقة العمل" value=""
                                   class="form-control btn-square"
                            >
                        </div>
                    </div>
                </div>


                <br>
            </div>

            <div class="modal-body">
                <input type="hidden" name="model_id" value="">


                <h1 class="text-lg-center">تفاصيل جدولة الطبخة</h1>
                <br>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">العنوان بالعربي</label>
                        <div class="col-lg-12">
                            <input name="lable_ar" type="text" placeholder="العنوان بالعربي" value=""
                                   class="form-control btn-square" required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">العنوان بالانجليزي</label>
                        <div class="col-lg-12">
                            <input name="lable_en" type="text" placeholder="العنوان بالانجليزي" value=""
                                   class="form-control btn-square" required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">السعر قبل الخصم</label>
                        <div class="col-lg-12">
                            <input name="price_before" type="number" placeholder="السعر قبل الخصم" value=""
                                   class="form-control btn-square" required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">االسعر بعد الخصم</label>
                        <div class="col-lg-12">
                            <input name="price_after" type="number" placeholder="االسعر بعد الخصم" value=""
                                   class="form-control btn-square" required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>

                <button type="button" class="addPublishDate btn btn-info " style="float: right">
                    <i class="icon-plus"></i>
                    اضافة تاريخ الاتاحة
                </button>
                <div class="clearfix"></div>
                <br>
                <h1 style="text-align:right;color: #cb0200">ملحوظة: يوم الجمعة مغلق لا يوجد طبخات , سوف يتم تجاهل هذا
                    اليوم اذا قمت بإضافته ضمن جدولة الطبخة</h1>
                <div class="form-group row publish_date">
                    <div class="col-lg-12">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">تاريخ الاتاحة</label>
                        <div class="col-lg-12">
                            <input name="publish_date[]" type="date" placeholder="تاريخ الاتاحة" value=""
                                   class="form-control btn-square" required>
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>


                <br>
            </div>
            <div class="modal-footer">

                <button class="btn btn-success">حفظ</button>
            </div>
        </form>
        <!-- Container-fluid Ends-->
    </div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>

    <script>
        $('#addIngridient').on('click', function () {
            plus_item();
        });

        function plus_item() {
            var new_item = '<div class="col-lg-6">\n' +
                '                            <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">الوصف بالعربي</label>\n' +
                '                            <div class="col-lg-12">\n' +
                '                                <input id="inputName1" name="ingridient_name_ar[]" type="text"  placeholder="الوصف " class="form-control btn-square" for="textinput"  >\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                        <div class="col-lg-6">\n' +
                '                            <label class="col-lg-12 control-label text-lg-right"  for="validationCustom04">الوصف بالانجليزي</label>\n' +
                '                            <div class="col-lg-12">\n' +
                '                                <input id="inputName1" name="ingridient_name_en[]" type="text"  placeholder="الوصف " class="form-control btn-square" for="textinput"  >\n' +
                '                            </div>\n' +
                '                        </div>';
            $('.ingridients').append(new_item);

        }
    </script>
    <script>
        $(document).on('click', '.addPublishDate', function () {
            $(".publish_date").append('<div class="col-lg-12">\n' +
                '                        <label class="col-lg-12 control-label text-lg-right" for="textinput">تاريخ الاتاحة</label>\n' +
                '                        <div class="col-lg-12">\n' +
                '                            <input name="publish_date[]" type="date" placeholder="تاريخ الاتاحة" value="" class="form-control btn-square" >\n' +
                '                        </div>\n' +
                '                    </div>');
        });

    </script>

@endsection
