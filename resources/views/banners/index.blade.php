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
                    <h2>Banners</h2>

                    <div class="right-wrapper text-end">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="{{ route('dashboard') }}">
                                    <i class="bx bx-home-alt"></i>
                                </a>
                            </li>
                            <li><span>Banners</span></li>
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

                        <h2 class="card-title">Banner List</h2>
                    </header>
                    <div class="card-body">
                        <table class="table table-bordered table-striped mb-0" id="datatable-editable">
                            <thead>
                                <tr>
                                    <th>Banner Name</th>
                                    <th>Banner Description</th>
                                    <th>Banner Image</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($banners as $index => $banner)
                                    <tr data-item-id="{{ $banner->banner_id }}">
                                        <td>{{ $banner->banner_name }}</td>
                                        <td>{{ $banner->banner_description }}</td>
                                        <td>
                                            <img width="300" height="100"  src="{{ asset('storage/' . $banner->banner_image) }}" alt="Banner Image" width="100">
                                        </td>
                                        <td class="actions">
                                            <a href="{{ route('banners.edit', $banner->banner_id) }}">
                                                <i class="fas fa-pencil-alt"></i>
                                            </a>
                                            <form action="{{ route('banners.destroy', $banner->banner_id) }}" method="POST" style="display:inline;">
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
                </section>
                <!-- end: page -->
            </section>
        </div>

    </section>
    @include('partial.scripts')
    <script>
        document.querySelectorAll('.remove-row').forEach(button => {
            button.addEventListener('click', function (event) {
                if (!confirm('Are you sure you want to delete this banner?')) {
                    event.preventDefault();
                }
            });
        });
    </script>
</body>
