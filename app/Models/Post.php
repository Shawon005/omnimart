<?php

namespace App\Models;
use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasTranslations;
    protected $fillable = ['title', 'slug','details', 'photo', 'category_id','tags','meta_keywords','meta_descriptions'];

    public function category()
    {
    	return $this->belongsTo('App\Models\Bcategory')->withDefault();
    }

    public function translations()
    {
        return $this->hasMany(PostTranslation::class);
    }
    public function getTitleAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('title', 'title');
        return $translated ?: $value;
    }

    public function getDetailsAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('details', 'details');
        return $translated ?: $value;
    }
    public function getTranslation($languageId)
    {
        return $this->translations()->where('language_id', $languageId)->first();
    }
}
