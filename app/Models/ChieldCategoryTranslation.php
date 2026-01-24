<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChieldCategoryTranslation extends Model
{
    protected $fillable = [
        'chieldcategory_id',
        'language_id',
        'name',
        'slug',
    ];

    public function chieldcategory()
    {
        return $this->belongsTo(ChieldCategory::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}

