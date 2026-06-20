<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasColumn('attribute_options', 'current_price')) {
            Schema::table('attribute_options', function (Blueprint $table) {
                $table->double('current_price')->default(0)->after('name');
            });
        }

        if (!Schema::hasColumn('attribute_options', 'previous_price')) {
            Schema::table('attribute_options', function (Blueprint $table) {
                $table->double('previous_price')->default(0)->after('current_price');
            });
        }

        DB::table('attribute_options')->whereNull('current_price')->update([
            'current_price' => DB::raw('price'),
        ]);

        DB::table('attribute_options')->whereNull('previous_price')->update([
            'previous_price' => 0,
        ]);
    }

    public function down(): void
    {
        if (Schema::hasColumn('attribute_options', 'previous_price')) {
            Schema::table('attribute_options', function (Blueprint $table) {
                $table->dropColumn('previous_price');
            });
        }

        if (Schema::hasColumn('attribute_options', 'current_price')) {
            Schema::table('attribute_options', function (Blueprint $table) {
                $table->dropColumn('current_price');
            });
        }
    }
};
