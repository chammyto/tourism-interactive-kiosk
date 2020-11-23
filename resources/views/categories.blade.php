@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">
         <!--   <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous text-white">Where do you want to go?</h2> 
            </div> 
            -->

            <div class="col-md-12 mb-4"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-home"></i>Home</a></li> 


                    <li class="breadcrumb-item font-weight-bold alata active">Categories</li>
                </ol>
                </nav>
            </div> 




            <div class="col-md-12">
            
                <div class="row">
                    @foreach($categories as $category)
                    <div class="col-md-3">
                        <div class="card mb-4">
                        <a href="{{ url('destinations?category='.$category->id) }}"> <img src="{{ Storage::url($category->image) }}  "  class="card-img-top" height="150"> </a>
                          <div class="card-body">
                            <h5 class="card-title"> <b>{{ $category->name }}</b></h5>
                           <!-- <p class="card-text">{{ $category->description }}</p> -->
                            <a href="{{ url('destinations?category='.$category->id) }}" class="btn btn-success">Let's go....!</a>
                          </div>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>

        </div>
    </div>
@endsection

