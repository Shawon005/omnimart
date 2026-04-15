@extends('master.back')

@section('content')
<style>
	    /* General style for the div inside the editor and website */
.responsive-bg-box {
    background-color: transparent; /* No background on Desktop */
    padding: 0;
    transition: all 0.3s ease;
}

/* Media Query: Only apply the background on Mobile */
@media screen and (max-width: 768px) {
    .responsive-bg-box {
        /* This pulls the color from the --mobile-bg variable we set in JS */
        background-color: var(--mobile-bg); 
        padding: 10px;
        border-radius: 6px;
    }
}
</style>
<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0 bc-title"><b>{{ __('Create Slider') }}</b> </h3>
                <a class="btn btn-primary btn-sm" href="{{route('back.slider.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
                </div>
        </div>
    </div>

	<!-- Form -->
	<div class="row">

		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card o-hidden border-0 shadow-lg">
				<div class="card-body ">
					<!-- Nested Row within Card Body -->
					<div class="row justify-content-center">
						<div class="col-lg-12">

						</div>
					</div>
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="nav nav-pills nav-secondary" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                  <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">{{ __('Home 1') }}</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">{{ __('Home 2') }}</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">{{ __('Home 3') }}</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="pills-home4-tab" data-toggle="pill" href="#pills-home4" role="tab" aria-controls="pills-home4" aria-selected="false">{{ __('Home 4') }}</a>
                                </li>
                              </ul>
                              <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                    <form  action="{{ route('back.slider.store') }}" method="POST"
                                        enctype="multipart/form-data">

                                        @csrf
                                        <input type="hidden" name="home_page" value="theme1" id="">
                                        @include('alerts.alerts')
                                        @php
                                            $languages = \App\Models\Language::whereType('Website')->get();
                                            $defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
                                        @endphp

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="sliderTabs3" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="slider3-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#slider3-lang-{{ $lang->id }}" 
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
                                            <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="slider3-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                               
                                                 <div class="form-group">
                                                <label id="change_label" for="logo_{{ $lang->id }}">{{ __('Feature Text') }} </label>
                                                <br>
                                                <textarea name="logo_{{ $lang->id }}" id="logo_{{ $lang->id }}" class="form-control text-editor" rows="5"
													placeholder="Feature Text"
													></textarea>
                                            <!-- <span id="change_message" class="mt-1">{{ __('Image Size Should Be 130 x 40') }}</span> -->
                                            </div> 
                                            </div>
                                            @endforeach
                                        </div>
                                        

                                        <!-- <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="logo" id="file"
                                                    aria-label="File browser example" >
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div> -->

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="sliderTabs1" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="slider1-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#slider1-lang-{{ $lang->id }}" 
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
                                            <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="slider1-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="title1_{{ $lang->id }}">{{ __('Title') }}</label>
                                                    <textarea name="title_{{ $lang->id }}" id="myeditorinstance"
                                                            class="form-control " rows="5"
                                                            placeholder="{{ __('Enter Title') }}"
                                                        >{{ old("title_{$lang->id}") }} </textarea>
                                                    <!-- <input type="text" name="title_{{ $lang->id }}" class="form-control" id="title1_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}" value="> -->
                                                </div>

                                                <div class="form-group">
                                                    <label for="details1_{{ $lang->id }}">{{ __('Details') }}</label>
                                                    <textarea name="details_{{ $lang->id }}" id="myeditorinstance1" class="form-control" rows="5"
                                                        placeholder="{{ __('Enter Details') }}"
                                                        >{{ old("details_{$lang->id}") }}</textarea>
                                                </div>
                                                @if($lang->id == $defaultLang->id)
                                                    <input type="hidden" name="title" value="{{ old('title') }}">
                                                    <input type="hidden" name="details" value="{{ old('details') }}">
                                                @endif
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="slider-link">{{ __('Link') }} </label>
                                            <input type="text" name="link" class="form-control" id="slider-link"
                                                placeholder="{{ __('Enter Link') }}" value="{{ old('link') }}" >
                                        </div>

                                        <div class="form-group">
                                            <label id="slider_text"  for="name">{{ __('Set Slider Image') }} *</label>
                                            <br>
                                                <img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span id="chenge_label2" class="mt-1">{{ __('Image Size Should Be 968 x 530') }}</span>
                                        </div>

                                        <div class="form-group position-relative ">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
                                                    aria-label="File browser example" >
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <button type="submit"
                                                class="btn btn-secondary ">{{ __('Submit') }}</button>
                                        </div>

                                    </form>
                                </div>
                                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                    <form  action="{{ route('back.slider.store') }}" method="POST"
                                        enctype="multipart/form-data">

                                        @csrf
                                        <input type="hidden" name="home_page" value="theme2" id="">
                                        @include('alerts.alerts')
                                        <div class="form-group">
                                            <label id="change_label" for="name">{{ __('Brand Logo') }} </label>
                                            <br>
                                                <img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span id="change_message" class="mt-1">{{ __('Image Size Should Be 130 x 40') }}</span>
                                        </div>
                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="sliderTabs2" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="slider2-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#slider2-lang-{{ $lang->id }}" 
                                                   role="tab">
                                                    <i class="fas fa-globe"></i> {{ $lang->language }}
                                                    @if($lang->is_default == 1) <small>({{ __('Default') }})</small> @endif
                                                </a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                        <!-- <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="logo" id="file"
                                                    aria-label="File browser example" >
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div> -->

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="sliderTabs2" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="slider2-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#slider2-lang-{{ $lang->id }}" 
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
                                            <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="slider2-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="title2_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif</label>
                                                    <input type="text" name="title_{{ $lang->id }}" class="form-control" id="title2_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}" value="{{ old("title_{$lang->id}") }}" >
                                                </div>

                                                <div class="form-group">
                                                    <label for="details2_{{ $lang->id }}">{{ __('Details') }} @if($lang->is_default == 1) * @endif</label>
                                                    <textarea name="details_{{ $lang->id }}" id="details2_{{ $lang->id }}" class="form-control" rows="5"
                                                        placeholder="{{ __('Enter Details') }}"
                                                        >{{ old("details_{$lang->id}") }}</textarea>
                                                </div>
                                                @if($lang->id == $defaultLang->id)
                                                    <input type="hidden" name="title" value="{{ old('title') }}">
                                                    <input type="hidden" name="details" value="{{ old('details') }}">
                                                @endif
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="slider-link">{{ __('Link') }} *</label>
                                            <input type="text" name="link" class="form-control" id="slider-link"
                                                placeholder="{{ __('Enter Link') }}" value="{{ old('link') }}" >
                                        </div>

                                        <div class="form-group">
                                            <label id="slider_text"  for="name">{{ __('Set Slider Image') }} *</label>
                                            <br>
                                                <img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span id="chenge_label2" class="mt-1">{{ __('Image Size Should Be 1296 x 530') }}</span>
                                        </div>

                                        <div class="form-group position-relative ">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
                                                    aria-label="File browser example" >
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <button type="submit"
                                                class="btn btn-secondary ">{{ __('Submit') }}</button>
                                        </div>

                                    </form>
                                </div>
                                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                                    <form  action="{{ route('back.slider.store') }}" method="POST"
                                        enctype="multipart/form-data">

                                        @csrf
                                        <input type="hidden" name="home_page" value="theme3" id="">
                                        @include('alerts.alerts')
                                        <div class="form-group">
                                            <label id="change_label" for="name">{{ __('Feature Image') }} </label>
                                            <br>
                                                <img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span id="change_message" class="mt-1">{{ __('Image Size Should Be 320 x 320') }}</span>
                                        </div>

                                        <div class="form-group position-relative">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="logo" id="file"
                                                    aria-label="File browser example" >
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        @if($languages->count() > 1)
                                        <ul class="nav nav-tabs mb-3" id="sliderTabs3" role="tablist">
                                            @foreach($languages as $index => $lang)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                                   id="slider3-lang-{{ $lang->id }}-tab" 
                                                   data-toggle="tab" 
                                                   href="#slider3-lang-{{ $lang->id }}" 
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
                                            <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                                 id="slider3-lang-{{ $lang->id }}" 
                                                 role="tabpanel">
                                                <div class="form-group">
                                                    <label for="title3_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif</label>
                                                    <input type="text" name="title_{{ $lang->id }}" class="form-control" id="title3_{{ $lang->id }}"
                                                        placeholder="{{ __('Enter Title') }}" value="{{ old("title_{$lang->id}") }}" >
                                                </div>

                                                <div class="form-group">
                                                    <label for="details3_{{ $lang->id }}">{{ __('Details') }} @if($lang->is_default == 1) * @endif</label>
                                                    <textarea name="details_{{ $lang->id }}" id="details3_{{ $lang->id }}" class="form-control" rows="5"
                                                        placeholder="{{ __('Enter Details') }}"
                                                        >{{ old("details_{$lang->id}") }}</textarea>
                                                </div>
                                                @if($lang->id == $defaultLang->id)
                                                    <input type="hidden" name="title" value="{{ old('title') }}">
                                                    <input type="hidden" name="details" value="{{ old('details') }}">
                                                @endif
                                            </div>
                                            @endforeach
                                        </div>

                                        <div class="form-group">
                                            <label for="slider-link">{{ __('Link') }} *</label>
                                            <input type="text" name="link" class="form-control" id="slider-link"
                                                placeholder="{{ __('Enter Link') }}" value="{{ old('link') }}" >
                                        </div>

                                        <div class="form-group">
                                            <label id="slider_text"  for="name">{{ __('Set Slider Image') }} *</label>
                                            <br>
                                                <img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            <br>
                                            <span id="chenge_label2" class="mt-1">{{ __('Image Size Should Be 1903 x 570') }}</span>
                                        </div>

                                        <div class="form-group position-relative ">
                                            <label class="file">
                                                <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
                                                    aria-label="File browser example" >
                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <button type="submit"
                                                class="btn btn-secondary ">{{ __('Submit') }}</button>
                                        </div>

                                    </form>
                                </div>
                                <div class="tab-pane fade" id="pills-home4" role="tabpanel" aria-labelledby="pills-home4-tab"><form  action="{{ route('back.slider.store') }}" method="POST"
                                    enctype="multipart/form-data">

                                    @csrf

                                    @include('alerts.alerts')

                                    <input type="hidden" name="home_page" value="theme4" id="">
                                    <input type="hidden" name="title" class="form-control" id="title"
                                    placeholder="{{ __('Enter Title') }}" value="theme 4" >

                                    <div class="form-group">
                                        <label for="slider-link">{{ __('Link') }} *</label>
                                        <input type="text" name="link" class="form-control" id="slider-link"
                                            placeholder="{{ __('Enter Link') }}" value="{{ old('link') }}" >
                                    </div>

                                    <input name="details" type="hidden" id="details" value="theme4" class="form-control" rows="5"
                                    placeholder="{{ __('Enter Details') }}"
                                    >

                                    <div class="form-group">
                                        <label id="slider_text"  for="name">{{ __('Set Slider Image') }} *</label>
                                        <br>
                                            <img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
                                                alt="No Image Found">
                                        <br>
                                        <span id="chenge_label2" class="mt-1">{{ __('Image Size Should Be 1000 x 530') }}</span>
                                    </div>

                                    <div class="form-group position-relative ">
                                        <label class="file">
                                            <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
                                                aria-label="File browser example" >
                                            <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                        </label>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit"
                                            class="btn btn-secondary ">{{ __('Submit') }}</button>
                                    </div>

                                </form></div>
                              </div>
                        </div>
                    </div>

			</div>

		</div>

	</div>

</div>

@endsection
