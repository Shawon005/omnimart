@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Create FAQ') }}</b> </h3>
                <a class="btn btn-secondary btn-rounded btn-sm" href="{{route('back.faq.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
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
								<form class="admin-form" action="{{ route('back.faq.store') }}" method="POST"
									enctype="multipart/form-data">

                                    @csrf

									@include('alerts.alerts')

									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="faqTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="faq-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#faq-lang-{{ $lang->id }}" 
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
										<div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
											 id="faq-lang-{{ $lang->id }}" 
											 role="tabpanel">
											<div class="form-group">
												<label for="title_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
												<input type="text" name="title_{{ $lang->id }}" class="form-control" id="title_{{ $lang->id }}"
													placeholder="{{ __('Enter Title') }}" value="{{ old('title_'.$lang->id) }}" {{ $lang->is_default == 1 ? 'required' : '' }}>
											</div>

											<div class="form-group">
												<label for="details_{{ $lang->id }}">{{ __('Details') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
												<textarea name="details_{{ $lang->id }}" id="details_{{ $lang->id }}" class="form-control" rows="5"
													placeholder="{{ __('Enter Details') }}"
													{{ $lang->is_default == 1 ? 'required' : '' }}>{{ old('details_'.$lang->id) }}</textarea>
											</div>
										</div>
										@endforeach
									</div>

									<div class="form-group">
										<label for="category_id">{{ __('Select Category') }} *</label>
										<select name="category_id" id="category_id" class="form-control" required>
											<option value="" selected disabled>{{__('Select Category')}}</option>
											@foreach(DB::table('fcategories')->whereStatus(1)->get() as $category)
											<option value="{{ $category->id }}">{{ $category->name }}</option>
											@endforeach
										</select>
									</div>

								<div class="form-group text-center">
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

</div>

@endsection
