<?php

namespace Tests\Unit;

use App\Helpers\SeoHelper;
use Illuminate\Http\Request;
use Illuminate\Routing\Route;
use Tests\TestCase;

class SeoHelperTest extends TestCase
{
    protected function setUp(): void
    {
        parent::setUp();

        config(['seo.site_url' => 'https://moonfashionpt.com']);
    }

    public function test_canonical_url_uses_the_configured_origin_and_removes_noncanonical_filters(): void
    {
        $this->bindRequest(
            '/catalog?category=Perfume&sorting=low_to_high&view_check=grid',
            'front.catalog'
        );

        $this->assertSame(
            'https://moonfashionpt.com/catalog?category=Perfume',
            SeoHelper::canonicalUrl()
        );
        $this->assertSame('noindex, follow', SeoHelper::robots());
    }

    public function test_private_routes_are_noindex(): void
    {
        $this->bindRequest('/user/login', 'user.login');

        $this->assertSame('noindex, nofollow', SeoHelper::robots());
    }

    public function test_image_urls_are_safely_encoded(): void
    {
        $this->assertSame(
            'https://moonfashionpt.com/core/public/storage/images/Amber%20Noir.webp',
            SeoHelper::imageUrl('Amber Noir.webp')
        );
    }

    private function bindRequest(string $uri, string $routeName): void
    {
        $request = Request::create($uri);
        $route = (new Route('GET', parse_url($uri, PHP_URL_PATH), fn () => null))->name($routeName);
        $request->setRouteResolver(fn () => $route);

        $this->app->instance('request', $request);
    }
}
