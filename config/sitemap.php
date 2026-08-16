<?php

return [
    /*
    | Keep the generated XML fast while model observers make catalog changes
    | visible immediately. The TTL is a fallback for changes made outside
    | Eloquent (for example, direct database imports).
    */
    'cache_ttl' => (int) env('SITEMAP_CACHE_TTL', 3600),

    /* Browser and crawler cache duration, in seconds. */
    'http_cache_ttl' => (int) env('SITEMAP_HTTP_CACHE_TTL', 300),
];
