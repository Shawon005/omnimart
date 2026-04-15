<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FaqTranslation extends Model
{
    protected $fillable = [
        'faq_id',
        'language_id',
        'title',
        'details',
    ];

    public $timestamps = false;

    public function faq()
    {
        return $this->belongsTo(Faq::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}
