@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7 mb--7">
	<div class="row">
		<div class="col">

			<div class="card shadow">
				<div class="card-header border-0">
					<h3 class="mb-0 d-flex">
						Settings
					</h3>
				</div>

				<div class="card-body">
        @if(session()->has('success'))
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<strong>Success!</strong> Background has been saved successfully.
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
          @endif
        <form action="{{ url('settings-bg')}}" method="POST" enctype="multipart/form-data">
						{{ csrf_field() }}
            <input type="hidden" name="_method" value="PATCH">

            <label>Background</label>
            <div class="form-group">
              <img id="preview" src="{{ $bg->value ? Storage::url($bg->value) : asset('img/placeholder3.png')}}" alt="your image" width="50%" height="50%" style="border: 1px solid #212121" />
              <input type="file" name="image" id="image" class="col-md-6 form-control {{ $errors->has('image') ? ' is-invalid' : '' }}" required value="{{ old('image') }}" placeholder="Category image">
            </div>
						<button type="submit" class="btn btn-primary">Save</button>

        </form>
				</div>
			</div>
		</div>
	</div>
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