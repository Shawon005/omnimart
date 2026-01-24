<?php

namespace App\Models;

use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    use HasTranslations;

    protected $fillable = ['name', 'slug', 'category_id','status'];
    public $timestamps = false;


    public function category()
    {
        return $this->belongsTo('App\Models\Category')->withDefault();
    }

    public function childcategory()
    {
        return $this->hasMany('App\Models\ChieldCategory')->where('status',1);
    }

    public function items()
    {
        return $this->hasMany('App\Models\Item')->where('status',1);
    }

    public function translations()
    {
        return $this->hasMany(SubcategoryTranslation::class);
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
