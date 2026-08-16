@extends('master.front')

@section('title')
    {{ $page->title }}
@endsection

@section('meta')
    <meta name="keywords" content="{{ $page->meta_keywords }}">
    <meta name="description" content="{{ Str::limit(trim(strip_tags($page->meta_descriptions ?: $page->details)), 160, '') }}">
@endsection

@section('content')
    <!-- Page Title-->
<div class="page-title">
  <div class="container">
    <div class="row">
        <div class="col-lg-12">
            <ul class="breadcrumbs">
                <li><a href="{{route('front.index')}}">{{__('Home')}}</a> </li>
                <li class="separator">&nbsp;</li>
                <li>{{$page->title}}</li>
              </ul>
        </div>
    </div>
  </div>
</div>
<!-- Page Content-->
<div class="">
    <div class="container other-page-data">
        <!-- Categories-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card mb-5">
                    <div class="card-body px-3 py-5">
                        <div class="d-page-content">
                            <h1 class="h4 d-block text-center"><b>{{$page->title}}</b></h1>
                            {!! $page->details !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
</div>

@endsection
