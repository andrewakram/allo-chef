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
<body main-theme-layout="rtl">
<!-- Loader starts-->
<div class="loader-wrapper">
    <div class="loader bg-white">
        <div class="whirly-loader"></div>
    </div>
</div>
<!-- Loader ends-->
<!-- page-wrapper Start-->
<div class="page-wrapper">
    <!-- Page Header Start-->
    <div class="page-main-header">
        <div class="main-header-right row">
            <div class="main-header-left d-lg-none">
                <div class="logo-wrapper">
                    {{--<a class="pull-right mb-0" href="http://2grand.net" target="_blank"><img src="http://radareldad.my-staff.net/grand.png" style="width:100px;">
                    </a>--}}
                    {{--                    <a href="http://2grand.net" target="_blank">--}}
                    {{--                        <img src="{{asset('grand.png')}}" alt=""--}}
                    {{--                             style="width:230px; height:60px;background-color: white;padding: 10px;border-radius: 5px">--}}
                    {{--                    </a>--}}
                </div>
            </div>
            <div class="mobile-sidebar d-block">
                <div class="media-body text-right switch-sm">
                    <label class="switch"><a><i id="sidebar-toggle"
                                                data-feather="align-left"></i></a></label>
                </div>
            </div>
            <div class="nav-right col p-0">
                <ul class="nav-menus">
                    <li>
                        {{--                        @if(!Request::is('admin/home*'))--}}
                        {{--                        <form class="form-inline search-form" action="#" method="get" dir="rtl">--}}
                        {{--                            <div class="form-group">--}}
                        {{--                                <div class="Typeahead Typeahead--twitterUsers">--}}
                        {{--                                    <div class="u-posRelative">--}}
                        {{--                                        <input class="Typeahead-input --}}{{--form-control-plaintext--}}{{--" id="demo-input"--}}
                        {{--                                               type="text" name="q" placeholder="بحث . . ." style="width:100%">--}}
                        {{--                                        <div class="spinner-border Typeahead-spinner" role="status"><span--}}
                        {{--                                                    class="sr-only">جاري التحميل . . .</span></div>--}}
                        {{--                                        <span class="d-sm-none mobile-search"><i data-feather="search"></i></span>--}}
                        {{--                                    </div>--}}
                        {{--                                    <div class="Typeahead-menu"></div>--}}
                        {{--                                </div>--}}
                        {{--                            </div>--}}
                        {{--                        </form>--}}
                        {{--                        @endif--}}
                    </li>
                    <li><a class="text-dark" href="{{route('home')}}#!" onclick="javascript:toggleFullScreen()"><i
                                    data-feather="maximize"></i></a></li>
                    {{--<li class="onhover-dropdown"><a class="txt-dark" href="index.html#">
                        <h6>EN</h6>
                        </a>
                      <ul class="language-dropdown onhover-show-div p-20">
                        <li><a href="index.html#" data-lng="en"><i class="flag-icon flag-icon-is"></i> English</a></li>
                        <li><a href="index.html#" data-lng="es"><i class="flag-icon flag-icon-um"></i> Spanish</a></li>
                        <li><a href="index.html#" data-lng="pt"><i class="flag-icon flag-icon-uy"></i> Portuguese</a></li>
                        <li><a href="index.html#" data-lng="fr"><i class="flag-icon flag-icon-nz"></i> French</a></li>
                      </ul>
                    </li>--}}
                    {{--<li class="onhover-dropdown"><i data-feather="bell"></i><span class="dot"></span>
                      <ul class="notification-dropdown onhover-show-div">
                        <li>Notification <span class="badge badge-pill badge-primary pull-right">3</span></li>
                        <li>
                          <div class="media">
                            <div class="media-body">
                              <h6 class="mt-0"><span><i class="shopping-color" data-feather="shopping-bag"></i></span>Your order ready for Ship..!<small class="pull-right">9:00 AM</small></h6>
                              <p class="mb-0">Lorem ipsum dolor sit amet, consectetuer.</p>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="media">
                            <div class="media-body">
                              <h6 class="mt-0 txt-success"><span><i class="download-color font-success" data-feather="download"></i></span>Download Complete<small class="pull-right">2:30 PM</small></h6>
                              <p class="mb-0">Lorem ipsum dolor sit amet, consectetuer.</p>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="media">
                            <div class="media-body">
                              <h6 class="mt-0 txt-danger"><span><i class="alert-color font-danger" data-feather="alert-circle"></i></span>250 MB trash files<small class="pull-right">5:00 PM</small></h6>
                              <p class="mb-0">Lorem ipsum dolor sit amet, consectetuer.</p>
                            </div>
                          </div>
                        </li>
                        <li class="bg-light txt-dark"><a href="index.html#">All</a> notification</li>
                      </ul>
                    </li>--}}
                    {{--
                  <li><a href="{{route('home')}}#"><i class="right_side_toggle" data-feather="message-circle"></i><span class="dot"></span></a></li>
                  --}}
                    <b>{{Auth::user()->name}}</b>
                    <li class="onhover-dropdown">
                        <div class="media align-items-center">
                            <img class="align-self-center pull-right img-50 rounded-circle"
                                 src="{{asset('default.png')}}" alt="header-user">
                            <div class="dotted-animation"><span class="animate-circle"></span><span
                                        class="main-circle"></span></div>
                        </div>
                        <ul class="profile-dropdown onhover-show-div p-20">
                            {{--<li><a href="index.html#"><i data-feather="user"></i>                                    Edit Profile</a></li>
                            <li><a href="index.html#"><i data-feather="mail"></i>                                    Inbox</a></li>
                            <li><a href="index.html#"><i data-feather="lock"></i>                                    Lock Screen</a></li>
                            <li><a href="index.html#"><i data-feather="settings"></i>                                    Settings</a></li>--}}
                            <li><a href="{{ route('logout') }}"

                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    خروج
                                    <i data-feather="log-out"></i>

                                </a></li>
                            <form id="logout-form" action="{{ route('logout') }}" method="GET" style="display: none;">
                                @csrf
                            </form>
                        </ul>
                    </li>
                </ul>
                <div class="d-lg-none mobile-toggle pull-right"><i data-feather="more-horizontal"></i></div>
            </div>
            <script id="result-template" type="text/x-handlebars-template">
                <div class="ProfileCard u-cf">
                    <div class="ProfileCard-avatar">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                             class="feather feather-airplay m-0">
                            <path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path>
                            <polygon points="12 15 17 21 7 21 12 15"></polygon>
                        </svg>
                    </div>
                    <div class="ProfileCard-details">
                        <div class="ProfileCard-realName"></div>
                    </div>
                </div>
            </script>
            <script id="empty-template" type="text/x-handlebars-template">
                <div class="EmptyMessage">Your search turned up 0 results. This most likely means the backend is down,
                    yikes!
                </div>

            </script>
        </div>
    </div>
    <!-- Page Header Ends                              -->
    <!-- Page Body Start-->
    <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <div class="page-sidebar">
            {{--            <div class="main-header-left d-none d-lg-block">--}}
            {{--                <div class="logo-wrapper"><a href="http://2grand.net" target="_blank">--}}
            {{--                        <img src="{{asset('grand.png')}}" alt=""--}}
            {{--                             style="width:230px; height:60px;background-color: white;padding: 10px;border-radius: 10px">--}}
            {{--                    </a></div>--}}
            {{--            </div>--}}


            <div class="sidebar custom-scrollbar">
                <div class="sidebar-user text-center">
                    <div>
                        <img class="img-60 rounded-circle" src="{{asset('default.png')}}" alt="#">
                        {{--<div class="profile-edit"><a href="edit-profile.html" target="_blank"><i data-feather="edit"></i></a></div>--}}
                    </div>
                    <h6 class="mt-3 f-14">Allo Chef</h6>
                    <p> مدير النظام</p>
                </div>
                <ul class="sidebar-menu">
                    @if (auth()->user()->hasPermissionTo('الرئيسية'))
                    <li class="{{Request::is('admin/home*') ? "activated" : "" }}">

                        <a class="sidebar-header" href="{{route('home')}}"><i data-feather="home"></i>


                            <span>الرئيسية</span>

                            {{--<span class="badge badge-pill badge-primary">6</span>--}}
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('المشرفين'))
                    <li class="{{Request::is('admin/admins*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/admins')}}"><i data-feather="users"></i>
                            <span>المشرفين</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الدول'))
                    <li class="{{Request::is('admin/countriess*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/countriess')}}"><i data-feather="map-pin"></i>
                            <span>الدول</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('المدن'))
                    <li class="{{Request::is('admin/cities*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/cities')}}"><i data-feather="toggle-right"></i>
                            <span>المدن</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('المناطق'))
                    <li class="{{Request::is('admin/regions*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/regions')}}"><i data-feather="target"></i>
                            <span>المناطق</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('العملاء'))
                    <li class="{{Request::is('admin/users*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/users')}}"><i data-feather="users"></i>
                            <span>العملاء</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('المناديب'))
                    <li class="{{Request::is('admin/delegates*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/delegates')}}"><i data-feather="users"></i>
                            <span>المناديب</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('السائقين'))
                    <li class="{{Request::is('admin/drivers*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/drivers')}}"><i data-feather="users"></i>
                            <span>السائقين</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('إشتراكات العملاء'))
                    <li class="{{Request::is('admin/subscriptions*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/subscriptions')}}"><i
                                    data-feather="dollar-sign"></i>
                            <span>إشتراكات العملاء</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الطلبات'))
                    <li class="{{Request::is('admin/orders*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/orders')}}"><i data-feather="shopping-cart"></i>
                            <span>الطلبات</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الكوبونات'))
                    <li class="{{Request::is('admin/copons*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/copons')}}"><i data-feather="gift"></i>
                            <span>الكوبونات</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الباقات'))
                    <li class="{{Request::is('admin/packages*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/packages')}}">
                            <i data-feather="dollar-sign"></i>
                            <span>الباقات</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('tags'))
                    <li class="{{Request::is('admin/tags*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/tags')}}">
                            <i data-feather="circle"></i>
                            <span>Tags</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الطبخات'))
                    <li class="{{Request::is('admin/meals*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/meals')}}">
                            <i data-feather="trash"></i>
                            <span>الطبخات</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('جدولة الطبخات'))
                    <li class="{{Request::is('admin/schedual_meals*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/schedual_meals')}}">
                            <i data-feather="calendar"></i>
                            <span>جدولة الطبخات</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('فترات التوصيل'))
                    <li class="{{Request::is('admin/periods*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/periods')}}">
                            <i data-feather="clock"></i>
                            <span>فترات التوصيل</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الشاشات الترحيبية'))
                    <li class="{{Request::is('admin/app_explanations*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/app_explanations')}}"><i
                                    data-feather="airplay"></i>
                            <span>الشاشات الترحيبية</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('تواصل معنا'))
                    <li class="{{Request::is('admin/contact_us*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/contact_us')}}"><i data-feather="edit-2"></i>
                            <span>تواصل معنا</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الشروط و الأحكام'))
                    <li class="{{Request::is('admin/terms*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/terms')}}"><i data-feather="file-text"></i>
                            <span>الشروط و الأحكام</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('عن التطبيق'))
                    <li class="{{Request::is('admin/abouts*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/abouts')}}"><i data-feather="eye"></i>
                            <span>عن التطبيق</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('طرق الدفع'))
                    <li class="{{Request::is('admin/payment-ways*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/payment-ways')}}"><i
                                    data-feather="credit-card"></i>
                            <span>طرق الدفع</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermissionTo('الإعدادات'))
                    <li class="{{Request::is('admin/settings*') ? "activated" : "" }}">
                        <a class="sidebar-header" href="{{asset('/admin/settings')}}"><i data-feather="settings"></i>
                            <span>الإعدادات</span>
                            {{--                            <i class="fa fa-angle-right pull-right"></i>--}}
                        </a>
                    </li>
                    @endif


                    {{--<li><a class="sidebar-header" href="index.html#"><i data-feather="airplay"></i><span>Widgets</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="general-widget.html"><i class="fa fa-circle"></i>General</a></li>
                        <li><a href="chart-widget.html"><i class="fa fa-circle"></i>Chart</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="../starter-kit/layout-light.html"><i data-feather="anchor"></i><span> Starter kit</span></a></li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="disc"></i><span>Color Version</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="layout-light.html"><i class="fa fa-circle"></i>Layout Light</a></li>
                        <li><a href="layout-dark.html"><i class="fa fa-circle"></i>Layout Dark</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="sidebar"></i><span>Sidebar</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="compact.html"><i class="fa fa-circle"></i>Compact Sidebar</a></li>
                        <li><a href="compact-small.html"><i class="fa fa-circle"></i>Compact Icon Sidebar</a></li>
                        <li><a href="sidebar-hidden.html"><i class="fa fa-circle"></i>Sidebar Hidden</a></li>
                        <li><a href="sidebar-fixed.html"><i class="fa fa-circle"></i>Sidebar Fixed</a></li>
                        <li><a class="disabled" href="" onclick="return false;"><i class="fa fa-circle"></i>Disable</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="layout"></i><span>Page layout</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="box-layout.html"><i class="fa fa-circle"></i>Boxed</a></li>
                        <li><a href="layout-rtl.html"><i class="fa fa-circle"></i>RTL</a></li>
                        <li><a href="1-column.html"><i class="fa fa-circle"></i>1 Column</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="align-justify"></i><span>Menu Options</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="hide-on-scroll.html"><i class="fa fa-circle"></i>Hide menu on Scroll</a></li>
                        <li><a href="vertical.html"><i class="fa fa-circle"></i>Vertical Menu</a></li>
                        <li><a href="mega-menu.html"><i class="fa fa-circle"></i>Mega Menu</a></li>
                        <li><a href="fix-header.html"><i class="fa fa-circle"></i>Fix header</a></li>
                        <li><a href="fix-header-sidebar.html"><i class="fa fa-circle"></i>Fix Header & sidebar</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="cloud-lightning"></i><span>Footers</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="footer-light.html"><i class="fa fa-circle"></i>Footer Light</a></li>
                        <li><a href="footer-dark.html"><i class="fa fa-circle"></i>Footer Dark</a></li>
                        <li><a href="footer-fixed.html"><i class="fa fa-circle"></i>Footer Fixed</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="pagebuild.html"><i data-feather="clipboard"></i><span>Page Builder</span></a></li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="edit-3"></i><span>Form Builders</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="form-builder-1.html"><i class="fa fa-circle"></i>Form Builder 1</a></li>
                        <li><a href="form-builder-2.html"><i class="fa fa-circle"></i>Form Builder 2</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="button-builder.html"><i data-feather="bookmark"></i><span>Button Builder</span></a></li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="box"></i><span> Base</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="state-color.html"><i class="fa fa-circle"></i>State color</a></li>
                        <li><a href="typography.html"><i class="fa fa-circle"></i>Typography</a></li>
                        <li><a href="avatars.html"><i class="fa fa-circle"></i>Avatars</a></li>
                        <li><a href="helper-classes.html"><i class="fa fa-circle"></i>helper classes</a></li>
                        <li><a href="grid.html"><i class="fa fa-circle"></i>Grid</a></li>
                        <li><a href="tag-pills.html"><i class="fa fa-circle"></i>Tag & pills</a></li>
                        <li><a href="progress-bar.html"><i class="fa fa-circle"></i>Progress</a></li>
                        <li><a href="modal.html"><i class="fa fa-circle"></i>Modal</a></li>
                        <li><a href="alert.html"><i class="fa fa-circle"></i>Alert</a></li>
                        <li><a href="popover.html"><i class="fa fa-circle"></i>Popover</a></li>
                        <li><a href="tooltip.html"><i class="fa fa-circle"></i>Tooltip</a></li>
                        <li><a href="loader.html"><i class="fa fa-circle"></i>Spinners</a></li>
                        <li><a href="dropdown.html"><i class="fa fa-circle"></i>Dropdown</a></li>
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Tabs<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="tab-bootstrap.html"><i class="fa fa-circle"></i>Bootstrap Tabs</a></li>
                            <li><a href="tab-material.html"><i class="fa fa-circle"></i>Line Tabs</a></li>
                          </ul>
                        </li>
                        <li><a href="according.html"><i class="fa fa-circle"></i>Accordion</a></li>
                        <li><a href="navs.html"><i class="fa fa-circle"></i>Navs</a></li>
                        <li><a href="box-shadow.html"><i class="fa fa-circle"></i>Shadow</a></li>
                        <li><a href="list.html"><i class="fa fa-circle"></i>Lists</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="folder-plus"></i><span> Advance</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="scrollable.html"><i class="fa fa-circle"></i>Scrollable</a></li>
                        <li><a href="tree.html"><i class="fa fa-circle"></i>Tree view</a></li>
                        <li><a href="bootstrap-notify.html"><i class="fa fa-circle"></i>Bootstrap Notify</a></li>
                        <li><a href="rating.html"><i class="fa fa-circle"></i>Rating</a></li>
                        <li><a href="dropzone.html"><i class="fa fa-circle"></i>dropzone</a></li>
                        <li><a href="tour.html"><i class="fa fa-circle"></i>Tour</a></li>
                        <li><a href="sweet-alert2.html"><i class="fa fa-circle"></i>SweetAlert2</a></li>
                        <li><a href="modal-animated.html"><i class="fa fa-circle"></i>Animated Modal</a></li>
                        <li><a href="owl-carousel.html"><i class="fa fa-circle"></i>Owl Carousel</a></li>
                        <li><a href="ribbons.html"><i class="fa fa-circle"></i>Ribbons</a></li>
                        <li><a href="pagination.html"><i class="fa fa-circle"></i>Pagination</a></li>
                        <li><a href="steps.html"><i class="fa fa-circle"></i>Steps</a></li>
                        <li><a href="breadcrumb.html"><i class="fa fa-circle"></i>Breadcrumb</a></li>
                        <li><a href="range-slider.html"><i class="fa fa-circle"></i>Range Slider</a></li>
                        <li><a href="image-cropper.html"><i class="fa fa-circle"></i>Image cropper</a></li>
                        <li><a href="sticky.html"><i class="fa fa-circle"></i>Sticky</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="cloud-drizzle"></i><span>Animation<span class="badge badge-danger ml-3">Hot</span></span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="animate.html"><i class="fa fa-circle"></i>Animate</a></li>
                        <li><a href="scroll-reval.html"><i class="fa fa-circle"></i>Scroll Reveal</a></li>
                        <li><a href="AOS.html"><i class="fa fa-circle"></i>AOS animation</a></li>
                        <li><a href="tilt.html"><i class="fa fa-circle"></i>Tilt Animation</a></li>
                        <li><a href="wow.html"><i class="fa fa-circle"></i>Wow Animation</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="command"></i><span>Icons</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="flag-icon.html"><i class="fa fa-circle"></i>Flag icon</a></li>
                        <li><a href="font-awesome.html"><i class="fa fa-circle"></i>Fontawesome Icon</a></li>
                        <li><a href="ico-icon.html"><i class="fa fa-circle"></i>Ico Icon</a></li>
                        <li><a href="themify-icon.html"><i class="fa fa-circle"></i>Thimify Icon</a></li>
                        <li><a href="feather-icon.html"><i class="fa fa-circle"></i>Feather icon</a></li>
                        <li><a href="whether-icon.html"><i class="fa fa-circle"></i>Whether Icon</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="cloud"></i><span>Buttons</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="buttons.html"><i class="fa fa-circle"></i>Default Style</a></li>
                        <li><a href="buttons-flat.html"><i class="fa fa-circle"></i>Flat Style</a></li>
                        <li><a href="buttons-edge.html"><i class="fa fa-circle"></i>Edge Style</a></li>
                        <li><a href="raised-button.html"><i class="fa fa-circle"></i>Raised Style</a></li>
                        <li><a href="button-group.html"><i class="fa fa-circle"></i>Button Group</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="file-text"></i><span>Forms</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Form Controls<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="form-validation.html"><i class="fa fa-circle"></i>Form Validation</a></li>
                            <li><a href="base-input.html"><i class="fa fa-circle"></i>Base Inputs</a></li>
                            <li><a href="radio-checkbox-control.html"><i class="fa fa-circle"></i>Checkbox & Radio</a></li>
                            <li><a href="input-group.html"><i class="fa fa-circle"></i>Input Groups</a></li>
                            <li><a href="megaoptions.html"><i class="fa fa-circle"></i>Mega Options</a></li>
                          </ul>
                        </li>
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Form Widgets<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="datepicker.html"><i class="fa fa-circle"></i>Datepicker</a></li>
                            <li><a href="time-picker.html"><i class="fa fa-circle"></i>Timepicker</a></li>
                            <li><a href="datetimepicker.html"><i class="fa fa-circle"></i>Datetimepicker</a></li>
                            <li><a href="daterangepicker.html"><i class="fa fa-circle"></i>Daterangepicker</a></li>
                            <li><a href="touchspin.html"><i class="fa fa-circle"></i>Touchspin</a></li>
                            <li><a href="select2.html"><i class="fa fa-circle"></i>Select2</a></li>
                            <li><a href="switch.html"><i class="fa fa-circle"></i>Switch</a></li>
                            <li><a href="typeahead.html"><i class="fa fa-circle"></i>Typeahead</a></li>
                            <li><a href="clipboard.html"><i class="fa fa-circle"></i>Clipboard</a></li>
                          </ul>
                        </li>
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Form Layout<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="default-form.html"><i class="fa fa-circle"></i>Default Forms</a></li>
                            <li><a href="form-wizard.html"><i class="fa fa-circle"></i>Form Wizard 1</a></li>
                            <li><a href="form-wizard-two.html"><i class="fa fa-circle"></i>Form Wizard 2</a></li>
                            <li><a href="form-wizard-three.html"><i class="fa fa-circle"></i>Form Wizard 3</a></li>
                            <li><a href="form-wizard-four.html"><i class="fa fa-circle"></i>Form Wizard 4</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="server"></i><span>Tables</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Bootstrap Tables<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="bootstrap-basic-table.html"><i class="fa fa-circle"></i>Basic Tables</a></li>
                            <li><a href="bootstrap-sizing-table.html"><i class="fa fa-circle"></i>Sizing Tables</a></li>
                            <li><a href="bootstrap-border-table.html"><i class="fa fa-circle"></i>Border Tables</a></li>
                            <li><a href="bootstrap-styling-table.html"><i class="fa fa-circle"></i>Styling Tables</a></li>
                            <li><a href="table-components.html"><i class="fa fa-circle"></i>Table components</a></li>
                          </ul>
                        </li>
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Data Tables<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="datatable-basic-init.html"><i class="fa fa-circle"></i>Basic Init</a></li>
                            <li><a href="datatable-advance.html"><i class="fa fa-circle"></i>Advance Init</a></li>
                            <li><a href="datatable-styling.html"><i class="fa fa-circle"></i>Styling</a></li>
                            <li><a href="datatable-AJAX.html"><i class="fa fa-circle"></i>AJAX</a></li>
                            <li><a href="datatable-server-side.html"><i class="fa fa-circle"></i>Server Side</a></li>
                            <li><a href="datatable-plugin.html"><i class="fa fa-circle"></i>Plug-in</a></li>
                            <li><a href="datatable-API.html"><i class="fa fa-circle"></i>API</a></li>
                            <li><a href="datatable-data-source.html"><i class="fa fa-circle"></i>Data Sources</a></li>
                          </ul>
                        </li>
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Extension Data Tables<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="datatable-ext-autofill.html"><i class="fa fa-circle"></i>Auto Fill</a></li>
                            <li><a href="datatable-ext-basic-button.html"><i class="fa fa-circle"></i>Basic Button</a></li>
                            <li><a href="datatable-ext-col-reorder.html"><i class="fa fa-circle"></i>Column Reorder</a></li>
                            <li><a href="datatable-ext-fixed-header.html"><i class="fa fa-circle"></i>Fixed Header</a></li>
                            <li><a href="datatable-ext-html-5-data-export.html"><i class="fa fa-circle"></i>HTML 5 Export</a></li>
                            <li><a href="datatable-ext-key-table.html"><i class="fa fa-circle"></i>Key Table</a></li>
                            <li><a href="datatable-ext-responsive.html"><i class="fa fa-circle"></i>Responsive</a></li>
                            <li><a href="datatable-ext-row-reorder.html"><i class="fa fa-circle"></i>Row Reorder</a></li>
                            <li><a href="datatable-ext-scroller.html"><i class="fa fa-circle"></i>Scroller</a></li>
                          </ul>
                        </li>
                        <li><a href="jsgrid-table.html"><i class="fa fa-circle"></i>Js Grid Table</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="book"></i><span>Cards</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="basic-card.html"><i class="fa fa-circle"></i>Basic Card</a></li>
                        <li><a href="creative-card.html"><i class="fa fa-circle"></i>Creative Card</a></li>
                        <li><a href="tabbed-card.html"><i class="fa fa-circle"></i>Tabbed Card</a></li>
                        <li><a href="dragable-card.html"><i class="fa fa-circle"></i>Draggable Card</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="sliders"></i><span>Timeline</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="timeline-v-1.html"><i class="fa fa-circle"></i>Timeline 1</a></li>
                        <li><a href="timeline-v-2.html"><i class="fa fa-circle"></i>Timeline 2</a></li>
                        <li><a href="timeline-small.html"><i class="fa fa-circle"></i>Timeline 3</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="bar-chart"></i><span>Charts</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="chart-google.html"><i class="fa fa-circle"></i>Google Chart</a></li>
                        <li><a href="chart-sparkline.html"><i class="fa fa-circle"></i>sparkline chart</a></li>
                        <li><a href="chart-flot.html"><i class="fa fa-circle"></i>Flot Chart</a></li>
                        <li><a href="chart-radial.html"><i class="fa fa-circle"></i>Radial Chart</a></li>
                        <li><a href="chart-knob.html"><i class="fa fa-circle"></i>Knob Chart</a></li>
                        <li><a href="chart-morris.html"><i class="fa fa-circle"></i>Morris Chart</a></li>
                        <li><a href="chartjs.html"><i class="fa fa-circle"></i>chatjs Chart</a></li>
                        <li><a href="chartist.html"><i class="fa fa-circle"></i>chartist Chart</a></li>
                        <li><a href="chart-peity.html"><i class="fa fa-circle"></i>Peity Chart</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="map"></i><span>Maps</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="map-js.html"><i class="fa fa-circle"></i>Maps JS</a></li>
                        <li><a href="vector-map.html"><i class="fa fa-circle"></i>Vector Maps</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="printer"></i><span>Email Templates</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Basic<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="basic-template.html" target="_blank"><i class="fa fa-circle"></i>Basic Email</a></li>
                            <li><a href="email-header.html" target="_blank"><i class="fa fa-circle"></i>Basic With Header</a></li>
                          </ul>
                        </li>
                      </ul>
                      <ul class="sidebar-submenu">
                        <li><a href="index.html#"><i class="fa fa-circle"></i>Ecommerce<i class="fa fa-angle-down pull-right"></i></a>
                          <ul class="sidebar-submenu">
                            <li><a href="template-email.html" target="_blank"><i class="fa fa-circle"></i>Email Template</a></li>
                            <li><a href="template-email-2.html" target="_blank"><i class="fa fa-circle"></i>Email Template 2</a></li>
                            <li><a href="ecommerce-templates.html" target="_blank"><i class="fa fa-circle"></i>Ecommerce Email</a></li>
                            <li><a href="email-order-success.html" target="_blank"><i class="fa fa-circle"></i>Order Success </a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="git-pull-request"></i><span>Editors</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="summernote.html"><i class="fa fa-circle"></i>Summer Note</a></li>
                        <li><a href="ckeditor.html"><i class="fa fa-circle"></i>CK editor</a></li>
                        <li><a href="simple-MDE.html"><i class="fa fa-circle"></i>MDE editor</a></li>
                        <li><a href="ace-code-editor.html"><i class="fa fa-circle"></i>ACE code editor</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="users"></i><span>Users</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="user-profile.html"><i class="fa fa-circle"></i>Users Profile</a></li>
                        <li><a href="edit-profile.html"><i class="fa fa-circle"></i>Users Edit</a></li>
                        <li><a href="user-cards.html"><i class="fa fa-circle"></i>Users Cards</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="calendar"></i><span>Calender</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="calendar.html"><i class="fa fa-circle"></i>Full Calender Basic</a></li>
                        <li><a href="calendar-event.html"><i class="fa fa-circle"></i>Full Calender Events</a></li>
                        <li><a href="calendar-advanced.html"><i class="fa fa-circle"></i>Full Calender Advance</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="internationalization.html"><i data-feather="aperture"></i><span>Internationalization</span></a></li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="image"></i><span>Gallery</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="gallery.html"><i class="fa fa-circle"></i>Gallery Grid</a></li>
                        <li><a href="gallery-with-description.html"><i class="fa fa-circle"></i>Gallery Grid with Desc</a></li>
                        <li><a href="gallery-masonry.html"><i class="fa fa-circle"></i>Masonry Gallery</a></li>
                        <li><a href="masonry-gallery-with-disc.html"><i class="fa fa-circle"></i>Masonry Gallery Desc</a></li>
                        <li><a href="gallery-hover.html"><i class="fa fa-circle"></i>Hover Effects</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="mail"></i><span>Email</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="email-application.html"><i class="fa fa-circle"></i>Email App</a></li>
                        <li><a href="email-compose.html"><i class="fa fa-circle"></i>Email Compose</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="edit"></i><span> Blog</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="blog.html"><i class="fa fa-circle"></i>Blog Details</a></li>
                        <li><a href="blog-single.html"><i class="fa fa-circle"></i>Blog Single</a></li>
                        <li><a href="add-post.html"><i class="fa fa-circle"></i>Add Post</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="message-square"></i><span>Chat</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="chat.html"><i class="fa fa-circle"></i>Chat App</a></li>
                        <li><a href="chat-video.html"><i class="fa fa-circle"></i>Video chat</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="social-app.html"><i data-feather="chrome"></i><span>Social App</span></a></li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="user-check"></i><span>Job Search</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="job-cards-view.html"><i class="fa fa-circle"></i>Cards view</a></li>
                        <li><a href="job-list-view.html"><i class="fa fa-circle"></i>List View</a></li>
                        <li><a href="job-details.html"><i class="fa fa-circle"></i>Job Details</a></li>
                        <li><a href="job-apply.html"><i class="fa fa-circle"></i>Apply</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="layers"></i><span>Learning</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="learning-list-view.html"><i class="fa fa-circle"></i>Learning List</a></li>
                        <li><a href="learning-detailed.html"><i class="fa fa-circle"></i>Detailed Course </a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="faq.html"><i data-feather="help-circle"></i><span>FAQ</span></a></li>
                    <li><a class="sidebar-header" href="knowledgebase.html"><i data-feather="database"></i><span>Knowledgebase</span></a></li>
                    <li><a class="sidebar-header" href="support-ticket.html"><i data-feather="headphones"></i><span>Support Ticket</span></a></li>
                    <li><a class="sidebar-header" href="to-do.html"><i data-feather="mic"></i><span>To-Do</span></a></li>
                    <li><a class="sidebar-header" href="landing-page.html" target="_blank"><i data-feather="navigation-2"></i><span>Landing page</span></a></li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="shopping-bag"></i><span>Ecommerce</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="product.html"><i class="fa fa-circle"></i>Product</a></li>
                        <li><a href="product-page.html"><i class="fa fa-circle"></i>Product page</a></li>
                        <li><a href="list-products.html"><i class="fa fa-circle"></i>Product list</a></li>
                        <li><a href="payment-details.html"><i class="fa fa-circle"></i>Payment Details</a></li>
                        <li><a href="order-history.html"><i class="fa fa-circle"></i>Order History</a></li>
                        <li><a href="invoice-template.html"><i class="fa fa-circle"></i>Invoice</a></li>
                        <li><a href="cart.html"><i class="fa fa-circle"></i>Cart</a></li>
                        <li><a href="list-wish.html"><i class="fa fa-circle"></i>Wishlist</a></li>
                        <li><a href="checkout.html"><i class="fa fa-circle"></i>Checkout</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="pricing.html"><i data-feather="dollar-sign"></i><span> Pricing</span></a></li>
                    <li><a class="sidebar-header" href="sample-page.html"><i data-feather="file"></i><span> Sample page</span></a></li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="search"></i><span>Search Pages</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="search.html"><i class="fa fa-circle"></i>Search Website</a></li>
                        <li><a href="search-images.html"><i class="fa fa-circle"></i>Search Images</a></li>
                        <li><a href="search-video.html"><i class="fa fa-circle"></i>Search Video</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="alert-octagon"></i><span> Error Page</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="error-400.html" target="_blank"><i class="fa fa-circle"></i>Error 400</a></li>
                        <li><a href="error-401.html" target="_blank"><i class="fa fa-circle"></i>Error 401</a></li>
                        <li><a href="error-403.html" target="_blank"><i class="fa fa-circle"></i>Error 403</a></li>
                        <li><a href="error-404.html" target="_blank"><i class="fa fa-circle"></i>Error 404</a></li>
                        <li><a href="error-500.html" target="_blank"><i class="fa fa-circle"></i>Error 500</a></li>
                        <li><a href="error-503.html" target="_blank"><i class="fa fa-circle"></i>Error 503</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="unlock"></i><span> Authentication</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="login.html" target="_blank"><i class="fa fa-circle"></i>Login Simple</a></li>
                        <li><a href="login-image.html" target="_blank"><i class="fa fa-circle"></i>Login with Bg Image</a></li>
                        <li><a href="login-video.html" target="_blank"><i class="fa fa-circle"></i>Login with Bg video</a></li>
                        <li><a href="signup.html" target="_blank"><i class="fa fa-circle"></i>Register Simple</a></li>
                        <li><a href="signup-image.html" target="_blank"><i class="fa fa-circle"></i>Register with Bg Image</a></li>
                        <li><a href="signup-video.html" target="_blank"><i class="fa fa-circle"></i>Register with Bg video</a></li>
                        <li><a href="unlock.html" target="_blank"><i class="fa fa-circle"></i>Unlock User</a></li>
                        <li><a href="forget-password.html" target="_blank"><i class="fa fa-circle"></i>Forget Password</a></li>
                        <li><a href="reset-password.html" target="_blank"><i class="fa fa-circle"></i>Reset Password</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="index.html#"><i data-feather="briefcase"></i><span>Coming Soon</span><i class="fa fa-angle-right pull-right"></i></a>
                      <ul class="sidebar-submenu">
                        <li><a href="comingsoon.html" target="_blank"><i class="fa fa-circle"></i>Coming Simple</a></li>
                        <li><a href="comingsoon-bg-video.html" target="_blank"><i class="fa fa-circle"></i>Coming with Bg video</a></li>
                        <li><a href="comingsoon-bg-img.html" target="_blank"><i class="fa fa-circle"></i>Coming with Bg Image</a></li>
                      </ul>
                    </li>
                    <li><a class="sidebar-header" href="maintenance.html" target="_blank"><i data-feather="settings"></i><span> Maintenance</span></a></li>--}}
                </ul>
            </div>
        </div>
        <!-- Page Sidebar Ends-->
        <!-- Right sidebar Start-->
        <div class="right-sidebar" id="right_side_bar">
            <div class="container p-0">
                <div class="modal-header p-l-20 p-r-20">
                    <div class="col-sm-8 p-0">
                        <h6 class="modal-title font-weight-bold">FRIEND LIST</h6>
                    </div>
                    <div class="col-sm-4 text-right p-0"><i class="mr-2" data-feather="settings"></i></div>
                </div>
            </div>
            <div class="friend-list-search mt-0">
                <input type="text" placeholder="search friend"><i class="fa fa-search"></i>
            </div>
            <div class="chat-box">
                <div class="people-list friend-list">
                    <ul class="list">
                        <li class="clearfix"><img class="rounded-circle user-image"
                                                  src="{{asset('cp/endless/assets/images/user/1.jpg')}}" alt="">
                            <div class="status-circle online"></div>
                            <div class="about">
                                <div class="name">Vincent Porter</div>
                                <div class="status"> Online</div>
                            </div>
                        </li>
                        <li class="clearfix"><img class="rounded-circle user-image"
                                                  src="{{asset('cp/endless/assets/images/user/2.png')}}" alt="">
                            <div class="status-circle away"></div>
                            <div class="about">
                                <div class="name">Ain Chavez</div>
                                <div class="status"> 28 minutes ago</div>
                            </div>
                        </li>
                        <li class="clearfix"><img class="rounded-circle user-image"
                                                  src="{{asset('cp/endless/assets/images/user/8.jpg')}}" alt="">
                            <div class="status-circle online"></div>
                            <div class="about">
                                <div class="name">Kori Thomas</div>
                                <div class="status"> Online</div>
                            </div>
                        </li>
                        <li class="clearfix"><img class="rounded-circle user-image"
                                                  src="{{asset('cp/endless/assets/images/user/4.jpg')}}" alt="">
                            <div class="status-circle online"></div>
                            <div class="about">
                                <div class="name">Erica Hughes</div>
                                <div class="status"> Online</div>
                            </div>
                        </li>
                        <li class="clearfix"><img class="rounded-circle user-image"
                                                  src="{{asset('cp/endless/assets/images/user/5.jpg')}}" alt="">
                            <div class="status-circle offline"></div>
                            <div class="about">
                                <div class="name">Ginger Johnston</div>
                                <div class="status"> 2 minutes ago</div>
                            </div>
                        </li>
                        <li class="clearfix"><img class="rounded-circle user-image"
                                                  src="{{asset('cp/endless/assets/images/user/6.jpg')}}" alt="">
                            <div class="status-circle away"></div>
                            <div class="about">
                                <div class="name">Prasanth Anand</div>
                                <div class="status"> 2 hour ago</div>
                            </div>
                        </li>
                        <li class="clearfix"><img class="rounded-circle user-image"
                                                  src="{{asset('cp/endless/assets/images/user/7.jpg')}}" alt="">
                            <div class="status-circle online"></div>
                            <div class="about">
                                <div class="name">Hileri Jecno</div>
                                <div class="status"> Online</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Right sidebar Ends-->


    <?php /*if(session()->has('insert_message')): */?><!--

          <div class="alert alert-success dark">
              <?php /*echo e(session()->get('insert_message')); */?>

            </div>

--><?php /*endif; */?>




    @yield('content')





    <!-- footer start-->
        <footer class="footer">
            <div class="container-fluid">
                {{--                <div class="row">--}}

                {{--                    <a class="pull-right mb-0" href="http://2grand.net" target="_blank" style="margin: auto">--}}
                {{--                        <img src="{{asset('grand.png')}}" style="width:100px;">--}}
                {{--                    </a>--}}
                <div class="col-md-12 footer-copyright" style="text-align: center">
                    <a href="http://allochef-eg.com/" target="_blank">
                        <b class="mb-0" style="color: #Fd5A1F;"> جميع الحقوق محفوظة
                        </b>
                    </a>
                    <img src="{{asset('logo.png')}}" width="70px" height="20px">

                </div>
                {{--                    <div class="col-md-6">--}}
                {{--                      <p class="pull-right mb-0">Hand crafted & made with<i class="fa fa-heart"></i></p>--}}
                {{--                    </div>--}}
                {{--                </div>--}}
            </div>
        </footer>
    </div>
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


<script>
    $(document).ready(function () {

        function drawChart() {
            ////////////////////////////////
            google.charts.load('current', {packages: ['corechart', 'bar']});
            google.charts.load('current', {'packages': ['line']});
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawBasic);

            function drawBasic() {

                @if(isset($activeUsers) && isset($inActiveUsers))
                if ($("#users_pie_chart").length > 0) {
                    var data = google.visualization.arrayToDataTable([
                        ['Task', 'Hours per Day'],
                        ['مستخدم فعال', {{$activeUsers}}],
                        ['مستخدم غير فعال', {{$inActiveUsers}}],
                    ]);
                    var options = {
                        title: 'نسبة المستخدمين',
                        is3D: true,
                        width: '100%',
                        height: 300,
                        colors: ["#22af47", "#ae0e20"]
                    };
                    var chart = new google.visualization.PieChart(document.getElementById('users_pie_chart'));
                    chart.draw(data, options);
                }
                @endif

                        @if(isset($activeDrivers) && isset($inActiveDrivers))
                if ($("#drivers_pie_chart").length > 0) {
                    var data = google.visualization.arrayToDataTable([
                        ['Task', 'Hours per Day'],
                        ['سائق فعال', {{$activeDrivers}}],
                        ['سائق موقوف', {{$inActiveDrivers}}],
                    ]);
                    var options = {
                        title: 'نسبة  السائقين',
                        is3D: true,
                        width: '100%',
                        height: 300,
                        colors: ["#e6bb1d", "#f77e0b"]
                    };
                    var chart = new google.visualization.PieChart(document.getElementById('drivers_pie_chart'));
                    chart.draw(data, options);
                }
                @endif

                        @if(isset($activeDelegates) && isset($inActiveDelegates))
                if ($("#delegates_pie_chart").length > 0) {
                    var data = google.visualization.arrayToDataTable([
                        ['Task', 'Hours per Day'],
                        ['مندوب فعال', {{$activeDelegates}}],
                        ['مندوب موقوف', {{$inActiveDelegates}}],
                    ]);
                    var options = {
                        title: 'نسبة  المناديب',
                        is3D: true,
                        width: '100%',
                        height: 300,
                        colors: ["#007bff", "#ae0e20"]
                    };
                    var chart = new google.visualization.PieChart(document.getElementById('delegates_pie_chart'));
                    chart.draw(data, options);
                }
                @endif

                        @if(isset($activeHeaveyDelegates) && isset($inActiveHeaveyDelegates))
                if ($("#heavey_delegates_pie_chart").length > 0) {
                    var data = google.visualization.arrayToDataTable([
                        ['Task', 'Hours per Day'],
                        ['مندوب فعال', {{$activeHeaveyDelegates}}],
                        ['مندوب موقوف', {{$inActiveHeaveyDelegates}}],
                    ]);
                    var options = {
                        title: 'نسبة  مناديب النقل الثقيل',
                        is3D: true,
                        width: '100%',
                        height: 300,
                        colors: ["#22af47", "#ae0e20"]
                    };
                    var chart = new google.visualization.PieChart(document.getElementById('heavey_delegates_pie_chart'));
                    chart.draw(data, options);
                }
                @endif

                        @if(isset($shops_pie_chart) && isset($branches_pie_chart))
                if ($("#shops_pie_chart").length > 0) {
                    var data = google.visualization.arrayToDataTable([
                        ['Task', 'Hours per Day'],
                        ['متجر', {{$shops_pie_chart}}],
                        ['فرع', {{$branches_pie_chart}}],
                    ]);
                    var options = {
                        title: 'نسبة  المتاجر و الفروع المسجلة',
                        is3D: true,
                        width: '100%',
                        height: 300,
                        colors: ["#e6bb1d", "#f77e0b"]
                    };
                    var chart = new google.visualization.PieChart(document.getElementById('shops_pie_chart'));
                    chart.draw(data, options);
                }

                if ($("#all_pie_chart").length > 0) {
                    var data = google.visualization.arrayToDataTable([
                        ['Task', 'Hours per Day'],
                        ['متجر', {{$shops_pie_chart}}],
                        ['فرع', {{$branches_pie_chart}}],
                        ['مندوب فعال', {{$activeDelegates}}],
                        ['مندوب نفل ثقيل', {{$activeHeaveyDelegates}}],
                        ['سائق فعال', {{$activeDrivers}}],
                        ['مستخدم فعال', {{$activeUsers}}],
                    ]);
                    var options = {
                        title: 'إحصائيات مستخدمي التطبيق ',
                        is3D: true,
                        width: '100%',
                        height: 300,
                        colors: ["#e6bb1d",
                            "#22af47",
                            "#007bff",
                            "#ae0e20",
                            "#f77e0b",
                            "#F700B4"]
                    };
                    var chart = new google.visualization.PieChart(document.getElementById('all_pie_chart'));
                    chart.draw(data, options);
                }
                @endif



                {{--if ($("#orders_pie_chart").length > 0) {--}}
                {{--    var data = google.visualization.arrayToDataTable([--}}
                {{--        ['Task', 'Hours per Day'],--}}
                {{--        ['pending', {{$pendingOrders}}],--}}
                {{--        ['processing', {{$processingOrders}}],--}}
                {{--        ['on the way', {{$onTheWayOrders}}],--}}
                {{--        ['Delivered', {{$deliveredOrders}}],--}}
                {{--        ['refunded', {{$refundedOrders}}]--}}
                {{--    ]);--}}
                {{--    var options = {--}}
                {{--        title: 'Orders Percentages',--}}
                {{--        is3D: true,--}}
                {{--        width: '100%',--}}
                {{--        height: 300,--}}
                {{--       colors: ["#ae0e20", "#e6bb1d", "#f77e0b", "#22af47", "#007bff"]--}}
                {{--    };--}}
                {{--    var chart = new google.visualization.PieChart(document.getElementById('orders_pie_chart'));--}}
                {{--    chart.draw(data, options);--}}
                {{--}--}}
                {{--if ($("#products_pie_chart").length > 0) {--}}
                {{--    var data = google.visualization.arrayToDataTable([--}}
                {{--        ['Task', 'Hours per Day'],--}}
                {{--        ['Total Products',     {{$totalProducts}}],--}}
                {{--        ['Sold Products',      {{$products}}],--}}
                {{--    ]);--}}
                {{--    var options = {--}}
                {{--        title: 'Products Percentages',--}}
                {{--        is3D: true,--}}
                {{--        width:'100%',--}}
                {{--        height: 300,--}}
                {{--        colors: ["#007bff", "#22af47"]--}}
                {{--    };--}}
                {{--    var chart = new google.visualization.PieChart(document.getElementById('products_pie_chart'));--}}
                {{--    chart.draw(data, options);--}}
                {{--}--}}

            }

            ////////////////////////////////
            /*users charts*/
            @if(isset($users_charts))
            if ($("#_users").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Users", {role: "style"}],
                        @if(isset($users_charts))
                        @foreach($users_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_users"));
                chart.draw(view, options);
            }
            @endif

            /*=======================================================*/

            /*drivers charts*/
            @if(isset($drivers_charts))
            if ($("#_drivers").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Drivers", {role: "style"}],
                        @if(isset($drivers_charts))
                        @foreach($drivers_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_drivers"));
                chart.draw(view, options);
            }
            @endif

            /*delegates charts*/
            @if(isset($delegates_charts))
            if ($("#_delegates").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Delegates", {role: "style"}],
                        @if(isset($delegates_charts))
                        @foreach($delegates_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_delegates"));
                chart.draw(view, options);
            }
            @endif

            /*=======================================================*/

            /*delegates charts*/
            @if(isset($delegates_heavey_charts))
            if ($("#_delegates_heavey").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Delegates Heavey", {role: "style"}],
                        @if(isset($delegates_heavey_charts))
                        @foreach($delegates_heavey_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_delegates_heavey"));
                chart.draw(view, options);
            }
            @endif

            /*=======================================================*/

            /*shops charts*/
            @if(isset($shops_charts))
            if ($("#_shops").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Shops", {role: "style"}],
                        @if(isset($shops_charts))
                        @foreach($shops_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_shops"));
                chart.draw(view, options);
            }
            @endif

            /*shops_orders_charts charts*/
            @if(isset($shops_orders_charts))
            if ($("#_shops_orders_charts").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Shops Orders", {role: "style"}],
                        @if(isset($shops_orders_charts))
                        @foreach($shops_orders_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_shops_orders_charts"));
                chart.draw(view, options);
            }
            @endif

            /*=======================================================*/

            /*normal_orders_charts charts*/
            @if(isset($normal_orders_charts))
            if ($("#_normal_orders_charts").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Normal Orders", {role: "style"}],
                        @if(isset($normal_orders_charts))
                        @foreach($normal_orders_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_normal_orders_charts"));
                chart.draw(view, options);
            }
            @endif

            /*=======================================================*/

            /*urgentTrips charts*/
            @if(isset($urgentTrips_charts))
            if ($("#_urgentTrips_charts").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Urgent Trips", {role: "style"}],
                        @if(isset($urgentTrips_charts))
                        @foreach($urgentTrips_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_urgentTrips_charts"));
                chart.draw(view, options);
            }
            @endif

            /*=======================================================*/

            /*scheduledTrips charts*/
            @if(isset($scheduledTrips_charts))
            if ($("#_scheduledTrips_charts").length > 0) {
                var data = google.visualization.arrayToDataTable([
                    ["Element", " Scheduled Trips", {role: "style"}],
                        @if(isset($scheduledTrips_charts))
                        @foreach($scheduledTrips_charts as $test)
                    [" {{$test->date  }} ", {{ $test->count }} , "#C32F45"],
                    @endforeach
                    @endif
                ]);
                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    }, 2]);
                var options = {
                    width: '20%',
                    height: 300,
                    bar: {groupWidth: "10%"},
                    legend: {position: "none"},
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("_scheduledTrips_charts"));
                chart.draw(view, options);
            }
            @endif
        }

        google.charts.load("current", {packages: ['corechart']});
        google.charts.setOnLoadCallback(drawChart);

    });

</script>
<script>
    $('#basic-9').DataTable({
        "language": {
            "sProcessing": "جارٍ التحميل...",
            "sLengthMenu": "أظهر _MENU_ مدخلات",
            "sZeroRecords": "لم يعثر على أية سجلات",
            "sInfo": "إظهار _START_ إلى _END_ من أصل _TOTAL_ مدخل",
            "sInfoEmpty": "يعرض 0 إلى 0 من أصل 0 سجل",
            "sInfoFiltered": "(منتقاة من مجموع _MAX_ مُدخل)",
            "sInfoPostFix": "",
            "sSearch": "ابحث:",
            "sUrl": "",
            "oPaginate": {
                "sFirst": "الأول",
                "sPrevious": "السابق",
                "sNext": "التالي",
                "sLast": "الأخير"
            }
        }
    });
</script>
<script>
    $(document).ready(function () {
        $("#demo-input").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>
@yield('extra-js')

@yield('mapLocation')
</html>

