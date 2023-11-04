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
                                إضافة طبخة جديدة للجدولة
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">المتاجر</li>
                            </ol>--}}
                        </div>
                        <br>
                        <h1 style="text-align:right;color: #cb0200">ملحوظة: يوم الجمعة مغلق لا يوجد طبخات , سوف يتم تجاهل هذا اليوم اذا قمت بإضافته ضمن جدولة الطبخة</h1>


                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid starts-->
        <form class="form-horizontal needs-validation was-validated" method="post" action="{{route('storeSchedualMeal')}}" enctype="multipart/form-data">
            {{csrf_field()}}
            <div class="modal-body">
                <input type="hidden" name="model_id" value="">


                <h1 class="text-lg-center">تفاصيل جدولة الطبخة</h1>
                <br>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">اختر Tag</label>
                        <div class="col-lg-12">
                            <select class="form-control btn-square" id="Tag" name="tag_id">
                                <option selected disabled>اختر Tag</option>
                                @foreach($tags as $tag)
                                    <option value="{{$tag->id}}" tag-ar="{{$tag->name_ar}}" tag-en="{{$tag->name_en}}">{{$tag->name_ar}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
{{--                    <div class="col-lg-4">--}}
{{--                        <label class="col-lg-12 control-label text-lg-right" for="textinput">العنوان بالعربي</label>--}}
{{--                        <div class="col-lg-12">--}}
{{--                            <input name="lable_ar" id="TagAr" type="text" placeholder="العنوان بالعربي" value="" class="form-control btn-square" >--}}

{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-4">--}}
{{--                        <label class="col-lg-12 control-label text-lg-right" for="textinput">العنوان بالانجليزي</label>--}}
{{--                        <div class="col-lg-12">--}}
{{--                            <input name="lable_en" id="TagEn" type="text" placeholder="العنوان بالانجليزي" value="" class="form-control btn-square" >--}}

{{--                        </div>--}}
{{--                    </div>--}}
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">السعر قبل الخصم</label>
                        <div class="col-lg-12">
                            <input name="price_before" type="number" placeholder="السعر قبل الخصم" value="" class="form-control btn-square" >

                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">االسعر بعد الخصم</label>
                        <div class="col-lg-12">
                            <input name="price_after" type="number" placeholder="االسعر بعد الخصم" value="" class="form-control btn-square" >

                        </div>
                    </div>
                </div>
                <div class="form-group row publish_date">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">النقاط</label>
                        <div class="col-lg-12">
                            <input name="points" type="number" placeholder="النقاط " value="" class="form-control btn-square" >

                        </div>
                    </div>

                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">تاريخ الاتاحة</label>
                        <div class="col-lg-12">
                            <input name="publish_date[]" type="date" placeholder="تاريخ الاتاحة" value="" class="form-control btn-square" required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>

                    <div class="addPublishDate">
                        <div class="row">
                            <button type="button" class=" btn btn-info " style="float: right">
                                <i class="icon-plus"></i>
                                اضافة تاريخ الاتاحة
                            </button>
                        </div>

                        <br>
                    </div>

                </div>

                <hr>
                <br>
                <div class="form-group row text-right">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">إسم الطبخة</label>
                    <div class="col-lg-6 text-lg-right">
                        <select name="meal_id" class="js-example-basic-single col-sm-12" required>
                            @foreach($stored_meals as $m)
                                <option value="{{$m->id}}">{{$m->name_ar}}</option>
                            @endforeach
                        </select>
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
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
            var new_item = '<div class="col-lg-12">\n' +
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
            $(".publish_date").append('</div><div class="col-lg-12">\n' +
                '                        <label class="col-lg-12 control-label text-lg-right" for="textinput">تاريخ الاتاحة</label>\n' +
                '                        <div class="col-lg-6">\n' +
                '                            <input name="publish_date[]" type="date" placeholder="تاريخ الاتاحة" value="" class="form-control btn-square" >\n' +
                '                        </div>\n' +
                '                    </div>');
        });

    </script>

@endsection
