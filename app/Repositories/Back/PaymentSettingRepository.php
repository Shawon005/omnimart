<?php

namespace App\Repositories\Back;

use App\{
    Helpers\ImageHelper,
    Models\PaymentSetting
};

class PaymentSettingRepository
{

    /**
     * Show the data for updating resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function payment()
    {
        $this->ensureIfthenpayGatewayExists();

        $bank = PaymentSetting::whereUniqueKeyword('bank')->first();
        $data['bank'] = $bank;

        $paypal = PaymentSetting::whereUniqueKeyword('paypal')->first();
        $data['paypalData'] = $paypal->convertJsonData();
        $data['paypal'] = $paypal;


        $molly = PaymentSetting::whereUniqueKeyword('mollie')->first();
        $data['mollyData'] = $molly->convertJsonData();
        $data['molly'] = $molly;

        $stripe = PaymentSetting::whereUniqueKeyword('stripe')->first();
        $data['stripeData'] = $stripe->convertJsonData();
        $data['stripe'] = $stripe;

        $paytm = PaymentSetting::whereUniqueKeyword('paytm')->first();
        $data['paytmData'] = $paytm->convertJsonData();
        $data['paytm'] = $paytm;

        $sslcommerz = PaymentSetting::whereUniqueKeyword('sslcommerz')->first();
        $data['sslcommerzData'] = $sslcommerz->convertJsonData();
        $data['sslcommerz'] = $sslcommerz;

        $mercadopago = PaymentSetting::whereUniqueKeyword('mercadopago')->first();
        $data['mercadopagoData'] = $mercadopago->convertJsonData();
        $data['mercadopago'] = $mercadopago;

        $authorize = PaymentSetting::whereUniqueKeyword('authorize')->first();
        $data['authorizeData'] = $authorize->convertJsonData();
        $data['authorize'] = $authorize;

        $flutterwave = PaymentSetting::whereUniqueKeyword('flutterwave')->first();
        $data['flutterwaveData'] = $flutterwave->convertJsonData();
        $data['flutterwave'] = $flutterwave;

        $razorpay = PaymentSetting::whereUniqueKeyword('razorpay')->first();
        $data['razorpayData'] = $razorpay->convertJsonData();
        $data['razorpay'] = $razorpay;

        $paystack = PaymentSetting::whereUniqueKeyword('paystack')->first();
        $data['paystackData'] = $paystack->convertJsonData();
        $data['paystack'] = $paystack;

        $paytabs = PaymentSetting::whereUniqueKeyword('paytabs')->first();
        
        $data['paytabsData'] = $paytabs->convertJsonData();
        $data['paytabs'] = $paytabs;

        $ifthenpay = PaymentSetting::whereUniqueKeyword('ifthenpay')->first();
        $data['ifthenpayData'] = $ifthenpay->convertJsonData();
        $data['ifthenpay'] = $ifthenpay;
     
        $cod = PaymentSetting::whereUniqueKeyword('cod')->first();
        $data['cod'] = $cod;

        return $data;
    }

    /**
     * Update setting.
     *
     * @param  \App\Http\Requests\PaymentSettingRequest  $request
     * @return void
     */

    public function update($request)
    {

        $input = $request->all();
        $pay_data = PaymentSetting::whereUniqueKeyword($input['unique_keyword'])->first();

        if ($file = $request->file('photo')) {
            $input['photo'] = ImageHelper::handleUpdatedUploadedImage($file,'images',$pay_data,'images/','photo');
        }

       
        
        if($request->has('pkey')){

            $info_data = $input['pkey'];

            if($pay_data->unique_keyword == 'mollie'){
                $paydata = $pay_data->convertJsonData();
                $prev = $paydata['key'];
            }

           

            if (array_key_exists("check_sandbox",$info_data)){
                $info_data['check_sandbox'] = 1;
            }else{
                if (strpos($pay_data->information, 'check_sandbox') !== false) {
                    $info_data['check_sandbox'] = 0;
                }
            }

   

            if (array_key_exists("paytm_mode",$info_data)){
                $info_data['paytm_mode'] = 1;
            }else{
                if (strpos($pay_data->information, 'paytm_mode') !== false) {
                    $info_data['paytm_mode'] = 0;
                }
            }

            if (array_key_exists("is_one_time_payment",$info_data)){
                $info_data['is_one_time_payment'] = 1;
            }else{
                if (strpos($pay_data->information, 'is_one_time_payment') !== false) {
                    $info_data['is_one_time_payment'] = 0;
                }
            }

            if (array_key_exists("send_order_email",$info_data)){
                $info_data['send_order_email'] = 1;
            }else{
                if (strpos($pay_data->information, 'send_order_email') !== false) {
                    $info_data['send_order_email'] = 0;
                }
            }

            
        
            $input['information'] = json_encode($info_data);

        }

        if($request->has('status')){
            $input['status'] = 1;
        }else{

            $input['status'] = 0;
        }
        
 
        $pay_data->update($input);

        if($pay_data->unique_keyword == 'mollie'){
            $paydata = $pay_data->convertJsonData();
            $this->setEnv('MOLLIE_KEY',$input['pkey']['key'],$prev);
        }
    }

    private function setEnv($key, $value,$prev)
    {

        file_put_contents(app()->environmentFilePath(), str_replace(
            $key . '=' . $prev,
            $key . '=' . $value,
            file_get_contents(app()->environmentFilePath())
        ));

    }

    private function ensureIfthenpayGatewayExists(): void
    {
        PaymentSetting::firstOrCreate(
            ['unique_keyword' => 'ifthenpay'],
            [
                'name' => 'IfthenPay',
                'information' => json_encode([
                    'backoffice_key' => '',
                    'anti_phishing_key' => '',
                    'gateway_key' => '',
                    'multibanco_entity' => '',
                    'multibanco_sub_entity' => '',
                    'mbway_key' => '',
                    'payshop_key' => '',
                    'credit_card_key' => '',
                    'default_method' => 'CCARD',
                    'language' => 'pt',
                    'days_to_expire' => '3',
                    'is_one_time_payment' => 1,
                    'send_order_email' => 1,
                    'close_button_label' => 'Close',
                ]),
                'text' => 'Pay securely through IfthenPay. Configure your Pay By Link gateway key and the payment methods you want to expose.',
                'status' => 0,
            ]
        );
    }

}
