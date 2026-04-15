<?php

namespace App\Models;

use App\Models\Wishlist;
use App\Traits\HasTranslations;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Session;

class Item extends Model
{
    use HasTranslations;

    protected $fillable = ['category_id','subcategory_id','childcategory_id','brand_id','name','slug','sku','tags','video','sort_details','specification_name','specification_description','is_specification','details','photo','thumbnail','alt_text','discount_price','previous_price','stock','meta_title','meta_keywords','meta_description','status','is_type','tax_id','date','item_type','file','link','file_type','license_name','license_key','affiliate_link',"seller_id"];

    public function category()
    {
        return $this->belongsTo('App\Models\Category')->withDefault();
    }

    public function subcategory()
    {
        return $this->belongsTo('App\Models\Subcategory')->withDefault();
    }

    public function childcategory()
    {
        return $this->belongsTo('App\Models\ChieldCategory')->withDefault();
    }

    public function brand()
    {
        return $this->belongsTo('App\Models\Brand')->withDefault();
    }

    public function translations()
    {
        return $this->hasMany(ItemTranslation::class);
    }

    // Accessors for multilingual attributes
    public function getNameAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('name', 'name');
            return $translated ?: $value;
        }
        return $value;
    }

    public function getSortDetailsAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('sort_details', 'sort_details');
            return $translated ?: $value;
        }
        return $value;
    }

    public function getDetailsAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('details', 'details');
            return $translated ?: $value;
        }
        return $value;
    }

    public function getMetaKeywordsAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('meta_keywords', 'meta_keywords');
            return $translated ?: $value;
        }
        return $value;
    }

    public function getMetaTitleAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('meta_title', 'meta_title');
            return $translated ?: $value;
        }
        return $value;
    }

    public function getMetaDescriptionAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('meta_description', 'meta_description');
            return $translated ?: $value;
        }
        return $value;
    }

    public function getTagsAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('tags', 'tags');
            return $translated ?: $value;
        }
        return $value;
    }

    public function getSlugAttribute($value)
    {
        if (!request()->is('admin/*') && method_exists($this, 'translations')) {
            $translated = $this->getTranslatedAttribute('slug', 'slug');
            return $translated ?: $value;
        }
        return $value;
    }

    public function campaigns()
    {
        return $this->hasMany('App\Models\CampaignItem');
    }

    public function tax()
    {
        return $this->belongsTo('App\Models\Tax')->withDefault();
    }

    public function attributes()
    {
        return $this->hasMany('App\Models\Attribute');
    }

    public function galleries()
    {
        return $this->hasMany('App\Models\Gallery');
    }

    public function reviews()
    {
        return $this->hasMany('App\Models\Review');
    }

    public static function taxCalculate($item)
    {
        if($item->tax){
            $price = $item->discount_price;
            $percentage = $item->tax->value;
            $tax = ($price * $percentage) / 100;
            return $tax;
        }else{
            return 0;
        }
        
    }




    public function getWishlistItemId()
    {
        return Wishlist::whereItemId($this->id)->first()->id;
    }


    public function user()
    {
    	return $this->belongsTo('App\Models\User','vendor_id')->withDefault();
    }


    public function is_stock()
    {
        $item = $this;
        // license product stock check------------
        if($item->item_type == 'license'){
            if($item->license_key){
                $lisense_key = json_decode($item->license_key,true);
                if(count($lisense_key) > 0){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
        }

        // digital product stock check-------------

        if($item->item_type == 'digital'){
            return true;
        }
        if($item->item_type == 'affiliate'){
            return true;
        }

        // physical product stock check

        if($item->item_type == 'normal'){
            if($item->stock){
                if($item->stock != 0){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
          
        }
     
    }

}
