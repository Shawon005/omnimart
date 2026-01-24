<?php

namespace App\Models;

use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasTranslations;

    protected $fillable = ['title','details','photo'];
    public $timestamps = false;

    public function translations()
    {
        return $this->hasMany(ServiceTranslation::class);
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
