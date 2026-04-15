@extends('master.back')

@section('content')

<div class="container-fluid">

<!-- Page Heading -->
<div class="card mb-4">
    <div class="card-body">
        <div class="d-sm-flex align-items-center justify-content-between">
            <h3 class="mb-0 bc-title"><b>{{ __('Update Product') }}</b> </h3>
            <a class="btn btn-primary   btn-sm" href="{{route('back.item.index')}}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-lg-12">
            @include('alerts.alerts')
    </div>
</div>
<!-- Nested Row within Card Body -->

<form class="admin-form" action="{{ route('back.item.update',['item' => $item->id]) }}" method="POST"
    enctype="multipart/form-data">

    @csrf

    @method('PUT')
    <div class="row">

        <div class="col-lg-8">
        @php
                $languages = \App\Models\Language::whereType('Website')->get();
                $defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
            @endphp
            <div class="card">
                <div class="card-body">
                        @if($languages->count() > 1)
                            <ul class="nav nav-tabs mb-3" id="nameSlugTabs" role="tablist">
                                @foreach($languages as $index => $lang)
                                <li class="nav-item">
                                    <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                    id="name-lang-{{ $lang->id }}-tab" 
                                    data-toggle="tab" 
                                    href="#name-lang-{{ $lang->id }}" 
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
                            $translation = $item->translations->where('language_id', $lang->id)->first();
                        @endphp
                        <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                             id="name-lang-{{ $lang->id }}" 
                             role="tabpanel">
                            <div class="form-group">
                                <label for="name_{{ $lang->id }}">{{ __('Name') }} @if($lang->is_default == 1) * @endif</label>
                                <input type="text" name="name_{{ $lang->id }}" class="form-control item-name {{ $lang->id == $defaultLang->id ? 'slug-source' : '' }}"
                                    id="name_{{ $lang->id }}" placeholder="{{ __('Enter Name') }}"
                                    value="{{ $translation ? $translation->name : ($lang->id == $defaultLang->id ? $item->name : '') }}" >
                            </div>
                            <div class="form-group">
                                <label for="slug_{{ $lang->id }}">{{ __('Slug') }} @if($lang->is_default == 1) * @endif</label>
                                <input type="text" name="slug_{{ $lang->id }}" class="form-control slug-input"
                                    id="slug_{{ $lang->id }}" placeholder="{{ __('Enter Slug') }}"
                                    value="{{ $translation ? $translation->slug : ($lang->id == $defaultLang->id ? $item->slug : '') }}" >
                            </div>
                        </div>
                        @if($lang->id == $defaultLang->id)
                                <input type="hidden" name="name" class="form-control item-name" value="{{ $item->name }}">
                                <input type="hidden" name="slug" class="form-control" value="{{ $item->slug }}">
                            @endif
                        @endforeach
                    </div>
                    <!-- <div class="form-group">
                        <label for="name">{{ __('Name') }} *</label>
                        <input type="text" name="name" class="form-control item-name"
                            id="name"
                            placeholder="{{ __('Enter Name') }}"
                            value="{{ $item->name }}" >
                    </div>

                    <div class="form-group">
                        <label for="slug">{{ __('Slug') }} *</label>
                        <input type="text" name="slug" class="form-control"
                            id="slug"
                            placeholder="{{ __('Enter Slug') }}"
                            value="{{ $item->slug }}" >
                    </div> -->

                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="form-group pb-0  mb-0">
                        <label class="d-block">{{ __('Featured Image') }} *</label>
                    </div>
                    <div class="form-group pb-0 pt-0 mt-0 mb-0">
                    <img class="admin-img lg" src="{{ $item->photo ? url('/core/public/storage/images/'.$item->photo) : url('/core/public/storage/images/placeholder.png') }}" >
                    </div>
                    <div class="form-group position-relative ">
                        <label class="file">
                            <input type="file"  accept="image/*"   class="upload-photo" name="photo"
                                id="file"  aria-label="File browser example">
                            <span
                                class="file-custom text-left">{{ __('Upload Image...') }}</span>
                        </label>
                        <br>
                        <span class="mt-1 text-info">{{ __('Image Size Should Be 800 x 800. or square size') }}</span>
                    </div>
                    <div class="form-group">
                        <label for="alt_text">{{ __('Alt Text') }}</label>
                        <input type="text" name="alt_text" class="form-control"
                            id="alt_text" placeholder="{{ __('Enter Alt Text for SEO') }}"
                            value="{{ old('alt_text', $item->alt_text) }}">
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="form-group pb-0  mb-0">
                        <label>{{ __('Gallery Images') }} </label>
                    </div>
                    <div class="form-group pb-0 pt-0 mt-0 mb-0">
                        <div id="gallery-images">
                            <div class="d-block gallery_image_view">

                                @forelse($item->galleries as $gallery)
                                    <div class="single-g-item d-inline-block m-2">
                                            <span data-toggle="modal"
                                            data-target="#confirm-delete" href="javascript:;"
                                            data-href="{{ route('back.item.gallery.delete',$gallery->id) }}" class="remove-gallery-img">
                                                <i class="fas fa-trash"></i>
                                            </span>
                                            <a class="popup-link" href="{{ $gallery->photo ? url('/core/public/storage/images/'.$gallery->photo) : url('/core/public/storage/images/placeholder.png') }}">
                                                <img class="admin-gallery-img" src="{{ $gallery->photo ? url('/core/public/storage/images/'.$gallery->photo) : url('/core/public/storage/images/placeholder.png') }}"
                                                    alt="No Image Found">
                                            </a>
                                            <div class="mt-2">
                                                <input type="number" name="gallery_positions[{{ $gallery->id }}]" class="form-control form-control-sm" 
                                                    value="{{ $gallery->position ?? 0 }}" placeholder="Position" min="0" style="width: 80px;">
                                            </div>
                                            <div class="mt-2">
                                                <input type="text" name="gallery_alt_texts[{{ $gallery->id }}]" class="form-control form-control-sm"
                                                    value="{{ old('gallery_alt_texts.' . $gallery->id, $gallery->alt_text) }}"
                                                    placeholder="{{ __('Alt Text') }}" style="width: 180px;">
                                            </div>
                                    </div>
                                @empty
                                    <h6><b>{{ __('No Images Added') }}</b></h6>
                                @endforelse
                            </div>
                        </div>
                    </div>
                    <div class="form-group position-relative ">
                        <label class="file">
                            <input type="file"  accept="image/*"   name="galleries[]" id="gallery_file"
                                    aria-label="File browser example" accept="image/*" multiple>
                            <span
                                class="file-custom text-left">{{ __('Upload Image...') }}</span>
                        </label>
                        <br>
                        <span class="mt-1 text-info">{{ __('Image Size Should Be 800 x 800. or square size') }}</span>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    @if($languages->count() > 1)
                        <ul class="nav nav-tabs mb-3" id="descriptionTabs" role="tablist">
                            @foreach($languages as $index => $lang)
                            <li class="nav-item">
                                <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                                id="desc-lang-{{ $lang->id }}-tab" 
                                data-toggle="tab" 
                                href="#desc-lang-{{ $lang->id }}" 
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
                            $translation = $item->translations->where('language_id', $lang->id)->first();
                        @endphp
                        <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                             id="desc-lang-{{ $lang->id }}" 
                             role="tabpanel">
                            <div class="form-group">
                                <label for="sort_details_{{ $lang->id }}">{{ __('Short Description') }} @if($lang->is_default == 1) * @endif</label>
                                <textarea name="sort_details_{{ $lang->id }}" id="sort_details_{{ $lang->id }}"
                                    class="form-control"
                                    placeholder="{{ __('Short Description') }}"
                                    >{{ $translation ? $translation->sort_details : ($lang->id == $defaultLang->id ? $item->sort_details : '') }}</textarea>
                            </div>

                            <div class="form-group">
                                <label for="details_{{ $lang->id }}">{{ __('Description') }} @if($lang->is_default == 1) * @endif</label>
                                <textarea name="details_{{ $lang->id }}" id="details_{{ $lang->id }}"
                                    class="form-control text-editor"
                                    rows="6"
                                    placeholder="{{ __('Enter Description') }}"
                                    >{{ $translation ? $translation->details : ($lang->id == $defaultLang->id ? $item->details : '') }}</textarea>
                            </div>
                           
                        </div>
                        @if($lang->id == $defaultLang->id)
                                <input type="hidden" name="sort_details" value="{{ $item->sort_details }}">
                                <input type="hidden" name="details" value="{{ $item->details }}">
                            @endif
                        @endforeach
                    </div>
                    <!-- <div class="form-group">
                        <label for="sort_details">{{ __('Short Description') }} *</label>
                        <textarea name="sort_details" id="sort_details"
                            class="form-control"
                            placeholder="{{ __('Short Description') }}"
                            >{{$item->sort_details}}</textarea>
                    </div>

                    <div class="form-group">
                        <label for="details">{{ __('Description') }} *</label>
                        <textarea name="details" id="details"
                            class="form-control text-editor"
                            rows="6"
                            placeholder="{{ __('Enter Description') }}"
                            >{{$item->details}}</textarea>
                    </div> -->
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                @if($languages->count() > 1)
                    <ul class="nav nav-tabs mb-3" id="tagsTabs" role="tablist">
                        @foreach($languages as $index => $lang)
                        <li class="nav-item">
                            <a class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                               id="tags-lang-{{ $lang->id }}-tab" 
                               data-toggle="tab" 
                               href="#tags-lang-{{ $lang->id }}" 
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
                            $translation = $item->translations->where('language_id', $lang->id)->first();
                        @endphp
                        <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
                             id="tags-lang-{{ $lang->id }}" 
                             role="tabpanel">
                            <div class="form-group mb-2">
                                <label for="tags_{{ $lang->id }}">{{ __('Product Tags') }}</label>
                                <input type="text" name="tags_{{ $lang->id }}" class="tags"
                                    id="tags_{{ $lang->id }}"
                                    placeholder="{{ __('Tags') }}"
                                    value="{{ $translation ? $translation->tags : ($lang->id == $defaultLang->id ? $item->tags : '') }}">
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="form-group">
                        <label class="switch-primary">
                            <input type="checkbox" class="switch switch-bootstrap status radio-check" name="is_specification" value="1" {{$item->is_specification ==1 ? 'checked' : ''}}>
                            <span class="switch-body"></span>
                            <span class="switch-text">{{ __('Specifications') }}</span>
                        </label>
                    </div>

                    <div id="specifications-section" class="{{ $item->is_specification == 0 ? 'd-none' : '' }}">
                        @if(!empty($specification_name))
                        @foreach(array_combine($specification_name,$specification_description) as  $name => $description)
                        <div class="d-flex">
                            <div class="flex-grow-1">
                                <div class="form-group">
                                    <input type="text" class="form-control"
                                        name="specification_name[]"
                                        placeholder="{{ __('Specification Name') }}" value="{{$name}}">
                                    </div>
                            </div>
                            <div class="flex-grow-1">
                                <div class="form-group">
                                    <input type="text" class="form-control"
                                        name="specification_description[]"
                                        placeholder="{{ __('Specification description') }}" value="{{$description}}">
                                    </div>
                            </div>
                            <div class="flex-btn">
                                @if($loop->first)
                                <button type="button" class="btn btn-success add-specification" data-text="{{ __('Specification Name') }}" data-text1="{{ __('Specification Description') }}"> <i class="fa fa-plus"></i> </button>
                                @else
                                <button type="button" class="btn btn-danger remove-spcification" data-text="{{ __('Specification Name') }}" data-text1="{{ __('Specification Description') }}"> <i class="fa fa-minus"></i> </button>
                                @endif
                            </div>
                        </div>

                        @endforeach
                        @else
                        <div class="d-flex">
                            <div class="flex-grow-1">
                                <div class="form-group">
                                    <input type="text" class="form-control"
                                        name="specification_name[]"
                                        placeholder="{{ __('Specification Name') }}" value="">
                                    </div>
                            </div>
                            <div class="flex-grow-1">
                                <div class="form-group">
                                    <input type="text" class="form-control"
                                        name="specification_description[]"
                                        placeholder="{{ __('Specification description') }}" value="">
                                    </div>
                            </div>
                            <div class="flex-btn">
                                <button type="button" class="btn btn-success add-specification" data-text="{{ __('Specification Name') }}" data-text1="{{ __('Specification Description') }}"> <i class="fa fa-plus"></i> </button>
                            </div>
                        </div>
                        @endif

                    </div>
                </div>
            </div>
                <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="meta_title">{{ __('Meta Title') }}
                            </label>
                        <input type="text" name="meta_title" class="form-control"
                            id="meta_title"
                            placeholder="{{ __('Enter Meta Title') }}"
                            value="{{ $item->meta_title ?? '' }}">
                    </div>
                    <div class="form-group">
                        <label for="meta_keywords">{{ __('Meta Keywords') }}
                            </label>
                        <input type="text" name="meta_keywords" class="tags"
                            id="meta_keywords"
                            placeholder="{{ __('Enter Meta Keywords') }}"
                            value="{{ $item->meta_keywords }}">
                    </div>
                    <div class="form-group">
                        <label
                            for="meta_description">{{ __('Meta Description') }}
                            </label>
                        <textarea name="meta_description" id="meta_description"
                            class="form-control" rows="5"
                            placeholder="{{ __('Enter Meta Description') }}">{{ $item->meta_description }}</textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <input type="hidden" class="check_button" name="is_button" value="0">
                    <button type="submit" class="btn btn-secondary mr-2">{{ __('Update') }}</button>
                    <a class="btn btn-success" href="{{ route('back.attribute.index',$item->id) }}">{{ __('Manage Attributes') }}</a>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="discount_price">{{ __('Current Price') }}
                            *</label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span
                                    class="input-group-text">{{ $curr->sign }}</span>
                            </div>
                            <input type="text" id="discount_price"
                                name="discount_price" class="form-control"
                                placeholder="{{ __('Enter Current Price') }}"
                                min="1" step="0.1"
                                value="{{ round($item->discount_price * $curr->value,2) }}" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="previous_price">{{ __('Previous Price') }}
                            </label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span
                                    class="input-group-text">{{ $curr->sign }}</span>
                            </div>
                            <input type="text" id="previous_price"
                                name="previous_price" class="form-control"
                                placeholder="{{ __('Enter Previous Price') }}"
                                min="1" step="0.1"
                                value="{{ round($item->previous_price*$curr->value ,2)}}" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="category_id">{{ __('Select Category') }} *</label>
                        <select name="category_id" id="category_id" data-href="{{route('back.get.subcategory')}}" class="form-control" >
                            @foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
                            <option value="{{ $cat->id }}" {{ $cat->id == $item->category_id ? 'selected' : '' }}>{{ $cat->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="subcategory_id">{{ __('Select Sub Category') }} </label>
                        <select name="subcategory_id" id="subcategory_id" class="form-control" data-href="{{route('back.get.childcategory')}}">
                            <option value="">{{__('Select one')}}</option>
                            @foreach(DB::table('subcategories')->where('category_id',$item->category_id)->whereStatus(1)->get() as $subcat)
                            <option value="{{ $subcat->id }}" {{ $subcat->id == $item->subcategory_id ? 'selected' : '' }}>{{ $subcat->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="childcategory_id">{{ __('Select Child Category') }} </label>
                        <select name="childcategory_id" id="childcategory_id" class="form-control">
                            <option value="">{{__('Select one')}}</option>
                            @foreach(DB::table('chield_categories')->where('category_id',$item->category_id)->whereStatus(1)->get() as $chieldcategory)
                            <option value="{{ $chieldcategory->id }}" {{ $chieldcategory->id == $item->childcategory_id ? 'selected' : '' }}>{{ $chieldcategory->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="brand_id">{{ __('Select Brand') }} </label>
                        <select name="brand_id" id="brand_id" class="form-control" >
                            <option value="" selected>{{__('Select Brand')}}</option>
                            @foreach(DB::table('brands')->whereStatus(1)->get() as $brand)
                            <option value="{{ $brand->id }}" {{$brand->id == $item->brand_id ? 'selected' : ''}} >{{ $brand->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="stock">{{ __('Total in stock') }}
                            *</label>
                        <div class="input-group mb-3">
                            <input type="number" id="stock"
                                name="stock" class="form-control"
                                placeholder="{{ __('Total in stock') }}" value="{{$item->stock}}" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tax_id">{{ __('Select Tax') }} *</label>
                        <select name="tax_id" id="tax_id" class="form-control">
                            <option value="">{{__('Select One')}}</option>
                            @foreach(DB::table('taxes')->whereStatus(1)->get() as $tax)
                            <option value="{{ $tax->id }}" {{$item->tax_id == $tax->id ? 'selected' : ''}} >{{ $tax->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="sku">{{ __('SKU') }} *</label>
                        <input type="text" name="sku" class="form-control"
                            id="sku" placeholder="{{ __('Enter SKU') }}"
                            value="{{$item->sku}}" >
                    </div>
                    <div class="form-group">
                        <label for="video">{{ __('Video Link') }} </label>
                        <input type="text" name="video" class="form-control"
                            id="video" placeholder="{{ __('Enter Video Link') }}"
                            value="{{$item->video}}" >
                    </div>
                </div>
            </div>
        </div>

    </div>
</form>
</div>
{{-- DELETE MODAL --}}

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-deleteModalLabel" aria-hidden="true">
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
