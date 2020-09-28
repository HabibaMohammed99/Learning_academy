@extends('front.layout')

@section('content')
    
    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-xl-6">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                        <h5>{{json_decode($banner->content)->title}}</h5>
                            <h1>{{json_decode($banner->content)->subtitle}}</h1>
                            <p>{{json_decode($banner->content)->desc}}</p>
                            <a href="#" class="btn_1">View Course </a>
                            <a href="#" class="btn_2">Get Started </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!-- feature_part start-->
    <section class="feature_part pb-5">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-xl-3 align-self-center">
                    <div class="single_feature_text ">
                        <h2>{{json_decode($course->content)->title}}</h2>
                        <p>{{json_decode($course->content)->desc}}</p>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><i class="ti-layers"></i></span>
                            <h4>{{json_decode($better->content)->title}}</h4>
                            <p>{{json_decode($better->content)->desc}}</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><i class="ti-new-window"></i></span>
                            <h4>{{json_decode($qualified->content)->title}}</h4>
                            <p>{{json_decode($qualified->content)->desc}}</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part single_feature_part_2">
                            <span class="single_service_icon style_icon"><i class="ti-light-bulb"></i></span>
                            <h4>{{json_decode($oppurtunity->content)->title}}</h4>
                            <p>{{json_decode($oppurtunity->content)->desc}}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- upcoming_event part start-->

    <!-- member_counter counter start -->
    <section class="member_counter">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_member_counter">
                    <span class="counter">{{$courses_count}}</span>
                        <h4>Courses</h4>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_member_counter">
                        <span class="counter">{{$trainers_count}}</span>
                        <h4>Trainers</h4>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_member_counter">
                        <span class="counter">{{$students_count}}</span>
                        <h4> Students</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- member_counter counter end -->

    <!--::review_part start::-->
    <section class="special_cource padding_top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="section_tittle text-center">
                        <p>{{json_decode($popularcourses->content)->title}}</p>
                        <h2>{{json_decode($popularcourses->content)->subtitle}}</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($courses as $c)    
                <div class="col-sm-6 col-lg-4">
                    <div class="single_special_cource">
                        <img src="{{asset("uploads/courses/".$c->img)}}" class="special_img" alt="">
                        <div class="special_cource_text">
                        <a href="{{route('front.cat',$c->cat->id)}}" class="btn_4">{{$c->cat->name}}</a>
                        <h4>${{$c->price}}</h4>
                        <a href="{{route('front.show',[$c->cat->id,$c->id])}}"><h3>{{$c->name}}</h3></a>
                        <p>{{$c->small_desc}}</p>
                            <div class="author_info">
                                <div class="author_img">
                                    <img src="{{asset("uploads/trainers/".$c->trainer->img)}}">
                                    <div class="author_info_text">
                                        <p>Conduct by:</p>
                                    <h5><a href="#">{{$c->trainer->name}}</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--::blog_part end::-->

    <!--::review_part start::-->
    <section class="testimonial_part py-5">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="section_tittle text-center">
                        <p>{{json_decode($test->content)->title}}</p>
                        <h2>{{json_decode($test->content)->subtitle}}</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="textimonial_iner owl-carousel">
                        @foreach ($tests as $t)                 
                        <div class="testimonial_slider">
                            <div class="row">
                                <div class="col-lg-8 col-xl-4 col-sm-8 align-self-center">
                                    <div class="testimonial_slider_text">
                                    <p>{{$t->desc}}</p>
                                    <h4>{{$t->name}}</h4>
                                    @if ($t->spec !==null)
                                        <h5>{{$t->spec}}</h5>
                                    @endif
                                    </div>
                                </div>
                                <div class="col-lg-4 col-xl-2 col-sm-4">
                                    <div class="testimonial_slider_img">
                                        <img src="{{asset("uploads/tests/".$t->img)}}" alt="#">
                                    </div>
                                </div>
                                <div class="col-xl-4 d-none d-xl-block">
                                    <div class="testimonial_slider_text">
                                    <p>{{$t->desc}}</p>
                                    <h4>{{$t->name}}</h4>
                                    @if ($t->spec !==null)
                                         <h5>{{$t->spec}}</h5>
                                    @endif
                                    </div>
                                </div>
                                <div class="col-xl-2 d-none d-xl-block">
                                    <div class="testimonial_slider_img">
                                        <img src="{{asset("uploads/tests/".$t->img)}}" alt="#">
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach

                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--::blog_part end::-->

@endsection
