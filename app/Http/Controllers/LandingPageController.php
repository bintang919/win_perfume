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
        $category_id = isset($request->paramscategory) ? $request->paramscategory : null;
        $letter = isset($request->letter) ? $request->letter : null;
        $product = Product::where('is_deleted',0)->where('is_active',1);
        if(isset($request->params)){
            $product->where('product_id',$request->params);
        }
        if(isset($category_id)){
            $product->where('category_id',$category_id);
        }
        $product = $product->orderBy('product_name')->get();
        $banner = Banner::where('is_deleted',0)->where('is_active',1)->get();
        $categories = Category::where('is_deleted',0)->where('is_active', 1)
        ->orderBy('categories_name')
        ->get()
        ->groupBy(function($item) {
            return strtoupper(substr($item->categories_name, 0, 1));
        });
        return view('landing_page',['product' => $product,'categories' => $categories,'banner' => $banner,'letter' => $letter]);
    }

    public function getProduct(Request $request)
    {
        $params = $request->get('q');
        $categories = Category::where('is_deleted', 0)
                    ->where('is_active', 1)
                    ->orderBy('categories_name')
                    ->with(['products' => function ($query) use ($params) {
                        $query->where('is_deleted', 0)
                              ->where('is_active', 1)
                              ->orderBy('product_name');
                
                        if (isset($params)) {
                            $query->where(function ($query) use ($params) {
                                $query->where('product_name', 'like', '%' . $params . '%')
                                      ->orWhereHas('category', function ($query) use ($params) {
                                          $query->where('categories_name', 'like', '%' . $params . '%');
                                      });
                            });
                        }
                    }])
                    ->get()
                    ->map(function ($category) {
                        return [
                            'text' => ucwords(strtolower($category->categories_name)),
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
