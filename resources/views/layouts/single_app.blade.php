<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
        }
    </style>
</head>

<body>
    <div id="app "  style="height: 100%; background: url(/img/background.jpg) center center no-repeat;
  background-size: cover; background-attachment: fixed">
        <main class="py-4">
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