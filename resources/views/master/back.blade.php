<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ $setting->title }}</title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <link rel="icon" type="image/x-icon" href="{{ url('/core/public/storage/images/' . $setting->favicon) }}" />

    <!-- Fonts and icons -->
    <script src="{{ asset('assets/back/js/plugin/webfont/webfont.min.js') }}"></script>
    <script id="setFont" data-src="{{ asset('assets/back/css/fonts.css') }}"
        src="{{ asset('assets/back/js/plugin/webfont/setfont.js') }}"></script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="{{ asset('assets/back/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/back/css/azzara.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/back/css/tagify.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/back/css/sweetalert2/sweetalert2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/back/css/editor.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/back/css/bootstrap-iconpicker.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/back/css/magnific-popup.css') }}">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.cdnfonts.com/css/outline" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('assets/back/css/custom.css') }}">


    @if (DB::table('languages')->where('is_default', 1)->first()->rtl == 1)
        <link rel="stylesheet" href="{{ asset('assets/back/css/rtl.css') }}">
    @endif

    @yield('styles')

</head>

<body>
    <div class="wrapper">
        <div class="main-header ">
            <!-- Logo Header -->
            <div class="logo-header">

                <a href="{{ route('back.dashboard') }}" class="logo">
                    <img src="{{ $setting->logo ? url('/core/public/storage/images/' . $setting->logo) : url('/core/public/storage/images/placeholder.png') }}"
                        alt="navbar brand" class="navbar-brand">
                </a>
                <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse"
                    data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon">
                        <i class="fa fa-bars"></i>
                    </span>
                </button>
                <button class="topbar-toggler more"><i class="fa fa-ellipsis-v"></i></button>
                <div class="navbar-minimize">
                    <button class="btn btn-minimize ">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
            </div>
            <!-- End Logo Header -->

            <!-- Navbar Header -->
            <nav class="navbar navbar-header navbar-expand-lg">
                <div class="container-fluid">
                    <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                        <li class="nav-item mr-4">
                            <a class="btn btn-sm btn-primary py-1 text-white" title="website"
                                href="{{ route('front.index') }}" target="_blank">
                                <b> {{ __('View Website') }}</b>
                            </a>
                        </li>
                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span
                                    class="badge badge-danger badge-counter">{{ App\Models\Notification::countRegistration() + App\Models\Notification::countOrder() }}</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown" id="display-notf"
                                data-href={{ route('back.notifications') }}>
                                @include('back.notification.index')
                            </div>
                        </li>

                        <li class="nav-item dropdown hidden-caret">
                            <a class="dropdown-toggle profile-pic" data-toggle="dropdown"
                                href="{{ route('back.dashboard') }}" aria-expanded="false">
                                <div class="avatar-sm avatar avatar-sm">
                                    <img src="{{ Auth::guard('admin')->user()->photo ? url('/core/public/storage/images/' . Auth::guard('admin')->user()->photo) : url('/core/public/storage/images/noimage.png') }}"
                                        alt="..." class="avatar-img rounded-circle">
                                </div>
                            </a>
                            <ul class="dropdown-menu dropdown-user animated fadeIn">
                                <li>
                                    <div class="user-box">
                                        <div class="avatar-lg"><img
                                                src="{{ Auth::guard('admin')->user()->photo ? url('/core/public/storage/images/' . Auth::guard('admin')->user()->photo) : url('/core/public/storage/images/noimage.png') }}"
                                                alt="image profile" class="avatar-img rounded"></div>

                                        <div class="u-text">
                                            <h4>{{ Auth::guard('admin')->user()->name }}</h4>
                                            <p class="text-muted">{{ Auth::guard('admin')->user()->email }}</p><a
                                                href="{{ route('back.profile') }}"
                                                class="btn  btn-secondary btn-sm">{{ __('Update Profile') }}</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item"
                                        href="{{ route('back.profile') }}">{{ __('Update Profile') }}</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item"
                                        href="{{ route('back.password') }}">{{ __('Change Password') }}</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="{{ route('back.logout') }}">{{ __('Logout') }}</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- End Navbar -->
        </div>

        <!-- Sidebar -->
        <div class="sidebar">

            <div class="sidebar-background"></div>
            <div class="sidebar-wrapper scrollbar-inner">
                <div class="sidebar-content">
                    <div class="user">
                        <div class="avatar-sm float-left mr-2">
                            <img src="{{ Auth::guard('admin')->user()->photo ? url('/core/public/storage/images/' . Auth::guard('admin')->user()->photo) : url('/core/public/storage/images/noimage.png') }}"
                                alt="..." class="avatar-img rounded-circle">
                        </div>
                        <div class="info">
                            <a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                                <span>
                                    {{ Auth::guard('admin')->user()->name }}
                                    <span class="user-level">{{ __('Administrator') }}</span>
                                </span>
                            </a>
                        </div>
                    </div>

                    @if (Auth::guard('admin')->user()->id == 1)
                        @include('master.inc.super')
                    @else
                        @include('master.inc.normal')
                    @endif
                    <div class="sidebar-footer text-primary d-block text-center pt-3">
                        <span class="d-inline-block"><b>{{ __('Version') }} {{ $setting->version }}</b></span>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Sidebar -->

        <div class="main-panel">
            <div class="content">
                <div class="page-inner">
                    @yield('content')
                </div>
            </div>
        </div>

    </div>
    @php
        $mainbs = [];
        $mainbs['is_announcement'] = $setting->is_announcement;
        $mainbs['announcement_delay'] = $setting->announcement_delay;
        $mainbs['overlay'] = $setting->overlay;
        $mainbs = json_encode($mainbs);

    @endphp

    <script>
        var mainbs = {!! $mainbs !!};
        var summernot_upload_url = '{{ route('back.summernote.image.upload') }}';
    </script>
    <!--   Core JS Files   -->
    <script src="{{ asset('assets/back/js/core/jquery.3.6.0.min.js') }}"></script>
    <script src="{{ asset('assets/back/js/core/popper.min.js') }}"></script>
    <script src="{{ asset('assets/back/js/core/bootstrap.min.js') }}"></script>

    <!-- jQuery UI -->
    <script src="{{ asset('assets/back/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('assets/back/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js') }}"></script>

    <!-- jQuery Scrollbar -->
    <script src="{{ asset('assets/back/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js') }}"></script>

    <!-- Moment JS -->
    <script src="{{ asset('assets/back/js/plugin/moment/moment.min.js') }}"></script>

    <!-- Datatables -->
    <script src="{{ asset('assets/back/js/plugin/datatables/datatables.min.js') }}"></script>
    <script src="{{ asset('assets/back/js/plugin/datatables/dataTables.bootstrap4.min.js') }}"></script>

    <!-- Bootstrap Notify -->
    <script src="{{ asset('assets/back/js/plugin/bootstrap-notify/bootstrap-notify.min.js') }}"></script>

    <!-- sweetalert2 -->
    <script src="{{ asset('assets/back/js/plugin/sweetalert2/sweetalert2.min.js') }}"></script>

    <!-- Menu Builder -->
    <script src="{{ asset('assets/back/js/plugin/jquery-menu-editor.js') }}"></script>

    <!-- Chartjs -->
    <script src="{{ asset('assets/back/js/plugin/chart.min.js') }}"></script>

    <!-- Editor -->
    <script src="{{ asset('assets/back/js/plugin/editor.js') }}"></script>
    <script src="{{ asset('assets/back/js/plugin/datepicker/bootstrap-datetimepicker.min.js') }}"></script>

    <!-- Tagify -->
    <script src="{{ asset('assets/back/js/tagify.js') }}"></script>

    <!-- JS Color -->
    <script src="{{ asset('assets/back/js/jscolor.js') }}"></script>

    <!-- Magnific Popup -->
    <script src="{{ asset('assets/back/js/jquery.magnific-popup.min.js') }}"></script>

    <!-- Sortable -->
    <script src="{{ asset('assets/back/js/sortable.js') }}"></script>

    <!-- Icon Picker -->
    <script src="{{ asset('assets/back/js/bootstrap-iconpicker.bundle.min.js') }}"></script>

    <!-- Azzara JS -->
    <script src="{{ asset('assets/back/js/ready.min.js') }}"></script>

    <!-- Custom JS -->

    @yield('scripts')
    <script src="{{ asset('assets/back/js/custom.js') }}"></script>

    <script src="https://cdn.tiny.cloud/1/zwmet5zwiseexmg68njgwjjj65x0q9rufht5kvy00dyzsd56/tinymce/8/tinymce.min.js" referrerpolicy="origin"></script>
<script>

tinymce.init({
    selector: 'textarea#myeditorinstance',
    // 1. Improved CSS: Added font-weight and color for visibility
    content_style: ".text-outline { -webkit-text-stroke: 1px rgb(204, 180, 134); color: black; font-weight: bold; }",
    
    style_formats: [
        { title: 'Text Outline', inline: 'span', classes: 'text-outline' }
    ],
    setup: (editor) => {
        /* Define the Custom Button */
        editor.ui.registry.addButton('outlinepicker', {
            icon: 'unformatted',
            tooltip: 'Apply Text Outline Color',
            onAction: () => {
                /* Open a Dialog with a Color Input */
                editor.windowManager.open({
                    title: 'Set Outline Color',
                    body: {
                        type: 'panel',
                        items: [{
                            type: 'colorinput',
                            name: 'strokeColor',
                            label: 'Pick Outline Color',
                           
                        }]
                    },
                    buttons: [
                        { type: 'cancel', text: 'Close' },
                        { type: 'submit', text: 'Apply', primary: true }
                    ],
                    onSubmit: (api) => {
                        const data = api.getData();
                        /* Apply the style to the selected text */
                        editor.formatter.register('dynamic_outline', {
                            inline: 'span',
                            styles: {
                                '-webkit-text-stroke': `1px ${data.strokeColor}`,
                                // Inside fill
                               
                            }
                        });
                        editor.formatter.apply('dynamic_outline');
                        api.close();
                    }
                });
            }
        });
    },


    font_family_formats:
        "Arial=arial,helvetica,sans-serif;" +
        "Arial Black=arial black,avant garde;" +
        "Academy=Academy;" +
        "Comic Sans MS=comic sans ms,sans-serif;" +
        "Courier New=courier new,courier;" +
        "Helvetica=helvetica;" +
        "Impact=impact;" +
        "Tahoma=tahoma;" +
        "Times New Roman=times new roman,times;" +
        "Verdana=verdana,geneva;",
    plugins: [
        'anchor', 'autolink', 'charmap', 'codesample', 'emoticons', 'link', 'lists', 'media', 'searchreplace', 'table', 'visualblocks', 'wordcount',
        'checklist', 'mediaembed', 'casechange', 'formatpainter', 'pageembed', 'a11ychecker', 'tinymcespellchecker', 'permanentpen', 'powerpaste', 'advtable', 'advcode', 'advtemplate', 'ai', 'uploadcare', 'mentions', 'tinycomments', 'tableofcontents', 'footnotes', 'mergetags', 'autocorrect', 'typography', 'inlinecss', 'markdown', 'importword', 'exportword', 'exportpdf'
    ],

    // 2. IMPORTANT: Change 'styleselect' to 'blocks styles'
    toolbar: 'undo redo | blocks   fontfamily fontsize | bold italic underline strikethrough outlinepicker| link media table mergetags | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
    font_size_formats: '8pt 10pt 12pt 14pt 16pt 18pt 24pt 26pt 28pt 30pt 32pt 34pt 36pt 38pt 40pt 42pt 44pt 46pt 48pt',
    tinycomments_mode: 'embedded',
    tinycomments_author: 'Author name',
    mergetags_list: [
        { value: 'First.Name', title: 'First Name' },
        { value: 'Email', title: 'Email' },
    ],
    ai_request: (request, respondWith) => respondWith.string(() => Promise.reject('See docs to implement AI Assistant')),
    uploadcare_public_key: '34f8d9cb6174fd2c38b9',
});
tinymce.init({
selector: 'textarea#myeditorinstance1',
content_style: ".text-outline { -webkit-text-stroke: 1px rgb(204, 180, 134); color: black; font-weight: bold; }",

style_formats: [
    { title: 'Text Outline', inline: 'span', classes: 'text-outline' }
],
font_family_formats:
        "Arial=arial,helvetica,sans-serif;" +
        "Arial Black=arial black,avant garde;" +
        "Academy=Academy;" +
        "Comic Sans MS=comic sans ms,sans-serif;" +
        "Courier New=courier new,courier;" +
        "Helvetica=helvetica;" +
        "Impact=impact;" +
        "Tahoma=tahoma;" +
        "Times New Roman=times new roman,times;" +
        "Verdana=verdana,geneva;",
setup: (editor) => {
    /* Define the Custom Button */
    editor.ui.registry.addButton('outlinepicker', {
        icon: 'unformatted',
        tooltip: 'Apply Text Outline Color',
        onAction: () => {
            /* Open a Dialog with a Color Input */
            editor.windowManager.open({
                title: 'Set Outline Color',
                body: {
                    type: 'panel',
                    items: [{
                        type: 'colorinput',
                        name: 'strokeColor',
                        label: 'Pick Outline Color'
                    }]
                },
                buttons: [
                    { type: 'cancel', text: 'Close' },
                    { type: 'submit', text: 'Apply', primary: true }
                ],
                onSubmit: (api) => {
                    const data = api.getData();
                    /* Apply the style to the selected text */
                    editor.formatter.register('dynamic_outline', {
                        inline: 'span',
                        styles: {
                            '-webkit-text-stroke': `1px ${data.strokeColor}`,
                            // Inside fill
                            
                        }
                    });
                    editor.formatter.apply('dynamic_outline');
                    api.close();
                }
            });
        }
    });
    
},

setup: (editor) => {
editor.ui.registry.addButton('divbackground', {
    icon: 'fill',
    tooltip: 'Set Mobile-Only Background Color',
    onAction: () => {
        editor.windowManager.open({
            title: 'Mobile Background Settings',
            body: {
                type: 'panel',
                items: [{
                    type: 'colorinput',
                    name: 'bgColor',
                    label: 'Pick Color (Mobile Only)'
                }]
            },
            buttons: [
                { type: 'cancel', text: 'Close' },
                { type: 'custom', name: 'clearBtn', text: 'Remove Background' },
                { type: 'submit', text: 'Apply Color', primary: true }
            ],
            onAction: (api, details) => {
                if (details.name === 'clearBtn') {
                    // 1. Get the parent element of the selection
                    const node = editor.selection.getNode();
                    const closestDiv = editor.dom.getParent(node, 'div.responsive-bg-box');
                    
                    // 2. If we are inside our custom div, unwrapp it
                    if (closestDiv) {
                        editor.dom.remove(closestDiv, true); // 'true' keeps the text inside
                    }
                    api.close();
                }
            },
            onSubmit: (api) => {
                const data = api.getData();
                const formatName = 'mobile_bg_format';

                // 1. Manual check: If already inside a box, remove it first
                const node = editor.selection.getNode();
                const closestDiv = editor.dom.getParent(node, 'div.responsive-bg-box');
                if (closestDiv) {
                    editor.dom.remove(closestDiv, true);
                }

                // 2. Apply new format
                editor.formatter.register(formatName, {
                    block: 'div',
                    classes: 'responsive-bg-box',
                    styles: { 
                        '--mobile-bg': data.bgColor,
                        'background-color': data.bgColor,
                        'padding':'10px' // Set color as a variable
                        },
                    wrapper: true
                });
                editor.formatter.apply(formatName);
                
                api.close();
            }
        });
    }
});
},
plugins: [
    // Core editing features
    'anchor',  'autolink', 'charmap', 'codesample', 'emoticons', 'link', 'lists', 'media', 'searchreplace', 'table', 'visualblocks', 'wordcount',
    // Your account includes a free trial of TinyMCE premium features
    // Try the most popular premium features until Feb 8, 2026:
    'checklist', 'mediaembed', 'casechange', 'formatpainter', 'pageembed', 'a11ychecker', 'tinymcespellchecker', 'permanentpen', 'powerpaste', 'advtable', 'advcode', 'advtemplate', 'ai', 'uploadcare', 'mentions', 'tinycomments', 'tableofcontents', 'footnotes', 'mergetags', 'autocorrect', 'typography', 'inlinecss', 'markdown','importword', 'exportword', 'exportpdf'
    ],
    block_formats: 'Paragraph=p; Header 1=h1; Header 2=h2; Header 3=h3; Header 4=h4;Header 5=h5;Header 6=h6; Div Block=div; Span=span;',
    font_size_formats: '8pt 10pt 12pt 14pt 16pt 18pt 24pt 26pt 28pt 30pt 32pt 34pt 36pt 38pt 40pt 42pt 44pt 46pt 48pt',
    // This ensures TinyMCE doesn't delete your divs when you save
    extended_valid_elements: 'div[*],span[*]',
    toolbar: 'undo redo | blocks  fontfamily fontsize divbackground  | bold italic underline strikethrough outlinepicker | link media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography uploadcare | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
    tinycomments_mode: 'embedded',
    tinycomments_author: 'Author name',
    mergetags_list: [
    { value: 'First.Name', title: 'First Name' },
    { value: 'Email', title: 'Email' },
    ],
    ai_request: (request, respondWith) => respondWith.string(() => Promise.reject('See docs to implement AI Assistant')),
    uploadcare_public_key: '34f8d9cb6174fd2c38b9', // Replace this CSS selector to match the placeholder element for TinyMCE
});
  
</script>

</body>

</html>
