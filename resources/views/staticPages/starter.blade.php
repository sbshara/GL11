@extends('layout')
@section('title')Starter | MENA Technologies @endsection


@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Hello { USER }
            <small>This is the "Home" Page (starter.blade.php)</small>
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
                <a href="{{ route('home') }}">{{ __('Home') }}</a>
                @else
                    <a href="{{ route('login') }}">{{ __('Login') }}</a>
                    <a href="{{ route('register') }}">{{ __('Register') }}</a>
                    <a href="{{ route('about') }}">{{ __('About') }}</a>
                    @endauth
            </div>
        @endif

        <div class="content">
            <div class="title m-b-md">
                This is the starter page from <a href="http://adminlte.io/">AdminLTE.IO</a>
            </div>

            <ul class="links">
                <li><a href="{{ url('tasks') }}">All Tasks</a></li>
                <li><a href="{{ url('posts') }}">All Posts</a></li>
            </ul>

        </div>
    </div>

</section>
@endsection