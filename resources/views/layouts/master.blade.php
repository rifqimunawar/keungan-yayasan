<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    {{-- <title>@yield('title') &mdash; {{ config('app.name') }}</title> --}}
    <title>.:Yayasan Armaniyah:.</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    {{-- @include('partials.page-css') --}}
    <!-- General CSS Files -->
    <link rel="stylesheet" href="{{ asset('assets/modules/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/modules/fontawesome/css/all.min.css') }}">
    {{-- select2 --}}
    <link rel="stylesheet" href="{{ asset('assets/modules/select2/dist/css/select2.min.css') }}">
    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/components.css') }}">
    <link rel="stylesheet" href="https://unpkg.com/ionicons@5.5.2/dist/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    @stack('css')
    <!-- Start GA -->
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-94034622-3');
    </script>
    <!-- /END GA -->
</head>

<body>
    <div id="app" class="zoom-out">
        <div class="main-wrapper main-wrapper-1">
            <div class="navbar-bg"></div>
            @include('partials.navbar')
            <div class="main-sidebar sidebar-style-2">
                <aside id="sidebar-wrapper">
                    <div class="sidebar-brand">
                        <a href="{{ route('dashboard.index') }}">
                            <div style="width: 100px; display:flex;">
                                <img src="{{ asset('assets/img/logo-arman.png') }}" alt="Yayasan Armaniyah"
                                    style="max-width: 60%; height: 60%; border-radius: 10px; margin-left:15px;margin-top:10px; margin-right:10px">
                                <p style="margin-top: 10px; font-weight: bold; color: #333;">Yayasan Armaniyah</p>
                            </div>
                        </a>
                    </div>
                    <div class="sidebar-brand sidebar-brand-sm">
                        <a href="{{ route('dashboard.index') }}">
                            <img src="{{ asset('assets/img/logo-arman.png') }}" alt="Logo"
                                style="max-width: 100%; height: auto; border-radius: 10px;">
                        </a>
                    </div>

                    @include('partials.sidebar')

                </aside>
            </div>

            <!-- Main Content -->
            <div class="main-content">
                @yield('content')
            </div>
            @include('partials.footer')
        </div>
    </div>

    {{-- @include('partials.page-js') --}}
    <!-- General JS Scripts -->
    <script src="{{ asset('assets/modules/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/modules/popper.js') }}"></script>
    <script src="{{ asset('assets/modules/tooltip.js') }}"></script>
    <script src="{{ asset('assets/modules/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/modules/nicescroll/jquery.nicescroll.min.js') }}"></script>
    <script src="{{ asset('assets/modules/moment.min.js') }}"></script>
    <script src="{{ asset('assets/js/stisla.js') }}"></script>

    <!-- Template JS File -->
    <script src="{{ asset('assets/js/scripts.js') }}"></script>
    <script src="{{ asset('assets/js/custom.js') }}"></script>
    <!-- select2 -->
    <script src="{{ asset('assets/modules/select2/dist/js/select2.full.min.js') }}"></script>
    <!-- Sweet Alert -->
    @include('sweetalert::alert')
    @stack('scripts')
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


    <!-- modal -->
    <script src="{{ asset('assets/js/page/bootstrap-modal.js') }}"></script>
</body>

</html>
