@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 d-flex justify-content-center align-items-center">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="mb-5 font-weight-bold righteous">Welcome to BOHOL</h1>


                <h4 class="mb-5 font-weight-bold">Get started</h4>
            </div>
            <div class="row mt-4">
                <a href="{{ url('categories?by=categories') }}" class="col-md-4 btn btn-success btn-lg font-weight-bold alata btn-block">
                  Categories
                </a>
                <a href="{{ url('categories?by=location') }}" class="col-md-4 btn btn-success btn-lg font-weight-bold alata btn-block">
                  Locations
                </a>
                <a href="{{ url('about-bohol') }}" class="col-md-4 btn btn-success btn-lg font-weight-bold alata btn-block">
                  Information
                </a>
            </div>
        </div>
    </div>

@endsection