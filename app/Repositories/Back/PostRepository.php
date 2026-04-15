<?php

namespace App\Repositories\Back;

use App\{
    Models\Post,
    Models\PostTranslation,
    Models\Language,
    Helpers\ImageHelper
};
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class PostRepository
{

    /**
     * Store post.
     *
     * @param  \App\Http\Requests\ImageStoreRequest  $request
     * @return void
     */

    public function store($request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $input = [];
        $input['title'] = $request->input('title_'.$defaultLang->id);
        $input['slug'] = Str::slug($request->input('title_'.$defaultLang->id));
        $input['details'] = $request->input('details_'.$defaultLang->id);
        $input['category_id'] = $request->category_id;
        
        $tags = $request->input('tags_'.$defaultLang->id);
        if ($tags) {
            $input['tags'] = str_replace(["value", "{", "}", "[", "]", ":", "\""], '', $tags);
        }
        $input['meta_keywords'] = $request->input('meta_keywords_'.$defaultLang->id);
        $input['meta_descriptions'] = $request->input('meta_descriptions_'.$defaultLang->id);
        
        if ($request->photo) {
            $input['photo'] = json_encode($this->storeImageData($request), true);
        }

        $post = Post::create($input);

        // Save translations for each language
        foreach($languages as $lang) {
            $langTags = $request->input('tags_'.$lang->id);
            if ($langTags) {
                $langTags = str_replace(["value", "{", "}", "[", "]", ":", "\""], '', $langTags);
            }

            PostTranslation::create([
                'post_id' => $post->id,
                'language_id' => $lang->id,
                'title' => $request->input('title_'.$lang->id),
                'slug' => Str::slug($request->input('title_'.$lang->id)),
                'details' => $request->input('details_'.$lang->id),
                'tags' => $langTags,
                'meta_keywords' => $request->input('meta_keywords_'.$lang->id),
                'meta_descriptions' => $request->input('meta_descriptions_'.$lang->id),
            ]);
        }
    }

    /**
     * Update post.
     *
     * @param  \App\Http\Requests\ImageUpdateRequest  $request
     * @return void
     */

    public function update($post, $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $input = [];
        $input['title'] = $request->input('title_'.$defaultLang->id);
        $input['slug'] = Str::slug($request->input('title_'.$defaultLang->id));
        $input['details'] = $request->input('details_'.$defaultLang->id);
        $input['category_id'] = $request->category_id;
        
        $tags = $request->input('tags_'.$defaultLang->id);
        if ($tags) {
            $input['tags'] = str_replace(["value", "{", "}", "[", "]", ":", "\""], '', $tags);
        }
        $input['meta_keywords'] = $request->input('meta_keywords_'.$defaultLang->id);
        $input['meta_descriptions'] = $request->input('meta_descriptions_'.$defaultLang->id);

        if ($request->photo) {
            $input['photo'] = json_encode($this->UpdateImageData($request, $post), true);
        }
        $post->update($input);

        // Update translations for each language
        foreach($languages as $lang) {
            $langTags = $request->input('tags_'.$lang->id);
            if ($langTags) {
                $langTags = str_replace(["value", "{", "}", "[", "]", ":", "\""], '', $langTags);
            }

            PostTranslation::updateOrCreate(
                ['post_id' => $post->id, 'language_id' => $lang->id],
                [
                    'title' => $request->input('title_'.$lang->id),
                    'slug' => Str::slug($request->input('title_'.$lang->id)),
                    'details' => $request->input('details_'.$lang->id),
                    'tags' => $langTags,
                    'meta_keywords' => $request->input('meta_keywords_'.$lang->id),
                    'meta_descriptions' => $request->input('meta_descriptions_'.$lang->id),
                ]
            );
        }
    }


    public function storeImageData($request)
    {

        $storeData = [];
        if ($photos = $request->file('photo')) {
            foreach ($photos as $key => $photo) {
                $storeData[$key] = ImageHelper::handleUploadedImage($photo, 'images');
            }
        }
        return $storeData;
    }

    public function UpdateImageData($request, $post)
    {

        $storeData = json_decode($post->photo, true);

        if ($photos = $request->file('photo')) {
            foreach ($photos as $key => $photo) {
                array_push($storeData, ImageHelper::handleUploadedImage($photo, 'images'));
            }
        }

        return $storeData;
    }


    /**
     * Delete post.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function delete($post)
    {
        $images = json_decode($post->photo, true);
        foreach ($images as $image) {
            // if (file_exists(base_path('../').'assets/images/'.$image)) {
            //     unlink(base_path('../').'assets/images/'.$image);
            // }
            Storage::delete("images" . '/' . $image);
        }
        $post->delete();
    }

    /**
     * Delete post.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function photoDelete($key, $id)
    {
        $post = Post::findOrFail($id);
        $photos = json_decode($post->photo, true);
        $delete_photo = $photos[$key];

        Storage::delete("images" . '/' . $delete_photo);
       
        unset($photos[$key]);
        $new_photos = json_encode($photos, true);
        $post->update(['photo' => $new_photos]);
    }
}
