<?php

namespace App\Http\Controllers\Back;

use App\Helpers\ImageHelper;
use App\Http\Controllers\Controller;
use App\Models\HomeCutomize;
use App\Models\HomeCutomizeTranslation;
use App\Models\Language;
use Illuminate\Http\Request;

class HomePageController extends Controller
{

     /**
     * Constructor Method.
     *
     * Setting Authentication
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
        $this->middleware('adminlocalize');
    }


    public function index(){
        $data = HomeCutomize::with('translations')->first();
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        return view('back.home-page.index',[
            'hero_banner' => json_decode($data->hero_banner,true),
            'first_banner' => json_decode($data->banner_first,true),
            'secend_banner' => json_decode($data->banner_secend,true),
            'third_banner' => json_decode($data->banner_third,true),
            'popular_category' => json_decode($data->popular_category,true),
            'three_column_category' => json_decode($data->two_column_category,true),
            'feature_category' => json_decode($data->feature_category,true),
            'home4_banner' => json_decode($data->home_page4,true),
            'home_4_popular_category' => json_decode($data->home_4_popular_category,true),
            'languages' => $languages,
            'defaultLang' => $defaultLang,
            'homeCutomize' => $data,
        ]);
    }

    public function hero_banner_update(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'img1' => 'image',
            'img2' => 'image',
            'title1_'.$defaultLang->id => 'required',
            'title2_'.$defaultLang->id => 'required',
            'url1' => 'required|max:200',
            'url2' => 'required|max:200',
        ]);

        $all_images_names = ['img1','img2'];
        $data = HomeCutomize::first();
        $check = json_decode($data->hero_banner, true) ?? [];

        // Handle images (same for all languages)
        $imageData = [];
        foreach($all_images_names as $single_image){
            if($request->hasFile($single_image)){
                $imageData[$single_image] = ImageHelper::handleUploadedImage($request->$single_image,'images',isset($check[$single_image]) ? $check[$single_image] : null);
            } else {
                $imageData[$single_image] = isset($check[$single_image]) ? $check[$single_image] : null;
            }
        }
        //dd($request->all());
        // Save default language data to main table
        $mainInput = [
            'img1' => $imageData['img1'],
            'img2' => $imageData['img2'],
            'title1' => $request->input('title1_'.$defaultLang->id),
            'heading1'=>$request->input('heading1_'.$defaultLang->id),
            'heading2'=>$request->input('heading2_'.$defaultLang->id),
            'title2' => $request->input('title2_'.$defaultLang->id),
            'subtitle1' => $request->input('subtitle1_'.$defaultLang->id),
            'subtitle2' => $request->input('subtitle2_'.$defaultLang->id),
            'payment1'=>$request->input('payment1_'.$defaultLang->id),
            'payment2'=>$request->input('payment2_'.$defaultLang->id),
            'url1' => $request->url1,
            'url2' => $request->url2,
        ];
        $data->hero_banner = json_encode($mainInput, true);
        $data->update();

        // Save translations for each language
        foreach($languages as $lang) {
            $translationData = [
                'img1' => $imageData['img1'],
                'img2' => $imageData['img2'],
                'heading1'=> $request->input('heading1_'.$lang->id),
                'heading2'=> $request->input('heading2_'.$lang->id),
                'title1' => $request->input('title1_'.$lang->id),
                'title2' => $request->input('title2_'.$lang->id),
                'subtitle1' => $request->input('subtitle1_'.$lang->id),
                'subtitle2' => $request->input('subtitle2_'.$lang->id),
                'payment1'=>$request->input('payment1_'.$lang->id),
                'payment2'=>$request->input('payment2_'.$lang->id),
                'url1' => $request->url1,
                'url2' => $request->url2,
            ];

            HomeCutomizeTranslation::updateOrCreate(
                ['home_cutomize_id' => $data->id, 'language_id' => $lang->id],
                ['hero_banner' => json_encode($translationData, true)]
            );
        }

        return redirect()->back()->withSuccess(__('Banner Update Successfully'));
    }
    public function first_banner_update(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'img1' => 'image',
            'img2' => 'image',
            'img3' => 'image',
            'firsturl1' => 'required|max:200',
            'firsturl2' => 'required|max:200',
            'firsturl3' => 'required|max:200',
        ]);

        $all_images_names = ['img1','img2','img3'];
        $data = HomeCutomize::first();
        $check = json_decode($data->banner_first, true) ?? [];

        // Handle images
        $imageData = [];
        foreach($all_images_names as $single_image){
            if($request->hasFile($single_image)){
                $imageData[$single_image] = ImageHelper::handleUploadedImage($request->$single_image,'images',isset($check[$single_image]) ? $check[$single_image] : null);
            }else{
                $imageData[$single_image] = isset($check[$single_image]) ? $check[$single_image] : null;
            }
        }

        // Save default language data to main table
        $mainInput = [
            'img1' => $imageData['img1'],
            'img2' => $imageData['img2'],
            'img3' => $imageData['img3'],
            'title1' => $request->input('title1_'.$defaultLang->id),
            'title2' => $request->input('title2_'.$defaultLang->id),
            'title3' => $request->input('title3_'.$defaultLang->id),
            'subtitle1' => $request->input('subtitle1_'.$defaultLang->id),
            'subtitle2' => $request->input('subtitle2_'.$defaultLang->id),
            'subtitle3' => $request->input('subtitle3_'.$defaultLang->id),
            'firsturl1' => $request->firsturl1,
            'firsturl2' => $request->firsturl2,
            'firsturl3' => $request->firsturl3,
        ];
        $data->banner_first = json_encode($mainInput, true);
        $data->update();

        // Save translations for each language
        foreach($languages as $lang) {
            $translationData = [
                'img1' => $imageData['img1'],
                'img2' => $imageData['img2'],
                'img3' => $imageData['img3'],
                'title1' => $request->input('title1_'.$lang->id),
                'title2' => $request->input('title2_'.$lang->id),
                'title3' => $request->input('title3_'.$lang->id),
                'subtitle1' => $request->input('subtitle1_'.$lang->id),
                'subtitle2' => $request->input('subtitle2_'.$lang->id),
                'subtitle3' => $request->input('subtitle3_'.$lang->id),
                'firsturl1' => $request->firsturl1,
                'firsturl2' => $request->firsturl2,
                'firsturl3' => $request->firsturl3,
            ];

            HomeCutomizeTranslation::updateOrCreate(
                ['home_cutomize_id' => $data->id, 'language_id' => $lang->id],
                ['banner_first' => json_encode($translationData, true)]
            );
        }

        return redirect()->back()->withSuccess(__('Banner Update Successfully'));
    }

    public function secend_banner_update(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'img1' => 'image',
            'img2' => 'image',
            'img3' => 'image',
            'url1' => 'required|max:200',
            'url2' => 'required|max:200',
            'url3' => 'required|max:200',
        ]);

        $all_images_names = ['img1','img2','img3'];
        $data = HomeCutomize::first();
        $check = json_decode($data->banner_secend, true) ?? [];

        // Handle images
        $imageData = [];
        foreach($all_images_names as $single_image){
            if($request->hasFile($single_image)){
                $imageData[$single_image] = ImageHelper::handleUploadedImage($request->$single_image,'images',isset($check[$single_image]) ? $check[$single_image] : null);
            }else{
                $imageData[$single_image] = isset($check[$single_image]) ? $check[$single_image] : null;
            }
        }
            
        // Save default language data to main table
        $mainInput = [
            'img1' => $imageData['img1'],
            'img2' => $imageData['img2'],
            'img3' => $imageData['img3'],
            'title1' => $request->input('title1_'.$defaultLang->id),
            'title2' => $request->input('title2_'.$defaultLang->id),
            'title3' => $request->input('title3_'.$defaultLang->id),
            'subtitle1' => $request->input('subtitle1_'.$defaultLang->id),
            'subtitle2' => $request->input('subtitle2_'.$defaultLang->id),
            'subtitle3' => $request->input('subtitle3_'.$defaultLang->id),
            'url1' => $request->url1,
            'url2' => $request->url2,
            'url3' => $request->url3,
        ];
        $data->banner_secend = json_encode($mainInput, true);
        $data->update();

        // Save translations for each language
        foreach($languages as $lang) {
            $translationData = [
                'img1' => $imageData['img1'],
                'img2' => $imageData['img2'],
                'img3' => $imageData['img3'],
                'title1' => $request->input('title1_'.$lang->id),
                'title2' => $request->input('title2_'.$lang->id),
                'title3' => $request->input('title3_'.$lang->id),
                'subtitle1' => $request->input('subtitle1_'.$lang->id),
                'subtitle2' => $request->input('subtitle2_'.$lang->id),
                'subtitle3' => $request->input('subtitle3_'.$lang->id),
                'url1' => $request->url1,
                'url2' => $request->url2,
                'url3' => $request->url3,
            ];

            HomeCutomizeTranslation::updateOrCreate(
                ['home_cutomize_id' => $data->id, 'language_id' => $lang->id],
                ['banner_secend' => json_encode($translationData, true)]
            );
        }

        return redirect()->back()->withSuccess(__('Banner Update Successfully'));
    }

    public function third_banner_update(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'img1' => 'image',
            'img2' => 'image',
            'url1' => 'required|max:200',
            'url2' => 'required|max:200',
        ]);

        $all_images_names = ['img1','img2'];
        $data = HomeCutomize::first();
        $check = json_decode($data->banner_third, true) ?? [];

        // Handle images
        $imageData = [];
        foreach($all_images_names as $single_image){
            if($request->hasFile($single_image)){
                $imageData[$single_image] = ImageHelper::handleUploadedImage($request->$single_image,'images',isset($check[$single_image]) ? $check[$single_image] : null);
            }else{
                $imageData[$single_image] = isset($check[$single_image]) ? $check[$single_image] : null;
            }
        }

        // Save default language data to main table
        $mainInput = [
            'img1' => $imageData['img1'],
            'img2' => $imageData['img2'],
            'title1' => $request->input('title1_'.$defaultLang->id),
            'title2' => $request->input('title2_'.$defaultLang->id),
            'subtitle1' => $request->input('subtitle1_'.$defaultLang->id),
            'subtitle2' => $request->input('subtitle2_'.$defaultLang->id),
            'url1' => $request->url1,
            'url2' => $request->url2,
        ];
        $data->banner_third = json_encode($mainInput, true);
        $data->update();

        // Save translations for each language
        foreach($languages as $lang) {
            $translationData = [
                'img1' => $imageData['img1'],
                'img2' => $imageData['img2'],
                'title1' => $request->input('title1_'.$lang->id),
                'title2' => $request->input('title2_'.$lang->id),
                'subtitle1' => $request->input('subtitle1_'.$lang->id),
                'subtitle2' => $request->input('subtitle2_'.$lang->id),
                'url1' => $request->url1,
                'url2' => $request->url2,
            ];

            HomeCutomizeTranslation::updateOrCreate(
                ['home_cutomize_id' => $data->id, 'language_id' => $lang->id],
                ['banner_third' => json_encode($translationData, true)]
            );
        }

        return redirect()->back()->withSuccess(__('Banner Update Successfully'));
    }


    public function popular_category_update(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'popular_title_'.$defaultLang->id => 'required|max:255',
        ]);

        $input = $request->all();
        unset($input['_token']);

        // Save default language data to main table
        $mainInput = $input;
        $mainInput['popular_title'] = $request->input('popular_title_'.$defaultLang->id);
        
        $data = HomeCutomize::first();
        $data->popular_category = json_encode($mainInput, true);
        $data->update();

        // Save translations for each language
        foreach($languages as $lang) {
            $translationData = $input;
            $translationData['popular_title'] = $request->input('popular_title_'.$lang->id);

            HomeCutomizeTranslation::updateOrCreate(
                ['home_cutomize_id' => $data->id, 'language_id' => $lang->id],
                ['popular_category' => json_encode($translationData, true)]
            );
        }

        return redirect()->back()->withSuccess(__('Popular Category Update Successfully'));
    }

    public function tree_column_category_update(Request $request)
    {
        $input = $request->all();
        unset($input['_token']);
        $data = HomeCutomize::first();
        $data->two_column_category = json_encode($input,true);
        $data->update();
        return redirect()->back()->withSuccess(__('Tree Column Category Update Successfully'));
    }


    public function feature_category_update(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'feature_title_'.$defaultLang->id => 'required|max:255',
        ]);

        $input = $request->all();
        unset($input['_token']);

        // Save default language data to main table
        $mainInput = $input;
        $mainInput['feature_title'] = $request->input('feature_title_'.$defaultLang->id);

        $data = HomeCutomize::first();
        $data->feature_category = json_encode($mainInput, true);
        $data->update();

        // Save translations for each language
        foreach($languages as $lang) {
            $translationData = $input;
            $translationData['feature_title'] = $request->input('feature_title_'.$lang->id);

            HomeCutomizeTranslation::updateOrCreate(
                ['home_cutomize_id' => $data->id, 'language_id' => $lang->id],
                ['feature_category' => json_encode($translationData, true)]
            );
        }

        return redirect()->back()->withSuccess(__('Featured Category Update Successfully'));
    }


    public function homepage4update(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'img1' => 'image',
            'img2' => 'image',
            'img3' => 'image',
            'img4' => 'image',
            'img5' => 'image',
            'url1' => 'required|max:200',
            'url2' => 'required|max:200',
            'url3' => 'required|max:200',
            'url4' => 'required|max:200',
            'url5' => 'required|max:200',
            'label1_'.$defaultLang->id => 'required|max:200',
            'label2_'.$defaultLang->id => 'required|max:200',
            'label3_'.$defaultLang->id => 'required|max:200',
            'label4_'.$defaultLang->id => 'required|max:200',
            'label5_'.$defaultLang->id => 'required|max:200',
        ]);

        $all_images_names = ['img1','img2','img3','img4','img5'];
        $data = HomeCutomize::first();
        $check = json_decode($data->home_page4, true) ?? [];

        // Handle images
        $imageData = [];
        foreach($all_images_names as $single_image){
            if($request->hasFile($single_image)){
                $imageData[$single_image] = ImageHelper::handleUploadedImage($request->$single_image,'images',isset($check[$single_image]) ? $check[$single_image] : null);
            }else{
                $imageData[$single_image] = isset($check[$single_image]) ? $check[$single_image] : null;
            }
        }

        // Save default language data to main table
        $mainInput = [
            'img1' => $imageData['img1'],
            'img2' => $imageData['img2'],
            'img3' => $imageData['img3'],
            'img4' => $imageData['img4'],
            'img5' => $imageData['img5'],
            'label1' => $request->input('label1_'.$defaultLang->id),
            'label2' => $request->input('label2_'.$defaultLang->id),
            'label3' => $request->input('label3_'.$defaultLang->id),
            'label4' => $request->input('label4_'.$defaultLang->id),
            'label5' => $request->input('label5_'.$defaultLang->id),
            'url1' => $request->url1,
            'url2' => $request->url2,
            'url3' => $request->url3,
            'url4' => $request->url4,
            'url5' => $request->url5,
        ];
        $data->home_page4 = json_encode($mainInput, true);
        $data->update();

        // Save translations for each language
        foreach($languages as $lang) {
            $translationData = [
                'img1' => $imageData['img1'],
                'img2' => $imageData['img2'],
                'img3' => $imageData['img3'],
                'img4' => $imageData['img4'],
                'img5' => $imageData['img5'],
                'label1' => $request->input('label1_'.$lang->id),
                'label2' => $request->input('label2_'.$lang->id),
                'label3' => $request->input('label3_'.$lang->id),
                'label4' => $request->input('label4_'.$lang->id),
                'label5' => $request->input('label5_'.$lang->id),
                'url1' => $request->url1,
                'url2' => $request->url2,
                'url3' => $request->url3,
                'url4' => $request->url4,
                'url5' => $request->url5,
            ];

            HomeCutomizeTranslation::updateOrCreate(
                ['home_cutomize_id' => $data->id, 'language_id' => $lang->id],
                ['home_page4' => json_encode($translationData, true)]
            );
        }

        return redirect()->back()->withSuccess(__('Banner Update Successfully'));
    }


    public function homepage4categoryupdate(Request $request)
    {
       $category = json_encode($request->home_4_popular_category,true);
       $data = HomeCutomize::first();
       $data->home_4_popular_category = $category;
       $data->update();
       return redirect()->back()->withSuccess(__('Banner Update Successfully'));

    }
}
