<?php

namespace App\Http\Controllers\Back;

use App\{
    Models\Faq,
    Models\FaqTranslation,
    Models\Language,
    Http\Controllers\Controller
};

use Illuminate\Http\Request;


class FaqController extends Controller
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

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('back.faq.index',[
            'datas' => Faq::with('category')->orderBy('id','desc')->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        return view('back.faq.create', compact('languages', 'defaultLang'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'title_'.$defaultLang->id => 'required|max:255',
            'details_'.$defaultLang->id => 'required',
            'category_id' => 'required',
        ]);

        // Create FAQ with default language data
        $faq = Faq::create([
            'title' => $request->input('title_'.$defaultLang->id),
            'details' => $request->input('details_'.$defaultLang->id),
            'category_id' => $request->category_id,
        ]);

        // Save translations for each language
        foreach($languages as $lang) {
            FaqTranslation::create([
                'faq_id' => $faq->id,
                'language_id' => $lang->id,
                'title' => $request->input('title_'.$lang->id),
                'details' => $request->input('details_'.$lang->id),
            ]);
        }

        return redirect()->route('back.faq.index')->withSuccess(__('New Faq Added Successfully.'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Faq $faq)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        $faq->load('translations');
        return view('back.faq.edit', compact('faq', 'languages', 'defaultLang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Faq $faq)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'title_'.$defaultLang->id => 'required|max:255',
            'details_'.$defaultLang->id => 'required',
            'category_id' => 'required',
        ]);

        // Update FAQ with default language data
        $faq->update([
            'title' => $request->input('title_'.$defaultLang->id),
            'details' => $request->input('details_'.$defaultLang->id),
            'category_id' => $request->category_id,
        ]);

        // Update translations for each language
        foreach($languages as $lang) {
            FaqTranslation::updateOrCreate(
                ['faq_id' => $faq->id, 'language_id' => $lang->id],
                [
                    'title' => $request->input('title_'.$lang->id),
                    'details' => $request->input('details_'.$lang->id),
                ]
            );
        }

        return redirect()->route('back.faq.index')->withSuccess(__('Faq Updated Successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Faq $faq)
    {
        $faq->delete();
        return redirect()->route('back.faq.index')->withSuccess(__('Faq Deleted Successfully.'));
    }
}
