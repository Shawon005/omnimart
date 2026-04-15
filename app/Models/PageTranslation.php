<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PageTranslation extends Model
{
    protected $fillable = [
        'page_id',
        'language_id',
        'title',
        'slug',
        'details',
        'meta_keywords',
        'meta_descriptions',
    ];

    public $timestamps = false;

    public function page()
    {
        return $this->belongsTo(Page::class);
    }
}
