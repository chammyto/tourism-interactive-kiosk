@extends('layouts.single_app')

@section('content')
    
<div class="col-md-12">
    <a class="weatherwidget-io" href="https://forecast7.com/en/9d85124d14/bohol/" style="pointer-events: none; cursor: default;" data-label_1="BOHOL" data-label_2="WEATHER" data-theme="original">BOHOL WEATHER</a>
    <script>
        ! function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (!d.getElementById(id)) {
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://weatherwidget.io/js/widget.min.js';
                fjs.parentNode.insertBefore(js, fjs);
            }
        }(document, 'script', 'weatherwidget-io-js');
    </script>
</div>


    <div class="container h-100 d-flex justify-content-center align-items-center flex-column">
        <div class="row w-100">
            <div class="col-md-12 text-center">
                <h1 class="mb-5 font-weight-bold righteous text-white" style="text-shadow: 2px 2px 4px black, 0 0 15px white, 0 0 5px grey;">Welcome to BOHOL</h1>


                <h4 class="mb-5 font-weight-bold text-white" style="text-shadow: 2px 2px 4px black, 0 0 25px white, 0 0 5px grey;">One of the Philippines' most iconic travel destinations.</h4>
            </div>
        </div>
            <div class="row mt-4 d-flex justify-content-center align-items-center w-100 flex-wrap">
                <a href="{{ url('categories') }}" class="col-md-3 btn btn-success btn-lg font-weight-bold alata btn-block mx-3 my-0" style=" box-shadow: 0 0px 8px 0 rgba(225, 225, 225, 0.2), 0 0px 8px 0 rgba(225, 225, 225, 0.7);">
                  Categories
                </a>
                <a href="{{ url('destinations') }}" class="col-md-3 btn btn-success btn-lg font-weight-bold alata btn-block mx-3 my-0" style=" box-shadow: 0 0px 8px 0 rgba(225, 225, 225, 0.2), 0 0px 8px 0 rgba(225, 225, 225, 0.7);">
                  All Destinations
                </a>
                <a href="{{ url('about-bohol') }}" class="col-md-3 btn btn-success btn-lg font-weight-bold alata btn-block mx-3 my-0" style=" box-shadow: 0 0px 8px 0 rgba(225, 225, 225, 0.2), 0 0px 8px 0 rgba(225, 225, 225, 0.7);">
                  Information
                </a>
            </div>
  </div>

@endsection

