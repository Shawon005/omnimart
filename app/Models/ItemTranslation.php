<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ItemTranslation extends Model
{
    protected $fillable = [
        'item_id',
        'language_id',
        'name',
        'slug',
        'sort_details',
        'details',
        'meta_keywords',
        'meta_description',
        'tags',
        'specification_name',
        'specification_description',
    ];

    public function item()
    {
        return $this->belongsTo(Item::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}

