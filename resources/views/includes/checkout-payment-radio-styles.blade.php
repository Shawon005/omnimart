<style>
    .checkout-payment-list,
    .ifthenpay-option-list {
        display: flex;
        flex-direction: column;
        gap: 14px;
    }

    .checkout-radio-helper {
        margin-bottom: 12px;
        color: #6c757d;
        font-size: 14px;
    }

    .checkout-radio-card {
        position: relative;
        display: flex;
        align-items: flex-start;
        gap: 14px;
        padding: 18px 18px 16px;
        border: 1px solid #e6e8ec;
        border-radius: 18px;
        background: #fff;
        cursor: pointer;
        transition: border-color 0.2s ease, box-shadow 0.2s ease, transform 0.2s ease;
    }

    .checkout-radio-card:hover {
        border-color: #cfd4dc;
        box-shadow: 0 8px 24px rgba(16, 24, 40, 0.08);
        transform: translateY(-1px);
    }

    .checkout-radio-card.is-selected {
        border-color: #111827;
        box-shadow: 0 12px 30px rgba(17, 24, 39, 0.12);
    }

    .checkout-radio-input {
        position: absolute;
        opacity: 0;
        pointer-events: none;
    }

    .checkout-radio-mark {
        position: relative;
        flex: 0 0 22px;
        width: 22px;
        height: 22px;
        margin-top: 3px;
        border: 2px solid #c6ccd5;
        border-radius: 50%;
        background: #fff;
        transition: border-color 0.2s ease;
    }

    .checkout-radio-input:checked + .checkout-radio-mark {
        border-color: #111827;
    }

    .checkout-radio-input:checked + .checkout-radio-mark::after {
        content: '';
        position: absolute;
        inset: 4px;
        border-radius: 50%;
        background: #111827;
    }

    .checkout-radio-copy {
        display: block;
        min-width: 0;
        flex: 1 1 auto;
    }

    .checkout-radio-title-row {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 12px;
        margin-bottom: 4px;
    }

    .checkout-radio-title {
        display: block;
        color: #111827;
        font-size: 19px;
        font-weight: 700;
        line-height: 1.3;
    }

    .checkout-radio-description {
        display: block;
        color: #6b7280;
        font-size: 14px;
        line-height: 1.65;
    }

    .checkout-radio-logo {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        min-width: 62px;
        min-height: 34px;
        padding: 6px 10px;
        border: 1px solid #d7dce3;
        border-radius: 12px;
        background: #f8fafc;
        color: #355ca8;
        white-space: nowrap;
    }

    .checkout-radio-logo.logo-card {
        position: relative;
        min-width: 58px;
        border-color: #bfd0ea;
        background: linear-gradient(135deg, #edf4ff, #ffffff);
    }

    .checkout-radio-logo.logo-card::before {
        content: '';
        width: 28px;
        height: 18px;
        border: 2px solid #4f77b6;
        border-radius: 4px;
        background: linear-gradient(180deg, #ffffff, #e8f0ff);
        box-shadow: inset 0 5px 0 #4f77b6;
    }

    .checkout-radio-logo.logo-card::after {
        content: '';
        position: absolute;
        width: 12px;
        height: 3px;
        border-radius: 999px;
        background: #4f77b6;
        transform: translate(6px, 5px);
    }

    .checkout-radio-logo.logo-multibanco,
    .checkout-radio-logo.logo-mbway {
        font-size: 18px;
        font-weight: 800;
        letter-spacing: -0.03em;
    }

    .checkout-radio-logo.logo-multibanco {
        color: #1f5fbf;
        background: #f5f9ff;
        border-color: #bdd0f0;
    }

    .checkout-radio-logo.logo-multibanco .checkout-radio-logo-text {
        position: relative;
        padding: 1px 6px;
        border: 2px solid #1f5fbf;
        border-radius: 6px;
    }

    .checkout-radio-logo.logo-mbway {
        color: #c03635;
        background: #fff6f5;
        border-color: #efc2bf;
    }

    .checkout-radio-logo.logo-mbway .checkout-radio-logo-text {
        position: relative;
        padding: 2px 6px;
        border: 2px solid #c03635;
        border-radius: 6px;
        font-size: 13px;
        letter-spacing: 0.02em;
    }

    .checkout-radio-logo.logo-payshop {
        gap: 8px;
        color: #cc3030;
        background: #fff6f6;
        border-color: #f0c7c7;
    }

    .checkout-radio-logo.logo-payshop .checkout-radio-logo-text {
        font-size: 14px;
        font-weight: 800;
        color: #202939;
        letter-spacing: -0.02em;
    }

    .checkout-radio-logo-dotgrid {
        display: grid;
        grid-template-columns: repeat(4, 4px);
        gap: 2px;
    }

    .checkout-radio-logo-dotgrid span {
        width: 4px;
        height: 4px;
        border-radius: 50%;
        background: #cc3030;
    }

    .checkout-paynow-helper {
        margin-bottom: 14px;
        color: #6b7280;
        font-size: 14px;
        line-height: 1.6;
    }

    .ifthenpay-suboptions {
        margin-top: 8px;
    }

    .ifthenpay-option-list .checkout-radio-card {
        padding: 16px;
        border-radius: 16px;
    }

    .ifthenpay-option-list .checkout-radio-title {
        font-size: 17px;
    }

    .ifthenpay-option-list .checkout-radio-description {
        font-size: 13px;
    }

    @media (max-width: 575.98px) {
        .checkout-radio-card {
            padding: 16px 14px;
            border-radius: 16px;
        }

        .checkout-radio-title {
            font-size: 17px;
        }

        .checkout-radio-description {
            font-size: 13px;
        }

        .checkout-radio-title-row {
            align-items: flex-start;
            flex-direction: column;
            gap: 8px;
        }
    }
</style>
