@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">

            <div class="col-md-12 mb-4"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-cubes"></i>Home</a></li> 


                    <li class="breadcrumb-item font-weight-bold alata active">Information</li>
                </ol>
                </nav>
            </div> 

         <!--   <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous text-white">Need to know anything about BOHOL?</h2>  
            </div>  -->

            <div class="col-md-12 mb-5">
                <h2 class="my-3 font-weight-bold righteous text-white">About BOHOL</h2> 
                @foreach($infos as $info)
                <div class="my-4 ">
                    <h3 class="font-weight-bold text-white">{{ $info->title }}</h3>
                    
                </div>
                <div class="col-md-12">
                      <h6 class="text-white">  {!! $info->description !!} </h6> 
                    </div>


                @endforeach 
            </div>

            
        </div>
    </div>

@endsection