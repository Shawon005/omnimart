<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta charset="UTF-8">
    @if (url()->current() == route('front.index'))
        <title>@yield('hometitle')</title>
    @else
        <title>@yield('title') | {{ $setting->title }}</title>
    @endif

    <!-- SEO Meta Tags-->
    @if (url()->current() == route('front.index'))
        <meta name="author" content="GeniusDevs">
        <meta name="distribution" content="web">
        <meta name="description" content="{{ $setting->meta_description }}">
        <meta name="keywords" content="{{ $setting->meta_keywords }}">
        <meta name="image" content="{{ url('/core/public/storage/images/' . $setting->meta_image) }}">
        <meta property="og:title" content="{{ $setting->title }}">
        <meta property="og:description" content="{{ $setting->meta_description }}">
        <meta property="og:image" content="{{ url('/core/public/storage/images/' . $setting->meta_image) }}">
        <meta property="og:image:secure_url" content="{{ url('/core/public/storage/images/' . $setting->meta_image) }}" />
        <meta property="og:image:type" content="image/jpeg"/>
        <meta property="og:image:width" content="1200" />
        <meta property="og:image:height" content="627" />
        <meta property="og:url" content="{{ url()->current() }}">
        <meta property="og:site_name" content="{{ $setting->title }}">
        <meta property="og:type" content="website">
    @else
        @yield('meta')
    @endif

    {{-- Hreflang Tags --}}
    @php
    $languages = \App\Models\Language::whereType('Website')->get();
    $currentUrl = url()->current();
    @endphp
    @foreach($languages as $lang)
   
    <link rel="alternate" hreflang="{{ $lang->language }}" href="{{ $currentUrl . '/set/language/' . $lang->id }}" />
    @endforeach
    <link rel="alternate" hreflang="x-default" href="{{ $currentUrl }}" />

    <!-- Mobile Specific Meta Tag-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicon Icons-->
    <link rel="icon" type="image/png" href="{{ url('/core/public/storage/images/' . $setting->favicon) }}">
    <link rel="apple-touch-icon" href="{{ url('/core/public/storage/images/' . $setting->favicon) }}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ url('/core/public/storage/images/' . $setting->favicon) }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ url('/core/public/storage/images/' . $setting->favicon) }}">
    <link rel="apple-touch-icon" sizes="167x167" href="{{ url('/core/public/storage/images/' . $setting->favicon) }}">

    <!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="{{ asset('assets/front/css/plugins.min.css') }}">

    @yield('styleplugins')

    <link id="mainStyles" rel="stylesheet" media="screen" href="{{ asset('assets/front/css/styles.min.css') }}">

    <link id="mainStyles" rel="stylesheet" media="screen" href="{{ asset('assets/front/css/responsive.css') }}">
    <!-- Color css -->
    <link
        href="{{ asset('assets/front/css/color.php?primary_color=') . str_replace('#', '', $setting->primary_color) }}"
        rel="stylesheet">

    <!-- Auto Language Detection -->
    

    <script>
        (function() {
            console.log('browserLang',navigator);
            console.log('local',localStorage.getItem('lang_auto_detected'))
            async function getCountry() {
                const res = await http("https://ipapi.co/json/",headers = {
                    'Content-Type': 'application/json',
                    'Access-Control-Allow-Origin': 'http://localhost',
                    'Access-Control-Allow-Methods': 'POST',
                    'Access-Control-Allow-Headers': 'Content-Type, X-CSRF-TOKEN',
                });
                const data = await res.json();
                return data.country_name;
            }

            getCountry().then(country => console.log(country));
            if (localStorage.getItem('lang_auto_detected')) return;
            localStorage.setItem('lang_auto_detected', '1');

            // Map of browser locale codes to language names stored in DB
            var localeToName = {
                'af': 'Afrikaans', 'sq': 'Albanian', 'am': 'Amharic', 'ar': 'Arabic',
                'hy': 'Armenian', 'az': 'Azerbaijani', 'eu': 'Basque', 'be': 'Belarusian',
                'bn': 'Bengali', 'bs': 'Bosnian', 'bg': 'Bulgarian', 'ca': 'Catalan',
                'zh': 'Chinese', 'hr': 'Croatian', 'cs': 'Czech', 'da': 'Danish',
                'nl': 'Dutch', 'en': 'English', 'et': 'Estonian', 'fi': 'Finnish',
                'fr': 'French', 'gl': 'Galician', 'ka': 'Georgian', 'de': 'German',
                'el': 'Greek', 'gu': 'Gujarati', 'ht': 'Haitian Creole', 'ha': 'Hausa',
                'he': 'Hebrew', 'hi': 'Hindi', 'hu': 'Hungarian', 'is': 'Icelandic',
                'id': 'Indonesian', 'ga': 'Irish', 'it': 'Italian', 'ja': 'Japanese',
                'kn': 'Kannada', 'kk': 'Kazakh', 'km': 'Khmer', 'ko': 'Korean',
                'ku': 'Kurdish', 'ky': 'Kyrgyz', 'lo': 'Lao', 'lv': 'Latvian',
                'lt': 'Lithuanian', 'lb': 'Luxembourgish', 'mk': 'Macedonian',
                'mg': 'Malagasy', 'ms': 'Malay', 'ml': 'Malayalam', 'mt': 'Maltese',
                'mi': 'Maori', 'mr': 'Marathi', 'mn': 'Mongolian', 'my': 'Myanmar',
                'ne': 'Nepali', 'no': 'Norwegian', 'ps': 'Pashto', 'fa': 'Persian',
                'pl': 'Polish', 'pt': 'Portuguese', 'pa': 'Punjabi', 'ro': 'Romanian',
                'ru': 'Russian', 'sm': 'Samoan', 'sr': 'Serbian', 'si': 'Sinhala',
                'sk': 'Slovak', 'sl': 'Slovenian', 'so': 'Somali', 'es': 'Spanish',
                'su': 'Sundanese', 'sw': 'Swahili', 'sv': 'Swedish', 'tl': 'Filipino',
                'tg': 'Tajik', 'ta': 'Tamil', 'te': 'Telugu', 'th': 'Thai',
                'tr': 'Turkish', 'uk': 'Ukrainian', 'ur': 'Urdu', 'uz': 'Uzbek',
                'vi': 'Vietnamese', 'cy': 'Welsh', 'xh': 'Xhosa', 'yi': 'Yiddish',
                'yo': 'Yoruba', 'zu': 'Zulu'
            };
            
            // Available languages from DB
            var availableLanguages = @json($languages->map(fn($l) => ['id' => $l->id, 'language' => $l->language]));
            console.log('availableLanguages',availableLanguages);
            var browserLang = (navigator.language || navigator.userLanguage || 'en').toLowerCase();
            
            var langCode = browserLang.split('-')[0]; // e.g. "de" from "de-DE"
            var targetName = localeToName[langCode] ? localeToName[langCode].toLowerCase() : null;
            console.log('loca',targetName);
            if (!targetName) return;

            var match = null;
            for (var i = 0; i < availableLanguages.length; i++) {
                var dbName = availableLanguages[i].language.toLowerCase();
                if (dbName === targetName || dbName.indexOf(targetName) === 0 || targetName.indexOf(dbName) === 0) {
                    match = availableLanguages[i];
                    break;
                }
            }

            if (match) {
                console.log('Matched language:', match);
                // Build the language setup URL and redirect
                // The controller uses return back() which will redirect back to the current page
                var setupUrl = '{{ url("set/language") }}/' + match.id;
                window.location.replace(setupUrl);
            }
        })();
    </script>
  

    <!-- Modernizr-->
    <script src="{{ asset('assets/front/js/modernizr.min.js') }}"></script>
    @php
    $currentLanguage = Session::get('language') ;
    @endphp
    
    @if ($currentLanguage == 2)
        <link rel="stylesheet" href="{{ asset('assets/front/css/rtl.css') }}">
    @endif
    <style>
        {{ $setting->custom_css }}
    </style>
    {{-- Simple Chatbot Styles --}}
    <style>

        .to-chatbot-wrapper {
            position: fixed;
            right: 20px;
            bottom: 20px;
            z-index: 9999;
            font-family: inherit;
        }

        .to-chatbot-toggle {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: #{{ str_replace('#', '', $setting->primary_color) }};
            color: #fff;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.25);
            cursor: pointer;
        }

        .to-chatbot-toggle span {
            font-size: 26px;
            line-height: 1;
        }

        .to-chatbot-window {
            width: 320px;
            max-height: 420px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            display: none;
            flex-direction: column;
            overflow: hidden;
        }

        .to-chatbot-header {
            background: #{{ str_replace('#', '', $setting->primary_color) }};
            color: #fff;
            padding: 10px 14px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .to-chatbot-title {
            font-size: 14px;
            font-weight: 600;
        }

        .to-chatbot-close {
            background: transparent;
            border: none;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            line-height: 1;
        }

        .to-chatbot-body {
            padding: 10px;
            background: #f7f7f7;
            display: flex;
            flex-direction: column;
            gap: 6px;
            overflow-y: auto;
            flex: 1;
        }

        .to-chatbot-message {
            max-width: 80%;
            padding: 8px 10px;
            border-radius: 10px;
            font-size: 12px;
        }

        .to-chatbot-message.bot {
            background: #ffffff;
            align-self: flex-start;
            border-top-left-radius: 0;
        }

        .to-chatbot-message.user {
            background: #e3f2fd;
            align-self: flex-end;
            border-top-right-radius: 0;
        }

        .to-chatbot-footer {
            padding: 8px;
            background: #ffffff;
            border-top: 1px solid #e0e0e0;
            display: flex;
            gap: 6px;
        }

        .to-chatbot-footer input {
            flex: 1;
            border-radius: 999px;
            border: 1px solid #d0d0d0;
            padding: 6px 10px;
            font-size: 12px;
        }

        .to-chatbot-footer button {
            border-radius: 999px;
            border: none;
            background: #{{ str_replace('#', '', $setting->primary_color) }};
            color: #fff;
            padding: 6px 12px;
            font-size: 12px;
            cursor: pointer;
        }
        .app-header {
            display: none;
        }

        /* Show only in mobile app */
        .is-mobile-app .app-header {
            display: block;
        }

        /* Hide in web */
        .is-web .app-header {
            display: none;
        }
        @media (max-width: 575.98px) {
            .to-chatbot-wrapper {
                right: 10px;
                bottom: 70px;
                /* left: 10px; */
            }
            .to-chatbot-window {
                width: 100%;
                max-height: 60vh;
            }
            .bar_mble{
                height: 30px;
            }
            .mble_v{
                display:none;
            }
        }

        /* ===== Mobile Top Bar - Compact ===== */
        @media (max-width: 991.98px) {
            .menu-top-area {
                display: block !important;
            }
            /* Hide wishlist & compare from top bar on mobile (they're in bottom nav) */
            .menu-top-area .wishlist-mobile,
            .menu-top-area .compare-mobile,
            .menu-top-area .login-register {
                display: none !important;
            }
            .menu-top-area .t-m-s-a {
                display: flex;
                align-items: center;
                gap: 8px;
            }
            .menu-top-area .right-area {
                display: flex;
                align-items: center;
                justify-content: flex-end;
                gap: 6px;
            }
            .menu-top-area .t-h-dropdown .main-link {
                font-size: 11px;
                padding: 2px 4px;
            }
            .menu-top-area .track-order-link {
                font-size: 11px;
            }
            body {
                padding-bottom: 60px;
            }
            .scroll-to-top-btn {
                bottom: 70px;
            }
        }

        /* ===== Mobile Bottom Navigation Bar ===== */
        .mobile-bottom-nav {
            display: none;
        }
        @media (max-width: 991.98px) {
            .mobile-bottom-nav {
                display: flex;
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
                z-index: 1050;
                background: #fff;
                border-top: 1px solid #e0e0e0;
                box-shadow: 0 -2px 8px rgba(0,0,0,0.08);
                height: 60px;
                align-items: stretch;
            }
            .mobile-bottom-nav a {
                flex: 1;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                color: #555;
                text-decoration: none;
                font-size: 10px;
                gap: 3px;
                transition: color 0.2s;
                padding: 6px 2px;
            }
            .mobile-bottom-nav a:hover,
            .mobile-bottom-nav a.active {
                color: #{{ str_replace('#', '', $setting->primary_color) }};
            }
            .mobile-bottom-nav a i {
                font-size: 20px;
                line-height: 1;
            }
            .mobile-bottom-nav a span {
                font-size: 10px;
                line-height: 1;
            }
            .mobile-bottom-nav .mbn-categories-btn {
                cursor: pointer;
                background: none;
                border: none;
                flex: 1;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                color: #555;
                font-size: 10px;
                gap: 3px;
                padding: 6px 2px;
                transition: color 0.2s;
            }
            .mobile-bottom-nav .mbn-categories-btn:hover {
                color: #{{ str_replace('#', '', $setting->primary_color) }};
            }
            .mobile-bottom-nav .mbn-categories-btn i {
                font-size: 20px;
                line-height: 1;
            }
        }
    </style>
    {{-- Google AdSense Start --}}
    @if ($setting->is_google_adsense == '1')
        {!! $setting->google_adsense !!}
    @endif
    {{-- Google AdSense End --}}

    {{-- Google AnalyTics Start --}}
    @if ($setting->is_google_analytics == '1')
        {!! $setting->google_analytics !!}
    @endif
    {{-- Google AnalyTics End --}}

    {{-- Facebook pixel  Start --}}
    @if ($setting->is_facebook_pixel == '1')
        {!! $setting->facebook_pixel !!}
    @endif
    {{-- Facebook pixel End --}}

</head>
<!-- Body-->

<body
    class="
    @if ($setting->theme == 'theme1') body_theme1
    @elseif($setting->theme == 'theme2')
    body_theme2
    @elseif($setting->theme == 'theme3')
    body_theme3
    @elseif($setting->theme == 'theme4')
    body_theme4 @endif
">
    @if ($setting->is_loader == 1)
        <!-- Preloader Start -->
        @if ($setting->is_loader == 1)
            <div id="preloader">
                <img src="{{ url('/core/public/storage/images/' . $setting->loader) }}" alt="{{ __('Loading...') }}">
            </div>
        @endif

        <!-- Preloader endif -->
    @endif
    
    <!-- Header-->
    <script>
        if (window.Capacitor && window.Capacitor.isNativePlatform()) {
            document.body.classList.add('is-mobile-app');
        } else {
            document.body.classList.add('is-web');
        }
</script>
    <header class="site-header navbar-sticky">
        <div class="bar_mble app-header" style="{{'background:' . $setting->primary_color}}"></div>
        <div class="menu-top-area">
            <div class="container">
                <div class="row">
                    <div class="col-5">
                        <div class="t-m-s-a">
                            <a class="track-order-link" href="{{ route('front.order.track') }}"><i
                                    class="icon-map-pin"></i><span  class="mble_vs">{{ __('Track Order') }}</span></a>
                            <a class="track-order-link compare-mobile d-lg-none"
                                href="{{ route('fornt.compare.index') }}"><i class='icon-repeat'></i><span  class="mble_v">{{ __('Compare') }}
                                    </span> </a>
                        </div>
                    </div>
                    <div class="col-7">
                        <div class="right-area">

                            <a class="track-order-link wishlist-mobile d-inline-block d-lg-none"
                                href="{{ route('user.wishlist.index') }}"><i
                                    class="icon-heart"></i><span class="mble_v">{{ __('Wishlist') }}</span></a>

                            @php
                                $activeLanguage = DB::table('languages')->whereType('Website')
                                    ->where(function($q) {
                                        if (Session::has('language')) {
                                            $q->where('id', Session::get('language'));
                                        } else {
                                            $q->where('is_default', 1);
                                        }
                                    })->first();
                                $activeLangName = $activeLanguage ? $activeLanguage->language : __('Language');
                            @endphp
                            <div class="t-h-dropdown ">
                                <a class="main-link" href="#">{{ $activeLangName }}<i
                                        class="icon-chevron-down"></i></a>
                                <div class="t-h-dropdown-menu">
                                    @foreach (DB::table('languages')->whereType('Website')->get() as $language)
                                        <a class="{{ Session::get('language') == $language->id ? 'active' : ($language->is_default == 1 && !Session::has('language') ? 'active' : '') }}"
                                            href="{{ route('front.language.setup', $language->id) }}"><i
                                                class="icon-chevron-right pr-2"></i>{{ $language->language }}</a>
                                    @endforeach
                                </div>
                            </div>


                            <div class="t-h-dropdown ">
                                <a class="main-link" href="#"><i class='fas fa-euro-sign me-2'></i><span class="mble_v">{{ __('Currency') }}</span><i
                                        class="icon-chevron-down"></i></a>
                                <div class="t-h-dropdown-menu">
                                    @foreach (DB::table('currencies')->get() as $currency)
                                        <a class="{{ Session::get('currency') == $currency->id ? 'active' : ($currency->is_default == 1 && !Session::has('currency') ? 'active' : '') }}"
                                            href="{{ route('front.currency.setup', $currency->id) }}"><i
                                                class="icon-chevron-right pr-2 "></i> {{ $currency->name }}</a>
                                    @endforeach
                                </div>
                            </div>

                            <div class="login-register ">
                                @if (!Auth::user())
                                    <a class="track-order-link mr-0" href="{{ route('user.login') }}" style="border: 2px solid; border-radius: 10px; padding: 3px 6px;">
                                        {{ __('Login') }}
                                    </a>
                                    <a class="ms-2 track-order-link mr-0" href="{{ route('user.register') }}" style="border: 2px solid; border-radius: 10px; padding: 3px 6px;">
                                        {{ __('Register') }}
                                    </a>
                                @else
                                    <div class="t-h-dropdown">
                                        <div class="main-link">
                                            <i class="icon-user pr-2"></i> <span
                                                class="text-label">{{ Auth::user()->first_name }}</span>
                                        </div>
                                        <div class="t-h-dropdown-menu">
                                            <a href="{{ route('user.dashboard') }}"><i
                                                    class="icon-chevron-right pr-2"></i>{{ __('Dashboard') }}</a>
                                            <a href="{{ route('user.logout') }}"><i
                                                    class="icon-chevron-right pr-2"></i>{{ __('Logout') }}</a>
                                        </div>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar-->
        <div class="topbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="d-flex justify-content-between">
                            <div class="toolbar d-flex">
                                <div class="toolbar-item visible-on-mobile mobile-menu-toggle"><a href="#">
                                        <div><i class="icon-menu"></i><span
                                                class="text-label">{{ __('Menu') }}</span></div>
                                    </a>
                                </div>
                            </div>
                            <!-- Logo-->
                            <div class="site-branding"><a class="site-logo align-self-center"
                                    href="{{ route('front.index') }}"><img
                                        src="{{ url('/core/public/storage/images/' . $setting->logo) }}"
                                        alt="{{ $setting->title }}"></a>
                            </div>
                            <!-- Search / Categories-->
                            <div class="search-box-wrap d-none d-lg-block d-flex">
                                <div class="search-box-inner align-self-center">
                                    <div class="search-box d-flex">
                                        <select name="category" id="category_select" class="categoris">
                                            <option value="">{{ __('All') }}</option>
                                            @foreach (DB::table('categories')->whereStatus(1)->get() as $category)
                                                <option value="{{ $category->slug }}">{{ $category->name }}</option>
                                            @endforeach
                                        </select>
                                        <form class="input-group" id="header_search_form"
                                            action="{{ route('front.catalog') }}" method="get">
                                            <input type="hidden" name="category" value=""
                                                id="search__category">
                                            <span class="input-group-btn">
                                                <button type="submit"><i class="icon-search"></i></button>
                                            </span>
                                            <input class="form-control" type="text"
                                                data-target="{{ route('front.search.suggest') }}"
                                                id="__product__search" name="search"
                                                placeholder="{{ __('Search by product name') }}">
                                            <div class="serch-result d-none">
                                                {{-- search result --}}
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <span class="d-block d-lg-none close-m-serch"><i class="icon-x"></i></span>
                            </div>
                            <!-- Toolbar-->
                            <div class="toolbar d-flex">

                                <div class="toolbar-item close-m-serch visible-on-mobile"><a href="#">
                                        <div>
                                            <i class="icon-search"></i>
                                        </div>
                                    </a>
                                </div>
                               

                                <div class="toolbar-item hidden-on-mobile"><a
                                        href="{{ route('fornt.compare.index') }}">
                                        <div><span class="compare-icon"><i class="icon-repeat"></i><span
                                                    class="count-label compare_count">{{ Session::has('compare') ? count(Session::get('compare')) : '0' }}</span></span><span
                                                class="text-label">{{ __('Compare') }}</span></div>
                                    </a>
                                </div>
                                @if (Auth::check())
                                    <div class="toolbar-item hidden-on-mobile"><a
                                            href="{{ route('user.wishlist.index') }}">
                                            <div><span class="compare-icon"><i class="icon-heart"></i><span
                                                        class="count-label wishlist_count">{{ Auth::user()->wishlists->count() }}</span></span><span
                                                    class="text-label">{{ __('Wishlist') }}</span></div>
                                        </a>
                                    </div>
                                @else
                                    <div class="toolbar-item hidden-on-mobile"><a
                                            href="{{ route('user.wishlist.index') }}">
                                            <div><span class="compare-icon"><i class="icon-heart"></i></span><span
                                                    class="text-label">{{ __('Wishlist') }}</span></div>
                                        </a>
                                    </div>
                                @endif
                                <div class="toolbar-item"><a href="{{ route('front.cart') }}">
                                        <div><span class="cart-icon"><i class="icon-shopping-cart"></i><span
                                                    class="count-label cart_count">{{ Session::has('cart') ? count(Session::get('cart')) : '0' }}
                                                </span></span><span class="text-label">{{ __('Cart') }}</span>
                                        </div>
                                    </a>
                                    <div class="toolbar-dropdown cart-dropdown widget-cart  cart_view_header"
                                        id="header_cart_load" data-target="{{ route('front.header.cart') }}">
                                        @include('includes.header_cart')
                                    </div>
                                </div>
                            </div>

                            <!-- Mobile Menu-->
                            <div class="mobile-menu">
                                <!-- Slideable (Mobile) Menu-->
                                <div class="mm-heading-area">
                                    <h4>{{ __('Navigation') }}</h4>
                                    <div class="toolbar-item visible-on-mobile mobile-menu-toggle mm-t-two">
                                        <a href="#">
                                            <div> <i class="icon-x"></i></div>
                                        </a>
                                    </div>
                                </div>
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item" role="presentation99">
                                        <span class="active" id="mmenu-tab" data-bs-toggle="tab"
                                            data-bs-target="#mmenu" role="tab" aria-controls="mmenu"
                                            aria-selected="true">{{ __('Menu') }}</span>
                                    </li>
                                    <li class="nav-item" role="presentation99">
                                        <span class="" id="mcat-tab" data-bs-toggle="tab"
                                            data-bs-target="#mcat" role="tab" aria-controls="mcat"
                                            aria-selected="false">{{ __('Category') }}</span>
                                    </li>

                                </ul>
                                <div class="tab-content p-0">
                                    <div class="tab-pane fade show active" id="mmenu" role="tabpanel"
                                        aria-labelledby="mmenu-tab">
                                        <nav class="slideable-menu">
                                            @php
                                                $mobileMenuCategories = \App\Models\Category::with(['subcategory' => function ($query) {
                                                    $query->where('status', 1)->orderBy('name', 'asc');
                                                }])->where('status', 1)->orderBy('serial', 'asc')->take(2)->get();
                                            @endphp
                                            <ul>
                                                <li class="{{ request()->routeIs('front.index') ? 'active' : '' }}"><a
                                                        href="{{ route('front.index') }}"><i
                                                            class="icon-chevron-right"></i>{{ __('Home') }}</a>
                                                </li>
                                                @if ($setting->is_shop == 1)
                                                    <li
                                                        class="{{ request()->routeIs('front.catalog*') ? 'active' : '' }}">
                                                        <a href="{{ route('front.catalog') }}"><i
                                                                class="icon-chevron-right"></i>{{ __('Shop') }}</a>
                                                    </li>

                                                    @foreach ($mobileMenuCategories as $mobileMenuCategory)
                                                        <li class="t-h-dropdown">
                                                            <a class="" >
                                                                <i class="icon-chevron-right"></i>{{ $mobileMenuCategory->name }}
                                                                @if ($mobileMenuCategory->subcategory->count() > 0)
                                                                    <i class="icon-chevron-down"></i>
                                                                @endif
                                                            </a>
                                                            @if ($mobileMenuCategory->subcategory->count() > 0)
                                                                <div class="t-h-dropdown-menu">
                                                                    @foreach ($mobileMenuCategory->subcategory as $mobileSubcategory)
                                                                        <a href="{{ route('front.catalog') . '?subcategory=' . $mobileSubcategory->slug }}">
                                                                            <i class="icon-chevron-right pr-2"></i>{{ $mobileSubcategory->name }}
                                                                        </a>
                                                                    @endforeach
                                                                </div>
                                                            @endif
                                                        </li>
                                                    @endforeach
                                                @endif
                                                @if ($setting->is_campaign == 1)
                                                    <li
                                                        class="{{ request()->routeIs('front.campaign') ? 'active' : '' }}">
                                                        <a href="{{ route('front.campaign') }}"><i
                                                                class="icon-chevron-right"></i>{{ __('Campaign') }}</a>
                                                    </li>
                                                @endif
                                                <!-- @if ($setting->is_brands == 1)
                                                    <li
                                                        class="{{ request()->routeIs('front.brand') ? 'active' : '' }}">
                                                        <a href="{{ route('front.brand') }}"><i
                                                                class="icon-chevron-right"></i>{{ __('Brand') }}</a>
                                                    </li>
                                                @endif -->

                                                @if ($setting->is_blog == 1)
                                                    <li
                                                        class="{{ request()->routeIs('front.blog*') ? 'active' : '' }}">
                                                        <a href="{{ route('front.blog') }}"><i
                                                                class="icon-chevron-right"></i>{{ __('Blog') }}</a>
                                                    </li>
                                                @endif
                                                <li class="t-h-dropdown">
                                                    <a class="" href="#"><i
                                                            class="icon-chevron-right"></i>{{ __('Pages') }} <i
                                                            class="icon-chevron-down"></i></a>
                                                    <div class="t-h-dropdown-menu">
                                                        @if ($setting->is_faq == 1)
                                                            <a class="{{ request()->routeIs('front.faq*') ? 'active' : '' }}"
                                                                href="{{ route('front.faq') }}"><i
                                                                    class="icon-chevron-right pr-2"></i>{{ __('Faq') }}</a>
                                                        @endif
                                                        @foreach (DB::table('pages')->wherePos(0)->orwhere('pos', 2)->get() as $page)
                                                            <a class="{{ request()->url() == route('front.page', $page->slug) ? 'active' : '' }} "
                                                                href="{{ route('front.page', $page->slug) }}"><i
                                                                    class="icon-chevron-right pr-2"></i>{{ $page->title }}</a>
                                                        @endforeach
                                                    </div>
                                                </li>

                                                @if ($setting->is_contact == 1)
                                                    <li
                                                        class="{{ request()->routeIs('front.contact') ? 'active' : '' }}">
                                                        <a href="{{ route('front.contact') }}"><i
                                                                class="icon-chevron-right"></i>{{ __('Contact') }}</a>
                                                    </li>
                                                @endif
                                            </ul>
                                        </nav>
                                    </div>
                                    <div class="tab-pane fade" id="mcat" role="tabpanel"
                                        aria-labelledby="mcat-tab">
                                        <nav class="slideable-menu">
                                            @include('includes.mobile-category')

                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar-->
        <div class="navbar">
            <div class="container">
                <div class="row g-3 w-100">
                    @if ($setting->is_show_category == 1)
                        <div class="col-lg-3">
                            @include('includes.categories')
                        </div>
                    @endif
                    <div class="col-lg-9 d-flex justify-content-between">
                        <div class="nav-inner">
                            @include('master.inc.site-menu')
                        </div>
                        @php
                            $free_shipping = DB::table('shipping_services')
                                ->whereStatus(1)
                                ->whereIsCondition(1)
                                ->first();
                        @endphp

                    </div>
                </div>
            </div>
        </div>

    </header>
    <!-- Page Content-->
    @yield('content')
    {{-- Simple Chatbot --}}
    <div class="to-chatbot-wrapper" id="toChatbotWrapper">
        <div class="to-chatbot-window" id="toChatbotWindow">
            <div class="to-chatbot-header">
                <div class="to-chatbot-title">{{ $setting->title }} {{ __('Assistant') }}</div>
                <button type="button" class="to-chatbot-close" id="toChatbotClose">&times;</button>
            </div>
            <div class="to-chatbot-body" id="toChatbotBody">
                <div class="to-chatbot-message bot">
                    {{ __('Hi! How can I help you today? You can ask about orders, shipping, payment, or products.') }}
                </div>
            </div>
            <div class="to-chatbot-footer">
                <input type="text" id="toChatbotInput"
                       placeholder="{{ __('Type your message...') }}">
                <button type="button" id="toChatbotSend">{{ __('Send') }}</button>
            </div>
        </div>
        <button type="button" class="to-chatbot-toggle" id="toChatbotToggle">
            <span>💬</span>
        </button>
    </div>

    <!--    announcement banner section start   -->
    <a class="announcement-banner" href="#announcement-modal"></a>
    <div id="announcement-modal" class="mfp-hide white-popup">
        @if ($setting->announcement_type == 'newletter')
            <div class="announcement-with-content">
                <div class="left-area">
                    <img src="{{ url('/core/public/storage/images/' . $setting->announcement) }}" alt="">
                </div>
                <div class="right-area">
                    <h3 class="">{{ $setting->announcement_title }}</h3>
                    <p>{{ $setting->announcement_details }}</p>
                    <form class="subscriber-form" action="{{ route('front.subscriber.submit') }}" method="post">
                        @csrf
                        <div class="input-group">
                            <input class="form-control" type="email" name="email"
                                placeholder="{{ __('Your e-mail') }}">
                            <span class="input-group-addon"><i class="icon-mail"></i></span>
                        </div>
                        <div aria-hidden="true">
                            <input type="hidden" name="b_c7103e2c981361a6639545bd5_1194bb7544" tabindex="-1">
                        </div>

                        <button class="btn btn-primary btn-block mt-2" type="submit">
                            <span>{{ __('Subscribe') }}</span>
                        </button>
                    </form>
                </div>
            </div>
        @else
            <a href="{{ $setting->announcement_link }}">
                <img src="{{ url('/core/public/storage/images/' . $setting->announcement) }}" alt="">
            </a>
        @endif


    </div>
    <!--    announcement banner section end   -->

    <!-- Site Footer-->
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <!-- Contact Info-->
                    <section class="widget widget-light-skin">
                        <h3 class="widget-title">{{ __('Get In Touch') }}</h3>
                        <p class="mb-1"><strong>{{ __('Address') }}: </strong> {!! $setting->footer_address !!}</p>
                        <p class="mb-1"><strong>{{ __('Phone') }}: </strong> {{ $setting->footer_phone }}</p>
                        <p class="mb-1"><strong>{{ __('Email') }}: </strong> {{ $setting->footer_email }}</p>
                        <ul class="list-unstyled text-sm">
                            <li><span class=""><strong>{{ $setting->working_days_from_to }}:
                                    </strong></span>{{ $setting->friday_start }} - {{ $setting->friday_end }}</li>
                        </ul>
                        @php
                            $links = json_decode($setting->social_link, true)['links'];
                            $icons = json_decode($setting->social_link, true)['icons'];

                        @endphp
                        <div class="footer-social-links">
                            @foreach ($links as $link_key => $link)
                                <a href="{{ $link }}"><span><i
                                            class="{{ $icons[$link_key] }}"></i></span></a>
                            @endforeach
                        </div>
                    </section>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <!-- Customer Info-->
                    <div class="widget widget-links widget-light-skin">
                        <h3 class="widget-title">{{ __('Usefull Links') }}</h3>
                        <ul>
                            @if ($setting->is_faq == 1)
                                <li>
                                    <a class="" href="{{ route('front.faq') }}">{{ __('Faq') }}</a>
                                </li>
                            @endif
                            @foreach (DB::table('pages')->wherePos(2)->orwhere('pos', 1)->get() as $page)
                                <li><a href="{{ route('front.page', $page->slug) }}">{{ $page->title }}</a></li>
                            @endforeach

                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <!-- Subscription-->
                    <section class="widget">
                        <h3 class="widget-title">{{ __('Newsletter') }}</h3>
                        <form class="row subscriber-form" action="{{ route('front.subscriber.submit') }}"
                            method="post">
                            @csrf
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <input class="form-control" type="email" name="email"
                                        placeholder="{{ __('Your e-mail') }}">
                                    <span class="input-group-addon"><i class="icon-mail"></i></span>
                                </div>
                                <div aria-hidden="true">
                                    <input type="hidden" name="b_c7103e2c981361a6639545bd5_1194bb7544"
                                        tabindex="-1">
                                </div>

                            </div>
                            <div class="col-sm-12">
                                <button class="btn btn-primary btn-block mt-2" type="submit">
                                    <span>{{ __('Subscribe') }}</span>
                                </button>
                            </div>
                            <div class="col-lg-12">
                                <p class="text-sm opacity-80 pt-2">
                                    {{ __('Subscribe to our Newsletter to receive early discount offers, latest news, sales and promo information.') }}
                                </p>
                            </div>
                        </form>
                        <div class="pt-3"><img class="d-block gateway_image"
                                src="{{ $setting->footer_gateway_img ? url('/core/public/storage/images/' . $setting->footer_gateway_img) : asset('system/resources/assets/images/placeholder.png') }}">
                        </div>
                    </section>
                </div>
            </div>
            <!-- Copyright-->
            <p class="footer-copyright"> {{ $setting->copy_right }}</p>
        </div>
    </footer>

    <!-- Back To Top Button-->
    <a class="scroll-to-top-btn" href="#">
        <i class="icon-chevron-up"></i>
    </a>

    <!-- Mobile Bottom Navigation Bar -->
    <nav class="mobile-bottom-nav">
        <a href="{{route('front.index')}}">
            <i class="icon-home"></i>
            <span>{{ __('Home') }}</span>
        </a>
        <a href="{{ route('front.catalog') }}" class="{{ request()->routeIs('front.catalog*') ? 'active' : '' }}">
            <i class="icon-shopping-bag"></i>
            <span>{{ __('Store') }}</span>
        </a>
        
        <a href="{{ route('user.wishlist.index') }}" class="{{ request()->routeIs('user.wishlist*') ? 'active' : '' }}">
            <i class="icon-heart"></i>
            <span>{{ __('Wishlist') }}</span>
        </a>
        @if (Auth::check())
            <a href="{{ route('user.dashboard') }}" class="{{ request()->routeIs('user.dashboard*') ? 'active' : '' }}">
                <i class="icon-user"></i>
                <span>{{ __('Account') }}</span>
            </a>
        @else
            <a href="{{ route('user.login') }}" class="{{ request()->routeIs('user.login*') ? 'active' : '' }}">
                <i class="icon-user"></i>
                <span>{{ __('Account') }}</span>
            </a>
        @endif
        <button type="button" class="mbn-categories-btn mobile-menu-toggle">
            <i class="icon-menu"></i>
            <span>{{ __('Categories') }}</span>
        </button>
    </nav>
    <!-- Mobile Bottom Navigation Bar End -->

    <!-- Backdrop-->
    <div class="site-backdrop"></div>

    <!-- Cookie alert dialog  -->
    @if ($setting->is_cookie == 1)
        @include('cookie-consent::index')
    @endif
    <!-- Cookie alert dialog  -->


    @php
        $mainbs = [];
        $mainbs['is_announcement'] = $setting->is_announcement;
        $mainbs['announcement_delay'] = $setting->announcement_delay;
        $mainbs['overlay'] = $setting->overlay;
        $mainbs = json_encode($mainbs);
    @endphp

    <script>
        var mainbs = {!! $mainbs !!};
        var decimal_separator = '{!! $setting->decimal_separator !!}';
        var thousand_separator = '{!! $setting->thousand_separator !!}';
    </script>

    <script>
        let language = {
            Days: '{{ __('Days') }}',
            Hrs: '{{ __('Hrs') }}',
            Min: '{{ __('Min') }}',
            Sec: '{{ __('Sec') }}',
        }
    </script>



    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script type="text/javascript" src="{{ asset('assets/front/js/plugins.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/back/js/plugin/bootstrap-notify/bootstrap-notify.min.js') }}">
    </script>
    <script type="text/javascript" src="{{ asset('assets/front/js/scripts.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/js/lazy.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/js/lazy.plugin.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/js/myscript.js') }}"></script>
    @yield('script')

    @if ($setting->is_facebook_messenger == '1')
        <!-- Messenger Chat Plugin Code -->
        <div id="fb-root"></div>

        <!-- Your Chat Plugin code -->
        <div id="fb-customer-chat" class="fb-customerchat">
        </div>

        <script>
            var chatbox = document.getElementById('fb-customer-chat');
            chatbox.setAttribute("page_id", "{{ $setting->facebook_messenger }}");
            chatbox.setAttribute("attribution", "biz_inbox");
            window.fbAsyncInit = function() {
                FB.init({
                    xfbml: true,
                    version: 'v11.0'
                });
            };

            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
    @endif



    <script type="text/javascript">
        let mainurl = '{{ route('front.index') }}';

        let view_extra_index = 0;
        // Notifications
        function SuccessNotification(title) {
            $.notify({
                title: ` <strong>${title}</strong>`,
                message: '',
                icon: 'fas fa-check-circle'
            }, {
                element: 'body',
                position: null,
                type: "success",
                allow_dismiss: true,
                newest_on_top: false,
                showProgressbar: false,
                placement: {
                    from: "top",
                    align: "right"
                },
                offset: 20,
                spacing: 10,
                z_index: 1031,
                delay: 5000,
                timer: 1000,
                url_target: '_blank',
                mouse_over: null,
                animate: {
                    enter: 'animated fadeInDown',
                    exit: 'animated fadeOutUp'
                },
                onShow: null,
                onShown: null,
                onClose: null,
                onClosed: null,
                icon_type: 'class'
            });
        }

        function DangerNotification(title) {
            $.notify({
                // options
                title: ` <strong>${title}</strong>`,
                message: '',
                icon: 'fas fa-exclamation-triangle'
            }, {
                // settings
                element: 'body',
                position: null,
                type: "danger",
                allow_dismiss: true,
                newest_on_top: false,
                showProgressbar: false,
                placement: {
                    from: "top",
                    align: "right"
                },
                offset: 20,
                spacing: 10,
                z_index: 1031,
                delay: 5000,
                timer: 1000,
                url_target: '_blank',
                mouse_over: null,
                animate: {
                    enter: 'animated fadeInDown',
                    exit: 'animated fadeOutUp'
                },
                onShow: null,
                onShown: null,
                onClose: null,
                onClosed: null,
                icon_type: 'class'
            });
        }
        // Notifications Ends
    </script>

    @if (Session::has('error'))
        <script>
            $(document).ready(function() {
                DangerNotification('{{ Session::get('error') }}')
            })
        </script>
    @endif
    @if (Session::has('success'))
        <script>
            $(document).ready(function() {
                SuccessNotification('{{ Session::get('success') }}');
            })
        </script>
    @endif

    <script>
        (function() {
            const wrapper = document.getElementById('toChatbotWrapper');
            if (!wrapper) return;

            const win = document.getElementById('toChatbotWindow');
            const toggle = document.getElementById('toChatbotToggle');
            const closeBtn = document.getElementById('toChatbotClose');
            const body = document.getElementById('toChatbotBody');
            const input = document.getElementById('toChatbotInput');
            const sendBtn = document.getElementById('toChatbotSend');

            // FAQ data (from your JSON)
            const faqData = [
                {
                    question: "How can I place an order?",
                    answer: "You can place an order by selecting your desired products, adding them to the cart, and completing the checkout process."
                },
                {
                    question: "What payment methods do you accept?",
                    answer: "We accept credit and debit cards, mobile banking, and cash on delivery."
                },
                {
                    question: "How can I check my order status?",
                    answer: "You can check your order status from the 'My Orders' section or by contacting support with your Order ID."
                },
                {
                    question: "How long does delivery take?",
                    answer: "Delivery usually takes 3 to 7 business days depending on your location."
                },
                {
                    question: "What should I do if my order is delayed?",
                    answer: "If your order is delayed, please contact our support team with your Order ID for assistance."
                },
                {
                    question: "What if I receive a damaged product?",
                    answer: "If you receive a damaged product, please request a return or refund within 7 days of delivery."
                },
                {
                    question: "How can I return a product?",
                    answer: "You can request a return from your account or contact customer support within the return period."
                },
                {
                    question: "When will I receive my refund?",
                    answer: "Refunds are usually processed within 5 to 10 business days after the returned item is received."
                },
                {
                    question: "Can I cancel my order?",
                    answer: "Yes, you can cancel your order before it is shipped from the order details page."
                },
                {
                    question: "Do you offer cash on delivery?",
                    answer: "Yes, we offer cash on delivery in selected locations."
                },
                {
                    question: "How can I contact customer support?",
                    answer: "You can contact customer support via live chat, email, or the contact form on our website."
                },
                {
                    question: "Do you provide international shipping?",
                    answer: "Currently, we only provide domestic shipping."
                },
                {
                    question: "Is my payment information secure?",
                    answer: "Yes, all payments are processed securely using encrypted payment gateways."
                },
                {
                    question: "How can I apply a promo code?",
                    answer: "You can apply a promo code during checkout before completing your payment."
                },
                {
                    question: "Can I change my delivery address after placing an order?",
                    answer: "Address changes are possible before the order is shipped. Please contact support as soon as possible."
                },
                {
                    question: "What are your customer support hours?",
                    answer: "Our customer support team is available from 9 AM to 6 PM, Saturday to Thursday."
                }
            ];

            const defaultAnswer = "{{ __('I am a simple assistant and may not understand everything yet. Please describe your question in a different way or contact us via the Contact page for more help.') }}";

            function toggleWindow(open) {
                if (!win) return;
                if (open === true || (open === undefined && win.style.display === 'none')) {
                    win.style.display = 'flex';
                } else {
                    win.style.display = 'none';
                }
            }

            function addMessage(text, type) {
                if (!body) return;
                const msg = document.createElement('div');
                msg.className = 'to-chatbot-message ' + (type === 'user' ? 'user' : 'bot');
                msg.textContent = text;
                body.appendChild(msg);
                body.scrollTop = body.scrollHeight;
            }

            function buildReply(question) {
                const q = question.toLowerCase();

                // Try exact / partial match with your FAQ questions
                for (let i = 0; i < faqData.length; i++) {
                    const qText = faqData[i].question.toLowerCase();
                    if (q === qText || q.includes(qText) || qText.includes(q)) {
                        return faqData[i].answer;
                    }
                }

                // Loose keyword-based match (split user text and see if most words appear in a FAQ question)
                const words = q.split(/\s+/).filter(Boolean);
                let bestMatch = null;
                let bestScore = 0;

                faqData.forEach(item => {
                    const qWords = item.question.toLowerCase().split(/\s+/);
                    let score = 0;

                    words.forEach(w => {
                        if (w.length > 2 && qWords.some(qw => qw.includes(w))) {
                            score++;
                        }
                    });

                    if (score > bestScore) {
                        bestScore = score;
                        bestMatch = item;
                    }
                });

                if (bestMatch && bestScore >= 2) {
                    return bestMatch.answer;
                }

                return defaultAnswer;
            }

            function handleSend() {
                if (!input) return;
                const value = input.value.trim();
                if (!value) return;
                addMessage(value, 'user');
                input.value = '';

                setTimeout(function() {
                    addMessage(buildReply(value), 'bot');
                }, 500);
            }

            if (toggle) {
                toggle.addEventListener('click', function() {
                    toggleWindow();
                });
            }

            if (closeBtn) {
                closeBtn.addEventListener('click', function() {
                    toggleWindow(false);
                });
            }

            if (sendBtn) {
                sendBtn.addEventListener('click', handleSend);
            }

            if (input) {
                input.addEventListener('keydown', function(e) {
                    if (e.key === 'Enter') {
                        e.preventDefault();
                        handleSend();
                    }
                });
            }
        })();
    </script>

    <script>
        // Mobile Bottom Nav - Search trigger
        (function() {
            var mbnSearch = document.getElementById('mbnSearchTrigger');
            if (mbnSearch) {
                mbnSearch.addEventListener('click', function(e) {
                    e.preventDefault();
                    // Trigger the existing close-m-serch toggle (search box open)
                    var searchToggle = document.querySelector('.toolbar-item.close-m-serch.visible-on-mobile a');
                    if (searchToggle) {
                        searchToggle.click();
                    }
                });
            }
        })();
    </script>

</body>

</html>
