<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SliderTranslation extends Model
{
    protected $fillable = [
        'slider_id',
        'language_id',
        'logo',
        'title',
        'details',
    ];

    public function slider()
    {
        return $this->belongsTo(Slider::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}

