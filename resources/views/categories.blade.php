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
                        <div class="card mb-4" style="background-color: rgba(24, 25, 26, 1);box-shadow: 0px 0px 20px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7);">
                        <a href="{{ url('destinations?category='.$category->id) }}"> <img src="{{ Storage::url($category->image) }}  "  class="card-img-top" height="150"> </a>
                          <div class="card-body">
                            <h5 class="card-title text-white"> <b>{{ $category->name }}</b></h5>
                           <!-- <p class="card-text">{{ $category->description }}</p> -->
                            <a href="{{ url('destinations?category='.$category->id) }}" class="btn btn-success" style=" box-shadow: 0px 0px 8px 0px rgba(225, 225, 225, 0.9);">Let's go....!</a>
                          </div>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>

        </div>
    </div>
@endsection

