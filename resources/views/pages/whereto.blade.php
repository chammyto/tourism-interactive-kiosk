@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">
          <!--  <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous text-white">Where do you want to go?</h2> 
            </div>  -->

             <div class="col-md-12 mb-4"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-home"></i>Home</a></li> 

                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('categories')}}"> <i class="fa fa-cubes"></i>Categories</a></li> 

                    <li class="breadcrumb-item font-weight-bold alata active">Destinations</li>
                </ol>
                </nav>
            </div> 




            <div class="col-md-12">
            
                <div class="row">
                    @foreach($destinations as $destination)
                        <a class="col-md-6" href="{{url('places/'.$destination->id)}}"> 
                            <div class="jumbotron my-4 alata" style="background: linear-gradient(to bottom, rgba(22, 19, 16, 0.5) 0%, rgba(22, 19, 16, 0.8) 100%), url({{ Storage::url($destination->image) }}); height: 100px; box-shadow: 0 4px 8px 0 rgba(225, 225, 225, 0.2), 0 6px 20px 0 rgba(225, 225, 225, 0.7); "> 
                                <div class="container">
                                    <h3 class="display-8 bangers text-white notranslate">{{ $destination->name }}</h3>
                                  <!--  <p class="lead">{{ $destination->description }}</p> -->
                                </div>
                            </div>
                        </a>  
                    @endforeach
                </div>

            </div>

        </div>
    </div>
@endsection

