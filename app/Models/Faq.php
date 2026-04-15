<?php

namespace App\Models;
use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    use HasTranslations;
    protected $fillable = ['title', 'details','category_id'];

    public function category()
    {
    	return $this->belongsTo('App\Models\Fcategory')->withDefault();
    }

    public function translations()
    {
        return $this->hasMany(FaqTranslation::class);
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

    public $timestamps = false;
}
