<?php

namespace App\Imports;

use App\Models\Student;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class StudentImport implements ToModel, WithStartRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */

    public function startRow(): int
    {
        return 2;
    }

    public function model(array $row)
    {
        return new Student([
            'nisn' => $row[1],
            'name' => $row[2],
            'nama_ortu' => $row[3],
            'tempat_tgl_lahir' => $row[4],
            'nis' => $row[5],
            'class' => $row[6],
            'prog_keahlian' => $row[7],
            'komp_keahlian' => $row[8],
            'status' => $row[9],
            'message' => $row[10],
            'pai' => $row[11],
            'pkn' => $row[12],
            'bindo' => $row[13],
            'pjok' => $row[14],
            'sejarah' => $row[15],
            'seni' => $row[16],
            'bsun' => $row[17],
            'mat' => $row[18],
            'bing' => $row[19],
            'inf' => $row[20],
            'ipas' => $row[21],
            'dk' => $row[22],
            'kk' => $row[23],
            'pkk' => $row[24],
            'pkl' => $row[25],
            'bjep' => $row[26],
            'dg' => $row[27],
        ]);
    }
}


