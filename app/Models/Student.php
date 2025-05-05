<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    public $timestamps = false;

    use HasFactory;

    protected $fillable = [
        'nisn', 'name', 'nama_ortu', 'tempat_tgl_lahir', 'nis', 'class', 'prog_keahlian',
        'komp_keahlian', 'status', 'message', 'pai', 'pkn', 'bindo', 'pjok', 'sejarah',
        'seni', 'bsun', 'mat', 'bing', 'inf', 'ipas', 'dk', 'kk', 'pkk', 'pkl', 'bjep', 'dg',
    ];

    protected $casts = [
        'tanggal' => 'date',
    ];
}