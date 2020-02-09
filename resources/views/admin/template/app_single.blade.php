<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    ADMIN | {{ ucfirst(Request::segment(1)) }}
  </title> 

  <link href="{{ asset('assets/img/brand/favicon.png') }}" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="{{ asset('assets/js/plugins/nucleo/css/nucleo.css') }}" rel="stylesheet" />
  <link href="{{ asset('assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css') }}" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="{{ asset('assets/css/argon-dashboard.css?v=1.1.2') }}" rel="stylesheet" />
</head>


<body class="bg-default">
  <div class="main-content">  
    @yield('content')
  </div>


  <!--   Core   -->
  
  <script src="{{ asset('assets/js/plugins/jquery/dist/jquery.min.js')}}"></script>
  <script src="{{ asset('assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
  <!--   Optional JS   -->
  <!--   Argon JS   -->
  <script src="{{ asset('assets/js/argon-dashboard.min.js?v=1.1.2')}}"></script> 
  @yield('scripts')
</body>

</html>