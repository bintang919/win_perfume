<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBannersTable extends Migration
{
    public function up()
    {
        Schema::create('banners', function (Blueprint $table) {
            $table->id('banner_id');
            $table->string('banner_name');
            $table->string('banner_image');
            $table->boolean('is_active')->default(true);
            $table->boolean('is_deleted')->default(false);
            $table->text('banner_description')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('banners');
    }
}
