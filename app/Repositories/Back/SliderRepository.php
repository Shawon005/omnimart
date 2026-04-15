<?php

namespace App\Repositories\Back;

use App\{
    Models\Slider,
    Models\SliderTranslation,
    Models\Language,
    Helpers\ImageHelper
};

class SliderRepository
{

    /**
     * Store slider.
     *
     * @param  \App\Http\Requests\ImageStoreRequest  $request
     * @return void
     */

    public function store($request)
    {
        $input = $request->all();
        $input['photo'] = ImageHelper::handleUploadedImage($request->file('photo'),'images');
        // $input['logo'] = ImageHelper::handleUploadedImage($request->file('logo'),'images');
        
        // Save default language data to main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("title_{$defaultLang->id}")) {
            $input['logo'] = $request->input("logo");
            $input['title'] = $request->input("title_{$defaultLang->id}") ?: ($input['title'] ?? null);
            $input['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
        }
        
        $slider = Slider::create($input);
        
        // Save translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            SliderTranslation::create([
                'slider_id' => $slider->id,
                'language_id' => $lang->id,
                'logo'=> $request->input("logo_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['logo'] ?? null) : null),
                'title' => $request->input("title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['title'] ?? null) : null),
                'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['details'] ?? null) : null),
            ]);
        }
    }

    /**
     * Update slider.
     *
     * @param  \App\Http\Requests\ImageUpdateRequest  $request
     * @return void
     */

    public function update($slider, $request)
    {
        $input = $request->all();
      // dd($input);
        if ($file = $request->file('photo')) {
            $input['photo'] = ImageHelper::handleUpdatedUploadedImage($file,'images/',$slider,'images/','photo');
        }
        // if ($file = $request->file('logo')) {
        //     $input['logo'] = ImageHelper::handleUpdatedUploadedImage($file,'images/',$slider,'images/','logo');
        // }
        
        // Update default language values in main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("title_{$defaultLang->id}")) {
            $input['logo'] = $request->input("logo");
            $input['title'] = $request->input("title_{$defaultLang->id}") ?: ($input['title'] ?? null);
            $input['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
        }
        
        $slider->update($input);
        
        // Update translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            SliderTranslation::updateOrCreate(
                ['slider_id' => $slider->id, 'language_id' => $lang->id],
                [
                    'logo'=> $request->input("logo_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['logo'] ?? null) : null),
                    'title' => $request->input("title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['title'] ?? null) : null),
                    'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['details'] ?? null) : null),
                ]
            );
        }
    }

    /**
     * Delete slider.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function delete($slider)
    {
        ImageHelper::handleDeletedImage($slider,'photo','images');
        ImageHelper::handleDeletedImage($slider,'logo','images');
        $slider->delete();
    }

}
