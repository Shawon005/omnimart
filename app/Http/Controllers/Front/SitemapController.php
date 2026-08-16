<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Services\SitemapService;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SitemapController extends Controller
{
    public function __invoke(Request $request, SitemapService $sitemapService): Response
    {
        $xml = $sitemapService->render();
        $maxAge = max(0, (int) config('sitemap.http_cache_ttl', 300));

        $response = response($xml, 200, [
            'Content-Type' => 'application/xml; charset=UTF-8',
        ]);

        $response->setPublic();
        $response->setMaxAge($maxAge);
        $response->setEtag(md5($xml));
        $response->isNotModified($request);

        return $response;
    }
}
