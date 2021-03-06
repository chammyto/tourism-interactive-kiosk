<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Tourist KIOSK</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/line-icons/LineIcons.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">


    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    <style>
        #map {
            width: 100%;
            height: 600px;
            border: 1px solid white;
            border-radius: 5px;
        }
         /* To disable google translate text highlight  */
         #goog-gt-tt, .goog-te-balloon-frame{
                display: none !important;
            }
            .goog-text-highlight{
                background: none !important;
                box-shadow: none !important;
            }
            /* To hide translator top frame  */
            .goog-te-banner-frame{
               /* display: none !important; */
            }
    </style>
</head>
@php 
$bg = App\Setting::where('key', 'background')->first();

@endphp

<body style="background: linear-gradient(to bottom, rgba(22, 19, 16, 0.5) 50%, rgba(22, 19, 16, 6) 100%), url({{ $bg->value ? Storage::url($bg->value) : '/img/background.jpg' }}) center center no-repeat;
  background-size: cover; background-attachment: fixed">
    <div id="">
        <main class="py--4 " style="height: 90vh">
            @yield('content')
        </main>
    </div>

    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

    <script type="text/javascript">
        var ckDomain;

        function googleTranslateElementInit() {
            function getCookie(name) {
                var re = new RegExp(name + "=([^;]+)");
                var value = re.exec(document.cookie);
                return (value != null) ? unescape(value[1]) : null;
            }



            var kakan;
            var googkakan;


            kakan = getCookie("googtrans22");

            $(document).on('change', '#google_translate_element', function(e) {
                function getCookie(name) {
                    var re = new RegExp(name + "=([^;]+)");
                    var value = re.exec(document.cookie);
                    return (value != null) ? unescape(value[1]) : null;
                }
                googkakan = getCookie("googtrans");

                document.cookie = "googtrans22=" + googkakan + "; expires=Thu, 07-Mar-2047 20:22:40 GMT; path=/" + ckDomain;
                document.cookie = "googtrans22=" + googkakan + "; expires=Thu, 07-Mar-2047 20:22:40 GMT; path=/";
            })

            for (var ckDomain = window.location.hostname.split("."); 2 < ckDomain.length;) {
                ckDomain.shift();
            }

            ckDomain = ";domain=" + ckDomain.join(".");
            // domain cookie
            document.cookie = "googtrans=" + kakan + "; expires=Thu, 07-Mar-2047 20:22:40 GMT; path=/" + ckDomain;
            // host-only cookie (with no domain name definition)
            document.cookie = "googtrans=" + kakan + "; expires=Thu, 07-Mar-2047 20:22:40 GMT; path=/";

            new google.translate.TranslateElement({
                pageLanguage: 'sv',
                autoDisplay: false,
                layout: google.translate.TranslateElement
            }, 'google_translate_element');

        }
    </script>
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>



    <link rel="stylesheet" type="text/css" href="{{ asset('dt/dt-1.10.18/css/datatables.bootstrap4.min.css') }}" />

    <script type="text/javascript" src="{{ asset('dt/dt-1.10.18/js/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('dt/dt-1.10.18/js/datatables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/ckeditor/ckeditor.js') }}"></script>
    <script>
        jQuery(document).ready(function($) {
            "use strict";


        })
    </script>
    @yield('scripts')

</body>

</html>