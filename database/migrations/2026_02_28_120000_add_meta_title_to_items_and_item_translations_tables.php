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
        if (Schema::hasTable('items') && !Schema::hasColumn('items', 'meta_title')) {
            Schema::table('items', function (Blueprint $table) {
                $table->string('meta_title')->nullable()->after('stock');
            });
        }

        if (Schema::hasTable('item_translations') && !Schema::hasColumn('item_translations', 'meta_title')) {
            Schema::table('item_translations', function (Blueprint $table) {
                $table->string('meta_title')->nullable()->after('details');
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (Schema::hasTable('items') && Schema::hasColumn('items', 'meta_title')) {
            Schema::table('items', function (Blueprint $table) {
                $table->dropColumn('meta_title');
            });
        }

        if (Schema::hasTable('item_translations') && Schema::hasColumn('item_translations', 'meta_title')) {
            Schema::table('item_translations', function (Blueprint $table) {
                $table->dropColumn('meta_title');
            });
        }
    }
};

