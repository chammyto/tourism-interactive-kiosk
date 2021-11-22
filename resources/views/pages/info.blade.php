@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">

            <div class="col-md-12 mb-2"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-home"></i>Home</a></li> 
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('about-bohol')}}"> <i class="fa fa-home"></i>Information</a></li> 


                    <li class="breadcrumb-item font-weight-bold alata active">{{ $info->title }}</li>
                </ol>
                </nav>
            </div> 

         <!--   <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous text-white">Need to know anything about BOHOL?</h2>  
            </div>  -->

            <div class="col-md-12 mb-5">
                <h2 class="my-3 font-weight-bold righteous text-white">{{ $info->title }}</h2> 
                <div class="my-4 ">
                    <div class="jumbotron p-4" style="background: linear-gradient(to bottom, rgba(22, 19, 16, 0.5) 0%, rgba(22, 19, 16, 0.5) 100%), url('/img/choco.jpg'); box-shadow: 0px 0px 10px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7); border-radius: 5px; ">
                        <h6 class="text-white">  {!! $info->description !!} </h6> 
                    </div>
                </div>
            </div>
               
            </div>
            
        </div>
    </div>

@endsection