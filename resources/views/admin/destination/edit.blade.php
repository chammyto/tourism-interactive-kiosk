@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7 mb--7">
	<!-- Table -->
	<div class="row">
		<div class="col">
			<div class="card shadow">
				<div class="card-header border-0">
					<h3 class="mb-0 d-flex">
						Destinations
					</h3>
				</div>
				<div class="card-body">
					<form action="{{ url('destination/'.$destination->id)}}" method="POST" enctype="multipart/form-data">
						{{ csrf_field() }}
						<input type="hidden" name="_method" value="PATCH">

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<img id="preview" src="{{ Storage::url($destination->image) }}" alt="your image" width="50%" height="50%" />
									<input type="file" name="image" id="image" class="col-md-6 form-control {{ $errors->has('image') ? ' is-invalid' : '' }}" value="{{ old('image', $destination->image) }}" placeholder="Category image">
									@if($errors->has('image'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('image') }}</strong>
									</span>
									@endif
								</div>
								<div class="form-group">
									<label>Name</label>
									<input type="name" name="name" class="form-control {{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old('name', $destination->name) }}" placeholder="Category name">
									@if($errors->has('name'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('name') }}</strong>
									</span>
									@endif
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control {{ $errors->has('description') ? ' is-invalid' : '' }}" name="description" id="exampleFormControlTextarea1" rows="3">{{ old('description', $destination->description) }}</textarea>
									@if($errors->has('description'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('description') }}</strong>
									</span>
									@endif
								</div>
								<div class="form-group">
									<label>Category</label>
									<select name="category" class="custom-select" required>
										<option value="" disabled>Select category </option>
										@foreach($categories as $category)
										<option value="{{ $category->id }}" {{ $destination->category == $category->id ? 'selected' : '' }}>{{ $category->name }}</option>
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
												<option value="">Select Town</option>
												@foreach($towns as $town)

												<option value="{{$town}}" {{ $destination->town == $town ? 'selected' : '' }}>{{$town}}</option>
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
											<input type="street" name="street" class="form-control {{ $errors->has('street') ? ' is-invalid' : '' }}" value="{{ old('street') ? old('street') : $destination->street }}" placeholder="Street">
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
						<div class="row">
							<div class="form-group col-md-4">
								<img id="preview1" src="{{ asset('img/placeholder3.png')}}" alt="your image" width="100%" height="264" style="border: 1px solid #212121" />
								<input type="file" name="media[]" id="media1" class="" value="" placeholder="Destination media">
								@if($errors->has('image'))
								<span class="invalid-feedback" role="alert">
									<strong>{{ $errors->first('image') }}</strong>
								</span>
								@endif
							</div>

							<div class="form-group col-md-4">
								<img id="preview2" src="{{ asset('img/placeholder3.png')}}" alt="your image" width="100%" height="264" style="border: 1px solid #212121" />
								<input type="file" name="media[]" id="media2" class="" value="" placeholder="Destination media">
								@if($errors->has('image'))
								<span class="invalid-feedback" role="alert">
									<strong>{{ $errors->first('image') }}</strong>
								</span>
								@endif
							</div>

							<div class="form-group col-md-4">
								<img id="preview3" src="{{ asset('img/placeholder3.png')}}" alt="your image" width="100%" height="264" style="border: 1px solid #212121" />
								<input type="file" name="media[]" id="media3" class="" value="" placeholder="Destination media">
								@if($errors->has('image'))
								<span class="invalid-feedback" role="alert">
									<strong>{{ $errors->first('image') }}</strong>
								</span>
								@endif
							</div>

						</div>

						<button type="submit" class="btn btn-primary">Save</button>
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
	$("#media1").change(function() {
		if (this.files && this.files[0]) {
			var reader = new FileReader()

			reader.onload = function(e) {
				$('#preview1').attr('src', e.target.result)
			}

			reader.readAsDataURL(this.files[0])
		}
	})

	$("#media2").change(function() {
		if (this.files && this.files[0]) {
			var reader = new FileReader()

			reader.onload = function(e) {
				$('#preview2').attr('src', e.target.result)
			}

			reader.readAsDataURL(this.files[0])
		}
	})

	$("#media3").change(function() {
		if (this.files && this.files[0]) {
			var reader = new FileReader()

			reader.onload = function(e) {
				$('#preview3').attr('src', e.target.result)
			}

			reader.readAsDataURL(this.files[0])
		}
	})
</script>
@endsection