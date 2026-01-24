@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0"><b>{{ __('Update Slider') }}</b> </h3>
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
								<form class="admin-form" action="{{ route('back.slider.update',$slider->id) }}"
									method="POST" enctype="multipart/form-data">

                                    @csrf

                                    @method('PUT')

									@include('alerts.alerts')

									<input type="hidden" name="home_page" value="{{$slider->home_page}}">

									@if ($slider->home_page != 'theme4')
									<div class="form-group">
										<label id="change_label" for="name">{{ $slider->home_page == 'theme3' || $slider->home_page == 'theme4' ? __('Feature Image') : __('Logo') }}</label>
										<br>
											<img class="admin-img"
												src="{{ $slider->logo ? url('/core/public/storage/images/'.$slider->logo) : url('/core/public/storage/images/placeholder.png') }}"
												alt="No Image Found">
										<br>
										<span id="change_message" class="mt-1">{{ $slider->home_page == 'theme3' || $slider->home_page == 'theme4' ? __('Image Size Should Be 435 x 530')  :  __('Image Size Should Be 130 x 40')}}</span>
									</div>

									<div class="form-group position-relative ">
										<label class="file">
											<input type="file"  accept="image/*"  class="upload-photo" name="logo" id="file"
												aria-label="File browser example">
											<span class="file-custom text-left">{{ __('Upload Image...') }}</span>
										</label>
									</div>
									@php
										$languages = \App\Models\Language::whereType('Website')->get();
										$defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
										$slider->load('translations');
									@endphp
									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="sliderTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="slider-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#slider-lang-{{ $lang->id }}" 
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
											$translation = $slider->translations->where('language_id', $lang->id)->first();
										@endphp
										<div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
											 id="slider-lang-{{ $lang->id }}" 
											 role="tabpanel">
											<div class="form-group">
												<label for="title_{{ $lang->id }}">{{ __('Title') }} </label>
												<textarea name="title_{{ $lang->id }}" id="title_{{ $lang->id }}" class="form-control text-editor" rows="5"
													placeholder="title_{{ $lang->id }}">{{ $translation ? $translation->title : ($lang->id == $defaultLang->id ? $slider->title : '') }}</textarea>
												<!-- <input type="text" name="title_{{ $lang->id }}" class="form-control" id="title_{{ $lang->id }}"
												
													placeholder="{{ __('Enter Title') }}" 
													value="{{ $translation ? $translation->title : ($lang->id == $defaultLang->id ? $slider->title : '') }}" > -->
											</div>

											<div class="form-group">
												<label for="details_{{ $lang->id }}">{{ __('Details') }} </label>
												<textarea name="details_{{ $lang->id }}" id="details_{{ $lang->id }}" class="form-control text-editor" rows="5"
													placeholder="{{ __('Enter Details') }}"
												>{{ $translation ? $translation->details : ($lang->id == $defaultLang->id ? $slider->details : '') }}</textarea>
											</div>
											@if($lang->id == $defaultLang->id)
												<input type="hidden" name="title" value="{{ $slider->title }}">
												<input type="hidden" name="details" value="{{ $slider->details }}">
											@endif
										</div>
										@endforeach
									</div>
									<div class="form-group">
										<label for="slider-link">{{ __('Link') }} </label>
										<input type="text" name="link" class="form-control" id="slider-link"
											placeholder="{{ __('Enter Link') }}" value="{{ $slider->link }}" >
									</div>

									<div class="form-group">
										<label id="slider_text" for="name">{{ $slider->home_page == 'theme3' || $slider->home_page == 'theme4' ? __('Set Background Image') :__('Current Slider Image') }} *</label>
										<br>
											<img class="admin-img"
												src="{{ $slider->photo ? url('/core/public/storage/images/'.$slider->photo) : url('/core/public/storage/images/placeholder.png') }}"
												alt="No Image Found">
										<br>
										<span id="chenge_label2" class="mt-1">{{$slider->home_page == 'theme3' || $slider->home_page == 'theme4' ? __('Image Size Should Be 1920 x 750') : __('Image Size Should Be 1000 x 530') }}</span>
									</div>

									<div class="form-group position-relative ">
										<label class="file">
											<input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
												aria-label="File browser example">
											<span class="file-custom text-left">{{ __('Upload Image...') }}</span>
										</label>
									</div>

									@else
									<div class="form-group">
										<label for="slider-link">{{ __('Link') }} *</label>
										<input type="text" name="link" class="form-control" id="slider-link"
											placeholder="{{ __('Enter Link') }}" value="{{ $slider->link }}" >
									</div>
									<input name="details" type="hidden" id="details" value="theme4" class="form-control" rows="5"
                                    placeholder="{{ __('Enter Details') }}"
                                    >
									<input type="hidden" name="title" class="form-control" id="title"
                                    placeholder="{{ __('Enter Title') }}" value="theme 4" >
									<div class="form-group">
										<label id="slider_text" for="name">{{ $slider->home_page == 'theme3' || $slider->home_page == 'theme4' ? __('Set Background Image') :__('Current Slider Image') }} *</label>
										<br>
											<img class="admin-img"
												src="{{ $slider->photo ? url('/core/public/storage/images/'.$slider->photo) : url('/core/public/storage/images/placeholder.png') }}"
												alt="No Image Found">
										<br>
										<span id="chenge_label2" class="mt-1">{{$slider->home_page == 'theme3' || $slider->home_page == 'theme4' ? __('Image Size Should Be 1920 x 750') : __('Image Size Should Be 1000 x 530') }}</span>
									</div>

									<div class="form-group position-relative ">
										<label class="file">
											<input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
												aria-label="File browser example">
											<span class="file-custom text-left">{{ __('Upload Image...') }}</span>
										</label>
									</div>
									@endif
									


								    <div class="form-group">
										<button type="submit"
											class="btn btn-secondary ">{{ __('Submit') }}</button>
									</div>

								</form>

						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

</div>

@endsection
