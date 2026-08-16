<?php

namespace App\Providers;

use App\Models\Bcategory;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ChieldCategory;
use App\Models\Fcategory;
use App\Models\Item;
use App\Models\Page;
use App\Models\Post;
use App\Models\Setting;
use App\Models\Subcategory;
use App\Observers\SitemapObserver;
use Illuminate\{
    Support\ServiceProvider,
    Support\Facades\DB
};
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    public function boot()
    {
        Paginator::useBootstrap();

        foreach ([Item::class, Category::class, Subcategory::class, ChieldCategory::class, Brand::class, Post::class, Bcategory::class, Fcategory::class, Page::class, Setting::class] as $model) {
            $model::observe(SitemapObserver::class);
        }

        view()->composer('*', function ($settings) {
            if (
                str_starts_with($settings->getName(), 'sitemap::') ||
                str_contains(str_replace('\\', '/', $settings->getPath()), '/spatie/laravel-sitemap/')
            ) {
                return;
            }

            $settings->with('setting', DB::table('settings')->find(1));
            $settings->with('extra_settings', DB::table('extra_settings')->find(1));
            $settings->with('menus', DB::table('menus')->find(1));

            if (!session()->has('popup')) {
                view()->share('visit', 1);
            }
            session()->put('popup', 1);
        });
    }

    public function register()
    {
    }
}
