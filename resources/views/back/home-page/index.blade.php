@extends('master.back')
@section('styles')
    <link rel="stylesheet" href="{{asset('assets/back/css/select2.css')}}">
@endsection
@section('content')

<!-- Start of Main Content -->
<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Language') }}</b></h3>
                </div>
        </div>
    </div>

    {{-- Create Table Btn --}}

	<!-- DataTales -->
	<div class="card shadow mb-4">
		<div class="card-body">
            <div class="row">
                <div class="col-5 col-md-3">
                    <div class="nav flex-column nav-pills nav-secondary" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-t9-tab" data-toggle="pill" href="#v-pills-t9" role="tab" aria-controls="v-pills-t9" aria-selected="true">{{ __('Hero Section Banner') }}</a>
                        <a class="nav-link" id="v-pills-t1-tab" data-toggle="pill" href="#v-pills-t1" role="tab" aria-controls="v-pills-t1" aria-selected="false">{{ __('3 column banner First') }}</a>
                        <a class="nav-link" id="v-pills-t2-tab" data-toggle="pill" href="#v-pills-t2" role="tab" aria-controls="v-pills-t2" aria-selected="false">{{ __('Popular Categories') }}</a>
                        <a class="nav-link" id="v-pills-t5-tab" data-toggle="pill" href="#v-pills-t5" role="tab" aria-controls="v-pills-t5" aria-selected="false">{{ __('3 column banner Second') }}</a>
                        <a class="nav-link" id="v-pills-t3-tab" data-toggle="pill" href="#v-pills-t3" role="tab" aria-controls="v-pills-t3" aria-selected="false">{{ __('Three column category') }}</a>
                        <a class="nav-link" id="v-pills-t4-tab" data-toggle="pill" href="#v-pills-t4" role="tab" aria-controls="v-pills-t4" aria-selected="false">{{ __('Featured Categories') }}</a>
                        <a class="nav-link" id="v-pills-t6-tab" data-toggle="pill" href="#v-pills-t6" role="tab" aria-controls="v-pills-t6" aria-selected="false">{{ __('2 column banner') }}</a>
                        <a class="nav-link" id="v-pills-t7-tab" data-toggle="pill" href="#v-pills-t7" role="tab" aria-controls="v-pills-t7" aria-selected="false">{{ __('Home Page 4 Banner 5 Column') }}</a>
                        <a class="nav-link" id="v-pills-t8-tab" data-toggle="pill" href="#v-pills-t8" role="tab" aria-controls="v-pills-t8" aria-selected="false">{{ __('Home Page 4 Popular Categories') }}</a>
                    </div>
                </div>
                <div class="col-7 col-md-9">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-t9" role="tabpanel" aria-labelledby="v-pills-t9-tab">
                            <form class="admin-form" action="{{route('back.hero.banner.update')}}"method="POST" enctype="multipart/form-data">
                                @include('alerts.alerts')
                                @csrf
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 1') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{isset($hero_banner['img1']) ? url('/core/public/storage/images/'.$hero_banner['img1']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img1" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="heroTabs1" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="hero1-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#hero1-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $heroTrans = $translation ? json_decode($translation->hero_banner, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="hero1-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                              
                                                <div class="form-group">
                                                    <label for="subtitle1_{{ $lang->id }}">{{ __('Heading') }} <small>({{ $lang->language }})</small></label>
                                                    <textarea name="heading1_{{ $lang->id }}" id="heading1_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Subtitle') }}">
                                                    {{ $heroTrans ? ($heroTrans['heading1'] ?? '') : (isset($hero_banner['heading1']) ? $hero_banner['heading1'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $heroTrans ? ($heroTrans['subtitle1'] ?? '') : (isset($hero_banner['subtitle1']) ? $hero_banner['subtitle1'] : '') }}" > -->
                                                </div>
                                                <div class="form-group">
                                                    <label for="title1_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <textarea name="title1_{{ $lang->id }}" id="title1_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Title') }}">
                                                    {{ $heroTrans ? ($heroTrans['title1'] ?? '') : (isset($hero_banner['title1']) ? $hero_banner['title1'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="title1_{{ $lang->id }}" class="form-control" id="title1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $heroTrans ? ($heroTrans['title1'] ?? '') : (isset($hero_banner['title1']) ? $hero_banner['title1'] : '') }}" > -->
                                                </div>
                                                <div class="form-group">
                                                    <label for="subtitle1_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>

                                                    <textarea name="subtitle1_{{ $lang->id }}" id="subtitle1_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Subtitle') }}">
                                                    {{ $heroTrans ? ($heroTrans['subtitle1'] ?? '') : (isset($hero_banner['subtitle1']) ? $hero_banner['subtitle1'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $heroTrans ? ($heroTrans['subtitle1'] ?? '') : (isset($hero_banner['subtitle1']) ? $hero_banner['subtitle1'] : '') }}" > -->
                                                </div>
                                                <div class="form-group">
                                                    <label for="subtitle1_{{ $lang->id }}">{{ __('Payment') }} <small>({{ $lang->language }})</small></label>

                                                    <textarea name="payment1_{{ $lang->id }}" id="payment1_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Subtitle') }}">
                                                    {{ $heroTrans ? ($heroTrans['payment1'] ?? '') : (isset($hero_banner['payment1']) ? $hero_banner['payment1'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $heroTrans ? ($heroTrans['subtitle1'] ?? '') : (isset($hero_banner['subtitle1']) ? $hero_banner['subtitle1'] : '') }}" > -->
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="form-group">
                                            <label for="url1">{{ __('URL 1') }} *</label>
                                            <input type="text" name="url1" class="form-control" id="url1"
                                                placeholder="{{ __('Enter Url') }}"  value="{{isset($hero_banner['url1']) ? $hero_banner['url1'] : ''}}" >
                                        </div>

                                        <hr>

                                        <div class="form-group">
                                            <label for="name">{{ __('Image 2') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{isset($hero_banner['img2']) ? url('/core/public/storage/images/'.$hero_banner['img2']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img2" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="heroTabs2" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="hero2-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#hero2-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $heroTrans = $translation ? json_decode($translation->hero_banner, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="hero2-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                 <div class="form-group">
                                                    <label for="heading2_{{ $lang->id }}">{{ __('Heading') }} <small>({{ $lang->language }})</small></label>
                                                    <textarea name="heading2_{{ $lang->id }}" id="heading2_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Subtitle') }}">
                                                    {{ $heroTrans ? ($heroTrans['heading2'] ?? '') : (isset($hero_banner['heading2']) ? $hero_banner['heading2'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $heroTrans ? ($heroTrans['subtitle1'] ?? '') : (isset($hero_banner['subtitle1']) ? $hero_banner['subtitle1'] : '') }}" > -->
                                                </div>
                                                <div class="form-group">
                                                    <label for="title2_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <textarea name="title2_{{ $lang->id }}" id="title2_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Subtitle') }}">
                                                    {{ $heroTrans ? ($heroTrans['title2'] ?? '') : (isset($hero_banner['title2']) ? $hero_banner['title2'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="title2_{{ $lang->id }}" class="form-control" id="title2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $heroTrans ? ($heroTrans['title2'] ?? '') : (isset($hero_banner['title2']) ? $hero_banner['title2'] : '') }}" > -->
                                                </div>
                                                <div class="form-group">
                                                    <label for="subtitle2_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <textarea name="subtitle2_{{ $lang->id }}" id="subtitle2_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Subtitle') }}">
                                                    {{ $heroTrans ? ($heroTrans['subtitle2'] ?? '') : (isset($hero_banner['subtitle2']) ? $hero_banner['subtitle2'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="subtitle2_{{ $lang->id }}" class="form-control" id="subtitle2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $heroTrans ? ($heroTrans['subtitle2'] ?? '') : (isset($hero_banner['subtitle2']) ? $hero_banner['subtitle2'] : '') }}" > -->
                                                </div>
                                                <div class="form-group">
                                                    <label for="payment2_{{ $lang->id }}">{{ __('Payment') }} <small>({{ $lang->language }})</small></label>
                                                    <textarea name="payment2_{{ $lang->id }}" id="payment2_{{ $lang->id }}" class="form-control text-editor" placeholder="{{ __('Enter Subtitle') }}">
                                                    {{ $heroTrans ? ($heroTrans['payment2'] ?? '') : (isset($hero_banner['payment2']) ? $hero_banner['payment2'] : '') }}
                                                    </textarea>
                                                    <!-- <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $heroTrans ? ($heroTrans['subtitle1'] ?? '') : (isset($hero_banner['subtitle1']) ? $hero_banner['subtitle1'] : '') }}" > -->
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="form-group">
                                            <label for="url2">{{ __('URL 2') }} *</label>
                                            <input type="text" name="url2" class="form-control" id="url2"
                                                placeholder="{{ __('Enter Url') }}"  value="{{isset($hero_banner['url2']) ? $hero_banner['url2'] : ''}}" >
                                        </div>


                                    <div class="form-group">
                                        <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                    </div>
                            </form>
                        </div>
                        <div class="tab-pane fade show " id="v-pills-t1" role="tabpanel" aria-labelledby="v-pills-t1-tab">
                            <form class="admin-form" action="{{route('back.first.banner.update')}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                        <h4 class="mb-3"><b>{{ __('Banner 1') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 1') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($first_banner['img1']) ? url('/core/public/storage/images/'.$first_banner['img1']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img1" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="firstBanner1Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="first1-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#first1-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $firstTrans = $translation ? json_decode($translation->banner_first, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="first1-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="title1_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title1_{{ $lang->id }}" class="form-control" id="first_title1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $firstTrans ? ($firstTrans['title1'] ?? '') : (isset($first_banner['title1']) ? $first_banner['title1'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="subtitle1_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="first_subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $firstTrans ? ($firstTrans['subtitle1'] ?? '') : (isset($first_banner['subtitle1']) ? $first_banner['subtitle1'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="url">{{ __('URL 1') }} *</label>
                                            <input type="text" name="firsturl1" class="form-control" id="firsturl1"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($first_banner['firsturl1']) ? $first_banner['firsturl1'] : '' }}" >
                                        </div>
                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 2') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 2') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($first_banner['img2']) ? url('/core/public/storage/images/'.$first_banner['img2']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img2" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="firstBanner2Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="first2-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#first2-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $firstTrans = $translation ? json_decode($translation->banner_first, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="first2-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="title2_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title2_{{ $lang->id }}" class="form-control" id="first_title2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $firstTrans ? ($firstTrans['title2'] ?? '') : (isset($first_banner['title2']) ? $first_banner['title2'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="subtitle2_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle2_{{ $lang->id }}" class="form-control" id="first_subtitle2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $firstTrans ? ($firstTrans['subtitle2'] ?? '') : (isset($first_banner['subtitle2']) ? $first_banner['subtitle2'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="firsturl2">{{ __('URL 2') }} *</label>
                                            <input type="text" name="firsturl2" class="form-control" id="firsturl2"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($first_banner['firsturl2']) ? $first_banner['firsturl2'] : '' }}" >
                                        </div>
                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 3') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 3') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($first_banner['img3']) ? url('/core/public/storage/images/'.$first_banner['img3']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img3" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="firstBanner3Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="first3-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#first3-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $firstTrans = $translation ? json_decode($translation->banner_first, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="first3-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="title3_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title3_{{ $lang->id }}" class="form-control" id="first_title3_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $firstTrans ? ($firstTrans['title3'] ?? '') : (isset($first_banner['title3']) ? $first_banner['title3'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="subtitle3_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle3_{{ $lang->id }}" class="form-control" id="first_subtitle3_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $firstTrans ? ($firstTrans['subtitle3'] ?? '') : (isset($first_banner['subtitle3']) ? $first_banner['subtitle3'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="firsturl3">{{ __('URL 3') }} *</label>
                                            <input type="text" name="firsturl3" class="form-control" id="firsturl3"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($first_banner['firsturl3']) ? $first_banner['firsturl3'] : '' }}" >
                                        </div>

                                    <div class="form-group">
                                            <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="v-pills-t2" role="tabpanel" aria-labelledby="v-pills-t2-tab">

                            <form class="admin-form" action="{{route('back.popular.category.update')}}" method="POST">
                                @csrf
                                    @if($languages->count() > 1)
                                    <ul class="nav nav-tabs mb-3" id="popularCatTabs" role="tablist">
                                        @foreach($languages as $index => $lang)
                                        <li class="nav-item">
                                            <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                               id="popular-lang-{{ $lang->id }}-tab" 
                                               data-toggle="tab" 
                                               href="#popular-lang-{{ $lang->id }}" 
                                               role="tab">
                                                <i class="fas fa-globe"></i> {{ $lang->language }}
                                                @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                            </a>
                                        </li>
                                        @endforeach
                                    </ul>
                                    @endif
                                    <div class="tab-content">
                                        @foreach($languages as $index => $lang)
                                        @php
                                            $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                            $popularTrans = $translation ? json_decode($translation->popular_category, true) : null;
                                        @endphp
                                        <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                             id="popular-lang-{{ $lang->id }}" 
                                             role="tabpanel">
                                            <div class="form-group">
                                                <label for="popular_title_{{ $lang->id }}">{{ __('Section Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                <input type="text" name="popular_title_{{ $lang->id }}" class="form-control" id="popular_title_{{ $lang->id }}"
                                                    placeholder="{{ __('Popular Category') }}" value="{{ $popularTrans ? ($popularTrans['popular_title'] ?? '') : (isset($popular_category['popular_title']) ? $popular_category['popular_title'] : '') }}" >
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                    <hr>
                                    <h2 class=""><b>{{ __('Category 1 :') }}</b></h2>

                                    <div class="form-group">
                                        <label for="category_id1">{{ __('Select Category') }} *</label>
                                        <select name="category_id1"  id="category_id1" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                            <option value="" >{{__('Select One')}}</option>
                                            @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                            <option value="{{ $cat->id }}" {{$cat->id == $popular_category['category_id1'] ? 'selected' : ''}} >{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="subcategory_id1">{{ __('Select Sub Category') }} </label>
                                        <select name="subcategory_id1" id="subcategory_id1" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('subcategories')->where('category_id',$popular_category['category_id1'])->whereStatus(1)->get() as $subcat)
                                            <option value="{{ $subcat->id }}" {{ $subcat->id == $popular_category['subcategory_id1']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="childcategory_id1">{{ __('Select Child Category') }} </label>
                                        <select name="childcategory_id1" id="childcategory_id1" class="form-control">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('chield_categories')->where('category_id',$popular_category['category_id1'])->whereStatus(1)->get() as $chieldcategory)
                                            <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $popular_category['childcategory_id1'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <hr>
                                    <h2 class=""><b>{{ __('Category 2 :') }}</b></h2>
                                    <div class="form-group">
                                        <label for="category_id2">{{ __('Select Category') }} *</label>
                                        <select name="category_id2" id="category_id2" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                            <option value="" >{{__('Select One')}}</option>
                                            @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                            <option value="{{ $cat->id }}" {{$cat->id == $popular_category['category_id2'] ? 'selected' : ''}}>{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="subcategory_id2">{{ __('Select Sub Category') }} </label>
                                        <select name="subcategory_id2" id="subcategory_id2" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('subcategories')->where('category_id',$popular_category['category_id2'])->whereStatus(1)->get() as $subcat)
                                            <option value="{{ $subcat->id }}" {{ $subcat->id == $popular_category['subcategory_id2']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="childcategory_id2">{{ __('Select Child Category') }} </label>
                                        <select name="childcategory_id2" id="childcategory_id2" class="form-control">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('chield_categories')->where('category_id',$popular_category['category_id2'])->whereStatus(1)->get() as $chieldcategory)
                                            <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $popular_category['childcategory_id2'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <hr>
                                    <h2 class=""><b>{{ __('Category 3 :') }}</b></h2>
                                    <div class="form-group">
                                        <label for="category_id3">{{ __('Select Category') }} *</label>
                                        <select name="category_id3" id="category_id3" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                            <option value="" >{{__('Select One')}}</option>
                                            @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                            <option value="{{ $cat->id }}" {{$cat->id == $popular_category['category_id3'] ? 'selected' : ''}} >{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="subcategory_id3">{{ __('Select Sub Category') }} </label>
                                        <select name="subcategory_id3" id="subcategory_id3" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('subcategories')->where('category_id',$popular_category['category_id3'])->whereStatus(1)->get() as $subcat)
                                            <option value="{{ $subcat->id }}" {{ $subcat->id == $popular_category['subcategory_id3']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="childcategory_id3">{{ __('Select Child Category') }} </label>
                                        <select name="childcategory_id3" id="childcategory_id3" class="form-control">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('chield_categories')->where('category_id',$popular_category['category_id3'])->whereStatus(1)->get() as $chieldcategory)
                                            <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $popular_category['childcategory_id3'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <hr>
                                    <h2 class=""><b>{{ __('Category 4 :') }}</b></h2>
                                    <div class="form-group">
                                        <label for="category_id4">{{ __('Select Category') }} *</label>
                                        <select name="category_id4" id="category_id4" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                            <option value="" >{{__('Select One')}}</option>
                                            @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                            <option value="{{ $cat->id }}" {{$cat->id == $popular_category['category_id4'] ? 'selected' : ''}}>{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="subcategory_id4">{{ __('Select Sub Category') }} </label>
                                        <select name="subcategory_id4" id="subcategory_id4" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('subcategories')->where('category_id',$popular_category['category_id4'])->whereStatus(1)->get() as $subcat)
                                            <option value="{{ $subcat->id }}" {{ $subcat->id == $popular_category['subcategory_id4']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="childcategory_id4">{{ __('Select Child Category') }} </label>
                                        <select name="childcategory_id4" id="childcategory_id4" class="form-control">
                                            <option value="">{{__('Select one')}}</option>
                                            @foreach(DB::table('chield_categories')->where('category_id',$popular_category['category_id4'])->whereStatus(1)->get() as $chieldcategory)
                                            <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $popular_category['childcategory_id4'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>


                                <div class="form-group">
                                <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                            </div>
                        </form>
                        </div>

                        <div class="tab-pane fade" id="v-pills-t5" role="tabpanel" aria-labelledby="v-pills-t5-tab">
                            <form class="admin-form" action="{{route('back.secend.banner.update')}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                        <h4 class="mb-3"><b>{{ __('Banner 1') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 1') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($secend_banner['img1']) ? url('/core/public/storage/images/'.$secend_banner['img1']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img1" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="secendBanner1Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="secend1-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#secend1-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $secendTrans = $translation ? json_decode($translation->banner_secend, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="secend1-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="secend_title1_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title1_{{ $lang->id }}" class="form-control" id="secend_title1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $secendTrans ? ($secendTrans['title1'] ?? '') : (isset($secend_banner['title1']) ? $secend_banner['title1'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="secend_subtitle1_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="secend_subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $secendTrans ? ($secendTrans['subtitle1'] ?? '') : (isset($secend_banner['subtitle1']) ? $secend_banner['subtitle1'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="url">{{ __('URL 1') }} *</label>
                                            <input type="text" name="url1" class="form-control" id="secend_url1"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($secend_banner['url1']) ? $secend_banner['url1'] : '' }}" >
                                        </div>
                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 2') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 2') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($secend_banner['img2']) ? url('/core/public/storage/images/'.$secend_banner['img2']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img2" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="secendBanner2Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="secend2-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#secend2-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $secendTrans = $translation ? json_decode($translation->banner_secend, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="secend2-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="secend_title2_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title2_{{ $lang->id }}" class="form-control" id="secend_title2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $secendTrans ? ($secendTrans['title2'] ?? '') : (isset($secend_banner['title2']) ? $secend_banner['title2'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="secend_subtitle2_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle2_{{ $lang->id }}" class="form-control" id="secend_subtitle2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $secendTrans ? ($secendTrans['subtitle2'] ?? '') : (isset($secend_banner['subtitle2']) ? $secend_banner['subtitle2'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="url">{{ __('URL 2') }} *</label>
                                            <input type="text" name="url2" class="form-control" id="secend_url2"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($secend_banner['url2']) ? $secend_banner['url2'] : '' }}" >
                                        </div>
                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 3') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 3') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($secend_banner['img3']) ? url('/core/public/storage/images/'.$secend_banner['img3']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img3" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="secendBanner3Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="secend3-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#secend3-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $secendTrans = $translation ? json_decode($translation->banner_secend, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="secend3-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="secend_title3_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title3_{{ $lang->id }}" class="form-control" id="secend_title3_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $secendTrans ? ($secendTrans['title3'] ?? '') : (isset($secend_banner['title3']) ? $secend_banner['title3'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="secend_subtitle3_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle3_{{ $lang->id }}" class="form-control" id="secend_subtitle3_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $secendTrans ? ($secendTrans['subtitle3'] ?? '') : (isset($secend_banner['subtitle3']) ? $secend_banner['subtitle3'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="url">{{ __('URL 3') }} *</label>
                                            <input type="text" name="url3" class="form-control" id="secend_url3"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($secend_banner['url3']) ? $secend_banner['url3'] : '' }}" >
                                        </div>

                                    <div class="form-group">
                                            <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                </div>
                            </form>
                        </div>

                        <div class="tab-pane fade" id="v-pills-t3" role="tabpanel" aria-labelledby="v-pills-t3-tab">
                            <form class="admin-form" action="{{route('back.tree.column.category.update')}}" method="POST">
                                @csrf
                                <hr>
                                <h2 class=""><b>{{ __('Category 1 :') }}</b></h2>

                                <div class="form-group">
                                    <label for="column_category_id1">{{ __('Select Category') }} *</label>
                                    <select name="category_id1" id="column_category_id1" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                        <option value="" >{{__('Select One')}}</option>
                                        @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                        <option value="{{ $cat->id }}" {{$cat->id == $three_column_category['category_id1'] ? 'selected' : ''}} >{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="cloumn_subcategory_id2">{{ __('Select Sub Category') }} </label>
                                    <select name="subcategory_id1" id="cloumn_subcategory_id1" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('subcategories')->where('category_id',$three_column_category['category_id1'])->whereStatus(1)->get() as $subcat)
                                        <option value="{{ $subcat->id }}" {{ $subcat->id == $three_column_category['subcategory_id1']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="cloumn_childcategory_id1">{{ __('Select Child Category') }} </label>
                                    <select name="childcategory_id1"  id="cloumn_childcategory_id1" class="form-control">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('chield_categories')->where('category_id',$three_column_category['category_id1'])->whereStatus(1)->get() as $chieldcategory)
                                        <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $three_column_category['childcategory_id1'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <hr>
                                <h2 class=""><b>{{ __('Category 2 :') }}</b></h2>
                                <div class="form-group">
                                    <label for="column_category_id2">{{ __('Select Category') }} *</label>
                                    <select name="category_id2" id="column_category_id2" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                        <option value="" >{{__('Select One')}}</option>
                                        @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                        <option value="{{ $cat->id }}" {{$cat->id == $three_column_category['category_id2'] ? 'selected' : ''}}>{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="cloumn_subcategory_id2">{{ __('Select Sub Category') }} </label>
                                    <select name="subcategory_id2" id="cloumn_subcategory_id2" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('subcategories')->where('category_id',$three_column_category['category_id2'])->whereStatus(1)->get() as $subcat)
                                        <option value="{{ $subcat->id }}" {{ $subcat->id == $three_column_category['subcategory_id2']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="cloumn_childcategory_id2">{{ __('Select Child Category') }} </label>
                                    <select name="childcategory_id2" id="cloumn_childcategory_id2" class="form-control">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('chield_categories')->where('category_id',$three_column_category['category_id2'])->whereStatus(1)->get() as $chieldcategory)
                                        <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $three_column_category['childcategory_id2'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <hr>
                                <h2 class=""><b>{{ __('Category 3 :') }}</b></h2>
                                <div class="form-group">
                                    <label for="column_category_id3">{{ __('Select Category') }} *</label>
                                    <select name="category_id3" id="column_category_id3" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                        <option value="" >{{__('Select One')}}</option>
                                        @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                        <option value="{{ $cat->id }}" {{ isset($three_column_category['category_id3']) && $cat->id == $three_column_category['category_id3'] ? 'selected' : ''}}>{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="cloumn_subcategory_id3">{{ __('Select Sub Category') }} </label>
                                    <select name="subcategory_id3" id="cloumn_subcategory_id3" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                        <option value="">{{__('Select one')}}</option>
                                        @php
                                            if(isset($three_column_category['category_id3'])){
                                                $subcategory = DB::table('subcategories')->where('category_id', $three_column_category['category_id3'])->whereStatus(1)->get();
                                            }else{
                                                $subcategory = DB::table('subcategories')->whereStatus(1)->get();
                                            }
                                        @endphp
                                        @foreach($subcategory as $subcat)
                                        <option value="{{ $subcat->id }}" {{ isset($three_column_category['category_id3']) &&  $subcat->id == $three_column_category['subcategory_id3']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="cloumn_childcategory_id3">{{ __('Select Child Category') }} </label>
                                    <select name="childcategory_id3" id="cloumn_childcategory_id3" class="form-control">
                                        <option value="">{{__('Select one')}}</option>
                                        @php
                                            if(isset($three_column_category['category_id3'])){
                                                $childcategory = DB::table('chield_categories')->where('category_id',$three_column_category['category_id3'])->whereStatus(1)->get();
                                            }else{
                                                $childcategory = DB::table('chield_categories')->whereStatus(1)->get();
                                            }
                                        @endphp
                                        @foreach($childcategory as $chieldcategory)
                                        <option value="{{ $chieldcategory->id }}" {{isset($three_column_category['category_id3']) &&  $chieldcategory->id == $three_column_category['childcategory_id3'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                        @endforeach
                                    </select>
                                </div>



                                <div class="form-group">
                                    <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                </div>
                            </form>
                        </div>

                        <div class="tab-pane fade" id="v-pills-t4" role="tabpanel" aria-labelledby="v-pills-t4-tab">
                            <form class="admin-form" action="{{route('back.feature.category.update')}}" method="POST">
                                @csrf
                                @if($languages->count() > 1)
                                <ul class="nav nav-tabs mb-3" id="featureCatTabs" role="tablist">
                                    @foreach($languages as $index => $lang)
                                    <li class="nav-item">
                                        <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                           id="feature-lang-{{ $lang->id }}-tab" 
                                           data-toggle="tab" 
                                           href="#feature-lang-{{ $lang->id }}" 
                                           role="tab">
                                            <i class="fas fa-globe"></i> {{ $lang->language }}
                                            @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                        </a>
                                    </li>
                                    @endforeach
                                </ul>
                                @endif
                                <div class="tab-content">
                                    @foreach($languages as $index => $lang)
                                    @php
                                        $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                        $featureTrans = $translation ? json_decode($translation->feature_category, true) : null;
                                    @endphp
                                    <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                         id="feature-lang-{{ $lang->id }}" 
                                         role="tabpanel">
                                        <div class="form-group">
                                            <label for="feature_title_{{ $lang->id }}">{{ __('Section Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                            <input type="text" name="feature_title_{{ $lang->id }}" class="form-control" id="feature_title_{{ $lang->id }}"
                                                placeholder="{{ __('Featured Category') }}" value="{{ $featureTrans ? ($featureTrans['feature_title'] ?? '') : (isset($feature_category['feature_title']) ? $feature_category['feature_title'] : '') }}" >
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                                <hr>
                                <h2 class=""><b>{{ __('Category 1 :') }}</b></h2>

                                <div class="form-group">
                                    <label for="feature_category_id1">{{ __('Select Category') }} *</label>
                                    <select name="category_id1" id="feature_category_id1" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                        <option value="" >{{__('Select One')}}</option>
                                        @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                        <option value="{{ $cat->id }}" {{$cat->id == $feature_category['category_id1'] ? 'selected' : ''}} >{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="feature_subcategory_id1">{{ __('Select Sub Category') }} </label>
                                    <select name="subcategory_id1" id="feature_subcategory_id1" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('subcategories')->where('category_id',$feature_category['category_id1'])->whereStatus(1)->get() as $subcat)
                                        <option value="{{ $subcat->id }}" {{ $subcat->id == $feature_category['subcategory_id1']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="feature_childcategory_id1">{{ __('Select Child Category') }} </label>
                                    <select name="childcategory_id1" id="feature_childcategory_id1" class="form-control">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('chield_categories')->where('category_id',$feature_category['category_id1'])->whereStatus(1)->get() as $chieldcategory)
                                        <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $feature_category['childcategory_id1'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <hr>
                                <h2 class=""><b>{{ __('Category 2 :') }}</b></h2>
                                <div class="form-group">
                                    <label for="feature_category_id2">{{ __('Select Category') }} *</label>
                                    <select name="category_id2" id="feature_category_id2" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                        <option value="" >{{__('Select One')}}</option>
                                        @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                        <option value="{{ $cat->id }}" {{$cat->id == $feature_category['category_id2'] ? 'selected' : ''}}>{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="feature_subcategory_id2">{{ __('Select Sub Category') }} </label>
                                    <select name="subcategory_id2" id="feature_subcategory_id2" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('subcategories')->where('category_id',$feature_category['category_id2'])->whereStatus(1)->get() as $subcat)
                                        <option value="{{ $subcat->id }}" {{ $subcat->id == $feature_category['subcategory_id2']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="feature_childcategory_id2">{{ __('Select Child Category') }} </label>
                                    <select name="childcategory_id2" id="feature_childcategory_id2" class="form-control">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('chield_categories')->where('category_id',$feature_category['category_id2'])->whereStatus(1)->get() as $chieldcategory)
                                        <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $feature_category['childcategory_id2'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <hr>
                                <h2 class=""><b>{{ __('Category 3 :') }}</b></h2>
                                <div class="form-group">
                                    <label for="feature_category_id3">{{ __('Select Category') }} *</label>
                                    <select name="category_id3" id="feature_category_id3" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                        <option value="" >{{__('Select One')}}</option>
                                        @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                        <option value="{{ $cat->id }}" {{$cat->id == $feature_category['category_id3'] ? 'selected' : ''}} >{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="feature_subcategory_id3">{{ __('Select Sub Category') }} </label>
                                    <select name="subcategory_id3" id="feature_subcategory_id3" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('subcategories')->where('category_id',$feature_category['category_id3'])->whereStatus(1)->get() as $subcat)
                                        <option value="{{ $subcat->id }}" {{ $subcat->id == $feature_category['subcategory_id3']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="feature_childcategory_id3">{{ __('Select Child Category') }} </label>
                                    <select name="childcategory_id3" id="feature_childcategory_id3" class="form-control">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('chield_categories')->where('category_id',$feature_category['category_id3'])->whereStatus(1)->get() as $chieldcategory)
                                        <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $feature_category['childcategory_id3'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <hr>
                                <h2 class=""><b>{{ __('Category 4 :') }}</b></h2>
                                <div class="form-group">
                                    <label for="feature_category_id4">{{ __('Select Category') }} *</label>
                                    <select name="category_id4" id="feature_category_id4" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                                        <option value="" >{{__('Select One')}}</option>
                                        @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                                        <option value="{{ $cat->id }}" {{$cat->id == $feature_category['category_id4'] ? 'selected' : ''}}>{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="feature_subcategory_id4">{{ __('Select Sub Category') }} </label>
                                    <select name="subcategory_id4" id="feature_subcategory_id4" class="form-control" data-href="{{route('back.get.childcategory')}}">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('subcategories')->where('category_id',$feature_category['category_id4'])->whereStatus(1)->get() as $subcat)
                                        <option value="{{ $subcat->id }}" {{ $subcat->id == $feature_category['subcategory_id4']? 'selected' : '' }}>{{ $subcat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="feature_childcategory_id4">{{ __('Select Child Category') }} </label>
                                    <select name="childcategory_id4" id="feature_childcategory_id4" class="form-control">
                                        <option value="">{{__('Select one')}}</option>
                                        @foreach(DB::table('chield_categories')->where('category_id',$feature_category['category_id4'])->whereStatus(1)->get() as $chieldcategory)
                                        <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $feature_category['childcategory_id4'] ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                                        @endforeach
                                    </select>
                                </div>



                                <div class="form-group">
                                        <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="v-pills-t6" role="tabpanel" aria-labelledby="v-pills-t6-tab">
                            <form class="admin-form" action="{{route('back.third.banner.update')}}"

                                method="post" enctype="multipart/form-data">
                                @csrf
                                        <h4 class="mb-3"><b>{{ __('Banner 1') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 1') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($third_banner['img1']) ? url('/core/public/storage/images/'.$third_banner['img1']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img1" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="thirdBanner1Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="third1-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#third1-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $thirdTrans = $translation ? json_decode($translation->banner_third, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="third1-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="third_title1_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title1_{{ $lang->id }}" class="form-control" id="third_title1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $thirdTrans ? ($thirdTrans['title1'] ?? '') : (isset($third_banner['title1']) ? $third_banner['title1'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="third_subtitle1_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle1_{{ $lang->id }}" class="form-control" id="third_subtitle1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $thirdTrans ? ($thirdTrans['subtitle1'] ?? '') : (isset($third_banner['subtitle1']) ? $third_banner['subtitle1'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="url">{{ __('URL 1') }} *</label>
                                            <input type="text" name="url1" class="form-control" id="third_url1"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($third_banner['url1']) ? $third_banner['url1'] : '' }}" >
                                        </div>
                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 2') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Image 2') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($third_banner['img2']) ? url('/core/public/storage/images/'.$third_banner['img2']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img2" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="thirdBanner2Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="third2-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#third2-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $thirdTrans = $translation ? json_decode($translation->banner_third, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="third2-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="third_title2_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="title2_{{ $lang->id }}" class="form-control" id="third_title2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}"  value="{{ $thirdTrans ? ($thirdTrans['title2'] ?? '') : (isset($third_banner['title2']) ? $third_banner['title2'] : '') }}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="third_subtitle2_{{ $lang->id }}">{{ __('Subtitle') }} <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="subtitle2_{{ $lang->id }}" class="form-control" id="third_subtitle2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Subtitle') }}"  value="{{ $thirdTrans ? ($thirdTrans['subtitle2'] ?? '') : (isset($third_banner['subtitle2']) ? $third_banner['subtitle2'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="url">{{ __('URL 2') }} *</label>
                                            <input type="text" name="url2" class="form-control" id="third_url2"
                                                placeholder="{{ __('Enter Banner Url') }}" value="{{ isset($third_banner['url2']) ? $third_banner['url2'] : '' }}" >
                                        </div>

                                    <div class="form-group">
                                            <button type="submit"
                                                class="btn btn-secondary ">{{ __('Submit') }}</button>
                                </div>
                            </form>
                        </div>

                        <div class="tab-pane fade" id="v-pills-t7" role="tabpanel" aria-labelledby="v-pills-t7-tab">
                            <form class="admin-form" action="{{route('back.home_page4.banner.update')}}"method="POST" enctype="multipart/form-data">
                                @include('alerts.alerts')
                                @csrf
                                        <h4 class="mb-3"><b>{{ __('Banner 1') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Banner 1 Image') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($home4_banner['img1']) ?  url('/core/public/storage/images/'.$home4_banner['img1']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img1" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="home4Banner1Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="home4b1-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#home4b1-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $home4Trans = $translation ? json_decode($translation->home_page4, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="home4b1-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="label1_{{ $lang->id }}">{{ __('Banner 1 Button Text') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="label1_{{ $lang->id }}" class="form-control" id="home4_label1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Button Text') }}"  value="{{ $home4Trans ? ($home4Trans['label1'] ?? '') : (isset($home4_banner['label1']) ? $home4_banner['label1'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="form-group">
                                            <label for="url1">{{ __('Banner 1 Button Link') }} *</label>
                                            <input type="text" name="url1" class="form-control" id="home4_url1"
                                                placeholder="{{ __('Enter Banner Url') }}"  value="{{isset($home4_banner['url1']) ? $home4_banner['url1']: ''}}" >
                                        </div>

                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 2') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Banner 2 Image') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($home4_banner['img2']) ?  url('/core/public/storage/images/'.$home4_banner['img2']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>

                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img2" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="home4Banner2Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="home4b2-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#home4b2-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $home4Trans = $translation ? json_decode($translation->home_page4, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="home4b2-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="label2_{{ $lang->id }}">{{ __('Banner 2 Button Text') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="label2_{{ $lang->id }}" class="form-control" id="home4_label2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Button Text') }}"  value="{{ $home4Trans ? ($home4Trans['label2'] ?? '') : (isset($home4_banner['label2']) ? $home4_banner['label2'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="form-group">
                                            <label for="url2">{{ __('Banner 2 Button Link') }} *</label>
                                            <input type="text" name="url2" class="form-control" id="home4_url2"
                                                placeholder="{{ __('Enter Banner Url') }}"  value="{{isset($home4_banner['url2']) ? $home4_banner['url2'] : ''}}" >
                                        </div>

                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 3') }} <small>({{ __('Middle Big Image') }})</small></b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Banner 3 Image') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($home4_banner['img3']) ?  url('/core/public/storage/images/'.$home4_banner['img3']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img3" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="home4Banner3Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="home4b3-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#home4b3-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $home4Trans = $translation ? json_decode($translation->home_page4, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="home4b3-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="label3_{{ $lang->id }}">{{ __('Banner 3 Button Text') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="label3_{{ $lang->id }}" class="form-control" id="home4_label3_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Button Text') }}"  value="{{ $home4Trans ? ($home4Trans['label3'] ?? '') : (isset($home4_banner['label3']) ? $home4_banner['label3'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="form-group">
                                            <label for="url3">{{ __('Banner 3 Button Link') }} *</label>
                                            <input type="text" name="url3" class="form-control" id="home4_url3"
                                                placeholder="{{ __('Enter Banner Url') }}"  value="{{isset($home4_banner['url3']) ? $home4_banner['url3'] : ''}}" >
                                        </div>

                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 4') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Banner 4 Image') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($home4_banner['img4']) ?  url('/core/public/storage/images/'.$home4_banner['img4']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img4" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="home4Banner4Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="home4b4-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#home4b4-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $home4Trans = $translation ? json_decode($translation->home_page4, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="home4b4-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="label4_{{ $lang->id }}">{{ __('Banner 4 Button Text') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="label4_{{ $lang->id }}" class="form-control" id="home4_label4_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Button Text') }}"  value="{{ $home4Trans ? ($home4Trans['label4'] ?? '') : (isset($home4_banner['label4']) ? $home4_banner['label4'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="form-group">
                                            <label for="url4">{{ __('Banner 4 Button Link') }} *</label>
                                            <input type="text" name="url4" class="form-control" id="home4_url4"
                                                placeholder="{{ __('Enter Banner Url') }}"  value="{{isset($home4_banner['url4']) ? $home4_banner['url4'] : ''}}" >
                                        </div>

                                        <hr>

                                        <h4 class="mb-3"><b>{{ __('Banner 5') }}</b></h4>
                                        <div class="form-group">
                                            <label for="name">{{ __('Banner 5 Image') }} *</label>
                                            <br>
                                                <img class="admin-img"
                                                    src="{{ isset($home4_banner['img5']) ?  url('/core/public/storage/images/'.$home4_banner['img5']) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span class="mt-1">{{ __('Image Size Should Be 496 x 204.') }}</span>
                                        </div>
                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="img5" id="file"
                                                    aria-label="File browser example">
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="home4Banner5Tabs" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="home4b5-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#home4b5-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <div class="tab-content">
                                            @foreach($languages as $index => $lang)
                                            @php
                                                $translation = $homeCutomize->translations->where('language_id', $lang->id)->first();
                                                $home4Trans = $translation ? json_decode($translation->home_page4, true) : null;
                                            @endphp
                                            <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="home4b5-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="label5_{{ $lang->id }}">{{ __('Banner 5 Button Text') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                    <input type="text" name="label5_{{ $lang->id }}" class="form-control" id="home4_label5_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Button Text') }}"  value="{{ $home4Trans ? ($home4Trans['label5'] ?? '') : (isset($home4_banner['label5']) ? $home4_banner['label5'] : '') }}" >
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="form-group">
                                            <label for="url5">{{ __('Banner 5 Button Link') }} *</label>
                                            <input type="text" name="url5" class="form-control" id="home4_url5"
                                                placeholder="{{ __('Enter Banner Url') }}"  value="{{isset($home4_banner['url5']) ? $home4_banner['url5'] : ''}}" >
                                        </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                    </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="v-pills-t8" role="tabpanel" aria-labelledby="v-pills-t8-tab">
                            <form class="admin-form" action="{{route('back.home4.category.update')}}"
                                method="post" enctype="multipart/form-data">
                                @csrf
                                @php
                                    if(isset($home_4_popular_category)){
                                        $home_4_popular_category = $home_4_popular_category;
                                    }else{
                                        $home_4_popular_category = [];
                                    }
                                @endphp
                                <label for="basic">{{ __('Select Sub Category') }} </label>
                                <select name="home_4_popular_category[]" id="basic" class="form-control" multiple data-href="{{route('back.get.childcategory')}}">
                                    @foreach(DB::table('categories')->whereStatus(1)->get() as $category)
                                    <option value="{{ $category->id }}" {{ in_array($category->id,$home_4_popular_category) ? 'selected' : '' }}>{{ $category->name }}</option>
                                    @endforeach
                                </select>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                        </div>
                    </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>

</div>

</div>
<!-- End of Main Content -->



@endsection

@section('scripts')
    <script type="" src="{{asset('assets/back/js/select2.js')}}"></script>
    <script>
        $('#basic').select2({
			theme: "bootstrap"
		});
    </script>
@endsection