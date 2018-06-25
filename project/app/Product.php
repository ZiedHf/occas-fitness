<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['title', 'title_secondary', 'model', 'mark_id', 'category', 'description','sizes', 'price', 'previous_price', 'stock', 'feature_image', 'policy', 'featured', 'views', 'created_at', 'updated_at', 'status'];
    protected $with = ['mark']; 
    public static $withoutAppends = false;


    public function getCategoryAttribute($category)
    {
        if(self::$withoutAppends){
            return $category;
        }
        return explode(',',$category);
    }

    public function mark()
    {
    	return $this->belongsTo('App\Mark');
    }
}
