@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous text-white">Where do you want to go?</h2> 
            </div> 

             <div class="col-md-12 mb-4"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-cubes"></i>Menu</a></li> 

                    <li class="breadcrumb-item font-weight-bold alata"><a href="javascript:history.back()"> <i class="fa fa-cubes"></i>Categories</a></li> 

                    <li class="breadcrumb-item font-weight-bold alata active">Destinations</li>
                </ol>
                </nav>
            </div> 




            <div class="col-md-12">
            
                <div class="row">
                    @foreach($destinations as $destination)
                        <a class="col-md-6" href="{{url('places/'.$destination->id)}}"> 
                            <div class="jumbotron my-4 alata" style="background: linear-gradient(rgba(14, 53, 15, 0.45), rgba(0, 79, 32, 0.7)), url({{ Storage::url($destination->image) }})"> 
                                <div class="container">
                                    <h1 class="display-4 bangers notranslate">{{ $destination->name }}</h1>
                                    <p class="lead">{{ $destination->description }}</p>
                                </div>
                            </div>
                        </a>  
                    @endforeach
                </div>

            </div>

        </div>
    </div>

@endsection