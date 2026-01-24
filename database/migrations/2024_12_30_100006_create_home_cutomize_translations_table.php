<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeCutomizeTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home_cutomize_translations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('home_cutomize_id');
            $table->unsignedBigInteger('language_id');
            $table->text('banner_first')->nullable();
            $table->text('banner_secend')->nullable();
            $table->text('banner_third')->nullable();
            $table->text('popular_category')->nullable();
            $table->text('feature_category')->nullable();
            $table->text('home_page4')->nullable();
            $table->text('hero_banner')->nullable();
            $table->timestamps();

            $table->foreign('home_cutomize_id')->references('id')->on('home_cutomizes')->onDelete('cascade');
            $table->foreign('language_id')->references('id')->on('languages')->onDelete('cascade');
            $table->unique(['home_cutomize_id', 'language_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('home_cutomize_translations');
    }
}

