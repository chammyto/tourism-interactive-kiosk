@extends('layouts.single_app')

@section('content')
<div class="container h-100 pt-5">
    <div class="row">
        <div class="col-md-12">
            <h2 class="mb-5 font-weight-bold righteous text-white">{{ $place->name }}</h2>
        </div>


        <div class="col-md-12 mb-4">
            <nav aria-label="breadcrumb">

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-cubes"></i>Menu</a></li>
                    <li class="breadcrumb-item font-weight-bold alata"><a href="javascript:history.back(); javascript:history.back()"> <i class="fa fa-cubes"></i>Categories</a></li>
                    <li class="breadcrumb-item font-weight-bold alata"><a href="javascript:history.back()"> <i class="fa fa-cubes"></i>Destinations</a></li>
                    <li class="breadcrumb-item font-weight-bold alata active">{{$place->name}}</li>
                </ol>
            </nav>
        </div>






        <div class="col-md-12 mb-5">

            <img src="{{ Storage::url($place->image ) }}" height="742" class="d-block w-100 mb-5" alt="...">
            <h2 class="mb-3 font-weight-bold righteous text-white">Address</h2>
            <p class="mt-3  text-white">{{ $place->street }} , {{ $place->town }}</p>
            <h2 class="mb-3 font-weight-bold righteous  text-white">Description</h2>
            <p class="mt-3  text-white">{{ $place->description }}</p>


        </div>

        <div class="col-md-12 mb-5">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    @foreach($place->media as $key=>$media)
                    <li data-target="#carouselExampleIndicators" data-slide-to="{{$key}}"></li>
                    @endforeach

                </ol>
                <div class="carousel-inner">
                    @php
                    $index = 0;
                    @endphp
                    @foreach($place->media as $media)
                    <div class="carousel-item {{ $index == 0 ? 'active' : ''}}">
                        <img src="{{ Storage::url($media->source ) }}" height="742" class="d-block w-100" alt="...">
                    </div>
                    @php
                    $index ++;
                    @endphp
                    @endforeach
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="col-md-12 mb-5">
            @if(session()->has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Success!</strong> Location has been sent successfully.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif
            <h2 class="mb-3 font-weight-bold righteous d-flex">
                <span class=' text-white'>Location </span>
                <input type="hidden" id="lat" name="lat" value="{{ $place->lat }}">
                <input type="hidden" id="lng" name="lng" value="{{ $place->lng }}">
                <div class="btn btn-success ml-auto" data-toggle="modal" data-target="#sendLocation"><i class="fa fa-send"></i> Send Location</div>
            </h2>
            <div id="map"></div>
        </div>
    </div>
</div>

<div class="modal fade" id="sendLocation" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Send location to your device</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="locationForm" action="{{ url('send-location/'.$place->id)}}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Email:</label>
                        <input type="email" name='email' required class="form-control" id="email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" id="send" class="btn btn-success">Send location</button>
            </div>
        </div>
    </div>
</div>

@endsection

@section('scripts')
<script>
    const boholCoords = {
        lat: 9.7011,
        lng: 124.0864
    }

    function initMap() {
        let locatorMap = new google.maps.Map(document.getElementById("map"), {
            center: boholCoords,
            zoom: 10
        });


        const coords = {
            lat: parseFloat(document.getElementById("lat").value),
            lng: parseFloat(document.getElementById("lng").value)
        }
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
    })
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-YdXs7ltaM7obqfWCFhiY32DMo_BjeP8&callback=initMap" defer></script>
@endsection