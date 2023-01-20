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
        Schema::create('korpas', function (Blueprint $table) {
            $table->id();
            $table->integer('kolicina');
            $table->double('cena_ukupno');
            $table->foreignId('korisnikId')->constrained('korisniks');
            $table->foreignId('parfemId')->constrained('parfems');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('korpas');
    }
};
