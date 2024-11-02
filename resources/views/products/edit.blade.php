<!doctype html>
<body>
    <section class="body">
        <!-- start: header -->
        @include('partial.header')
        <!-- end: header -->

        <div class="inner-wrapper">

            @include('partial.sidebar')
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Product</h2>

                    <div class="right-wrapper text-end">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="{{ route('dashboard') }}">
                                    <i class="bx bx-home-alt"></i>
                                </a>
                            </li>

                            <li><span>Product</span></li>

                            <li><span>Edit</span></li>

                        </ol>

                        <a class="sidebar-right-toggle" data-open=""><i class=""></i></a>
                    </div>
                </header>

                <!-- start: page -->
                <section class="card">
                    <div class="row">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <form class="form-horizontal form-bordered" action="{{ route('products.update', $product->product_id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT') <!-- Method spoofing for PUT request -->
                            <section class="card">
                                <header class="card-header">
                                    <div class="card-actions">
                                        <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                                        <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                                    </div>
                                    <h2 class="card-title">Edit Product</h2>
                                </header>
                                <div class="card-body">
                                    <div class="form-group row pb-3">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product Name <span class="required">*</span></label>
                                        <div class="col-sm-6">
                                            <input type="text" name="product_name" class="form-control" value="{{ old('product_name', $product->product_name) }}" placeholder="eg.: Product Name" required/>
                                        </div>
                                    </div>
                                    <div class="form-group row pb-3">
                                        <label class="col-lg-3 control-label text-lg-end pt-2">Category</label>
                                        <div class="col-sm-6">
                                            <select name="category_id" data-plugin-selectTwo class="form-control populate" data-plugin-options='{ "minimumInputLength": 3 }'>
                                                @foreach ($categories as $category)
                                                    <option value="{{ $category->categories_id }}" {{ $category->categories_id == $product->category_id ? 'selected' : '' }}>{{ $category->categories_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product Description <span class="required">*</span></label>
                                        <div class="col-sm-6">
                                            <textarea name="product_description" rows="5" class="form-control" placeholder="Describe Product" required>{{ old('product_description', $product->product_description) }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row pb-3">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product Price <span class="required">*</span></label>
                                        <div class="col-sm-6">
                                            <input type="number" name="product_price" class="form-control" value="{{ old('product_price', $product->product_price) }}" placeholder="eg.: 10000" required/>
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product URL Links (TikTok)</label>
                                        <div class="col-sm-6">
                                            <input type="text" name="tiktok_url" class="form-control" value="{{ old('tiktok_url', $product->tiktok_url) }}" />
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product URL Links (Shopee)</label>
                                        <div class="col-sm-6">
                                            <input type="text" name="shopee_url" class="form-control" value="{{ old('shopee_url', $product->shopee_url) }}" />
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product URL Links (Tokopedia)</label>
                                        <div class="col-sm-6">
                                            <input type="text" name="tokopedia_url" class="form-control" value="{{ old('tokopedia_url', $product->tokopedia_url) }}" />
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product Image</label>
                                        <div class="col-sm-6">
                                            <input type="file" name="product_image" class="form-control"/>
                                            @if($product->product_image)
                                                <img src="{{ asset('storage/' . $product->product_image) }}" alt="Current Product Image" class="img-thumbnail mt-2" width="100">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Product Detail Image</label>
                                        <div class="col-sm-6">
                                            <input type="file" name="product_detail_image" class="form-control"/>
                                            @if($product->product_detail_image)
                                                <img src="{{ asset('storage/' . $product->product_detail_image) }}" alt="Current Detail Image" class="img-thumbnail mt-2" width="100">
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <footer class="card-footer">
                                    <div class="row justify-content-end">
                                        <div class="col-sm-6">
                                            <button class="btn btn-primary">Update</button>
                                            <button type="reset" class="btn btn-default">Reset</button>
                                        </div>
                                    </div>
                                </footer>
                            </section>
                        </form>
                    </div>
                </section>
                <!-- end: page -->
            </section>
        </div>
    </section>
    @include('partial.scripts')
</body>
