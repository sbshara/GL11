@extends('layout')
@section('title') MENA Technologies | About us @endsection
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Hello Shiblie
                    <small>This is the "Home" Page</small>
                </h1>
                <!-- Page Mapper -->
                <ol class="breadcrumb">
                    <li><a href="{{ url('/')  }}" class="active"><i class="fa fa-dashboard"></i> Home</a></li>
                    {{--<li class="active">Home</li>--}}
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
                                <a href="{{ route('about') }}">About us</a>
                                @endauth
                        </div>
                    @endif
                    <div class="content">
                        <div class="title m-b-md">
                            ABOUT US
                        </div>

                    </div>
                </div>
        </section>
@endsection