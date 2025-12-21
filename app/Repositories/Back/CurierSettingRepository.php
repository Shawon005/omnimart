<?php

namespace App\Repositories\Back;

use App\{
    Helpers\ImageHelper,
    Helpers\PriceHelper,
    Models\CurierSetting
};
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use App\Services\AreaMatcherService;
class CurierSettingRepository
{

    public function __construct(AreaMatcherService $services)
    {
        $this->AreaService=$services;
    }
    /**
     * Show the data for updating resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function curier()
    {

        $speed = CurierSetting::whereUniqueKeyword('speed')->first();
        $data['speedData'] = $speed->convertJsonData();
        $data['speed'] = $speed;

        $patho = CurierSetting::whereUniqueKeyword('patho')->first();
        $data['pathoData'] = $patho->convertJsonData();
        $data['patho'] = $patho;

        $redex = CurierSetting::whereUniqueKeyword('redex')->first();
        $data['redexData'] = $redex->convertJsonData();
        $data['redex'] = $redex;

        return $data;
    }
    public function Getcurier()
    {

        $speed = CurierSetting::whereStatus(1)->get();
       
        // foreach($speed as $index => $item){
        //     $data[$index] = $item->name;
        // }
        

        return $speed;
    }
    /**
     * Update setting.
     *
     * @param  \App\Http\Requests\CurierSettingRequest  $request
     * @return void
     */

    public function update($request)
    {

        $input = $request->all();
        $pay_data = CurierSetting::whereUniqueKeyword($input['unique_keyword'])->first();

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
    public function speedfast($OrderData)
    {
        try{
            $speed = CurierSetting::whereUniqueKeyword('speed')->first();
            $Curierdata = $speed->convertJsonData();
            

            //dd($OrderData);
            $Customar_info=json_decode($OrderData->shipping_info);
            $data = [
                "invoice" => $OrderData->transaction_number,
                "recipient_name" =>$Customar_info->ship_first_name  . ' ' . $Customar_info->ship_last_name,
                "recipient_phone" => $Customar_info->ship_phone,
                "recipient_address" =>$Customar_info->ship_address1,
                "recipient_email"=>$Customar_info->ship_email,
                "delivery_type"=>0,
                "cod_amount" => PriceHelper::OrderTotal($OrderData),
            ];
        // dd($data);
            $response = Http::withHeaders([
                'Api-Key' => $Curierdata['key'],
                'Secret-Key' => $Curierdata['secret'],
                'Accept' => 'application/json',
            ])->post(
                rtrim($Curierdata['base_url']) . '/create_order',
                $data
            );

            if ($response->failed()) {
                return redirect()->back()->withError($response->json()['message']);
                //dd($response->status(), $response->body());
            }

            //dd($response->json()['message']);

        // return $response->json();
            return redirect()->back()->withSuccess($response->json()['message']);
        }catch (\Throwable $e) {
            return ('failed');
           // return redirect()->back()->withError($e->getMessage());
        }
        
    }
    public function redex($OrderData)
    {

        try{
            $speed = CurierSetting::whereUniqueKeyword('redex')->first();
            $Curierdata = $speed->convertJsonData();
            
            //dd($OrderData);
            $Customar_info=json_decode($OrderData->shipping_info);
            $cart=json_decode($OrderData->cart);
            $bill=json_decode($OrderData->billing_info);
    
            $responseD = Http::withHeaders([
                'API-ACCESS-TOKEN' =>  'Bearer'. ' ' . $Curierdata['key'],
                'Accept' => 'application/json',
            ])->get(
                rtrim($Curierdata['base_url']) . '/areas',
                [
                    'district_name'=>$Customar_info->ship_city,
                ]
                
            );
            //dd($responseD->json());
            $matchedArea = $this->AreaService->match($Customar_info->ship_address1, $responseD->json()['areas']);
    
         
            $data = [
                "customer_name" =>$Customar_info->ship_first_name  . ' ' . $Customar_info->ship_last_name,
                "customer_phone" => $Customar_info->ship_phone,
                "customer_address" =>$Customar_info->ship_address1,
                "recipient_email"=>$Customar_info->ship_email,
                "value"=>0,
                "parcel_weight"=>0.50,
                "delivery_area"=>$Customar_info->ship_city,
                "delivery_area_id"=>$matchedArea!=null?$matchedArea:1,
                "cash_collection_amount" => PriceHelper::OrderTotal($OrderData),
    
            ];
           // dd($data);
            $response = Http::withHeaders([
                'API-ACCESS-TOKEN' =>  'Bearer'. ' ' . $Curierdata['key'],
                'Accept' => 'application/json',
            ])->post(
                rtrim($Curierdata['base_url']) . '/parcel',
                $data
            );
           
            if ($response->failed()) {
                return redirect()->back()->with($response->json()['message']);
                //dd($response->status(), $response->body());
            }
    
            
           // dd($response->json());
    
            // return $response->json();
            return redirect()->back()->withSuccess(__('Order Send Curier Agent Successfully.'));
            
        } catch (\Throwable $e) {
            //return redirect()->back()->withError($e->getMessage());
            return ('failed');
        }
        
    }
    public function pathao($OrderData)
    {
        try{
            $speed = CurierSetting::whereUniqueKeyword('patho')->first();
            $Curierdata = $speed->convertJsonData();
            $TolenData=[
                'client_id' => $Curierdata['key'],
                'client_secret' => $Curierdata['secret'],
                'username' => $Curierdata['username'],
                "grant_type"=> "password",
                'password' => $Curierdata['password'],
            ];
            $Tokenresponse = Http::withHeaders([
                
                'Accept' => 'application/json',
            ])->post(
                rtrim($Curierdata['base_url']) . '/aladdin/api/v1/issue-token',
                $TolenData
            );
           // dd($Tokenresponse->json());
            $Customar_info=json_decode($OrderData->shipping_info);
            $data = [
                "store_id" => intval($Curierdata['store_id']),
                "recipient_name" =>$Customar_info->ship_first_name  . ' ' . $Customar_info->ship_last_name,
                "recipient_phone" => $Customar_info->ship_phone,
                "recipient_address" =>$Customar_info->ship_address1,
                "recipient_email"=>$Customar_info->ship_email,
                "delivery_type"=>48,
                "item_type"=> 2,
                "item_quantity"=> 1,
                "item_weight"=> "0.5",
                "amount_to_collect" => intval(PriceHelper::OrderTotal($OrderData)),
            ];
        //dd($data);
            $response = Http::withHeaders([
                'Authorization' =>  'Bearer'. ' ' . $Tokenresponse->json()['access_token'],
                'Accept' => 'application/json',
            ])->post(
                rtrim($Curierdata['base_url']) . '/aladdin/api/v1/orders',
                $data
            );

            if ($response->failed()) {
                dd($response->status(), $response->body());
                return redirect()->back()->withError($response->json()['errors']);
                //dd($response->status(), $response->body());
            }

            //dd($response->json());

        // return $response->json();
            return redirect()->back()->withSuccess($response->json()['message']);
        }catch (\Throwable $e) {
            return ('failed');
           // return redirect()->back()->withError($e->getMessage());
        }
        
    }

}
