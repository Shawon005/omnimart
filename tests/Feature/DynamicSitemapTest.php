<?php

namespace Tests\Feature;

use App\Models\Category;
use App\Models\Item;
use App\Models\Page;
use App\Models\Post;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\URL;
use Tests\TestCase;

class DynamicSitemapTest extends TestCase
{
    protected function setUp(): void
    {
        parent::setUp();

        $this->withoutExceptionHandling();

        config([
            'app.url' => 'https://wrong.test/old-installation',
            'seo.site_url' => 'https://shop.test',
            'cache.default' => 'array',
            'database.default' => 'sitemap_testing',
            'database.connections.sitemap_testing' => [
                'driver' => 'sqlite',
                'database' => ':memory:',
                'prefix' => '',
                'foreign_key_constraints' => true,
            ],
        ]);

        DB::purge('sitemap_testing');
        DB::reconnect('sitemap_testing');
        URL::forceRootUrl('https://shop.test');
        URL::forceScheme('https');

        $this->createSchema();

        DB::table('settings')->insert([
            'id' => 1,
            'is_blog' => 1,
            'is_faq' => 1,
            'is_contact' => 1,
            'is_campaign' => 1,
            'is_brands' => 1,
        ]);

        Cache::flush();
    }

    public function test_it_serves_database_driven_storefront_urls(): void
    {
        Category::create(['name' => 'Dresses', 'slug' => 'dresses', 'status' => 1]);
        Category::create(['name' => 'Hidden', 'slug' => 'hidden', 'status' => 0]);
        Item::create(['name' => 'Moon Dress', 'slug' => 'moon-dress', 'status' => 1]);
        Item::create(['name' => 'Draft Dress', 'slug' => 'draft-dress', 'status' => 0]);
        Post::create(['title' => 'Style Guide', 'slug' => 'style-guide']);
        Page::create(['title' => 'About', 'slug' => 'about']);

        $response = $this->get('/sitemap.xml');

        $response
            ->assertOk()
            ->assertHeader('Content-Type', 'application/xml; charset=UTF-8')
            ->assertCookieMissing('moonfashion_session')
            ->assertSee('https://shop.test/product/moon-dress', false)
            ->assertSee('https://shop.test/catalog?category=dresses', false)
            ->assertSee('https://shop.test/blog/style-guide', false)
            ->assertSee('https://shop.test/about', false)
            ->assertDontSee('draft-dress', false)
            ->assertDontSee('category=hidden', false);
    }

    public function test_legacy_storefront_urls_redirect_to_their_new_equivalents(): void
    {
        $this->get('/shop')
            ->assertStatus(301)
            ->assertRedirect('https://shop.test/catalog');

        $this->get('/product-category/perfume')
            ->assertStatus(301)
            ->assertRedirect('https://shop.test/catalog?category=perfume');

        $this->get('/shop/page/2')
            ->assertStatus(301)
            ->assertRedirect('https://shop.test/catalog?page=2');
    }

    public function test_model_changes_invalidate_the_cached_sitemap(): void
    {
        $this->get('/sitemap.xml')->assertDontSee('new-arrival', false);

        Item::create(['name' => 'New Arrival', 'slug' => 'new-arrival', 'status' => 1]);

        $this->get('/sitemap.xml')
            ->assertOk()
            ->assertSee('https://shop.test/product/new-arrival', false);
    }

    private function createSchema(): void
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->boolean('is_blog')->default(true);
            $table->boolean('is_faq')->default(true);
            $table->boolean('is_contact')->default(true);
            $table->boolean('is_campaign')->default(true);
            $table->boolean('is_brands')->default(true);
        });

        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('slug')->nullable();
            $table->boolean('status')->default(true);
            $table->timestamps();
        });

        Schema::create('subcategories', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            $table->foreignId('category_id');
            $table->boolean('status')->default(true);
            $table->timestamps();
        });

        Schema::create('chield_categories', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            $table->foreignId('category_id');
            $table->foreignId('subcategory_id');
            $table->boolean('status')->default(true);
            $table->timestamps();
        });

        Schema::create('items', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('slug')->nullable();
            $table->boolean('status')->default(true);
            $table->timestamps();
        });

        Schema::create('bcategories', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            $table->boolean('status')->default(true);
        });

        Schema::create('brands', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            $table->boolean('status')->default(true);
        });

        Schema::create('fcategories', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            $table->boolean('status')->default(true);
        });

        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->timestamps();
        });

        Schema::create('pages', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->timestamps();
        });
    }
}
