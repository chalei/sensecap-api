-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2024 at 03:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tracking_l`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_09_044210_create_tbl_device_table', 1),
(6, '2024_05_09_044253_create_tbl_location_table', 1),
(8, '2024_05_30_160941_create_tbl_vehicle_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `tokenable_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(16, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '7487f54a98f7400ce897c8c057d98284a6179a475bf464b6d231857c51a0af5b', '{\"expires_at\":\"2024-05-17T17:02:27.482484Z\"}', '2024-05-17 15:03:54', NULL, '2024-05-17 15:02:27', '2024-05-17 15:03:54'),
(17, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '959612bb3438b01a7d32d28de6bd2566db8e0b7ef73aea5b30a2aa74c81a4fd2', '{\"expires_at\":\"2024-05-19T08:57:42.468541Z\"}', '2024-05-19 06:58:05', NULL, '2024-05-19 06:57:42', '2024-05-19 06:58:05'),
(18, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', 'd1f4b350f4290866f991029eccbc3777e45fa3dfae7726ec0ac3a543ab01ab66', '{\"expires_at\":\"2024-05-20T16:19:29.410938Z\"}', '2024-05-20 14:21:35', NULL, '2024-05-20 14:19:29', '2024-05-20 14:21:35'),
(19, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '8ae647ea2bae449171bdadd59a2170e4cc78fc54489d6ccfc0f8df0cc8ed14fe', '{\"expires_at\":\"2024-05-20T16:23:39.691619Z\"}', '2024-05-20 14:23:40', NULL, '2024-05-20 14:23:39', '2024-05-20 14:23:40'),
(20, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '21d90d793bb571117cd4f49943c411eb51215c47dde128d60d8aed6e4bbd177e', '{\"expires_at\":\"2024-05-25T04:57:57.240335Z\"}', NULL, NULL, '2024-05-25 02:57:57', '2024-05-25 02:57:57'),
(21, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '3179e0ba9b2b876ee219d9944077428ab4ea72ded4b0c685c4020d95818689a2', '{\"expires_at\":\"2024-05-25T04:58:02.418362Z\"}', '2024-05-25 04:36:29', NULL, '2024-05-25 02:58:02', '2024-05-25 04:36:29'),
(22, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '84094f86cbdff90f33a1eb830315f0791c581ab3feaa80c6f5022701bd055dac', '{\"expires_at\":\"2024-05-25T11:22:09.828057Z\"}', '2024-05-25 09:44:43', NULL, '2024-05-25 09:22:09', '2024-05-25 09:44:43'),
(23, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '800fc10892d5779d63f233c3271923bb0de6b0d512ab8654a4a38e213818c503', '{\"expires_at\":\"2024-05-25T13:31:43.421018Z\"}', '2024-05-25 11:31:44', NULL, '2024-05-25 11:31:43', '2024-05-25 11:31:44'),
(24, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '96f0a25ca33e03922f008853a54f653cff0f5cca9af6022f712d09cd09ab7e2f', '{\"expires_at\":\"2024-05-26T10:59:42.883851Z\"}', '2024-05-26 08:59:43', NULL, '2024-05-26 08:59:42', '2024-05-26 08:59:43'),
(25, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '20632b48855e84c7e71341fa4b05e7d139beb4164c003eb20ec3e4518354928f', '{\"expires_at\":\"2024-05-30T13:31:59.566047Z\"}', '2024-05-30 11:59:05', NULL, '2024-05-30 11:31:59', '2024-05-30 11:59:05'),
(26, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '6463cc080a8de785d2494f407d118f7c832d3560073029f923b4d6ce7e643c70', '{\"expires_at\":\"2024-05-30T13:39:34.829998Z\"}', '2024-05-30 11:55:04', NULL, '2024-05-30 11:39:34', '2024-05-30 11:55:04'),
(27, 'App\\Models\\User', 'c77f157e-437e-4b41-a347-7581ff453233', 'MyApp', '16e7c121af9e00bea5d2619a053cacb576ff4bed7c4f5d9a182ed0a8aeb8d2f9', '{\"expires_at\":\"2024-05-30T15:43:56.228756Z\"}', '2024-05-30 13:43:56', NULL, '2024-05-30 13:43:56', '2024-05-30 13:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device`
--

CREATE TABLE `tbl_device` (
  `device_uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_status` enum('Online','Offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `node_eui` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_device`
--

INSERT INTO `tbl_device` (`device_uuid`, `device_name`, `online_status`, `node_eui`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('9c06aff9-0e55-4950-994c-5fc8eec9f222', 'Tracker T1000-A', 'Offline', '2CF7F1C0530003E4', 'Admin', 'Admin', '2024-05-12 14:49:20', '2024-05-12 14:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `node_eui` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_tm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `longitude`, `latitude`, `node_eui`, `created_tm`, `created_at`) VALUES
(1, '106.596504', '-6.186363', '2CF7F1C0530003E4', '2024-05-05 01:24:40', '2024-05-13 21:11:06'),
(2, '106.6526781', '-6.255674', '2CF7F1F054300076', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(3, '106.7555344', '-6.22972', '2CF7F1F054300077', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(4, '106.8421254', '-6.1849693', '2CF7F1F054300078', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(5, '106.9516524', '-6.1523892', '2CF7F1F054300079', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(6, '107.198592', '-6.344213', '2CF7F1F054300080', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(7, '107.4715493', '-6.44871', '2CF7F1F054300081', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(8, '107.5596118', '-6.9268092', '2CF7F1F054300082', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(9, '106.7519196', '-6.7138301', '2CF7F1F054300083', '2024-05-30 09:49:54', '2024-05-30 16:49:54'),
(10, '106.6867892', '-6.3477536', '2CF7F1F054300084', '2024-05-30 09:49:54', '2024-05-30 16:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle`
--

CREATE TABLE `tbl_vehicle` (
  `vehicle_uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `node_eui` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_plate` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stnk_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vehicle`
--

INSERT INTO `tbl_vehicle` (`vehicle_uuid`, `node_eui`, `license_plate`, `owner_name`, `stnk_date`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
('abc-abc-123', '2CF7F1C0530003E4', 'A 5512 BYQ', 'Dede Rohmat', '2021-10-09', '2024-05-30 09:20:00', 'Admin', 'Admin', '2024-05-30 09:20:00'),
('bde-bde-123', '2CF7F1F054300076', 'B 1145 ZA', 'Freddy Budiman', '2023-11-09', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('bnm-bnm-123', '2CF7F1F054300084', 'B 5677 MN', 'Koesnadi', '2022-11-21', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('fge-fge-123', '2CF7F1F054300077', 'B 6678 QBA', 'Alonso', '2022-02-11', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('frt-frt-123', '2CF7F1F054300082', 'B 4555 RQQ', 'Joko Sudirso', '2023-07-01', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('ghi-ghi-123', '2CF7F1F054300079', 'L 555 XUS', 'Che Le', '2024-01-11', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('lhg-lhg-123', '2CF7F1F054300080', 'KT 1433 RW', 'Martin Joe', '2022-05-30', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('sdf-sdf-123', '2CF7F1F054300081', 'R 6565 SQ', 'Kasdi', '2021-11-30', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('wer-wer-123', '2CF7F1F054300078', 'A 44 Q', 'Alex Firli', '2020-06-15', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25'),
('wty-wty-123', '2CF7F1F054300083', 'B 9888 RT', 'Renita Kusuma', '2021-02-02', '2024-05-30 09:32:25', 'Admin', 'Admin', '2024-05-30 09:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('SuperAdmin','Admin','User') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
('c77f157e-437e-4b41-a347-7581ff453233', 'Admin', 'admin@admin.id', NULL, '$2y$12$AySa1PO.cPX.MPzlJSWLtOQQ4/V.xzViG1JOOqZxPO2xN9w/tgKui', NULL, 'Admin', '2024-05-09 10:10:17', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbl_device`
--
ALTER TABLE `tbl_device`
  ADD PRIMARY KEY (`device_uuid`),
  ADD UNIQUE KEY `tbl_device_node_eui_unique` (`node_eui`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
  ADD PRIMARY KEY (`vehicle_uuid`),
  ADD UNIQUE KEY `tbl_vehicle_node_eui_unique` (`node_eui`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
