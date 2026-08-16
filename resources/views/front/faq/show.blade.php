@extends('master.front')
@section('meta')
<meta name="keywords" content="{{$category->meta_keywords}}">
<meta name="description" content="{{$category->meta_descriptions}}">
@php
    $faqSchema = [
        '@context' => 'https://schema.org',
        '@type' => 'FAQPage',
        'mainEntity' => $category->faqs->map(fn ($faq) => [
            '@type' => 'Question',
            'name' => $faq->title,
            'acceptedAnswer' => [
                '@type' => 'Answer',
                'text' => trim(strip_tags($faq->details)),
            ],
        ])->values()->all(),
    ];
@endphp
<script type="application/ld+json">{!! \App\Helpers\SeoHelper::jsonLd($faqSchema) !!}</script>
@endsection
@section('title')
    {{ $category->name }}
@endsection

@section('content')
    <!-- Page Title-->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="breadcrumbs">
                    <li><a href="{{route('front.index')}}">{{__('Home')}}</a>
                    </li>
                    <li class="separator">&nbsp;</li>
                    <li><a href="{{route('front.faq')}}">{{__('FAQ')}}</a>
                    </li>
                    <li class="separator">&nbsp;</li>
                    <li>{{$category->name}}</li>
                  </ul>
            </div>
        </div>
    </div>
  </div>
  <!-- Page Content-->
  <div class="container padding-bottom-1x mb-3">
      <h1 class="sr-only">{{ $category->name }}</h1>
      @foreach ($category->faqs as $key => $faq)
      <div class="accordion" id="accordion1">
        <div class="card accordion-item mb-4">
            <div class="card-header accordion-header" id="heading{{$key}}">
              <h6 class="accordion-button">
                  <a href="#collapse{{$key}}" data-bs-toggle="collapse" data-bs-target="#collapse{{$key}}" aria-expanded="false" aria-controls="collapse{{$key}}">{{$faq->title}}</a>
                </h6>
            </div>
            <div id="collapse{{$key}}" class="accordion-collapse collapse"  aria-labelledby="heading{{$key}}" data-bs-parent="#accordion1">
              <div class="card-body">{{$faq->details}}</div>
            </div>
          </div>
        </div>
        @endforeach
  </div>

@endsection
