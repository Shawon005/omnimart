@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0 bc-title"><b>{{ __('Create Blog') }}</b> </h3>
                <a class="btn btn-primary btn-sm" href="{{route('back.post.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
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
								<form class="admin-form" action="{{ route('back.post.store') }}" method="POST"
									enctype="multipart/form-data">

                                    @csrf

									@include('alerts.alerts')

									<div class="form-group">
										<label for="name">{{ __('Set Image') }} *</label>
										<br>
											<img class="admin-img" src="{{  url('/core/public/storage/images/placeholder.png') }}"
												alt="No Image Found">
										<br>
										<span class="mt-1">{{ __('Image Size Should Be 708 x 277.') }}</span>
									</div>

									<div class="form-group position-relative ">
										<label class="file">
											<input type="file"  accept="image/*"  class="upload-photo" name="photo[]" multiple id="file"
												aria-label="File browser example" >
											<span class="file-custom text-left">{{ __('Upload Image...') }}</span>
										</label>
									</div>

									<div class="form-group">
										<label for="category_id">{{ __('Select Category') }} *</label>
										<select name="category_id" id="category_id" class="form-control" >
											<option value="" selected disabled>{{__('Select Category')}}</option>
											@foreach(DB::table('bcategories')->whereStatus(1)->get() as $category)
											<option value="{{ $category->id }}">{{ $category->name }}</option>
											@endforeach
										</select>
									</div>

									@if($languages->count() > 1)
									<ul class="nav nav-tabs mb-3" id="postTabs" role="tablist">
										@foreach($languages as $index => $lang)
										<li class="nav-item">
											<a class="nav-link {{ $lang->id == $defaultLang->id ? 'active' : '' }}" 
											   id="post-lang-{{ $lang->id }}-tab" 
											   data-toggle="tab" 
											   href="#post-lang-{{ $lang->id }}" 
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
											 id="post-lang-{{ $lang->id }}" 
											 role="tabpanel">
											<div class="form-group">
												<label for="title_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
												<input type="text" name="title_{{ $lang->id }}" class="form-control" id="title_{{ $lang->id }}"
													placeholder="{{ __('Enter Title') }}" value="{{ old('title_'.$lang->id) }}" >
											</div>

											<div class="form-group">
												<label for="details_{{ $lang->id }}">{{ __('Details') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
												<textarea name="details_{{ $lang->id }}" id="details_{{ $lang->id }}" class="form-control text-editor" rows="5"
													placeholder="{{ __('Enter Details') }}"
													>{{ old('details_'.$lang->id) }}</textarea>
											</div>

											<div class="form-group">
												<label for="tags_{{ $lang->id }}">{{ __('Tags') }} <small>({{ $lang->language }})</small></label>
												<input type="text" name="tags_{{ $lang->id }}" class="tags"
													id="tags_{{ $lang->id }}"
													placeholder="{{ __('Tags') }}"
													value="{{ old('tags_'.$lang->id) }}">
											</div>

											<div class="form-group">
												<label for="meta_keywords_{{ $lang->id }}">{{ __('Meta Keywords') }} <small>({{ $lang->language }})</small></label>
												<input type="text" name="meta_keywords_{{ $lang->id }}" class="tags"
													id="meta_keywords_{{ $lang->id }}"
													placeholder="{{ __('Enter Meta Keywords') }}"
													value="{{ old('meta_keywords_'.$lang->id) }}">
											</div>

											<div class="form-group">
												<label for="meta_descriptions_{{ $lang->id }}">{{ __('Meta Description') }} <small>({{ $lang->language }})</small></label>
												<textarea name="meta_descriptions_{{ $lang->id }}" id="meta_descriptions_{{ $lang->id }}"
													class="form-control" rows="5"
													placeholder="{{ __('Enter Meta Description') }}"
												>{{ old('meta_descriptions_'.$lang->id) }}</textarea>
											</div>
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
