<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    use HasFactory;

    protected $fillable = [
        'kop_logo_dinas', 'kop_nama_sekolah', 'kop_alamat', 'kop_telepon', 'kop_pos',
        'kop_website', 'kop_email', 'kop_npsn', 'kop_nss', 'kop_kodesekolah',
        'kop_nama_disdik', 'kop_th_pelajaran', 'nama_surat', 'pembuka_surat',
        'penutup_surat', 'jabatan_penandatangan', 'nama_penandatangan', 'nip_penandatangan',
        'tempat', 'tanggal', 'tanda_tangan', 'cap'
    ];

    protected $casts = [
        'tanggal' => 'date',
    ];
}