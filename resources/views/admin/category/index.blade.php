@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7 mb--7">
      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              	<h3 class="mb-0 d-flex justify-content-center align-items-center">
              		Categories 
			  		<a href="{{ url('category/create') }}" type="button" class="btn btn-primary ml-auto">Add +</a>
			  </h3>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
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
							<a href="#" class="btn btn-danger" id="removeButton" type="button" class="btn btn-danger ml-auto text-white">Delete</a>
							<form id="removeForm" action="{{ url('category/'.$category->id) }}" method="POST">
								{{ csrf_field() }}
								<input type="hidden" name="_method" value="DELETE">
							</form>
						</td>
					</tr>
					@endforeach
                </tbody>
              </table>
            </div>
            {{-- <div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination justify-content-end mb-0">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">
                      <i class="fas fa-angle-left"></i>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <i class="fas fa-angle-right"></i>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div> --}}
          </div>
        </div>
      </div>
      
      <!-- Footer --> 
    </div>
@endsection