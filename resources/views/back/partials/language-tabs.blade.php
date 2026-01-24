@php
    $languages = \App\Models\Language::whereType('Website')->get();
    $defaultLang = \App\Models\Language::whereType('Website')->where('is_default', 1)->first();
@endphp

@if($languages->count() > 1)
<div class="form-group mb-3">
    <ul class="nav nav-tabs" id="languageTabs" role="tablist">
        @foreach($languages as $index => $lang)
        <li class="nav-item" role="presentation">
            <button class="nav-link {{ $index === 0 || $lang->id == $defaultLang->id ? 'active' : '' }}" 
                    id="lang-{{ $lang->id }}-tab" 
                    data-bs-toggle="tab" 
                    data-bs-target="#lang-{{ $lang->id }}" 
                    type="button" 
                    role="tab" 
                    aria-controls="lang-{{ $lang->id }}" 
                    aria-selected="{{ $index === 0 || $lang->id == $defaultLang->id ? 'true' : 'false' }}">
                <i class="fas fa-globe me-1"></i> {{ $lang->language }}
                @if($lang->is_default == 1) <small class="text-muted">({{ __('Default') }})</small> @endif
            </button>
        </li>
        @endforeach
    </ul>
    <div class="tab-content border border-top-0 p-3" id="languageTabsContent">
        @foreach($languages as $index => $lang)
        <div class="tab-pane fade {{ $index === 0 || $lang->id == $defaultLang->id ? 'show active' : '' }}" 
             id="lang-{{ $lang->id }}" 
             role="tabpanel" 
             aria-labelledby="lang-{{ $lang->id }}-tab">
            @yield("lang_content_{$lang->id}")
        </div>
        @endforeach
    </div>
</div>
@else
    @foreach($languages as $lang)
        @yield("lang_content_{$lang->id}")
    @endforeach
@endif

