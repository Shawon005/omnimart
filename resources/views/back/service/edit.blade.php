@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
       <div class="card-body">
        <div class="d-sm-flex align-items-center justify-content-between">
            <h3 class=" mb-0 "><b>{{ __('Edit Service') }}</b></h3>
            <a class="btn btn-primary btn-sm" href="{{route('back.service.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
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
								<form class="admin-form" action="{{ route('back.service.update',$service->id) }}"
									method="POST" enctype="multipart/form-data">

                                    @csrf

                                    @method('PUT')

									@include('alerts.alerts')

									<div class="form-group">
										<label for="name">{{ __('Current Image') }} *</label>
										<br>
											<img class="admin-img"
												src="{{ $service->photo ? url('/core/public/storage/images/'.$service->photo) : url('/core/public/storage/images/placeholder.png') }}"
												alt="No Image Found">
										<br>
										<span class="mt-1">{{ __('Image Size Should Be 65 x 65.') }}</span>
									</div>

									<div class="form-group position-relative ">
										<label class="file">
											<input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file"
												aria-label="File browser example">
											<span class="file-custom text-left">{{ __('Upload Image...') }}</span>
										</label>
									</div>
									@php
										$languages = \App\Models\Language::whereType('Website')->get();
										$defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
										$service->load('translations');
									@endphp
									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="serviceTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="service-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#service-lang-{{ $lang->id }}" 
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
											$translation = $service->translations->where('language_id', $lang->id)->first();
										@endphp
										<div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
											 id="service-lang-{{ $lang->id }}" 
											 role="tabpanel">
											<div class="form-group">
												<label for="title_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif</label>
												<input type="text" name="title_{{ $lang->id }}" class="form-control" id="title_{{ $lang->id }}"
													placeholder="{{ __('Enter Title') }}" 
													value="{{ $translation ? $translation->title : ($lang->id == $defaultLang->id ? $service->title : '') }}" >
											</div>

											<div class="form-group">
												<label for="details_{{ $lang->id }}">{{ __('Details') }} @if($lang->id == $defaultLang->id) * @endif</label>
												<textarea name="details_{{ $lang->id }}" id="details_{{ $lang->id }}" class="form-control" rows="5"
													placeholder="{{ __('Enter Details') }}"
												>{{ $translation ? $translation->details : ($lang->id == $defaultLang->id ? $service->details : '') }}</textarea>
											</div>
											@if($lang->id == $defaultLang->id)
												<input type="hidden" name="title" value="{{ $service->title }}">
												<input type="hidden" name="details" value="{{ $service->details }}">
											@endif
										</div>
										@endforeach
									</div>


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
