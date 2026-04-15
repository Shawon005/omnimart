<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Add alt_text to items table
        if (Schema::hasTable('items') && !Schema::hasColumn('items', 'alt_text')) {
            Schema::table('items', function (Blueprint $table) {
                $table->string('alt_text')->nullable()->after('photo');
            });
        }

        // Add alt_text to item_translations table
        if (Schema::hasTable('item_translations') && !Schema::hasColumn('item_translations', 'alt_text')) {
            Schema::table('item_translations', function (Blueprint $table) {
                $table->string('alt_text')->nullable()->after('name');
            });
        }

        // Add position to galleries table
        if (Schema::hasTable('galleries') && !Schema::hasColumn('galleries', 'position')) {
            Schema::table('galleries', function (Blueprint $table) {
                $table->integer('position')->default(0)->after('photo');
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (Schema::hasTable('items') && Schema::hasColumn('items', 'alt_text')) {
            Schema::table('items', function (Blueprint $table) {
                $table->dropColumn('alt_text');
            });
        }

        if (Schema::hasTable('item_translations') && Schema::hasColumn('item_translations', 'alt_text')) {
            Schema::table('item_translations', function (Blueprint $table) {
                $table->dropColumn('alt_text');
            });
        }

        if (Schema::hasTable('galleries') && Schema::hasColumn('galleries', 'position')) {
            Schema::table('galleries', function (Blueprint $table) {
                $table->dropColumn('position');
            });
        }
    }
};
