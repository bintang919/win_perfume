<?php
namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    // Menampilkan daftar produk
    public function index()
    {
        // Ambil produk yang tidak dihapus
        $products = Product::with('category') // Memuat relasi category
            ->where('products.is_deleted', false)
            ->join('categories', 'products.category_id', '=', 'categories.categories_id')
            ->orderBy('categories.categories_name') // Mengurutkan berdasarkan nama kategori
            ->select('products.*') // Hanya memilih kolom dari tabel products
            ->get();
        return view('products.index', compact('products'));
    }

    // Menampilkan formulir untuk membuat produk baru
    public function create()
    {
        $categories = Category::where('is_deleted', false)->get();
        return view('products.create', compact('categories'));
    }

    // Menyimpan produk baru ke dalam database
    public function store(Request $request)
    {
        $request->validate([
            'product_name' => 'required|string|max:255',
            'category_id' => 'required|exists:categories,categories_id',
            'product_description' => 'nullable|string',
            'product_price' => 'required|numeric',
            'product_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'product_detail_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'is_active' => 'nullable|boolean',
            'tiktok_url' => 'nullable|url',
            'shopee_url' => 'nullable|url',
            'tokopedia_url' => 'nullable|url',
        ]);

        $data = $request->all();
        $data['is_deleted'] = false; // Set default is_deleted ke false

        if ($request->hasFile('product_image')) {
            $data['product_image'] = $request->file('product_image')->store('images', 'public');
        }

        if ($request->hasFile('product_detail_image')) {
            $data['product_detail_image'] = $request->file('product_detail_image')->store('images', 'public');
        }

        Product::create($data);

        return redirect()->route('products.index')->with('success', 'Product created successfully.');
    }

    // Menampilkan formulir untuk mengedit produk
    public function edit(Product $product)
    {
        $categories = Category::where('is_deleted', false)->get();
        return view('products.edit', compact('product','categories'));
    }

    // Memperbarui produk yang sudah ada
    public function update(Request $request, Product $product)
    {
        $request->validate([
            'product_name' => 'required|string|max:255',
            'category_id' => 'required|exists:categories,categories_id',
            'product_description' => 'nullable|string',
            'product_price' => 'required|numeric',
            'product_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'product_detail_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'is_active' => 'nullable|boolean',
            'tiktok_url' => 'nullable|url',
            'shopee_url' => 'nullable|url',
            'tokopedia_url' => 'nullable|url',
        ]);

        $data = $request->all();

        if ($request->hasFile('product_image')) {
            // Hapus gambar lama jika ada
            if ($product->product_image) {
                Storage::delete($product->product_image);
            }
            $data['product_image'] = $request->file('product_image')->store('images', 'public');
        }

        if ($request->hasFile('product_detail_image')) {
            // Hapus gambar detail lama jika ada
            if ($product->product_detail_image) {
                Storage::delete($product->product_detail_image);
            }
            $data['product_detail_image'] = $request->file('product_detail_image')->store('images', 'public');
        }

        $product->update($data);

        return redirect()->route('products.index')->with('success', 'Product updated successfully.');
    }

    // Menghapus produk dari database (menandai sebagai dihapus)
    public function destroy(Product $product)
    {
        // Tandai produk sebagai dihapus
        $product->is_deleted = true;
        $product->save();

        // Hapus gambar jika ada
        if ($product->product_image) {
            Storage::delete($product->product_image);
        }

        if ($product->product_detail_image) {
            Storage::delete($product->product_detail_image);
        }

        return redirect()->route('products.index')->with('success', 'Product deleted successfully.');
    }
}
