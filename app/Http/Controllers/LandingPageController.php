<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class LandingPageController extends Controller
{
    public function index(Request $request)
    {
        $product = Product::where('is_deleted',0)->where('is_active',1);
        if(isset($request->params)){
            $product->where('product_id',$request->params);
        }
        $product = $product->orderBy('product_name')->get();
        $banner = Banner::where('is_deleted',0)->where('is_active',1)->get();
        $categories = Category::where('is_deleted',0)->where('is_active', 1)
        ->orderBy('categories_name')
        ->get()
        ->groupBy(function($item) {
            return strtoupper(substr($item->categories_name, 0, 1));
        });
        return view('landing_page',['product' => $product,'categories' => $categories,'banner' => $banner]);
    }

    public function getProduct(Request $request)
    {
        $categories = Category::where('is_deleted', 0)
                    ->where('is_active', 1)
                    ->orderBy('categories_name')
                    ->with(['products' => function ($query) {
                        $query->where('is_deleted', 0)
                            ->where('is_active', 1)
                            ->orderBy('product_name');
                    }])
                    ->get()
                    ->map(function ($category) {
                        return [
                            'text' => $category->categories_name,
                            'children' => $category->products->map(function ($product) {
                                return [
                                    'id' => $product->product_id,
                                    'text' => $product->product_name,
                                    'image' => asset('storage/'.$product->product_image),
                                    'brand' => $product->category->categories_name,
                                ];
                            })->toArray()
                        ];
                    })
                    ->filter(function ($category) {
                        return !empty($category['children']);
                    })
                    ->values();
        return response()->json($categories);
    }
}
