@php
    use Carbon\Carbon;
@endphp

@if($student->status == 1)
<style>
    @media print {
        body {
            font-family: 'Times New Roman', Times, serif;
            font-size: 12pt;
            margin: 20px;
        }

        .print-area * {
            visibility: visible;
        }

        .print-area {
            page-break-after: always;
        }

        @page {
            size: A4;
            margin: 10mm;
        }
    }
</style>

<body onload="window.print();">
<div class="print-area">
    <table width="100%">
        <tr>
            <td width="15%" align="center">
                <img src="/files/logo/{{ $school->kop_logo_dinas}}" width="70">
            </td>
            <td align="center">
                <div style="font-size:13pt; font-weight:bold; text-transform:uppercase;">{{ $school->kop_nama_provinsi }}</div>
                <div style="font-size:13pt; font-weight:bold; text-transform:uppercase;">{{ $school->kop_nama_disdik }}</div>
                <div style="font-size:15pt; font-weight:bold; text-transform:uppercase;">{{ $school->kop_nama_cabdin }}</div>
                <div style="font-size:15pt; font-weight:bold; text-transform:uppercase;">{{ $school->kop_nama_sekolah }}</div>
            </td>
            <td width="15%" align="center">
                <img src="/files/logo/{{ $web->logo }}" width="70">
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" style="font-size:10pt;">
                Alamat: {{ $school->kop_alamat }}, Kode Pos: {{ $school->kop_pos }}<br>
                Telp: {{ $school->kop_telepon }}, Email: {{ $school->kop_email }}, Website: {{ $school->kop_website }}<br>
                NPSN: {{ $school->kop_npsn }}, NSS: {{ $school->kop_nss }}, Kode Sekolah: {{ $school->kop_kodesekolah }}
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr style="border: 1px solid black; margin: 4px 0;">
                <hr style="border: 2px solid black; margin: 0;">
            </td>
        </tr>
    </table>

    <h3 align="center" style="text-decoration: underline; margin-top: 20px;">SURAT KETERANGAN LULUS</h3>

    <p>Kepala SMK Negeri 1 Gunungputri Tahun Pelajaran 2024/2025, dengan berdasarkan:</p>
    <ol>
        <li>Penyelesaian seluruh program pembelajaran pada Kurikulum 2013 / Kurikulum Merdeka;</li>
        <li>Kriteria Kelulusan dari satuan pendidikan sesuai dengan peraturan perundang-undangan;</li>
        <li>Rapat Pleno Dewan Guru tentang Penetapan Kelulusan pada tanggal 02 Mei 2025;</li>
    </ol>

    <p>Menerangkan bahwa:</p>
    <table>
        <tr><td>Nama</td><td>:</td><td><b>{{ $student->name }}</b></td></tr>
        <tr><td>Tempat, Tanggal Lahir</td><td>:</td><td>{{ $student->tempat_tgl_lahir }}</td></tr>
        <tr><td>Nama Orang Tua</td><td>:</td><td>{{ $student->nama_ortu }}</td></tr>
        <tr><td>Nomor Induk Siswa</td><td>:</td><td>{{ $student->nis }}</td></tr>
        <tr><td>Nomor Induk Siswa Nasional</td><td>:</td><td>{{ $student->nisn }}</td></tr>
        <tr><td>Program Keahlian</td><td>:</td><td>{{ $student->prog_keahlian }}</td></tr>
        <tr><td>Kompetensi Keahlian</td><td>:</td><td>{{ $student->komp_keahlian }}</td></tr>
        <tr><td>Dinyatakan</td><td>:</td><td><b>LULUS</b></td></tr>
    </table>

    <!-- <p style="margin-top: 20px;">Dinyatakan: LULUS</p> -->
    <!-- <center>
        <table border="1" cellpadding="10" style="border-collapse: collapse;">
            <tr>
                <td align="center"><strong>LULUS</strong></td>
            </tr>
        </table>
    </center> -->

    <p style="margin-top: 20px;">Dengan Rata-rata Nilai*):</p>
    <table border="1" cellspacing="0" cellpadding="6" width="100%" style="border-collapse: collapse; font-size: 11pt;">
    <tr style="background-color: #f0f0f0;">
        <th width="5%">No</th>
        <th>Mata Pelajaran (Kurikulum Merdeka)</th>
        <th width="10%">Nilai Ujian Sekolah</th>
    </tr>

    {{-- A. UMUM --}}
    <tr><td colspan="3"><strong>A. UMUM</strong></td></tr>
    <tr><td>1</td><td>Pendidikan Agama dan Budi Pekerti</td><td align="center">{{ $student->pai }}</td></tr>
    <tr><td>2</td><td>Pendidikan Pancasila dan Kewarganegaraan</td><td align="center">{{ $student->pkn }}</td></tr>
    <tr><td>3</td><td>Bahasa Indonesia</td><td align="center">{{ $student->bindo }}</td></tr>
    <tr><td>4</td><td>Pendidikan Jasmani, Olahraga dan Kesehatan</td><td align="center">{{ $student->pjok }}</td></tr>
    <tr><td>5</td><td>Sejarah</td><td align="center">{{ $student->sejarah }}</td></tr>
    <tr><td>6</td><td>Seni Budaya</td><td align="center">{{ $student->seni }}</td></tr>
    <tr><td>7</td><td>Muatan Lokal</td><td align="center"></td></tr>
    <tr><td></td><td>a. Bahasa Sunda</td><td align="center">{{ $student->bsun }}</td></tr>

    {{-- B. KEJURUAN --}}
    <tr><td colspan="3"><strong>B. KEJURUAN</strong></td></tr>
    <tr><td>1</td><td>Matematika</td><td align="center">{{ $student->mat }}</td></tr>
    <tr><td>2</td><td>Bahasa Inggris</td><td align="center">{{ $student->bing }}</td></tr>
    <tr><td>3</td><td>Informatika</td><td align="center">{{ $student->inf }}</td></tr>
    <tr><td>4</td><td>Ilmu Pengetahuan Alam dan Sosial (IPAS)</td><td align="center">{{ $student->ipas }}</td></tr>
    <tr><td>5</td><td>Kejuruan</td><td align="center"></td></tr>
    <tr><td></td><td>a. Dasar-dasar Kejuruan</td><td align="center">{{ $student->dk }}</td></tr>
    <tr><td></td><td>b. Konsentrasi Keahlian</td><td align="center">{{ $student->kk }}</td></tr>
    <tr><td>6</td><td>Projek Kreatif dan Kewirausahaan</td><td align="center">{{ $student->pkk }}</td></tr>
    <tr><td>7</td><td>Praktik Kerja Lapangan</td><td align="center">{{ $student->pkl }}</td></tr>
    <tr><td>8</td><td>Mata Pelajaran Pilihan</td><td align="center"></td></tr>
    <tr><td></td><td>a. Bahasa Jepang</td><td align="center">{{ $student->bjep }}</td></tr>
    <tr><td></td><td>b. Desain Grafis</td><td align="center">{{ $student->dg }}</td></tr>
    <tr><td colspan="2"><strong>Rata-rata</strong></td><td align="center">{{ $student->rata_rata }}</td></tr>
</table>

    <p><i>*Surat Keterangan Lulus ini hanya berlaku sampai diterbitkannya Ijazah</i></p>

    <br><br>
    <div style="float: right; text-align: left; width: 320px;">
        {{ $school->tempat }}, {{ \Carbon\Carbon::parse($school->tanggal)->locale('id')->translatedFormat('d F Y') }}<br>
        Kepala Sekolah,
        <div style="position: relative; width: 100%; height: 150px; margin-top: 10px; margin-bottom: 10px;">
            {{-- Tanda tangan --}}
            <img src="/files/ttd/{{ $school->tanda_tangan }}" width="220"
                style="position: absolute; top: 20px; left: 40px; z-index: 1;">

            {{-- Cap stempel di kiri menimpa tanda tangan --}}
            <img src="/files/cap/{{ $school->cap }}" width="130"
                style="position: absolute; top: 10px; left: 0px; z-index: 2; opacity: 0.85;">
        </div>

        <strong><u>{{ $school->nama_penandatangan }}</u></strong><br>
        NIP. {{ $school->nip_penandatangan }}
    </div>


</div>
</body>
@else
<p>ANDA TIDAK BISA CETAK SURAT KETERANGAN LULUS</p>
@endif
