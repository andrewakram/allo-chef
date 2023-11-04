<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="{{asset('landing')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('landing')}}/assets/css/animate.min.css">
    <link rel="stylesheet" href="{{asset('landing')}}/assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="{{asset('landing')}}/assets/css/style.css">
    <link rel="stylesheet" href="{{asset('landing')}}/assets/css/responsive.css">
    <title>الو شيف</title>
    <link rel="icon" type="image/png" href="{{asset('landing')}}/assets/img/favicon.png">
</head>

<body>

<div class="coming-soon-area">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="coming-soon-content wow fadeInUp" data-wow-delay="0s">
                    <div class="logo">
                        <a href="{{asset('/')}}">
                            <img width="100px" height="100px" src="{{asset('landing')}}/assets/img/logo.png" alt="image"
                                 style="margin-top: -100px;margin-bottom: 0;border-radius: 10px">
                        </a>
                    </div>
                    <h1 class="font-weight-bold {{$status=="Paid" ? "text-success" : "text-danger"}} ">
                        Payment {{$status}}
                    </h1>
                </div>
            </div>
        </div>
    </div>
    <div class="shape1"><img src="{{asset('landing')}}/assets/img/circle1.png" alt="image"></div>
    <div class="shape2"><img src="{{asset('landing')}}/assets/img/circle2.png" alt="image"></div>
</div>

<script src="{{asset('landing')}}/assets/js/jquery.min.js"></script>
<script src="{{asset('landing')}}/assets/js/wow.min.js"></script>
<script src="{{asset('landing')}}/assets/js/popper.min.js"></script>
<script src="{{asset('landing')}}/assets/js/bootstrap.min.js"></script>
<script src="{{asset('landing')}}/assets/js/jquery.ajaxchimp.min.js"></script>
<script src="{{asset('landing')}}/assets/js/form-validator.min.js"></script>
<script src="{{asset('landing')}}/assets/js/contact-form-script.js"></script>
<script src="{{asset('landing')}}/assets/js/main.js"></script>
</body>

</html>