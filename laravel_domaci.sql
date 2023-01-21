-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 21, 2023 at 02:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_domaci`
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
-- Table structure for table `korisniks`
--

CREATE TABLE `korisniks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobilni_telefon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisniks`
--

INSERT INTO `korisniks` (`id`, `ime`, `prezime`, `email`, `mobilni_telefon`, `adresa`, `created_at`, `updated_at`) VALUES
(1, 'Pera', 'Peric', 'pera@gmail.com', '0123445', 'Bla Bla 4', NULL, NULL),
(2, 'Marko', 'Markovic', 'marko@gmail.com', '3539553674', 'jove Ilica 4', NULL, NULL),
(3, 'Ana', 'Anic', 'ana@gmail.com', '34647568678', 'Jove Ilica 8', NULL, NULL),
(4, 'Jovan', 'Jovanovic', 'jovan@gmail.com', '3464575658568', 'Bulervar Oslobodjenja 6', NULL, NULL),
(5, 'Zika', 'Zikic', 'zika@gmail.com', '45775686696', 'Bulevar Oslobdjenja 56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `korpas`
--

CREATE TABLE `korpas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kolicina` int(11) NOT NULL,
  `cena_ukupno` double NOT NULL,
  `korisnikId` bigint(20) UNSIGNED NOT NULL,
  `parfemId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korpas`
--

INSERT INTO `korpas` (`id`, `kolicina`, `cena_ukupno`, `korisnikId`, `parfemId`, `created_at`, `updated_at`) VALUES
(1, 1, 44.7, 3, 5, NULL, NULL),
(2, 1, 66, 4, 1, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_20_111749_create_parfems_table', 1),
(6, '2023_01_20_111816_create_korisniks_table', 1),
(7, '2023_01_20_111833_create_korpas_table', 1),
(8, '2023_01_20_114640_novi_naziv_telefon', 2),
(9, '2023_01_20_120038_boca_nullable', 3);

-- --------------------------------------------------------

--
-- Table structure for table `parfems`
--

CREATE TABLE `parfems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cena` double NOT NULL,
  `boca` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parfems`
--

INSERT INTO `parfems` (`id`, `naziv`, `cena`, `boca`, `created_at`, `updated_at`) VALUES
(1, 'ferre', 99, 11, NULL, '2023-01-20 22:15:27'),
(2, 'chanel no 5', 67.9, 25, NULL, NULL),
(3, 'trusardi', 88, 12, NULL, NULL),
(4, 'tom tailor', 45.6, 25, NULL, NULL),
(5, 'benetton', 33.3, 20, NULL, NULL);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Login_Token', '9d423b65bdba2d4b9391a5c2bbe8fe05ed6e76d5825852b77bd315fc01a3fee7', '[\"*\"]', NULL, NULL, '2023-01-20 16:17:35', '2023-01-20 16:17:35'),
(3, 'App\\Models\\User', 3, 'Login_Token', 'cf7aed46bbc6894aa93a9d26b1fc8c17bd978d32d278193a0597d519a02a5aa4', '[\"*\"]', NULL, NULL, '2023-01-20 21:33:58', '2023-01-20 21:33:58'),
(4, 'App\\Models\\User', 1, 'Login_Token', '5df18ba14ac6b2885315372bdc7671a73550435a4e569f0c362ed96f197b9daf', '[\"*\"]', NULL, NULL, '2023-01-20 21:51:39', '2023-01-20 21:51:39'),
(6, 'App\\Models\\User', 6, 'Login_Token', 'fedf773d1620c87c5ed8ad48926f67ede72d852a672469f16fecfab5cfe8dbae', '[\"*\"]', NULL, NULL, '2023-01-20 22:07:31', '2023-01-20 22:07:31'),
(7, 'App\\Models\\User', 6, 'Login_Token', 'bbea35fd34f5df044fd4a5ff2caedc171ce777e3e0faf457cbbb4346b4e599b6', '[\"*\"]', NULL, NULL, '2023-01-20 22:09:21', '2023-01-20 22:09:21'),
(8, 'App\\Models\\User', 6, 'Login_Token', '99889d9688743e4f20f4492e0bc5df639d20b6fc9d07147b0dabdd7bc5528fc3', '[\"*\"]', NULL, NULL, '2023-01-20 22:12:29', '2023-01-20 22:12:29'),
(9, 'App\\Models\\User', 6, 'Login_Token', '22ba84753f42dd796d29bb5b7c2abcf61764d431499570b8d69271a15deb8122', '[\"*\"]', '2023-01-20 22:17:21', NULL, '2023-01-20 22:14:42', '2023-01-20 22:17:21'),
(10, 'App\\Models\\User', 6, 'Login_Token', 'fba6e0aa74ed3d0ec63e4acaf509edd44ab80446dfba37638ccd6c64998ad8b7', '[\"*\"]', NULL, NULL, '2023-01-20 22:19:35', '2023-01-20 22:19:35'),
(11, 'App\\Models\\User', 3, 'Login_Token', '4aa071b46c6745a1b1a88ec2a9ee170c95584916a41782c283f1fdb2bce3f779', '[\"*\"]', '2023-01-20 22:21:44', NULL, '2023-01-20 22:21:13', '2023-01-20 22:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jana', 'jana@gmail.com', NULL, '$2y$10$fUvtP/jXjBTW4yHjON8X4Ox4dw4Z9k1mm3cvsp8asZ3huOLfofN4u', NULL, '2023-01-20 16:08:41', '2023-01-20 16:08:41'),
(2, 'ana', 'aana@gmail.com', NULL, '$2y$10$8XvX1eS18QbA.GlSGkmBjuw75vi3MSmFHcOhfTqyrPSeEGEXKDqIS', NULL, '2023-01-20 16:31:32', '2023-01-20 16:31:32'),
(3, 'marko', 'marko@gmail.com', NULL, '$2y$10$xZZnKLq9fp6O5bqcxidHF.P.PUnxd1xeZ4nlrtu1eU9rML/tF/skm', NULL, '2023-01-20 21:28:09', '2023-01-20 21:28:09'),
(4, 'petar', 'petar@gmail.com', NULL, '$2y$10$0Fbk4Xdy0ay9EqXiYtbJWuMs1pLejwSOv.PqS8EOsovioXJWriDwG', NULL, '2023-01-20 21:56:33', '2023-01-20 21:56:33'),
(5, 'jovan', 'jovan@gmail.com', NULL, '$2y$10$uXfawu3uBEiLI/EvKU.z9uBU3FDtqezdgMWmRFWhPxpIiypfZdYza', NULL, '2023-01-20 22:03:43', '2023-01-20 22:03:43'),
(6, 'pera', 'pera@gmail.com', NULL, '$2y$10$hJEu2yGZh/O/nYvX6.XsNOUD6.xLaf0Y7o7nVGK/2FCch5aNdUmi.', NULL, '2023-01-20 22:05:47', '2023-01-20 22:05:47');

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
-- Indexes for table `korisniks`
--
ALTER TABLE `korisniks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korpas`
--
ALTER TABLE `korpas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korpas_korisnikid_foreign` (`korisnikId`),
  ADD KEY `korpas_parfemid_foreign` (`parfemId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parfems`
--
ALTER TABLE `parfems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `korisniks`
--
ALTER TABLE `korisniks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `korpas`
--
ALTER TABLE `korpas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `parfems`
--
ALTER TABLE `parfems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korpas`
--
ALTER TABLE `korpas`
  ADD CONSTRAINT `korpas_korisnikid_foreign` FOREIGN KEY (`korisnikId`) REFERENCES `korisniks` (`id`),
  ADD CONSTRAINT `korpas_parfemid_foreign` FOREIGN KEY (`parfemId`) REFERENCES `parfems` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
