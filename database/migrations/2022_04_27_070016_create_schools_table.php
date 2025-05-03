<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSchoolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schools', function (Blueprint $table) {
            $table->id();
            $table->string('kop_logo_dinas')->nullable();
            $table->string('kop_nama_sekolah')->nullable();
            $table->string('kop_alamat')->nullable();
            $table->string('kop_telepon')->nullable();
            $table->string('kop_pos')->nullable();
            $table->string('kop_website')->nullable();
            $table->string('kop_email')->nullable();
            $table->string('kop_npsn')->nullable(); // Added
            $table->string('kop_nss')->nullable(); // Added
            $table->string('kop_kodesekolah')->nullable(); // Added
            $table->string('kop_nama_provinsi')->nullable();
            $table->string('kop_nama_disdik')->nullable();
            $table->string('kop_nama_cabdin')->nullable();
            $table->string('kop_th_pelajaran')->nullable();
            $table->string('nama_surat')->nullable();
            $table->string('pembuka_surat')->nullable();
            $table->string('penutup_surat')->nullable();
            $table->string('jabatan_penandatangan')->nullable();
            $table->string('nama_penandatangan')->nullable();
            $table->string('nip_penandatangan')->nullable();
            $table->string('tempat')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('tanda_tangan')->nullable();
            $table->string('cap')->nullable(); // Added
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
        Schema::dropIfExists('schools');
    }
}
