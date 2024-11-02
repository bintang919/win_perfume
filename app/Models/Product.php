<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $primaryKey = 'product_id';

    protected $fillable = [
        'product_name',
        'category_id',
        'product_description',
        'product_price',
        'product_image',
        'product_detail_image',
        'is_active',
        'tiktok_url',
        'shopee_url',
        'tokopedia_url',
    ];
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'categories_id');
    }
}

