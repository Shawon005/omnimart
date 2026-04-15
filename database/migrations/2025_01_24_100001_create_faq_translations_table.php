<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFaqTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('faq_translations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('faq_id');
            $table->unsignedBigInteger('language_id');
            $table->string('title')->nullable();
            $table->text('details')->nullable();

            $table->foreign('faq_id')->references('id')->on('faqs')->onDelete('cascade');
            $table->foreign('language_id')->references('id')->on('languages')->onDelete('cascade');
            $table->unique(['faq_id', 'language_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('faq_translations');
    }
}
