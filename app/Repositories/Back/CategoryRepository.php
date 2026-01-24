<?php

namespace App\Repositories\Back;

use App\{
    Models\Category,
    Models\CategoryTranslation,
    Models\Language,
    Helpers\ImageHelper
};
use App\Models\HomeCutomize;

class CategoryRepository
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
        $input['photo'] = ImageHelper::handleUploadedImage($request->file('photo'),'images');
        
        // Save default language data to main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("name_{$defaultLang->id}")) {
            $input['name'] = $request->input("name_{$defaultLang->id}") ?: $input['name'];
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: $input['slug'];
            $input['meta_keywords'] = $request->input("meta_keywords_{$defaultLang->id}") ?: ($input['meta_keywords'] ?? null);
            $input['meta_descriptions'] = $request->input("meta_descriptions_{$defaultLang->id}") ?: ($input['meta_descriptions'] ?? null);
        }
        
        $category = Category::create($input);
        
        // Save translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            CategoryTranslation::create([
                'category_id' => $category->id,
                'language_id' => $lang->id,
                'name' => $request->input("name_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['name'] : null),
                'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['slug'] : null),
                'meta_keywords' => $request->input("meta_keywords_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_keywords'] : null),
                'meta_descriptions' => $request->input("meta_descriptions_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_descriptions'] : null),
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
        if ($file = $request->file('photo')) {
            $input['photo'] = ImageHelper::handleUpdatedUploadedImage($file,'images',$category,'images','photo');
        }
        
        // Update default language values in main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("name_{$defaultLang->id}")) {
            $input['name'] = $request->input("name_{$defaultLang->id}") ?: $input['name'];
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: $input['slug'];
            $input['meta_keywords'] = $request->input("meta_keywords_{$defaultLang->id}") ?: ($input['meta_keywords'] ?? null);
            $input['meta_descriptions'] = $request->input("meta_descriptions_{$defaultLang->id}") ?: ($input['meta_descriptions'] ?? null);
        }
        
        $category->update($input);
        
        // Update translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            CategoryTranslation::updateOrCreate(
                ['category_id' => $category->id, 'language_id' => $lang->id],
                [
                    'name' => $request->input("name_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['name'] : null),
                    'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['slug'] : null),
                    'meta_keywords' => $request->input("meta_keywords_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_keywords'] : null),
                    'meta_descriptions' => $request->input("meta_descriptions_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_descriptions'] : null),
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
        $home = HomeCutomize::first();
        $popular_category = json_decode($home['popular_category'],true);
        $feature_category = json_decode($home['feature_category'],true);
        $two_column_category = json_decode($home['two_column_category'],true);
        $home_4_popular_category = json_decode($home['home_4_popular_category'],true);
        $check = false;
      
        for($i=1;$i<5;$i++){
            if($popular_category['category_id'.$i] == $category->id){
                $check = true;
            }
        }

        for($i=1;$i<5;$i++){
           
            if($feature_category['category_id'.$i] == $category->id){
                $check = true;
            }

        }
        for($i=1;$i<3;$i++){
           
            if($two_column_category['category_id'.$i] == $category->id){
                $check = true;
            }

        }

        if(isset($home_4_popular_category)){
            if(in_array($category->id,$home_4_popular_category)){
                $check =  true;
            }
        }
       

       if($check){
           return ['message' => __('This Category allready used Home page section . Please change this category then delete this category') , 'status' => 0];
       }else{
        ImageHelper::handleDeletedImage($category,'photo','images');
        $category->delete();
        return ['message' => __('Category Deleted Successfully.'),'status' => 1];
       }
    
    }

}
