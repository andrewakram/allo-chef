<!DOCTYPE html>
<html lang="en" dir="rtl">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
          content="endless admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords"
          content="admin template, endless admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="{{asset('default.png')}}" type="image/x-icon">
    <link rel="shortcut icon" href="{{asset('default.png')}}" type="image/x-icon">
    <title>Allo Chef</title>
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <!-- Font Awesome-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/fontawesome.css')}}">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/icofont.css')}}">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/themify.css')}}">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/flag-icon.css')}}">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/feather-icon.css')}}">


    <link rel="stylesheet" type="text/css" href="{{ url('cp/endless/assets/css/datatables.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('cp/endless/assets/css/datatable-extension.css') }}">


    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/chartist.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/prism.css')}}">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/bootstrap.css')}}">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/style.css')}}">
    <link id="color" rel="stylesheet" href="{{asset('cp/endless/assets/css/light-1.css')}}" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="{{asset('cp/endless/assets/css/responsive.css')}}">

    <link rel="stylesheet" type="text/css" href="{{ asset('cp/endless/assets/css/photoswipe.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('cp/endless/assets/css/select2.css') }}">
    <style>
        .customizer-links {
            display: none;
        }

        .activated {
            background-color: #Fd5A1F;
            padding: 1px 4px;
            border-radius: 3px;
        }
    </style>
    <style>
        @font-face {
            font-family: 'din';
            src: url({{asset('din.ttf')}}) format('opentype');
        }

        body, h1, h2, h3, h4, h5, h6, * {
            font-family: 'din';
            font-size: large;
        }

        th {
            text-align: center;
        }

        td {
            text-align: center;
        }

        element.style {
        }

        .selling-update svg path {
            color: #Fd5A1F;
        }

        .selling-update svg path,
        .selling-update svg line,
        .selling-update svg polyline,
        .selling-update svg polygon,
        .selling-update svg rect,
        .selling-update svg circle,
        .mb-0,
        .f-18,
        .align-abjust,
        h6, h4, h3 {
            color: #Fd5A1F;
        }

        .page-wrapper .page-body-wrapper .page-sidebar {
            background: black;
        }

        button {
            margin: 2px;
        }
    </style>
    <script src="{{asset('assets/ckeditor/ckeditor.js')}}"></script>
    @yield('imgStylHedr')

</head>
<body onload="window.print();" dir="rtl">
<!-- Loader starts-->

<!-- Loader ends-->
<!-- page-wrapper Start-->
<div id="DivIdToPrint" class="invoice-box invoice">
    <div class="box-header ">


        <h1 class="box-title pull-right" style="padding-right: 150px">
            <br>
            <br>
            <br>

            Allo Chef - الو شيف
        </h1>

        <span class="pull-left" style="padding-top: 10px;padding-left: 150px">
            <img src="{{asset("default.png")}}" style="width:80px; height:60px">
        </span>


    </div>
    <div class="clearfix"></div>
    <br>

    <!-- /.box-header -->
    @foreach($ordersAfter2days as $order)
        <div class="box-body invoice-info" style="padding: 10px;margin: 10px;border-bottom: black dashed 5px">
            <h1 style="text-align: center">
                طلب رقم:
                {{$order->id}}
            </h1>
            <h3 class="box-title pull-right">
                <br>
                <b> بيانات العميل</b>
            </h3>
            <table id="example2" class="table table-bordered " dir="rtl">
                <thead>

                <tr>
                    <th scope="col"> الأسم</th>
                    <th scope="col">الهاتف</th>
                    <th scope="col">البريد الالكتروني</th>
                </tr>
                </thead>
                <tbody id="myTable">
                <tr id="">
                    <td>{{$order->user->name}}</td>
                    <td>{{$order->user->phone}}</td>
                    <td>{{$order->user->email}}</td>
                </tr>

                </tbody>

            </table>
            <hr>
            <table id="example2" class="table table-bordered " dir="rtl">
                <h3 class="box-title pull-right">
                    <br>
                    <b> عنوان الطلب</b>
                </h3>
                <tbody id="myTable">

                <tr id="">
                    <td>
                        @if($order->location)
                            {{$order->location->street}} / {{$order->location->floor}}
                            <br>
                            {{$order->location->region->name_ar}} /
                            {{$order->location->city->name_ar}}
                        @endif
                    </td>
                </tr>

                </tbody>

            </table>
            <hr>
            <table id="example2" class="table table-bordered " dir="rtl">
                <h3 class="box-title pull-right">
                    <br>
                    <b> وقت توصيل الطلب</b>
                </h3>
                <tbody id="myTable">

                <tr id="">
                    <td>
                        @if($order->period)
                            <br>
                            {{$order->period->from}}  -  {{$order->period->to}}
                            <br>
                        @endif
                    </td>
                </tr>

                </tbody>

            </table>
            <hr>

            <table id="example2" class="table table-bordered " dir="rtl">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">vip</th>
                    <th scope="col">اسم الطبخة</th>
                    <th scope="col">تاريح التوصيل</th>
                    <th scope="col">الكمية</th>
                    <th scope="col">التكلفة</th>
                    <th scope="col">الاجمالي</th>
                </tr>
                </thead>
                <tbody id="myTable">
                @foreach($order->orderMeals as $key => $meal)
                    <tr id="main_cat_{{$meal->id}}">
                        <td>{{$key+1}}</td>
                        <td>
                            @if($meal->vip == 1)
                                <i class="font-success show icon-check"></i>
                            @else
                                <i class="font-danger show icon-close"></i>
                            @endif
                        </td>
                        <td>
                            {{$meal->meal_name}}
                        </td>
                        <td>
                            {{$meal->order_date}}
                        </td>
                        <td>
                            {{$meal->quantity}}
                        </td>
                        <td>
                            {{$meal->price}}
                        </td>
                        <td>
                            {{$meal->price * $meal->quantity}}
                        </td>

                    </tr>
                @endforeach
                {{--<tbody id="sub_cats_{{$category->id}}"></tbody>--}}
                </tbody>
            </table>
            <br>
        </div>

@endforeach
<!-- /.box-body -->
</div>


<!-- latest jquery-->
<script src="{{asset('cp/endless/assets/js/jquery-3.2.1.min.js')}}"></script>
<!-- Bootstrap js-->
<script src="{{asset('cp/endless/assets/js/bootstrap/popper.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/bootstrap/bootstrap.js')}}"></script>
<!-- feather icon js-->
<script src="{{asset('cp/endless/assets/js/icons/feather-icon/feather.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/icons/feather-icon/feather-icon.js')}}"></script>
<!-- Sidebar jquery-->
<script src="{{asset('cp/endless/assets/js/sidebar-menu.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/config.js')}}"></script>
<!-- Plugins JS start-->
{{--<script src="{{asset('cp/endless/assets/js/chart/chartist/chartist.js')}}"></script>--}}
<script src="{{asset('cp/endless/assets/js/chart/knob/knob.min.js')}}"></script>
{{--<script src="{{asset('cp/endless/assets/js/chart/knob/knob-chart.js')}}"></script>--}}
<script src="{{asset('cp/endless/assets/js/prism/prism.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/clipboard/clipboard.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/counter/jquery.waypoints.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/counter/jquery.counterup.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/counter/counter-custom.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/custom-card/custom-card.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/notify/bootstrap-notify.min.js')}}"></script>
{{--<script src="{{asset('cp/endless/assets/js/dashboard/default.js')}}"></script>--}}
<script src="{{asset('cp/endless/assets/js/notify/index.js')}}"></script>
<!--    <script src="../assets/js/typeahead/handlebars.js"></script>-->
<!--    <script src="../assets/js/typeahead/typeahead.bundle.js"></script>-->
<!--    <script src="../assets/js/typeahead/typeahead.custom.js"></script>-->
<script src="{{asset('cp/endless/assets/js/chat-menu.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/height-equal.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/tooltip-init.js')}}"></script>
<!--    <script src="../assets/js/typeahead-search/handlebars.js"></script>-->
<!--    <script src="../assets/js/typeahead-search/typeahead-custom.js"></script>-->
<!-- Plugins JS Ends-->
<!-- Theme js-->

<script src="{{asset('cp/endless/assets/js/script.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/theme-customizer/customizer.js')}}"></script>
<!-- Plugin used-->

<!-- photos-->
<script src="{{asset('cp/endless/assets/js/photoswipe/photoswipe.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/photoswipe/photoswipe-ui-default.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/photoswipe/photoswipe.js')}}"></script>

<!-- photos-->

<!-- map-->

<script src="{{asset('cp/endless/assets/js/map-js/mapsjs-core.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/map-js/mapsjs-service.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/map-js/mapsjs-ui.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/map-js/mapsjs-mapevents.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/select2/select2.full.min.js')}}"></script>
<script src="{{asset('cp/endless/assets/js/select2/select2-custom.js')}}"></script>
{{--        --}}
<script src="{{ url('cp/endless/assets/js/datatable/datatables/jquery.dataTables.min.js') }}"></script>

<script src="{{ url('cp/endless/assets/js/datatable/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ url('cp/endless/assets/js/datatable/datatable-extension/dataTables.buttons.min.js') }}"></script>
<script src="{{ url('cp/endless/assets/js/datatable/datatable-extension/buttons.html5.min.js') }}"></script>
<script src="{{ url('cp/endless/assets/js/datatable/datatable-extension/buttons.colVis.min.js') }}"></script>
{{--<script src="{{asset('cp/endless/assets/js/map-js/custom.js')}}"></script><!-- map-->--}}
{{--<script src="{{asset('cp/endless/assets/js/general-widget.js')}}"></script>--}}
</body>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">google.load('visualization', '1.0', {'packages': ['corechart']});</script>

@yield('extra-js')

@yield('mapLocation')
</html>

