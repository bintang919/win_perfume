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

								<li><span>List</span></li>

							</ol>

							<a class="sidebar-right-toggle" data-open=""><i class=""></i></a>
						</div>
                </header>

                <!-- start: page -->
                <section class="card">
                    <header class="card-header">
                        <div class="card-actions">
                            <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                            <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                        </div>

                        <h2 class="card-title">Default</h2>
                    </header>
                    <div class="card-body">
                            <table class="table table-bordered table-striped mb-0" id="datatable-editable">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Description</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($products as $product)
                                    <tr>
                                        <td>{{ $product->product_name }}</td>
                                        <td>{{ $product->Category->categories_name }}</td>
                                        <td>{{ $product->product_description }}</td>
                                        <td class="actions">
                                            <a href="{{ route('products.edit', $product->product_id) }}">
                                                <i class="fas fa-pencil-alt"></i>
                                            </a>
                                            <form action="{{ route('products.destroy', $product->product_id) }}" method="POST" style="display:inline;">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="on-default remove-row" style="background: none; border: none; cursor: pointer; color: inherit;">
                                                    <i class="far fa-trash-alt"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>

                        </div>
                    </div>
                </section>
                <!-- end: page -->
            </section>
        </div>
    </section>
    @include('partial.scripts')
    <script>
        document.querySelectorAll('.remove-row').forEach(button => {
            button.addEventListener('click', function (event) {
                if (!confirm('Are you sure you want to delete this product?')) {
                    event.preventDefault();
                }
            });
        });
    </script>
</body>