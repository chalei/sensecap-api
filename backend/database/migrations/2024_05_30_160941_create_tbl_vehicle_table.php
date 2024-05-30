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
        Schema::create('tbl_vehicle', function (Blueprint $table) {
            $table->string('vehicle_uuid', 50)->primary();
            $table->string('node_eui', 100)->unique();
            $table->string('license_plate', 16);
            $table->string('owner_name');
            $table->date('stnk_date');
            $table->string('created_by', 100);
            $table->string('updated_by', 100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_vehicle');
    }
};
