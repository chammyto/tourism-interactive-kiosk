@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--9 mb-7">
	<!-- Table -->
	<div class="row">
		<div class="col">
			<div class="card shadow">
				<div class="card-header border-0">
					<h3 class="mb-0 d-flex">
						Add Tourist Spot
					</h3>
				</div>
				<div class="card-body">
					<form action="{{ url('destination')}}" method="POST" enctype="multipart/form-data">
						{{ csrf_field() }}

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<img id="preview" src="{{ asset('img/placeholder3.png')}}" alt="your image" width="50%" height="50%" style="border: 1px solid #212121" />
									<input type="file" name="image" id="image" class="col-md-6 form-control {{ $errors->has('image') ? ' is-invalid' : '' }}" value="{{ old('image') }}" placeholder="Category image">
									@if($errors->has('image'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('image') }}</strong>
									</span>
									@endif
								</div>
								<div class="form-group">
									<label>Name</label>
									<input type="name" name="name" class="form-control {{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old('name') }}" placeholder="Tourist spot name">
									@if($errors->has('name'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('name') }}</strong>
									</span>
									@endif
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control {{ $errors->has('description') ? ' is-invalid' : '' }}" name="description" id="exampleFormControlTextarea1" rows="3">{{ old('description') }}</textarea>
									@if($errors->has('description'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('description') }}</strong>
									</span>
									@endif
								</div>

								<div class="form-group">
									<label>Category</label>
									<select name="category" class="custom-select" required>
										<option value="" selected disabled>Select</option>
										@foreach($categories as $category)
										<option value="{{ $category->id }}">{{ $category->name }}</option>
										@endforeach
									</select>
								</div>
							</div>
							<div class="col-md-6">

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Location (Town)</label>
											<select name="town" id="town" class="form-control">
												<option value="">Select</option>
												@foreach($towns as $town)
												<option value="{{$town}}" {{ old('town') == $town ? 'selected':'' }}>{{$town}}</option>
												@endforeach
											</select>
											@if($errors->has('town'))
											<span class="invalid-feedback" role="alert">
												<strong>{{ $errors->first('town') }}</strong>
											</span>
											@endif
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label>Street</label>
											<input type="street" name="street" class="form-control {{ $errors->has('street') ? ' is-invalid' : '' }}" value="{{ old('street') }}" placeholder="Street">
											@if($errors->has('street'))
											<span class="invalid-feedback" role="alert">
												<strong>{{ $errors->first('street') }}</strong>
											</span>
											@endif
										</div>
									</div>
								</div>
								<div class="row col-md-12">
									<label>Set location on map</label>
									<input type="hidden" id="lat" name="lat">
									<input type="hidden" id="lng" name="lng">
									<div id="map"></div>
								</div>
							</div>
						</div>
						<div class="row col-md-12">
							<p>Media</p>
							<div id="media row col-md-12">

							</div>
						</div>
						<div class="row " id="media">
						<div class="form-group col-md-4">
									<input type="hidden" name="media_id[]" class="col-md-10  media" value="0" placeholder="Destination media">

									<img class="preview" src="{{ asset('img/placeholder3.png')}}" alt="your image" width="100%" height="264" style="border: 1px solid #212121" />
									<input type="file" name="media[]" class="col-md-10  media" placeholder="Destination media">
									@if($errors->has('image'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('image') }}</strong>
									</span>
									@endif
								</div>

							

						</div>
						<div class="row col-md-12">
						<button type="button" class="btn btn-accent" id="add-media">Add media</button>
						</div>

						<button type="submit" class="btn btn-primary mt-5">Save</button>

					</form>

				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
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

		let locationMarker = new google.maps.Marker({
			position: boholCoords,
			map: locatorMap,
			draggable: true,
			title: 'My location'
		})

		const lat = locationMarker.getPosition().lat();
		const lng = locationMarker.getPosition().lng();

		// const { lat, lng} = locationMarker.getLocation()
		$('#lat').val(lat)
		$('#lng').val(lng)

		locationMarker.addListener('mouseout', () => {
			const lat = locationMarker.getPosition().lat();
			const lng = locationMarker.getPosition().lng();

			// const { lat, lng} = locationMarker.getLocation()
			$('#lat').val(lat)
			$('#lng').val(lng)

		})
	}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-YdXs7ltaM7obqfWCFhiY32DMo_BjeP8&callback=initMap" defer>

</script>

<script>
	jQuery(document).ready(function($) {

		$('#add-media').click(() => {
			$('#media').append(`	<div class="form-group col-md-4">
									<input type="hidden" name="media_id[]" class="col-md-10  media" value="0" placeholder="Destination media">

									<img class="preview" src="{{ asset('img/placeholder3.png')}}" alt="your image" width="100%" height="264" style="border: 1px solid #212121" />
									<input type="file" name="media[]" class="col-md-10  media" placeholder="Destination media">
									@if($errors->has('image'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('image') }}</strong>
									</span>
									@endif
								</div>`)
		})

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader()

				reader.onload = function(e) {
					$('#preview').attr('src', e.target.result)
				}

				reader.readAsDataURL(input.files[0])
			}
		}

		$("#image").change(function() {
			readURL(this)
		})
	})

	$(document).on('change', '.media', (event) => {
		if (event.target.files && event.target.files[0]) {
			var reader = new FileReader()

			reader.onload = function(e) {
				$(event.target).parent().find('.preview').attr('src', e.target.result)
			}

			reader.readAsDataURL(event.target.files[0])
		}
	})

	$(document).on('click', '.remove', (event) => {
		$(event.target).parent().parent().find('.preview').attr('src', "{{ asset('img/placeholder3.png')}}")

		$(event.target).parent().html(`
			<input type="file" name="media[]" class="col-md-10  media" value="" placeholder="Destination media">
			<input type="hidden" name="media_deleted[]" class="col-md-10  media" value="true" placeholder="Destination media">
			`)


	})
</script>
@endsection