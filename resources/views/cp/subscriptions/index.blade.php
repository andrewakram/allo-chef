@extends('cp.index')
@section('content')
    <div class="page-body" dir="rtl">
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <div class="page-header-right">


                            @include('cp.layouts.messages')


                            <h3>
                                <i class="fa fa-home"></i>
                                <a class="" href="{{route('home')}}" style="color: #Fd5A1F">
                                    الرئيسية
                                </a>
                                /
                                إشتراكات العملاء

                            </h3>
                            {{--<ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('home')}}"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item active">الاعلانات</li>
                            </ol>--}}
                        </div>


                    </div>
                </div>
            </div>
        </div>
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
                                        <th scope="col">اسم الباقة</th>
                                        <th scope="col">عدد ايام الباقة</th>
                                        <th scope="col">السعر المدفوع</th>
                                        <th scope="col">النقاط</th>
                                        <th scope="col">تاريخ انتهاء الاشتراك</th>
                                        <th scope="col">تاريخ الاشتراك</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($subscriptions as $key => $subscription)
                                        <tr id="main_cat_{{$subscription->id}}">
                                            <td>{{$key+1}}</td>
                                            <td>
                                                @if($subscription->user)
                                                    <a href="{{asset('admin/users/subscriptions/'.$subscription->user->id)}}">
                                                        {{$subscription->user->name}}
                                                    </a>
                                                     <br>
                                                    <span class="badge badge-dark">
                                                    {{$subscription->user->phone}}
                                                </span>
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td>
                                                {{$subscription->name_ar}}
                                            </td>
                                            <td>
                                                {{$subscription->days}}
                                            </td>
                                            <td>
                                                {{$subscription->price}}
                                            </td>
                                            <td>
                                                {{$subscription->points}}
                                            </td>
                                            <td>
                                                {{$subscription->expire_at}}
                                            </td>
                                            <td>
                                                {{$subscription->created_at}}
                                            </td>

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
    </div>


    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title rtl" id="exampleModalLongTitle">الموقع</h5>

                </div>
                <div class="modal-body">
                    <div id="oneordermap"></div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>

                </div>
            </div>
        </div>
    </div>



@endsection

