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
        Schema::create('chieldcategory_translations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('chieldcategory_id');
            $table->unsignedBigInteger('language_id');
            $table->string('name')->nullable();
            $table->string('slug')->nullable();
            $table->timestamps();

            $table->foreign('chieldcategory_id')->references('id')->on('chieldcategories')->onDelete('cascade');
            $table->foreign('language_id')->references('id')->on('languages')->onDelete('cascade');
            $table->unique(['chieldcategory_id', 'language_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chieldcategory_translations');
    }
}

