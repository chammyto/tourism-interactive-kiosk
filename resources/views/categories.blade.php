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
                    @foreach($categories as $category)
                    <div class="col-md-3">
                        <div class="card mb-3">
                          <img src="{{ Storage::url($category->image) }} " class="card-img-top" height="150">
                          <div class="card-body">
                            <h5 class="card-title"> <b>{{ $category->name }}</b></h5>
                            <p class="card-text">{{ $category->description }}</p>
                            <a href="{{ url('categories/places/'.$category->id) }}" class="btn btn-primary">View destinations</a>
                          </div>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>

        </div>
    </div>

@endsection