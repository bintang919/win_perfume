<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    public function index()
    {
        $banners = Banner::where('is_deleted', false)->get();
        return view('banners.index', compact('banners'));
    }

    public function create()
    {
        return view('banners.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'banner_name' => 'required|string|max:255',
            'banner_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        if ($request->hasFile('banner_image')) {
            $data['banner_image'] = $request->file('banner_image')->store('images', 'public');
        }

        Banner::create([
            'banner_name' => $request->banner_name,
            'banner_description' => $request->banner_description,
            'banner_image' => $data['banner_image'],
            'is_active' => true,
            'is_deleted' => false,
        ]);

        return redirect()->route('banners.index')->with('success', 'Banner created successfully.');
    }

    public function edit(Banner $banner)
    {
        return view('banners.edit', compact('banner'));
    }

    public function update(Request $request, Banner $banner)
    {
        $request->validate([
            'banner_name' => 'required|string|max:255',
            'banner_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        if ($request->hasFile('banner_image')) {
            $imageName = time().'.'.$request->banner_image->extension();
            $request->banner_image->move(public_path('images'), $imageName);
            $banner->banner_image = $imageName;
        }

        $banner->banner_name = $request->banner_name;
        $banner->save();

        return redirect()->route('banners.index')->with('success', 'Banner updated successfully.');
    }

    public function destroy(Banner $banner)
    {
        $banner->is_deleted = true;
        $banner->save();

        return redirect()->route('banners.index')->with('success', 'Banner deleted successfully.');
    }
}

