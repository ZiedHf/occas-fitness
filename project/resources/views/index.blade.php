@extends('includes.master')
@section('content')


<section class="go-slider" style="height: 300px;">
<div id="bootstrap-touch-slider" style="height: 300px;" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >

    <!-- Indicators -->
    {{--<ol class="carousel-indicators">--}}
        {{--@for ($i = 0; $i < count($sliders); $i++)--}}
            {{--@if($i == 0)--}}
                {{--<li data-target="#bootstrap-touch-slider" data-slide-to="{{$i}}" class="active"></li>--}}
            {{--@else--}}
                {{--<li data-target="#bootstrap-touch-slider" data-slide-to="{{$i}}"></li>--}}
            {{--@endif--}}
        {{--@endfor--}}
    {{--</ol>--}}

    <!-- Wrapper For Slides -->
    <div class="carousel-inner" style="overflow: initial;" role="listbox">

        @for ($i = 0; $i < count($sliders); $i++)
            @if($i == 0)
                <!-- Third Slide -->
                    <div class="item active">

                        <!-- Slide Background -->
                        <img src="{{url('/')}}/assets/images/sliders/{{$sliders[$i]->image}}" alt="Bootstrap Touch Slider"  class="slide-image"/>
                        <div class="bs-slider-overlay"></div>

                        <div class="container">
                            <div class="row">
                                <!-- Slide Text Layer -->
                                <div class="slide-text {{$sliders[$i]->text_position}}">

                                    <h1 data-animation="animated fadeInDown">{{$sliders[$i]->title}}</h1>
                                    <p data-animation="animated fadeInUp">{{$sliders[$i]->text}}</p>

                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- End of Slide -->
            @else
            <!-- Second Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="{{url('/')}}/assets/images/sliders/{{$sliders[$i]->image}}" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text {{$sliders[$i]->text_position}}">
                        <h1 data-animation="animated fadeInDown">{{$sliders[$i]->title}}</h1>
                        <p data-animation="animated fadeInUp">{{$sliders[$i]->text}}</p>
                    </div>
                </div>
                <!-- End of Slide -->
            @endif
    @endfor


    </div><!-- End of Wrapper For Slides -->

        <!-- Left Control -->
        <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
            <span class="fa fa-angle-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>

        <!-- Right Control -->
        <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
            <span class="fa fa-angle-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div> <!-- End  bootstrap-touch-slider Slider -->

</section>

<section class="wow fadeInUp go-services hideme">
    <div class="row" style="margin-top:70px;">
        <div class="container">
            <!-- <div class="col-md-6 col-md-offset-3">
                <div class="section-title">
                    <h2>{{$languages->service_title}}</h2>
                    <p>{{$languages->service_text}}</p>
                </div>
            </div> -->
            @foreach($services as $service)
                <div class="col-xs-12 col-md-6">
                    <div class="service-list text-center wow fadeInUp">
                        <img src="{{url('/assets/images/service')}}/{{$service->icon}}" alt="">
                        <h3>{{$service->title}}</h3>
                        <p>{{$service->text}}</p>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>



<!-- END OF TESTIMONIALS -->

@stop

@section('footer')
<script>

</script>
@stop