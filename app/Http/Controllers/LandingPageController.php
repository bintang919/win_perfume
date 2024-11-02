<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class LandingPageController extends Controller
{
    public function index()
    {
        $product = Product::where('is_deleted',0)->where('is_active',1)->orderBy('product_name')->get();
        $banner = Banner::where('is_deleted',0)->where('is_active',1)->get();
        $categories = Category::where('is_deleted',0)->where('is_active', 1)
        ->orderBy('categories_name')
        ->get()
        ->groupBy(function($item) {
            return strtoupper(substr($item->categories_name, 0, 1));
        });
        return view('landing_page',['product' => $product,'categories' => $categories,'banner' => $banner]);
    }
}
