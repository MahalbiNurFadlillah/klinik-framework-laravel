-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 05:21 PM
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
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrasis`
--

CREATE TABLE `administrasis` (
  `id` int(11) NOT NULL,
  `kode_administrasi` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `poli` varchar(255) NOT NULL,
  `biaya` int(11) NOT NULL,
  `keluhan` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `status` varchar(10) DEFAULT 'baru'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrasis`
--

INSERT INTO `administrasis` (`id`, `kode_administrasi`, `tanggal`, `pasien_id`, `dokter_id`, `poli`, `biaya`, `keluhan`, `diagnosis`, `status`) VALUES
(17, 'ADM0017', '2024-03-25', 11, 7, 'umum', 100000, 'gvvbj', 'harus mati', 'selesai'),
(19, 'ADM0019', '2024-03-26', 13, 8, 'THT', 250000, 'gangguan sinus', 'harus operasi', 'selesai'),
(21, 'ADM0020', '2024-03-26', 14, 9, 'Paru', 500000, 'sesak nafas', 'harus ganti paru dan di operasi', 'selesai'),
(22, 'ADM0022', '2024-04-23', 15, 12, 'Gizi', 300, 'jurang gizi', 'harus banyak makan sayur', 'selesai'),
(24, 'ADM0023', '2024-06-12', 16, 1, 'Mata', 450000, 'mata sangat buram', NULL, 'baru'),
(25, 'ADM0025', '2024-06-11', 17, 12, 'Gizi', 500000, 'kurang kalsium', 'banyak mimum vitamin', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode_dokter` varchar(255) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `spesialis` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`id`, `user_id`, `kode_dokter`, `nama_dokter`, `foto`, `spesialis`, `nomor_hp`, `twitter`, `facebook`, `instagram`, `tiktok`, `created_at`, `updated_at`) VALUES
(1, 2, 'D0001', 'Dr.Rizal Sp.M.', 'public/foto_dokter/4M6J0ETUrn5uYgZsqXIT6YLHo8Jx23c6aHt0MfHa.jpg', 'mata', '098765431324', '#rizal', '#rizal', '#rizal', '#rizal', '2024-03-18 17:00:43', '2024-03-26 08:30:42'),
(3, 4, 'D0003', 'Dr.Adi wiguna.Sp.Jp', 'public/foto_dokter/Mrfe6FleWjBz8uccNf8tdt8KGYK9PBhQaubwGbZ4.jpg', 'jantung', '097867542314', '#adi', '#adi', '#adi', '#adi', '2024-03-18 17:25:07', '2024-03-26 08:33:55'),
(6, 8, 'D0004', 'Dr.yanto Sp.S, M.Si.Med.', 'public/foto_dokter/Zi3OjTtDOy3A8F06tHn9VMZyIsqhIyPkF2IxVOfO.jpg', 'saraf', '056812546728', '#yanto', '#yanto', '#yanto', '#yanto', '2024-03-25 13:04:03', '2024-03-26 08:39:45'),
(7, 9, 'D0007', 'Dr. Wahyu, Sp.Umum', 'public/foto_dokter/1zSFI2gUo1nlUPiW3RSFxLgmqXbBnauFFHdlsJla.jpg', 'umum', '08975454565678789789', '#hbb', '#hjbjhb', '#hbh', '#jhvy', '2024-03-25 13:41:45', '2024-03-26 08:40:14'),
(8, 10, 'D0008', 'Dr. Bahrudin Amir, Sp.THT-KL', 'public/foto_dokter/5pMVoIyRBon6r7iB8JFi197G0kJRD1SQnWF8RxW5.jpg', 'tht', '086724567543', 'bahrudin', 'bahrudin', 'bahrudin', 'bahrudin', '2024-03-26 07:53:21', '2024-03-26 11:56:11'),
(9, 11, 'D0009', 'Dr.Risman.Sp.P', 'public/foto_dokter/MWAm6DcdTuDTRiWyILB4CICdgsDLQZGzwLUfsVB6.jpg', 'paru', '056419360103', '#Risman', '#Risman', '#Risman', '#Risman', '2024-03-26 12:05:19', '2024-03-26 12:05:19'),
(12, 14, 'D0010', 'naryo', NULL, 'gizi', '064786543215', '#', '#', '#', '#', '2024-04-23 09:34:12', '2024-04-23 09:34:12');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_04_024701_create_administrasis_table', 1),
(7, '2023_12_04_024701_create_dokters_table', 1),
(8, '2023_12_04_024701_create_pasiens_table', 1),
(9, '2023_12_04_024701_create_polis_table', 1),
(10, '2023_12_04_025030_add_role_to_users', 1),
(11, '2024_01_08_051411_create_obats_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_obat` varchar(255) NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `satuan` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal_expired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `created_at`, `updated_at`, `kode_obat`, `nama_obat`, `deskripsi`, `satuan`, `tipe`, `harga_beli`, `harga_jual`, `qty`, `tanggal_expired`) VALUES
(1, '2024-03-18 10:09:05', '2024-03-18 10:09:05', '12', 'tes', NULL, 'botol', 'botol', 20000, 15000, 12, '2024-03-18'),
(2, '2024-03-18 10:51:39', '2024-03-18 10:51:39', '9', 'kokooo', NULL, 'strip', 'tablet', 10000, 15000, 2, '2024-03-18'),
(3, '2024-03-25 06:46:46', '2024-03-25 06:46:46', '98', 'xvvfdvdfvdf', NULL, 'tablet', 'botol', 10000, 2000, 4, '2024-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` int(11) NOT NULL,
  `kode_pasien` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `kode_pasien`, `nama_pasien`, `jenis_kelamin`, `nomor_hp`, `status`, `alamat`, `created_at`, `updated_at`) VALUES
(2, 'P0002', 'nana', 'Perempuan', '09887654487', 'Belum Menikah', 'tes', '2024-03-18 17:45:36', '2024-03-18 17:45:36'),
(3, 'P0003', 'vin', 'Laki-laki', '095623456785', 'Sudah Menikah', 'jl kalibaru,bekasi selatan', '2024-03-18 18:05:23', '2024-03-18 18:05:23'),
(7, 'P0004', 'dio', 'Laki-laki', '4e5677677e5', 'Sudah Menikah', 'egssfb', '2024-03-25 13:35:07', '2024-03-25 13:35:07'),
(9, 'P0009', 'vfdgdfv', 'Laki-laki', 'o87373', 'Sudah Menikah', 'dfvdfvsdfvdfvdfv', '2024-03-25 13:39:08', '2024-03-25 13:39:08'),
(11, 'P0011', 'rafif', 'Perempuan', '085766754567', 'Sudah Menikah', 'hbhjjhb', '2024-03-25 13:52:09', '2024-03-25 13:52:09'),
(12, 'P0012', 'bella', 'Perempuan', '087965342134', 'Belum Menikah', 'jakarta', '2024-03-26 07:45:49', '2024-03-26 07:45:49'),
(13, 'P0013', 'Raisa', 'Perempuan', '045623458765', 'Belum Menikah', 'jakarta timur', '2024-03-26 07:59:15', '2024-03-26 07:59:15'),
(14, 'P0014', 'sadam', 'Laki-laki', '8732e6732823', 'Sudah Menikah', 'bandung', '2024-03-26 12:15:34', '2024-03-26 12:15:34'),
(15, 'P0015', 'adam', 'Laki-laki', '8767877575757', 'Sudah Menikah', 'jakarta', '2024-04-23 10:00:59', '2024-04-23 10:00:59'),
(16, 'P0016', 'lina', 'Perempuan', '09856776678', 'Belum Menikah', 'bekasi', '2024-06-10 08:35:32', '2024-06-10 08:35:32'),
(17, 'P0017', 'nina', 'Perempuan', '02392732823', 'Belum Menikah', 'jawa', '2024-06-10 08:41:18', '2024-06-10 08:41:18');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('093224442324@dokter.com', '$2y$10$1z6AcPI4CXk5biNj9Mf0.O4JmVpD5n0ofjfoj7K72WjQDnwjxoQ6C', '2024-04-23 02:20:31'),
('098765431324@dokter.com', '$2y$10$OusyjolacIW0pdgo5nKHO.tQ8YKk3W4DaRjGkMxdmnh3t9ybifMCW', '2024-03-25 05:35:06');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polis`
--

CREATE TABLE `polis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `biaya` double NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polis`
--

INSERT INTO `polis` (`id`, `dokter_id`, `nama`, `biaya`, `deskripsi`, `created_at`, `updated_at`) VALUES
(12, 9, 'Paru', 500000, 'Pneumonia,asma,Kanker Paru-paru,Tuberkulosis (TB)', '2024-03-26 05:10:27', '2024-03-26 05:11:51'),
(13, 1, 'Mata', 450000, 'Katarak,Glaukoma,Degenerasi Makula,Penyakit Mata Kering,Retinopati Diabetik', '2024-03-26 05:13:57', '2024-03-26 05:13:57'),
(15, 12, 'Gizi', 500000, 'Untu orang yang kurang gizi', '2024-04-23 03:58:55', '2024-04-23 03:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin Mahalbi', 'admin@admin.com', '2024-03-18 09:54:34', '$2y$10$25Q9lqdNjgu6.l1yBp/NN.EcTAEbzuM/EMdso7J6Gg4/Wpkgk5Ywq', 'mEHznZYcyz', '2024-03-18 09:54:34', '2024-03-25 00:06:39', 'admin'),
(11, 'Dr.Risman.Sp.P', '056419360103@dokter.com', NULL, '$2y$10$0p4MIzDcoXx1sguswNtvR.4tdPw20yoIfYS9AIAI/Q.dLHqcoRveC', NULL, '2024-03-26 05:05:19', '2024-03-26 05:05:19', 'dokter'),
(12, 'naryo', '093224442324@dokter.com', NULL, '12345\r\n', NULL, '2024-04-23 02:01:12', '2024-04-23 02:01:12', 'dokter'),
(13, 'tes12', '087624361437@dokter.com', NULL, '$2y$10$a5I/nhYZlEiEG/dds6DIIOFL9JdujL45CGGvo30hE6iFNx0.ESdxy', 'W60sbs6eAma0oBP4UNOJLYp9eufcDB9ZNta71ltKFq895qASSasJmw3RrxWH', '2024-04-23 02:31:04', '2024-04-23 02:31:04', 'dokter'),
(14, 'naryo', '064786543215@dokter.com', NULL, '$2y$10$Y7/AuYJiQWIg9EFIK21PnOHCnninR7WhqrzdJuZqwtSJH5X5Cp/WC', NULL, '2024-04-23 02:34:12', '2024-04-23 02:36:28', 'dokter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrasis`
--
ALTER TABLE `administrasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obat_kode_obat_unique` (`kode_obat`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `polis`
--
ALTER TABLE `polis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polis_dokter_id_index` (`dokter_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrasis`
--
ALTER TABLE `administrasis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polis`
--
ALTER TABLE `polis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
