-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 01:20 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

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
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `kop_logo_dinas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_pos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_npsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_kodesekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_provinsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_disdik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_cabdin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_th_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pembuka_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penutup_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tanda_tangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--
INSERT INTO `schools` (`id`, `kop_logo_dinas`, `kop_nama_sekolah`, `kop_alamat`, `kop_telepon`, `kop_pos`, `kop_website`, `kop_email`, `kop_npsn`, `kop_nss`, `kop_kodesekolah`, `kop_nama_provinsi`, `kop_nama_disdik`, `kop_nama_cabdin`, `kop_th_pelajaran`, `nama_surat`, `pembuka_surat`, `penutup_surat`, `jabatan_penandatangan`, `nama_penandatangan`, `nip_penandatangan`, `tempat`, `tanggal`, `tanda_tangan`, `cap`, `created_at`, `updated_at`) VALUES
(2, 'SMA NEGERI 2 PARUNG_Logo-propinsi-jawa-barat.png', 'SMA NEGERI 2 PARUNG', 'Jl.warujaya No.18 Kec.parung Bogor ok', '02133229023', '16331', 'https://sman2parung.sch.id', 'sman2parung@gmail.com', '20231421', '40 1 02 02 02 018', '32031521', 'PEMERINTAH DAERAH PROVINSI JAWABARAT', 'DINAS PENDIDIKAN', 'CABANG DINAS PENDIDIKAN WILAYAH I', '2024-2025', 'SURAT KETERANGAN LULUS', 'Kepala SMK NEGERI 1 GUNUNGPUTRI Tahun Pelajaran 2024/2025, dengan berdasarkan : 
1. Penyelesaian seluruh program pembelejaran pada kurikulum merdeka;
2. Kriteria kelulusan dari satuan pedidikan pada kurikulum merdeka;
3. Rapat pleno Dewan Guru tentang penetapan kelulusan pada tanggal 5 Mei 2025;

menerangkan bahwa :', 'Surat Keterangan Lulus hanya berlaku sampai diterbitkannya ijazah', 'KEPALA SEKOLAH', 'Aman Sihombing, M.Pd', '196510181995121001', 'Gunungputri', '2022-04-28', 'ttd.png', 'stempel.png', NULL, '2022-04-29 23:51:01');

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
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ortu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prog_keahlian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komp_keahlian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `rata_rata` int(11) GENERATED ALWAYS AS (
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
  ) STORED,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3;

--
-- Dumping data for table `students`
--
INSERT INTO `students` (`id`, `nisn`, `name`, `nama_ortu`, `tempat_tgl_lahir`, `nis`, `class`, `prog_keahlian`, `komp_keahlian`, `status`, `message`, `pai`, `pkn`, `bindo`, `pjok`, `sejarah`, `seni`, `bsun`, `mat`, `bing`, `inf`, `ipas`, `dk`, `kk`, `pkl`, `bjep`, `dg`) VALUES
(1, '12345611', 'FAUZI AGUSTIAN', 'BAPAK FAUZI', 'Bogor, 8 maret 1980', '121212', '12 IPA 5', 'Teknik Informatika', 'Jaringan Komputer', 1, 'ANDA DINYATAKAN LULUS', 80, 80, 75, 85, 70, 90, 88, 92, 85, 80, 78, 85, 87, 90, 88, 86),
(2, '12345612', 'ANDI SAPUTRA', 'IBU ANDI', 'Jakarta, 10 April 1981', '121213', '12 IPA 6', 'Teknik Informatika', 'Jaringan Komputer', 1, 'ANDA DINYATAKAN LULUS', 85, 90, 75, 80, 85, 88, 90, 85, 80, 82, 84, 86, 88, 89, 87, 85);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webs`
--

INSERT INTO `webs` (`id`, `title`, `logo`, `web_name`, `slide_1`, `slide_2`, `slide_3`, `footer`, `about`, `created_at`, `updated_at`) VALUES
(1, 'Web Kelulusan V2', 'Sman 1 Parung_school.png', 'Nama Sekolah', 'Web Kelulusan 2_Metaliq2-Evolving_Metal_Texture_Motion_Background_Video_Loop_Sample2.jpg', 'Web Kelulusan 2_fikri-rasyid-FnKKF2bATEE-unsplash.jpg', 'Web Kelulusan 2_istockphoto-1146679365-612x612.jpg', 'Sman 1 parung', 'Web ini Merupakan web pengumuman kelulusan', NULL, '2023-01-01 10:18:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD INDEX `failed_jobs_queue_index` (`queue`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_password_view_unique` (`password_view`);

--
-- Indexes for table `webs`
--
ALTER TABLE `webs`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webs`
--
ALTER TABLE `webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
