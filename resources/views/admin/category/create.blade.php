@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7 mb--7">
      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              	<h3 class="mb-0 d-flex">
              		Categories 
				</h3>
            </div>
            <div class="card-body">
				<form action="{{ url('category')}}" method="POST" enctype="multipart/form-data">
					{{ csrf_field() }}
					
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<img id="preview" src="{{ asset('img/placeholder3.png')}}" alt="your image" width="50%" height="50%" style="border: 1px solid #212121"/>
								<input type="file" name="image" id="image" class="col-md-6 form-control {{ $errors->has('image') ? ' is-invalid' : '' }}" value="{{ old('image') }}" placeholder="Category image">
								@if($errors->has('image'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('image') }}</strong>
									</span>
								@endif
							</div>
							<div class="form-group">
								<label>Name</label>
								<input type="name" name="name" class="form-control {{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old('name') }}" placeholder="Category name">
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
							

							<button type="submit" class="btn btn-primary">Save</button>
						</div>
						
						<div class="col-md-6">
							 
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Location (Town)</label>
										<select name="town" id="town" class="form-control">
											<option value="">Select Town</option>
											@foreach($towns as $town)
												<option value="{{$town}}">{{$town}}</option>
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

						</div>


					</div>

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
</script>
@endsection