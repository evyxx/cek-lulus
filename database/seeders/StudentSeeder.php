<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Student;

class StudentSeeder extends Seeder
{
    public function run()
    {
        Student::create([
            'nisn' => '12345611',
            'name' => 'FAUZI AGUSTIAN',
            'nama_ortu' => 'BAPAK FAUZI',
            'tempat_tgl_lahir' => 'Bogor, 8 maret 1980',
            'nis' => '121212',
            'class' => '12 IPA 5',
            'prog_keahlian' => 'Teknik Informatika',
            'komp_keahlian' => 'Jaringan Komputer',
            'status' => 1,
            'message' => 'ANDA DINYATAKAN LULUS',
            'pai' => 80,
            'pkn' => 80,
            'bindo' => 75,
            'pjok' => 85,
            'sejarah' => 70,
            'seni' => 90,
            'bsun' => 88,
            'mat' => 92,
            'bing' => 85,
            'inf' => 80,
            'ipas' => 78,
            'dk' => 85,
            'kk' => 87,
            'pkk' => 90,
            'pkl' => 90,
            'bjep' => 88,
            'dg' => 86,
        ]);
    }
}