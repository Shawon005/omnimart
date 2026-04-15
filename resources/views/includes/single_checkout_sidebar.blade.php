<aside class="sidebar">
    <div class="padding-top-2x hidden-lg-up"></div>
    <!-- Items in Cart Widget-->

    <section class="card widget widget-featured-posts widget-order-summary p-4">
        <h3 class="widget-title">{{ __('Order Summary') }}</h3>
        @php
            $free_shipping = DB::table('shipping_services')->whereStatus(1)->whereIsCondition(1)->first();
        @endphp

        @if ($free_shipping)
            @if ($free_shipping->minimum_price >= $cart_total)
                <p class="free-shippin-aa"><em>{{ __('Free Shipping After Order') }}
                        {{ PriceHelper::setCurrencyPrice($free_shipping->minimum_price) }}</em></p>
            @endif
        @endif

        <table class="table">
            <tr>
                <td>{{ __('Cart subtotal') }}:</td>
                <td class="text-gray-dark">{{ PriceHelper::setCurrencyPrice($cart_total) }}</td>
            </tr>

            @if ($tax != 0)
                <tr>
                    <td>{{ __('Estimated tax') }}:</td>
                    <td class="text-gray-dark">{{ PriceHelper::setCurrencyPrice($tax) }}</td>
                </tr>
            @endif

            @if ($discount)
                <tr>
                    <td>{{ __('Coupon discount') }}:</td>
                    <td class="text-danger">-
                        {{ PriceHelper::setCurrencyPrice($discount ? $discount['discount'] : 0) }}</td>
                </tr>
            @endif

            @if ($shipping)
                <tr class="d-none set__shipping_price_tr">
                    <td>{{ __('Shipping') }}:</td>
                    <td class="text-gray-dark set__shipping_price">
                        {{ PriceHelper::setCurrencyPrice($shipping ? $shipping->price : 0) }}</td>
                </tr>
            @endif
            <tr>
                <td class="text-lg text-primary">{{ __('Order total') }}</td>
                <td class="text-lg text-primary grand_total_set">{{ PriceHelper::setCurrencyPrice($grand_total) }}
                </td>
            </tr>
        </table>
    </section>

    @if (PriceHelper::CheckDigital() == true)
    <section class="card widget widget-featured-posts widget-order-summary p-4">
        <h3 class="widget-title">{{ __('Shipping Options') }}</h3>
        <div class="row">
            <div class="col-sm-12 mb-3">
                @if (PriceHelper::CheckDigital() == true)
                    @php
                        $free_shipping = DB::table('shipping_services')->whereStatus(1)->whereIsCondition(1)->first();
                    @endphp

                    <select name="shipping_id" class="form-control" id="shipping_id_select" required
                        data-base-grand-total="{{ PriceHelper::setCurrencyPrice($grand_total) }}">
                        <option value="" selected disabled>{{ __('Select Shipping Method') }}*</option>
                        @foreach (DB::table('shipping_services')->whereStatus(1)->get() as $shipping)
                            @if ($shipping->id == 1 && isset($free_shipping) && $free_shipping->minimum_price <= $cart_total)
                                <option value="{{ $shipping->id }}" data-href="{{ route('front.shipping.setup') }}"
                                    data-title="{{ $shipping->title }}">
                                    {{ $shipping->title }}
                                </option>
                            @else
                                @if ($shipping->id != 1 && $free_shipping->minimum_price >= $cart_total)
                                    <option value="{{ $shipping->id }}"
                                        data-href="{{ route('front.shipping.setup') }}"
                                        data-title="{{ $shipping->title }}">{{ $shipping->title }}
                                        ({{ PriceHelper::setCurrencyPrice($shipping->price) }})
                                    </option>
                                @endif
                            @endif
                        @endforeach
                    </select>
                    @error('shipping_id')
                        <p class="text-danger shipping_message">{{ $message }}</p>
                    @enderror

                @endif
            </div>
            <div class="col-sm-12 mb-3"></div>
        </div>

    </section>
    @endif



    <!-- Order Summary Widget-->
    <section class="card widget  widget-order-summary p-4 mb-0">
        <h3 class="widget-title">{{ __('Pay now') }}</h3>
        <div class="row">
            <div class="col-sm-12">
                @php
                    $ifthenpayPayment = App\Models\PaymentSetting::where('unique_keyword', 'ifthenpay')->first();
                    $ifthenpayData = $ifthenpayPayment ? $ifthenpayPayment->convertJsonData() : [];
                    $ifthenpayOptions = [];
                    if (!empty($ifthenpayData['credit_card_key'])) {
                        $ifthenpayOptions['CCARD'] = __('Credit Or Debit Card');
                    }
                    if (!empty($ifthenpayData['multibanco_entity']) && !empty($ifthenpayData['multibanco_sub_entity'])) {
                        $ifthenpayOptions['MB'] = __('Multibanco');
                    }
                    if (!empty($ifthenpayData['mbway_key'])) {
                        $ifthenpayOptions['MBWAY'] = __('MB WAY');
                    }
                    if (!empty($ifthenpayData['payshop_key'])) {
                        $ifthenpayOptions['PAYSHOP'] = __('Payshop');
                    }
                @endphp

                @if ($ifthenpayPayment && count($ifthenpayOptions))
                    <p class="checkout-paynow-helper">{{ __('Choose your preferred IfthenPay payment option below.') }}</p>
                    <div class="ifthenpay-suboptions" id="single_ifthenpay_suboptions">
                        @include('includes.ifthenpay-option-radios', [
                            'ifthenpayOptions' => $ifthenpayOptions,
                            'ifthenpayData' => $ifthenpayData,
                            'ifthenpayFieldName' => 'single_checkout_ifthenpay_option',
                            'ifthenpayIdPrefix' => 'single-checkout-ifthenpay',
                            'selectedIfthenpayOption' => $ifthenpayData['default_method'] ?? 'CCARD',
                        ])
                    </div>

                    <form id="single_checkout_ifthenpay_form" class="d-none"
                        action="{{ route('front.ifthenpay.submit') }}" method="POST">
                        @csrf
                        <input type="hidden" name="payment_method" value="IfthenPay">
                        <input type="hidden" name="single_page_checkout" value="1">
                        <input type="hidden" name="shipping_id" value="" class="shipping_id_setup">
                        <input type="hidden" name="state_id" value="" class="state_id_setup">
                        <input type="hidden" name="ifthenpay_option" id="single_checkout_ifthenpay_option_input"
                            value="{{ $ifthenpayData['default_method'] ?? 'CCARD' }}">
                    </form>
                @else
                    <p class="text-danger mb-0">{{ __('IfthenPay payment options are not configured yet.') }}</p>
                @endif

                @if ($setting->is_privacy_trams == 1)
                    <div class="form-group mt-4">
                        <div class="custom-control d-flex custom-checkbox">
                            <input class="custom-control-input me-2" type="checkbox" id="trams__condition_single"
                                value="">
                            <label class="custom-control-label flex-1" for="trams__condition"> The <a href="{{ $setting->policy_link }}" target="_blank">Privacy Policy</a> and <a
                                    href="{{ $setting->terms_link }}" target="_blank">Terms of Service</a>
                                apply.</label>
                        </div>
                    </div>
                @endif

                <button id="single_checkout_payment" {{ $setting->is_privacy_trams == 1 ? 'disabled' : '' }}
                    class="btn btn-primary mt-4 single_checkout_payment" type="submit"><span>@lang('Pay now')</span></button>
            </div>

        </div>
    </section>

</aside>

<script>
    (function() {
        "use strict";

        function notifyError(message) {
            if (typeof window.DangerNotification === 'function') {
                window.DangerNotification(message);
                return;
            }

            alert(message);
        }

        function fieldHasValue(selector) {
            const field = document.querySelector(selector);

            if (!field) {
                return true;
            }

            return String(field.value || '').trim() !== '';
        }

        function emailLooksValid(value) {
            return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
        }

        function syncSelectedCards() {
            document.querySelectorAll('.ifthenpay-option-card').forEach(function(card) {
                card.classList.remove('is-selected');
            });

            document.querySelectorAll('input[name="single_checkout_ifthenpay_option"]:checked').forEach(function(input) {
                const card = input.closest('.ifthenpay-option-card');
                if (card) {
                    card.classList.add('is-selected');
                }
            });
        }

        function isSingleCheckoutReady() {
            let ready = true;

            ready = ready && fieldHasValue('#checkout-fn');
            ready = ready && fieldHasValue('#checkout-ln');
            ready = ready && fieldHasValue('#checkout_email_billing');
            ready = ready && fieldHasValue('#checkout-phone');

            const emailField = document.querySelector('#checkout_email_billing');
            if (emailField) {
                ready = ready && emailLooksValid(String(emailField.value || '').trim());
            }

            if (document.querySelector('#checkout-address1')) {
                ready = ready && fieldHasValue('#checkout-address1');
                ready = ready && fieldHasValue('#checkout-zip');
                ready = ready && fieldHasValue('#checkout-city');
                ready = ready && fieldHasValue('#checkout-state');
            }

            const shippingField = document.querySelector('#shipping_id_select');
            if (shippingField) {
                ready = ready && String(shippingField.value || '').trim() !== '';
            }

            ready = ready && !!document.querySelector('input[name="single_checkout_ifthenpay_option"]:checked');

            const termsField = document.querySelector('#trams__condition_single');
            if (termsField) {
                ready = ready && termsField.checked;
            }

            return ready;
        }

        function syncSingleCheckoutButton() {
            const button = document.querySelector('.single_checkout_payment');
            if (button) {
                button.disabled = !isSingleCheckoutReady();
            }
        }

        function autoSelectSingleCheckoutShipping() {
            
            const shippingField = document.querySelector('#shipping_id_select');
            const countryField = document.querySelector('#billing-country');
            const postalField = document.querySelector('#checkout-zip');

            if (!shippingField || !countryField || !postalField || typeof window.applyAutoShippingSelection !== 'function') { 
                return;
            }

            window.applyAutoShippingSelection(shippingField, {
                country: countryField.value,
                postalCode: postalField.value
            });
        }

        function appendCheckoutBillingInputs(form) {
            form.querySelectorAll('.dynamic-checkout-input').forEach(function(input) {
                input.remove();
            });

            const billingForm = document.querySelector('#checkoutBilling');
            if (!billingForm) {
                return;
            }

            billingForm.querySelectorAll('input, select, textarea').forEach(function(field) {
                const fieldName = field.getAttribute('name');
                const fieldType = String(field.getAttribute('type') || '').toLowerCase();

                if (!fieldName) {
                    return;
                }

                if ((fieldType === 'checkbox' || fieldType === 'radio') && !field.checked) {
                    return;
                }

                const hiddenInput = document.createElement('input');
                hiddenInput.type = 'hidden';
                hiddenInput.name = fieldName;
                hiddenInput.value = field.value;
                hiddenInput.className = 'dynamic-checkout-input';
                form.appendChild(hiddenInput);
            });
        }

        function initSingleCheckoutIfthenpay() {
            const submitButton = document.querySelector('#single_checkout_payment');
            const hiddenIfthenpayOptionInput = document.querySelector('#single_checkout_ifthenpay_option_input');
            const ifthenpayForm = document.querySelector('#single_checkout_ifthenpay_form');

            document.querySelectorAll('input[name="single_checkout_ifthenpay_option"]').forEach(function(input) {
                input.addEventListener('change', function() {
                    if (hiddenIfthenpayOptionInput) {
                        hiddenIfthenpayOptionInput.value = input.value;
                    }
                    syncSelectedCards();
                    syncSingleCheckoutButton();
                });
            });

            document.querySelectorAll('#checkoutBilling input, #checkoutBilling select, #checkoutBilling textarea, #shipping_id_select, #trams__condition_single').forEach(function(field) {
                field.addEventListener('input', syncSingleCheckoutButton);
                field.addEventListener('change', syncSingleCheckoutButton);
            });

            const countryField = document.querySelector('#billing-country');
            const postalField = document.querySelector('#checkout-zip');

            [countryField, postalField].forEach(function(field) {
                if (!field) {
                    return;
                }

                field.addEventListener('input', autoSelectSingleCheckoutShipping);
                field.addEventListener('change', autoSelectSingleCheckoutShipping);
            });

            if (submitButton) {
                submitButton.addEventListener('click', function(e) {
                    e.preventDefault();

                    if (!fieldHasValue('#checkout-fn') || !fieldHasValue('#checkout-ln') || !fieldHasValue('#checkout_email_billing') || !fieldHasValue('#checkout-phone')) {
                        notifyError('{{ __('Please complete your billing information first.') }}');
                        return;
                    }

                    const emailField = document.querySelector('#checkout_email_billing');
                    if (emailField && !emailLooksValid(String(emailField.value || '').trim())) {
                        notifyError('{{ __('Please enter a valid email address.') }}');
                        return;
                    }

                    if (document.querySelector('#checkout-address1') && (!fieldHasValue('#checkout-address1') || !fieldHasValue('#checkout-zip') || !fieldHasValue('#checkout-city') || !fieldHasValue('#checkout-state'))) {
                        notifyError('{{ __('Please complete your address details first.') }}');
                        return;
                    }

                    const shippingField = document.querySelector('#shipping_id_select');
                    if (shippingField && String(shippingField.value || '').trim() === '') {
                        notifyError('{{ __('Please select your shipping method.') }}');
                        return;
                    }

                    const selectedIfthenpayOption = document.querySelector('input[name="single_checkout_ifthenpay_option"]:checked');
                    if (!selectedIfthenpayOption) {
                        notifyError('{{ __('Please select an IfthenPay payment option.') }}');
                        return;
                    }

                    const termsField = document.querySelector('#trams__condition_single');
                    if (termsField && !termsField.checked) {
                        notifyError('{{ __('Please accept the terms and privacy notice first.') }}');
                        return;
                    }

                    if (!ifthenpayForm) {
                        notifyError('{{ __('IfthenPay is not available right now.') }}');
                        return;
                    }

                    if (hiddenIfthenpayOptionInput) {
                        hiddenIfthenpayOptionInput.value = selectedIfthenpayOption.value;
                    }

                    appendCheckoutBillingInputs(ifthenpayForm);
                    ifthenpayForm.submit();
                });
            }

            syncSelectedCards();
            autoSelectSingleCheckoutShipping();
            syncSingleCheckoutButton();
        }

        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', initSingleCheckoutIfthenpay);
        } else {
            initSingleCheckoutIfthenpay();
        }
    })();
</script>
