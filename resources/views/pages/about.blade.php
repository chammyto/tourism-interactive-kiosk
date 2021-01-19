@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">

            <div class="col-md-12 mb-2"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-home"></i>Home</a></li> 

                    <li class="breadcrumb-item font-weight-bold alata active">Informations</li>
                </ol>
                </nav>
            </div> 

         <!--   <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous text-white">Need to know anything about BOHOL?</h2>  
            </div>  -->

            <div class="col-md-12 mb-5">
               <!-- <h2 class="my-3 font-weight-bold righteous text-white">About BOHOL</h2> -->
                <div class="row">
                @foreach($infos as $info)
                <a href="{{ url('/about-bohol/'. $info->id) }}" class="col-md-6">
                    <div class="jumbotron my-4 alata" style="background: linear-gradient(to bottom, rgba(22, 19, 16, 0.5) 0%, rgba(22, 19, 16, 0.5) 100%), url('/img/choco.jpg'); height: 100px; box-shadow: 0px 0px 20px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7); "> 
                                <div class="container">
                                    <h3 class="display-8 bangers text-white notranslate">{{ $info->title }}</h3>
                                 
                                </div>
                    </div>
                </a>
                
           
                @endforeach 
                </div>
                </div>    
            </div>
            
        </div>
    </div>

@endsection