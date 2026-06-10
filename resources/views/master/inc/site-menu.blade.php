
@php
  
    $links = json_decode($menus->menus, true);
    $menuCategories = \App\Models\Category::with(['subcategory' => function ($query) {
            $query->where('status', 1)->orderBy('name', 'asc');
        }])
        ->where('status', 1)
        ->orderBy('serial', 'asc')
        ->take(2)
        ->get();

    $extractCategorySlug = function ($url) {
        if (empty($url)) {
            return null;
        }

        $query = parse_url($url, PHP_URL_QUERY);
        if (empty($query)) {
            return null;
        }

        parse_str($query, $params);

        return !empty($params['category']) ? $params['category'] : null;
    };
 
@endphp

<nav class="site-menu">
    <ul>
        @php $categoryItemsInjected = false; @endphp
      
        @foreach ($links as $link)
            @php
             $href = Helper::getHref($link); 
             $resolvedHref = $link["href"] == null ? $href : $link["href"];
            
            @endphp

            @if (!array_key_exists("children",$link))
                <li class="@if($href == URL::current() ) active  @endif">
                    <a href="{{ $resolvedHref }}" target="{{$link["target"]}}">{{$link["text"]}}</a>
                </li>
            @else
                <li class="t-h-dropdown">
                    <a class="main-link" href="{{ $resolvedHref }}" {{$link["target"]}}>{{$link["text"]}}<i class="icon-chevron-down"></i></a>

                    <div class="t-h-dropdown-menu">
                        @php
                            $level2CategorySlugs = [];

                            foreach ($link["children"] as $childLink) {
                                $childHref = $childLink["href"] == null ? Helper::getHref($childLink) : $childLink["href"];
                                $childCategorySlug = $extractCategorySlug($childHref);

                                if (!empty($childCategorySlug) && !in_array($childCategorySlug, $level2CategorySlugs) && count($level2CategorySlugs) < 2) {
                                    $level2CategorySlugs[] = $childCategorySlug;
                                }
                            }

                            $level2CategoryMap = [];

                            if (!empty($level2CategorySlugs)) {
                                $level2CategoryMap = \App\Models\Category::with(['subcategory' => function ($query) {
                                        $query->where('status', 1)->orderBy('name', 'asc');
                                    }])
                                    ->whereIn('slug', $level2CategorySlugs)
                                    ->where('status', 1)
                                    ->get()
                                    ->keyBy('slug');
                            }
                        @endphp

                        @foreach ($link["children"] as $level2)

                        @php
                            $l2Href = $level2["href"] == null ? Helper::getHref($level2) : $level2["href"];
                            $l2CategorySlug = $extractCategorySlug($l2Href);
                            $l2Category = !empty($l2CategorySlug) && isset($level2CategoryMap[$l2CategorySlug]) ? $level2CategoryMap[$l2CategorySlug] : null;
                            $l2Subcategories = $l2Category ? $l2Category->subcategory : collect();
                        @endphp

                        @if ($l2Subcategories->isNotEmpty())
                            <div class="t-h-dropdown sub-dropdown">
                                <a class="main-link @if($l2Href == URL::current() ) active  @endif" href="{{$l2Href}}" target="{{$level2["target"]}}">
                                    <i class="icon-chevron-right pr-2"></i>
                                    {{$level2["text"]}}
                                    <i class="icon-chevron-right pl-2"></i>
                                </a>
                                <div class="t-h-dropdown-menu" style="left: 100%; top: 0;">
                                    @foreach ($l2Subcategories as $subcategory)
                                        <a class="@if(request('subcategory') == $subcategory->slug) active @endif" href="{{ route('front.catalog').'?subcategory='.$subcategory->slug }}">
                                            <i class="icon-chevron-right pr-2"></i>
                                            {{ $subcategory->name }}
                                        </a>
                                    @endforeach
                                </div>
                            </div>
                        @else
                            <a class="@if($l2Href == URL::current() ) active  @endif" href="{{$l2Href}}" target="{{$level2["target"]}}">
                                <i class="icon-chevron-right pr-2"></i>
                                {{$level2["text"]}}
                            </a>
                        @endif
                        @endforeach
                    </div>

                </li>
            @endif

            @if (!$categoryItemsInjected && ($link["type"] ?? null) == 'shop' && $menuCategories->isNotEmpty())
                @foreach ($menuCategories as $menuCategory)
                    <li class="t-h-dropdown">
                        <a class="main-link @if(request('category') == $menuCategory->slug) active @endif" href="{{ route('front.catalog').'?category='.$menuCategory->slug }}">
                            {{ $menuCategory->name }}
                            @if ($menuCategory->subcategory->isNotEmpty())
                                <i class="icon-chevron-down"></i>
                            @endif
                        </a>
                        @if ($menuCategory->subcategory->isNotEmpty())
                            <div class="t-h-dropdown-menu">
                                @foreach ($menuCategory->subcategory as $subcategory)
                                    <a class="@if(request('subcategory') == $subcategory->slug) active @endif" href="{{ route('front.catalog').'?subcategory='.$subcategory->slug }}">
                                        <i class="icon-chevron-right pr-2"></i>
                                        {{ $subcategory->name }}
                                    </a>
                                @endforeach
                            </div>
                        @endif
                    </li>
                @endforeach
                @php $categoryItemsInjected = true; @endphp
            @endif

        @endforeach
    </ul>
</nav>
