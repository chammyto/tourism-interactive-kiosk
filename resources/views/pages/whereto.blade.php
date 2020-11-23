@extends('layouts.single_app')

@section('content')
    
    <div class="container h-100 pt-5">
        <div class="row">
          <!--  <div class="col-md-12">
                <h2 class="mb-5 font-weight-bold righteous text-white">Where do you want to go?</h2> 
            </div>  -->

             <div class="col-md-12 mb-4"> 
                <nav aria-label="breadcrumb"> 

                <ol class="breadcrumb">
                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('menu')}}"> <i class="fa fa-home"></i>Home</a></li> 

                    <li class="breadcrumb-item font-weight-bold alata"><a href="{{url('categories')}}"> <i class="fa fa-cubes"></i>Categories</a></li> 

                    <li class="breadcrumb-item font-weight-bold alata active">Destinations</li>
                </ol>
                </nav>
            </div> 




            <div class="col-md-12">
            
                <div class="row">
                    @foreach($destinations as $destination)
                        <a class="col-md-6" href="{{url('places/'.$destination->id)}}"> 
                            <div class="jumbotron my-4 alata" style="background: linear-gradient(rgba(14, 53, 15, 0.45), rgba(0, 79, 32, 0.7)), url({{ Storage::url($destination->image) }}); height: 100px;"> 
                                <div class="container">
                                    <h1 class="display-4 bangers notranslate">{{ $destination->name }}</h1>
                                    <p class="lead">{{ $destination->description }}</p>
                                </div>
                            </div>
                        </a>  
                    @endforeach
                </div>

            </div>

        </div>
    </div>

    <script type="text/javascript">
        function idleTime(){
            var time;
            window.onload = resetTimer;
            window.onmousemove = resetTimer;
            window.onmousedown = resetTimer;
            window.ontouchstart = resetTimer;
            window.onclick = resetTimer;
            window.onkeydown = resetTimer;
            window.addEventListener('scroll',resetTimer, true);

            function backToStartPage(){
              //  window.location.href = "{{ url('welcome')}}";
                window.location.href = "/";
            }

            function resetTimer(){
                clearTimeout(time);
                time = setTimeout(backToStartPage, 60000);
            }
        }
        idleTime();
    </script>

@endsection

