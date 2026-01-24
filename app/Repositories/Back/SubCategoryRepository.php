<?php

namespace App\Repositories\Back;


use App\Models\Subcategory;
use App\Models\SubcategoryTranslation;
use App\Models\Language;

class SubCategoryRepository
{

    /**
     * Store category.
     *
     * @param  \App\Http\Requests\CategoryRequest  $request
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
        
        $subcategory = Subcategory::create($input);
        
        // Save translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            SubcategoryTranslation::create([
                'subcategory_id' => $subcategory->id,
                'language_id' => $lang->id,
                'name' => $request->input("name_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['name'] : null),
                'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['slug'] : null),
            ]);
        }
    }

    /**
     * Update category.
     *
     * @param  \App\Http\Requests\CategoryRequest  $request
     * @return void
     */

    public function update($category, $request)
    {
        $input = $request->all();
        
        // Update default language values in main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("name_{$defaultLang->id}")) {
            $input['name'] = $request->input("name_{$defaultLang->id}") ?: $input['name'];
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: $input['slug'];
        }
        
        $category->update($input);
        
        // Update translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            SubcategoryTranslation::updateOrCreate(
                ['subcategory_id' => $category->id, 'language_id' => $lang->id],
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

    public function delete($category)
    {
        $category->delete();
    }

}
