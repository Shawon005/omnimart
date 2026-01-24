@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Edit Sub Category') }}</b> </h3>
                <a class="btn btn-primary btn-sm" href="{{route('back.subcategory.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
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
								<form class="admin-form" action="{{ route('back.subcategory.update',$subcategory->id) }}" method="POST"
									enctype="multipart/form-data">

                                    @csrf
									@method('PUT')
									@include('alerts.alerts')

									<div class="form-group">
										<label for="category_id">{{ __('Select Category') }} *</label>
										<select name="category_id" id="category_id" class="form-control" >
											@foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
											<option value="{{ $cat->id }}" {{$subcategory->category_id == $cat->id ? 'selected' :''}} >{{ $cat->name }}</option>
											@endforeach
										</select>
									</div>

									@php
										$languages = \App\Models\Language::whereType('Website')->get();
										$defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
										$subcategory->load('translations');
									@endphp
									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="subcategoryTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="subcat-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#subcat-lang-{{ $lang->id }}" 
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
											$translation = $subcategory->translations->where('language_id', $lang->id)->first();
										@endphp
										<div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
											 id="subcat-lang-{{ $lang->id }}" 
											 role="tabpanel">
											<div class="form-group">
												<label for="name_{{ $lang->id }}">{{ __('Name') }} @if($lang->is_default == 1) * @endif</label>
												<input type="text" name="name_{{ $lang->id }}" class="form-control item-name {{ $lang->id == $defaultLang->id ? 'slug-source' : '' }}" 
													id="name_{{ $lang->id }}"
													placeholder="{{ __('Enter Name') }}" 
													value="{{ $translation ? $translation->name : ($lang->id == $defaultLang->id ? $subcategory->name : '') }}" >
											</div>

											<div class="form-group">
												<label for="slug_{{ $lang->id }}">{{ __('Slug') }} @if($lang->is_default == 1) * @endif</label>
												<input type="text" name="slug_{{ $lang->id }}" class="form-control slug-input" 
													id="slug_{{ $lang->id }}"
													placeholder="{{ __('Enter Slug') }}" 
													value="{{ $translation ? $translation->slug : ($lang->id == $defaultLang->id ? $subcategory->slug : '') }}" >
											</div>
											@if($lang->id == $defaultLang->id)
												<input type="hidden" name="name" value="{{ $subcategory->name }}">
												<input type="hidden" name="slug" value="{{ $subcategory->slug }}">
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
