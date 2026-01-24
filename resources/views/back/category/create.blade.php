@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Create Category') }}</b> </h3>
                <a class="btn btn-primary btn-sm" href="{{route('back.category.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
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
								<form class="admin-form" action="{{ route('back.category.store') }}" method="POST"
									enctype="multipart/form-data">

                                    @csrf

									@include('alerts.alerts')

									<div class="form-group">
										<label for="name">{{ __('Set Image') }} *</label>
                                        <br>
										<img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
												alt="No Image Found">
                                        <br>
										<span class="mt-1">{{ __('Image Size Should Be 60 x 60.') }}</span>
									</div>

									<div class="form-group position-relative">
										<label class="file">
											<input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
												aria-label="File browser example" >
											<span class="file-custom text-left">{{ __('Upload Image...') }}</span>
										</label>
                                    </div>

									@php
										$languages = \App\Models\Language::whereType('Website')->get();
										$defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
									@endphp
									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="categoryTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="cat-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#cat-lang-{{ $lang->id }}" 
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
											 id="cat-lang-{{ $lang->id }}" 
											 role="tabpanel">
									<div class="form-group">
												<label for="name_{{ $lang->id }}">{{ __('Name') }} @if($lang->is_default == 1) * @endif</label>
												<input type="text" name="name_{{ $lang->id }}" class="form-control item-name {{ $lang->id == $defaultLang->id ? 'slug-source' : '' }}" 
													id="name_{{ $lang->id }}"
													placeholder="{{ __('Enter Name') }}" value="{{ old("name_{$lang->id}") }}" >
									</div>

									<div class="form-group">
												<label for="slug_{{ $lang->id }}">{{ __('Slug') }} @if($lang->is_default == 1) * @endif</label>
												<input type="text" name="slug_{{ $lang->id }}" class="form-control slug-input" 
													id="slug_{{ $lang->id }}"
													placeholder="{{ __('Enter Slug') }}" value="{{ old("slug_{$lang->id}") }}" >
									</div>

									<div class="form-group">
												<label for="meta_keywords_{{ $lang->id }}">{{ __('Meta Keywords') }}</label>
												<input type="text" name="meta_keywords_{{ $lang->id }}" class="tags"
													id="meta_keywords_{{ $lang->id }}"
											placeholder="{{ __('Enter Meta Keywords') }}"
													value="{{ old("meta_keywords_{$lang->id}") }}">
									</div>

									<div class="form-group">
												<label for="meta_descriptions_{{ $lang->id }}">{{ __('Meta Description') }}</label>
												<textarea name="meta_descriptions_{{ $lang->id }}" id="meta_descriptions_{{ $lang->id }}"
											class="form-control" rows="5"
											placeholder="{{ __('Enter Meta Description') }}"
												>{{ old("meta_descriptions_{$lang->id}") }}</textarea>
											</div>
											@if($lang->id == $defaultLang->id)
												<input type="hidden" name="name" value="{{ old('name') }}">
												<input type="hidden" name="slug" value="{{ old('slug') }}">
												<input type="hidden" name="meta_keywords" value="">
												<input type="hidden" name="meta_descriptions" value="">
											@endif
										</div>
										@endforeach
									</div>

									<div class="form-group">
										<label for="serial">{{ __('Serial') }} *</label>
										<input type="number" name="serial" class="form-control" id="serial"
											placeholder="{{ __('Enter Serial Number') }}" value="0">
									</div>

									<div class="form-group">
										<button type="submit"
											class="btn btn-secondary ">{{ __('Submit') }}</button>
									</div>

									<div>
								</form>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

</div>

@endsection
