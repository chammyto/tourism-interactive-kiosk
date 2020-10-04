@extends('layouts.single_app')

@section('content')
    {{$place}}
    <div class="container h-100 pt-5">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous">{{ $place->name }}</h2>  
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

                <img src="{{ Storage::url($place->image ) }}" class="d-block w-100 mb-5" alt="...">
            
                <p class="lead">{{ $place->description }}</p> 
            </div>

            <div class="col-md-12 mb-5">
                <h2 class="mb-3 font-weight-bold righteous">Spoilers</h2> 
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="{{ asset('img/choco.jpg') }}" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="{{ asset('img/choco.jpg') }}" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="{{ asset('img/choco.jpg') }}" class="d-block w-100" alt="...">
                        </div>
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
                <h2 class="mb-3 font-weight-bold righteous d-flex">
                    <span>Location </span>
                    <input type="hidden" id="lat" name="lat" value="{{ $place->lat }}">
                    <input type="hidden" id="lng" name="lng" value="{{ $place->lng }}">
                    <div class="btn btn-success ml-auto"><i class="fa fa-send"></i> Send Location</div>
                </h2> 
                <div id="map"></div>
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

	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-YdXs7ltaM7obqfWCFhiY32DMo_BjeP8&callback=initMap" defer></script>
@endsections