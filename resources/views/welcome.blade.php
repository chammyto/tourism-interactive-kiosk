@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 d-flex justify-content-center align-items-center">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="mb-5 font-weight-bold righteous">Welcome to BOHOL</h1>


                <h4 class="mb-5 font-weight-bold">Where are you from?</h4>
            </div>
            <div class="col-md-8 mx-auto mt-4">
                <div class="form-group">
                    <label><b>Select country and language</b></label>
                </div> 
                <div class="input-group mb-5 input-group-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1"><i class="fa fa-flag"></i></span>
                  </div>
                  {{-- <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"> --}}
                    <select class="form-control">
                        <option>USA</option>
                        <option>China</option>
                        <option>Korea</option>
                        <option>Philippines</option>
                    </select>
                </div>

                <a href="{{ url('menu') }}" class="btn btn-success btn-lg font-weight-bold alata btn-block">
                    GET STARTED
                </a>
            </div>
        </div>
    </div>

@endsection