@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7 mb--7">
	<div class="row">
		<div class="col">
		
			<div class="card shadow">
				<div class="card-header border-0">
					<h3 class="mb-0">
						Bohol Information
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
          <form method='post' action="{{ url('info/1') }}" >
            {{ csrf_field() }}

            <input type="hidden" class="type" name="_method" value="PATCH">

            <div class="col-md-12">
              <textarea name="description" id="editor" rows="20" style="width: '100%', height: 400px">
                  {{ $info->description }}
              </textarea>
            </div>
            <div class="col-md-12 mt-3">
              <button type="submit" class="btn btn-primary">Update</button>
            </div>
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
		$('#removeButton').click(() => {
			$('#removeForm').submit()
		})

    CKEDITOR.replace( 'editor', {
      height: 500,
    } );


	})
</script>
@endsection