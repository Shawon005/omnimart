<?php

return [
    /* The one public origin search engines should index. */
    'site_url' => rtrim(env('SEO_SITE_URL', 'https://moonfashionpt.com'), '/'),

    'default_locale' => env('SEO_DEFAULT_LOCALE', 'en'),
];
