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
                                <i data-feather="home"></i>
                                التقييمات

{{--                                @if(auth()->user()->hasPermissionTo('المتاجر'))--}}
{{--                                    <a href="{{asset('/shopss')}}"--}}
{{--                                       class="btn btn-primary"><span>المتاجر قيد التنفيذ</span></a>--}}
{{--                                    <a href="{{asset('/admin/active-shops')}}"--}}
{{--                                       class="btn btn-success"><span>المتاجر المفعلة</span></a>--}}
{{--                                    <a href="{{asset('/admin/inactive-shops')}}" class="btn btn-danger"><span>المتاجر الغير المفعلة</span></a>--}}
{{--                                @endif--}}
                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">المتاجر</li>
                            </ol>--}}
                        </div>
                        <div style="float: left">
                            {{--                            @if(auth()->user()->hasPermissionTo('اضافة باقة'))--}}
{{--                            <a type="button" class="btn btn-primary"--}}
{{--                                    data-toggle="modal"--}}
{{--                                    data-target="#subCat"--}}
{{--                                    href="{{route('createShop')}}"--}}
{{--                            >--}}
{{--                                <i class="icon-plus"></i>--}}
{{--                                اضافة متجر--}}
{{--                            </a>--}}
                            {{--                            @endif--}}
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
                                <th scope="col"> القسم</th>
                                <th scope="col"> المستخدم</th>
                                <th scope="col"> المتجر</th>
                                <th scope="col">التقييم</th>
                                <th scope="col" style="text-align: right">التعليق</th>


                            </tr>
                            </thead>
                            <tbody>
                            @foreach($users as $c)
                                <tr id="main_cat_{{$c->id}}"
                                    class="{{$c->suspend == 1 ? 'table-danger' :''}}">
                                    <td>{{$c->id}}</td>
                                    <td>
                                        @if($c->department_id == 2)
                                            <b class='badge badge-info'>طلبات متاجر</b>
                                        @elseif($c->department_id == 3)
                                            <b class='badge badge-success'>طلبات عادية</b>
                                        @else
                                            -
                                        @endif
                                    </td>

                                    <td>
                                        @if($c->user)
                                            {{$c->user->id}} <br>
                                            {{$c->user->name}} <br>
                                            <img src="{{$c->user->image}}" width="50px" height="50px"> <br>
                                        @else
                                            -
                                        @endif
                                    </td>
                                    <td>
                                        @if($c->shop)
                                            {{$c->shop->id}} <br>
                                            {{$c->shop->name}} <br>
                                            <img src="{{$c->shop->image}}" width="50px" height="50px"> <br>
                                        @else
                                            -
                                        @endif
                                    </td>

                                    <td>
                                       <b class="badge badge-dark">{{$c->rate}}</b>
                                    </td>
                                    <td style="text-align: right">
                                        <b class="badge badge-dark" >
                                            {{$c->comment}}
                                        </b>
                                    </td>




                                </tr>
                            @endforeach
                            {{--<tbody id="sub_cats_{{$category->id}}"></tbody>--}}
                            </tbody>
                        </table>
                    </div>{{--{{$users->links()}}--}}
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script>
        $(document).on('change', '#status', function (e) {

            var model_id = $(this).attr('model_id');

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: "POST",
                url: "{{URL::route('editShopStatus')}}",
                data: {
                    model_id: model_id,
                    "_token": "{{ csrf_token() }}"
                },
                success: function (response) {
                    location.reload();
                    if (response.success) {
                        toastr.success(response.success);
                    } else if (response.warning) {
                        toastr.warning(response.warning);
                    } else {
                        toastr.error(response.error);
                    }
                },
                error: function (jqXHR) {
                    toastr.error(jqXHR.responseJSON.message);
                }
            });
        });

        $(document).on('change', '#verified', function (e) {

            var model_id = $(this).attr('model_id');

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: "POST",
                url: "{{URL::route('editShopVerified')}}",
                data: {
                    model_id: model_id,
                    "_token": "{{ csrf_token() }}"
                },
                success: function (response) {
                    location.reload();
                    if (response.success) {
                        toastr.success(response.success);
                    } else if (response.warning) {
                        toastr.warning(response.warning);
                    } else {
                        toastr.error(response.error);
                    }
                },
                error: function (jqXHR) {
                    toastr.error(jqXHR.responseJSON.message);
                }
            });
        });

    </script>


@endsection
