<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChieldcategoryTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chield_category_translations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('chield_category_id');
            $table->unsignedBigInteger('language_id');
            $table->string('name')->nullable();
            $table->string('slug')->nullable();
            $table->timestamps();

            $table->foreign('chield_category_id')->references('id')->on('chield_categories')->onDelete('cascade');
            $table->foreign('language_id')->references('id')->on('languages')->onDelete('cascade');
            $table->unique(['chield_category_id', 'language_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chield_category_translations');
    }
}

