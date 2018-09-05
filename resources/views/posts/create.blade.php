@extends('layout')

@section('additional_CSS')
@endsection

@section('title') New Post | MENA Technologies @endsection


@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Hello Shiblie
            <small>New Post</small>
        </h1>
        <!-- Page Mapper -->
        <ol class="breadcrumb">
            <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ url('/posts')  }}"></i> Posts</a></li>
            <li class="active">New Post</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        {{--@dd($errors)--}}
        @if(count($errors->all()))
            <div class="callout callout-danger">
                <h4>Validation Error(s)!</h4>
                Could not publish your post, please check the errors below
            </div>
        @endif
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">New Post</h3>

                {{-- CLOSE & MINIMISE --}}
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                            title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
            </div>

                <div class="box-body">
                    <div class="box-body pad">
                        <form role="form" method="post" action="{{ url('posts') }}">
                            {{ csrf_field() }}

                            <div class="form-group">
                                <label for="title">Title: </label>
                                <input type="text" class="form-control" id="postTitle" placeholder="Title" name="title" required>
                                @if($errors->has('title'))
                                    @foreach($errors->get('title') as $message)
                                        <div class="bg-red-active color-palette"><span>{{ $message }}</span></div>
                                    @endforeach
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="body">Post Body: </label>
                                <textarea id="body" name="body" rows="20" cols="265" placeholder="Enter Post body here."></textarea>
                                @if($errors->has('body'))
                                    @foreach($errors->get('body') as $message)
                                        <div class="bg-red-active color-palette"><span>{{ $message }}</span></div>
                                    @endforeach
                                @endif
                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary">Publish</button>
                            </div>

                        </form>
                    </div>
                </div>
        </div>
    </section>


@endsection
@section('additional_JS')
    <script src="https://cdn.ckeditor.com/4.10.0/standard-all/ckeditor.js"></script>
{{--
    DISTRIBUTION OPTIONS FOR CK EDITOR:
        - basic - the Basic preset
        - standard - the Standard preset
        - standard-all - the Standard preset together with all other plugins created by CKSource*
        - full - the Full preset
        - full-all - the Full preset together with all other plugins created by CKSource*
--}}
    <script>
        CKEDITOR.replace( 'body' );
    </script>

@endsection