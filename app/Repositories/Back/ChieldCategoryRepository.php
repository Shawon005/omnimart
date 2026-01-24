<?php

namespace App\Repositories\Back;

use App\{
    Models\ChieldCategory,
    Models\ChieldCategoryTranslation,
    Models\Language,
    Helpers\ImageHelper
};

class ChieldCategoryRepository
{

    /**
     * Store category.
     *
     * @param  \App\Http\Requests\ChieldCategoryRequest  $request
     * @return void
     */

    public function store($request)
    {
        $input = $request->all();
        
        // Save default language data to main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("name_{$defaultLang->id}")) {
            $input['name'] = $request->input("name_{$defaultLang->id}") ?: $input['name'];
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: $input['slug'];
        }
        
        $chieldcategory = ChieldCategory::create($input);
        
        // Save translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            ChieldCategoryTranslation::create([
                'chieldcategory_id' => $chieldcategory->id,
                'language_id' => $lang->id,
                'name' => $request->input("name_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['name'] : null),
                'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['slug'] : null),
            ]);
        }
    }

    /**
     * Update category.
     *
     * @param  \App\Http\Requests\ChieldCategoryRequest  $request
     * @return void
     */

    public function update($fcategory, $request)
    {
        $input = $request->all();
        
        // Update default language values in main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("name_{$defaultLang->id}")) {
            $input['name'] = $request->input("name_{$defaultLang->id}") ?: $input['name'];
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: $input['slug'];
        }
        
        $fcategory->update($input);
        
        // Update translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            ChieldCategoryTranslation::updateOrCreate(
                ['chieldcategory_id' => $fcategory->id, 'language_id' => $lang->id],
                [
                    'name' => $request->input("name_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['name'] : null),
                    'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['slug'] : null),
                ]
            );
        }
    }

    /**
     * Delete category.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function delete($fcategory)
    {
        $fcategory->delete();
    }

}
