@extends('layouts.app_start')

@section('content')
<!-- <div class="col-md-12">
    <a class="weatherwidget-io" href="https://forecast7.com/en/9d85124d14/bohol/" data-label_1="BOHOL" data-label_2="WEATHER" data-theme="original">BOHOL WEATHER</a>
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
-->

<div class="container h-100 d-flex justify-content-center align-items-center">

    <div class="row">
        <div class="col-md-12 text-center">
            <h1 class="mb-5 font-weight-bold righteous text-white notranslate">BOHOL TOURISM INFORMATION KIOSK</h1>


            <h4 class="mb-5 font-weight-bold text-white">Hello there! Where are you from?</h4>
        </div>
        
        <div class="col-md-8 mx-auto mt-2 text-center">
           <!-- <div class="form-group">
                <label class="text-white"><b>Select your language</b></label>
            </div> -->

            <div class="input-group mb-5 input-group-lg">
                <div id="google_translate_element" style="width: 100% !important"></div>
            </div>


            <div class="btn btn-success btn-lg font-weight-bold alata btn-block" id="start">
               CLICK TO START
            </div>
        </div>
    </div>
</div>

<!-- {{ url('menu') }} -->
@endsection

@section('scripts')

<script>
    $('#start').click(() => {
        $.ajax({
            url: "{{url('visitor')}}",
            method: 'POST',
            data: {
                "_token": "{{ csrf_token() }}",
            }
        }).done(() => {
            window.location.replace("{{ url('menu')}}");
        })

    })
</script>

@endsection