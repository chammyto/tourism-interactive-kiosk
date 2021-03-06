@extends('layouts.single_app')

@section('content')
<div class="container h-100 pt-5">

@if(session()->has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Success!</strong> Location has been sent successfully.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif

    <div class="row">
        <div class="col-md-12 mt--7">
            <h2 class="mb-4 font-weight-bold righteous text-white notranslate"style="text-shadow: 2px 2px 5px black;">{{ $place->name }}</h2>
        </div>


        <div class="col-md-12 mb-4">
            <nav aria-label="breadcrumb">

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-home"></i>Home</a></li>
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('categories')}}"> <i class="fa fa-cubes"></i>Categories</a></li>
                  <!--  <li class="breadcrumb-item font-weight-bold alata"><a href="javascript:history.back(); javascript:history.back()"> <i class="fa fa-cubes"></i>Categories</a></li> -->
                    <li class="breadcrumb-item font-weight-bold alata"><a href="javascript:history.back()"> <i class="fa fa-car"></i>Destinations</a></li>
                    <li class="breadcrumb-item font-weight-bold alata active notranslate">{{$place->name}}</li>
                </ol>
            </nav>
        </div>

        <div class="col-md-12 mb-5">
            <div id="carouselExampleInterval" class="carousel slide carousel-fade" data-interval="10000" data-ride="carousel" style="border: 1px solid white; border-radius:5px;  box-shadow: 0px 0px 10px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7);">
                <ol class="carousel-indicators">
                    @foreach($place->media as $key=>$media)
                    <li data-target="#carouselExampleInterval" data-slide-to="{{$key}}"></li>
                    @endforeach

                </ol>
                <div class="carousel-inner">
                    @php
                    $index = 0;
                    @endphp
                    @foreach($place->media as $media)
                    <div class="carousel-item {{ $index === 0 ? 'active' : ''}}"  data-interval="10000">
                        <img src="{{ Storage::url($media->source ) }}" height="600" class="d-block w-100" alt="...">
                    </div>
                    @php
                    $index ++;
                    @endphp
                    @endforeach
                </div>
                <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>


        <div class="col-md-12 mb-5">

         <!--   <img src="{{ Storage::url($place->image ) }}" height="600" class="d-block w-100 mb-5" alt="..." style="border: .5px solid white; border-radius: 5px; box-shadow: 0px 0px 10px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7);"> -->
            <div class="jumbotron" style="border: 0.5px solid white; background: linear-gradient(to bottom, rgba(22, 19, 16, 0.5) 0%, rgba(22, 19, 16, 0.5) 100%), url('/img/choco.jpg'); border-radius: 5px; box-shadow: 0px 0px 10px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7);">
            <h2 class="mb-3 font-weight-bold righteous text-white">Address</h2>
            <p class="mt-3  text-white">{{ $place->street }} , {{ $place->town }}</p>
            <h2 class="mb-3 font-weight-bold righteous  text-white">Description</h2>
            <p class="mt-3  text-white">{{ $place->description }}</p>
            </div>

        </div>
    <!--    <div class="col-md-12 mb-5">
        <h2 class="mb-3 font-weight-bold righteous text-white">Spoilers</h2>
            <div id="carouselExampleInterval" class="carousel slide carousel-fade" data-interval="10000" data-ride="carousel" style="border: 1px solid white; border-radius:5px;  box-shadow: 0px 0px 10px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7);">
                <ol class="carousel-indicators">
                    @foreach($place->media as $key=>$media)
                    <li data-target="#carouselExampleInterval" data-slide-to="{{$key}}"></li>
                    @endforeach

                </ol>
                <div class="carousel-inner">
                    @php
                    $index = 0;
                    @endphp
                    @foreach($place->media as $media)
                    <div class="carousel-item {{ $index === 0 ? 'active' : ''}}"  data-interval="10000">
                        <img src="{{ Storage::url($media->source ) }}" height="600" class="d-block w-100" alt="...">
                    </div>
                    @php
                    $index ++;
                    @endphp
                    @endforeach
                </div>
                <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div> -->

        <div class="col-md-12 mb-5">
    
            <h2 class="mb-3 font-weight-bold righteous d-flex">
                <span class=' text-white'> Map </span>
                <input type="hidden" id="lat" name="lat" value="{{ $place->lat }}">
                <input type="hidden" id="lng" name="lng" value="{{ $place->lng }}">
                <div class="btn btn-success btn-lg ml-auto" data-toggle="modal" data-target="#sendLocation"><i class="fa fa-send"></i> Send to my Email</div>
            </h2>
            <div id="map" style=" box-shadow: 0px 0px 10px 0px rgba(225, 225, 225, 0.2), 0px 0px 20px 0px rgba(225, 225, 225, 0.7); border-radius: 5px;"></div>
            <div class="col-md-12">
            <div class="row justify-content-center">
            <p class="mt-3 text-white text-center">Please drag the <i class="fa fa-2x fa-male text-warning"></i> icon to the <i class="fa fa-2x fa-map-marker text-danger"></i> of the map to see the 360 degrees view. </p>
            </div>
            </div>
        </div>
        <div class="col-md-12 mb-5">
        
        
        <form action="{{ url('review/'.$place->id)}}" method='POST' >
            {{ csrf_field() }}

            <div class="form-group">
                <label for="exampleFormControlTextarea1" class="text-white font-weight-bold">Leave a review</label>
                <textarea class="form-control" name='comment' id="exampleFormControlTextarea1" rows="3" required></textarea>
            </div>
            <button type="submit" class="btn btn-success mb-5" style="width: 100px">Submit</button>
        </form>


        <div class="col-md-12">   
        <h2 class="font-weight-bold righteous d-flex text-white" >
        Reviews
        </h2>      
            <div class="row py-5" >
@foreach($place->reviews as $review)

                <div class="form-group col-md-6">
                        <textarea class="form-control" name='comment' readonly id="exampleFormControlTextarea1" rows="3">{{ $review->comment}}</textarea>
                </div>     
@endforeach
            </div>
        </div>
        
    </div>
</div>

<div class="modal fade" id="sendLocation" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document" style="position: center;">
        <form id="locationForm" action="{{ url('send-location/'.$place->id)}}" method="POST">

            <div class="modal-content" style="background-color: rgba(0, 102, 102, .7);">
                <div class="modal-header">
                    <h5 class="modal-title text-white   " id="exampleModalLabel">Send to your device</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label text-white">Email:</label>
                        <input type="email" name='email' required class="form-control" id="email">
                        <small id="emailHelp" class="form-text text-white">We'll never share your email with anyone else.</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-success">Send</button>
                </div>
            </div>
    </div>
    </form>

</div>

@endsection

@section('scripts')
<script>
  /*  const boholCoords = {
        lat: 9.7011,
        lng: 124.0864
    }

    function initMap() {
        let locatorMap = new google.maps.Map(document.getElementById("map"), {
            center: boholCoords,
            zoom: 10
        }); */


        const coords = {
            lat: parseFloat(document.getElementById("lat").value),
            lng: parseFloat(document.getElementById("lng").value)
        }

        function initMap() {
        let locatorMap = new google.maps.Map(document.getElementById("map"), {
            center: coords,
            zoom: 11.5
        })
        console.log(coords)
        let locationMarker = new google.maps.Marker({
            position: coords,
            map: locatorMap,
            title: 'My location'
        })
        // function addMarker(coords){
        // 	let locationMarker = new google.maps.Marker({
        // 		position: coords,
        // 		map: locatorMap,
        // 		title: 'Location'
        // 	})
        // }
    }

    $('#send').click(() => {
        $('#locationForm').submit()
    });
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-YdXs7ltaM7obqfWCFhiY32DMo_BjeP8&callback=initMap" defer></script>
@endsection