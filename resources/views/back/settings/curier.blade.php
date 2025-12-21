@extends('master.back')

@section('content')
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-sm-flex align-items-center justify-content-between">
                    <h3 class=" mb-0"><b>{{ __('Curier Setting') }}</b></h3>
                </div>
            </div>
        </div>

        <!-- Form -->
        <div class="row">

            <div class="col-xl-12 col-lg-12 col-md-12">

                <div class="card o-hidden border-0 shadow-lg">
                    <div class="card-body ">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="nav flex-column m-3 nav-pills nav-secondary" id="v-pills-tab" role="tablist"
                                    aria-orientation="vertical">

                                    <a class="nav-link active" data-toggle="pill"
                                        href="#speedfast">{{ __('SteadFast') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#patho">{{ __('Pathao') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#redex">{{ __('RedX') }}</a>
                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="p-5">
                                    <div class="admin-form">

                                        @include('alerts.alerts')

                                        <div class="container pl-0 pr-0 ml-0 mr-0 w-100 mw-100">
                                            <div id="tabs">
                                                <!-- Tab panes -->
                                                <div class="tab-content">
                                                    <div id="speedfast" class="container tab-pane active"><br>

                                                        <div class="row justify-content-center">

                                                            <div class="col-lg-8">

                                                            <form action="{{ route('back.setting.curier.update') }}" method="POST" enctype="multipart/form-data">
                                                                    @csrf
                                                                    <div class="form-group">
                                                                        <label class="switch-primary">
                                                                            <input type="checkbox"
                                                                                class="switch switch-bootstrap "
                                                                                name="status" value="1"
                                                                                {{ $speed->status == 1 ? 'checked' : '' }}>
                                                                            <span class="switch-body"></span>
                                                                            <span
                                                                                class="switch-text">{{ __('Display Patho') }}</span>
                                                                        </label>
                                                                    </div>


                                                                    <div
                                                                        class="image-show {{ $speed->status == 1 ? '' : 'd-none' }}">

                                                                        <div class="form-group">
                                                                            <label
                                                                                for="name">{{ __('Current Image') }}</label>
                                                                            <div class="col-lg-12 pb-1">
                                                                                <img class="admin-setting-img"
                                                                                    src="{{ $speed->photo ? url('/core/public/storage/images/' . $speed->photo) : url('/core/public/storage/images/placeholder.png') }}"
                                                                                    speed="No Image Found">
                                                                            </div>
                                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                                        </div>

                                                                        <div
                                                                            class="form-group position-relative col-xl-12">
                                                                            <label class="file">
                                                                                <input type="file" accept="image/*"
                                                                                    class="upload-photo" name="photo"
                                                                                    id="file"
                                                                                    aria-label="File browser example">
                                                                                <span
                                                                                    class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                            </label>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <label for="name">{{ __('Enter Name') }}
                                                                                *</label>
                                                                            <input type="text" class="form-control"
                                                                                name="name" id="name"
                                                                                value="{{ $speed->name }}">
                                                                        </div>
                                                                        @foreach ($speedData as $pkey => $pdata)
                                                                            <div class="form-group">
                                                                                <label
                                                                                    for="inp-{{ __($pkey) }}">{{ __($speed->name . ' ' . ucwords(str_replace('_', ' ', $pkey))) }}</label>
                                                                                <input type="text" class="form-control"
                                                                                    id="inp-{{ __($pkey) }}"
                                                                                    name="pkey[{{ __($pkey) }}]"
                                                                                    placeholder="{{ __($speed->name . ' ' . ucwords(str_replace('_', ' ', $pkey))) }}"
                                                                                    value="{{ $pdata }}">
                                                                            </div>
                                                                        @endforeach

                                                                        <div class="form-group">
                                                                            <label for="text">{{ __('Enter Text') }}
                                                                                *</label>
                                                                            <textarea name="text" id="text" class="form-control " rows="5" placeholder="{{ __('Enter Text') }}">{{ $speed->text }}</textarea>
                                                                        </div>

                                                                        <input type="hidden" name="unique_keyword"
                                                                            value="speed">

                                                                    </div>

                                                                    <div>

                                                                        <div
                                                                            class="form-group d-flex justify-content-center">
                                                                            <button type="submit"
                                                                                class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                                        </div>

                                                                    </div>

                                                                </form>

                                                            </div>

                                                        </div>

                                                    </div>

                                                    <div id="patho" class="container tab-pane"><br>

                                                        <div class="row justify-content-center">

                                                            <div class="col-lg-8">

                                                                <form action="{{ route('back.setting.curier.update') }}"
                                                                    method="POST" enctype="multipart/form-data">

                                                                    @csrf



                                                                    <div class="form-group">
                                                                        <label class="switch-primary">
                                                                            <input type="checkbox"
                                                                                class="switch switch-bootstrap "
                                                                                name="status" value="1"
                                                                                {{ $patho->status == 1 ? 'checked' : '' }}>
                                                                            <span class="switch-body"></span>
                                                                            <span
                                                                                class="switch-text">{{ __('Display Patho') }}</span>
                                                                        </label>
                                                                    </div>


                                                                    <div
                                                                        class="image-show {{ $patho->status == 1 ? '' : 'd-none' }}">

                                                                        <div class="form-group">
                                                                            <label
                                                                                for="name">{{ __('Current Image') }}</label>
                                                                            <div class="col-lg-12 pb-1">
                                                                                <img class="admin-setting-img"
                                                                                    src="{{ $patho->photo ? url('/core/public/storage/images/' . $patho->photo) : url('/core/public/storage/images/placeholder.png') }}"
                                                                                    patho="No Image Found">
                                                                            </div>
                                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                                        </div>

                                                                        <div
                                                                            class="form-group position-relative col-xl-12">
                                                                            <label class="file">
                                                                                <input type="file" accept="image/*"
                                                                                    class="upload-photo" name="photo"
                                                                                    id="file"
                                                                                    aria-label="File browser example">
                                                                                <span
                                                                                    class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                            </label>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <label for="name">{{ __('Enter Name') }}
                                                                                *</label>
                                                                            <input type="text" class="form-control"
                                                                                name="name" id="name"
                                                                                value="{{ $patho->name }}">
                                                                        </div>
                                                                        @foreach ($pathoData as $pkey => $pdata)
                                                                            <div class="form-group">
                                                                                <label
                                                                                    for="inp-{{ __($pkey) }}">{{ __($patho->name . ' ' . ucwords(str_replace('_', ' ', $pkey))) }}</label>
                                                                                <input type="text" class="form-control"
                                                                                    id="inp-{{ __($pkey) }}"
                                                                                    name="pkey[{{ __($pkey) }}]"
                                                                                    placeholder="{{ __($patho->name . ' ' . ucwords(str_replace('_', ' ', $pkey))) }}"
                                                                                    value="{{ $pdata }}">
                                                                            </div>
                                                                        @endforeach

                                                                        <div class="form-group">
                                                                            <label for="text">{{ __('Enter Text') }}
                                                                                *</label>
                                                                            <textarea name="text" id="text" class="form-control " rows="5" placeholder="{{ __('Enter Text') }}">{{ $patho->text }}</textarea>
                                                                        </div>

                                                                        <input type="hidden" name="unique_keyword"
                                                                            value="patho">

                                                                    </div>

                                                                    <div>

                                                                        <div
                                                                            class="form-group d-flex justify-content-center">
                                                                            <button type="submit"
                                                                                class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                                        </div>

                                                                    </div>

                                                                </form>

                                                            </div>

                                                        </div>

                                                    </div>

                                                    <div id="redex" class="container tab-pane"><br>

                                                        <div class="row justify-content-center">

                                                            <div class="col-lg-8">

                                                                <form action="{{ route('back.setting.curier.update') }}"
                                                                    method="POST" enctype="multipart/form-data">

                                                                    @csrf

                                                                    <div class="form-group">
                                                                        <label class="switch-primary">
                                                                            <input type="checkbox"
                                                                                class="switch switch-bootstrap "
                                                                                name="status" value="1"
                                                                                {{ $redex->status == 1 ? 'checked' : '' }}>
                                                                            <span class="switch-body"></span>
                                                                            <span
                                                                                class="switch-text">{{ __('Display RedEx') }}</span>
                                                                        </label>
                                                                    </div>


                                                                    <div
                                                                        class="image-show {{ $redex->status == 1 ? '' : 'd-none' }}">

                                                                        <div class="form-group">
                                                                            <label
                                                                                for="name">{{ __('Current Image') }}</label>
                                                                            <div class="col-lg-12 pb-1">
                                                                                <img class="admin-setting-img"
                                                                                    src="{{ $redex->photo ? url('/core/public/storage/images/' . $redex->photo) : url('/core/public/storage/images/placeholder.png') }}"
                                                                                    alt="No Image Found">
                                                                            </div>
                                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                                        </div>

                                                                        <div
                                                                            class="form-group position-relative col-xl-12">
                                                                            <label class="file">
                                                                                <input type="file" accept="image/*"
                                                                                    class="upload-photo" name="photo"
                                                                                    id="file"
                                                                                    aria-label="File browser example">
                                                                                <span
                                                                                    class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                            </label>
                                                                        </div>


                                                                        <div class="form-group">
                                                                            <label for="name">{{ __('Enter Name') }}
                                                                                *</label>
                                                                            <input type="text" class="form-control"
                                                                                name="name" id="name"
                                                                                value="{{ $redex->name }}">
                                                                        </div>

                                                                        @foreach ($redexData as $pkey => $pdata)
                                                                            @if ($pkey == 'check_sandbox')
                                                                                <div class="form-group  col-xl-4 col-md-6">
                                                                                    <div
                                                                                        class="custom-control custom-checkbox">
                                                                                        <input type="checkbox"
                                                                                            name="pkey[{{ __($pkey) }}]"
                                                                                            class="custom-control-input"
                                                                                            {{ $pdata == 1 ? 'checked' : '' }}
                                                                                            id="{{ $pkey }}">
                                                                                        <label class="custom-control-label"
                                                                                            for="{{ $pkey }}">
                                                                                            {{ __($redex->name . ' ' . 'Token ' . ucwords(str_replace('_', ' ', $pkey))) }}
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            @else
                                                                                <div class="form-group">
                                                                                    <label
                                                                                        for="inp-{{ __($pkey) }}">{{ __($redex->name . ' ' . 'Token ' . ucwords(str_replace('_', ' ', $pkey))) }}</label>
                                                                                    <input type="text"
                                                                                        class="form-control"
                                                                                        id="inp-{{ __($pkey) }}"
                                                                                        name="pkey[{{ __($pkey) }}]"
                                                                                        placeholder="{{ __($redex->name . ' ' . ucwords(str_replace('_', ' ', $pkey))) }}"
                                                                                        value="{{ $pdata }}">
                                                                                </div>
                                                                            @endif
                                                                        @endforeach

                                                                        <div class="form-group">
                                                                            <label for="text">{{ __('Enter Text') }}
                                                                                *</label>
                                                                            <textarea name="text" id="text" class="form-control " rows="5" placeholder="{{ __('Enter Text') }}">{{ $redex->text }}</textarea>
                                                                        </div>

                                                                        <input type="hidden" name="unique_keyword"
                                                                            value="redex">

                                                                    </div>

                                                                    <div>

                                                                        <div
                                                                            class="form-group d-flex justify-content-center">
                                                                            <button type="submit"
                                                                                class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                                        </div>

                                                                    </div>

                                                                </form>

                                                            </div>

                                                        </div>

                                                    </div>
                                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    @endsection
