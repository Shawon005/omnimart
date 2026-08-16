<?php

namespace App\Services;

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
use Carbon\Carbon;
use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Cache;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;

class SitemapService
{
    public const CACHE_KEY = 'storefront.sitemap.xml.v2';

    public function render(): string
    {
        $ttl = max(1, (int) config('sitemap.cache_ttl', 3600));

        return Cache::remember(
            self::CACHE_KEY,
            now()->addSeconds($ttl),
            fn () => $this->build()->render()
        );
    }

    public function build(): Sitemap
    {
        $sitemap = Sitemap::create();
        $settings = Setting::query()->first();

        $sitemap
            ->add($this->url($this->routeUrl('front.index'), null, Url::CHANGE_FREQUENCY_DAILY, 1.0))
            ->add($this->url($this->routeUrl('front.catalog'), null, Url::CHANGE_FREQUENCY_DAILY, 0.9));

        if (! $settings || $settings->is_brands) {
            $sitemap->add($this->url($this->routeUrl('front.brand'), null, Url::CHANGE_FREQUENCY_WEEKLY, 0.6));
        }

        if (! $settings || $settings->is_campaign) {
            $sitemap->add($this->url($this->routeUrl('front.campaign'), null, Url::CHANGE_FREQUENCY_DAILY, 0.6));
        }

        if (! $settings || $settings->is_faq) {
            $sitemap->add($this->url($this->routeUrl('front.faq'), null, Url::CHANGE_FREQUENCY_MONTHLY, 0.5));
            $this->addFaqUrls($sitemap);
        }

        if (! $settings || $settings->is_contact) {
            $sitemap->add($this->url($this->routeUrl('front.contact'), null, Url::CHANGE_FREQUENCY_MONTHLY, 0.5));
        }

        $sitemap->add($this->url($this->routeUrl('front.reviews'), null, Url::CHANGE_FREQUENCY_WEEKLY, 0.5));

        $this->addCatalogUrls($sitemap);
        $this->addPageUrls($sitemap);

        if (! $settings || $settings->is_blog) {
            $this->addBlogUrls($sitemap);
        }

        return $sitemap;
    }

    public static function forgetCached(): void
    {
        Cache::forget(self::CACHE_KEY);
    }

    private function addCatalogUrls(Sitemap $sitemap): void
    {
        Category::query()
            ->where('status', 1)
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->select(['id', 'slug', 'created_at', 'updated_at'])
            ->orderBy('id')
            ->chunkById(500, function ($categories) use ($sitemap) {
                foreach ($categories as $category) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.catalog', ['category' => $category->getRawOriginal('slug')]),
                        $this->lastModified($category),
                        Url::CHANGE_FREQUENCY_WEEKLY,
                        0.7
                    ));
                }
            });

        Subcategory::query()
            ->where('status', 1)
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->whereHas('category', fn ($query) => $query->where('status', 1))
            ->select(['id', 'slug', 'category_id', 'created_at', 'updated_at'])
            ->orderBy('id')
            ->chunkById(500, function ($subcategories) use ($sitemap) {
                foreach ($subcategories as $subcategory) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.catalog', ['subcategory' => $subcategory->getRawOriginal('slug')]),
                        $this->lastModified($subcategory),
                        Url::CHANGE_FREQUENCY_WEEKLY,
                        0.6
                    ));
                }
            });

        ChieldCategory::query()
            ->where('status', 1)
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->whereHas('category', fn ($query) => $query->where('status', 1))
            ->whereHas('subcategory', fn ($query) => $query->where('status', 1))
            ->select(['id', 'slug', 'category_id', 'subcategory_id', 'created_at', 'updated_at'])
            ->orderBy('id')
            ->chunkById(500, function ($childCategories) use ($sitemap) {
                foreach ($childCategories as $childCategory) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.catalog', ['childcategory' => $childCategory->getRawOriginal('slug')]),
                        $this->lastModified($childCategory),
                        Url::CHANGE_FREQUENCY_WEEKLY,
                        0.6
                    ));
                }
            });

        Item::query()
            ->where('status', 1)
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->select(['id', 'slug', 'created_at', 'updated_at'])
            ->orderBy('id')
            ->chunkById(500, function ($items) use ($sitemap) {
                foreach ($items as $item) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.product', $item->getRawOriginal('slug')),
                        $this->lastModified($item),
                        Url::CHANGE_FREQUENCY_WEEKLY,
                        0.8
                    ));
                }
            });

        Brand::query()
            ->where('status', 1)
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->select(['id', 'slug'])
            ->orderBy('id')
            ->chunkById(500, function ($brands) use ($sitemap) {
                foreach ($brands as $brand) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.catalog', ['brand' => $brand->getRawOriginal('slug')]),
                        null,
                        Url::CHANGE_FREQUENCY_WEEKLY,
                        0.6
                    ));
                }
            });
    }

    private function addBlogUrls(Sitemap $sitemap): void
    {
        $sitemap->add($this->url($this->routeUrl('front.blog'), null, Url::CHANGE_FREQUENCY_DAILY, 0.7));

        Bcategory::query()
            ->where('status', 1)
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->select(['id', 'slug'])
            ->orderBy('id')
            ->chunkById(500, function ($categories) use ($sitemap) {
                foreach ($categories as $category) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.blog', ['category' => $category->getRawOriginal('slug')]),
                        null,
                        Url::CHANGE_FREQUENCY_WEEKLY,
                        0.5
                    ));
                }
            });

        Post::query()
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->select(['id', 'slug', 'created_at', 'updated_at'])
            ->orderBy('id')
            ->chunkById(500, function ($posts) use ($sitemap) {
                foreach ($posts as $post) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.blog.details', $post->getRawOriginal('slug')),
                        $this->lastModified($post),
                        Url::CHANGE_FREQUENCY_MONTHLY,
                        0.6
                    ));
                }
            });
    }

    private function addPageUrls(Sitemap $sitemap): void
    {
        Page::query()
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->select(['id', 'slug', 'created_at', 'updated_at'])
            ->orderBy('id')
            ->chunkById(500, function ($pages) use ($sitemap) {
                foreach ($pages as $page) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.page', $page->getRawOriginal('slug')),
                        $this->lastModified($page),
                        Url::CHANGE_FREQUENCY_MONTHLY,
                        0.5
                    ));
                }
            });
    }

    private function addFaqUrls(Sitemap $sitemap): void
    {
        Fcategory::query()
            ->where('status', 1)
            ->whereNotNull('slug')
            ->where('slug', '<>', '')
            ->select(['id', 'slug'])
            ->orderBy('id')
            ->chunkById(500, function ($categories) use ($sitemap) {
                foreach ($categories as $category) {
                    $sitemap->add($this->url(
                        $this->routeUrl('front.faq.details', $category->getRawOriginal('slug')),
                        null,
                        Url::CHANGE_FREQUENCY_MONTHLY,
                        0.4
                    ));
                }
            });
    }

    private function url(
        string $location,
        ?DateTimeInterface $lastModified,
        string $changeFrequency,
        float $priority
    ): Url {
        $url = Url::create($location)
            ->setChangeFrequency($changeFrequency)
            ->setPriority($priority);

        if ($lastModified) {
            $url->setLastModificationDate($lastModified);
        }

        return $url;
    }

    private function routeUrl(string $name, array|string|int $parameters = []): string
    {
        $baseUrl = rtrim((string) config('seo.site_url', 'https://moonfashionpt.com'), '/');
        $path = route($name, $parameters, false);

        return $baseUrl.'/'.ltrim($path, '/');
    }

    private function lastModified(Model $model): ?DateTimeInterface
    {
        $value = $model->getRawOriginal('updated_at') ?: $model->getRawOriginal('created_at');

        return $value ? Carbon::parse($value) : null;
    }
}
