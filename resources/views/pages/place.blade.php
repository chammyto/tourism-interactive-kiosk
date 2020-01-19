@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous">Chocolate Hills</h2>  
            </div> 

            @include('layouts.breadcrumbs')   



            <div class="col-md-12 mb-5">
                <h2 class="my-3 font-weight-bold righteous">Chocolate Hills</h2>  
                <p class="lead">The Chocolate Hills form a rolling terrain of haycock-shaped hills – mounds of a generally conical and almost symmetrical shape.[5] Estimated to be from 1,268 to about 1,776 individual mounds, these cone-shaped or dome-shaped hills are actually made of grass-covered limestone. </p> 
            </div>

            <div class="col-md-12 mb-5">
                <h2 class="mb-3 font-weight-bold righteous">Spoilers</h2> 
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="{{ asset('img/choco.jpg') }}" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="{{ asset('img/choco.jpg') }}" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="{{ asset('img/choco.jpg') }}" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

            <div class="col-md-12 mb-5">
                <h2 class="mb-3 font-weight-bold righteous d-flex">
                    <span>Map </span>
                    <div class="btn btn-success ml-auto"><i class="fa fa-send"></i> Send Location</div>
                </h2> 
                            <img src="{{ asset('img/choco.jpg') }}" class="d-block w-100" alt="...">

            </div>
        </div>
    </div>

@endsection