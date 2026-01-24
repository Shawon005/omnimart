<?php

namespace App\Models;

use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasTranslations;

    protected $fillable = ['name','slug', 'photo','status','is_feature','meta_keywords','meta_descriptions','serial'];
    public $timestamps = false;

    public function items()
    {
        return $this->hasMany('App\Models\Item');
    }

    public function subcategory()
    {
        return $this->hasMany('App\Models\Subcategory');
    }

    public function translations()
    {
        return $this->hasMany(CategoryTranslation::class);
    }

    // Accessors for multilingual attributes
    public function getNameAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('name', 'name');
        return $translated ?: $value;
    }

    public function getSlugAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('slug', 'slug');
        return $translated ?: $value;
    }

    public function getMetaKeywordsAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('meta_keywords', 'meta_keywords');
        return $translated ?: $value;
    }

    public function getMetaDescriptionsAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('meta_descriptions', 'meta_descriptions');
        return $translated ?: $value;
    }
}
