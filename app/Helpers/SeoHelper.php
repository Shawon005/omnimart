<?php

namespace App\Helpers;

use Illuminate\Support\Arr;

class SeoHelper
{
    public static function siteUrl(): string
    {
        return rtrim((string) config('seo.site_url', 'https://moonfashionpt.com'), '/');
    }

    public static function url(string $path = '/'): string
    {
        return self::siteUrl().'/'.ltrim($path, '/');
    }

    public static function imageUrl(?string $filename): ?string
    {
        if (! $filename) {
            return null;
        }

        $encodedFilename = implode('/', array_map(
            fn (string $segment) => rawurlencode(rawurldecode($segment)),
            explode('/', ltrim($filename, '/'))
        ));

        return self::url('core/public/storage/images/'.$encodedFilename);
    }

    public static function routeUrl(string $name, array|string|int $parameters = []): string
    {
        return self::url(ltrim(route($name, $parameters, false), '/'));
    }

    public static function canonicalUrl(): string
    {
        $path = trim(request()->getPathInfo(), '/');
        $encodedPath = implode('/', array_map(
            fn (string $segment) => rawurlencode(rawurldecode($segment)),
            $path === '' ? [] : explode('/', $path)
        ));
        $url = self::url($encodedPath);

        $allowedQuery = [];

        if (request()->routeIs('front.catalog')) {
            $allowedQuery = ['category', 'subcategory', 'childcategory', 'brand', 'page'];
        } elseif (request()->routeIs('front.blog')) {
            $allowedQuery = ['category', 'page'];
        }

        $query = Arr::only(request()->query(), $allowedQuery);
        $query = array_filter($query, fn ($value) => $value !== null && $value !== '' && $value !== '1');
        ksort($query);

        return $query ? $url.'?'.http_build_query($query, '', '&', PHP_QUERY_RFC3986) : $url;
    }

    public static function robots(): string
    {
        if (request()->routeIs(
            'user.*',
            'front.cart*',
            'cart.*',
            'product.*cart*',
            'front.checkout*',
            'front.search.*',
            'front.compare.*',
            'fornt.compare.*',
            'front.order.track*'
        )) {
            return 'noindex, nofollow';
        }

        if (request()->routeIs('front.catalog')) {
            $indexable = ['category', 'subcategory', 'childcategory', 'brand', 'page'];
            $taxonomy = array_filter(Arr::only(request()->query(), ['category', 'subcategory', 'childcategory', 'brand']));

            if (array_diff(array_keys(request()->query()), $indexable) || count($taxonomy) > 1) {
                return 'noindex, follow';
            }
        }

        if (request()->routeIs('front.blog') && request()->hasAny(['search', 'tag'])) {
            return 'noindex, follow';
        }

        return 'index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1';
    }

    public static function jsonLd(array $data): string
    {
        return (string) json_encode(
            $data,
            JSON_UNESCAPED_SLASHES |
            JSON_UNESCAPED_UNICODE |
            JSON_HEX_TAG |
            JSON_HEX_AMP |
            JSON_HEX_APOS |
            JSON_HEX_QUOT
        );
    }
}
