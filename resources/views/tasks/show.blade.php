@include('partials.adminLTE_head')

<!-- include any additional CSS references HERE -->
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
    @include('partials.adminLTE_header')


            <!-- Left side column. contains the logo and sidebar -->
    @include('partials.adminLTE_leftSideBar')
            <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Hello Shiblie
                <small>Task by ID</small>
            </h1>


            <!-- Page Mapper -->
            <ol class="breadcrumb">
                <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="{{ url('/tasks')  }}"></i> Tasks</a></li>
                <li class="active">{{ $task->id  }}</li>
            </ol>




        </section>

        <!-- Main content -->
        <section class="content container-fluid">

            <!--------------------------
              | Your Page Content Here |
              -------------------------->
            <div class="flex-center position-ref full-height">
                @if (Route::has('login'))
                    <div class="top-right links">
                        @auth
                        <a href="{{ url('/') }}">Home</a>
                        @else
                            <a href="{{ route('login') }}">Login</a>
                            <a href="{{ route('register') }}">Register</a>
                            <a href="{{ route('about') }}">About Us</a>
                        @endauth
                    </div>
                @endif

                <div class="content">
                    <div class="title m-b-md">
                        <ul>
                            <li>ID: {{ $task->id }}</li>
                            <li>Task: {{ $task->body }}</li>

                        </ul>

                    </div>


                </div>
            </div>



        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    @include('partials.adminLTE_footer')

            <!-- Control Sidebar -->
    @include('partials.adminLTE_rightSideBar')
</div>
<!-- ./wrapper -->

@include('partials.adminLTE_foot')