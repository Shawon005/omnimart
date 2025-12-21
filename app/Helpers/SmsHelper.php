<?php
namespace App\Helpers;
use App\Models\Setting;
use Twilio\Rest\Client;
use sms_net_bd\SMS;
class SmsHelper {

    public function SendSms($to_number ,$type,$order_number = null)
    {
        
        $setting = Setting::first();
        $this->setEnvValue('SMS_NET_BD_API_KEY', $setting->twilio_sid);
        $code = str_split($setting->twilio_country_code);
         array_pop($code);
        
         $new_code = implode('',$code);
         $sms_section = json_decode($setting->twilio_section,true);

        
        try {
            // Your Account SID and Auth Token from twilio.com/console
            $account_sid = $setting->twilio_sid;
            $auth_token = $setting->twilio_token;
            $twilio_number = $setting->twilio_form_number;

            
            $sms = new SMS();
            //dd($sms);
            $body = preg_replace("/{order_number}/", $order_number ,$sms_section[$type]);

            $response = $sms->sendSMS(
                $body,
                $new_code.$to_number,
            );

        } catch (\Throwable $th) {
            // throw $th;
        }
      

       
    }
    

    function setEnvValue($key, $value)
    {
        $path = base_path('.env');

        if (!file_exists($path)) {
            return false;
        }

        $env = file_get_contents($path);

        // Escape quotes
        $value = '"' . trim($value) . '"';

        $pattern = "/^{$key}=.*/m";

        if (preg_match($pattern, $env)) {
            $env = preg_replace($pattern, "{$key}={$value}", $env);
        } else {
            $env .= "\n{$key}={$value}";
        }

        file_put_contents($path, $env);
        //dd($env);
        return true;
    }

}