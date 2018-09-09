@extends('layout')
@section('title')Home | MENA Technologies, Inc. @endsection
@section('content')
        <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Hello {{ Auth::user()->name }}
            <small>This is the "Home" Page (home.blade.php)</small>
        </h1>
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
        @endif


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
                    This is the starter page from <a target="_blank" href="http://adminlte.io/">AdminLTE.IO <i class="fa fa-external-link-alt"></i></a>
                </div>

                <ul class="links">
                    <li><a href="{{ url('tasks') }}">All Tasks</a></li>
                    <li><a href="{{ url('posts') }}">All Posts</a></li>
                </ul>

            </div>
        </div>

    </section>
@endsection