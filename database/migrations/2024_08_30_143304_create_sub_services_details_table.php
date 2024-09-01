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
        Schema::create('sub_services_details', function (Blueprint $table) {
            $table->id();
            $table->string('subservices_name');
            $table->string('subservicesdetails_name');
            $table->text('subservicesdetails_desc');
            $table->string('subservicesdetails_image');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_services_details');
    }
};
