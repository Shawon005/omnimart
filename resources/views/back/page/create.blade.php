@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0 bc-title"><b>{{ __('Create Page') }}</b> </h3>
                <a class="btn btn-primary  btn-sm" href="{{route('back.page.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
                </div>
        </div>
    </div>

	<!-- Form -->
	<div class="row">

		<div class="col-xl-12 col-lg-12 col-md-12">

			<div class="card o-hidden border-0 shadow-lg">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row justify-content-center">
						<div class="col-lg-10">
							<div class="p-5">
								<form class="admin-form" action="{{ route('back.page.store') }}" method="POST"
									enctype="multipart/form-data">

                                    @csrf

									@include('alerts.alerts')

									@php
										$languages = \App\Models\Language::whereType('Website')->get();
										$defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
									@endphp
									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="pageTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="page-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#page-lang-{{ $lang->id }}" 
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
											 id="page-lang-{{ $lang->id }}" 
											 role="tabpanel">

										<div class="form-group">
											<label for="title_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif</label>
											<input type="text" name="title_{{ $lang->id }}" class="form-control" id="title_{{ $lang->id }}"
												placeholder="{{ __('Enter Title') }}" value="{{ old("title_{$lang->id}") }}" >
										</div>

										<div class="form-group">
											<label for="slug_{{ $lang->id }}">{{ __('Slug') }} @if($lang->is_default == 1) * @endif</label>
											<input type="text" name="slug_{{ $lang->id }}" class="form-control" id="slug_{{ $lang->id }}"
												placeholder="{{ __('Enter Slug') }}" value="{{ old("slug_{$lang->id}") }}" >
										</div>

										<div class="form-group">
											<label for="details_{{ $lang->id }}">{{ __('Details') }} @if($lang->is_default == 1) * @endif</label>
											<textarea name="details_{{ $lang->id }}" id="details_{{ $lang->id }}" class="form-control text-editor" rows="5"
												placeholder="{{ __('Enter Details') }}"
												>{{ old("details_{$lang->id}") }}</textarea>
										</div>

										<div class="form-group">
											<label for="meta_keywords_{{ $lang->id }}">{{ __('Meta Keywords') }}
												</label>
											<input type="text" name="meta_keywords_{{ $lang->id }}" class="form-control tags"
												id="meta_keywords_{{ $lang->id }}"
												placeholder="{{ __('Enter Meta Keywords') }}"
												value="{{ old("meta_keywords_{$lang->id}") }}">
										</div>

										<div class="form-group">
											<label
												for="meta_description_{{ $lang->id }}">{{ __('Meta Description') }}
												</label>
											<textarea name="meta_descriptions_{{ $lang->id }}" id="meta_description_{{ $lang->id }}"
												class="form-control" rows="5"
												placeholder="{{ __('Enter Meta Description') }}"
											>{{ old("meta_descriptions_{$lang->id}") }}</textarea>
										</div>
										@if($lang->id == $defaultLang->id)
											<input type="hidden" name="title" value="{{ old('title') }}">
											<input type="hidden" name="slug" value="{{ old('slug') }}">
											<input type="hidden" name="details" value="{{ old('details') }}">
											<input type="hidden" name="meta_keywords" value="">
											<input type="hidden" name="meta_descriptions" value="">
										@endif
										</div>
										@endforeach
									</div>

									<div class="form-group text-center">
										<button type="submit" class="btn btn-secondary">{{ __('Submit') }}</button>
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

</div>

@endsection
