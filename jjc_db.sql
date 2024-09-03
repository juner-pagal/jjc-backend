-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 11:33 AM
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
-- Database: `jjc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Our story', 'Established in 2014, JJC Digital Agency quickly rose to prominence in the paid social industry with the advent of Facebook’s advertising platform. As one of Meta’s pioneering Marketing Partners, we have remained at the forefront of innovation. Inc. in 2019, our continued success is propelled by our flawless planning and execution, enabling us to expand our clients’ reach and drive performance efficiently.', 'https://junerpagal.com/images/images/about-our-story.png', NULL, NULL),
(2, 'Our Expertise', 'Our deep-rooted expertise thrives within the ever-changing digital ecosystem, where we masterfully navigate a diverse array of platforms, each offering unique opportunities to connect and engage with audiences. From the expansive reach of Facebook and Instagram to the viral momentum of TikTok and Snapchat, we strategically leverage the visual allure of Pinterest, the community-centric focus of NextDoor, and the robust discourse on Reddit. Our proficiency extends to X, where real-time conversations shape public sentiment, and MNTN (CTV), where connected TV revolutionizes the viewing experience.', 'https://junerpagal.com/images/images/about-expertise.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('726811a18a7e54468e08b8898d000808', 'i:1;', 1725090175),
('726811a18a7e54468e08b8898d000808:timer', 'i:1725090175;', 1725090175);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `mediaspend` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `subscription` varchar(255) NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `jobtitle`, `email`, `website`, `mediaspend`, `message`, `subscription`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Juner Pagal', 'Programmer', 'juner.pagal@gmail.com', 'https://www.company.com', '$50,000 - $100,000', 'I would like to inquire the your service regarding Influencer Marketing strategy.', 'true', '29-08-2024', '07:07:04pm', NULL, NULL),
(2, 'Juner M. Pagal', 'Front-end Developer', 'juner.pagal@gmail.com', 'https://www.junerpagal.com', '$100,000 - $250,000', 'I would like to schedule for a meeting regarding your ...', 'true', '30-08-2024', '07:33:43pm', NULL, NULL),
(3, 'Juner Pagal', 'Programmer', 'juner.pagal@gmail.com', 'https://www.junerpagal.com', '$100,000 - $250,000', 'sdfsdf', 'true', '31-08-2024', '04:32:46pm', NULL, NULL),
(4, 'Juner Pagal', 'Web Developer', 'juner.pagal@gmail.com', 'http://junerpagal.com', '$10,000 - $50,000', 'ghfhgvjhk', 'false', '01-09-2024', '08:36:29pm', NULL, NULL),
(5, 'Ednalyn Sapin', 'Programmer', 'ednalyn@company.com', 'http://www.website.com', '<$10,000', 'Sample Message from Ednalyn', 'true', '02-09-2024', '06:14:10pm', NULL, NULL),
(6, 'sdfsdf', 'sdf', 'ednalyn@company.com', 'http://www.website.com', 'Please Select', 'sdf', 'true', '02-09-2024', '08:54:36pm', NULL, NULL);

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
-- Table structure for table `fueling_brands`
--

CREATE TABLE `fueling_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fueling_brands`
--

INSERT INTO `fueling_brands` (`id`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Powered by Experts', 'JJC Digital Agency brings over two decades of unparalleled industry experience, a team of certified paid media experts, and deeply rooted platform partnerships with major and upcoming digital channels in the market to every partnership. Leveraging our exp', NULL, NULL),
(2, 'Accelerated by Technology', 'JJC Digital Agency leverages its proprietary technology to seamlessly consolidate data from any source and apply AI creative element tagging all within a unified platform. Combining holistic insights from multiple channels, including platform, offline and', NULL, NULL),
(3, 'Optimized by Data', 'Leveraging our expertise in performance marketing, data analysis, and robust platform partnerships, we streamline the analysis of your data to unveil crucial trends, identify inefficiencies, and reveal scalable opportunities. Grounded in actionable insigh', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_23_151326_create_oauth_auth_codes_table', 1),
(5, '2024_08_23_151327_create_oauth_access_tokens_table', 1),
(6, '2024_08_23_151328_create_oauth_refresh_tokens_table', 1),
(7, '2024_08_23_151329_create_oauth_clients_table', 1),
(8, '2024_08_23_151330_create_oauth_personal_access_clients_table', 1),
(9, '2024_08_26_043410_add_two_factor_columns_to_users_table', 1),
(10, '2024_08_26_043458_create_personal_access_tokens_table', 1),
(11, '2024_08_26_134255_create_visitors_table', 2),
(12, '2024_08_27_040804_create_contacts_table', 3),
(13, '2024_08_27_121045_create_contacts_table', 4),
(14, '2024_08_27_150209_create_contacts_table', 5),
(15, '2024_08_27_175410_create_site_infos_table', 6),
(16, '2024_08_28_043643_create_abouts_table', 7),
(17, '2024_08_28_105805_create_values_table', 8),
(18, '2024_08_28_125739_create_fueling_brands_table', 9),
(19, '2024_08_29_112259_create_what_we_dos_table', 10),
(20, '2024_08_29_122019_create_team_members_table', 11),
(21, '2024_08_30_121030_create_services_table', 12),
(22, '2024_08_30_121944_create_sub_services_table', 13),
(23, '2024_08_30_143304_create_sub_services_details_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'MTvuyuRlhi913PcUY3icqr66zP5ydZ20NQA03iwd', NULL, 'http://localhost', 1, 0, 0, NULL, NULL),
(2, NULL, 'Laravel Password Grant Client', 'SvHD3CivWUuSoSYx5mUgZuzZHwO9SNE3KazPnfaE', 'users', 'http://localhost', 0, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 7, 'app', 'MTvuyuRlhi913PcUY3icqr66zP5ydZ20NQA03iwd', '[\"*\"]', NULL, NULL, '2024-08-30 21:52:07', '2024-08-30 21:52:07'),
(2, 'App\\Models\\User', 0, 'app', 'SvHD3CivWUuSoSYx5mUgZuzZHwO9SNE3KazPnfaE', NULL, NULL, NULL, NULL, NULL),
(3, 'App\\Models\\User', 1, 'app', '3464c72613c060b5bf63c6d2d1e441791787ff94044707a53b69777f89586f45', '[\"*\"]', NULL, NULL, '2024-08-31 00:26:31', '2024-08-31 00:26:31'),
(4, 'App\\Models\\User', 1, 'app', '4c330fe7cae33fba632cb76d5463cdcfdf84befed658f6965c2cb477aa7fa337', '[\"*\"]', NULL, NULL, '2024-08-31 00:27:25', '2024-08-31 00:27:25'),
(5, 'App\\Models\\User', 1, 'app', '16ecd67e18095482595ccd50b524a956ddf18ce532e6d6cadfef83815458b7f2', '[\"*\"]', NULL, NULL, '2024-08-31 00:37:24', '2024-08-31 00:37:24'),
(6, 'App\\Models\\User', 1, 'app', 'db2c77a861d47a6e72629131f5ad10189777321ec526864f9a01ac17fadbf385', '[\"*\"]', NULL, NULL, '2024-08-31 00:37:49', '2024-08-31 00:37:49'),
(7, 'App\\Models\\User', 1, 'app', 'ef37bd2e33fddd3cd5f9a344ed8e6d4f83e67a5300d2900c317d951aad9e154d', '[\"*\"]', NULL, NULL, '2024-08-31 00:39:27', '2024-08-31 00:39:27'),
(8, 'App\\Models\\User', 1, 'app', '7f3b0787077238e224191dfcf24fbe0e017ef99a8200e1638de2e169c2d5979b', '[\"*\"]', NULL, NULL, '2024-08-31 00:45:34', '2024-08-31 00:45:34'),
(9, 'App\\Models\\User', 1, 'app', 'fd6cb9f3ae1835ddc1a74bc2e4df404b6256994018219c83cf3f970d5d8bebf9', '[\"*\"]', NULL, NULL, '2024-08-31 00:48:33', '2024-08-31 00:48:33'),
(10, 'App\\Models\\User', 1, 'app', '8cef590df1e5de002d78d8836b304823cd4d3adad13c1f11d5beded197523411', '[\"*\"]', NULL, NULL, '2024-08-31 01:01:06', '2024-08-31 01:01:06'),
(11, 'App\\Models\\User', 1, 'app', '3e9b1b79871c738c3ccf5fa875037d147b3c60a2fb32a5a0fd31b8e6043c0c2f', '[\"*\"]', NULL, NULL, '2024-08-31 01:09:56', '2024-08-31 01:09:56'),
(12, 'App\\Models\\User', 1, 'app', 'b4f24d4fe8336ce2e6ac7edac854a964ba4bd6c9aa3f2ee4f9c48a94f2aab258', '[\"*\"]', NULL, NULL, '2024-08-31 01:48:49', '2024-08-31 01:48:49'),
(13, 'App\\Models\\User', 1, 'app', '589386798fee78fa5e8872e7214e3efa42137417fd2be6748e879c090719f551', '[\"*\"]', NULL, NULL, '2024-08-31 01:51:59', '2024-08-31 01:51:59'),
(14, 'App\\Models\\User', 1, 'app', 'd7c5723384823b26e282afca54019986413524fe2e56eec97e8109522fa536ad', '[\"*\"]', NULL, NULL, '2024-08-31 01:53:35', '2024-08-31 01:53:35'),
(15, 'App\\Models\\User', 1, 'app', '089f95006ff113443030fe7c71d421b4cc22c882b56e1f6b316c3a1114ec5e48', '[\"*\"]', NULL, NULL, '2024-08-31 02:11:41', '2024-08-31 02:11:41'),
(16, 'App\\Models\\User', 1, 'app', 'b50a69b5c1050e12fe57080264c4c1b6722c954ddefd8ecf15b1f3fe307ccd81', '[\"*\"]', NULL, NULL, '2024-08-31 02:12:53', '2024-08-31 02:12:53'),
(17, 'App\\Models\\User', 1, 'app', 'e347548e1d4ab9f95dfe09997446ff04da6e8f66e6d3f3670a3ba2eb1f1b9a21', '[\"*\"]', NULL, NULL, '2024-08-31 02:36:53', '2024-08-31 02:36:53'),
(18, 'App\\Models\\User', 1, 'app', 'ee7d0e65e486145a2cd9c3d3d160bc4923099784f158af89fc0d2b6fdcc61366', '[\"*\"]', NULL, NULL, '2024-08-31 02:40:46', '2024-08-31 02:40:46'),
(19, 'App\\Models\\User', 1, 'app', 'a468248c3579e93a2ef94e6a6308bc6867ed925a60fee48c913dfb778835b8d4', '[\"*\"]', NULL, NULL, '2024-08-31 03:49:11', '2024-08-31 03:49:11'),
(20, 'App\\Models\\User', 1, 'app', '4f60301944cdf55a3f087294708f5197e84077ae4bde8a4d20cd12c9fc767ee9', '[\"*\"]', NULL, NULL, '2024-08-31 03:54:48', '2024-08-31 03:54:48'),
(21, 'App\\Models\\User', 1, 'app', '2ba97fd709ca1a5a63ded00f3d1b93e5a389c1eefac87afb83e1bc7a735bd5ac', '[\"*\"]', NULL, NULL, '2024-08-31 03:56:47', '2024-08-31 03:56:47'),
(22, 'App\\Models\\User', 1, 'app', '7fc04ddc0f45fcdba7935b57e245ff0d9ea3b60d7599d8f657022f582b1bdf42', '[\"*\"]', NULL, NULL, '2024-08-31 04:13:40', '2024-08-31 04:13:40'),
(23, 'App\\Models\\User', 1, 'app', 'e11cedaecb96975fc15812fb3d6bc3d12c2d6916ef82c7694ea3c8e7ca2c19f1', '[\"*\"]', NULL, NULL, '2024-09-01 04:54:19', '2024-09-01 04:54:19'),
(24, 'App\\Models\\User', 1, 'app', 'dbd307c779344e90e1192f12ec3b654102b4d29fb1b619c8008d37e30eb5334c', '[\"*\"]', NULL, NULL, '2024-09-01 05:34:49', '2024-09-01 05:34:49'),
(25, 'App\\Models\\User', 1, 'app', 'fe7c0bfbcba1dbd442c465e0b683a84dbe267241199beee961706376e42de521', '[\"*\"]', NULL, NULL, '2024-09-01 05:46:53', '2024-09-01 05:46:53'),
(26, 'App\\Models\\User', 1, 'app', 'a9a43ebcd5205601124ce41a99192927b22ac8117e42460bfefbfeb9df507ce2', '[\"*\"]', NULL, NULL, '2024-09-01 05:58:05', '2024-09-01 05:58:05'),
(27, 'App\\Models\\User', 1, 'app', '91b183f9abdd9231f2939f81401e2f11429eea01df67260e8a47ac3bbeb46dee', '[\"*\"]', NULL, NULL, '2024-09-01 06:28:57', '2024-09-01 06:28:57'),
(28, 'App\\Models\\User', 1, 'app', '7596505b1c05e0e009889b39695bd3ebd6c7522329f8b9f87537ce4febeef64a', '[\"*\"]', NULL, NULL, '2024-09-01 06:41:18', '2024-09-01 06:41:18'),
(29, 'App\\Models\\User', 1, 'app', '4b4c01dc61e79ef3c6ea8cbfe154b84a5dea3b59a108b33365046f4a20b12f46', '[\"*\"]', NULL, NULL, '2024-09-01 06:59:59', '2024-09-01 06:59:59'),
(30, 'App\\Models\\User', 1, 'app', 'a924cb634d432d124ace16a97a229e7ccf0b8ac01f84f42d59fa40e41f5dfff6', '[\"*\"]', NULL, NULL, '2024-09-01 07:06:32', '2024-09-01 07:06:32'),
(31, 'App\\Models\\User', 1, 'app', '30fcd49a4027209a5a2d95c3ab411f953a79d34c84c5885997cc1fdc0e93d1ed', '[\"*\"]', NULL, NULL, '2024-09-01 07:22:28', '2024-09-01 07:22:28'),
(32, 'App\\Models\\User', 1, 'app', 'b71cef55f4ae469aee04f65ad1c532dc508f04db3b6d42f230aeeabb132f44b2', '[\"*\"]', NULL, NULL, '2024-09-01 07:25:47', '2024-09-01 07:25:47'),
(33, 'App\\Models\\User', 1, 'app', '403da5df481f0b946b83e57b1bc164892e024528d0eea89bed9efbde6fd6847a', '[\"*\"]', NULL, NULL, '2024-09-01 07:30:03', '2024-09-01 07:30:03'),
(34, 'App\\Models\\User', 1, 'app', '68802a699ca72049e9f4fb928101f78777a1c6dfd31c50ed65082b1a49b5566f', '[\"*\"]', NULL, NULL, '2024-09-01 07:34:17', '2024-09-01 07:34:17'),
(35, 'App\\Models\\User', 1, 'app', 'b3ee243d1157022fc63a8d0b7e5ad9d40c30dac2f69230d254f1c1b083eb07f2', '[\"*\"]', NULL, NULL, '2024-09-01 07:42:12', '2024-09-01 07:42:12'),
(36, 'App\\Models\\User', 1, 'app', 'dd1e493f0fcb89a512f9dd52cd8dc80ec045a75c4e3da91d73512e2ba5440a12', '[\"*\"]', NULL, NULL, '2024-09-01 07:46:00', '2024-09-01 07:46:00'),
(37, 'App\\Models\\User', 1, 'app', 'b4e6db965f9e58b9efcb7704ebea20ecf7ab587ebd9b887ac177570c259f69e8', '[\"*\"]', NULL, NULL, '2024-09-01 07:53:36', '2024-09-01 07:53:36'),
(38, 'App\\Models\\User', 1, 'app', 'c029d1c6d71ac254aa2487c194cfda4ad821368ab13893cebaff2e41275faa9b', '[\"*\"]', NULL, NULL, '2024-09-01 07:58:41', '2024-09-01 07:58:41'),
(39, 'App\\Models\\User', 1, 'app', 'f7fe654750b9d283ec9b2df38bc17b6bc333b589d0dc30bc0bcdb94ff0f82c37', '[\"*\"]', NULL, NULL, '2024-09-01 07:59:44', '2024-09-01 07:59:44'),
(40, 'App\\Models\\User', 1, 'app', 'f7fcf35f0fa62d9f58f4420ff4856c2edbbda0e9eae448798169176f78d1a391', '[\"*\"]', NULL, NULL, '2024-09-01 08:00:27', '2024-09-01 08:00:27'),
(41, 'App\\Models\\User', 1, 'app', 'def8bf2b7f7b8d97d75705754bee6afa16f90c7c1cd3b6449074a1aa5b77d64a', '[\"*\"]', NULL, NULL, '2024-09-01 08:04:39', '2024-09-01 08:04:39'),
(42, 'App\\Models\\User', 1, 'app', 'd220dad7d7013f9999b6f585eb30f4adbf2cb4d1088162c6b2c5d04e64eea5b7', '[\"*\"]', NULL, NULL, '2024-09-01 08:13:56', '2024-09-01 08:13:56'),
(43, 'App\\Models\\User', 1, 'app', '2f8823d0e930aa435ac75e8593612309fb9617e3201ffff80c338b294865f9e4', '[\"*\"]', NULL, NULL, '2024-09-01 08:16:43', '2024-09-01 08:16:43'),
(44, 'App\\Models\\User', 1, 'app', '015d795aadeb8f2f29ead804c9871e0d08465ed632eccadaef7e56f68827f0d3', '[\"*\"]', NULL, NULL, '2024-09-01 08:19:02', '2024-09-01 08:19:02'),
(45, 'App\\Models\\User', 1, 'app', 'aa0ee46c1946f096e13c871c5d49104f24be574e0ac7e738ba547d172cb689ad', '[\"*\"]', NULL, NULL, '2024-09-01 08:39:43', '2024-09-01 08:39:43'),
(46, 'App\\Models\\User', 1, 'app', '9d3df95322009e2dc4268245184546cf47b2270e8c574c5cb7ff730586588f06', '[\"*\"]', NULL, NULL, '2024-09-01 08:45:52', '2024-09-01 08:45:52'),
(47, 'App\\Models\\User', 1, 'app', 'c8605bddd53e63119112fcf932a82ff92b31c560a7140c167e4a56d5f7e9fdf4', '[\"*\"]', NULL, NULL, '2024-09-01 08:57:24', '2024-09-01 08:57:24'),
(48, 'App\\Models\\User', 1, 'app', 'f75f952cde3291ba1d277ed939de110a8fd6366da9e23ca6127cd34da4dd5331', '[\"*\"]', NULL, NULL, '2024-09-01 08:59:17', '2024-09-01 08:59:17'),
(49, 'App\\Models\\User', 1, 'app', '5b37edd9ca84e3b52bb0ebcfefc79232d2e1a9f5ae491a2b2351bba8e79249e2', '[\"*\"]', NULL, NULL, '2024-09-01 09:03:12', '2024-09-01 09:03:12'),
(50, 'App\\Models\\User', 1, 'app', '36c4052d16bf88e89f068ee5a30dfd2bea3de0b9bc766cad5dd6779a3294735c', '[\"*\"]', NULL, NULL, '2024-09-01 09:07:19', '2024-09-01 09:07:19'),
(51, 'App\\Models\\User', 1, 'app', '72bf013c719c5894f0182d3f04d8ee960fd0ced01a50389168738f79c7abca68', '[\"*\"]', NULL, NULL, '2024-09-01 09:11:36', '2024-09-01 09:11:36'),
(52, 'App\\Models\\User', 1, 'app', '63ea9f1acda598c500305b418d01c9880f6819ccf048056f0802ccbdbda789fc', '[\"*\"]', NULL, NULL, '2024-09-01 09:13:49', '2024-09-01 09:13:49'),
(53, 'App\\Models\\User', 1, 'app', '68c76844f450d53c5f85a275f2cc744d1891bacf8ea3481030c5689b0f86a5c9', '[\"*\"]', NULL, NULL, '2024-09-01 10:02:23', '2024-09-01 10:02:23'),
(54, 'App\\Models\\User', 1, 'app', 'a30bfa3ba7bd47d837d14d548a2a43a972de18d745475036d967106ab2f3f87c', '[\"*\"]', NULL, NULL, '2024-09-01 23:35:55', '2024-09-01 23:35:55'),
(55, 'App\\Models\\User', 1, 'app', '36d5ddeb4cd86f2a38c963c1a09875d1f06f921722a9780ebe9d62e9a7173de6', '[\"*\"]', NULL, NULL, '2024-09-03 00:35:54', '2024-09-03 00:35:54'),
(56, 'App\\Models\\User', 1, 'app', '4ac1129eb07bff6ab777321cc77f3cc5f19ec547ded93f254d88c72c3152e488', '[\"*\"]', NULL, NULL, '2024-09-03 01:12:16', '2024-09-03 01:12:16'),
(57, 'App\\Models\\User', 1, 'app', 'e2989b259ca591dc77dc53b76aa89287b04e6fd875a69db5287875e76420766d', '[\"*\"]', NULL, NULL, '2024-09-03 01:15:39', '2024-09-03 01:15:39'),
(58, 'App\\Models\\User', 1, 'app', 'e562710bd1636f46e5195e8f1a24d5076f8575b22467ecbddfc93fceb01b3daf', '[\"*\"]', NULL, NULL, '2024-09-03 01:19:42', '2024-09-03 01:19:42'),
(59, 'App\\Models\\User', 1, 'app', '1d2784eb5a27b2b73afa12685a0f62eff3b782e1fcb0a53a1e810cefac463c1e', '[\"*\"]', NULL, NULL, '2024-09-03 01:21:19', '2024-09-03 01:21:19'),
(60, 'App\\Models\\User', 1, 'app', '444e7243cd554d6764dffa59cfd45868c47f71eb84ea1ddccfa8e6fa2cdf2962', '[\"*\"]', NULL, NULL, '2024-09-03 01:22:40', '2024-09-03 01:22:40'),
(61, 'App\\Models\\User', 1, 'app', '967ea2196a0d55cf94c7ff8abf9506ad5c6dfd2763d047db175f6f5156dc3e7b', '[\"*\"]', NULL, NULL, '2024-09-03 01:26:20', '2024-09-03 01:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `services_name` varchar(255) NOT NULL,
  `services_caption` varchar(255) NOT NULL,
  `services_desc` varchar(255) NOT NULL,
  `services_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `services_name`, `services_caption`, `services_desc`, `services_image`, `created_at`, `updated_at`) VALUES
(4, 'Data & AI', 'Harness Multichannel Analytics for a Deeper Understanding of Your Data', 'Gathered in one unified place, interpreted by experts, maximizing ROAS', 'pmWzNsBGov6orUIhJO0LVZnL1A6ad3EJ.png', NULL, '2024-09-01 21:41:48'),
(5, 'In-Housing', 'Transition Your Digital Program In-House Efficiently', 'Harness expert knowledge to build your own marketing powerhouse', '9KCVBTMd8r2MsdNCSDEkziclqAAgdcpi.png', NULL, '2024-09-01 22:38:53'),
(15, 'Strategy', 'Tailoring Your Paid Digital Strategy for Success At Scale', 'Powered by experts, accelerated by technology, and optimized with data', 'V2oKVjsHeJcW22TNSKbB1PEXWnWwhpd9.png', '2024-09-02 00:30:08', '2024-09-02 00:30:08'),
(17, 'Paid Media', 'Reach Your Ideal Customers At Every Stage of Their Journey', 'Powered by data, executed by channel experts, optimized with actionable insights', 'dvdnC8A4LjinpE3YXyclKn9A3R12PGGY.png', '2024-09-02 00:58:02', '2024-09-02 00:58:02'),
(18, 'Influencer Marketing', 'Foster Authentic Connections and Maximize Content Strategies with Influencers', 'Engage, captivate, and convert consumers with Influencer Marketing', 'wvaEeiZSBmMDgOZGjbyb6hFPq32gpN5Y.png', '2024-09-02 01:50:18', '2024-09-02 01:50:18'),
(20, 'Sample Service 2', 'Sample Caption 3', 'Description in this portion 3', 'RjSaR6hghLD4My95KUL8w6aVoSPD9blw.png', '2024-09-03 00:39:07', '2024-09-03 00:39:52');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8EmzWTCeH8p45lbECCqmvATrsPBzXKRQtypK96M3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1VnbEhSRUFDb1BjNE44NW5IYjdZRGsyR3ljQ3R5RlRKb090eGZ3SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725244548),
('ilYOgv6xUnRIpqyVETb6rGYb3UMiL6yTo1k4k7sl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE1OYWU4RU1yZFFoYzdnaEJRWTJwd0JjZW82NFo2U2IzREJSbkI0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725264692),
('L1OllZ8EnM3BnM7w1DU0LoqVCe5aPjWFgJTp6N1s', NULL, '127.0.0.1', 'PostmanRuntime/7.41.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWm96V2NJVElDYk9sakVUbm5tenBkOWQ3ZlhaRkUwdENNd0pXemV6biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725254659),
('rxdDnpAQTU6mrGXdXFrRrfwO6c1ltxdQ8KFB2xPD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDlmOGlvWHA5TzMyTTJsb3VwWDhhVlhGN1lSZUxnUzQxdDdveks4YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725337656),
('UORe69BlMmVEt4cgxulxUcfFN38cjl7Z0vVsWxtV', NULL, '127.0.0.1', 'PostmanRuntime/7.41.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1dNV0lDd0l4SmRaN08xeXlqcU5QbEo1V2ZVaE9objA2Zm4zSmNHWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725340921),
('yTgvRCzhhfakbaGiOBw4bRAcfiRj8vYbfHm7WvEV', NULL, '127.0.0.1', 'PostmanRuntime/7.41.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnBGbmlYV29FYmx2dVJyWXV1U0RUcWNSb2pVRHRuVU52WnJtR2R4TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725288236);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_services`
--

CREATE TABLE `sub_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `services_id` varchar(255) NOT NULL,
  `services_name` varchar(255) NOT NULL,
  `subservices` varchar(255) NOT NULL,
  `subservices_desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_services`
--

INSERT INTO `sub_services` (`id`, `services_id`, `services_name`, `subservices`, `subservices_desc`, `created_at`, `updated_at`) VALUES
(1, '15', 'Strategy', 'Digital Channel Audit', 'We go beyond traditional media metrics by leveraging your first-party data, core metrics, and Google Analytics to conduct a thorough audit across your paid channels. Led by a team of seasoned ad operations specialists, we uncover vital trends, identify inefficiencies, and unlock scalable opportunities to craft a bespoke full-funnel strategy aligned with your KPIs and business objectives.', NULL, NULL),
(2, '15', 'Strategy', 'Roadmap to Success', 'Together, we develop a comprehensive paid digital strategy to strengthen your brand’s social and industry leadership presence. By leveraging industry best practices and data-driven insights, we craft a scalable program tailored to your current needs and future growth.', NULL, NULL),
(3, '15', 'Strategy', 'Industry Expertise', 'As performance marketing experts and partners with the leading social platforms, we keep up-to-date with the latest digital news and trends. We are your eyes and ears to help navigate the ever-changing digital space and identify opportunities as well as pitfalls.', NULL, NULL),
(4, '17', 'Paid Media', 'Full-Funnel Performance', 'Our experts design and implement a custom full-funnel paid media plan, optimizing every touchpoint from awareness to conversion for maximum performance throughout the customer journey. From comprehensive market research to precise audience targeting and compelling campaign creation, we drive measurable results.', NULL, NULL),
(5, '17', 'Paid Media', 'Incrementality', 'Enhance your cross-platform strategy with our comprehensive testing and measurement framework. Designed to unlock incremental gains and foster sustainable growth, our approach ensures optimized performance and higher ROI over time.', NULL, NULL),
(6, '17', 'Paid Media', 'Robust Analytics & Insights', 'Gain deep, real-time campaign insights with our cross-platform reporting suite. We empower you to make data-driven decisions, optimize targeting, and refine messaging for maximum impact. Our thorough performance analysis enhances campaign efficiency, ensuring optimal budget allocation and continuous optimization.', NULL, NULL),
(7, '18', 'Influencer Marketing', 'Influencer Marketing Strategy', 'Experience tailor-made influencer marketing campaigns crafted uniquely for your brand. With a deep understanding of your brand identity and marketing goals, we customize each campaign to achieve specific objectives, ensuring your brand’s message resonates across channels.', NULL, NULL),
(8, '18', 'Influencer Marketing', 'Influencer Partnership Management', 'We handle influencer partnerships for you, including negotiating contracts, coordinating product shipments, providing detailed briefs, and more to ensure impactful collaborations. Effective communication and strategic planning are essential for building enduring relationships and maximizing campaign success.', NULL, NULL),
(9, '18', 'Influencer Marketing', 'Influencer-Generated Content', 'Boost your brand’s reach by re-purposing influencer content. Transform influencer collaborations into compelling Influencer-Generated Content (IGC), strategically amplified through your channels for wider audience engagement and enhanced visibility.', NULL, NULL),
(10, '4', 'Data & AI', 'All-in-One Dashboard', 'Optimize analytics with OneVu, our all-in-one reporting dashboard. Consolidate data from diverse channels into a single platform for comprehensive, real-time analysis. Gain holistic insights across multiple channels, including offline and third-party data (3PD), for faster optimizations and maximized performance based on real-time analysis and trends.', NULL, NULL),
(11, '4', 'Data & AI', 'Comprehensive Actionable Insights', 'Elevate your digital advertising with OneVu’s comprehensive analytics, enabling you to optimize channel investment, refine targeting precision, and fine-tune message resonance mid-flight. Harness real-time performance metrics to optimize strategies and maximize ROI across all channels.', NULL, NULL),
(12, '4', 'Data & AI', 'AI Powered Recommendation', 'Revolutionize your social media strategy using AI-driven insights that merge creative intelligence tagging with digital performance indicators. Enhances your brand’s impact, drives significant engagement and stimulates growth, all while saving time and costs through streamlined creative analysis and performance optimizations.', NULL, NULL),
(13, '5', 'In-Housing', 'Recruitment Roadmap', 'Gain access to expert assistance in recruiting top talent for your in-house marketing team, ensuring you have the right skills and expertise to drive results. We’ll streamline the hiring process, from crafting job descriptions & case studies to conducting interviews, so you can focus on building a high-performing team.', NULL, NULL),
(14, '5', 'In-Housing', 'Custom Training Programs', 'Elevate your team’s skills and knowledge with personalized training programs tailored to your business’ specific needs and goals. Our comprehensive workshops cover everything from digital marketing & data analytics fundamentals to advanced strategy & analysis support in continued education office hours, empowering your team to excel in all aspects of their roles and stay ahead of industry trends even after you’re successfully running in-house.', NULL, NULL),
(15, '5', 'In-Housing', 'Media Execution Support', 'Harness our expertise to execute flawless paid media campaigns across all key digital channels. We’ll collaborate with your team to assist with strategy, implementation, and ongoing optimizations. With our dedicated support, you’ll unlock the full potential of paid advertising while saving time and resources.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_services_details`
--

CREATE TABLE `sub_services_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subservices_name` varchar(255) NOT NULL,
  `subservicesdetails_name` varchar(255) NOT NULL,
  `subservicesdetails_desc` text NOT NULL,
  `subservicesdetails_image` varchar(255) NOT NULL,
  `servicesdetails_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_services_details`
--

INSERT INTO `sub_services_details` (`id`, `subservices_name`, `subservicesdetails_name`, `subservicesdetails_desc`, `subservicesdetails_image`, `servicesdetails_title`, `created_at`, `updated_at`) VALUES
(1, 'In-Housing', 'Interview & Hire', 'We alleviate the burden of talent acquisition by expertly handling the interview and hiring process. We streamline candidate selection, ensuring alignment with your brand’s goals. With our support, you’ll build a high-performing in-house team that drives exceptional results.', 'http://localhost:3000/static/media/inhouse-expert.6f4f7eefd5a1e4993090.png', 'Build Your Own Expert Paid Digital Team In-House', NULL, NULL),
(2, 'In-Housing', 'Tailored Training', 'Elevate your team’s skills with proven, tailored training programs. Our customized approach ensures that each member receives the knowledge and tools necessary to excel in their roles, driving performance and innovation within your organization.', 'http://localhost:3000/static/media/inhouse-training.855de849ca6d312101c2.png', 'Build Your Own Expert Paid Digital Team In-House', NULL, NULL),
(3, 'In-Housing', 'Collaborate & Strategize', 'Gain access to dedicated support and consultation through scheduled office hours with our experts. Whether you need assistance with strategy development, campaign optimization, or troubleshooting, our team is readily available to provide guidance and solutions to propel your digital marketing efforts forward.', 'http://localhost:3000/static/media/inhouse-collaborate.b05a15e4d6b8cb09844a.png', 'Build Your Own Expert Paid Digital Team In-House', NULL, NULL),
(4, 'In-Housing', 'Continued Education', 'Stay ahead of the curve with our continued education resources, including workshops, on-site visits, and shared industry insights. We provide ongoing learning opportunities to keep your team informed about the latest trends, technologies, and best practices in digital marketing, ensuring success after your program has been transitioned.', 'http://localhost:3000/static/media/inhouse-education.775842e136238c186ee3.png', 'Build Your Own Expert Paid Digital Team In-House', NULL, NULL),
(5, 'Strategy', 'Audit & Analyze', 'To ensure effective consultation, we start by thoroughly understanding every digital aspect of your business, including its current state, goals, achievements, and challenges. This allows us to avoid previous challenges and tailor a strategy to your specific needs.', 'https://junerpagal.com/images/images/services/inhouse-collaborate.png', 'Customer Acquisition and Retention, Fueled by Insights', NULL, NULL),
(6, 'Strategy', 'Plan & Strategize', 'After gaining a thorough understanding of your needs, we create detailed, data-driven media plans based on your business objectives. These plans are structured with clear milestones and a flexible time frame, ensuring optimal business growth through diversified channel strategies.', 'https://junerpagal.com/images/images/services/inhouse-training.png', 'Customer Acquisition and Retention, Fueled by Insights', NULL, NULL),
(7, 'Strategy', 'Review & Refine', 'Our plans aren’t just instructions; they’re a conversation. We collaborate with you to ensure they align with your growth goals and complement your efforts, implementing strategies to boost your online presence and fuel your business growth.', 'https://junerpagal.com/images/images/services/inhouse-expert.png', 'Customer Acquisition and Retention, Fueled by Insights', NULL, NULL),
(8, 'Strategy', 'Launch & Optimize', 'We continuously evaluate and optimize our strategies to ensure effectiveness, utilizing our OneVu all-in-one reporting dashboard for comprehensive insights. Embracing change, we adapt our plans to evolving environments, maximizing success at every milestone or deadline.', 'https://junerpagal.com/images/images/services/inhouse-training.png', 'Customer Acquisition and Retention, Fueled by Insights', NULL, NULL),
(9, 'Paid Media', 'Audience Segmentation', 'Reaching your core customer demands precision. Interest targeting is table stakes. Our advanced segmentation approach leverages your customer data and insights to curate highly-intent audiences that are most likely to engage with your message.', 'http://localhost:3000/static/media/services-paid-media.6b1fa32134026cbbe5cc.png', 'Boost Reach, Unlock Growth, and Maximize Revenue', NULL, NULL),
(10, 'Paid Media', '\r\nCampaign Creation', 'With years of experience and a substantial monthly ad spend, we leverage campaign best practices to optimize your message across platforms, placements, and audience segments. Our expertise allows us to craft tailored ad groups featuring compelling visuals, videos, or language, ensuring maximum engagement from start to finish.', 'http://localhost:3000/static/media/services-influencer-marketing.78543abe4c69ac35b03f.png', 'Boost Reach, Unlock Growth, and Maximize Revenue', NULL, NULL),
(11, 'Paid Media', 'Test. Optimize. Scale.', 'We don’t believe in “set it and forget it.” From initial launch, our team adopts a rigorous test and learn approach to continuously optimize your campaigns. After deployment, we closely monitor each ad, striving for perfection and making continuous adjustments to maximize results.', 'https://cdn.pixabay.com/photo/2020/08/24/05/43/search-engine-5512814_1280.jpg', 'Boost Reach, Unlock Growth, and Maximize Revenue', NULL, NULL),
(12, 'Influencer Marketing', 'Strategy & Planning', 'We kick off by defining clear campaign goals, whether it’s boosting brand awareness or driving sales. Next, we craft a detailed campaign brief, highlighting key messaging, objectives, preferred influencers, deliverables, and any specific guidelines or requirements.', 'https://cdn.pixabay.com/photo/2021/11/07/19/31/business-idea-6777771_1280.jpg', 'Transform Influencer Moments Into Enduring Brand Connections', NULL, NULL),
(13, 'Influencer Marketing', 'Influencer Selection', 'We handpick influencers tailored to your target audience, considering demographics like age, location, and interests. Our selection process also prioritizes brand safety, audience engagement, and past performance to ensure optimal partnership alignment.', 'https://cdn.pixabay.com/photo/2021/06/28/10/59/influencer-6371253_1280.jpg', 'Transform Influencer Moments Into Enduring Brand Connections', NULL, NULL),
(14, 'Influencer Marketing', 'Partnership Management', 'Leave it all to us: We negotiate contracts with influencers, detailing deliverables, timelines, compensation, and usage rights. We manage payments, coordinate product shipments, and review influencer content to ensure alignment with brand guidelines and relevance with your target audience before it goes live.', 'https://cdn.pixabay.com/photo/2015/11/03/09/05/puzzle-1020057_1280.jpg', 'Transform Influencer Moments Into Enduring Brand Connections', NULL, NULL),
(15, 'Influencer Marketing', 'Content Amplification', 'Influencer-generated content doesn’t end with their post—it has multiple lives. We take it further by amplifying it through your paid advertising channels. Harnessing the authenticity and engagement of influencer collaborations, we boost brand visibility, drive engagement, and achieve campaign objectives.', 'https://cdn.pixabay.com/photo/2017/01/09/10/47/social-1966010_960_720.jpg', 'Transform Influencer Moments Into Enduring Brand Connections', NULL, NULL),
(16, 'Data & AI', 'Connect & Consolidate', 'Access all your data seamlessly with OneVu. We consolidate your performance data into a single platform for streamlined reporting. With everything centralized, we help you gain a comprehensive view of your campaigns, analytics, trends and insights. Every marketer’s dream.', 'https://cdn.pixabay.com/photo/2021/08/23/09/55/diversity-6567395_960_720.png', 'Accelerate Your Performance with Actionable Insights All in One Platform', NULL, NULL),
(17, 'Data & AI', 'Organize & Visualize', 'We tailor your reporting dashboard to fit your needs and simplify data analysis at a glance. With personalized organization, you can effortlessly interpret complex metrics and gain actionable insights in an instant, empowering informed decision-making and driving success.', 'https://cdn.pixabay.com/photo/2013/07/13/11/36/documents-158461_1280.png', 'Accelerate Your Performance with Actionable Insights All in One Platform', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `image`, `name`, `position`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'https://junerpagal.com/images/images/avatar.png', 'Juner M. Pagal', 'Full-Stack Developer', 'Sample Description of the job here.', NULL, NULL),
(2, 'https://junerpagal.com/images/images/avatar.png', 'Apollo J. Pagal', 'Social Media Expert', 'Sample description of Front-end developer', NULL, NULL),
(3, 'https://junerpagal.com/images/images/avatar.png', 'Ashraf Achilles J. Pagal', 'Online Marketing Specialist', 'Sample description of Back-end developer', NULL, NULL),
(4, 'https://junerpagal.com/images/images/avatar.png', 'Alexa Jane', 'Social Media Specialist', 'Sample description of Social Media Specialist', NULL, NULL);

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Juner Pagal', 'juner.pagal@gmail.com', NULL, '$2y$12$kxS2EUXBhEtYS0DsrG3lxuXjpYmAohPaHhHChcaAUB/E9kxIaEaiu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-25 20:38:39', '2024-08-25 20:38:39'),
(2, 'Sample Name', 'sample@gmail.com', NULL, '$2y$12$IEeZZ/CZyOzNJ8lDK0scUulB2aTn.soHJRnfDPyGNpwlCE93dhywa', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-26 01:03:11', '2024-08-26 01:03:11'),
(3, 'Janerose Pagal', 'janerosejumamoy@gmail.com', NULL, '$2y$12$IWu.2xYyWdT2q4QEmZltDujQ9AhdGNgUxUsEbjhoDjEY4ebCFZ7zG', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-27 06:26:39', '2024-08-27 06:26:39'),
(4, 'bnvnb', 'bnn@yahoo.com', NULL, '$2y$12$PWNjD.6quf5KfP8N4Pjs2.nFUF3CG39Bp4Fq/QzxPHHgYSf4U5/mu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 06:27:59', '2024-08-28 06:27:59'),
(5, 'Juner Pagal', 'juner.pagal123@gmail.com', NULL, '$2y$12$nGE/7fx7UkUvtIPDWR0Tw.D19j2NbgosRoCPf.68m8Y1JCTlEOIdm', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 19:55:51', '2024-08-30 19:55:51'),
(6, 'Juner Pagal2', 'juner.pagal123@gmail.com4', NULL, '$2y$12$oJptlqohAyJEqAVIRbs9ceUcWGC7auKertpjcFmIbiGU33Xx9WUti', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 20:22:34', '2024-08-30 20:22:34'),
(7, 'Juner Pagal', 'sdf@sde.com', NULL, '$2y$12$UiEbBcdx3UGDqoHZ.pg1EuTacnzdHm2IdjcUOecu3TkwaVmTXESSq', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:52:07', '2024-08-30 21:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `image`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'https://junerpagal.com/images/images/wedo/wedo-strategy.png', 'We move fast and learn faster.', 'Complacency is not in our vocabulary – and stretching our minds is in our DNA. We’re not afraid to question the norm and roll up our sleeves to find solutions, quicker than anyone else. We’re a work in progress, but we embrace a growth mindset and strive to make our tomorrow selves proud.', NULL, NULL),
(2, 'https://junerpagal.com/images/images/wedo/wedo-paidmedia.png', 'We take collaboration seriously.', 'Collaboration is at the core of our success. We champion transparency and know that clear and honest communication is the driving force behind every great partnership. It isn’t just about getting the job done but working alongside our teammates and partners to get it done right.', NULL, NULL),
(3, 'https://junerpagal.com/images/images/wedo/wedo-influencermarketing.png', 'We focus on outcomes.', 'Good things come to those who work smarter, not harder. As a performance-driven organization, we set ambitious goals and share accountability for achieving them. As our industry evolves, we continue to deliver exceptional outcomes, doing right by our clients, consumers, and ourselves every day.', NULL, NULL),
(4, 'https://junerpagal.com/images/images/wedo/wedo-data.png', 'We are growth-minded.\r\n\r\n', 'We are nimble and adaptable. We are redefining the performance marketing landscape through perpetual ideation, optimization, and creative problem-solving. Innovation is the fuel that makes our engine run and creates new growth opportunities for our business and people. We love a challenge and will continue to climb to the top of the industry, as we have been doing so since 2014.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '10:16:49pm', '26-08-2024', NULL, NULL),
(2, '127.0.0.1', '11:00:40pm', '26-08-2024', NULL, NULL),
(3, '127.0.0.1', '11:00:49pm', '26-08-2024', NULL, NULL),
(4, '127.0.0.1', '11:04:38pm', '26-08-2024', NULL, NULL),
(5, '127.0.0.1', '11:05:08pm', '26-08-2024', NULL, NULL),
(6, '127.0.0.1', '01:34:21pm', '27-08-2024', NULL, NULL),
(7, '127.0.0.1', '07:15:07pm', '27-08-2024', NULL, NULL),
(8, '127.0.0.1', '08:43:58pm', '27-08-2024', NULL, NULL),
(9, '127.0.0.1', '09:03:22pm', '27-08-2024', NULL, NULL),
(10, '127.0.0.1', '09:44:33pm', '27-08-2024', NULL, NULL),
(11, '127.0.0.1', '01:00:35am', '28-08-2024', NULL, NULL),
(12, '127.0.0.1', '01:06:11pm', '28-08-2024', NULL, NULL),
(13, '127.0.0.1', '07:51:53pm', '28-08-2024', NULL, NULL),
(14, '127.0.0.1', '10:06:03pm', '28-08-2024', NULL, NULL),
(15, '127.0.0.1', '10:17:39pm', '28-08-2024', NULL, NULL),
(16, '127.0.0.1', '10:35:37pm', '28-08-2024', NULL, NULL),
(17, '127.0.0.1', '10:36:56pm', '28-08-2024', NULL, NULL),
(18, '127.0.0.1', '11:03:15pm', '28-08-2024', NULL, NULL),
(19, '127.0.0.1', '11:03:26pm', '28-08-2024', NULL, NULL),
(20, '127.0.0.1', '11:04:41pm', '28-08-2024', NULL, NULL),
(21, '127.0.0.1', '06:59:40pm', '29-08-2024', NULL, NULL),
(22, '127.0.0.1', '07:17:01pm', '29-08-2024', NULL, NULL),
(23, '127.0.0.1', '09:23:49pm', '29-08-2024', NULL, NULL),
(24, '127.0.0.1', '09:35:04pm', '29-08-2024', NULL, NULL),
(25, '127.0.0.1', '07:31:45pm', '30-08-2024', NULL, NULL),
(26, '127.0.0.1', '07:32:50pm', '30-08-2024', NULL, NULL),
(27, '127.0.0.1', '07:34:24pm', '30-08-2024', NULL, NULL),
(28, '127.0.0.1', '11:09:45pm', '30-08-2024', NULL, NULL),
(29, '127.0.0.1', '02:51:30am', '31-08-2024', NULL, NULL),
(30, '127.0.0.1', '10:30:35am', '31-08-2024', NULL, NULL),
(31, '127.0.0.1', '12:35:03pm', '31-08-2024', NULL, NULL),
(32, '127.0.0.1', '05:53:41pm', '31-08-2024', NULL, NULL),
(33, '127.0.0.1', '05:53:49pm', '31-08-2024', NULL, NULL),
(34, '127.0.0.1', '06:36:57pm', '31-08-2024', NULL, NULL),
(35, '127.0.0.1', '06:37:38pm', '31-08-2024', NULL, NULL),
(36, '127.0.0.1', '06:40:59pm', '31-08-2024', NULL, NULL),
(37, '127.0.0.1', '06:41:19pm', '31-08-2024', NULL, NULL),
(38, '127.0.0.1', '07:48:36pm', '31-08-2024', NULL, NULL),
(39, '127.0.0.1', '07:51:43pm', '31-08-2024', NULL, NULL),
(40, '127.0.0.1', '07:54:56pm', '31-08-2024', NULL, NULL),
(41, '127.0.0.1', '07:56:21pm', '31-08-2024', NULL, NULL),
(42, '127.0.0.1', '07:56:27pm', '31-08-2024', NULL, NULL),
(43, '127.0.0.1', '07:56:50pm', '31-08-2024', NULL, NULL),
(44, '127.0.0.1', '10:10:00pm', '31-08-2024', NULL, NULL),
(45, '127.0.0.1', '08:36:28pm', '01-09-2024', NULL, NULL),
(46, '127.0.0.1', '08:43:26pm', '01-09-2024', NULL, NULL),
(47, '127.0.0.1', '08:54:42pm', '01-09-2024', NULL, NULL),
(48, '127.0.0.1', '09:15:53pm', '01-09-2024', NULL, NULL),
(49, '127.0.0.1', '09:33:55pm', '01-09-2024', NULL, NULL),
(50, '127.0.0.1', '09:35:28pm', '01-09-2024', NULL, NULL),
(51, '127.0.0.1', '09:46:22pm', '01-09-2024', NULL, NULL),
(52, '127.0.0.1', '09:58:10pm', '01-09-2024', NULL, NULL),
(53, '127.0.0.1', '09:58:23pm', '01-09-2024', NULL, NULL),
(54, '127.0.0.1', '09:58:37pm', '01-09-2024', NULL, NULL),
(55, '127.0.0.1', '10:04:38pm', '01-09-2024', NULL, NULL),
(56, '127.0.0.1', '10:06:17pm', '01-09-2024', NULL, NULL),
(57, '127.0.0.1', '11:19:04pm', '01-09-2024', NULL, NULL),
(58, '127.0.0.1', '11:19:24pm', '01-09-2024', NULL, NULL),
(59, '127.0.0.1', '11:23:42pm', '01-09-2024', NULL, NULL),
(60, '127.0.0.1', '11:24:12pm', '01-09-2024', NULL, NULL),
(61, '127.0.0.1', '11:28:41pm', '01-09-2024', NULL, NULL),
(62, '127.0.0.1', '11:31:35pm', '01-09-2024', NULL, NULL),
(63, '127.0.0.1', '11:41:50pm', '01-09-2024', NULL, NULL),
(64, '127.0.0.1', '11:46:06pm', '01-09-2024', NULL, NULL),
(65, '127.0.0.1', '11:47:35pm', '01-09-2024', NULL, NULL),
(66, '127.0.0.1', '11:51:05pm', '01-09-2024', NULL, NULL),
(67, '127.0.0.1', '11:51:10pm', '01-09-2024', NULL, NULL),
(68, '127.0.0.1', '11:51:24pm', '01-09-2024', NULL, NULL),
(69, '127.0.0.1', '11:51:38pm', '01-09-2024', NULL, NULL),
(70, '127.0.0.1', '11:55:36pm', '01-09-2024', NULL, NULL),
(71, '127.0.0.1', '12:12:29am', '02-09-2024', NULL, NULL),
(72, '127.0.0.1', '12:12:47am', '02-09-2024', NULL, NULL),
(73, '127.0.0.1', '12:18:24am', '02-09-2024', NULL, NULL),
(74, '127.0.0.1', '12:45:27am', '02-09-2024', NULL, NULL),
(75, '127.0.0.1', '12:47:29am', '02-09-2024', NULL, NULL),
(76, '127.0.0.1', '12:56:30am', '02-09-2024', NULL, NULL),
(77, '127.0.0.1', '12:58:56am', '02-09-2024', NULL, NULL),
(78, '127.0.0.1', '01:01:21am', '02-09-2024', NULL, NULL),
(79, '127.0.0.1', '01:02:33am', '02-09-2024', NULL, NULL),
(80, '127.0.0.1', '01:11:54am', '02-09-2024', NULL, NULL),
(81, '127.0.0.1', '01:17:16am', '02-09-2024', NULL, NULL),
(82, '127.0.0.1', '04:21:49pm', '02-09-2024', NULL, NULL),
(83, '127.0.0.1', '06:07:31pm', '02-09-2024', NULL, NULL),
(84, '127.0.0.1', '07:11:13pm', '02-09-2024', NULL, NULL),
(85, '127.0.0.1', '01:18:39am', '03-09-2024', NULL, NULL),
(86, '127.0.0.1', '02:41:18pm', '03-09-2024', NULL, NULL),
(87, '127.0.0.1', '02:48:02pm', '03-09-2024', NULL, NULL),
(88, '127.0.0.1', '02:48:22pm', '03-09-2024', NULL, NULL),
(89, '127.0.0.1', '02:48:24pm', '03-09-2024', NULL, NULL),
(90, '127.0.0.1', '02:48:27pm', '03-09-2024', NULL, NULL),
(91, '127.0.0.1', '02:48:33pm', '03-09-2024', NULL, NULL),
(92, '127.0.0.1', '02:55:52pm', '03-09-2024', NULL, NULL),
(93, '127.0.0.1', '02:59:00pm', '03-09-2024', NULL, NULL),
(94, '127.0.0.1', '03:09:46pm', '03-09-2024', NULL, NULL),
(95, '127.0.0.1', '03:09:56pm', '03-09-2024', NULL, NULL),
(96, '127.0.0.1', '03:10:34pm', '03-09-2024', NULL, NULL),
(97, '127.0.0.1', '03:12:40pm', '03-09-2024', NULL, NULL),
(98, '127.0.0.1', '03:12:52pm', '03-09-2024', NULL, NULL),
(99, '127.0.0.1', '03:13:11pm', '03-09-2024', NULL, NULL),
(100, '127.0.0.1', '03:14:22pm', '03-09-2024', NULL, NULL),
(101, '127.0.0.1', '04:34:15pm', '03-09-2024', NULL, NULL),
(102, '127.0.0.1', '05:21:32pm', '03-09-2024', NULL, NULL),
(103, '127.0.0.1', '05:25:48pm', '03-09-2024', NULL, NULL),
(104, '127.0.0.1', '05:29:26pm', '03-09-2024', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `what_we_dos`
--

CREATE TABLE `what_we_dos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `what_we_dos`
--

INSERT INTO `what_we_dos` (`id`, `image`, `title`, `desc`) VALUES
(1, 'https://junerpagal.com/images/images/wedo/wedo-strategy.png', 'Strategy', 'Collaborating with your team is what we love. Our experts partner with you to craft a tailored paid digital strategy fueled with data. Leveraging industry expertise and best practices, we ensure your strategy is optimal. We\'re here to help navigate the evolving digital landscape.'),
(2, 'https://junerpagal.com/images/images/wedo/wedo-paidmedia.png', 'Paid Media', 'We\'re here to revitalize your paid digital presence and drive results, tailored to your brand\'s unique needs. Specializing in paid digital advertising across all major channels and verticals, we blend cutting-edge techniques with proven expertise to reach your audiences with a full-funnel approach.'),
(3, 'https://junerpagal.com/images/images/wedo/wedo-influencermarketing.png', 'Influencer Marketing', 'Leverage influencers to build authentic connections with your new existing audiences, elevating your brand with expert content that aligns with your values. Go beyond organic posts by repurposing influencer generated content (IGC) in expertly-design paid social campaigns to maximize impact across platforms.'),
(4, 'https://junerpagal.com/images/images/wedo/wedo-data.png', 'Data & AI', 'Harness the power of our integrated reporting dashboard to consolidate your data seamlessly. With our advanced AI insights and analytics experts you\'re able to refine and optimize your digital strategy and online presence, while identifying areas for improvement, with precision.');

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fueling_brands`
--
ALTER TABLE `fueling_brands`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_services`
--
ALTER TABLE `sub_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_services_details`
--
ALTER TABLE `sub_services_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `what_we_dos`
--
ALTER TABLE `what_we_dos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fueling_brands`
--
ALTER TABLE `fueling_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_services`
--
ALTER TABLE `sub_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sub_services_details`
--
ALTER TABLE `sub_services_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `what_we_dos`
--
ALTER TABLE `what_we_dos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
