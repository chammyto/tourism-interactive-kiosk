@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--9 mb--7">
	<div class="row">
		<div class="col">
		
			<div class="card shadow">
				<div class="card-header border-0">
					<h3 class="mb-0 d-flex justify-content-center align-items-center">
						Categories 
						<a href="{{ url('category/create') }}" type="button" class="btn btn-primary ml-auto">Add +</a>
					</h3>
				</div>
				
				<div class="card-body">
				@if(session()->has('success'))
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<strong>Success!</strong> Category has been saved successfully.
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
						</button>
					</div>
				@elseif(session()->has('delete'))
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<strong>Success!</strong> Category has been deleted successfully!.
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
					<!--	<th scope="col">Description</th> -->
						<th scope="col">Actions</th>
					</tr>
					</thead>
					<tbody> 
						@foreach($categories as $category)
						<tr>
							<th><img src="{{ Storage::url($category->image)}}" width="80" height="80" /></th>
							<td>{{ $category->name }}</td>
						<!--	<td><textarea readonly class="form-control" name="description" id="exampleFormControlTextarea1" cols="50" rows="5">{{ $category->description }}</textarea></td> -->
						
							
							<td>
							<button type="button" class="btn btn-primary previewButton" data-toggle="modal" data-target="#previewModal" data-info="{{$category}}">
  Preview
</button>
								<a href="{{ url('category/'.$category->id.'/edit') }}" type="button" class="btn btn-info ml-auto text-white">Edit</a>
								<div class="btn btn-danger removeButton" type="button" class="btn btn-danger ml-auto text-white">Delete</a>
								<form class="removeForm" action="{{ url('category/'.$category->id) }}" method="POST">
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


<div class="modal fade" id="previewModal" tabindex="-1" role="dialog" aria-labelledby="previewModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="previewModalLabel">Modal title</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="previewModalDescription">
        ...
      </div>
      
    </div>
  </div>
</div>
@endsection

@section('scripts')
<script>

	$(document).on('click', '.removeButton', () => {
		const form = $(event.target).parent().find('.removeForm')
		form.submit()
		console.log(form)
	})

	
	$(document).on('click', '.previewButton', () => {
		const clickedElement = $(event.target);
		let data = clickedElement.data('info')
		const title = data.name
		const info = data.description
		$('#previewModalLabel').html(title)
		$('#previewModalDescription').html(info)
	})

</script>
@endsection