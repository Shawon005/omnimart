<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('attribute_options') && !Schema::hasColumn('attribute_options', 'position')) {
            Schema::table('attribute_options', function (Blueprint $table) {
                $table->integer('position')->default(0)->after('keyword');
            });
        }
    }

    public function down(): void
    {
        if (Schema::hasTable('attribute_options') && Schema::hasColumn('attribute_options', 'position')) {
            Schema::table('attribute_options', function (Blueprint $table) {
                $table->dropColumn('position');
            });
        }
    }
};
