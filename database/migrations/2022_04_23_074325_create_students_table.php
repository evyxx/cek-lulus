<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('nisn');
            $table->string('name');
            $table->string('nama_ortu')->nullable();
            $table->string('tempat_tgl_lahir')->nullable();
            $table->string('nis')->nullable();
            $table->string('class');
            $table->string('prog_keahlian');
            $table->string('komp_keahlian');
            $table->integer('status');
            $table->string('message')->nullable();
            $table->integer('pai')->nullable();
            $table->integer('pkn')->nullable();
            $table->integer('bindo')->nullable();
            $table->integer('pjok')->nullable();
            $table->integer('sejarah')->nullable();
            $table->integer('seni')->nullable();
            $table->integer('bsun')->nullable();
            $table->integer('mat')->nullable();
            $table->integer('bing')->nullable();
            $table->integer('inf')->nullable();
            $table->integer('ipas')->nullable();
            $table->integer('dk')->nullable();
            $table->integer('kk')->nullable();
            $table->integer('pkl')->nullable();
            $table->integer('bjep')->nullable();
            $table->integer('dg')->nullable();

            // Add the `rata_rata` column as a generated column
            $table->integer('rata_rata')->storedAs(DB::raw("
                CASE 
                    WHEN (16 - (IF(`pai` IS NULL, 1, 0) + IF(`pkn` IS NULL, 1, 0) + IF(`bindo` IS NULL, 1, 0) + 
                                IF(`pjok` IS NULL, 1, 0) + IF(`sejarah` IS NULL, 1, 0) + IF(`seni` IS NULL, 1, 0) + 
                                IF(`bsun` IS NULL, 1, 0) + IF(`mat` IS NULL, 1, 0) + IF(`bing` IS NULL, 1, 0) + 
                                IF(`inf` IS NULL, 1, 0) + IF(`ipas` IS NULL, 1, 0) + IF(`dk` IS NULL, 1, 0) + 
                                IF(`kk` IS NULL, 1, 0) + IF(`pkl` IS NULL, 1, 0) + IF(`bjep` IS NULL, 1, 0) + 
                                IF(`dg` IS NULL, 1, 0))) = 0 THEN NULL
                    ELSE 
                        (COALESCE(`pai`, 0) + COALESCE(`pkn`, 0) + COALESCE(`bindo`, 0) + COALESCE(`pjok`, 0) + 
                         COALESCE(`sejarah`, 0) + COALESCE(`seni`, 0) + COALESCE(`bsun`, 0) + COALESCE(`mat`, 0) + 
                         COALESCE(`bing`, 0) + COALESCE(`inf`, 0) + COALESCE(`ipas`, 0) + COALESCE(`dk`, 0) + 
                         COALESCE(`kk`, 0) + COALESCE(`pkl`, 0) + COALESCE(`bjep`, 0) + COALESCE(`dg`, 0)) / 
                        (16 - (IF(`pai` IS NULL, 1, 0) + IF(`pkn` IS NULL, 1, 0) + IF(`bindo` IS NULL, 1, 0) + 
                               IF(`pjok` IS NULL, 1, 0) + IF(`sejarah` IS NULL, 1, 0) + IF(`seni` IS NULL, 1, 0) + 
                               IF(`bsun` IS NULL, 1, 0) + IF(`mat` IS NULL, 1, 0) + IF(`bing` IS NULL, 1, 0) + 
                               IF(`inf` IS NULL, 1, 0) + IF(`ipas` IS NULL, 1, 0) + IF(`dk` IS NULL, 1, 0) + 
                               IF(`kk` IS NULL, 1, 0) + IF(`pkl` IS NULL, 1, 0) + IF(`bjep` IS NULL, 1, 0) + 
                               IF(`dg` IS NULL, 1, 0)))
                END
            "));

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
        Schema::dropIfExists('students');
    }
}
