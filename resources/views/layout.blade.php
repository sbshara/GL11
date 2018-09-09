@include('AdminLTE.head')

<title>@yield('title')</title>
<!-- include any additional CSS references HERE -->
@yield('additional_CSS')

</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="{{ url('/') }}" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>M</b>G</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>MENA</b> Guidelines</span>
        </a>

        <!-- Header Navbar -->
        @include('AdminLTE.headerNavBar')
    </header>

    <!-- Left side column. contains the logo and sidebar -->
    @include('AdminLTE.LeftColumn')

    @yield('content')
     <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            Version 1.0.1 --dev
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; {{ now()->year }} <a href="#">MENA Technologies, Inc.</a></strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->
    @include('AdminLTE.RightColumn')
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
    immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

@yield('additional_JS')
@include('AdminLTE.foot')