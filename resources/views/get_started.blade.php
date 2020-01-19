@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous">Where do you want to go?</h2> 
            </div> 

            @include('layouts.breadcrumbs') 
           {{--  <div class="col-md-12">
                
                CHECKBOXES

                <ul class="d-flex list-unstyled justify-content-start align-items-center">
                    <li class="mr-4 alata font-weight-bold mb-4">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">Category 1</label>
                        </div>
                    </li>
                    <li class="mr-4 alata font-weight-bold mb-4">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                            <label class="custom-control-label" for="customCheck2">Category 2</label>
                        </div>
                    </li>
                    <li class="mr-4 alata font-weight-bold mb-4">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                            <label class="custom-control-label" for="customCheck3">Category 3</label>
                        </div>
                    </li>
                </ul>

            </div> --}}




            <div class="col-md-12">
            
                <div class="row">

                    <div class="col-md-3">
                        <div class="card mb-3">
                          <img src="{{ asset('img/placeholder.png') }}" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">Beach</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="{{ url('categories/places') }}" class="btn btn-primary">More...</a>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card mb-3">
                          <img src="{{ asset('img/placeholder2.png') }}" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">Beach</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="{{ url('categories/places') }}" class="btn btn-primary">More...</a>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card mb-3">
                          <img src="{{ asset('img/placeholder.png') }}" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">Beach</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="{{ url('categories/places') }}" class="btn btn-primary">More...</a>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card mb-3">
                          <img src="{{ asset('img/placeholder2.png') }}" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">Beach</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="{{ url('categories/places') }}" class="btn btn-primary">More...</a>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card mb-3">
                          <img src="{{ asset('img/placeholder.png') }}" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">Beach</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="{{ url('categories/places') }}" class="btn btn-primary">More...</a>
                          </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>

@endsection