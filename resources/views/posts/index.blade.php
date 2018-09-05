@extends('layout')
@section('title') All Posts | MENA Technologies @endsection
@section('content')

        <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Hello Shiblie
            <small>All Posts Page</small>
        </h1>


        <!-- Page Mapper -->
        <ol class="breadcrumb">
            <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">All Posts</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <a href="{{ url('posts/create') }}" class="btn btn-primary btn-xs pull-right">Create New Post</a>
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
                    All Posts:
                </div>


                @foreach($posts as $post)
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Box Comment -->
                            <div class="box box-widget">
                                <div class="box-header with-border">
                                    <div class="user-block">
                                        <img class="img-circle" src="{{ url('/') }}/img/user1-128x128.jpg" alt="User Image">
                                        <span class="username"><a href="{{ url('/posts', $post->id) }}">{{ $post->title }}</a></span>
                                        <span class="description">Published: {{ $post->created_at->diffForHumans() }}. Last Updated: {{ $post->updated_at }}</span>
                                    </div>
                                    <!-- /.user-block -->
                                    <div class="box-tools">
                                        {{--<button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Mark as read">--}}
                                            {{--<i class="fa fa-circle-o"></i></button>--}}
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    @if(strlen($post->body) > 100)
                                        {{ StringHelper::truncate($post->body, 100) }} <a class="btn btn-primary btn-xs" href="{{ url('/posts', $post->id) }}">read more</a> </br>
                                        {{--@str_limit($post->body, 100) <a href="{{ url('/posts', $post->id) }}">read more</a>--}}
                                    @else
                                        {!! $post->body !!}
                                    @endif
                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Share</button>
                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i> Like</button>
                                    <span class="pull-right text-muted">DUMMY:127 likes - 3 comments</span>
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer box-comments">
                                    <div class="box-comment">
                                        <!-- User image -->
                                        <img class="img-circle img-sm" src="{{ url('/') }}/img/user3-128x128.jpg" alt="User Image">
                                        <div class="comment-text">
                                          <span class="username">
                                            Maria Gonzales
                                            <span class="text-muted pull-right">8:03 PM Today</span>
                                          </span><!-- /.username -->
                                            It is a long established fact that a reader will be distracted
                                            by the readable content of a page when looking at its layout.
                                        </div>
                                        <!-- /.comment-text -->
                                    </div>
                                    <!-- /.box-comment -->
                                    <div class="box-comment">
                                        <!-- User image -->
                                        <img class="img-circle img-sm" src="{{ url('/') }}/img/user4-128x128.jpg" alt="User Image">

                                        <div class="comment-text">
                                          <span class="username">
                                            Luna Stark
                                            <span class="text-muted pull-right">8:03 PM Today</span>
                                          </span><!-- /.username -->
                                            It is a long established fact that a reader will be distracted
                                            by the readable content of a page when looking at its layout.
                                        </div>
                                        <!-- /.comment-text -->
                                    </div>
                                    <!-- /.box-comment -->
                                </div>
                                <!-- /.box-footer -->
                                <div class="box-footer">
                                    <form action="#" method="post">
                                        <img class="img-responsive img-circle img-sm" src="{{ url('/') }}/img/user4-128x128.jpg" alt="Alt Text">
                                        <!-- .img-push is used to add margin to elements next to floating images -->
                                        <div class="img-push">
                                            <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                                        </div>
                                    </form>
                                </div>
                                <!-- /.box-footer -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>
                @endforeach
                <!-- /.row -->
            </div>
        </div>



    </section>
@endsection