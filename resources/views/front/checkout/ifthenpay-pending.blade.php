@extends('master.front')

@section('title')
    {{ __('IfthenPay Pending') }}
@endsection

@section('content')
    <div class="page-title">
        <div class="container">
            <div class="column">
                <ul class="breadcrumbs">
                    <li><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>
                    <li class="separator"></li>
                    <li>{{ __('Payment Pending') }}</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container padding-bottom-3x mb-1">
        <div class="card text-center">
            <div class="card-body">
                <h3 class="card-title text-warning">{{ __('Your order is waiting for payment confirmation') }}</h3>
                <p class="card-text">{{ $message }}</p>
                <p class="card-text">
                    {{ __('Your order number is') }}
                    <span class="text-medium">{{ $order->transaction_number }}</span>
                </p>
                <p class="card-text">
                    {{ __('Payment method') }}:
                    <span class="text-medium">{{ $order->payment_method }}</span>
                </p>
                <div class="padding-top-1x padding-bottom-1x">
                    <a class="btn btn-primary m-2" href="{{ route('front.catalog') }}">
                        <span>{{ __('Continue Shopping') }}</span>
                    </a>
                    <a class="btn btn-outline-primary m-2" href="{{ route('front.order.track') }}">
                        <span>{{ __('Track Order') }}</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
@endsection
