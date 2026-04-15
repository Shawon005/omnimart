<?php

namespace App\Repositories\Back;

use App\{
    Models\Item,
    Models\Gallery,
    Models\ItemTranslation,
    Models\Language,
    Helpers\ImageHelper
};
use App\Models\Currency;

class ItemRepository
{

    /**
     * Store item.
     *
     * @param  \App\Http\Requests\ItemRequest  $request
     * @return void
     */

    public function store($request)
    {
        
        $input = $request->all();
        if ($file = $request->file('photo')) {
            $images_name = ImageHelper::ItemhandleUploadedImage($request->file('photo'),'images');

            $input['photo'] = $images_name[0];
            $input['thumbnail'] = $images_name[1];
        }

        $curr = Currency::where('is_default',1)->first();
        $input['discount_price'] = $request->discount_price / $curr->value;
        $input['previous_price'] = $request->previous_price / $curr->value;

        if($request->has('meta_keywords')){
            $input['meta_keywords'] = str_replace(["value", "{", "}", "[","]",":","\""], '', $request->meta_keywords);
        }

        if($request->has('is_social')){
            $input['social_icons'] = json_encode($input['social_icons']);
            $input['social_links'] = json_encode($input['social_links']);
        }else{
            $input['is_social']    = 0;
            $input['social_icons'] = null;
            $input['social_links'] = null;
        }

        if($request->has('tags')){
            $input['tags'] = str_replace(["value", "{", "}", "[","]",":","\""], '', $request->tags);
        }

        if($request->has('is_specification')){
            $input['specification_name'] = json_encode($input['specification_name']);
            $input['specification_description'] = json_encode($input['specification_description']);
        }else{
            $input['is_specification']    = 0;
            $input['specification_name'] = null;
            $input['specification_description'] = null;
        }

        if($request->has('license_name') && $request->has('license_key')){
            $input['license_name'] = json_encode($input['license_name']);
            $input['license_key'] = json_encode($input['license_key']);
        }else{
            $input['license_name'] = null;
            $input['license_key'] = null;
        }

        // digital product file upload
        if($request->item_type == 'digital'){
            if($request->hasFile('file')){
                $file = $request->file;
                $name = time().str_replace(' ', '', $file->getClientOriginalName());
                $file->move('assets/files',$name);
                $input['file'] = $name;
            }
        }

        if($request->item_type == 'license'){
            if($request->hasFile('file')){
                $file = $request->file;
                $name = time().str_replace(' ', '', $file->getClientOriginalName());
                $file->move('assets/files',$name);
                $input['file'] = $name;
            }
        }


        $input['is_type'] = 'undefine';

        // Save default language data to main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        $defaultInput = $input;
        
        // Get default language values if provided
        if ($defaultLang && $request->has("name_{$defaultLang->id}")) {
            $defaultInput['name'] = $request->input("name_{$defaultLang->id}") ?: $input['name'];
            $defaultInput['slug'] = $request->input("slug_{$defaultLang->id}") ?: $input['slug'];
            $defaultInput['sort_details'] = $request->input("sort_details_{$defaultLang->id}") ?: ($input['sort_details'] ?? null);
            $defaultInput['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
            $defaultInput['meta_title'] = $request->input("meta_title_{$defaultLang->id}") ?: ($input['meta_title'] ?? null);
            $defaultInput['meta_keywords'] = $request->input("meta_keywords_{$defaultLang->id}") ?: ($input['meta_keywords'] ?? null);
            $defaultInput['meta_description'] = $request->input("meta_description_{$defaultLang->id}") ?: ($input['meta_description'] ?? null);
            $defaultInput['tags'] = $request->input("tags_{$defaultLang->id}") ?: ($input['tags'] ?? null);
        }
        
        $item_id = Item::create($defaultInput)->id;

        // Save translations for all languages
        $languages = Language::whereType('Website')->get();
        foreach ($languages as $lang) {
            $translationData = [
                'item_id' => $item_id,
                'language_id' => $lang->id,
                'name' => $request->input("name_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['name'] : null),
                'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['slug'] : null),
                'sort_details' => $request->input("sort_details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['sort_details'] : null),
                'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['details'] : null),
                'meta_title' => $request->input("meta_title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['meta_title'] ?? null) : null),
                'meta_keywords' => $request->input("meta_keywords_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_keywords'] : null),
                'meta_description' => $request->input("meta_description_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_description'] : null),
                'tags' => $request->input("tags_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['tags'] : null),
                'specification_name' => $request->has("specification_name_{$lang->id}") ? json_encode($request->input("specification_name_{$lang->id}")) : ($lang->id == $defaultLang->id && isset($input['specification_name']) ? $input['specification_name'] : null),
                'specification_description' => $request->has("specification_description_{$lang->id}") ? json_encode($request->input("specification_description_{$lang->id}")) : ($lang->id == $defaultLang->id && isset($input['specification_description']) ? $input['specification_description'] : null),
            ];
            
            ItemTranslation::create($translationData);
        }

        if(isset($input['galleries'])){
            $this->galleriesUpdate($request,$item_id);
        }

        return $item_id;

    }

    /**
     * Update item.
     *
     * @param  \App\Http\Requests\ItemRequest  $request
     * @return void
     */

    public function update($item,$request)
    {
        $input = $request->all();

        if ( $request->file('photo')) {

            $images_name = ImageHelper::ItemhandleUpdatedUploadedImage($request->photo,'images',$item,'images','photo');
            $input['photo'] = $images_name[0];
            $input['thumbnail'] = $images_name[1];
        }


        if($request->has('meta_keywords')){
            $input['meta_keywords'] = str_replace(["value", "{", "}", "[","]",":","\""], '', $request->meta_keywords);
        }

        $curr = Currency::where('is_default',1)->first();
        $input['discount_price'] = $request->discount_price / $curr->value;
        $input['previous_price'] = $request->previous_price / $curr->value;


        if($request->has('is_social')){
            $input['social_icons'] = json_encode($input['social_icons']);
            $input['social_links'] = json_encode($input['social_links']);
        }else{
            $input['is_social']    = 0;
            $input['social_icons'] = null;
            $input['social_links'] = null;
        }

        if($request->has('tags')){
            $input['tags'] = str_replace(["value", "{", "}", "[","]",":","\""], '', $request->tags);
        }

        if($request->has('is_specification')){
            $input['specification_name'] = json_encode($input['specification_name']);
            $input['specification_description'] = json_encode($input['specification_description']);
        }else{
            $input['is_specification']    = 0;
            $input['specification_name'] = null;
            $input['specification_description'] = null;
        }

        if($request->has('license_name') && $request->has('license_key')){
            $input['license_name'] = json_encode($input['license_name']);
            $input['license_key'] = json_encode($input['license_key']);
        }else{
            $input['license_name'] = null;
            $input['license_key'] = null;
        }


        if($request->item_type == 'digital'){
            if(!$request->hasFile('file')){
                if($request->link){
                    if(file_exists('assets/files/'.$item->file)){
                        unlink('assets/files/'.$item->file);
                    }
                    $input['file'] = null;
                }
            }
        }
        // digital product file upload
        if($request->item_type == 'digital'){
            if($request->hasFile('file')){
                if($item->file){
                    if(file_exists('assets/files/'.$item->file)){
                        unlink('assets/files/'.$item->file);
                    }
                }

                $file = $request->file;
                $name = time().str_replace(' ', '', $file->getClientOriginalName());
                $file->move('assets/files',$name);
                $input['file'] = $name;
                $input['link'] = null;
            }
        }

        // Update default language values in main table
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        if ($defaultLang && $request->has("name_{$defaultLang->id}")) {
            $input['name'] = $request->input("name_{$defaultLang->id}") ?: $input['name'];
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: $input['slug'];
            $input['sort_details'] = $request->input("sort_details_{$defaultLang->id}") ?: ($input['sort_details'] ?? null);
            $input['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
            $input['meta_title'] = $request->input("meta_title_{$defaultLang->id}") ?: ($input['meta_title'] ?? null);
            $input['meta_keywords'] = $request->input("meta_keywords_{$defaultLang->id}") ?: ($input['meta_keywords'] ?? null);
            $input['meta_description'] = $request->input("meta_description_{$defaultLang->id}") ?: ($input['meta_description'] ?? null);
            $input['tags'] = $request->input("tags_{$defaultLang->id}") ?: ($input['tags'] ?? null);
        }

        $item->update($input);
        
        // Update translations for all languages
        $languages = Language::whereType('Website')->get();
        
        foreach ($languages as $lang) {
            $translationData = [
                'name' => $request->input("name_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['name'] : null),
                'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['slug'] : null),
                'sort_details' => $request->input("sort_details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['sort_details'] : null),
                'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['details'] : null),
                'meta_title' => $request->input("meta_title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['meta_title'] ?? null) : null),
                'meta_keywords' => $request->input("meta_keywords_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_keywords'] : null),
                'meta_description' => $request->input("meta_description_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['meta_description'] : null),
                'tags' => $request->input("tags_{$lang->id}") ?: ($lang->id == $defaultLang->id ? $input['tags'] : null),
                'specification_name' => $request->has("specification_name_{$lang->id}") ? json_encode($request->input("specification_name_{$lang->id}")) : ($lang->id == $defaultLang->id && isset($input['specification_name']) ? $input['specification_name'] : null),
                'specification_description' => $request->has("specification_description_{$lang->id}") ? json_encode($request->input("specification_description_{$lang->id}")) : ($lang->id == $defaultLang->id && isset($input['specification_description']) ? $input['specification_description'] : null),
            ];
            
            ItemTranslation::updateOrCreate(
                ['item_id' => $item->id, 'language_id' => $lang->id],
                $translationData
            );
        }
        
        if(isset($input['galleries'])){
            $this->galleriesUpdate($request,$item->id);
        }

        // Update existing gallery metadata from the edit page.
        $galleryPositions = $request->input('gallery_positions', []);
        $galleryAltTexts = $request->input('gallery_alt_texts', []);

        if(!empty($galleryPositions) || !empty($galleryAltTexts)){
            $galleryIds = array_unique(array_merge(array_keys($galleryPositions), array_keys($galleryAltTexts)));

            foreach($galleryIds as $galleryId){
                $updateData = [];

                if(array_key_exists($galleryId, $galleryPositions)){
                    $updateData['position'] = $galleryPositions[$galleryId];
                }

                if(array_key_exists($galleryId, $galleryAltTexts)){
                    $updateData['alt_text'] = $galleryAltTexts[$galleryId];
                }

                if(!empty($updateData)){
                    Gallery::where('id', $galleryId)->update($updateData);
                }
            }
        }
    }

    public function highlight($item,$request)
    {
        $input = $request->all();
        if($request->is_type != 'flash_deal'){
            $input['date'] = null;
        }
        $item->update($input);
    }

    /**
     * Delete item.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function delete($item)
    {
        if($item->galleries()->count() > 0){
            foreach($item->galleries as $gallery){
                $this->galleryDelete($gallery);
            }
        }

        if($item->campaigns->count() > 0){
            $item->campaigns()->delete();
        }
        if($item->reviews->count() > 0){
            $item->reviews()->delete();
        }

        if($item->attributes()->count() > 0){
            foreach($item->attributes as $attribute){
                $attribute->options()->delete();
            }
            $item->attributes()->delete();
        }

        ImageHelper::handleDeletedImage($item,'photo','images');
        ImageHelper::handleDeletedImage($item,'thumbnail','images');
        if($item->item_type == 'digital' && $item->file){
            ImageHelper::handleDeletedImage($item,'file','images');
        }
        $item->delete();
    }

    /**
     * Update gallery.
     *
     * @param  \App\Http\Requests\GalleryRequest  $request
     * @return void
     */

    public function galleriesUpdate($request,$item_id=null)
    {
        Gallery::insert($this->storeImageData($request,$item_id));
    }

    /**
     * Delete gallery.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function galleryDelete($gallery)
    {
        ImageHelper::handleDeletedImage($gallery,'photo','images');
        $gallery->delete();
    }

    /**
     * Custom Function.
     * @return void
     */

    public function storeImageData($request,$item_id=null)
    {
        $storeData = [];
        if ($galleries = $request->file('galleries')) {
            foreach($galleries as $key => $gallery){
                $storeData[$key] = [
                    'photo'=>  ImageHelper::handleUploadedImage($gallery,'images'),
                    'item_id' => $item_id ? $item_id : $request['item_id'],
                    'position' => $key,
                ];
            }
        }
        return $storeData;
    }

}
