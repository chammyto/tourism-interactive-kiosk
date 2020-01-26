@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">Add new category
				</div>

                <div class="card-body">
					<form action="{{ url('category')}}" method="POST" enctype="multipart/form-data">
						{{ csrf_field() }}
						<div class="form-group">
							<label>Image</label>
							<input type="file" name="image" class="form-control {{ $errors->has('image') ? ' is-invalid' : '' }}" value="{{ old('image') }}" placeholder="Category image">
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
					</form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
	$(document).ready(() => {
		alert(1)
		$("#dtable").DataTables()
	})
</script>
@endsection

                                 