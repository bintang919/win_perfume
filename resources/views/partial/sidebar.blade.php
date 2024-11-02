
<!-- start: sidebar -->
<aside id="sidebar-left" class="sidebar-left">

    <div class="sidebar-header">
        <div class="sidebar-title">
            Navigation
        </div>
        <div class="sidebar-toggle d-none d-md-block" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
            <i class="fas fa-bars" aria-label="Toggle sidebar"></i>
        </div>
    </div>

    <div class="nano">
        <div class="nano-content">
            <nav id="menu" class="nav-main" role="navigation">
                <ul class="nav nav-main">
                    <li class="{{ Request::routeIs('dashboard') ? 'nav-active' : '' }}">
                        <a class="nav-link" href="{{ route('dashboard') }}">
                            <i class="bx bx-home-alt" aria-hidden="true"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-parent {{ Request::is('categories*') ? 'nav-active' : '' }}">
                        <a class="nav-link" href="#">
                            <i class="bx bx-category-alt" aria-hidden="true"></i>
                            <span>Category</span>
                        </a>
                        <ul class="nav nav-children">
                            <li class="{{ Request::is('categories') ? 'nav-active' : '' }}">
                                <a class="nav-link" href="{{ route('categories.index') }}">
                                    List Category
                                </a>
                            </li>
                            <li class="{{ Request::routeIs('categories.create') ? 'nav-active' : '' }}">
                                <a class="nav-link" href="{{ route('categories.create') }}">
                                    Add Category
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-parent {{ Request::is('products*') ? 'nav-active' : '' }}">
                        <a class="nav-link" href="#">
                            <i class="bx bx-book-alt" aria-hidden="true"></i>
                            <span>Product</span>
                        </a>
                        <ul class="nav nav-children">
                            <li class="{{ Request::is('products') ? 'nav-active' : '' }}">
                                <a class="nav-link" href="{{ route('products.index') }}">
                                    List Product
                                </a>
                            </li>
                            <li class="{{ Request::routeIs('products.create') ? 'nav-active' : '' }}">
                                <a class="nav-link" href="{{ route('products.create') }}">
                                    Add Product
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-parent {{ Request::is('banners*') ? 'nav-active' : '' }}">
                        <a class="nav-link" href="#">
                            <i class="bx bx-chalkboard" aria-hidden="true"></i>
                            <span>Banner</span>
                        </a>
                        <ul class="nav nav-children">
                            <li class="{{ Request::is('banners') ? 'nav-active' : '' }}">
                                <a class="nav-link" href="{{ route('banners.index') }}">
                                    List Banner
                                </a>
                            </li>
                            <li class="{{ Request::routeIs('banners.create') ? 'nav-active' : '' }}">
                                <a class="nav-link" href="{{ route('banners.create') }}">
                                    Add Banner
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>

        <script>
            // Maintain Scroll Position
            if (typeof localStorage !== 'undefined') {
                if (localStorage.getItem('sidebar-left-position') !== null) {
                    var initialPosition = localStorage.getItem('sidebar-left-position'),
                        sidebarLeft = document.querySelector('#sidebar-left .nano-content');

                    sidebarLeft.scrollTop = initialPosition;
                }
            }
        </script>

    </div>

</aside>
<!-- end: sidebar -->