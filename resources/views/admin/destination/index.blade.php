@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7 mb--7">
	<div class="row">
		<div class="col">
		
			<div class="card shadow">
				<div class="card-header border-0">
					<h3 class="mb-0 d-flex justify-content-center align-items-center">
						Destinations
						<a href="{{ url('destination/create') }}" type="button" class="btn btn-primary ml-auto">Add +</a>
					</h3>
				</div>
				
				<div class="card-body">
				@if(session()->has('success'))
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<strong>Success!</strong> Service has been saved successfully.
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
						</button>
					</div>
				@elseif(session()->has('delete'))
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<strong>Success!</strong> Service has been deleted successfully!.
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
						</button>
					</div>
				@endif
				<table class="table align-items-center table-flush" id='dtable'>
					<thead class="thead-light">
					<tr>
						<th scope="col">Image</th>
						<th scope="col">Name</th>
						<th scope="col">Description</th>
						<th scope="col">Category</th>
						<th scope="col">Location</th>
						<th scope="col">Actions</th>
					</tr>
					</thead>
					<tbody> 
						@foreach($destinations as $destination)
						<tr>
							<th><img src="{{ Storage::url($destination->image)}}" width="80" height="80" /></th>
							<td>{{ $destination->name }}</td>
							<td>{{ $destination->description }}</td>
							<td>{{ $destination->category_model->name }}</td>
							<td>{{ $destination->street.', '.$destination->town.', Bohol' }}</td>
							<td>
								<a href="{{ url('destination/'.$destination->id.'/edit') }}" type="button" class="btn btn-info ml-auto text-white">Edit</a>
								<a href="javascript:;" class="btn btn-danger removeButton"  type="button" class="btn btn-danger ml-auto text-white">Delete</a>
								<form class="removeForm" action="{{ url('destination/'.$destination->id) }}" method="POST">
									{{ csrf_field() }}
									<input type="hidden" name="_method" value="DELETE">
								</form>
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
		$('.removeButton').click(() => {
			$(this).closest('.removeForm').submit()
		})
	})
</script>
@endsection