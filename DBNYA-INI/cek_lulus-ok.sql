-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 07:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cek_lulus`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2022_04_23_074325_create_students_table', 1),
(16, '2022_04_23_165731_create_webs_table', 2),
(18, '2022_04_24_132000_add_username_to_users', 3),
(20, '2022_04_24_150207_create_settings_table', 4),
(21, '2022_04_27_070016_create_schools_table', 5),
(22, '2022_04_30_065432_add_nama_ortu_to_students', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kop_logo_dinas` varchar(255) DEFAULT NULL,
  `kop_nama_sekolah` varchar(255) DEFAULT NULL,
  `kop_alamat` varchar(255) DEFAULT NULL,
  `kop_telepon` varchar(255) DEFAULT NULL,
  `kop_pos` varchar(255) DEFAULT NULL,
  `kop_website` varchar(255) DEFAULT NULL,
  `kop_email` varchar(255) DEFAULT NULL,
  `kop_npsn` varchar(255) DEFAULT NULL,
  `kop_nss` varchar(255) DEFAULT NULL,
  `kop_kodesekolah` varchar(255) DEFAULT NULL,
  `kop_nama_provinsi` varchar(255) DEFAULT NULL,
  `kop_nama_disdik` varchar(255) DEFAULT NULL,
  `kop_nama_cabdin` varchar(255) DEFAULT NULL,
  `kop_th_pelajaran` varchar(255) DEFAULT NULL,
  `nama_surat` varchar(255) DEFAULT NULL,
  `pembuka_surat` varchar(255) DEFAULT NULL,
  `penutup_surat` varchar(255) DEFAULT NULL,
  `jabatan_penandatangan` varchar(255) DEFAULT NULL,
  `nama_penandatangan` varchar(255) DEFAULT NULL,
  `nip_penandatangan` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tanda_tangan` varchar(255) DEFAULT NULL,
  `cap` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `kop_logo_dinas`, `kop_nama_sekolah`, `kop_alamat`, `kop_telepon`, `kop_pos`, `kop_website`, `kop_email`, `kop_npsn`, `kop_nss`, `kop_kodesekolah`, `kop_nama_provinsi`, `kop_nama_disdik`, `kop_nama_cabdin`, `kop_th_pelajaran`, `nama_surat`, `pembuka_surat`, `penutup_surat`, `jabatan_penandatangan`, `nama_penandatangan`, `nip_penandatangan`, `tempat`, `tanggal`, `tanda_tangan`, `cap`, `created_at`, `updated_at`) VALUES
(2, 'provinsi.png', 'SEKOLAH MENENGAH KEJURUAN NEGERI 1 GUNUNGPUTRI', 'Jl. Barokah No. 06 Desa Wanaherang Kec. Gunungputri', '0218673310', '16965', 'www.smkn1gnputri.sch.id', 'smkn1gnp@smkn1gnputri.sch.id', '20231421', 'undefined', '32031521', 'PEMERINTAH DAERAH PROVINSI JAWABARAT', 'DINAS PENDIDIKAN', 'CABANG DINAS PENDIDIKAN WILAYAH I', '2024-2025', 'SURAT KETERANGAN LULUS', 'Kepala SMK NEGERI 1 GUNUNGPUTRI Tahun Pelajaran 2024/2025, dengan berdasarkan : \n1. Penyelesaian seluruh program pembelejaran pada kurikulum merdeka;\n2. Kriteria kelulusan dari satuan pedidikan pada kurikulum merdeka;\n3. Rapat pleno Dewan Guru tentang pen', 'Surat Keterangan Lulus hanya berlaku sampai diterbitkannya ijazah', 'KEPALA SEKOLAH', 'Aman Sihombing, M.Pd', '196510181995121001', 'Gunungputri', '2025-05-05', 'ttd.png', 'stempel.png', '2025-05-03 01:24:28', '2025-05-02 21:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `status`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-02', '19:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nama_ortu` varchar(255) DEFAULT NULL,
  `tempat_tgl_lahir` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `prog_keahlian` varchar(255) NOT NULL,
  `komp_keahlian` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `pai` int(11) DEFAULT NULL,
  `pkn` int(11) DEFAULT NULL,
  `bindo` int(11) DEFAULT NULL,
  `pjok` int(11) DEFAULT NULL,
  `sejarah` int(11) DEFAULT NULL,
  `seni` int(11) DEFAULT NULL,
  `bsun` int(11) DEFAULT NULL,
  `mat` int(11) DEFAULT NULL,
  `bing` int(11) DEFAULT NULL,
  `inf` int(11) DEFAULT NULL,
  `ipas` int(11) DEFAULT NULL,
  `dk` int(11) DEFAULT NULL,
  `kk` int(11) DEFAULT NULL,
  `pkl` int(11) DEFAULT NULL,
  `bjep` int(11) DEFAULT NULL,
  `dg` int(11) DEFAULT NULL,
  `rata_rata` int(11) GENERATED ALWAYS AS (case when 16 - (if(`pai` is null,1,0) + if(`pkn` is null,1,0) + if(`bindo` is null,1,0) + if(`pjok` is null,1,0) + if(`sejarah` is null,1,0) + if(`seni` is null,1,0) + if(`bsun` is null,1,0) + if(`mat` is null,1,0) + if(`bing` is null,1,0) + if(`inf` is null,1,0) + if(`ipas` is null,1,0) + if(`dk` is null,1,0) + if(`kk` is null,1,0) + if(`pkl` is null,1,0) + if(`bjep` is null,1,0) + if(`dg` is null,1,0)) = 0 then NULL else (coalesce(`pai`,0) + coalesce(`pkn`,0) + coalesce(`bindo`,0) + coalesce(`pjok`,0) + coalesce(`sejarah`,0) + coalesce(`seni`,0) + coalesce(`bsun`,0) + coalesce(`mat`,0) + coalesce(`bing`,0) + coalesce(`inf`,0) + coalesce(`ipas`,0) + coalesce(`dk`,0) + coalesce(`kk`,0) + coalesce(`pkl`,0) + coalesce(`bjep`,0) + coalesce(`dg`,0)) / (16 - (if(`pai` is null,1,0) + if(`pkn` is null,1,0) + if(`bindo` is null,1,0) + if(`pjok` is null,1,0) + if(`sejarah` is null,1,0) + if(`seni` is null,1,0) + if(`bsun` is null,1,0) + if(`mat` is null,1,0) + if(`bing` is null,1,0) + if(`inf` is null,1,0) + if(`ipas` is null,1,0) + if(`dk` is null,1,0) + if(`kk` is null,1,0) + if(`pkl` is null,1,0) + if(`bjep` is null,1,0) + if(`dg` is null,1,0))) end) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `nisn`, `name`, `nama_ortu`, `tempat_tgl_lahir`, `nis`, `class`, `prog_keahlian`, `komp_keahlian`, `status`, `message`, `pai`, `pkn`, `bindo`, `pjok`, `sejarah`, `seni`, `bsun`, `mat`, `bing`, `inf`, `ipas`, `dk`, `kk`, `pkl`, `bjep`, `dg`) VALUES
(1, '12345611', 'FAUZI AGUSTIAN', 'BAPAK FAUZI', 'Bogor, 8 maret 1980', '121212', '12 IPA 5', 'Teknik Informatika', 'Jaringan Komputer', 1, 'ANDA DINYATAKAN LULUS', 80, 80, 75, 85, 70, 90, 88, 92, 85, 80, 78, 85, 87, 90, 88, 86),
(2, '12345612', 'ANDI SAPUTRA', 'IBU ANDI', 'Jakarta, 10 April 1981', '121213', '12 IPA 6', 'Teknik Informatika', 'Jaringan Komputer', 1, 'ANDA DINYATAKAN LULUS', 85, 90, 75, 80, 85, 88, 90, 85, 80, 82, 84, 86, 88, 89, 87, 85),
(3, '11144555', 'ANDREA', 'ANDRA', 'Bogor, 8 Maret 1980', '20251510', 'XI ELEKTRO 1', 'Teknik Elektronika', 'Teknik Elektronika Industri', 1, 'ANDA DINYATAKAN LULUS', 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80),
(4, '888888', 'ADRIANO', 'ADRAINO', 'Bogor, 8 Maret 1980', '889999', 'XI ELEKTRO 1', 'Teknik Elektronika', 'Teknik Elektronika Industri', 1, 'ANDA DINYATAKAN LULUS', 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_view` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `password_view`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'admin', 'admin@gmail.com', NULL, '$2y$10$MoCQaxWy9xsUQFFEcMC1OuIi7Q2dRkk/CnvyoMzeS0x8GWy51DmWO', '123456789', NULL, NULL, '2022-04-24 07:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `webs`
--

CREATE TABLE `webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `web_name` varchar(255) DEFAULT NULL,
  `slide_1` varchar(255) DEFAULT NULL,
  `slide_2` varchar(255) DEFAULT NULL,
  `slide_3` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webs`
--

INSERT INTO `webs` (`id`, `title`, `logo`, `web_name`, `slide_1`, `slide_2`, `slide_3`, `footer`, `about`, `created_at`, `updated_at`) VALUES
(1, 'Sistem Informasi Kelulusan', 'SMKN 1 Gunungputri_Logo Skiel.png', 'SMKN 1 Gunungputri', 'Web Kelulusan 2_Metaliq2-Evolving_Metal_Texture_Motion_Background_Video_Loop_Sample2.jpg', 'Web Kelulusan 2_fikri-rasyid-FnKKF2bATEE-unsplash.jpg', 'Web Kelulusan 2_istockphoto-1146679365-612x612.jpg', 'SMKN 1 Gunungputri', 'Sistem Informasi Kelulusan', NULL, '2025-05-02 19:31:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_queue_index` (`queue`(768));

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
