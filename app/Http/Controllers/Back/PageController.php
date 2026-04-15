<?php

namespace App\Http\Controllers\Back;

use App\{
    Models\Page,
    Models\PageTranslation,
    Models\Language,
    Http\Requests\PageRequest,
    Http\Controllers\Controller
};



class PageController extends Controller
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
        return view('back.page.index',[
            'datas' => Page::orderBy('id','desc')->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back.page.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PageRequest $request)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        // Save default language data to main table
        $input = $request->all();
        if ($defaultLang && $request->has("title_{$defaultLang->id}")) {
            $input['title'] = $request->input("title_{$defaultLang->id}") ?: ($input['title'] ?? null);
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: ($input['slug'] ?? null);
            $input['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
            $input['meta_keywords'] = $request->input("meta_keywords_{$defaultLang->id}") ?: ($input['meta_keywords'] ?? null);
            $input['meta_descriptions'] = $request->input("meta_descriptions_{$defaultLang->id}") ?: ($input['meta_descriptions'] ?? null);
        }

        $page = Page::create($input);

        // Save translations for all languages
        foreach ($languages as $lang) {
            PageTranslation::create([
                'page_id' => $page->id,
                'language_id' => $lang->id,
                'title' => $request->input("title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['title'] ?? null) : null),
                'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['slug'] ?? null) : null),
                'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['details'] ?? null) : null),
                'meta_keywords' => $request->input("meta_keywords_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['meta_keywords'] ?? null) : null),
                'meta_descriptions' => $request->input("meta_descriptions_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['meta_descriptions'] ?? null) : null),
            ]);
        }

        return redirect()->route('back.page.index')->withSuccess(__('New Page Added Successfully.'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Page $page)
    {
        return view('back.page.edit',compact('page'));
    }


    /**
     * Change the status for editing the specified resource.
     *
     * @param  int  $id
     * @param  int  $pos
     * @return \Illuminate\Http\Response
     */
    public function pos($id,$pos)
    {
        $page = Page::find($id)->update(['pos' => $pos]);
        return redirect()->route('back.page.index')->withSuccess(__('Status Updated Successfully.'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PageRequest $request, Page $page)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        // Update default language values in main table
        $input = $request->all();
        if ($defaultLang && $request->has("title_{$defaultLang->id}")) {
            $input['title'] = $request->input("title_{$defaultLang->id}") ?: ($input['title'] ?? null);
            $input['slug'] = $request->input("slug_{$defaultLang->id}") ?: ($input['slug'] ?? null);
            $input['details'] = $request->input("details_{$defaultLang->id}") ?: ($input['details'] ?? null);
            $input['meta_keywords'] = $request->input("meta_keywords_{$defaultLang->id}") ?: ($input['meta_keywords'] ?? null);
            $input['meta_descriptions'] = $request->input("meta_descriptions_{$defaultLang->id}") ?: ($input['meta_descriptions'] ?? null);
        }

        $page->update($input);

        // Update translations for all languages
        foreach ($languages as $lang) {
            PageTranslation::updateOrCreate(
                ['page_id' => $page->id, 'language_id' => $lang->id],
                [
                    'title' => $request->input("title_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['title'] ?? null) : null),
                    'slug' => $request->input("slug_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['slug'] ?? null) : null),
                    'details' => $request->input("details_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['details'] ?? null) : null),
                    'meta_keywords' => $request->input("meta_keywords_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['meta_keywords'] ?? null) : null),
                    'meta_descriptions' => $request->input("meta_descriptions_{$lang->id}") ?: ($lang->id == $defaultLang->id ? ($input['meta_descriptions'] ?? null) : null),
                ]
            );
        }

        return redirect()->route('back.page.index')->withSuccess(__('Page Updated Successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Page $page)
    {
        $page->translations()->delete();
        $page->delete();
        return redirect()->route('back.page.index')->withSuccess(__('Page Deleted Successfully.'));
    }
}
