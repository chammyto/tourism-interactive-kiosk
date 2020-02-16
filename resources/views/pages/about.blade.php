@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous">Chocolate Hills</h2>  
            </div> 

            <div class="col-md-12 mb-4"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-cubes"></i>Menu</a></li> 


                    <li class="breadcrumb-item font-weight-bold alata active">About BOHOL</li>
                </ol>
                </nav>
            </div> 

            <div class="col-md-12 mb-5">
                <h2 class="my-3 font-weight-bold righteous">About BOHOL</h2>  
                {!! $info->description !!}
            </div>

            
        </div>
    </div>

@endsection