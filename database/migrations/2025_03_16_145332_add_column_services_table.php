<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('services', function (Blueprint $table) {
            $table->string('our_touch_point_section_sub_title')->after('our_touch_point')->nullable();
            $table->string('our_touch_point_section_title')->after('our_touch_point')->nullable();
            $table->string('our_approach_section_sub_title')->after('our_approach')->nullable();
            $table->string('our_approach_section_title')->after('our_approach')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('services', function (Blueprint $table) {
            $table->dropColumn('our_touch_point_section_sub_title');
            $table->dropColumn('our_touch_point_section_title');
            $table->dropColumn('our_approach_section_sub_title');
            $table->dropColumn('our_approach_section_title');
        });
    }
};
