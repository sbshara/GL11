@extends('layout')
@section('title') MENA Technologies | Home @endsection
@section('content')

        <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Hello Shiblie
            <small>Optional description</small>
        </h1>


        <!-- Page Mapper -->
        <ol class="breadcrumb">
            <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">All Tasks</li>
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
                    <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>
                        <a href="{{ route('register') }}">Register</a>
                        @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    All Tasks:
                </div>

                <ul class="links">
                    @foreach($tasks as $task)
                        <li><a href="{{ url('tasks', $task->id) }}"> {{ $task->body }}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>



    </section>
@endsection