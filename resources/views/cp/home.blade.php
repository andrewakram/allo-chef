@extends('cp.index')
@section('content')

    <div class="page-body">

        <div class="container-fluid" style="display: none">
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <div class="page-header-left">
                            <h3>الرئيسية</h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item">Dashboard</li>
                                <li class="breadcrumb-item active">الرئيسية</li>
                            </ol>--}}
                        </div>
                    </div>
                    <!-- Bookmark Start-->
                    <div class="col">
                        <div class="bookmark pull-right">
                            <ul>
                                <li style="display: none"><a href="index.html#" data-container="body"
                                                             data-toggle="popover" data-placement="top" title=""
                                                             data-original-title="Calendar"><i
                                                data-feather="calendar"></i></a></li>
                                <li style="display: none"><a href="index.html#" data-container="body"
                                                             data-toggle="popover" data-placement="top" title=""
                                                             data-original-title="Mail"><i data-feather="mail"></i></a>
                                </li>
                                <li style="display: none"><a href="index.html#" data-container="body"
                                                             data-toggle="popover" data-placement="top" title=""
                                                             data-original-title="Chat"><i
                                                data-feather="message-square"></i></a></li>
                                <li style="display: none"><a href="index.html#"><i class="bookmark-search"
                                                                                   data-feather="star"></i></a>
                                    <form class="form-inline search-form">
                                        <div class="form-group form-control-search">
                                            <input type="text" placeholder="Search..">
                                        </div>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Bookmark Ends-->
                </div>
            </div>
        </div>


        <!-- Container-fluid starts-->
        {{--<div class="col-xl-8 xl-100">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="chart-widget-dashboard">
                                <div class="media">
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0 f-w-600"><i data-feather="dollar-sign"></i><span class="counter">5789</span></h5>
                                        <p>Total Visits</p>
                                    </div><i data-feather="tag"></i>
                                </div>
                                <div class="dashboard-chart-container">
                                    <div class="small-chart-gradient-1"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="chart-widget-dashboard">
                                <div class="media">
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0 f-w-600"><i data-feather="dollar-sign"></i><span class="counter">4986</span></h5>
                                        <p>Total Sale</p>
                                    </div><i data-feather="shopping-cart"></i>
                                </div>
                                <div class="dashboard-chart-container">
                                    <div class="small-chart-gradient-2"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="chart-widget-dashboard">
                                <div class="media">
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0 f-w-600"><i data-feather="dollar-sign"></i><span class="counter">8568</span></h5>
                                        <p>Total Value</p>
                                    </div><i data-feather="sun"></i>
                                </div>
                                <div class="dashboard-chart-container">
                                    <div class="small-chart-gradient-3"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>Production Valuation</h5>
                            <div class="card-header-right">
                                <ul class="list-unstyled card-option">
                                    <li><i class="icofont icofont-simple-left"></i></li>
                                    <li><i class="view-html fa fa-code"></i></li>
                                    <li><i class="icofont icofont-maximize full-card"></i></li>
                                    <li><i class="icofont icofont-minus minimize-card"></i></li>
                                    <li><i class="icofont icofont-refresh reload-card"></i></li>
                                    <li><i class="icofont icofont-error close-card"></i></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="show-value-top d-flex">
                                <div class="value-left d-inline-block">
                                    <div class="square bg-primary d-inline-block"></div><span>Total Earning</span>
                                </div>
                                <div class="value-right d-inline-block">
                                    <div class="square d-inline-block bg-secondary"></div><span>Total Tax</span>
                                </div>
                            </div>
                            <div class="smooth-chart flot-chart-container"></div>
                            <div class="code-box-copy">
                                <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                                <pre><code class="language-html" id="example-head">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="show-value-top d-flex"&gt;
&lt;div class="value-left d-inline-block"&gt;
  &lt;div class="square bg-primary d-inline-block"&gt;&lt;/div&gt;
  &lt;span&gt;Total Earning&lt;/span&gt;
&lt;/div&gt;
&lt;div class="value-right d-inline-block"&gt;
  &lt;div class="square d-inline-block bg-secondary"&gt;&lt;/div&gt;
  &lt;span&gt;Total Tax&lt;/span&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="smooth-chart flot-chart-container"&gt;&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-xl-4 xl-100">
            <div class="card">
                <div class="card-header">
                    <h5>Activity</h5>
                    <div class="card-header-right">
                        <ul class="list-unstyled card-option">
                            <li><i class="icofont icofont-simple-left"></i></li>
                            <li><i class="view-html fa fa-code"></i></li>
                            <li><i class="icofont icofont-maximize full-card"></i></li>
                            <li><i class="icofont icofont-minus minimize-card"></i></li>
                            <li><i class="icofont icofont-refresh reload-card"></i></li>
                            <li><i class="icofont icofont-error close-card"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body activity-scroll">
                    <div class="activity">
                        <div class="media">
                            <div class="gradient-round m-r-30 gradient-line-1"><i data-feather="shopping-bag"></i></div>
                            <div class="media-body">
                                <h6>New Sale <span class="pull-right f-14">New</span></h6>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.</p>
                            </div>
                        </div>
                        <div class="media">
                            <div class="gradient-round m-r-30 gradient-line-1"><i data-feather="message-circle"></i></div>
                            <div class="media-body">
                                <h6>New Message <span class="pull-right f-14">14m Ago</span></h6>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.</p>
                            </div>
                        </div>
                        <div class="media">
                            <div class="gradient-round m-r-30 small-line"><i data-feather="minus-circle"></i></div>
                            <div class="media-body">
                                <h6>New Report <span class="pull-right f-14">14m Ago</span></h6>
                                <p class="activity-xl">Lorem Ipsum is simply dummy text.</p>
                            </div>
                        </div>
                        <div class="media">
                            <div class="gradient-round m-r-30 gradient-line-1"><i data-feather="shopping-bag"></i></div>
                            <div class="media-body">
                                <h6>New Sale <span class="pull-right f-14">14m Ago</span></h6>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.</p>
                            </div>
                        </div>
                        <div class="media">
                            <div class="gradient-round m-r-30 medium-line"><i data-feather="tag"></i></div>
                            <div class="media-body">
                                <h6>New Visits <span class="pull-right f-14">14m Ago</span></h6>
                                <h6>New Visits <span class="pull-right f-14">14m Ago</span></h6>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.</p>
                            </div>
                        </div>
                    </div>
                    <div class="code-box-copy">
                        <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head1" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                        <pre><code class="language-html" id="example-head1">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="activity"&gt;
&lt;div class="media"&gt;
&lt;div class="gradient-round m-r-30 gradient-line-1"&gt;
  &lt;i data-feather="shopping-bag"&gt;&lt;/i&gt;
&lt;/div&gt;
&lt;div class="media-body"&gt;
  &lt;h6&gt;New Sale &lt;span class="pull-right f-14"&gt;New&lt;/span&gt;&lt;/h6&gt;
  &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="media"&gt;
&lt;div class="gradient-round m-r-30 gradient-line-1"&gt;
  &lt;i data-feather="message-circle"&gt;&lt;/i&gt;
&lt;/div&gt;
&lt;div class="media-body"&gt;
  &lt;h6&gt;New Message &lt;span class="pull-right f-14"&gt;14m Ago&lt;/span&gt;&lt;/h6&gt;
  &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="media"&gt;
&lt;div class="gradient-round m-r-30 small-line"&gt;
  &lt;i data-feather="minus-circle"&gt;&lt;/i&gt;
&lt;/div&gt;
&lt;div class="media-body"&gt;
  &lt;h6&gt;New Report &lt;span class="pull-right f-14"&gt;14m Ago&lt;/span&gt;&lt;/h6&gt;
  &lt;p&gt;Lorem Ipsum is simply dummy text.&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="media"&gt;
&lt;div class="gradient-round m-r-30 gradient-line-1"&gt;
  &lt;i data-feather="shopping-bag"&gt;&lt;/i&gt;
&lt;/div&gt;
&lt;div class="media-body"&gt;
  &lt;h6&gt;New Sale &lt;span class="pull-right f-14"&gt;14m Ago&lt;/span&gt;&lt;/h6&gt;
  &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="media"&gt;
&lt;div class="gradient-round m-r-30 medium-line"&gt;
  &lt;i data-feather="tag"&gt;&lt;/i&gt;
&lt;/div&gt;
&lt;div class="media-body"&gt;
  &lt;h6&gt;New Visits &lt;span class="pull-right f-14"&gt;14m Ago&lt;/span&gt;&lt;/h6&gt;
  &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry.&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-xl-4 col-md-6 xl-50">
            <div class="card">
                <div class="card-header">
                    <h5>Total Profit</h5><span class="d-block fonts-dashboard">All Custom Income</span>
                    <div class="card-header-right">
                        <ul class="list-unstyled card-option">
                            <li><i class="icofont icofont-simple-left"></i></li>
                            <li><i class="view-html fa fa-code"></i></li>
                            <li><i class="icofont icofont-maximize full-card"></i></li>
                            <li><i class="icofont icofont-minus minimize-card"></i></li>
                            <li><i class="icofont icofont-refresh reload-card"></i></li>
                            <li><i class="icofont icofont-error close-card"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body">
                    <div class="knob-block text-center">
                        <input class="knob" data-width="270" data-height="270" data-thickness=".2" data-angleoffset="90" data-fgcolor="#4466f2" data-bgcolor="#f6f7fb" data-linecap="round" value="35">
                    </div>
                    <div class="show-value d-flex">
                        <div class="value-left">
                            <div class="square bg-primary d-inline-block"></div><span>Total Profit</span>
                        </div>
                        <div class="value-right">
                            <div class="square bg-light d-inline-block"></div><span>Total Investment</span>
                        </div>
                    </div>
                    <div class="code-box-copy">
                        <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head2" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                        <pre><code class="language-html" id="example-head2">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="knob-block text-center"&gt;
&lt;input class="knob" data-width="270" data-height="270" data-thickness=".2" data-angleOffset=90 data-fgColor="#4466f2" data-bgColor="#f6f7fb" data-linecap=round value="35"&gt;
&lt;/div&gt;
&lt;div class="show-value d-flex"&gt;
&lt;div class="value-left"&gt;
&lt;div class="square bg-primary d-inline-block"&gt;&lt;/div&gt;
&lt;span&gt;Total Profit&lt;/span&gt;
&lt;/div&gt;
&lt;div class="value-right"&gt;
&lt;div class="square bg-light d-inline-block"&gt;&lt;/div&gt;
&lt;span&gt;Total Investment&lt;/span&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-xl-4 xl-50 col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body progress-media">
                            <div class="media">
                                <div class="media-body">
                                    <h5>Total Review</h5><span class="mb-0 d-block">Customer Review</span>
                                </div><i data-feather="thumbs-up"></i>
                            </div>
                            <div class="progress-bar-showcase">
                                <div class="progress sm-progress-bar">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 90%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="progress-change"><span>Change</span><span class="pull-right">95%</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body progress-media">
                            <div class="media">
                                <div class="media-body">
                                    <h5>Total Feedback</h5><span class="mb-0 d-block">Feedback</span>
                                </div><i data-feather="message-circle"></i>
                            </div>
                            <div class="progress-bar-showcase">
                                <div class="progress sm-progress-bar">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 85%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="progress-change"><span>Change</span><span class="pull-right">85%</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-xl-4 xl-100 col-md-12">
            <div class="card user-card">
                <div class="card-body">
                    <div class="online-user">
                        <h5 class="font-primary f-18 mb-0">Online</h5>
                    </div>
                    <div class="user-card-image"><img class="img-fluid rounded-circle image-radius" src="{{asset('cp/endless/assets/images/dashboard/designer.jpg')}}" alt=""></div>
                    <div class="user-deatils text-center">
                        <h5>Marshi Kisteen</h5>
                        <h6 class="mb-0">marshikisteen@gmail.com</h6>
                    </div>
                    <div class="user-badge text-center"><a class="badge badge-pill badge-light" href="index.html#">Dashboard</a><a class="badge badge-pill badge-light" href="index.html#">Ui</a><a class="badge badge-pill badge-light" href="index.html#">Xi</a><a href="index.html#"><span class="badge badge-pill badge-light active">2+</span></a></div>
                    <div class="card-footer row pb-0 text-center">
                        <div class="col-6">
                            <div class="d-flex user-footer"><i class="m-r-10" data-feather="message-square"></i>
                                <h6 class="f-18 mb-0">Message</h6>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="d-flex user-footer"><i class="m-r-10" data-feather="briefcase"></i>
                                <h6 class="f-18 mb-0">Portfolio</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-xl-6">
            <div class="card height-equal">
                <div class="card-header card-header-border">
                    <div class="row">
                        <div class="col-sm-6">
                            <h5>New User</h5>
                        </div>
                        <div class="col-sm-6">
                            <div class="pull-right right-header"><span>Month</span><span>
                        <button class="btn btn-primary btn-pill">Today</button></span></div>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="new-users">
                        <div class="media"><img class="rounded-circle image-radius m-r-15" src="{{asset('cp/endless/assets/images/user/2.png')}}" alt="">
                            <div class="media-body">
                                <h6 class="mb-0 f-w-700">Nick Stone</h6>
                                <p>Visual Designer, Github Inc</p>
                            </div><span class="pull-right">
                      <button class="btn btn-pill btn-outline-light">Follow</button></span>
                        </div>
                        <div class="media"><img class="rounded-circle image-radius m-r-15" src="{{asset('cp/endless/assets/images/user/5.jpg')}}" alt="">
                            <div class="media-body">
                                <h6 class="mb-0 f-w-700">Milano Esco</h6>
                                <p>Visual Designer, Github Inc</p>
                            </div><span class="pull-right">
                      <button class="btn btn-pill btn-outline-light">Follow</button></span>
                        </div>
                        <div class="media"><img class="rounded-circle image-radius m-r-15" src="{{asset('cp/endless/assets/images/user/3.jpg')}}" alt="">
                            <div class="media-body">
                                <h6 class="mb-0 f-w-700">Wiltor Noice</h6>
                                <p>Visual Designer, Github Inc</p>
                            </div><span class="pull-right">
                      <button class="btn btn-pill btn-outline-light">Follow</button></span>
                        </div>
                        <div class="media"><img class="rounded-circle image-radius m-r-15" src="{{asset('cp/endless/assets/images/user/4.jpg')}}" alt="">
                            <div class="media-body">
                                <h6 class="mb-0 f-w-700">Anna Strong</h6>
                                <p>Visual Designer, Github Inc</p>
                            </div><span class="pull-right">
                      <button class="btn btn-pill btn-outline-light">Follow</button></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-xl-6">
            <div class="card height-equal">
                <div class="card-header card-header-border">
                    <div class="row">
                        <div class="col-sm-7">
                            <h5>Re
                            cent Notification</h5>
                        </div>
                        <div class="col-sm-5">
                            <div class="pull-right right-header">
                                <div class="onhover-dropdown">
                                    <button class="btn btn-primary btn-pill" type="button">All <span class="pr-0"><i class="fa fa-angle-down"></i></span></button>
                                    <div class="onhover-show-div right-header-dropdown"><a class="d-block" href="index.html#">Order</a><a class="d-block" href="index.html#">Download</a><a class="d-block" href="index.html#">Trash</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body recent-notification">
                    <div class="media">
                        <h6>09:00</h6>
                        <div class="media-body"><span>Lorem ipsum dolor sit amit,consectetur eiusmdd.</span>
                            <p class="f-12">By Kan</p>
                        </div>
                    </div>
                    <div class="media">
                        <h6>10:50</h6>
                        <div class="media-body"><span>Lorem ipsum.</span>
                            <p class="f-12">By Tailer</p>
                        </div>
                    </div>
                    <div class="media">
                        <h6>01:00</h6>
                        <div class="media-body"><span>Lorem ipsum dolor sit amit,consectetur eiusmdd.</span>
                            <p class="f-12">By Kaint</p>
                        </div>
                    </div>
                    <div class="media">
                        <h6>05:00</h6>
                        <div class="media-body"><span>Lorem ipsum dolor sit amit.</span>
                            <p class="f-12">By call</p>
                        </div>
                    </div>
                    <div class="media">
                        <h6>12:00</h6>
                        <div class="media-body"><span>Lorem ipsum dolor sit.</span>
                            <p class="f-12">By Waiter</p>
                        </div>
                    </div>
                    <div class="media">
                        <h6>08:20</h6>
                        <div class="media-body"><span>Lorem ipsum dolor sit amit,consectetur eiusmdd dolor sit amit.</span>
                            <p class="f-12">By Comman</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h5>Calculation</h5>
                    <div class="card-header-right">
                        <ul class="list-unstyled card-option">
                            <li><i class="icofont icofont-simple-left"></i></li>
                            <li><i class="view-html fa fa-code"></i></li>
                            <li><i class="icofont icofont-maximize full-card"></i></li>
                            <li><i class="icofont icofont-minus minimize-card"></i></li>
                            <li><i class="icofont icofont-refresh reload-card"></i></li>
                            <li><i class="icofont icofont-error close-card"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body">
                    <div class="show-value-top d-flex">
                        <div class="value-left d-inline-block">
                            <div class="square bg-primary d-inline-block"></div><span>Total Income</span>
                        </div>
                        <div class="value-right d-inline-block">
                            <div class="square d-inline-block bg-smooth-chart"></div><span>Total Loss</span>
                        </div>
                    </div>
                    <div class="ct-svg flot-chart-container"></div>
                    <div class="code-box-copy">
                        <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head3" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                        <pre><code class="language-html" id="example-head3">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="show-value-top d-flex"&gt;
&lt;div class="value-left d-inline-block"&gt;
&lt;div class="square bg-primary d-inline-block"&gt;&lt;/div&gt;
&lt;span&gt;Total Income&lt;/span&gt;
&lt;/div&gt;
&lt;div class="value-right d-inline-block"&gt;
&lt;div class="square d-inline-block bg-smooth-chart"&gt;&lt;/div&gt;
&lt;span&gt;Total Loss&lt;/span&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="ct-svg flot-chart-container"&gt;&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                </div>
            </div>
        </div>--}}
        {{--<div class="col-xl-7 xl-100">
            <div class="card">
                <div class="card-header card-header-border chat-header-default">
                    <div class="row">
                        <div class="col-sm-6">
                            <h5>Conversations</h5>
                        </div>
                        <div class="col-sm-6">
                            <div class="right-header pull-right m-t-5">
                                <div class="onhover-dropdown"><i data-feather="more-horizontal"></i>
                                    <div class="onhover-show-div right-header-dropdown more-dropdown"><a class="d-block" href="index.html#">View</a><a class="d-block" href="index.html#">Media</a><a class="d-block" href="index.html#">Search</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body chat-box dashboard-chat">
                    <div class="chat">
                        <div class="media left-side-chat"><img class="rounded-circle chat-user-img img-60 m-r-20" src="{{asset('cp/endless/assets/images/user/4.jpg')}}" alt="">
                            <div class="media-body">
                                <div class="message-main">
                                    <p class="mb-0">Lorem Ipsum is simply dummy text of the </p>
                                </div>
                            </div>
                        </div>
                        <div class="media right-side-chat">
                            <div class="media-body text-right">
                                <div class="message-main">
                                    <p class="pull-right">Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum has been the industry's</p>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="sub-message message-main">
                                    <p class="pull-right mb-0">Lorem Ipsum is simply dummy text of the </p>
                                    <div class="clearfix"></div>
                                </div>
                            </div><img class="rounded-circle chat-user-img img-60 m-l-20" src="{{asset('cp/endless/assets/images/user/5.jpg')}}" alt="">
                        </div>
                        <div class="media left-side-chat"><img class="rounded-circle chat-user-img img-60 m-r-20" src="{{asset('cp/endless/assets/images/user/4.jpg')}}" alt="">
                            <div class="media-body">
                                <div class="message-main">
                                    <p>Lorem Ipsum is simply dummy text of the printing</p>
                                </div>
                                <div class="sub-message message-main smiley-bg"><img src="{{asset('cp/endless/assets/images/dashboard/smily.png')}}" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="media chat-footer bg-primary"><i class="icon-face-smile"></i>
                    <div class="media-body">
                        <input class="form-control" type="text" placeholder="Type your message" required="">
                    </div><i data-feather="send"></i>
                </div>
            </div>
        </div>--}}

        <div class="container-fluid">
            <div class=" card-header-border">
                <div class="row">
                    <div class="col-md-12">
                        <br>
                        <h5 class="align-abjust" style="text-align: right">
                                    <span>
                                        <i class="fa fa-home fa-2x"></i>
                                    </span>
                            <span style="font-size: x-large;">
                                        الرئيسية
                                    </span>
                        </h5>

                    </div>
                    <div class="col-md-10" style="display: none">
                        <div class="pull-right right-header">
                            <div class="onhover-dropdown">
                                <button class="btn btn-primary btn-pill" type="button">All <span
                                            class="pr-0"><i class="fa fa-angle-down"></i></span></button>
                                <div class="onhover-show-div right-header-dropdown"><a class="d-block"
                                                                                       href="index.html#">Shipping</a><a
                                            class="d-block" href="index.html#">Purchase</a><a
                                            class="d-block" href="index.html#">Total Sell</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-warning b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="users"></i></div>
                                <div class="media-body"><span class="m-0">المستخدمين</span>
                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">{{$users + 3000}}</h4>
                                    <i class="icon-bg" data-feather="users"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-info b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="trash"></i></div>
                                <div class="media-body"><span class="m-0">الطبخات</span>
                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">{{$meals + 1000}}</h4>
                                    <i class="icon-bg" data-feather="trash"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-warning b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="shopping-cart"></i></div>
                                <div class="media-body"><span class="m-0">الطلبات</span>
                                    <h4 class="mb-0 counter text-dark"
                                        style="font-size: x-large">{{$orders + 160000}}</h4>
                                    <i class="icon-bg" data-feather="shopping-cart"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-info b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="users"></i></div>
                                <div class="media-body"><span class="m-0">الموظفين</span>
                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">58</h4>
                                    <i class="icon-bg" data-feather="users"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-warning b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="target"></i></div>
                                <div class="media-body"><span class="m-0">المناطق</span>
                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">{{$regions}}</h4>
                                    <i class="icon-bg" data-feather="target"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-info b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="toggle-right"></i></div>
                                <div class="media-body"><span class="m-0">المدن</span>
                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">{{$cities}}</h4>
                                    <i class="icon-bg" data-feather="toggle-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-warning b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="dollar-sign"></i></div>
                                <div class="media-body"><span class="m-0">الباقات</span>
                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">{{$packages}}</h4>
                                    <i class="icon-bg" data-feather="dollar-sign"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{--                <div class="col-sm-6 col-xl-4 col-lg-6">--}}
                {{--                    <div class="card o-hidden">--}}
                {{--                        <div class="bg-info b-r-4 card-body">--}}
                {{--                            <div class="media static-top-widget">--}}
                {{--                                <div class="align-self-center text-center"><i data-feather="calendar"></i></div>--}}
                {{--                                <div class="media-body"><span class="m-0">طبخات مجدولة</span>--}}
                {{--                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">{{$schedual_meals}}</h4>--}}
                {{--                                    <i class="icon-bg" data-feather="calendar"></i>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-info b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="gift"></i></div>
                                <div class="media-body"><span class="m-0">الكوبونات</span>
                                    <h4 class="mb-0 counter text-dark" style="font-size: x-large">{{$copons}}</h4>
                                    <i class="icon-bg" data-feather="gift"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-4 col-lg-6">
                    <div class="card o-hidden">
                        <div class="bg-warning b-r-4 card-body">
                            <div class="media static-top-widget">
                                <div class="align-self-center text-center"><i data-feather="dollar-sign"></i></div>
                                <div class="media-body"><span class="m-0">اشتراكات العملاء</span>
                                    <h4 class="mb-0 counter text-dark"
                                        style="font-size: x-large">{{$subscriptions + 500}}</h4>
                                    <i class="icon-bg" data-feather="dollar-sign"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>


        <div class="card-body">
            <form class="form-horizontal col-md-12" action="{{route('indexWzSearch')}}" method="post">
                @csrf
                <div class="form-row">
                    <div class="input-group">
                        <input type="date" class="form-control" name="search"
                               value=""
                               placeholder="بحث بتاريخ التسليم"/>
                        <button class="btn btn-warning">بحث بتاريخ التسليم</button>
                    </div>
                </div>
            </form>
        </div>




        <div class="container-fluid">
            <div class=" card-header-border">
                <div class="row">
                    <div class="col-md-12">
                        <br>
                        <h5 class="align-abjust" style="text-align: right; font-size: x-large">
                            طلبات مطلوب تسليمها بتاريخ
                            <span  class="text-dark" style="font-size: x-large">
                            ]
                            {{$deliverDateFormated}}
                            [
                            </span>
                            ({{sizeof($ordersAfter2days)}})
                            <a title="طباعة الكل" href="{{asset('admin/orders/printAll/'.$deliverDate)}}"
                               class="btn btn-success"
                               style="padding:4px 9px" target="_blank">
                                <i class="fa fa-print"></i> طباعة الكل
                            </a>
                        </h5>

                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div>
            <div>
                @foreach($data as $d)
                    <div class="col-sm-12 col-xl-12 col-lg-12">
                        <div class="card o-hidden">
                            <div class="bg-danger b-r-4 card-body">
                                <div class="media static-top-widget">
                                    <div class="align-self-center text-center"><i data-feather="trash"></i></div>
                                    <div class="media-body">{{$d['meal_name']}}<span class="m-0"></span>
                                        <h4 class=" text-dark" style="font-size: x-large">{{$d['meal_count']}}</h4>
                                        <i class="icon-bg" data-feather="trash"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <hr>
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
                                        <th scope="col">العميل</th>
                                        <th scope="col">عدد الطبخات</th>
                                        <th scope="col">وقت التوصيل</th>
                                        <th scope="col">عنوان التوصيل</th>
                                        <th scope="col"> تاريخ الانشاء</th>
                                        <th scope="col"> الحالة (في الطريق)</th>
                                        <th scope="col"> الحالة (تم التوصيل)</th>
                                        <th scope="col"> العمليات</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($ordersAfter2days as $c)
                                        <tr id="main_cat_{{$c->id}}">
                                            <td>{{$c->id}}</td>
                                            @if(($c->user) != null)
                                                <td>
                                                    {{$c->user->name}}
                                                </td>
                                            @else
                                                <td>
                                                    -
                                                </td>
                                            @endif

                                            <td>{{sizeof($c->orderMeals)}}</td>
                                            <td>
                                                @if($c->period)
                                                    {{$c->period->from}} - {{$c->period->to}}
                                                @else
                                                    -
                                                @endif

                                            </td>
                                            <td>
                                                @if($c->location)
                                                    {{$c->location->street}} / {{$c->location->floor}}
                                                    <br>
                                                    {{$c->location->region->name_ar}} /
                                                    {{$c->location->city->name_ar}}
                                                @else
                                                    -
                                                @endif
                                            </td>


                                            <td>{{$c->created_at}}</td>
                                            <td>{{$c->on_way ?? "-"}}</td>
                                            <td>{{$c->delivered ?? "-"}}</td>
                                            <td>
                                                <a title="طباعة التفاصيل" href="{{asset('admin/orders/print/'.$c->id)}}"
                                                   class="btn btn-success"
                                                   style="padding:4px 9px" target="_blank">
                                                    <i class="fa fa-print"></i>
                                                </a>
                                                <a title="عرض التفاصيل" href="{{asset('admin/orders/show/'.$c->id)}}"
                                                   class="btn btn-info"
                                                   style="padding:4px 9px">
                                                    <i class="fa fa-eye"></i>
                                                </a>
                                                <button title="تغيير حالة الطلب" type="button" class="btn btn-warning"
                                                        data-toggle="modal" data-target="#edit_{{$c->id}}">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                            </td>

                                            <div class="modal fade" id="edit_{{$c->id}}" tabindex="-1" role="dialog"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">
                                                                تغيير حالة الطلب
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form class="form-horizontal" method="post"
                                                              action="{{route('editOrderStatus')}}"
                                                              enctype="multipart/form-data">
                                                            {{csrf_field()}}
                                                            <div class="modal-body">
                                                                <input type="hidden" name="order_id" value="{{$c->id}}">

                                                                <div class="form-group row {{ $errors->has('ar_name') ? ' has-error' : '' }}">
                                                                    <label class="col-lg-12 control-label text-lg-right"
                                                                           for="textinput">نقاط الباقة</label>
                                                                    <div class="col-lg-12">
                                                                        <select name="status"
                                                                                class="form-control btn-square"
                                                                                required>
                                                                            <option value="on_way">في الطريق</option>
                                                                            <option value="delivered">تم التوصيل
                                                                            </option>
                                                                        </select>
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
                            </div>{{--{{$trips->links()}}--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->

        {{--                    ========================--}}
        {{--                        <div >--}}
        {{--                                <div class="row">--}}
        {{--                                    <div class="col-sm-12 col-xl-6">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="" style="text-align: center">--}}
        {{--                                                <span style="color:#C32F45;margin: 5px;font-size: larger">إحصائيات المستخدمين </span>--}}
        {{--                                            </div>--}}
        {{--                                            <div class="card-body chart-block">--}}
        {{--                                                <div class="chart-overflow" id="users_pie_chart"></div>--}}
        {{--                                            </div>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-12 col-xl-6">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="" style="text-align: center">--}}
        {{--                                                <span style="color:#C32F45;margin: 5px;font-size: larger">إحصائيات السائقين </span>--}}
        {{--                                            </div>--}}
        {{--                                            <div class="card-body chart-block">--}}
        {{--                                                <div class="chart-overflow" id="drivers_pie_chart"></div>--}}
        {{--                                            </div>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                </div>--}}
        {{--                            </div>--}}
        {{--                        <div class="clearfix"><br></div>--}}
        {{--                            <div class="">--}}
        {{--                                <div class="row">--}}
        {{--                                    <div class="col-sm-12 col-xl-6">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="" style="text-align: center">--}}
        {{--                                                <span style="color:#C32F45;margin: 5px;font-size: larger">إحصائيات المناديب </span>--}}
        {{--                                            </div>--}}
        {{--                                            <div class="card-body chart-block">--}}
        {{--                                                <div class="chart-overflow" id="delegates_pie_chart"></div>--}}
        {{--                                            </div>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-12 col-xl-6">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="" style="text-align: center">--}}
        {{--                                                <span style="color:#C32F45;margin: 5px;font-size: larger">إحصائيات مناديب النقل الثقيل </span>--}}
        {{--                                            </div>--}}
        {{--                                            <div class="card-body chart-block">--}}
        {{--                                                <div class="chart-overflow" id="heavey_delegates_pie_chart"></div>--}}
        {{--                                            </div>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                </div>--}}
        {{--                            </div>--}}
        {{--                        <div class="clearfix"><br></div>--}}
        {{--                            <div class="">--}}
        {{--                                <div class="row">--}}
        {{--                                    <div class="col-sm-12 col-xl-6">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="" style="text-align: center">--}}
        {{--                                                <span style="color:#C32F45;margin: 5px;font-size: larger">إحصائيات المتاجر و الفروع </span>--}}
        {{--                                            </div>--}}
        {{--                                            <div class="card-body chart-block">--}}
        {{--                                                <div class="chart-overflow" id="shops_pie_chart"></div>--}}
        {{--                                            </div>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-12 col-xl-6">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="" style="text-align: center">--}}
        {{--                                                <span style="color:#C32F45;margin: 5px;font-size: larger">إحصائيات مستخدمي التطبيق </span>--}}
        {{--                                            </div>--}}
        {{--                                            <div class="card-body chart-block">--}}
        {{--                                                <div class="chart-overflow" id="all_pie_chart"></div>--}}
        {{--                                            </div>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                </div>--}}
        {{--                            </div>--}}
        {{--                        <div class="clearfix"><br></div>--}}
        {{--                        <div class="card">--}}
        {{--                            <div class="card-body">--}}
        {{--                                <div class="row">--}}
        {{--                                    --}}{{--<div class="col-sm-4">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="activity"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">الاقسام</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$cats}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="user"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">المشرفين</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$moderators}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="users"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">المستخدمين</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$users}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="archive"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">المتاجر</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$shops}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="chrome"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">السائقين</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$drivers}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="crosshair"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">المناديب</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$delegates}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="truck"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">مناديب النقل الثقيل</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$delegates_heavey}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    --}}{{--                                <div class="col-sm-2">--}}
        {{--                                    --}}{{--                                    <div class="selling-update text-center"><i data-feather="rss"></i>--}}
        {{--                                    --}}{{--                                        <h5 class="mb-0 f-18">الاشعارات</h5>--}}
        {{--                                    --}}{{--                                        <h5 class="mb-0 f-18">{{$nots}}</h5>--}}
        {{--                                    --}}{{--                                    </div>--}}
        {{--                                    --}}{{--                                </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="codepen"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">العروض</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$offers}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="aperture"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">الرحلات العاجلة</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$urgentTrips}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="clock"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">الرحلات المؤجلة</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$scheduledTrips}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    --}}{{--                                <div class="col-sm-2">--}}
        {{--                                    --}}{{--                                    <div class="selling-update text-center"><i data-feather="compass"></i>--}}
        {{--                                    --}}{{--                                        <h5 class="mb-0 f-18">الدول</h5>--}}
        {{--                                    --}}{{--                                        <h5 class="mb-0 f-18">{{$countries}}</h5>--}}
        {{--                                    --}}{{--                                    </div>--}}
        {{--                                    --}}{{--                                </div>--}}
        {{--                                    --}}{{--                                <div class="col-sm-2">--}}
        {{--                                    --}}{{--                                    <div class="selling-update text-center"><i data-feather="compass"></i>--}}
        {{--                                    --}}{{--                                        <h5 class="mb-0 f-18">المدن</h5>--}}
        {{--                                    --}}{{--                                        <h5 class="mb-0 f-18">{{$cities}}</h5>--}}
        {{--                                    --}}{{--                                    </div>--}}
        {{--                                    --}}{{--                                </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="shopping-cart"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">طلبات المتاجر</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$shops_orders}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="shopping-bag"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">الطلبات العادية</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$normal_orders}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-3">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="edit-2"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">الشكاوي و المقترحات</h5>--}}
        {{--                                            <h5 class="mb-0 f-18">{{$comolains_suggestions}}</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    --}}{{----}}
        {{--                                    <div class="col-sm-2">--}}
        {{--                                        <div class="selling-update text-center"><i data-feather="cpu"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">+500</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-2">--}}
        {{--                                        <div class="selling-update text-center mb-0 xs-mb-selling"><i data-feather="dollar-sign"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">+500</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-2">--}}
        {{--                                        <div class="selling-update text-center mb-0 xs-mb-selling"><i data-feather="slack"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">+120</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <div class="col-sm-2">--}}
        {{--                                        <div class="selling-update text-center mb-0"><i data-feather="umbrella"></i>--}}
        {{--                                            <h5 class="mb-0 f-18">-410</h5>--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    --}}

        {{--                                    --}}{{--Charts--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> المتاجر آخر سبعه أيام :<span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($shops_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_shops"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد متاجر مسجله :</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> طلبات المتاجر آخر سبعه أيام :<span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($shops_orders_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_shops_orders_charts"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد طلبات متاجر مسجله :</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> الطلبات العادية آخر سبعه أيام :<span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($normal_orders_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_normal_orders_charts"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد طلبات عادية مسجله :</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}


        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> المستخدمين آخر سبعه أيام :<span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($users_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_users"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد مستخدمين مسجله :</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}

        {{--                                    <div class="clearfix"></div>--}}
        {{--                                    <br><br>--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> السائقين آخر سبعه أيام : <span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($drivers_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_drivers"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد سائقين مضافة</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}

        {{--                                    <div class="clearfix"></div>--}}
        {{--                                    <br><br>--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> المناديب آخر سبعه أيام : <span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($delegates_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_delegates"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد مناديب مضافة</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}

        {{--                                    <div class="clearfix"></div>--}}
        {{--                                    <br><br>--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> مناديب النقل الثقيل آخر سبعه أيام : <span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($delegates_heavey_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_delegates_heavey"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد مناديب نقل ثقيل مضافة</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}

        {{--                                    <div class="clearfix"></div>--}}
        {{--                                    <br><br>--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> الرحلات العاجلة آخر سبعه أيام : <span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($urgentTrips_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_urgentTrips_charts"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد رحلات عاجلة مضافة</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}

        {{--                                    <div class="clearfix"></div>--}}
        {{--                                    <br><br>--}}

        {{--                                    <div class="col-lg-12 col-sm-12 col-xl-12">--}}
        {{--                                        <div class="card">--}}
        {{--                                            <div class="card-header">--}}
        {{--                                                <h4> الرحلات المؤجلة آخر سبعه أيام : <span class="digits"></span>--}}
        {{--                                                </h4>--}}
        {{--                                            </div>--}}
        {{--                                            @if($scheduledTrips_charts)--}}
        {{--                                                <div class="card-body chart-block">--}}
        {{--                                                    <div class="chart-overflow" id="_scheduledTrips_charts"></div>--}}
        {{--                                                </div>--}}
        {{--                                            @else--}}
        {{--                                                <h6 style="text-align: center">لا يوجد رحلات مؤجلة مضافة</h6>--}}
        {{--                                            @endif--}}
        {{--                                        </div>--}}
        {{--                                    </div>--}}


        {{--                                    <div class="clearfix"></div>--}}
        {{--                                    <br><br>--}}

        {{--                                </div>--}}
        {{--                            </div>--}}
        {{--                        </div>--}}
    </div>
    <!-- Container-fluid Ends-->
    </div>

@endsection
