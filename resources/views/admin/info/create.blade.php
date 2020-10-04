@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7 mb--7">
      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              	<h3 class="mb-0 d-flex">
              		Information 
				</h3>
            </div>
            <div class="card-body">
				<form action="{{ url('info')}}" method="POST" enctype="multipart/form-data">
					{{ csrf_field() }}
					
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>Title</label>
								<input type="text" name="title" class="form-control {{ $errors->has('title') ? ' is-invalid' : '' }}" value="{{ old('title') }}" placeholder="Information title">
								@if($errors->has('title'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('title') }}</strong>
									</span>
								@endif
							</div>
							<div class="form-group">
								<label>Description</label>
								<textarea class="form-control {{ $errors->has('description') ? ' is-invalid' : '' }}" name="description" id="description" rows="3">{{ old('description') }}</textarea>
								@if($errors->has('description'))
									<span class="invalid-feedback" role="alert">
										<strong>{{ $errors->first('description') }}</strong>
									</span>
								@endif
							</div>
							<button type="submit" class="btn btn-primary">Save</button>
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
		CKEDITOR.replace('description');

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