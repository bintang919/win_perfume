<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfume WIN</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    
    <!-- Slick Carousel CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel/slick/slick-theme.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/f3316db237.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <link rel="stylesheet" href="{{asset('assets/css/landing-page/style.css')}}" />
</head>
<body>

<header>
    <div class="logo">
        <img src="{{asset('assets/img/logo.png')}}" alt="Perfume Store Logo"  style="max-width: 120px; max-height: 120px;">
    </div>
    <div class="search-bar">
        <select id="search-perfume" style="width: 100%;" placeholder="Search For A Perfume By Name Or Category"></select>
    </div>
</header>

<!-- Hero Section with Carousel -->
<section class="hero">
    <div class="hero-slider">
        @foreach ($banner as $bn)
            <div class="hero-slide">
                <img src="{{ asset('storage/' . $bn->banner_image) }}" alt="{{ $bn->banner_name }}">
            </div>
        @endforeach
    </div>
</section>

<section class="products">
    <h2>ALL BRANDS</h2>
    <div class="product-grid">
        @foreach ($product as $key => $dt)
            <div class="not">
                <div class="product-item">
                    <div class="imagine">
                        <img src="{{ asset('storage/' . $dt->product_image) }}" class="img-product" alt="{{ $dt->product_name }}">
                    </div>
                    <div>
                        <a  onclick="showSlides({{ $key+1 }})" style="cursor: pointer;"><p>{{ $dt->Category->categories_name }}</p>
                        <h1>{{ $dt->product_name }}</h1></a>
                    <p>SHOP NOW AT :</p>
                    <div class="shop-links">
                        <a href="{{ $dt->shopee_url }}" target="_blank"><img class="img-icon" src="{{ asset('assets/img/ICON SHOPEE.png') }}" style="margin-top: 3px;"></a>
                        <a href="{{ $dt->tokopedia_url }}" target="_blank"><img class="img-icon "src="{{ asset('assets/img/ICON TOKOPEDIA.png') }}"></a>
                        <a href="{{ $dt->tiktok_url }}" target="_blank"><img class="img-icon" src="{{ asset('assets/img/ICON TIKTOK SHOP.png') }}"></a>
                    </div>
                    </div>
                </div>
            </div>
            <div id="myModal{{ $key+1 }}" class="modal">
                <div class="modal-content">
                    <div class="mySlides{{ $key+1 }}" onclick="closeModal({{ $key+1 }})" id="mySlide">
                        <img src="{{ asset('storage/' . $dt->product_detail_image) }}"></img>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <a href="#" id="loadMore" class="load-more">LOAD MORE FRAGRANCES</a>
</section>

<section class="alphabet-section">
    <!-- Menampilkan huruf alfabet sebagai tombol -->
    <div>
        <table class="flexible-table">
            <tr>
                @foreach (range('A', 'Z') as $letter)
                    <td><a href="javascript:void(0)" class="alphabet alphabet-filter" onclick="filterByLetter('{{ $letter }}', this)">{{ $letter }}</a></td>
                @endforeach
            </tr>
        </table>
    </div>
    <div class="list-grid">
        @foreach ($categories as $letter => $items)
            <div class="alphabet-grid" data-letter="{{ $letter }}">
                <p class="title-alphabet">{{ $letter }}</p>
                @foreach ($items as $category)
                    <p style="font-size: 14px; color: #a5a3a4; align-content: end; max-width: 80%;">{{ ucwords(strtolower($category->categories_name)) }}</p>
                @endforeach
            </div>
        @endforeach
    </div>
</section>


<footer class="footer">
    <a href="https://wa.me/1234567890"><img src="{{ asset('assets/img/ICON WHATSAPP.png') }}" style="max-width: 200px;"></a>
</footer>

<!-- Slick Carousel JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel/slick/slick.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        let url = new URL(window.location.href);
        url.searchParams.delete('params');
        window.history.replaceState({}, document.title, url);
        function formatOption(option) {
            if (!option.id) {
                return option.text;
            }

            let image = option.image ? `<img src="${option.image}" alt="${option.text}" style="height: 30px; margin-right: 10px;" />` : '';
            const formattedText = option.text.toLowerCase().replace(/\b\w/g, char => char.toUpperCase());
            return $(`
                <div style="display: flex; align-items: center; padding: 5px;">
                    ${image}
                    <div>
                        <div style="font-weight: bold; font-size: 1em;">${formattedText}</div>
                        <div style="color: #666; font-size: 0.8em;">${option.brand}</div>
                    </div>
                </div>
            `);
        }

        $("#search-perfume").select2({
            ajax: {
                url: '/get-products-by-category',
                dataType: 'json',
                processResults: function (data) {
                    return {
                        results: data
                    };
                }
            },
            templateResult: formatOption,
            templateSelection: function(option) {
                // Menampilkan hanya nama produk (option.text) di input ketika dipilih
                return option.text || option.id;
            },
            placeholder: 'Search For A Perfume By Name Or Category',
            escapeMarkup: function (markup) { return markup; }
        }).on('select2:select', function (e) {
            var selectedValue = e.params.data.id;
            window.location.href = '/?params=' + selectedValue;
        });
    });
    $(document).ready(function(){
        $('.hero-slider').slick({
            dots: true,
            infinite: true,
            speed: 500,
            fade: true,
            cssEase: 'linear',
            autoplay: true,
            autoplaySpeed: 1500,
            prevArrow: '<button type="button" class="slick-prev">Previous</button>',
            nextArrow: '<button type="button" class="slick-next">Next</button>'
        });
    });

    $(document).ready(function(){
        var rows = document.querySelectorAll('.category-row');
        rows.forEach(function(row) {
            row.style.display = 'none';
        });
        var filter = $('.alphabet-filter')
        filterByLetter('A', filter)
    });

    function filterByLetter(letter, element) {
        // Filter rows
        var rows = document.querySelectorAll('.alphabet-grid');
        rows.forEach(function(row) {
            if (row.getAttribute('data-letter') === letter) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });

        // Highlight active letter
        var alphabets = document.querySelectorAll('.alphabet');
        alphabets.forEach(function(alphabet) {
            alphabet.classList.remove('active');
        });
        element.classList.add('active');
    }
    $(document).ready(function(){
        $(".not").slice(0, 8).show();
        $("#loadMore").on("click", function(e){
            e.preventDefault();
            $(".not:hidden").slice(0, 8).slideDown();
            if($(".not:hidden").length == 0) {
                $("#loadMore").text("No Content").addClass("noContent");
            }
        });
    })
    function closeModal(n) {
        var modal = $("#myModal"+n);
        var slides = $("#mySlides"+n);
        modal.css("display", "none")
    }

    function showSlides(n) {
        var modal = $("#myModal"+n);
        var slides = $("#mySlides"+n);
        modal.css("display", "block")
    }
</script>

</body>
</html>
