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
                    <h2>Banner</h2>

                    <div class="right-wrapper text-end">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="{{ route('dashboard') }}">
                                    <i class="bx bx-home-alt"></i>
                                </a>
                            </li>

                            <li><span>Banner</span></li>

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
                        <form class="form-horizontal form-bordered" action="{{ route('banners.update', $banner->banner_id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT') <!-- Method spoofing for PUT request -->
                            <section class="card">
                                <header class="card-header">
                                    <div class="card-actions">
                                        <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                                        <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                                    </div>
                                    <h2 class="card-title">Edit Banner</h2>
                                </header>
                                <div class="card-body">
                                    <div class="form-group row pb-3">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Banner Name <span class="required">*</span></label>
                                        <div class="col-sm-6">
                                            <input type="text" name="banner_name" class="form-control" value="{{ old('banner_name', $banner->banner_name) }}" placeholder="eg.: Banner Name" required/>
                                        </div>
                                    </div>
                                    <div class="form-group row pb-3">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Banner Description</label>
                                        <div class="col-sm-6">
                                            <input type="text" name="banner_description" class="form-control" value="{{ old('banner_description', $banner->banner_description) }}" placeholder="eg.: Banner Description"/>
                                        </div>
                                    </div>
                                    <div class="form-group row pb-2">
                                        <label class="col-sm-3 control-label text-sm-end pt-2">Banner Image <span class="required">*</span></label>
                                        <div class="col-sm-6">
                                            <input type="file" name="banner_image" class="form-control"/>
                                            @if($banner->banner_image)
                                                <img src="{{ asset('storage/' . $banner->banner_image) }}" alt="Current Banner Image" class="img-thumbnail mt-2" width="300" height="100">
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
