@extends('master.back')

@section('content')
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-sm-flex align-items-center justify-content-between">
                    <h3 class=" mb-0 bc-title"><b>{{ __('Update Blog') }}</b> </h3>
                    <a class="btn btn-primary btn-sm" href="{{ route('back.post.index') }}"><i class="fas fa-chevron-left"></i>
                        {{ __('Back') }}</a>
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
                                <form class="admin-form" action="{{ route('back.post.update', $post->id) }}" method="POST"
                                    enctype="multipart/form-data">

                                    @csrf

                                    @method('PUT')

                                    @include('alerts.alerts')

                                    <h5 class="">
                                        <b>{{ __('Multiple Images Uploading Are Allowed') }}</b>
                                    </h5>

                                    <br>

                                    <div class="d-block">

                                        @forelse(json_decode($post->photo,true) as $key => $photo)
                                            <div class="single-g-item d-inline-block m-2">
												@if ($key !=0)
												<span data-toggle="modal" data-target="#confirm-delete" href="javascript:;"
												data-href="{{ route('back.post.photo.delete', [$key, $post->id]) }}"
												class="remove-gallery-img">
												<i class="fas fa-trash"></i>
											</span>
												@endif
                                             
                                                <a class="popup-link"
                                                    href="{{ $photo ? url('/core/public/storage/images/' . $photo) : url('/core/public/storage/images/placeholder.png') }}">
                                                    <img class="admin-gallery-img"
                                                        src="{{ $photo ? url('/core/public/storage/images/' . $photo) : url('/core/public/storage/images/placeholder.png') }}"
                                                        alt="No Image Found">
                                                </a>
                                            </div>
                                        @empty

                                            <h6><b>{{ __('No Images Added') }}</b></h6>
                                        @endforelse

                                    </div>


                                    <div class="form-group position-relative ">
                                        <label class="file">
                                            <input type="file" accept="image/*" name="photo[]" id="file"
                                                aria-label="File browser example" accept="image/*" multiple>
                                            <span class="file-custom text-left">{{ __('Upload Images...') }}</span>
                                        </label>
                                    </div>

                                    <div class="form-group">
                                        <label for="category_id">{{ __('Select Category') }} *</label>
                                        <select name="category_id" id="category_id" class="form-control">
                                            <option value="" selected disabled>{{ __('Select Category') }}</option>
                                            @foreach (DB::table('bcategories')->whereStatus(1)->get() as $category)
                                                <option value="{{ $category->id }}"
                                                    {{ $post->category_id == $category->id ? 'selected' : '' }}>
                                                    {{ $category->name }}</option>
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
                                        @php
                                            $translation = $post->translations->where('language_id', $lang->id)->first();
                                        @endphp
                                        <div class="tab-pane fade {{ $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                                             id="post-lang-{{ $lang->id }}" 
                                             role="tabpanel">
                                            <div class="form-group">
                                                <label for="title_{{ $lang->id }}">{{ __('Title') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                <input type="text" name="title_{{ $lang->id }}" class="form-control" id="title_{{ $lang->id }}"
                                                    placeholder="{{ __('Enter Title') }}" value="{{ $translation ? $translation->title : ($lang->id == $defaultLang->id ? $post->title : '') }}">
                                            </div>

                                            <div class="form-group">
                                                <label for="details_{{ $lang->id }}">{{ __('Details') }} @if($lang->is_default == 1) * @endif <small>({{ $lang->language }})</small></label>
                                                <textarea name="details_{{ $lang->id }}" id="details_{{ $lang->id }}" class="form-control text-editor" rows="5"
                                                    placeholder="{{ __('Enter Details') }}">{{ $translation ? $translation->details : ($lang->id == $defaultLang->id ? $post->details : '') }}</textarea>
                                            </div>

                                            <div class="form-group">
                                                <label for="tags_{{ $lang->id }}">{{ __('Tags') }} <small>({{ $lang->language }})</small></label>
                                                <input type="text" name="tags_{{ $lang->id }}" class="tags" id="tags_{{ $lang->id }}"
                                                    placeholder="{{ __('Tags') }}" value="{{ $translation ? $translation->tags : ($lang->id == $defaultLang->id ? $post->tags : '') }}">
                                            </div>

                                            <div class="form-group">
                                                <label for="meta_keywords_{{ $lang->id }}">{{ __('Meta Keywords') }} <small>({{ $lang->language }})</small></label>
                                                <input type="text" name="meta_keywords_{{ $lang->id }}" class="tags" id="meta_keywords_{{ $lang->id }}"
                                                    placeholder="{{ __('Enter Meta Keywords') }}"
                                                    value="{{ $translation ? $translation->meta_keywords : ($lang->id == $defaultLang->id ? $post->meta_keywords : '') }}">
                                            </div>

                                            <div class="form-group">
                                                <label for="meta_descriptions_{{ $lang->id }}">{{ __('Meta Description') }} <small>({{ $lang->language }})</small></label>
                                                <textarea name="meta_descriptions_{{ $lang->id }}" id="meta_descriptions_{{ $lang->id }}" class="form-control" rows="5"
                                                    placeholder="{{ __('Enter Meta Description') }}">{{ $translation ? $translation->meta_descriptions : ($lang->id == $defaultLang->id ? $post->meta_descriptions : '') }}</textarea>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>

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

    {{-- DELETE MODAL --}}

    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-deleteModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{ __('Confirm Delete?') }}</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>

                <!-- Modal Body -->
                <div class="modal-body">
                    {{ __('You are going to delete this image from gallery.') }} {{ __('Do you want to delete it?') }}
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Cancel') }}</button>
                    <form action="" class="d-inline btn-ok" method="POST">

                        @csrf

                        @method('DELETE')

                        <button type="submit" class="btn btn-danger">{{ __('Delete') }}</button>

                    </form>
                </div>

            </div>
        </div>
    </div>

    {{-- DELETE MODAL ENDS --}}
@endsection
