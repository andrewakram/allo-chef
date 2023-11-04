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
                                تعديل بيانات طبخة
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
              action="{{route('updateMeal')}}" enctype="multipart/form-data">
            {{csrf_field()}}
            <div class="modal-body">
                <input type="hidden" name="model_id" value="{{$meal->id}}">


                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">رقم الطبخة</label>
                    <div class="col-lg-12">
                        <input name="meal_no" type="text" placeholder="رقم الطبخة" value="{{$meal->meal_no}}"
                               class="form-control btn-square" required
                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">الإسم بالعربي</label>
                    <div class="col-lg-12">
                        <input name="name_ar" type="text" placeholder="الإسم بالعربي" value="{{$meal->name_ar}}"
                               class="form-control btn-square" required
                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">الإسم بالانجليزي</label>
                    <div class="col-lg-12">
                        <input name="name_en" type="text" placeholder="الإسم بالانجليزي" value="{{$meal->name_en}}"
                               class="form-control btn-square" required
                               oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">االسعر الافتراضي</label>
                        <div class="col-lg-12">
                            <input name="price" type="text" value="{{$meal->price}}" class="form-control btn-square"
                                   required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">عدد النقاظ
                            الافتراضي</label>
                        <div class="col-lg-12">
                            <input name="points" type="text" value="{{$meal->points}}" class="form-control btn-square"
                                   required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">عدد الافراد</label>
                        <div class="col-lg-12">
                            <input name="persons" type="text" value="{{$meal->persons}}" class="form-control btn-square"
                                   required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <label class="col-lg-12 control-label text-lg-right" for="textinput">الوزن بالجرام</label>
                        <div class="col-lg-12">
                            <input name="grams" type="text" value="{{$meal->grams}}" class="form-control btn-square"
                                   required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                            <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                        </div>
                    </div>
                </div>


                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف بالعربي</label>
                    <div class="col-lg-12">
                        <textarea name="description_ar"
                                  class="form-control btn-square">{{$meal->description_ar}}</textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->description_ar}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
                        {{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>
                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف
                        بالانجليزي</label>
                    <div class="col-lg-12">
                        <textarea name="description_en"
                                  class="form-control btn-square">{{$meal->description_en}}</textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->description_en}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
                        {{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>

                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">طريقة العمل
                        بالعربي</label>
                    <div class="col-lg-12">
                        <textarea name="method_ar" class="form-control btn-square">{{$meal->method_ar}}</textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->method_ar}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
                        {{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>
                <div class="form-group row ">
                    <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">طريقة العمل
                        بالانجليزي</label>
                    <div class="col-lg-12">
                        <textarea name="method_en" class="form-control btn-square">{{$meal->method_en}}</textarea>
                        {{--                        <input id="inputName1" name="description" type="text" value="{{$meal->method_en}}" placeholder="الوصف " class="form-control btn-square" for="textinput"  required oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">--}}
                        {{--                        <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>--}}
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-lg-12 control-label text-lg-right" for="textinput">رابط خارجي لطريقة
                        العمل</label>
                    <div class="col-lg-12">
                        <input name="url" type="text" placeholder="رابط خارجي لطريقة العمل" value="{{$meal->url}}"
                               class="form-control btn-square"
                        >
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
                    @foreach($meal->meal_ingredients as $ingredient)
                        <div class="col-lg-5">
                            <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف
                                بالعربي</label>
                            <div class="col-lg-12">
                                <input id="inputName1" name="ingridient_name_ar[]" type="text"
                                       value="{{$ingredient->name_ar}}" placeholder="الوصف "
                                       class="form-control btn-square" for="textinput" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <label class="col-lg-12 control-label text-lg-right" for="validationCustom04">الوصف
                                بالانجليزي</label>
                            <div class="col-lg-12">
                                <input id="inputName1" name="ingridient_name_en[]" type="text"
                                       value="{{$ingredient->name_en}}" placeholder="الوصف "
                                       class="form-control btn-square" for="textinput" required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب إدخاله')">
                                <div class="invalid-feedback">هذا الحقل مطلوب إدخاله .</div>
                            </div>
                        </div>
                        <div class="col-lg-1" style="padding-top: 20px">
                            <button title="حذف" type="button" class="btn btn-danger " style="margin-top: 20px"
                                    data-toggle="modal" data-target="#delete_ingredient_{{$ingredient->id}}">
                                <i class="fa fa-trash"></i>
                            </button>
                            <div class="clearfix"></div>
                            {{--                            modal--}}
                            <div class="modal animated fadeIn" id="delete_ingredient_{{$ingredient->id}}" tabindex="-1"
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
                                            <a href="{{route('deleteMealIngredient',$ingredient->id)}}"
                                               class="btn btn-danger" title="حذف">
                                                تأكيد
                                            </a>
                                        </div>
                                        {{--                                        </form>--}}
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="clearfix"></div>
                        </div>

                    @endforeach
                    <div class="clearfix"></div>
                </div>


                <div class="form-group row ">
                    <div class="col-lg-12 text-lg-right">
                        <label class="col-lg-2 control-label " for="validationCustom04">صور طبخة</label>

                        <button title="اضف صورة للوجبة" type="button" class="btn btn-success"
                                data-toggle="modal" data-target="#add_image_{{$meal->id}}">
                            <i class="fa fa-plus-square"></i>
                        </button>
                        <div class="clearfix"></div>
                    </div>
                    @foreach($meal->images as $image)
                        <div class="col-lg-12" style="text-align: center">
                            <img src="{{$image->image}}" width="150px" height="100px"></img>
                            <a href="{{$image->image}}" target="_blank" class="btn btn-primary" title="عرض">
                                <i class="fa fa-eye"></i>
                            </a>
                            <button title="حذف" type="button" class="btn btn-danger"
                                    data-toggle="modal" data-target="#delete_{{$image->id}}">
                                <i class="fa fa-trash"></i>
                            </button>
                            {{--                            modal--}}
                            <div class="modal animated fadeIn" id="delete_{{$image->id}}" tabindex="-1"
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
                                            <a href="{{route('deleteMealImage',$image->id)}}" class="btn btn-danger"
                                               title="حذف">
                                                تأكيد
                                            </a>
                                        </div>
                                        {{--                                        </form>--}}
                                    </div>
                                </div>
                            </div>
                            <br>
                            <hr>
                            <div class="clearfix"></div>
                        </div>
                        <br>
                        <hr>
                        <div class="clearfix"></div>
                    @endforeach
                </div>


                <br>
            </div>

            <div class="modal-footer">
                <button class="btn btn-warning mr-1" type="submit">تعديل
                </button>
            </div>
        </form>
        <!-- Container-fluid Ends-->
    </div>

    <div class="modal fade" id="add_image_{{$meal->id}}" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">
                        اضف صورة للوجبة</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="form-horizontal" method="post"
                      action="{{route('addMealImage')}}"
                      enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="modal-body">
                        <input type="hidden" name="meal_id" value="{{$meal->id}}">

                        <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                            <label class="col-lg-12 control-label text-lg-right"
                                   for="textinput">اختر صورة</label>
                            <div class="col-lg-12">
                                <input name="image"
                                       type="file"
                                       class="form-control btn-square"
                                       required
                                       oninvalid="this.setCustomValidity('هذا الحقل مطلوب ادخاله')">
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-dark"
                                data-dismiss="modal">اغلاق
                        </button>
                        <button class="btn btn-success" type="submit">حفظ
                        </button>
                    </div>
                </form>
            </div>
        </div>
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


@endsection
