<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $totalProducts = Product::where('is_active', 1)->where('is_deleted', 0)->count();
        $totalBanners = Banner::where('is_active', 1)->where('is_deleted', 0)->count();
        $totalCategories = Category::where('is_active', 1)->where('is_deleted', 0)->count();
    
        return view('welcome', compact('totalProducts', 'totalBanners', 'totalCategories'));
    }
}

