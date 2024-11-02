<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('product_id');
            $table->string('product_name');
            $table->unsignedBigInteger('category_id'); // Untuk relasi kategori
            $table->text('product_description')->nullable();
            $table->decimal('product_price', 10, 2)->default(0);
            $table->string('product_image')->nullable(); // Gambar utama produk
            $table->string('product_detail_image')->nullable(); // Gambar detail produk
            $table->boolean('is_active')->default(true); // Status aktif/tidak
            $table->boolean('is_deleted')->default(false); // Status aktif/tidak
            $table->string('tiktok_url')->nullable(); // URL TikTok
            $table->string('shopee_url')->nullable(); // URL Shopee
            $table->string('tokopedia_url')->nullable(); // URL Tokopedia
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
};
