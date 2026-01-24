<?php

namespace App\Repositories\Back;

use App\{
    Models\Service,
    Models\ServiceTranslation,
    Models\Language,
    Helpers\ImageHelper
};

class ServiceRepository
{

    /**
     * Store service.
     *
     * @param  \App\Http\Requests\ImageStoreRequest  $request
     * @return void
     */

    public function store($request)
    {
        $input = $request->all();
        $input['photo'] = ImageHelper::handleUploadedImage($request->file('photo'),'images');
        
        // Save default language data to main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("title_{$defaultLang->id}")) {
            $input['title'] = $request->input("title_{$defaultLang->id}") ?: ($input['title'] ?? null);
            $input['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
        }
        
        $service = Service::create($input);
        
        // Save translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            ServiceTranslation::create([
                'service_id' => $service->id,
                'language_id' => $lang->id,
                'title' => $request->input("title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['title'] ?? null) : null),
                'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['details'] ?? null) : null),
            ]);
        }
    }

    /**
     * Update service.
     *
     * @param  \App\Http\Requests\ImageUpdateRequest  $request
     * @return void
     */

    public function update($service, $request)
    {
        $input = $request->all();
        if ($file = $request->file('photo')) {
            $input['photo'] = ImageHelper::handleUpdatedUploadedImage($file,'images',$service,'images/','photo');
        }
        
        // Update default language values in main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("title_{$defaultLang->id}")) {
            $input['title'] = $request->input("title_{$defaultLang->id}") ?: ($input['title'] ?? null);
            $input['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
        }
        
        $service->update($input);
        
        // Update translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            ServiceTranslation::updateOrCreate(
                ['service_id' => $service->id, 'language_id' => $lang->id],
                [
                    'title' => $request->input("title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['title'] ?? null) : null),
                    'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['details'] ?? null) : null),
                ]
            );
        }
    }

    /**
     * Delete service.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function delete($service)
    {
        
        ImageHelper::handleDeletedImage($service,'photo','images');
        $service->delete();
    }

}
