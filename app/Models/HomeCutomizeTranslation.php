<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HomeCutomizeTranslation extends Model
{
    protected $fillable = [
        'home_cutomize_id',
        'language_id',
        'banner_first',
        'banner_secend',
        'banner_third',
        'popular_category',
        'feature_category',
        'home_page4',
        'hero_banner',
    ];

    public function homeCutomize()
    {
        return $this->belongsTo(HomeCutomize::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}

