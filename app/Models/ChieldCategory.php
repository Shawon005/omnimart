<?php

namespace App\Models;

use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class ChieldCategory extends Model
{
    use HasTranslations;

    protected $fillable = ['name','slug','status','category_id','subcategory_id'];
    public $timestamps = false;

    public function category()
    {
        return $this->belongsTo('App\Models\Category')->withDefault();
    }
    public function subcategory()
    {
        return $this->belongsTo('App\Models\Subcategory')->withDefault();
    }

    public function items()
    {
        return $this->hasMany('App\Models\Item','child_category_id')->where('status',1);
    }

    public function translations()
    {
        return $this->hasMany(ChieldCategoryTranslation::class);
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
}
