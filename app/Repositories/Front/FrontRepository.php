<?php

namespace App\Repositories\Front;
use App\{
    Models\Post,
    Models\Page,
    Models\Order,
    Models\Language,
};
use App\Helpers\PriceHelper;
use App\Models\Bcategory;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
class FrontRepository
{
    public function displayPosts($request){
        if($request->has('category')){
            return Post::with('category')->whereCategoryId(Bcategory::where('slug',$request->category)->first()->id)->latest('id')->paginate(6);
        }
        else if($request->has('search')){
            return Post::with('category')->where('title', 'like', '%' . $request->search . '%')->orWhere('details', 'like', '%' . $request->search  . '%')->latest('id')->paginate(6);
        }

        else if($request->has('tag')){
            return Post::with('category')->where('tags', 'like', '%' . $request->tag . '%')->latest('id')->paginate(6);
        }
        else{
            return Post::with('category')->latest('id')->paginate(6);
        }
    }

    public function displayPost($slug){
        $tagz = '';
        $tags = null;
        $name = Post::pluck('tags')->toArray();
        foreach($name as $nm)
        {
            $tagz .= $nm.',';
        }
        $tags = array_unique(explode(',',$tagz));
        return [
            'posts'       => Post::orderby('id','desc')->take(4)->get(),
            'post'       => Post::whereSlug($slug)->first(),
            'categories' => Bcategory::withCount('posts')->whereStatus(1)->get(),
            'tags'       => array_filter($tags)
        ];
    }

    public function displayPage($slug){
        // Get current language
        $currentLanguage = Session::has('language') ? Session::get('language') : Language::whereType('Website')->where('is_default', 1)->first()->id;
        
        // Get page
        $page = Page::whereSlug($slug)->firstOrFail();
        
        // Load translation for current language
        $translation = $page->translations()->where('language_id', $currentLanguage)->first();
        
        // If translation exists, merge it with the page data
        if ($translation) {
            $page->title = $translation->title ?? $page->title;
            $page->slug = $translation->slug ?? $page->slug;
            $page->details = $translation->details ?? $page->details;
            $page->meta_keywords = $translation->meta_keywords ?? $page->meta_keywords;
            $page->meta_descriptions = $translation->meta_descriptions ?? $page->meta_descriptions;
        }
        
        return $page;
    }

    public function reviewSubmit($request)
    {
        $user = Auth::user();
    
        // Check if the user already has a review for this item
        $existingReview = $user->reviews()->where('item_id', $request->item_id)->first();
    
        if ($existingReview) {
            // Update the existing review
            $existingReview->update([
                'subject' => $request->subject,
                'rating' => $request->rating,
                'review' => $request->review,
                'status' => 1,
            ]);
            return __('Your Review Updated Successfully.');
        }
    
        // Check if the user has purchased the product
        $orders = Order::where('user_id', $user->id)->get();
        $isProductPurchased = false;
    
        foreach ($orders as $order) {
            $cart = json_decode($order->cart, true);
            foreach ($cart as $key => $product) {
                if ($request->item_id == PriceHelper::GetItemId($key)) {
                    $isProductPurchased = true;
                    break 2; // Exit both loops
                }
            }
        }
    
        if (!$isProductPurchased) {
            return [
                'errors' => [
                    0 => __("Buy This Product First"),
                ],
            ];
        }
    
        // Create a new review
        $user->reviews()->create($request->all());
        return __('Your Review Submitted Successfully.');
    }
    


}
