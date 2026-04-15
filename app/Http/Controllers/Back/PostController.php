<?php

namespace App\Http\Controllers\Back;

use App\{
    Models\Post,
    Models\PostTranslation,
    Models\Language,
    Repositories\Back\PostRepository,
    Http\Requests\ImageStoreRequest,
    Http\Requests\ImageUpdateRequest,
    Http\Controllers\Controller
};
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Constructor Method.
     *
     * Setting Authentication
     *
     * @param  \App\Repositories\Back\PostRepository $repository
     *
     */
    public function __construct(PostRepository $repository)
    {
        $this->middleware('auth:admin');
        $this->middleware('adminlocalize');
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('back.post.index',[
            'datas' => Post::with('category')->orderBy('id','desc')->get()
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
        return view('back.post.create', compact('languages', 'defaultLang'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'photo*' => 'required|image',
            'title_'.$defaultLang->id => 'required|unique:posts,title|max:255',
            'details_'.$defaultLang->id => 'required',
        ]);

        $this->repository->store($request);
        return redirect()->route('back.post.index')->withSuccess(__('New Post Added Successfully.'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        $languages = Language::whereType('Website')->get();
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();
        $post->load('translations');
        return view('back.post.edit', compact('post', 'languages', 'defaultLang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $defaultLang = Language::whereType('Website')->where('is_default', 1)->first();

        $request->validate([
            'photo*' => 'image',
            'title_'.$defaultLang->id => 'required|max:255|unique:posts,title,'.$post->id,
            'category_id' => 'required',
            'details_'.$defaultLang->id => 'required',
        ]);

        $this->repository->update($post, $request);
        return redirect()->route('back.post.index')->withSuccess(__('Post Updated Successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $this->repository->delete($post);
        return redirect()->route('back.post.index')->withSuccess(__('Post Deleted Successfully.'));
    }


    public function delete($key,$id)
    {
        $this->repository->photoDelete($key,$id);
        return back()->withSuccess(__('Photo Deleted Successfully.'));

    }
}
