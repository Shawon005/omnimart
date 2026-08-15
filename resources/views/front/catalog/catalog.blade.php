<div class="row g-3" id="main_div">
    @if($items->count() > 0)
        @if ($checkType != 'list')
            @foreach ($items as $item)
            @php
                $availableStock = $item->available_stock;
                $hasAvailableStock = $availableStock === 'unlimited' || $availableStock > 0;
            @endphp
            <div class="col-xxl-3 col-md-4 col-6">
                <div class="product-card ">
                <a href="{{route('front.product',$item->slug)}}">
                    @if ($hasAvailableStock)
                        <div class="product-badge
                            @if($item->is_type == 'feature')
                            bg-warning
                            @elseif($item->is_type == 'new')
                            bg-success
                            @elseif($item->is_type == 'top')
                            bg-info
                            @elseif($item->is_type == 'best')
                            bg-dark
                            @elseif($item->is_type == 'flash_deal')
                            bg-success
                            @endif
                            "> {{ __($item->is_type != 'undefine' ?  (str_replace('_',' ',__("$item->is_type"))) : '') }}
                        </div>
                    @else
                    <div class="product-badge bg-secondary border-default  text-danger 
                    "><b>{{__('out of stock')}}</b></div>
                    @endif

                    @if($item->previous_price && $item->previous_price !=0)
                    <div class="product-badge product-badge2 bg-info"> -{{PriceHelper::DiscountPercentage($item)}}</div>
                    @endif
                    <div class="product-thumb">
                        <img class="lazy" data-src="{{url('/core/public/storage/images/'.$item->thumbnail)}}" alt="{{ $item->alt_text ?? 'Product' }}">
                        <div class="product-button-group">
                            <a class="product-button wishlist_store" href="{{route('user.wishlist.store',$item->id)}}" title="{{__('Wishlist')}}"><i class="icon-heart"></i></a>
                            <a class="product-button product_compare" href="javascript:;" data-target="{{route('fornt.compare.product',$item->id)}}" title="{{__('Compare')}}"><i class="icon-repeat"></i></a>
                            @include('includes.item_footer',['sitem' => $item])
                        </div>
                    </div>
                    <div class="product-card-body">
                        <div class="product-category">
                            <a href="{{route('front.catalog').'?category='.$item->category->slug}}">{{$item->category->name}}</a>
                        </div>
                        <h3 class="product-title"><a href="{{route('front.product',$item->slug)}}">
                            {{ Str::limit($item->name, 55) }}
                        </a></h3>
                        <div class="rating-stars">
                            {!! Helper::renderStarRating($item->reviews->avg('rating'))!!}
                        </div>
                        <h4 class="product-price">
                            @if ($item->previous_price !=0)
                            <del>{{PriceHelper::setPreviousPrice($item->previous_price)}}</del>
                            @endif
                            {{PriceHelper::grandCurrencyPrice($item)}}
                        </h4>
                        <!-- <div class="small {{ $hasAvailableStock ? 'text-success' : 'text-danger' }}">
                            @if ($hasAvailableStock)
                                {{ __('In Stock') }}:
                                {{ $availableStock === 'unlimited' ? __('Unlimited') : $availableStock }}
                                @if ($availableStock !== 'unlimited')
                                    {{ __('items') }}
                                @endif
                            @else
                                {{ __('Out of stock') }}
                            @endif
                        </div> -->
                    </div>
                    </a>
                </div>
            </div>
            @endforeach
        @else
            @foreach ($items as $item)
                @php
                    $availableStock = $item->available_stock;
                    $hasAvailableStock = $availableStock === 'unlimited' || $availableStock > 0;
                @endphp
                <div class="col-lg-12">
                    <div class="product-card product-list">
                        <div class="product-thumb" >
                        @if ($hasAvailableStock)

                            <div class="product-badge
                                @if($item->is_type == 'feature')
                                bg-warning
                                @elseif($item->is_type == 'new')
                                bg-danger
                                @elseif($item->is_type == 'top')
                                bg-info
                                @elseif($item->is_type == 'best')
                                bg-dark
                                @elseif($item->is_type == 'flash_deal')
                                bg-success
                                @endif
                                ">{{ __($item->is_type != 'undefine' ?  ucfirst(str_replace('_',' ',$item->is_type)) : '') }}
                            </div>
                            @else
                            <div class="product-badge bg-secondary border-default text-body
                            ">{{__('out of stock')}}</div>
                            @endif
                            @if($item->previous_price && $item->previous_price !=0)
                            <div class="product-badge product-badge2 bg-info"> -{{PriceHelper::DiscountPercentage($item)}}</div>
                            @endif

                            <img class="lazy" data-src="{{url('/core/public/storage/images/'.$item->thumbnail)}}" alt="{{ $item->alt_text ?? 'Product' }}">
                            <div class="product-button-group">
                                <a class="product-button wishlist_store" href="{{route('user.wishlist.store',$item->id)}}" title="{{__('Wishlist')}}"><i class="icon-heart"></i></a>
                                <a data-target="{{route('fornt.compare.product',$item->id)}}" class="product-button product_compare" href="javascript:;" title="{{__('Compare')}}"><i class="icon-repeat"></i></a>
                                @include('includes.item_footer',['sitem' => $item])
                            </div>
                        </div>
                            <div class="product-card-inner">
                                <div class="product-card-body">
                                    <div class="product-category"><a href="{{route('front.catalog').'?category='.$item->category->slug}}">{{$item->category->name}}</a></div>
                                    <h3 class="product-title"><a href="{{route('front.product',$item->slug)}}">
                                        {{ Str::limit($item->name, 55) }}
                                    </a></h3>
                                    <div class="rating-stars">
                                        {!! Helper::renderStarRating($item->reviews->avg('rating')) !!}
                                    </div>
                                    <h4 class="product-price">
                                        @if ($item->previous_price !=0)
                                        <del>{{PriceHelper::setPreviousPrice($item->previous_price)}}</del>
                                        @endif
                                        {{PriceHelper::grandCurrencyPrice($item)}}
                                    </h4>
                                    <div class="small {{ $hasAvailableStock ? 'text-success' : 'text-danger' }}">
                                        @if ($hasAvailableStock)
                                            {{ __('In Stock') }}:
                                            {{ $availableStock === 'unlimited' ? __('Unlimited') : $availableStock }}
                                            @if ($availableStock !== 'unlimited')
                                                {{ __('items') }}
                                            @endif
                                        @else
                                            {{ __('Out of stock') }}
                                        @endif
                                    </div>
                                    <p class="text-sm sort_details_show  text-muted hidden-xs-down my-1">
                                    {{ Str::limit(strip_tags($item->sort_details), 100) }}
                                    </p>
                                </div>


                            </div>
                        </div>
                </div>
            @endforeach
        @endif
    @else
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body text-center">
                    <h4 class="h4 mb-0">{{ __('No Product Found') }}</h4>
                </div>
            </div>
        </div>
    @endif
</div>


<!-- Pagination-->
<div class="row mt-15" id="item_pagination">
    <div class="col-lg-12 text-center">
        {{$items->links()}}
    </div>
</div>

<script type="text/javascript" src="{{asset('assets/front/js/catalog.js')}}"></script>
