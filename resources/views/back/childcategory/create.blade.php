@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Create Child Category') }}</b>
                </h3>
                <a class="btn btn-primary btn-sm" href="{{route('back.childcategory.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
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
								<form class="admin-form" action="{{ route('back.childcategory.store') }}" method="POST"
									enctype="multipart/form-data">

                                    @csrf

									@include('alerts.alerts')

									<div class="form-group">
										<label for="category_id">{{ __('Select Category') }} *</label>
										<select name="category_id" id="category_id"  data-href="{{route('back.get.subcategory')}}" class="form-control" >
											<option value="" selected disabled>{{__('Select One')}}</option>
											@foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
											<option value="{{ $cat->id }}">{{ $cat->name }}</option>
											@endforeach
										</select>
									</div>

									<div class="form-group">
										<label for="subcategory_id">{{ __('Select subcategory') }} *</label>
										<select name="subcategory_id" id="subcategory_id" class="form-control" >
											<option value="">{{__('Select One')}}</option>
										</select>
									</div>

									@php
										$languages = \App\Models\Language::whereType('Website')->get();
										$defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
									@endphp
									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="childcategoryTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="childcat-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#childcat-lang-{{ $lang->id }}" 
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
											 id="childcat-lang-{{ $lang->id }}" 
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
											@if($lang->id == $defaultLang->id)
												<input type="hidden" name="name" value="{{ old('name') }}">
												<input type="hidden" name="slug" value="{{ old('slug') }}">
											@endif
										</div>
										@endforeach
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
