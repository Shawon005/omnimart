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
        if (Schema::hasTable('galleries') && !Schema::hasColumn('galleries', 'alt_text')) {
            Schema::table('galleries', function (Blueprint $table) {
                $table->string('alt_text')->nullable()->after('photo');
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (Schema::hasTable('galleries') && Schema::hasColumn('galleries', 'alt_text')) {
            Schema::table('galleries', function (Blueprint $table) {
                $table->dropColumn('alt_text');
            });
        }
    }
};
