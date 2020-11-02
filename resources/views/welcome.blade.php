@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 d-flex justify-content-center align-items-center">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="mb-5 font-weight-bold righteous text-white">Welcome to BOHOL</h1>


                <h4 class="mb-5 font-weight-bold text-white">Where are you from?</h4>
            </div>
            <div class="col-md-8 mx-auto mt-4 text-center">
                <div class="form-group">
                    <label class="text-white"><b>Select your language</b></label>
                </div> 
                <div class="input-group mb-5 input-group-lg">
                  <div id="google_translate_element" style="width: 100% !important"></div>
                </div>
                

                <a href="{{ url('menu') }}" class="btn btn-success btn-lg font-weight-bold alata btn-block">
                    START
                </a>
            </div>
        </div>
    </div>

@endsection