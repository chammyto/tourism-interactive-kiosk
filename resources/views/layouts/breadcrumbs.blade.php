
<div class="col-md-12 mb-4"> 
    <nav aria-label="breadcrumb"> 
    @php
    	$url_array = explode('/', Request::url()); 
    @endphp

      <ol class="breadcrumb">
        {{-- <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('')}}"> <i class="fa fa-home"></i> Home</a></li> --}}
        <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('categories')}}"> <i class="fa fa-cubes"></i> Categories</a></li> 

        @if(count($url_array) == 5)
        	<li class="breadcrumb-item font-weight-bold alata active"> Places </li>
        @endif

        @if(count($url_array) == 6)
        	<li class="breadcrumb-item font-weight-bold alata active"> <a href="{{url('categories/places')}}">Places</a> </li>
        	<li class="breadcrumb-item font-weight-bold alata active"> Chocolate Hills </li>
        @endif


      </ol>
    </nav>
</div>


