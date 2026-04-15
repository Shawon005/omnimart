<?php

namespace App\Models;

use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class HomeCutomize extends Model
{
    use HasTranslations;

    public $timestamps = false;

    protected $fillable = [
        'banner_first',
        'banner_secend',
        'banner_third',
        'popular_category',
        'two_column_category',
        'feature_category',
        'home_page4',
        'home_4_popular_category',
        'hero_banner',
    ];

    public function translations()
    {
        return $this->hasMany(HomeCutomizeTranslation::class, 'home_cutomize_id');
    }
    public function getHeroBannerAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('hero_banner', 'hero_banner',);
        return $translated ?: $value;
    }
    public function getBannerFirstAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('banner_first', 'banner_first');
        return $translated ?: $value;
    }
    public function getBannerSecendAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('banner_secend', 'banner_secend');
        return $translated ?: $value;
    }
    public function getBannerThirdAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('banner_third', 'banner_third');
        return $translated ?: $value;
    }
    public function getPopularCategoryAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('popular_category', 'popular_category');
        return $translated ?: $value;
    }
    public function getFeatureCategoryAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('feature_category', 'feature_category');
        return $translated ?: $value;
    }
    public function getTwoColumnCategoryAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('two_column_category', 'two_column_category');
        return $translated ?: $value;
    }
    public function getHome4PopularCategoryAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('home_4_popular_category', 'home_4_popular_category');
        return $translated ?: $value;
    }
    public function getHomePage4Attribute($value)
    {
        $translated = $this->getTranslatedAttribute('home_page4', 'home_page4');
        return $translated ?: $value;
    }
    public function getTranslation($languageId)
    {
        dd($this->translations()->where('language_id', $languageId)->first());
        return $this->translations()->where('language_id', $languageId)->first();
    }
}
