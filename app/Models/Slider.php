<?php

namespace App\Models;

use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasTranslations;

    protected $fillable = ['title', 'logo', 'photo','link','details','home_page','status'];
    public $timestamps = false;

    public function translations()
    {
        return $this->hasMany(SliderTranslation::class);
    }
    public function getLogoAttribute($value)
    {
        $translated = $this->getTranslatedAttribute('logo', 'logo');
        return $translated ?: $value;
    }
    // Accessors for multilingual attributes
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
}
