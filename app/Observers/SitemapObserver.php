<?php

namespace App\Observers;

use App\Services\SitemapService;
use Illuminate\Database\Eloquent\Model;

class SitemapObserver
{
    public function saved(Model $model): void
    {
        SitemapService::forgetCached();
    }

    public function deleted(Model $model): void
    {
        SitemapService::forgetCached();
    }

    public function restored(Model $model): void
    {
        SitemapService::forgetCached();
    }
}
