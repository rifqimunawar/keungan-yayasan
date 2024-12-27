-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 27, 2024 at 02:46 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u232226058_armaniyyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SD', NULL, NULL),
(2, 'SMP', NULL, NULL),
(3, 'SMK', NULL, NULL);

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
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nominal` bigint(20) UNSIGNED NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `nominal`, `tanggal_transaksi`, `siswa_id`, `tagihan_id`, `siswa_tagihan_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 300000, '2024-11-24 09:40:08', 1, 3, 296, 1, NULL, '2024-11-24 09:40:08', '2024-11-24 09:40:08'),
(8, 90000, '2024-12-11 14:43:38', 1, 3, 296, 9, NULL, '2024-12-11 14:43:38', '2024-12-11 14:43:38'),
(9, 100000, '2024-12-13 21:19:19', 768, 4, 385, 1, NULL, '2024-12-13 21:19:19', '2024-12-13 21:19:19'),
(10, 100000, '2024-12-13 23:07:53', 1, 3, 296, 1, NULL, '2024-12-13 23:07:53', '2024-12-13 23:07:53'),
(11, 10000, '2024-12-13 23:18:20', 1, 3, 296, 1, NULL, '2024-12-13 23:18:20', '2024-12-13 23:18:20'),
(12, 100000, '2024-12-21 18:51:44', 5, 3, 300, 1, NULL, '2024-12-21 18:51:44', '2024-12-21 18:51:44'),
(13, 100000, '2024-12-24 13:25:17', 10, 3, 305, 1, NULL, '2024-12-24 13:25:17', '2024-12-24 13:25:17'),
(14, 90000, '2024-12-24 22:44:09', 2, 3, 297, 1, NULL, '2024-12-24 22:44:09', '2024-12-24 22:44:09'),
(15, 50000, '2024-12-24 22:46:08', 2, 5, 398, 1, NULL, '2024-12-24 22:46:08', '2024-12-24 22:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `name`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kelas I Update', 1, NULL, '2024-09-20 09:31:56', '2024-12-24 23:07:15'),
(2, 'Kelas II', 1, NULL, '2024-09-20 09:32:24', '2024-09-20 10:09:02'),
(3, 'Kelas III', 1, NULL, '2024-09-20 09:32:48', '2024-09-20 10:08:51'),
(4, 'Kelas IV', 1, NULL, '2024-09-20 09:33:01', '2024-09-20 10:08:42'),
(5, 'Kelas V', 1, NULL, '2024-09-20 09:33:10', '2024-09-20 10:08:33'),
(6, 'Kelas VI', 1, NULL, '2024-09-20 10:04:02', '2024-09-20 10:08:23'),
(7, 'Kelas VII', 2, NULL, '2024-09-20 10:05:13', '2024-09-20 10:08:13'),
(8, 'Kelas VIII', 2, NULL, '2024-09-20 10:05:26', '2024-09-20 10:08:03'),
(9, 'Kelas IX', 2, NULL, '2024-09-20 10:05:37', '2024-09-20 10:07:54'),
(10, 'Kelas X TKR', 3, NULL, '2024-09-20 10:06:04', '2024-09-20 10:07:43'),
(11, 'Kelas X TKJ 1', 3, NULL, '2024-09-20 10:07:01', '2024-09-20 10:07:35'),
(12, 'Kelas X TKJ 2', 3, NULL, '2024-09-20 10:07:22', '2024-09-20 10:07:22'),
(13, 'Kelas XI TKR', 3, NULL, '2024-09-20 10:09:34', '2024-09-20 10:10:01'),
(14, 'Kelas XI TKJ', 3, NULL, '2024-09-20 10:09:53', '2024-09-20 10:09:53'),
(15, 'Kelas XII TKR 1', 3, NULL, '2024-09-20 10:10:29', '2024-09-20 10:10:29'),
(16, 'Kelas XII TKR 2', 3, NULL, '2024-09-20 10:10:50', '2024-09-20 10:10:50'),
(17, 'Kelas XII TKJ 1', 3, NULL, '2024-09-20 10:11:07', '2024-09-20 10:11:07'),
(18, 'Kelas XII TKJ 2', 3, NULL, '2024-09-20 10:11:27', '2024-09-20 10:11:27'),
(20, 'Alumni', 3, '2024-12-24 23:18:51', '2024-12-24 22:56:21', '2024-12-24 23:18:51'),
(21, 'XI TKJ 3 Update', 3, NULL, '2024-12-24 23:09:16', '2024-12-24 23:09:16');

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
(1, '2014_08_19_153719_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_08_20_155531_create_categories_table', 1),
(7, '2024_08_21_030051_create_kelas_table', 1),
(8, '2024_08_21_040000_create_tahun_masuks_table', 1),
(9, '2024_08_21_041000_create_tagihans_table', 1),
(10, '2024_08_21_042940_create_siswas_table', 1),
(11, '2024_08_22_034346_siswa_tagihan', 1),
(12, '2024_08_25_171842_create_histories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'System Admininstrator', '2024-08-19 11:07:48', '2024-08-20 20:12:05'),
(2, 'User', '2024-08-19 11:07:48', '2024-08-19 11:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nisn` bigint(20) UNSIGNED DEFAULT NULL,
  `no_urut` bigint(20) UNSIGNED DEFAULT NULL,
  `tahun_masuk_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `kelas_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `name`, `nisn`, `no_urut`, `tahun_masuk_id`, `category_id`, `kelas_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Adzkia Dinnar Jaelani', NULL, 124001, 7, 1, 1, NULL, '2024-09-20 12:33:22', '2024-12-24 23:04:54'),
(2, 'Adzkia Naila Khanza', NULL, 124002, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(3, 'Afifah Khairunnisa', NULL, 124003, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(4, 'Afiqa Myesha Pribadi', NULL, 124004, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(5, 'Alesha Shaliha', NULL, 124005, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(6, 'Alleia Putri Rinjani', NULL, 124006, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(7, 'Alvin Hafiz Syahreza', NULL, 124007, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(8, 'Alvina Ramadhani', NULL, 124008, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(9, 'Anasya Adrena Saila', NULL, 124009, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(10, 'Aqila Azzalea Shafana ', NULL, 124010, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(11, 'Arga Pradipta Mulya', NULL, 124011, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(12, 'Arista Rizky Wulandari', NULL, 124012, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(13, 'Arkasha Javas Dewaruci', NULL, 124013, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(14, 'Arkhan Azzam Alfariq', NULL, 124014, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(15, 'Arsyila Azalia', NULL, 124015, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(16, 'Arsyila Setya Alfatunnisa', NULL, 124016, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(17, 'Arvino Daviandra Syarif', NULL, 124017, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(18, 'Arzachel Rayyan', NULL, 124018, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(19, 'Athaya Annazqia', NULL, 124019, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(20, 'Ayna Qorri Megumi', NULL, 124020, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(21, 'Ayu Satya Putri', NULL, 124021, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(22, 'Azelvin Hazard Sugiono', NULL, 124022, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(23, 'Azkia Naila Anggraini', NULL, 124023, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(24, 'Azqiara Shaquila Prasetyo', NULL, 124024, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(25, 'Azzahra Alika Syaputri', NULL, 124025, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(26, 'Dzaki Narendra', NULL, 124026, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(27, 'Fairel Athariz Giovany', NULL, 124027, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(28, 'Fatimah Atiyatul Haniyya', NULL, 124028, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(29, 'Ghaisan Azfar Tsaqif Dhiafkhari', NULL, 124029, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(30, 'Ghina Anindhya', NULL, 124030, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(31, 'Ghina Septianasiha', NULL, 124031, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(32, 'Hafiz Hasanudin ', NULL, 124032, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(33, 'Hanindhiya Shafa Arum', NULL, 124033, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(34, 'Jagad Nusantara Rudyono', NULL, 124034, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(35, 'Kayla Azizah Sugiarto', NULL, 124035, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(36, 'Keenan Rabu Kilimanjaro', NULL, 124036, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(37, 'Kiara Alesha Putri', NULL, 124037, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(38, 'Laila Akila Ramadani', NULL, 124038, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(39, 'Muhamad Syadam El Feyza', NULL, 124039, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(40, 'Muhammad Arkan Mubarok', NULL, 124040, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(41, 'Muhammad Gibran Al Faro', NULL, 124041, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(42, 'Muhammad Hazwan Khairulloh', NULL, 124042, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(43, 'Muhammad Leo Saputra ', NULL, 124043, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(44, 'Muhammad Luqman Hamdani', NULL, 124044, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(45, 'Muhammad Syauqi Ardavan', NULL, 124045, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(46, 'Naura Ayudia Nadhifa', NULL, 124046, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(47, 'Nayla Putri Ramadhani', NULL, 124047, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(48, 'Nizam Al Khafi Husaini', NULL, 124048, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(49, 'Qiana Nadra Amberlee Ahmad', NULL, 124049, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(50, 'Queensha Almahyra Mekka', NULL, 124050, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(51, 'Rachmat Arkhaan Hidayatulloh', NULL, 124051, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(52, 'Rania Shifabella', NULL, 124052, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(53, 'Rayyan Syauqi Putra', NULL, 124053, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(54, 'Siti Fatimah Azzahra', NULL, 124054, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(55, 'Sultan Ali Akbar', NULL, 124055, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(56, 'Syaqueena Ellea Nur Aisyah', NULL, 124056, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(57, 'Yafiq Wahyu Wibowo', NULL, 124057, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(58, 'Yafizan Wahyu Wibowo', NULL, 124058, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(59, 'Yusuf Nurdiansyah', NULL, 124059, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(60, 'Zahran Kahfi Athaillah', NULL, 124060, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(61, 'Naufal Rizki Dwi Priyadi', NULL, 124061, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(62, 'Salsabila Setianingtias', NULL, 124062, 8, 1, 1, NULL, '2024-09-20 12:33:22', '2024-09-20 12:33:22'),
(63, 'Agam Sa\'id Syahbana ', NULL, 123001, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(64, 'Adheeva Inara', NULL, 123002, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(65, 'Ahmad Haidar Zafran', NULL, 123003, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(66, 'Ainayya Nairaputri Ramadhina ', NULL, 123004, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(67, 'Aisyah Azkayra Hasna', NULL, 123005, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(68, 'Al Ghazali Tsaqib Rabbani', NULL, 123006, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(69, 'Alea Shakila Heryanto', NULL, 123007, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(70, 'Alfando Septriansyah', NULL, 123008, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(71, 'Amanda Puteri Lakosa', NULL, 123009, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(72, 'Anindya Aqilla Ayu S', NULL, 123010, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(73, 'Anindyta Putri Aristi', NULL, 123011, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(74, 'Anjani Khansa Rachmania', NULL, 123012, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(75, 'Aqila Dwi Deswita', NULL, 123013, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(76, 'Arista Andari', NULL, 123014, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(77, 'Arrafi Septian Ghofparo', NULL, 123015, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(78, 'Arsakha Dhanis Prasetiajati', NULL, 123016, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(79, 'Arsyla Syafna Salzabila', NULL, 123017, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(80, 'Ashalina Nur Assyifa', NULL, 123018, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(81, 'Ashilla Azzahra Putri', NULL, 123019, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(82, 'Assyifa Nur Fadilah', NULL, 123020, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(83, 'Azril Fauzan Rashya ', NULL, 123021, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(84, 'Bilqis Latisha Azka', NULL, 123022, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(85, 'Bilqis Tiarandinie Khairunnisa', NULL, 123023, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(86, 'Daffa Albyansyah Setiawan', NULL, 123024, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(87, 'Danish Alghifari Mustofa ', NULL, 123025, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(88, 'Fadheela Aulia Rasyiddah', NULL, 123026, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(89, 'Fathia Annaila Nurrahman', NULL, 123027, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(90, 'Faza Athalla Ramadan', NULL, 123028, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(91, 'Hail Abiyyu Hamizan', NULL, 123029, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(92, 'Hanna Aisha Putri', NULL, 123030, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(93, 'Hanna Wardatul Janah', NULL, 123031, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(94, 'Ibrahim Arya Fabian', NULL, 123032, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(95, 'Inara Athifa Syauqia', NULL, 123033, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(96, 'Inara Oryza Sativa', NULL, 123034, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(97, 'Intan Nafisah', NULL, 123035, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(98, 'Intan Permata Yulandara ', NULL, 123036, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(99, 'Kalani Qyara ', NULL, 123037, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(100, 'Kevin Azka Febrian', NULL, 123038, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(101, 'Khaira Aqila Nadhifa Sakhi', NULL, 123039, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(102, 'Khalif Fauzan Rasya', NULL, 123040, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(103, 'Khamada Alfian Fatah', NULL, 123041, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(104, 'King Fawwas Ahmad Saputra', NULL, 123042, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(105, 'Laura Naladhiva Alhafifi', NULL, 123043, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(106, 'Maulana Akbar Rizkiansyah', NULL, 123044, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(107, 'Mouza Ahmad', NULL, 123045, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(108, 'Muhammad Arfan Yudistira ', NULL, 123046, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(109, 'Muhammad Gilang Ramadhan', NULL, 123047, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(110, 'Muhammad Rizki Ramdhan N', NULL, 123048, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(111, 'Muhammad Yusuf Abqory', NULL, 123049, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(112, 'Narendra Kenzo Naladhipa', NULL, 123050, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(113, 'Neal Nevan Attalah', NULL, 123051, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(114, 'Pratama Alif Putrawan', NULL, 123052, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(115, 'Rachel Setia Wijaya', NULL, 123053, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(116, 'Raid Dastan Athafariz', NULL, 123054, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(117, 'Raisha Zahra Nazeefah', NULL, 123055, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(118, 'Raka Abichandra ', NULL, 123056, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(119, 'Rania Resyaqila Rahardian', NULL, 123057, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(120, 'Rania Resyaqila Rahardian', NULL, 123058, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(121, 'Rasendria Haryaka', NULL, 123059, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(122, 'Reyhan Syahreza', NULL, 123060, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(123, 'Reynand Alfarez Mahardika', NULL, 123061, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(124, 'Rizky Ramadhan ', NULL, 123062, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(125, 'Rojo Edo', NULL, 123063, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(126, 'Shabrina Nur Arsyfa ', NULL, 123064, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(127, 'Shakila Elsha Althafunnisa', NULL, 123065, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(128, 'Sheina Aulia Hidayat', NULL, 123066, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(129, 'Siti Mariyam Madina', NULL, 123067, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(130, 'Surya Saputra', NULL, 123068, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(131, 'Tivany Rinjani A', NULL, 123069, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(132, 'Abiyu Aqila Pranaja ', NULL, 123070, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(133, 'Mirza Hakim', NULL, 123071, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(134, 'Muhammad Arfan Alwi', NULL, 123072, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(135, 'Ahsan Prasraya Haryadi', NULL, 123073, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(136, 'Nabila Syakira Zahra M', NULL, 123074, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(137, 'Muhamad Athaya Shabri', NULL, 123075, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(138, 'Aditya Armahedi Warman ', NULL, 123076, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(139, 'Muhammad Al Ghibran Andriansyah', NULL, 123077, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(140, 'Anugrah Restu Alfathir ', NULL, 123078, 7, 1, 2, NULL, '2024-09-20 12:33:38', '2024-09-20 12:33:38'),
(141, 'Abdullah Azzam', 3160998543, 122001, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(142, 'Achmad Wildan Al-Azzami', 3155846676, 122002, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(143, 'Adiibah Nuuri Syakira', 3152763177, 122003, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(144, 'Agatha Arka Saputra', 3159913833, 122004, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(145, 'Aisyah Ayudia Inara', 3152422961, 122005, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(146, 'Alden Pasha Danendra', 153673697, 122006, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(147, 'Aleza Farzana RH', 3153466419, 122007, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(148, 'Alika Naila Putri', 3158119368, 122008, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(149, 'Alsahira Rizkia Azhari', 3159933611, 122009, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(150, 'Alvia Nazwa ', 3152618572, 122010, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(151, 'Aninda Fildzah Labibah', 3151572097, 122011, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(152, 'Annasya Adreena Saila', 3166424538, 122012, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(153, 'Arfa Albarra Majid', 3154213171, 122013, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(154, 'Arsakha Zayla Viandra', 3161526676, 122014, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(155, 'Arshaka Dipta Abqary', 3156177309, 122015, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(156, 'Athaya Kahirinniswa', 3159826425, 122016, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(157, 'Auliyan Arsha', 3160802602, 122017, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(158, 'Axel Agustian Alvaro', 3156506099, 122018, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(159, 'Aysha Ailani Arka', 3150635814, 122019, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(160, 'Ayudia Oktavia Inara', 3153829372, 122020, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(161, 'Barra Chandra Ramadhan', 3152244655, 122021, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(162, 'Chiharu Zhafira Nurul Izzaty', 3157538176, 122022, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(163, 'Davyan Abinaya Kayana Putra', 3154939210, 122023, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(164, 'Dhio Ragil Pradipta', 3144726599, 122024, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(165, 'Dimas Aditya', 3153921576, 122025, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(166, 'Dirga Satya Pratama', 3151168049, 122026, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(167, 'Dzakir Hafidz Sacadirja', 3151087221, 122027, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(168, 'Earlyta Arsyifa Salsabila', 151553667, 122028, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(169, 'Earlyta Hanum Salsabila', 152330944, 122029, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(170, 'Faatiha Nurrubiyah', 3158798603, 122030, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(171, 'Farrin Shafana Ufairah', 3150486593, 122031, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(172, 'Fatimah Ayu Ningtias', 3150751535, 122032, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(173, 'Fernita Prana Citra', 3165899352, 122033, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(174, 'Fillan Aditya Firsty', 3152932707, 122034, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(175, 'Fitri Nurhasanah ', 3158354075, 122035, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(176, 'Galih Hernandi', 3148518109, 122036, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(177, 'Gween Zia Andeta Sidabutar', 3163508962, 122037, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(178, 'Gynra Al Fathir', 3155367933, 122038, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(179, 'Haris Ananda Putra ', 3155939557, 122039, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(180, 'Hasna Ibtisamah', 3157514639, 122040, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(181, 'Insyira Alzena Barrah', 3153378996, 122041, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(182, 'Jazilla Choirunissa Putri', 3154668458, 122042, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(183, 'Keinarra Shin', 3160580309, 122043, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(184, 'Khoiril Fadhil', 3153364807, 122044, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(185, 'Kinanti Putri Mutiara Sandi', 3168561964, 122045, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(186, 'Laras Ayu', 3166571123, 122046, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(187, 'Mikayla Siti Assyifa', 3168202627, 122047, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(188, 'Milka Putri Khasanah', 3156845865, 122048, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(189, 'Mohamad Abid', 3167902750, 122049, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(190, 'Muhamad Alvandy Ishaq', 3150418458, 122050, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(191, 'Muhammad Adrian Al Farisi', 3157736274, 122051, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(192, 'Muhammad Aldi Nur Rohman', 3152307344, 122052, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(193, 'Muhammad Aldo Nur Rohim', 3152439653, 122053, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(194, 'Muhammad Hafidz Khoirulloh R', 3156663474, 122054, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(195, 'Muhammad Mirza Ukail R', 3150511686, 122055, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(196, 'Nadya Zayla Azzahra', 3152410211, 122056, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(197, 'Naura Aisyahfira Andriawan', 3169550794, 122057, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(198, 'Niken Asfa Shanala', 3151670247, 122058, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(199, 'Nurin Irdina Mangkudilaga', 3153419114, 122059, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(200, 'Pio Anbya Muhammad Alfin', 3155377637, 122060, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(201, 'Rafif Athallah Novtara', 3144907920, 122061, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(202, 'Rajendra Emery Arsenio', 3155741197, 122062, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(203, 'Syakila Najma Orlin', 3166985780, 122063, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(204, 'Syaqila Aqueena Asror', 3155005828, 122064, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(205, 'Thania Aminoto Azzahra', 3155193608, 122065, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(206, 'Ukail Rifi Hafeeza', 3156242972, 122066, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(207, 'Yaskia Nova Kusuma Wardani', 3152901546, 122067, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(208, 'Zeinia Aulia Salsabila', 3152901546, 122068, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(209, 'Zevanny Alona Putri', 3158288089, 122069, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(210, 'Zibran Al Fatih ', 3165392368, 122070, 6, 1, 3, NULL, '2024-09-20 12:33:54', '2024-09-20 12:33:54'),
(337, 'Adiba Rafa Attaya', 3144722645, 121001, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(338, 'Adibah Aida Dhia Syarafana', 3146695577, 121002, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(339, 'Adinata Zidan Pragata', 3146367135, 121003, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(340, 'Adzkia Saufa Hamdani', 3159928798, 121004, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(341, 'Affan Sakhi AlKhalifi', 3149610468, 121005, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(342, 'Afiqah Mahira Heriyanto', 3142578602, 121006, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(343, 'Aisah Putriaji', 3140837625, 121007, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(344, 'Akmal Aflah Timosyah', 3148701712, 121008, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(345, 'Alfian Pratama Saputro', 3153862909, 121009, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(346, 'Alisha Ramadani', 3145654134, 121010, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(347, 'Alkhalifi Nur Rizki', 3152017594, 121011, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(348, 'Amel Aulianisa', 3140548192, 121012, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(349, 'Amira Nindia Delphi', 3149783714, 121013, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(350, 'Arfan Hashif', 3148102842, 121014, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(351, 'Arsa Dias Pratama', 148856694, 121015, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(352, 'Arsakha Kenzie Al\'Ayubi', 3144853451, 121016, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(353, 'Asyraf Ramadhan J', 158247343, 121017, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(354, 'Athaillah Al Azzam Putrayana', 3149765523, 121018, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(355, 'Azalia Calya Griselda', 3145454842, 121019, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(356, 'Azkia Asmilla A', 134602778, 121020, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(357, 'Bayu Widiyanto', 3147587727, 121021, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(358, 'Beryl Farzana Hariyadi', 3141358105, 121022, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(359, 'Bilal Karimov', 3146523596, 121023, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(360, 'Bilqis Rachmadiani', 3149061359, 121024, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(361, 'Daffa Ibnu Hafidz', 3145146452, 121025, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(362, 'Daffa Prayoga', 3145532934, 121026, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(363, 'Dzakiyah Salwa Nabila', 3141727020, 121027, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(364, 'El Zafran Ramadhan', 3140248011, 121028, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(365, 'Eliza Putri Nurazizah', 3148011042, 121029, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(366, 'Fahlevy Ahmad Ferdiansyah', 3156395205, 121030, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(367, 'Fuad Wahab Hasbulloh', 3149315147, 121031, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(368, 'Habibi Maulana Alfarizy', 3148918179, 121032, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(369, 'Hannan Athalla Dzikri', 3144338469, 121033, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(370, 'Intan Humaira Putri', 3145031851, 121034, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(371, 'Ismawati', 3142843456, 121035, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(372, 'Kaka Adi Prasetya', 3157128703, 121036, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(373, 'Khaira Rahma Pradipta', 3145781465, 121037, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(374, 'Khairana Ratri Herningtyas', 3142234645, 121038, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(375, 'Kinanty Prameshwari', 3151582256, 121039, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(376, 'Levin Arjuna Pratama', 3158661597, 121040, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(377, 'Luthfi Zacky Zhaidan', 156702275, 121041, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(378, 'M. Rafandika Putra Adyatma', 146174950, 121042, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(379, 'Maryam Jinan Kadani', 3142451093, 121043, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(380, 'Muh Saddam Arkhan Nabawi', 3147020030, 121044, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(381, 'Muhammad Jafin Ghaisan', 3140277938, 121045, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(382, 'Muhammad Najib Mukhtar', 3140632135, 121046, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(383, 'Muhammad Yunan Zaidan', 3142670245, 121047, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(384, 'Multazam Riefan Hazmil', 3142914319, 121048, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(385, 'Nadiya Ulfatunisa', 3152307761, 121049, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(386, 'Najwa Khaira Ramdhani', 148205137, 121050, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(387, 'Nayla Putri Rizki', 3142424710, 121051, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(388, 'Pandu Bhakti Wiguna', 3142646595, 121052, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(389, 'Qisya Maulidina Queenza', 3156153378, 121053, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(390, 'Raffaza Tsaqif Al Farid', 3147880492, 121054, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(391, 'Ratifa Qidzama Assatar', 3156620484, 121055, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(392, 'Rizandra Rasikh Afkar', 3142368567, 121056, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(393, 'Salsabila Nadhifa', 3157668156, 121057, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(394, 'Shaqueel Enzo K', 3143315229, 121058, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(395, 'Tyara Alvira Andini', 143747222, 121059, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(396, 'Vicko Rizki S', 3149878793, 121060, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(397, 'Viki Wijayanto', 144646978, 121061, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(398, 'Zetta Roudotul Jannah', 3143618362, 121062, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(399, 'Zidny Adhwa Rafifa', 3146321723, 121063, 5, 1, 4, NULL, '2024-09-20 12:36:42', '2024-09-20 12:36:42'),
(400, 'Abrar Jemal Khalafani', 3133954719, 120001, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(401, 'Abyan Moresta ', 3142741632, 120002, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(402, 'Aditiya Fajar Nugraha', 3148268851, 120003, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(403, 'Afkar Nawabih Almas', 3147076920, 120004, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(404, 'Akbar Fafindra Syaputra', 3130797641, 120005, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(405, 'Akbar Nurdaffa Prasetiyo', 3130797641, 120006, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(406, 'Albizar Syawal Rays', 137549031, 120007, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(407, 'Alfatih Gigih Septiadi', 3130793224, 120008, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(408, 'Alisha Syafiya ', 3148833841, 120009, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(409, 'Alya Ananda Ramadhani', 3135219660, 120010, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(410, 'Anara Taqshush Ru\'yaaka', 3141093454, 120011, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(411, 'Annisa Fauziah ', 3137221818, 120012, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(412, 'Arjuna Wicaksono', 3131777161, 120013, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(413, 'Ashifa Turohma ', 3131773385, 120014, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(414, 'Asyifa Nur Maharani', 3130052310, 120015, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(415, 'Athaya Zalfa Afandi', 3131797112, 120016, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(416, 'Attala Hanan Annafis', 3144586067, 120017, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(417, 'Aufa Al Ghajali ', 3133459829, 120018, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(418, 'Aufa Rizal Rais Rachman', 3134669359, 120019, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(419, 'Azalea Naora Maritza', 137221875, 120020, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(420, 'Baetrice Adia Cantara Rizhu', 3137523724, 120021, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(421, 'Bilqis Ayyumna ', 139433197, 120022, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(422, 'Bunga Shaqila Haura Nugroho', 3130086006, 120023, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(423, 'Dafa Afriandi ', 136853497, 120024, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(424, 'Daffa Agung Jatmiko', 3133722291, 120025, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(425, 'Danish Pranaja Ramadhan', 3137424488, 120026, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(426, 'Egi Dimas Maulana', 3137655679, 120027, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(427, 'El Nail Zada Jamail', 3131407716, 120028, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(428, 'Elshafitria Nirmala Sari', 3131466585, 120029, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(429, 'Endra Ardhana', 139414563, 120030, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(430, 'Faris Afiq Prabaswara', 3137983131, 120031, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(431, 'Fathin Naifah Nurrahman', 3134506358, 120032, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(432, 'Fathir Ezza Pradika', 3130255506, 120033, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(433, 'Fio Andra Setiawan', 135820026, 120034, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(434, 'Ghibran Sakha Ramadhan ', 137468414, 120035, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(435, 'Hafidz Rafie Rabbani', 3131588330, 120036, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(436, 'Halimatuss\'adiah', 3130197500, 120037, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(437, 'Inara Ayudia Salvina', 3132195374, 120038, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(438, 'Inaya Zalfa Hafizhta', 3149866025, 120039, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(439, 'Jauzaa Azzahra ', 3138500889, 120040, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(440, 'Kayla Dwi Indah Lestari', 3131554708, 120041, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(441, 'Kayla Sifa Azhara', 3145307900, 120042, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(442, 'Keisha Ockta Kurniawati', 3137107574, 120043, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(443, 'Kevin Adithia Nugraha', 3130716806, 120044, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(444, 'Keyla Khanza Azzahra', 3132611613, 120045, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(445, 'Khanza Azzahra ', 143828396, 120046, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(446, 'Kinara Putri Cahaya', 3138804403, 120047, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(447, 'Kinara Zalfa Azzahra', 3134263291, 120048, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(448, 'Luthfia Zahra Kamila', 142820959, 120049, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(449, 'M. Rizki Ardiansyah', 154322381, 120050, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(450, 'M.Al Fathir ', 144971943, 120051, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(451, 'M.Anugerah Asyraf Al Hafizh', 143736791, 120052, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(452, 'M.Azrill Annindra Wijaya', 3148019296, 120053, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(453, 'M.Dzuhry Wijaya ', 3146982744, 120054, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(454, 'M.Fariz Azzam', 3147087576, 120055, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(455, 'M.Lutfhie Sakhi Zaidan', 142537034, 120056, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(456, 'M.Zakwan Alfatri', 3143334241, 120057, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(457, 'Miza Sadira Huraiyah', 139182380, 120058, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(458, 'Moch.Alvaro Imansyah', 3146090072, 120059, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(459, 'Muhamat Alif Hanif Pratama', 3130549233, 120060, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(460, 'Muhammad Azka Alfatih ', 2021010065, 120061, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(461, 'Muhammad Haikal Akbar ', 2021010034, 120062, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(462, 'Muhammad Raya Nuha Afl Fatih', 2021010072, 120063, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(463, 'Mukhammad Fairus Ramadhan', 2021010069, 120064, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(464, 'Nadhifa Anindya Sugandi', 2021010075, 120065, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(465, 'Nadhira Rizka Ermilia', 2021010076, 120066, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(466, 'Nadya Pramudita Izzati Sutadi', 2021010077, 120067, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(467, 'Najwa Syalsabila ', 2021010079, 120068, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(468, 'Narendra Damar Arimukti', 2021010080, 120069, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(469, 'Naura Ateefa Putri', 3141616430, 120070, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(470, 'Naura Hasna Anninda', 3133304741, 120071, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(471, 'Nauval Restu Pratama', 3137435570, 120072, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(472, 'Nazril Akbar Al Baqi', 3130873473, 120073, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(473, 'Nismara Fidelia Suroyo', 3135709728, 120074, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(474, 'Rafka Ady Pranata', 3135831658, 120075, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(475, 'Raihan Fairuz Saputra', 3133078199, 120076, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(476, 'Raihan Faiz Alfarisi', 135859239, 120077, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(477, 'Ramad Rafi Pasaribu', 136511789, 120078, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(478, 'Reno Putu Badi ', 146146218, 120079, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(479, 'Reyudha Cipta Lenggana', 3130689872, 120080, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(480, 'Sakha Bumi Pertama', 3147472309, 120081, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(481, 'Shafira Nurassyifa Azzahra', 3148203869, 120082, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(482, 'Tsaqief Al Ghazali ', 148789620, 120083, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(483, 'Umar Habibie Maulana', 3137073181, 120084, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(484, 'Umi Azizah Aliyah Putri ', 3135775959, 120085, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(485, 'Valerie Ivana ', 3121085009, 120086, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(486, 'Warda Tunnisa ', 143078689, 120087, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(487, 'Yudha Purbo Yuniriyanto', 3123034189, 120088, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(488, 'Zafran Arya Yusuf', 138979012, 120089, 4, 1, 5, NULL, '2024-09-20 12:37:40', '2024-09-20 12:37:40'),
(572, 'Aditama Azhar Ramadhan', 127388516, 119001, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(573, 'Aflah Arsyadani Al-Ghifari', 3125391560, 119002, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(574, 'Aidah Nur Zharifah ', 133678763, 119003, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(575, 'Aiesyavany Fajrin Asyaban ', 3123553780, 119004, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(576, 'Aira Amelia Rahayu', 3125592675, 119005, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(577, 'Aisyah Hana Humaira', 3132414554, 119006, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(578, 'Akasa Tsaqib Abimanyu', 124179929, 119007, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(579, 'Alhafidz Desilva Januar', 3137592112, 119008, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(580, 'Alifiandra Azmi Athifa Santosa', 3137547793, 119009, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(581, 'Amanda Amelliyah', 3121451066, 119010, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(582, 'Amanda Rahmahdani', 3126691999, 119011, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(583, 'Annisa Nur Fitriani', 131957734, 119012, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(584, 'Arkan Faeyza Rizky Priyadi', 127431225, 119013, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(585, 'Arkana Danendra', 124215773, 119014, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(586, 'Arrazi Rabbani Yusuf', 138074787, 119015, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(587, 'Arsyad Sofian', 126618702, 119016, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(588, 'Arung Samudera', 3131904873, 119017, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(589, 'Aufa Rizky Ramadhan', 125298171, 119018, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(590, 'Azka Diwa Kafila', 3125541695, 119019, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(591, 'Azka Hibatullah P Rahardiansyah', 124236581, 119020, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(592, 'Berlian Adhwa Salsabila', 3139487682, 119021, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(593, 'Bilqis Shidqia Mumtaz', 3133737741, 119022, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(594, 'Chloe-Edora', 3136400298, 119023, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(595, 'Daffa  Raifa Azwar ', 3122493099, 119024, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(596, 'Davina Zahwa Pamujiono', 3127789887, 119025, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(597, 'Devanesse Elang Santoso', 3132488465, 119026, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(598, 'Dicky Arvian Supriyatin', 128757027, 119027, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(599, 'Dzaki Zaidan Mufadhdhol ', 3125442061, 119028, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(600, 'Ezar Kurniawan ', 3125884596, 119029, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(601, 'Fajar Ramadhan Saputra', 124955586, 119030, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(602, 'Fathan Fahrizian Al Mahdi', 3123773393, 119031, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(603, 'Fazia Putri Purnama', 3128666354, 119032, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(604, 'Gendhis Nimas Wulandari', 3123328804, 119033, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(605, 'Geysa Luthfiah', 3132277047, 119034, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(606, 'Hafiz Rizky Ramadhan ', 3131448229, 119035, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(607, 'Hana Dzakira Irawan', 136708645, 119036, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(608, 'Ibnu Umar Pribadi', 3122852194, 119037, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(609, 'Ihwal Zared Bashae Hadiarto', 3136158588, 119038, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(610, 'Ikhsan Rezki Alfiansyah', 3139076363, 119039, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(611, 'Jauharah Masta Fairuz', 126795413, 119040, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(612, 'Jeim Anggraeawan Jimenez', 3129863180, 119041, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(613, 'Jeslyn Anggraini', 131650808, 119042, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(614, 'Jihan Shakila Rinaldi', 3127113984, 119043, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(615, 'Karunia Lidya Nur Romadhani', 3125992855, 119044, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(616, 'Kenzi Altan Prakoso', 121570828, 119045, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(617, 'Khaila Hana Khuzama', 129238353, 119046, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(618, 'Kidung Jagat Semesta', 3128746840, 119047, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(619, 'Liyana Zahira Khairunnisa', 3137782526, 119048, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(620, 'M. Afka AlFarizi', 126800900, 119049, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(621, 'M. Arfan Ramadhan', 3122084039, 119050, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(622, 'M. Azka Taufik Hidayat', 3121351323, 119051, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(623, 'Malik Ahmad Alghazi', 3125651219, 119052, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(624, 'Mario Gustav Al-Habsyi', 3125863676, 119053, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(625, 'Monita Anggraini Candra', 121425288, 119054, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(626, 'Muhamad Abizar Ramadhan', 3125054357, 119055, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(627, 'Muhammad Fairuz Ashshiddiq Y ', 3134686114, 119056, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(628, 'Muhammad Maheswara Putra S', 3131259026, 119057, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(629, 'Muhammad Ramdan Syihabudin', 3131499314, 119058, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(630, 'Mutiara Kinanta Rolin', 128544127, 119059, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(631, 'Mutiara Putri Santoso', 3127421373, 119060, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(632, 'Nadia Safa Nuria', 3133632344, 119061, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(633, 'Naila Maghfirohtunisa', 3127911346, 119062, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(634, 'Nararya Kenzie Al-Khawarizmi', 135718617, 119063, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(635, 'Narendra Andiansyah', 127984742, 119064, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(636, 'Naura Auni Nur\'andini', 3125435971, 119065, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(637, 'Naura Marwa Lutfiana', 3122178762, 119066, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(638, 'Navia Apriyani Kemal', 3136449887, 119067, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(639, 'Neisha Febri Hardiyan', 3139290187, 119068, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(640, 'Nur Rahman Al Farizie', 125143924, 119069, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(641, 'Qanita Talia Aminoto', 3123354515, 119070, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(642, 'Rafael Ariq Haidar', 122659333, 119071, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(643, 'Rafif Viyan Nashrullah', 131437179, 119072, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(644, 'Ratu Adil Priyono', 131727238, 119073, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(645, 'Ratu Salvia Sani', 3136259905, 119074, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(646, 'Rifqi Satria Alfatih', 3132412335, 119075, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(647, 'Rinanda Firlia Syaputri', 123063496, 119076, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(648, 'Rizal Angga Pratama', 3127426278, 119077, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(649, 'Rizki Habibburohman', 3121651588, 119078, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(650, 'Syahdan Adilah Ramadhan', 3129407331, 119079, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(651, 'Teguh Ariq Widiyanto', 3124630815, 119080, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(652, 'Ummu Salmah', 3127555975, 119081, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(653, 'Wifa Tsania', 3134660428, 119082, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(654, 'Zulfikar', 3133045431, 119083, 3, 1, 6, NULL, '2024-09-20 12:38:44', '2024-09-20 12:38:44'),
(698, 'Ahmad Dzaky Mumtaz', NULL, 224001, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(699, 'Andini', NULL, 224002, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(700, 'Arrumi Avika Nurjanati', NULL, 224003, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(701, 'Avisa Zavirah Putri', NULL, 224004, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(702, 'Devi Putri Priwanti', NULL, 224005, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(703, 'Devika Farzana Rosyadi', NULL, 224006, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(704, 'Dimas Rizqy Prasetyo', NULL, 224007, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(705, 'Firdaus Farel Affandi ', NULL, 224008, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(706, 'Inez Mileta Ramadhani', NULL, 224009, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(707, 'Khalisha Maylahana', NULL, 224010, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(708, 'Khansa Hanifah ', NULL, 224011, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(709, 'Mirza Ahnafussalim Ariffin', NULL, 224012, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(710, 'Muhamad Nur Dzaki Inna', NULL, 224013, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(711, 'Muhammad Kelvin Nur Akbar', NULL, 224014, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(712, 'Olien Odhelia Putri', NULL, 224015, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(713, 'Raeyhan Firyan Adiyah', NULL, 224016, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(714, 'Rakasta Javas Dewaruci', NULL, 224017, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48');
INSERT INTO `siswas` (`id`, `name`, `nisn`, `no_urut`, `tahun_masuk_id`, `category_id`, `kelas_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(715, ' Rizky Ardiansyah', NULL, 224018, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(716, 'Shafwan Naufal Aditiya', NULL, 224019, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(717, 'Soraya Larasati Jane', NULL, 224020, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(718, 'Wafa Izzun Naja', NULL, 224021, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(719, 'Zanitra Cetta Soga Pasande', NULL, 224022, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(720, 'Ahmad Nizam Atian', NULL, 224023, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(721, 'Azahra Isna Zahrotun Nissa', NULL, 224024, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(722, 'Chynthiara Cahaya Aulia Ardhana', NULL, 224025, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(723, 'Davi Ikhsan Arif', NULL, 224026, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(724, 'Dinda Ramadhani', NULL, 224027, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(725, 'Farel Pratama', NULL, 224028, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(726, 'Gina Ayuningtias', NULL, 224029, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(727, 'Indy Novita Mulyani', NULL, 224030, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(728, 'Marfel Bastian', NULL, 224031, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(729, 'Marissa Sely Kirana', NULL, 224032, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(730, 'Misya Althafunisa Miswanto', NULL, 224033, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(731, 'Mohamad Farel', NULL, 224034, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(732, 'Muhamad Fikri Haekal', NULL, 224035, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(733, 'Muhamad Rajab Tirta Almansyah', NULL, 224036, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(734, 'Muhammad Fathlul Al Rasyid', NULL, 224037, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(735, 'Muhammad Prama Putra Muslim', NULL, 224038, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(736, 'Muhammad Rizky Hariyanto', NULL, 224039, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(737, 'Muhammad Rizky Syafwan', NULL, 224040, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(738, 'Rama Izzul Khaerul Faid', NULL, 224041, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(739, 'Rasyid Alghifari Ali Siregar ', NULL, 224042, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(740, 'Siti Sani Waliyyah', NULL, 224043, 8, 2, 7, NULL, '2024-09-20 12:40:48', '2024-09-20 12:40:48'),
(741, 'Alfi Nurhasanah', NULL, 223001, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(742, 'Alvira Navisa Saputri', NULL, 223002, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(743, 'Fani Kholivia', NULL, 223003, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(744, 'Fauzan Nurhafizh Azzaky', NULL, 223004, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(745, 'Hana Humaira', NULL, 223005, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(746, 'M. Alendra Affatur Rozi', NULL, 223006, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(747, 'Mochammad Baiza Islamovich', NULL, 223007, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(748, 'Muhammad Raihaan Putra Tanjung ', NULL, 223008, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(749, 'Nadhiya Setya Khairunisa', NULL, 223009, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(750, 'Naela Elrica Devi', NULL, 223010, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(751, 'Octavino Rahadyan Putra', NULL, 223011, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(752, 'Petrick Jeames Anggreawan Jimenez', NULL, 223012, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(753, 'Rafa Khadafi Asyur Syakir', NULL, 223013, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(754, 'Raffa Aldiano Saleh', NULL, 223014, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(755, 'Rusell', NULL, 223015, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(756, 'Syahrani Juniar Putri ', NULL, 223016, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(757, 'Zulfahri', NULL, 223017, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(758, 'Leni Ernawati', NULL, 223018, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(759, 'Ahmas Faaiz', NULL, 223019, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(760, 'Aprilia Cahayani', NULL, 223020, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(761, 'Ashafira Fitra', NULL, 223021, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(762, 'Fitria Septiani', NULL, 223022, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(763, 'Gina Anggraeni', NULL, 223023, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(764, 'Habibi Arjuna Putra', NULL, 223024, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(765, 'Kayla Azhar', NULL, 223025, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(766, 'M Rizky Andrean', NULL, 223026, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(767, 'Muhammad Alvin', NULL, 223027, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(768, 'Muhammad Raffa', NULL, 223028, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(769, 'Muhammad Rahessya Ramadana', NULL, 223029, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(770, 'Muhamad Ramdani', NULL, 223030, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(771, 'Nabila Putri Nur Cahyani', NULL, 223031, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(772, 'Neysa Lacita Putri', NULL, 223032, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(773, 'Nindy Regina Putri', NULL, 223033, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(774, 'Putra Noval Muarif', NULL, 223034, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(775, 'Putri Yasmin Rania', NULL, 223035, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(776, 'Rafif Farras Sakhi', NULL, 223036, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(777, 'Rizqi Akbar Faisal', NULL, 223037, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(778, 'Satrio Adji Romadhon Giriputro', NULL, 223038, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(779, 'Nabilla Aliya Safitri', NULL, 223039, 7, 2, 8, NULL, '2024-09-20 12:41:13', '2024-09-20 12:41:13'),
(780, 'Adinda Zaskia Jasmine', NULL, 222001, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(781, 'Adnan Syahril', NULL, 222002, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(782, 'Alifa Adia Putri', NULL, 222003, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(783, 'Alifia Oktavina Al Fajri', NULL, 222004, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(784, 'Anis Jasmine Safira', NULL, 222005, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(785, 'Anisatul Latifah', NULL, 222006, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(786, 'Bima Prasetya Asthagina', NULL, 222007, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(787, 'Dinda Arrifany', NULL, 222008, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(788, 'Elona Scarlettia Artha', NULL, 222009, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(789, 'Haidar Hanan Alghifari', NULL, 222010, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(790, 'Hanifka Zahra Nada', NULL, 222011, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(791, 'Illonia Fulvia Hidayat', NULL, 222012, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(792, 'Juanda Al Hadid', NULL, 222013, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(793, 'Kamelin Maulida', NULL, 222014, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(794, 'Mohammad Tegar Apbriliansyah', NULL, 222015, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(795, 'Maria Maharani', NULL, 222016, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(796, 'Muhammad Hisyam Ramadhan', NULL, 222017, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(797, 'Nakeyza Meyka Hanifa', NULL, 222018, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(798, 'Nauf Zaky Jafier', NULL, 222019, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(799, 'Nazwa Maulida Sopandi', NULL, 222020, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(800, 'Pritha Dwi Ananta', NULL, 222021, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(801, 'Rafeyla Indah Auliana', NULL, 222022, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(802, 'Raisah Gelsi Tanisha', NULL, 222023, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(803, 'Rizki Ramadhan', NULL, 222024, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(804, 'Sazkia Ramadhani', NULL, 222025, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(805, 'Schazti Ravi Elshirassy', NULL, 222026, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(806, 'Sinta Anggun Puspitasari', NULL, 222027, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(807, 'Adzkiya Tsabita Setiawan', NULL, 222028, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(808, 'Alnestia Nurzahra', NULL, 222029, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(809, 'Arisha Rafi Setyo Abdi', NULL, 222030, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(810, 'Chandra Putra Alwono', NULL, 222031, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(811, 'Duane Isra Marlina', NULL, 222032, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(812, 'Erviana Ramadhani', NULL, 222033, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(813, 'Fahry Abdillah', NULL, 222034, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(814, 'Hanif Nur Ramadhan', NULL, 222035, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(815, 'Hemas Aruni Nayaka Nagari', NULL, 222036, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(816, 'Khaizarun Danish', NULL, 222037, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(817, 'Mirza Afira Anaqih', NULL, 222038, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(818, 'Muhamad Delvery Fadilah', NULL, 222039, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(819, 'Muhammad Iqbal', NULL, 222040, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(820, 'Muhammad Nurdiyansah Al Wahidi', NULL, 222041, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(821, 'Nayswa Dian Puspita', NULL, 222042, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(822, 'Noni Khoirunisa', NULL, 222043, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(823, 'Putri Syiila Oktavia', NULL, 222044, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(824, 'Rezky Aditya Ramadhan', NULL, 222045, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(825, 'Rizky Widiansyah', NULL, 222046, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(826, 'Rifat Ilham Yudanto', NULL, 222047, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(827, 'Rika  Anggun Lestari', NULL, 222048, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(828, 'Nabila Ardhana Priyadi', NULL, 222049, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(829, 'Shashi Reviana Putri', NULL, 222050, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(830, 'Syaqilla Irna Putri', NULL, 222051, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(831, 'Yuansa Sampurna', NULL, 222052, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(832, 'Zaki Alfian Garibaldhi', NULL, 222053, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(833, 'Afifa Putri Maulida', NULL, 222054, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(834, 'Ahmad Dimas Prasetyo', NULL, 222055, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(835, 'Alvaro Ibrahim Farissatria', NULL, 222056, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(836, 'Ananda Putri Utami', NULL, 222057, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(837, 'Asyifa Augustina', NULL, 222058, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(838, 'Ayu Julia', NULL, 222059, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(839, 'Dzikri Ardian Fachry', NULL, 222060, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(840, 'Faturrahim', NULL, 222061, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(841, 'Hikari Nufaisah Ainodina', NULL, 222062, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(842, 'Kinanti Amelia Putri', NULL, 222063, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(843, 'Kirman Ibrahim', NULL, 222064, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(844, 'Lionel Putra Sumayow', NULL, 222065, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(845, 'Muhamad Janua Dwi Azkia', NULL, 222066, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(846, 'Muhammad Fakhri Putra Wibowo', NULL, 222067, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(847, 'Muhammad Naufal Shodiq', NULL, 222068, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(848, 'Muhammad Zahrin Fayyadh', NULL, 222069, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(849, 'Nova Nabilah Iqlima', NULL, 222070, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(850, 'Noviana Nur Safa Aulia', NULL, 222071, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(851, 'Raka Farabi Alfareza', NULL, 222072, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(852, 'Rizal Alviansyah', NULL, 222073, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(853, 'Rizky Maulana', NULL, 222074, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(854, 'Rofa Rifa', NULL, 222075, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(855, 'Shaddam Dwi Putra', NULL, 222076, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(856, 'Siti Alisha Tuanaya', NULL, 222077, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(857, 'Syahnafian Zuffa Asmara', NULL, 222078, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(858, 'Syalwa Sullistia Putri', NULL, 222079, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(859, 'Zabdan Alfareza Putra Irmawan', NULL, 222080, 6, 2, 9, NULL, '2024-09-20 12:41:41', '2024-09-20 12:41:41'),
(860, 'Abdul Gofur', NULL, 324001, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(861, 'Ahmad Ilham Pratama', NULL, 324002, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(862, 'Aldo Prasetyo', NULL, 324003, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(863, 'Apri Dimas Saputra', NULL, 324004, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(864, 'Arif Setiawan', NULL, 324005, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(865, 'Bahrul Faturrahman', NULL, 324006, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(866, 'Bayu Artha Nugraha', NULL, 324007, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(867, 'Fadli Hermawan', NULL, 324008, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(868, 'Fahri Fahrurozi', NULL, 324009, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(869, 'Fahri Hermawan', NULL, 324010, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(870, 'Farel Wahyu Saputra', NULL, 324011, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(871, 'Ibnu Nul Hakim', NULL, 324012, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(872, 'Ilyas Danis Fajri', NULL, 324013, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(873, 'Intan Nuraeni', NULL, 324014, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(874, 'Irfan Budi Hendika', NULL, 324015, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(875, 'Jujun Junaedi', NULL, 324016, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(876, 'Julfan Asfar', NULL, 324017, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(877, 'Listia Damayanti', NULL, 324018, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(878, 'M. Fachry Rafi\'i', NULL, 324019, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(879, 'Mas Alam Yusuf Mudasir', NULL, 324020, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(880, 'Maulana Malik Ibrahim', NULL, 324021, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(881, 'Muhamad Nabhan Ramadhan', NULL, 324022, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(882, 'Nazwa Nur Fauziah', NULL, 324023, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(883, 'Nafidzan Ansyari Siddiq', NULL, 324024, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(884, 'Raditya Sultan', NULL, 324025, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(885, 'Raka Mahardika', NULL, 324026, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(886, 'Razan Syakir Kurniawan', NULL, 324027, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(887, 'Rezqyano Satria Emeraldi', NULL, 324028, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(888, 'Ridho Ramadhan', NULL, 324029, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(889, 'Teguh Adi Prasetyo', NULL, 324030, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(890, 'Yusuf Angga Raksa', NULL, 324031, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(891, 'Zakariya', NULL, 324032, 8, 3, 10, NULL, '2024-09-20 12:56:15', '2024-09-20 12:56:15'),
(892, 'Aas Aryan Sari ', NULL, 324033, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(893, 'Afgan Dwi Melka', NULL, 324034, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(894, 'Alwan Agustiono', NULL, 324035, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(895, 'Azzahra Nursita ', NULL, 324036, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(896, 'Defra Putro Fraizantoro', NULL, 324037, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(897, 'Ganis Pratista ', NULL, 324038, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(898, 'Hamid As-Sidiq', NULL, 324039, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(899, 'Hanina Kamil', NULL, 324040, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(900, 'Kaisa Luthfiyah Abdullah', NULL, 324041, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(901, 'Keysha Marettianis', NULL, 324042, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(902, 'Marsha Kamiliyya Putri', NULL, 324043, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(903, 'Muhammad Dafa Ramadhani', NULL, 324044, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(904, 'Muhammad Zidan Ramadhan', NULL, 324045, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(905, 'Nadiya Aura Faisal', NULL, 324046, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(906, 'Nava Risti Kairinnisa', NULL, 324047, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(907, 'Novianti Mulyana', NULL, 324048, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(908, 'Rasyid Al Hafizh P. ', NULL, 324049, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(909, 'Rifki Pratama', NULL, 324050, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(910, 'Syifa Durotul Hikmah', NULL, 324051, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(911, 'Tio Febri Pratama', NULL, 324052, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(912, 'Chandra Dzakwan Abila', NULL, 324053, 8, 3, 11, NULL, '2024-09-20 12:56:46', '2024-09-20 12:56:46'),
(913, 'Aditya Mefa Maulida', NULL, 324054, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(914, 'Ahmad Arfah Dzakwan', NULL, 324055, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(915, 'Alfin Fadilah Rizqi', NULL, 324056, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(916, 'Azka Syaida Asmani', NULL, 324057, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(917, 'Daffa Alfiansyah', NULL, 324058, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(918, 'Dedeh Pazriah', NULL, 324059, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(919, 'Fakhru Arsyad', NULL, 324060, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(920, 'Ghania Talita Ramadhani ', NULL, 324061, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(921, '⁠Hikari Hilwa', NULL, 324062, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(922, 'Kania Kynthia Hanin', NULL, 324063, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(923, 'Moh . Rafi Abdur Rasyid', NULL, 324064, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(924, 'Muhammad Alief Calle Resta Wardhana', NULL, 324065, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(925, 'Muhammad Restu Damar Safei', NULL, 324066, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(926, 'Mutia Meriyanti', NULL, 324067, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(927, 'Nashita Aryanti Dewi ', NULL, 324068, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(928, 'Nissa Khairunissa', NULL, 324069, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(929, 'Rafif Abdullah Shiddiq', NULL, 324070, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(930, 'Ridho Octan Pratama', NULL, 324071, 8, 3, 12, NULL, '2024-09-20 12:57:08', '2024-09-20 12:57:08'),
(931, 'Safira Rosidah Ahmadi', NULL, 324072, 8, 3, 21, NULL, '2024-09-20 12:57:08', '2024-12-24 23:09:45'),
(932, 'Aaron Bimo Prasetyo', NULL, 323001, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(933, 'Ahmad Davi Dinata', NULL, 323002, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(934, 'Aidil Putra Rianto', NULL, 323003, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(935, 'Akmal Rananda Syafiq', NULL, 323004, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(936, 'Arayan Febriyanto', NULL, 323005, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(937, 'Daviq Iksanur Rahmat ', NULL, 323006, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(938, 'Denas Armedio Nasution', NULL, 323007, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(939, 'Deni Akbar ', NULL, 323008, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(940, 'Devan Prayoga', NULL, 323009, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(941, 'Eki', NULL, 323010, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(942, 'Galih Fadillah', NULL, 323011, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(943, 'Galuh Magataka ', NULL, 323012, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(944, 'Hinggih Sukhafi', NULL, 323013, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(945, 'Kenndy Alpharizi ', NULL, 323014, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(946, 'Kenzhu Junior Zufar Alhafizh', NULL, 323015, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(947, 'Khoerul Fajri', NULL, 323016, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(948, 'Kristian', NULL, 323017, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(949, 'Miftahul Fariz', NULL, 323018, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(950, 'Mohamad Hafidz Fajar Azzani', NULL, 323019, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(951, 'Muhamad Jamal Ludin', NULL, 323020, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(952, 'Muhamed Sas Sidqi', NULL, 323021, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(953, 'Muhammad Hafiz Abdul Riziq', NULL, 323022, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(954, 'Muhammad Iqbal Ramadan ', NULL, 323023, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(955, 'Muhammad Muchtar As-Syifa\'i', NULL, 323024, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(956, 'Muhammad Nurul Setiawan ', NULL, 323025, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(957, 'Muhammad Rasyid Suyono', NULL, 323026, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(958, 'Qienzirha Balla Dewa ', NULL, 323027, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(959, 'Reyki Hasan Abi Fathir Al Kahfi', NULL, 323028, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(960, 'Rifqy Aditya ', NULL, 323029, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(961, 'Rio Ahmad Naufal', NULL, 323030, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(962, 'Rizal', NULL, 323031, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(963, 'Vido Indra Aditya', NULL, 323032, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(964, 'Wildan Abi Nugroho', NULL, 323033, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(965, 'Farhan Afif Putra', NULL, 323034, 7, 3, 13, NULL, '2024-09-20 12:59:12', '2024-09-20 12:59:12'),
(966, 'Amelia Putri', NULL, 323035, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(967, 'Amanda Anatasya', NULL, 323036, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(968, 'Armahedi Prasetia Mukti', NULL, 323037, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(969, 'Arrafif Syahdan Firdaus', NULL, 323038, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(970, 'Avrillia Lusida Mulyani ', NULL, 323039, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(971, 'Ayu Najla Agustyas Nita Sari', NULL, 323040, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(972, 'Diaz Alvareno ', NULL, 323041, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(973, 'Dimas Evan Adi Permana', NULL, 323042, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(974, 'Elnida Tasya Azzahra', NULL, 323043, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(975, 'Elsa Martina', NULL, 323044, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(976, 'Fadila Putri Palaon Harahap ', NULL, 323045, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(977, 'Galang Abdul Pamungkas', NULL, 323046, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(978, 'Hilal Faqih Maulana ', NULL, 323047, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(979, 'Ihsan Maulana Putra ', NULL, 323048, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(980, 'Ikhwan Ardiansyah', NULL, 323049, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(981, 'Ila Siti Nurfadila', NULL, 323050, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(982, 'Lativa Wulan Sari', NULL, 323051, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(983, 'M.Bagas Aufa Rizky', NULL, 323052, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(984, 'Maryati', NULL, 323053, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(985, 'Muhammad Nasokha Al Fahrel ', NULL, 323054, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(986, 'Muti\'ah Najibah ', NULL, 323055, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(987, 'Nabilla Aditya Azzahra ', NULL, 323056, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(988, 'Naila Salsabila', NULL, 323057, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(989, 'Nuril Mahbub  Arrizal', NULL, 323058, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(990, 'Nurlela', NULL, 323059, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(991, 'Nurlita Widia Putri ', NULL, 323060, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(992, 'Pranca Fadilah', NULL, 323061, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(993, 'Rastiana Anggita', NULL, 323062, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(994, 'Selvina Putri Destiani', NULL, 323063, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(995, 'Shafiyah Khalishah Zahra', NULL, 323064, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(996, 'Shofiyah Nur Ramadhani', NULL, 323065, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(997, 'Sinta Anggraini', NULL, 323066, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(998, 'Siti Nur Indah ', NULL, 323067, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(999, 'Siti Rodiyah', NULL, 323068, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(1000, 'Tiara Oktafiah ', NULL, 323069, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(1001, 'Virnita Arisa', NULL, 323070, 7, 3, 14, NULL, '2024-09-20 12:59:43', '2024-09-20 12:59:43'),
(1002, 'Abdul Hamid Nur Faiz', NULL, 322001, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1003, 'Arif Budi Prasetyo', NULL, 322002, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1004, 'Bayu Aji Aprilianto', NULL, 322003, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1005, 'Bimo Alridho Sandi', NULL, 322004, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1006, 'Daffa Adhi Pangestu', NULL, 322005, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1007, 'Daffa Shelo Aditiya', NULL, 322006, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1008, 'Desta Adithya Haryanto', NULL, 322007, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1009, 'Dimas Abdul Aziz', NULL, 322008, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1010, 'Fabian Selman Reiss', NULL, 322009, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1011, 'Ganni Kuwatta Illah', NULL, 322010, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1012, 'Hanung Wihadmoko', NULL, 322011, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1013, 'Hilmy Atha Zhafran Na\'Il', NULL, 322012, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1014, 'Iqshan Hanafi', NULL, 322013, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1015, 'Irwan Maulana', NULL, 322014, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1016, 'Jidan Ramdani', NULL, 322015, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1017, 'M Rizqi Ramadhani', NULL, 322016, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1018, 'Muhamad Hisham Firdaus', NULL, 322017, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1019, 'Muhamad Sidik Maulana', NULL, 322018, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1020, 'Muhammad Chikal Fadilah', NULL, 322019, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1021, 'Muhammad Hilbram Prayoga', NULL, 322020, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1022, 'Muhammad Noviardi watulingas', NULL, 322021, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1023, 'Muhammad Soleh', NULL, 322022, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1024, 'Muklas', NULL, 322023, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1025, 'Nunu Nugraha', NULL, 322024, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1026, 'Rafly Indra Prayoga', NULL, 322025, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1027, 'Rizki Ramadhan', NULL, 322026, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1028, 'Rizqi Pasyha Fadillah', NULL, 322027, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1029, 'Syafiq Fauzan Muzhaffar', NULL, 322028, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1030, 'Venus Raditya Anugrah', NULL, 322029, 6, 3, 15, NULL, '2024-09-20 13:01:02', '2024-09-20 13:01:02'),
(1031, 'Aditya Hilmansyah', NULL, 322030, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1032, 'Aldo Putra', NULL, 322031, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1033, 'Angga Abdul Hapid', NULL, 322032, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1034, 'Ari Ardhiansyah', NULL, 322033, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1035, 'Aydin lukman', NULL, 322034, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1036, 'Bayu Febriansyah', NULL, 322035, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1037, 'Bayzaqi Azizuddin', NULL, 322036, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1038, 'Dandy Hardy Maulana', NULL, 322037, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1039, 'Delvin Hafiz Himawan', NULL, 322038, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1040, 'Diemas kaka febriansyah', NULL, 322039, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1041, 'Farel Aly Oktavian', NULL, 322040, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1042, 'Fariz Rizki Rista Munat', NULL, 322041, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1043, 'Gilang Rhamadani', NULL, 322042, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1044, 'Iqbal Abdhul Hakim', NULL, 322043, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1045, 'Irwan Yusmeidi', NULL, 322044, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1046, 'Kurnia Tahta', NULL, 322045, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1047, 'M Ega Purnama', NULL, 322046, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1048, 'M. Rafli Ardiansyah', NULL, 322047, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1049, 'Mohamad Ervansyah', NULL, 322048, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1050, 'Muhammad Tri Kuswara', NULL, 322049, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1051, 'Nabil Satria Jati', NULL, 322050, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1052, 'Rafa Abyan Al Ayubi', NULL, 322051, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1053, 'Rafly Al Farizi', NULL, 322052, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1054, 'Rizkie Fitra Pratama', NULL, 322053, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1055, 'Syahrul Kurniawan Harahap', NULL, 322054, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1056, 'Wildan Fitri Pratama', NULL, 322055, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1057, 'Zulkarnaen Faris Syahfutra', NULL, 322056, 6, 3, 16, NULL, '2024-09-20 13:01:30', '2024-09-20 13:01:30'),
(1058, 'Aditia Hernanda', NULL, 322057, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1059, 'Anggia Assyifa Permana', NULL, 322058, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1060, 'Andy Firdaus Tamani', NULL, 322059, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1061, 'Annisa Nur Fadilah', NULL, 322060, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1062, 'Azahra Aidaturrah Mabel', NULL, 322061, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1063, 'Balqis Feyza Az-Zahra', NULL, 322062, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1064, 'Dani Ashari', NULL, 322063, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1065, 'Disti Amaliah', NULL, 322064, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1066, 'Eka Meisya Sigar', NULL, 322065, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1067, 'Gita Indah Cahyani', NULL, 322066, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1068, 'Intan Febriyana Rosa', NULL, 322067, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1069, 'Jamaludin', NULL, 322068, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1070, 'Muhammad Bambang Pradika', NULL, 322069, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1071, 'Muhammad Faiz Ramadhan', NULL, 322070, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1072, 'Muhammad Fauzan Al Gifary', NULL, 322071, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1073, 'Nadia Al Khalifi', NULL, 322072, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1074, 'Naila Anjali', NULL, 322073, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1075, 'Najwa Rifka Safitri', NULL, 322074, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1076, 'Najwa Slavina', NULL, 322075, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1077, 'Rahma Dewi Amalia', NULL, 322076, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1078, 'Rayyan Fikriy Mulahary', NULL, 322077, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1079, 'Rizky Setiyani', NULL, 322078, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1080, 'Ryan Janu Effendi', NULL, 322079, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1081, 'Sri Wasriyah', NULL, 322080, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1082, 'Shelby Okta Rima Saira', NULL, 322081, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1083, 'Shelma Akbari Fitriani', NULL, 322082, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1084, 'Shevilla Fisca Aulia', NULL, 322083, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1085, 'Siti Anggun Permatasari', NULL, 322084, 6, 3, 17, NULL, '2024-09-20 13:02:02', '2024-09-20 13:02:02'),
(1086, 'Anatasya Khaerul Febriyanti', NULL, 322085, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1087, 'Anggun Dini Aminarti', NULL, 322086, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1088, 'Ariana Indah Sari Khomala', NULL, 322087, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1089, 'Artika Anazwa', NULL, 322088, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1090, 'Desiana Andhika Cahyani', NULL, 322089, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1091, 'Destya Nurcahyani Safitri', NULL, 322090, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1092, 'Edelweis Octa Salsabilla', NULL, 322091, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1093, 'Fauzi Rizqi Fadilah', NULL, 322092, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1094, 'Iis Kurnia Putri', NULL, 322093, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1095, 'Leli Amelia', NULL, 322094, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1096, 'Melani Khanza Az-Zahra', NULL, 322095, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1097, 'Meylla Intan Kurnia', NULL, 322096, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1098, 'Muhammad An Nizar Al Shadid', NULL, 322097, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1099, 'Muhammad Firmansyah', NULL, 322098, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1100, 'Muhammad Nabil Hilmi', NULL, 322099, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1101, 'Nadya Nisaqilah Putri Budiman', NULL, 322100, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1102, 'Najwa Latifah', NULL, 322101, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1103, 'Nia Salsabila', NULL, 322102, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1104, 'Nining Kurniawati', NULL, 322103, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1105, 'Rimba Ramadhan', NULL, 322104, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1106, 'Rusli Aji Wibowo', NULL, 322105, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1107, 'Saif Zidan Raihansyah', NULL, 322106, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1108, 'Sekar Amelia', NULL, 322107, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1109, 'Shafira Aulia Azzahra', NULL, 322108, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1110, 'Sherly Listiana', NULL, 322109, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1111, 'Sifa Paujiah', NULL, 322110, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1112, 'Vivid Arum Sari', NULL, 322111, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1113, 'Yunia Nur Amalia', NULL, 322112, 6, 3, 18, NULL, '2024-09-20 13:02:16', '2024-09-20 13:02:16'),
(1114, 'Jacinda Marsya Sauqi', 3131781424, 122071, 6, 1, 6, NULL, '2024-09-20 13:03:48', '2024-09-20 13:03:48'),
(1115, 'Talitha Desfy Syahputri', 122897393, 122072, 6, 1, 6, NULL, '2024-09-20 13:04:38', '2024-09-20 13:04:38'),
(1116, 'Rizza Syahira', 3120424429, 122073, 6, 1, 6, NULL, '2024-09-20 13:05:15', '2024-09-20 13:05:15'),
(1117, 'Eka Aulia Putri', 3131898638, 122074, 6, 1, 6, NULL, '2024-09-20 13:05:44', '2024-09-20 13:05:44'),
(1118, 'Zeena Aqila Al Fatiin', 3137974284, 122075, 6, 1, 5, NULL, '2024-09-20 13:06:13', '2024-09-20 13:06:13'),
(1119, 'Bagaskara R', 145869682, 122076, 6, 1, 5, NULL, '2024-09-20 13:06:45', '2024-09-20 13:06:45'),
(1120, 'Diana Bilqis', 3130446997, 121064, 5, 1, 6, NULL, '2024-09-20 13:07:26', '2024-09-20 13:07:26'),
(1121, 'Syifa Nurhasanah', 3122224529, 121065, 5, 1, 6, NULL, '2024-09-20 13:09:06', '2024-09-20 13:09:06'),
(1122, 'Hudzaifa Ahmad Yassin', 3139387277, 121066, 5, 1, 6, NULL, '2024-09-20 13:09:38', '2024-09-20 13:10:02'),
(1123, 'Kalila Dhyfa Ayusmara', 135960576, 121067, 5, 1, 5, NULL, '2024-09-20 13:10:48', '2024-09-20 13:10:48'),
(1124, 'Hanifa Indira Putri', 3122296153, 120090, 4, 1, 6, NULL, '2024-09-20 13:12:23', '2024-09-20 13:12:23'),
(1125, 'Ibnu Rozzaq Al-Hafiz', 3120811435, 120091, 4, 1, 6, NULL, '2024-09-20 13:13:04', '2024-09-20 13:13:04'),
(1126, 'Sakya Reti Salya', 3135642500, 120092, 4, 1, 6, NULL, '2024-09-20 13:13:45', '2024-09-20 13:13:45'),
(1127, 'Shaqila Aulya Wijaya', 3136569941, 120093, 4, 1, 6, NULL, '2024-09-20 13:14:20', '2024-09-20 13:14:20'),
(1128, 'Ubaidillah Al kayyis', 3136569941, 120094, 4, 1, 6, NULL, '2024-09-20 13:14:53', '2024-09-20 13:14:53'),
(1129, 'Alfarizy Raffa Sakti', 3139927644, 120095, 4, 1, 6, NULL, '2024-09-20 13:15:47', '2024-09-20 13:15:47'),
(1130, 'Shafira Khumaira Muslim', 3125064432, 120096, 4, 1, 6, NULL, '2024-09-20 13:16:19', '2024-09-20 13:16:19'),
(1131, 'Hanifa Rifda Azizah', 138967021, 120097, 4, 1, 6, NULL, '2024-09-20 13:16:47', '2024-09-20 13:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_tagihan`
--

CREATE TABLE `siswa_tagihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `nominal_tagihan` int(11) NOT NULL DEFAULT 0,
  `nominal_tagihan_terbayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa_tagihan`
--

INSERT INTO `siswa_tagihan` (`id`, `siswa_id`, `tagihan_id`, `status`, `nominal_tagihan`, `nominal_tagihan_terbayar`, `created_at`, `updated_at`) VALUES
(296, 1, 3, 1, 0, 500000, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(297, 2, 3, 0, 0, 90000, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(298, 3, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(299, 4, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(300, 5, 3, 0, 0, 100000, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(301, 6, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(302, 7, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(303, 8, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(304, 9, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(305, 10, 3, 0, 0, 100000, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(306, 11, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(307, 12, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(308, 13, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(309, 14, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(310, 15, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(311, 16, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(312, 17, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(313, 18, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(314, 19, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(315, 20, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(316, 21, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(317, 22, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(318, 23, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(319, 24, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(320, 25, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(321, 26, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(322, 27, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(323, 28, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(324, 29, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(325, 30, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(326, 31, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(327, 32, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(328, 33, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(329, 34, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(330, 35, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(331, 36, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(332, 37, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(333, 38, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(334, 39, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(335, 40, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(336, 41, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(337, 42, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(338, 43, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(339, 44, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(340, 45, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(341, 46, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(342, 47, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(343, 48, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(344, 49, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(345, 50, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(346, 51, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(347, 52, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(348, 53, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(349, 54, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(350, 55, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(351, 56, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(352, 57, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(353, 58, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(354, 59, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(355, 60, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(356, 61, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(357, 62, 3, 0, 0, 0, '2024-11-24 09:39:24', '2024-11-24 09:39:24'),
(358, 741, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(359, 742, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(360, 743, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(361, 744, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(362, 745, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(363, 746, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(364, 747, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(365, 748, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(366, 749, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(367, 750, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(368, 751, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(369, 752, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(370, 753, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(371, 754, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(372, 755, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(373, 756, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(374, 757, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(375, 758, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(376, 759, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(377, 760, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(378, 761, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(379, 762, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(380, 763, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(381, 764, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(382, 765, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(383, 766, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(384, 767, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(385, 768, 4, 0, 0, 100000, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(386, 769, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(387, 770, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(388, 771, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(389, 772, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(390, 773, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(391, 774, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(392, 775, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(393, 776, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(394, 777, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(395, 778, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(396, 779, 4, 0, 0, 0, '2024-12-13 21:18:53', '2024-12-13 21:18:53'),
(397, 1, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(398, 2, 5, 0, 0, 50000, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(399, 3, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(400, 4, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(401, 5, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(402, 6, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(403, 7, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(404, 8, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(405, 9, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(406, 10, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(407, 11, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(408, 12, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(409, 13, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(410, 14, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(411, 15, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(412, 16, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(413, 17, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(414, 18, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(415, 19, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(416, 20, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(417, 21, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(418, 22, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(419, 23, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(420, 24, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(421, 25, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(422, 26, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(423, 27, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(424, 28, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(425, 29, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(426, 30, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(427, 31, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(428, 32, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(429, 33, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(430, 34, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(431, 35, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(432, 36, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(433, 37, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(434, 38, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(435, 39, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(436, 40, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(437, 41, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(438, 42, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(439, 43, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(440, 44, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(441, 45, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(442, 46, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(443, 47, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(444, 48, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(445, 49, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(446, 50, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(447, 51, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(448, 52, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(449, 53, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(450, 54, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(451, 55, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(452, 56, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(453, 57, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(454, 58, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(455, 59, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(456, 60, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(457, 61, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(458, 62, 5, 0, 0, 0, '2024-12-24 22:45:37', '2024-12-24 22:45:37'),
(459, 1, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(460, 2, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(461, 3, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(462, 4, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(463, 5, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(464, 6, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(465, 7, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(466, 8, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(467, 9, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(468, 10, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(469, 11, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(470, 12, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(471, 13, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(472, 14, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(473, 15, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(474, 16, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(475, 17, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(476, 18, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(477, 19, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(478, 20, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(479, 21, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(480, 22, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(481, 23, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(482, 24, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(483, 25, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(484, 26, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(485, 27, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(486, 28, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(487, 29, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(488, 30, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(489, 31, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(490, 32, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(491, 33, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(492, 34, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(493, 35, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(494, 36, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(495, 37, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(496, 38, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(497, 39, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(498, 40, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(499, 41, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(500, 42, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(501, 43, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(502, 44, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(503, 45, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(504, 46, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(505, 47, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(506, 48, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(507, 49, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(508, 50, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(509, 51, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(510, 52, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(511, 53, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(512, 54, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(513, 55, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(514, 56, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(515, 57, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(516, 58, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(517, 59, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(518, 60, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(519, 61, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49'),
(520, 62, 6, 0, 0, 0, '2024-12-24 22:48:49', '2024-12-24 22:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `tagihans`
--

CREATE TABLE `tagihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nominal` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihans`
--

INSERT INTO `tagihans` (`id`, `name`, `nominal`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Uang Bangunan', 500000, 1, NULL, '2024-11-24 09:39:17', '2024-11-24 09:39:17'),
(4, 'SPP SMP', 200000, 2, NULL, '2024-12-13 21:18:25', '2024-12-13 21:18:25'),
(5, 'Hamba Allah', 300000, 1, NULL, '2024-12-24 22:45:20', '2024-12-24 22:45:20'),
(6, 'prabowo', 50000, 1, NULL, '2024-12-24 22:47:58', '2024-12-24 22:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_masuks`
--

CREATE TABLE `tahun_masuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahun_masuks`
--

INSERT INTO `tahun_masuks` (`id`, `tahun`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2017/2018', '2024-09-20 14:28:22', '2024-08-21 02:38:34', '2024-09-20 14:28:22'),
(2, '2018/2019', NULL, '2024-08-21 02:38:49', '2024-08-21 02:40:09'),
(3, '2019/2020', NULL, '2024-08-21 02:39:00', '2024-08-21 02:40:25'),
(4, '2020/2021', NULL, '2024-08-21 02:40:49', '2024-08-21 02:40:49'),
(5, '2021/2022', NULL, '2024-08-21 02:41:02', '2024-08-21 02:41:02'),
(6, '2022/2023', NULL, '2024-08-21 02:41:15', '2024-08-21 02:41:15'),
(7, '2023/2024', NULL, '2024-08-21 02:41:38', '2024-08-21 02:41:38'),
(8, '2024/2025', NULL, '2024-09-20 10:28:19', '2024-09-20 10:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rifqi Munawar', 'rifqi', 1, 'rifqi@gmail.com', '2024-08-19 11:07:48', '$2y$12$Tn8t58aPVsuxoylVKlOkT.EzVUVN97Xvb6mOp2Jd37Z4cE9Haz9Iq', '', '2024-08-19 11:07:48', '2024-08-19 11:07:48'),
(7, 'user', 'user', 2, 'user@gmail.com', NULL, '$2y$12$tfDFYq22.x1rLaO.W0Itl.uMlOWwOUczDkkyTD9U/LW9JoRcGL1uu', NULL, '2024-08-27 16:30:29', '2024-08-27 16:30:29'),
(8, 'admin', 'admin', 1, 'admin@gmail.com', NULL, '$2y$12$rWFVZ4xf9a0cxmkibT3wxuk1/TbZF3T69ohzX5Pk7B.CV0ApEjP3W', NULL, '2024-08-27 16:30:53', '2024-08-27 16:30:53'),
(9, 'Agung Nugraha', 'agung', 1, 'agung@gmail.com', NULL, '$2y$12$cyLCIwhI2VShUqxrOoZ7CezSkwkATdyHNBfktS33R36HPeFVYt22.', NULL, '2024-12-11 14:38:17', '2024-12-11 14:38:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswas_kelas_id_foreign` (`kelas_id`),
  ADD KEY `siswas_category_id_foreign` (`category_id`),
  ADD KEY `siswas_tahun_masuk_id_foreign` (`tahun_masuk_id`);

--
-- Indexes for table `siswa_tagihan`
--
ALTER TABLE `siswa_tagihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_tagihan_siswa_id_index` (`siswa_id`),
  ADD KEY `siswa_tagihan_tagihan_id_index` (`tagihan_id`);

--
-- Indexes for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagihans_category_id_foreign` (`category_id`);

--
-- Indexes for table `tahun_masuks`
--
ALTER TABLE `tahun_masuks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1132;

--
-- AUTO_INCREMENT for table `siswa_tagihan`
--
ALTER TABLE `siswa_tagihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tahun_masuks`
--
ALTER TABLE `tahun_masuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswas_tahun_masuk_id_foreign` FOREIGN KEY (`tahun_masuk_id`) REFERENCES `tahun_masuks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswa_tagihan`
--
ALTER TABLE `siswa_tagihan`
  ADD CONSTRAINT `siswa_tagihan_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswa_tagihan_tagihan_id_foreign` FOREIGN KEY (`tagihan_id`) REFERENCES `tagihans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD CONSTRAINT `tagihans_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
