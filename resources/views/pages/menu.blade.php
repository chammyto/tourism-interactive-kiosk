@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 d-flex justify-content-center align-items-center flex-column">
        <div class="row w-100">
            <div class="col-md-12 text-center">
                <h1 class="mb-5 font-weight-bold righteous">Welcome to BOHOL</h1>


                <h4 class="mb-5 font-weight-bold">Get started</h4>
            </div>
        </div>
            <div class="row mt-4 d-flex justify-content-center align-items-center w-100 flex-wrap">
                <a href="{{ url('categories?by=categories') }}" class="col-md-3 btn btn-success btn-lg font-weight-bold alata btn-block mx-3 my-0">
                  Categories
                </a>
                <a href="{{ url('categories?by=location') }}" class="col-md-3 btn btn-success btn-lg font-weight-bold alata btn-block mx-3 my-0">
                  Locations
                </a>
                <a href="{{ url('about-bohol') }}" class="col-md-3 btn btn-success btn-lg font-weight-bold alata btn-block mx-3 my-0">
                  Information
                </a>
            </div>
    </div>

@endsection