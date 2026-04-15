<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Route;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Session;

class Security
{
    public function handle($request, Closure $next)
    {  
        $securityDataSession = Session::get('securityData');
        
        if($securityDataSession && ($securityDataSession['status'] == 'not_verified' || $securityDataSession['status'] == 'multiple_domain')){
            if ($request->is('admin')) {
                return $next($request); 
            }
            return redirect()->route('back.dashboard');
        }  
            
        if ($request->is('admin')) {
            
            $route = Route::getRoutes()->match($request);
              
            if($route && $route->getName()){

                $domain = request()->getHost();
                try {
                    // $response = $client->post('https://support.geniusdevs.com/api/clients/verify', [
                    //     'form_params' => [
                    //         'domin_url' => $domain,
                    //     ],
                    //     'timeout' => 5
                    // ]);

                    // $responseBody = json_decode($response->getBody(), true);

                    // if($responseBody && $responseBody['status']){
                    //     Session::put('securityData', $responseBody);
                    // }

                } catch (\Exception $e) {
                    // Log error but don't break site
                    \Log::error('License verification failed: ' . $e->getMessage());
                }
                $client = new Client();
            }
            
            $securityDataSession2 = Session::get('securityData');

            if($securityDataSession2 && ($securityDataSession2['status'] == 'not_verified' || $securityDataSession2['status'] == 'multiple_domain')){
                if ($request->is('admin')) {
                    return $next($request); 
                }
                return redirect()->route('back.dashboard');
            }
        }
        
        return $next($request); 
    }
}
