<?php

namespace App\Traits;

use Illuminate\Support\Facades\Session;
use App\Models\Language;

trait HasTranslations
{
    /**
     * Get the current language ID from session
     */
    protected function getCurrentLanguageId()
    {
        if (Session::has('language')) {
            return Session::get('language');
        }
        
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        return $defaultLang ? $defaultLang->id : 1;
    }

    /**
     * Get translated attribute value
     */
    public function getTranslatedAttribute($attribute, $fallbackAttribute = null)
    {
        if (!method_exists($this, 'translations')) {
            return $fallbackAttribute ? ($this->attributes[$fallbackAttribute] ?? null) : null;
        }

        $languageId = $this->getCurrentLanguageId();
        
        // Use relation without querying if already loaded
        $translations = $this->relationLoaded('translations') 
            ? $this->translations 
            : $this->translations()->get();
        
        $translation = $translations->where('language_id', $languageId)->first();

        if ($translation && !empty($translation->$attribute)) {
            return $translation->$attribute;
        }

        // Fallback to default language
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $defaultLang->id != $languageId) {
            $defaultTranslation = $translations->where('language_id', $defaultLang->id)->first();
            
            if ($defaultTranslation && !empty($defaultTranslation->$attribute)) {
                return $defaultTranslation->$attribute;
            }
        }

        // Fallback to original attribute if exists
        if ($fallbackAttribute && isset($this->attributes[$fallbackAttribute])) {
            return $this->attributes[$fallbackAttribute];
        }

        return null;
    }
}

