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
                    <h2>Category</h2>

                    <div class="right-wrapper text-end">
							<ol class="breadcrumbs">
								<li>
									<a href="{{ route('dashboard') }}">
										<i class="bx bx-home-alt"></i>
									</a>
								</li>

								<li><span>Category</span></li>

								<li><span>Create</span></li>

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
                        <form action="{{ route('categories.update', $category->categories_id) }}" method="POST">
                            @csrf
                            @method('PUT') <!-- Metode PUT untuk update -->
                            <section class="card">
                                <header class="card-header">
                                    <div class="card-actions">
                                        <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                                        <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                                    </div>
                                    <h2 class="card-title">Edit Category</h2>
                                </header>
                                <div class="card-body">
                                    <div class="form-group row pb-3">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Category Name <span class="required">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" name="categories_name" class="form-control" placeholder="eg.: Anna Sui" value="{{ old('categories_name', $category->categories_name) }}" required/>
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Category Description <span class="required">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea name="categories_description" rows="5" class="form-control" placeholder="Describe Product" required>{{ old('categories_description', $category->categories_description) }}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <footer class="card-footer">
                                    <div class="row justify-content-end">
                                        <div class="col-sm-9">
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