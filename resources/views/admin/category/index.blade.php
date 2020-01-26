@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header d-flex align-items-center">
                	<b>Categories</b>
					<a href="{{ url('category/create') }}" type="button" class="btn btn-primary ml-auto">Add +</a>
				</div>

                <div class="card-body">
					<table class="table" id="dtable">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Image</th>
								<th scope="col">Name</th>
								<th scope="col">Description</th>
								<th scope="col">Actions</th>
							</tr>
						</thead>
						<tbody>
							@foreach($categories as $category)
							<tr>
								<th><img src="{{ Storage::url($category->image)}}" width="80" height="80" /></th>
								<td>{{ $category->name }}</td>
								<td>{{ $category->description }}</td>
								<td>
									<a href="{{ url('category/'.$category->id.'/edit') }}" type="button" class="btn btn-info ml-auto text-white">Edit</a>
									<a href="{{ url('category/'.$category->id.'') }}" type="button" class="btn btn-danger ml-auto text-white">Delete</a>
								</td>
							</tr>
							@endforeach
							
							
						</tbody>
					</table>
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

                                 