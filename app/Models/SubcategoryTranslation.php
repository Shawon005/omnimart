<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubcategoryTranslation extends Model
{
    protected $fillable = [
        'subcategory_id',
        'language_id',
        'name',
        'slug',
    ];

    public function subcategory()
    {
        return $this->belongsTo(Subcategory::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}

