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

                    <a class="col-md-12" href="{{url('categories/places/chocolate-hills')}}"> 
                        <div class="jumbotron my-4 alata" style="background: linear-gradient(rgba(14, 53, 15, 0.45), rgba(0, 79, 32, 0.7)), url('../img/choco.jpg')"> 
                            <div class="container">
                                <h1 class="display-4 bangers">Choholate hills</h1>
                                <p class="lead">The Chocolate Hills form a rolling terrain of haycock-shaped hills – mounds of a generally conical and almost symmetrical shape.[5] Estimated to be from 1,268 to about 1,776 individual mounds, these cone-shaped or dome-shaped hills are actually made of grass-covered limestone. </p>
                            </div>
                        </div>
                    </a>  
                    <div class="col-md-12"> 
                        <div class="jumbotron my-4 alata" style="background: linear-gradient(rgba(14, 53, 15, 0.45), rgba(0, 79, 32, 0.7)), url('../img/palm.jpg')"> 
                            <div class="container">
                                <h1 class="display-4 bangers">Lorem Ipsum</h1>
                                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eleifend placerat interdum. Aliquam purus augue, rhoncus vel metus in, venenatis tristique nulla. Curabitur lectus libero, pharetra a purus id, maximus fermentum mauris. Etiam ex urna, convallis sed venenatis ac, varius eget ligula. Phasellus sed mauris nec ligula feugiat malesuada.</p>
                            </div>
                        </div>
                    </div>  
                    <div class="col-md-12"> 
                        <div class="jumbotron my-4 alata" style="background: linear-gradient(rgba(14, 53, 15, 0.45), rgba(0, 79, 32, 0.7)), url('../img/beach.jpg')"> 
                            <div class="container">
                                <h1 class="display-4 bangers">Lorem Ipsum</h1>
                                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eleifend placerat interdum. Aliquam purus augue, rhoncus vel metus in, venenatis tristique nulla. Curabitur lectus libero, pharetra a purus id, maximus fermentum mauris. Etiam ex urna, convallis sed venenatis ac, varius eget ligula. Phasellus sed mauris nec ligula feugiat malesuada.</p>
                            </div>
                        </div>
                    </div>  
                    <div class="col-md-12"> 
                        <div class="jumbotron my-4 alata" style="background: linear-gradient(rgba(14, 53, 15, 0.45), rgba(0, 79, 32, 0.7)), url('../img/forest.jpg')"> 
                            <div class="container">
                                <h1 class="display-4 bangers">Lorem Ipsum</h1>
                                <p class="lead ">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eleifend placerat interdum. Aliquam purus augue, rhoncus vel metus in, venenatis tristique nulla. Curabitur lectus libero, pharetra a purus id, maximus fermentum mauris. Etiam ex urna, convallis sed venenatis ac, varius eget ligula. Phasellus sed mauris nec ligula feugiat malesuada.</p>
                            </div>
                        </div>
                    </div>  

                </div>

            </div>

        </div>
    </div>

@endsection