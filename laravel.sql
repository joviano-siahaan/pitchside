-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 06:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachmentable`
--

CREATE TABLE `attachmentable` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachmentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachmentable_id` int(10) UNSIGNED NOT NULL,
  `attachment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `original_name`, `mime`, `extension`, `size`, `sort`, `path`, `description`, `alt`, `hash`, `disk`, `user_id`, `group`, `created_at`, `updated_at`) VALUES
(1, '87ae0b3387895bf3ba78e293fd2dfc636a9ba5a7', 'blob', 'image/png', 'png', 319209, 0, '2021/05/03/', NULL, NULL, 'd0d3c9dedf2ed95e805d7b3df842cad64b26b73c', 'public', 1, NULL, '2021-05-03 10:56:19', '2021-05-03 10:56:19'),
(2, '201805ee6a4f39277ce61e917c6712c6daad1f1b', 'blob', 'image/png', 'png', 26855, 0, '2021/05/03/', NULL, NULL, '4040c4e8cb322f74251db2e1f40ad80dbdf724f1', 'public', 1, NULL, '2021-05-03 10:57:15', '2021-05-03 10:57:15'),
(3, '4094a5edbda10d3051c231aaf6a3d34761136ea9', 'blob', 'image/png', 'png', 231549, 0, '2021/05/03/', NULL, NULL, '4b780cf5caea5f83e66704cb67d007b19d90d6e4', 'public', 1, NULL, '2021-05-03 11:30:24', '2021-05-03 11:30:24'),
(4, '47a4451991a561308576e07739510b72d553f270', 'blob', 'image/png', 'png', 235646, 0, '2021/05/04/', NULL, NULL, 'f7b1fdd106c773129bf2f3aba28b3e7bc8bc8734', 'public', 1, NULL, '2021-05-03 17:25:32', '2021-05-03 17:25:32'),
(5, '0c63b90614ffc281655f1e9d01beabf8c745719d', 'blob', 'image/png', 'png', 293125, 0, '2021/05/04/', NULL, NULL, 'a12211517b8c9fbdd439e29df572816f3cfb814b', 'public', 1, NULL, '2021-05-04 11:36:46', '2021-05-04 11:36:46'),
(6, 'eb02ff6a34ff92fb1c71c1a681fb8538fa1bf37c', 'blob', 'image/png', 'png', 25335, 0, '2021/05/05/', NULL, NULL, '609c311461fcef86b5fcbd12f0f816771c3c8c7a', 'public', 2, NULL, '2021-05-04 17:46:59', '2021-05-04 17:46:59'),
(7, 'eb02ff6a34ff92fb1c71c1a681fb8538fa1bf37c', 'blob', 'image/png', 'png', 25335, 0, '2021/05/05/', NULL, NULL, '609c311461fcef86b5fcbd12f0f816771c3c8c7a', 'public', 2, NULL, '2021-05-04 17:47:11', '2021-05-04 17:47:11'),
(8, 'aabfad11a3e0ff1a5e6d4e7409717bb9e4d08116', 'blob', 'image/png', 'png', 26905, 0, '2021/05/05/', NULL, NULL, '04d05bbdda65428fe2932c8070eec7585802f00c', 'public', 2, NULL, '2021-05-04 17:47:34', '2021-05-04 17:47:34'),
(9, 'b0308e20d88cbd02a83d46b5d5284c0a3e277778', 'blob', 'image/png', 'png', 25262, 0, '2021/05/05/', NULL, NULL, '9d3e97cf9a59e55a8669fa7c689a64469358c026', 'public', 2, NULL, '2021-05-04 17:49:50', '2021-05-04 17:49:50'),
(10, '62c4b93b764373b688b0040372dfd6bc047cc742', 'blob', 'image/png', 'png', 51878, 0, '2021/05/05/', NULL, NULL, '6cda2f9b40bb0479378936beb528d0b4a90b5e9c', 'public', 2, NULL, '2021-05-04 17:50:09', '2021-05-04 17:50:09'),
(11, '23fbac2a689b5dcd573aea51adfdd3a53da84324', 'blob', 'image/png', 'png', 31699, 0, '2021/05/05/', NULL, NULL, 'f18b94de81c64c4e1ccf37ca5ad4f9526612d22b', 'public', 2, NULL, '2021-05-04 17:50:20', '2021-05-04 17:50:20'),
(12, '23fbac2a689b5dcd573aea51adfdd3a53da84324', 'blob', 'image/png', 'png', 31699, 0, '2021/05/05/', NULL, NULL, 'f18b94de81c64c4e1ccf37ca5ad4f9526612d22b', 'public', 2, NULL, '2021-05-04 17:50:36', '2021-05-04 17:50:36'),
(13, 'e5ae8a53ed8bcb2782bb95d9147d45babb26ab18', 'blob', 'image/png', 'png', 41973, 0, '2021/05/05/', NULL, NULL, '18b3ae3b9abb3802d17d3ac6ceaa2b6c18606d26', 'public', 2, NULL, '2021-05-04 17:50:55', '2021-05-04 17:50:55'),
(14, 'dc0ee497c942986fcf1df1f80c2d60eccbde2000', 'blob', 'image/png', 'png', 476937, 0, '2021/05/05/', NULL, NULL, '117aa8bd17fac9af3cc69547bd7e8e92e149736a', 'public', 2, NULL, '2021-05-04 18:18:57', '2021-05-04 18:18:57'),
(15, 'd80117911fe99417a493559e68d79ade3b28aafe', 'blob', 'image/png', 'png', 407108, 0, '2021/05/05/', NULL, NULL, 'f65a45a2c760258a04a6037a3c1aff6cb5812476', 'public', 2, NULL, '2021-05-04 18:23:17', '2021-05-04 18:23:17'),
(16, 'f26d2ad19a280ef1c2b94f5eba5fe954255875e1', 'blob', 'image/png', 'png', 455339, 0, '2021/05/05/', NULL, NULL, '297bd32b3af63d43472af67e200ed8c22fe80e79', 'public', 2, NULL, '2021-05-04 18:26:45', '2021-05-04 18:26:45'),
(17, 'b752d41240892cdd8a5eeaee4b3f7cc45b1e3cf7', 'blob', 'image/png', 'png', 328299, 0, '2021/05/05/', NULL, NULL, 'f7a2c2c45b41a3383ee51527be26e4303a77c01c', 'public', 2, NULL, '2021-05-04 18:29:25', '2021-05-04 18:29:25'),
(18, 'b752d41240892cdd8a5eeaee4b3f7cc45b1e3cf7', 'blob', 'image/png', 'png', 328299, 0, '2021/05/05/', NULL, NULL, 'f7a2c2c45b41a3383ee51527be26e4303a77c01c', 'public', 2, NULL, '2021-05-04 18:29:27', '2021-05-04 18:29:27'),
(19, 'b741c9e0f866c3a3161f5572f257eeca38fc6389', 'blob', 'image/png', 'png', 405869, 0, '2021/05/05/', NULL, NULL, '4eff3ad27bf6ba79eed1b6dd3c9ee02959605240', 'public', 2, NULL, '2021-05-04 18:32:19', '2021-05-04 18:32:19'),
(20, 'f04212c6a0d9993332c0f24b19bba759ecb85e1b', 'blob', 'image/png', 'png', 398597, 0, '2021/05/05/', NULL, NULL, '76df15df3fc41ad5b3926af4107461b54210697b', 'public', 2, NULL, '2021-05-04 18:34:46', '2021-05-04 18:34:46'),
(21, 'ac89d2185a1105a5756d1cccc78c75441fde66b4', 'blob', 'image/png', 'png', 412137, 0, '2021/05/05/', NULL, NULL, '75405f782e1bac7d6f6b61312fad84ffff137a9f', 'public', 2, NULL, '2021-05-05 16:22:15', '2021-05-05 16:22:15'),
(22, '7fd2b9afef85dfe95eb23c3cd7c4132369c974f3', 'blob', 'image/png', 'png', 351286, 0, '2021/05/05/', NULL, NULL, 'd110e716ffd455eff2e4b00e20a4c874f608a1eb', 'public', 1, NULL, '2021-05-05 16:48:34', '2021-05-05 16:48:34'),
(23, 'db689c1fa6a8b6f76c9ba6cb24748bb12926273e', 'blob', 'image/png', 'png', 436562, 0, '2021/05/05/', NULL, NULL, 'fcde6a6f50f4d13b5a0701f3acaece19841c89d9', 'public', 1, NULL, '2021-05-05 16:49:25', '2021-05-05 16:49:25'),
(24, '35638a7d925cd84f0d12c2f10e1b26fe0ed94e59', 'blob', 'image/png', 'png', 629390, 0, '2021/05/09/', NULL, NULL, '5fcb607dd1efbf5327605b211e00ccd05b85e60e', 'public', 1, NULL, '2021-05-09 07:42:13', '2021-05-09 07:42:13'),
(25, '9a999909fa730371c60d533fa43a50be8d720490', 'blob', 'image/png', 'png', 476551, 0, '2021/05/09/', NULL, NULL, '37badc9611c948dec247c32c3e648318bce53809', 'public', 1, NULL, '2021-05-09 07:44:28', '2021-05-09 07:44:28'),
(26, '4d06105a402bb1e82baa58b8f622f85d1967b77d', 'blob', 'image/png', 'png', 140563, 0, '2021/05/09/', NULL, NULL, '686c986b3a5fbab5d7651f5dd865804ccd49b802', 'public', 2, NULL, '2021-05-09 11:17:28', '2021-05-09 11:17:28'),
(27, '9a999909fa730371c60d533fa43a50be8d720490', 'blob', 'image/png', 'png', 476551, 0, '2021/05/09/', NULL, NULL, '37badc9611c948dec247c32c3e648318bce53809', 'public', 2, NULL, '2021-05-09 11:24:17', '2021-05-09 11:24:17'),
(28, '4d06105a402bb1e82baa58b8f622f85d1967b77d', 'blob', 'image/png', 'png', 140563, 0, '2021/05/09/', NULL, NULL, '686c986b3a5fbab5d7651f5dd865804ccd49b802', 'public', 2, NULL, '2021-05-09 11:24:51', '2021-05-09 11:24:51'),
(29, '4d06105a402bb1e82baa58b8f622f85d1967b77d', 'blob', 'image/png', 'png', 140563, 0, '2021/05/09/', NULL, NULL, '686c986b3a5fbab5d7651f5dd865804ccd49b802', 'public', 2, NULL, '2021-05-09 11:25:18', '2021-05-09 11:25:18'),
(30, '4d06105a402bb1e82baa58b8f622f85d1967b77d', 'blob', 'image/png', 'png', 140563, 0, '2021/05/09/', NULL, NULL, '686c986b3a5fbab5d7651f5dd865804ccd49b802', 'public', 2, NULL, '2021-05-09 11:26:15', '2021-05-09 11:26:15'),
(31, '4d06105a402bb1e82baa58b8f622f85d1967b77d', 'blob', 'image/png', 'png', 140563, 0, '2021/05/09/', NULL, NULL, '686c986b3a5fbab5d7651f5dd865804ccd49b802', 'public', 2, NULL, '2021-05-09 11:33:13', '2021-05-09 11:33:13'),
(32, '4d06105a402bb1e82baa58b8f622f85d1967b77d', 'blob', 'image/png', 'png', 140563, 0, '2021/05/09/', NULL, NULL, '686c986b3a5fbab5d7651f5dd865804ccd49b802', 'public', 2, NULL, '2021-05-09 11:33:30', '2021-05-09 11:33:30'),
(33, '699ae7c774c2ea419e2bdcdcab6ce62a63de9970', 'blob', 'image/png', 'png', 398471, 0, '2021/05/09/', NULL, NULL, 'bafd38969f97c1fe1a17832fafa0d796ccf5146a', 'public', 2, NULL, '2021-05-09 11:37:09', '2021-05-09 11:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `att_physicals`
--

CREATE TABLE `att_physicals` (
  `id` int(10) UNSIGNED NOT NULL,
  `speed` int(10) UNSIGNED NOT NULL,
  `balance` int(10) UNSIGNED NOT NULL,
  `strength` int(10) UNSIGNED NOT NULL,
  `durability` int(10) UNSIGNED NOT NULL,
  `agility` int(10) UNSIGNED NOT NULL,
  `power` int(10) UNSIGNED NOT NULL,
  `stamina` int(10) UNSIGNED NOT NULL,
  `jumping` int(10) UNSIGNED NOT NULL,
  `players_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `att_physicals`
--

INSERT INTO `att_physicals` (`id`, `speed`, `balance`, `strength`, `durability`, `agility`, `power`, `stamina`, `jumping`, `players_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 88, 23, 61, 57, 22, 66, 17, 3, 1, 1, '2021-05-03 10:56:19', '2021-05-03 10:56:19'),
(2, 32, 37, 66, 77, 12, 26, 67, 38, 2, 1, '2021-05-03 17:25:33', '2021-05-03 17:25:33'),
(3, 54, 36, 27, 68, 60, 77, 86, 24, 3, 1, '2021-05-04 11:36:48', '2021-05-04 11:36:48'),
(4, 12, 14, 9, 11, 12, 12, 11, 8, 4, 2, '2021-05-04 18:21:22', '2021-05-04 18:21:22'),
(5, 13, 13, 9, 14, 11, 12, 10, 9, 5, 2, '2021-05-04 18:23:57', '2021-05-04 18:23:57'),
(6, 13, 2, 5, 12, 13, 13, 6, 9, 6, 2, '2021-05-04 18:27:37', '2021-05-04 18:27:37'),
(7, 12, 9, 13, 16, 9, 10, 11, 13, 7, 2, '2021-05-04 18:30:49', '2021-05-04 18:30:49'),
(8, 12, 7, 7, 13, 12, 12, 6, 6, 8, 2, '2021-05-04 18:33:01', '2021-05-04 18:33:01'),
(10, 10, 13, 11, 12, 15, 12, 12, 10, 10, 2, '2021-05-04 18:35:22', '2021-05-04 18:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `att_tacticals`
--

CREATE TABLE `att_tacticals` (
  `id` int(10) UNSIGNED NOT NULL,
  `positioning` int(10) UNSIGNED NOT NULL,
  `creative` int(10) UNSIGNED NOT NULL,
  `determination` int(10) UNSIGNED NOT NULL,
  `reading` int(10) UNSIGNED NOT NULL,
  `players_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `att_tacticals`
--

INSERT INTO `att_tacticals` (`id`, `positioning`, `creative`, `determination`, `reading`, `players_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 33, 21, 57, 47, 1, 1, '2021-05-03 10:56:19', '2021-05-03 10:56:19'),
(2, 52, 49, 30, 28, 2, 1, '2021-05-03 17:25:33', '2021-05-03 17:25:33'),
(3, 73, 50, 65, 84, 3, 1, '2021-05-04 11:36:48', '2021-05-04 11:36:48'),
(4, 9, 13, 8, 13, 4, 2, '2021-05-04 18:21:22', '2021-05-04 18:21:22'),
(5, 8, 9, 4, 11, 5, 2, '2021-05-04 18:23:57', '2021-05-04 18:23:57'),
(6, 6, 13, 8, 7, 6, 2, '2021-05-04 18:27:37', '2021-05-04 18:27:37'),
(7, 13, 1, 11, 8, 7, 2, '2021-05-04 18:30:49', '2021-05-04 18:30:49'),
(8, 10, 13, 5, 11, 8, 2, '2021-05-04 18:33:01', '2021-05-04 18:33:01'),
(10, 13, 13, 14, 14, 10, 2, '2021-05-04 18:35:22', '2021-05-04 18:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `att_technicals`
--

CREATE TABLE `att_technicals` (
  `id` int(10) UNSIGNED NOT NULL,
  `pass` int(10) UNSIGNED NOT NULL,
  `control` int(10) UNSIGNED NOT NULL,
  `long_pass` int(10) UNSIGNED NOT NULL,
  `shot_acc` int(10) UNSIGNED NOT NULL,
  `heading` int(10) UNSIGNED NOT NULL,
  `tackle` int(10) UNSIGNED NOT NULL,
  `catching` int(10) UNSIGNED NOT NULL,
  `reflex` int(10) UNSIGNED NOT NULL,
  `players_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `att_technicals`
--

INSERT INTO `att_technicals` (`id`, `pass`, `control`, `long_pass`, `shot_acc`, `heading`, `tackle`, `catching`, `reflex`, `players_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 42, 48, 69, 96, 25, 92, 6, 1, 1, '2021-05-03 10:56:19', '2021-05-03 10:56:19'),
(2, 63, 50, 83, 55, 39, 73, 67, 74, 2, 1, '2021-05-03 17:25:33', '2021-05-03 17:25:33'),
(3, 87, 72, 5, 2, 58, 43, 65, 1, 3, 1, '2021-05-04 11:36:48', '2021-05-04 11:36:48'),
(4, 14, 16, 14, 9, 8, 8, 2, 11, 4, 2, '2021-05-04 18:21:22', '2021-05-04 18:21:22'),
(5, 12, 10, 12, 12, 9, 8, 1, 10, 5, 2, '2021-05-04 18:23:57', '2021-05-04 18:23:57'),
(6, 8, 12, 8, 7, 7, 3, 2, 8, 6, 2, '2021-05-04 18:27:37', '2021-05-04 18:27:37'),
(7, 10, 7, 10, 6, 14, 13, 3, 12, 7, 2, '2021-05-04 18:30:50', '2021-05-04 18:30:50'),
(8, 10, 11, 10, 9, 11, 7, 3, 9, 8, 2, '2021-05-04 18:33:01', '2021-05-04 18:33:01'),
(10, 13, 12, 13, 11, 10, 13, 2, 11, 10, 2, '2021-05-04 18:35:22', '2021-05-04 18:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `dss_weights`
--

CREATE TABLE `dss_weights` (
  `id` int(10) UNSIGNED NOT NULL,
  `gk_speed` decimal(8,2) UNSIGNED NOT NULL,
  `gk_balance` decimal(8,2) UNSIGNED NOT NULL,
  `gk_strength` decimal(8,2) UNSIGNED NOT NULL,
  `gk_durability` decimal(8,2) UNSIGNED NOT NULL,
  `gk_agility` decimal(8,2) UNSIGNED NOT NULL,
  `gk_power` decimal(8,2) UNSIGNED NOT NULL,
  `gk_stamina` decimal(8,2) UNSIGNED NOT NULL,
  `gk_jumping` decimal(8,2) UNSIGNED NOT NULL,
  `gk_pass` decimal(8,2) UNSIGNED NOT NULL,
  `gk_control` decimal(8,2) UNSIGNED NOT NULL,
  `gk_long_pass` decimal(8,2) UNSIGNED NOT NULL,
  `gk_shot_acc` decimal(8,2) UNSIGNED NOT NULL,
  `gk_heading` decimal(8,2) UNSIGNED NOT NULL,
  `gk_tackle` decimal(8,2) UNSIGNED NOT NULL,
  `gk_catching` decimal(8,2) UNSIGNED NOT NULL,
  `gk_reflex` decimal(8,2) UNSIGNED NOT NULL,
  `gk_positioning` decimal(8,2) UNSIGNED NOT NULL,
  `gk_creative` decimal(8,2) UNSIGNED NOT NULL,
  `gk_determination` decimal(8,2) UNSIGNED NOT NULL,
  `gk_reading` decimal(8,2) UNSIGNED NOT NULL,
  `def_speed` decimal(8,2) UNSIGNED NOT NULL,
  `def_balance` decimal(8,2) UNSIGNED NOT NULL,
  `def_strength` decimal(8,2) UNSIGNED NOT NULL,
  `def_durability` decimal(8,2) UNSIGNED NOT NULL,
  `def_agility` decimal(8,2) UNSIGNED NOT NULL,
  `def_power` decimal(8,2) UNSIGNED NOT NULL,
  `def_stamina` decimal(8,2) UNSIGNED NOT NULL,
  `def_jumping` decimal(8,2) UNSIGNED NOT NULL,
  `def_pass` decimal(8,2) UNSIGNED NOT NULL,
  `def_control` decimal(8,2) UNSIGNED NOT NULL,
  `def_long_pass` decimal(8,2) UNSIGNED NOT NULL,
  `def_shot_acc` decimal(8,2) UNSIGNED NOT NULL,
  `def_heading` decimal(8,2) UNSIGNED NOT NULL,
  `def_tackle` decimal(8,2) UNSIGNED NOT NULL,
  `def_catching` decimal(8,2) UNSIGNED NOT NULL,
  `def_reflex` decimal(8,2) UNSIGNED NOT NULL,
  `def_positioning` decimal(8,2) UNSIGNED NOT NULL,
  `def_creative` decimal(8,2) UNSIGNED NOT NULL,
  `def_determination` decimal(8,2) UNSIGNED NOT NULL,
  `def_reading` decimal(8,2) UNSIGNED NOT NULL,
  `dm_speed` decimal(8,2) UNSIGNED NOT NULL,
  `dm_balance` decimal(8,2) UNSIGNED NOT NULL,
  `dm_strength` decimal(8,2) UNSIGNED NOT NULL,
  `dm_durability` decimal(8,2) UNSIGNED NOT NULL,
  `dm_agility` decimal(8,2) UNSIGNED NOT NULL,
  `dm_power` decimal(8,2) UNSIGNED NOT NULL,
  `dm_stamina` decimal(8,2) UNSIGNED NOT NULL,
  `dm_jumping` decimal(8,2) UNSIGNED NOT NULL,
  `dm_pass` decimal(8,2) UNSIGNED NOT NULL,
  `dm_control` decimal(8,2) UNSIGNED NOT NULL,
  `dm_long_pass` decimal(8,2) UNSIGNED NOT NULL,
  `dm_shot_acc` decimal(8,2) UNSIGNED NOT NULL,
  `dm_heading` decimal(8,2) UNSIGNED NOT NULL,
  `dm_tackle` decimal(8,2) UNSIGNED NOT NULL,
  `dm_catching` decimal(8,2) UNSIGNED NOT NULL,
  `dm_reflex` decimal(8,2) UNSIGNED NOT NULL,
  `dm_positioning` decimal(8,2) UNSIGNED NOT NULL,
  `dm_creative` decimal(8,2) UNSIGNED NOT NULL,
  `dm_determination` decimal(8,2) UNSIGNED NOT NULL,
  `dm_reading` decimal(8,2) UNSIGNED NOT NULL,
  `am_speed` decimal(8,2) UNSIGNED NOT NULL,
  `am_balance` decimal(8,2) UNSIGNED NOT NULL,
  `am_strength` decimal(8,2) UNSIGNED NOT NULL,
  `am_durability` decimal(8,2) UNSIGNED NOT NULL,
  `am_agility` decimal(8,2) UNSIGNED NOT NULL,
  `am_power` decimal(8,2) UNSIGNED NOT NULL,
  `am_stamina` decimal(8,2) UNSIGNED NOT NULL,
  `am_jumping` decimal(8,2) UNSIGNED NOT NULL,
  `am_pass` decimal(8,2) UNSIGNED NOT NULL,
  `am_control` decimal(8,2) UNSIGNED NOT NULL,
  `am_long_pass` decimal(8,2) UNSIGNED NOT NULL,
  `am_shot_acc` decimal(8,2) UNSIGNED NOT NULL,
  `am_heading` decimal(8,2) UNSIGNED NOT NULL,
  `am_tackle` decimal(8,2) UNSIGNED NOT NULL,
  `am_catching` decimal(8,2) UNSIGNED NOT NULL,
  `am_reflex` decimal(8,2) UNSIGNED NOT NULL,
  `am_positioning` decimal(8,2) UNSIGNED NOT NULL,
  `am_creative` decimal(8,2) UNSIGNED NOT NULL,
  `am_determination` decimal(8,2) UNSIGNED NOT NULL,
  `am_reading` decimal(8,2) UNSIGNED NOT NULL,
  `wing_speed` decimal(8,2) UNSIGNED NOT NULL,
  `wing_balance` decimal(8,2) UNSIGNED NOT NULL,
  `wing_strength` decimal(8,2) UNSIGNED NOT NULL,
  `wing_durability` decimal(8,2) UNSIGNED NOT NULL,
  `wing_agility` decimal(8,2) UNSIGNED NOT NULL,
  `wing_power` decimal(8,2) UNSIGNED NOT NULL,
  `wing_stamina` decimal(8,2) UNSIGNED NOT NULL,
  `wing_jumping` decimal(8,2) UNSIGNED NOT NULL,
  `wing_pass` decimal(8,2) UNSIGNED NOT NULL,
  `wing_control` decimal(8,2) UNSIGNED NOT NULL,
  `wing_long_pass` decimal(8,2) UNSIGNED NOT NULL,
  `wing_shot_acc` decimal(8,2) UNSIGNED NOT NULL,
  `wing_heading` decimal(8,2) UNSIGNED NOT NULL,
  `wing_tackle` decimal(8,2) UNSIGNED NOT NULL,
  `wing_catching` decimal(8,2) UNSIGNED NOT NULL,
  `wing_reflex` decimal(8,2) UNSIGNED NOT NULL,
  `wing_positioning` decimal(8,2) UNSIGNED NOT NULL,
  `wing_creative` decimal(8,2) UNSIGNED NOT NULL,
  `wing_determination` decimal(8,2) UNSIGNED NOT NULL,
  `wing_reading` decimal(8,2) UNSIGNED NOT NULL,
  `st_speed` decimal(8,2) UNSIGNED NOT NULL,
  `st_balance` decimal(8,2) UNSIGNED NOT NULL,
  `st_strength` decimal(8,2) UNSIGNED NOT NULL,
  `st_durability` decimal(8,2) UNSIGNED NOT NULL,
  `st_agility` decimal(8,2) UNSIGNED NOT NULL,
  `st_power` decimal(8,2) UNSIGNED NOT NULL,
  `st_stamina` decimal(8,2) UNSIGNED NOT NULL,
  `st_jumping` decimal(8,2) UNSIGNED NOT NULL,
  `st_pass` decimal(8,2) UNSIGNED NOT NULL,
  `st_control` decimal(8,2) UNSIGNED NOT NULL,
  `st_long_pass` decimal(8,2) UNSIGNED NOT NULL,
  `st_shot_acc` decimal(8,2) UNSIGNED NOT NULL,
  `st_heading` decimal(8,2) UNSIGNED NOT NULL,
  `st_tackle` decimal(8,2) UNSIGNED NOT NULL,
  `st_catching` decimal(8,2) UNSIGNED NOT NULL,
  `st_reflex` decimal(8,2) UNSIGNED NOT NULL,
  `st_positioning` decimal(8,2) UNSIGNED NOT NULL,
  `st_creative` decimal(8,2) UNSIGNED NOT NULL,
  `st_determination` decimal(8,2) UNSIGNED NOT NULL,
  `st_reading` decimal(8,2) UNSIGNED NOT NULL,
  `userPref_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dss_weights`
--

INSERT INTO `dss_weights` (`id`, `gk_speed`, `gk_balance`, `gk_strength`, `gk_durability`, `gk_agility`, `gk_power`, `gk_stamina`, `gk_jumping`, `gk_pass`, `gk_control`, `gk_long_pass`, `gk_shot_acc`, `gk_heading`, `gk_tackle`, `gk_catching`, `gk_reflex`, `gk_positioning`, `gk_creative`, `gk_determination`, `gk_reading`, `def_speed`, `def_balance`, `def_strength`, `def_durability`, `def_agility`, `def_power`, `def_stamina`, `def_jumping`, `def_pass`, `def_control`, `def_long_pass`, `def_shot_acc`, `def_heading`, `def_tackle`, `def_catching`, `def_reflex`, `def_positioning`, `def_creative`, `def_determination`, `def_reading`, `dm_speed`, `dm_balance`, `dm_strength`, `dm_durability`, `dm_agility`, `dm_power`, `dm_stamina`, `dm_jumping`, `dm_pass`, `dm_control`, `dm_long_pass`, `dm_shot_acc`, `dm_heading`, `dm_tackle`, `dm_catching`, `dm_reflex`, `dm_positioning`, `dm_creative`, `dm_determination`, `dm_reading`, `am_speed`, `am_balance`, `am_strength`, `am_durability`, `am_agility`, `am_power`, `am_stamina`, `am_jumping`, `am_pass`, `am_control`, `am_long_pass`, `am_shot_acc`, `am_heading`, `am_tackle`, `am_catching`, `am_reflex`, `am_positioning`, `am_creative`, `am_determination`, `am_reading`, `wing_speed`, `wing_balance`, `wing_strength`, `wing_durability`, `wing_agility`, `wing_power`, `wing_stamina`, `wing_jumping`, `wing_pass`, `wing_control`, `wing_long_pass`, `wing_shot_acc`, `wing_heading`, `wing_tackle`, `wing_catching`, `wing_reflex`, `wing_positioning`, `wing_creative`, `wing_determination`, `wing_reading`, `st_speed`, `st_balance`, `st_strength`, `st_durability`, `st_agility`, `st_power`, `st_stamina`, `st_jumping`, `st_pass`, `st_control`, `st_long_pass`, `st_shot_acc`, `st_heading`, `st_tackle`, `st_catching`, `st_reflex`, `st_positioning`, `st_creative`, `st_determination`, `st_reading`, `userPref_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '0.99', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '0.00', '1.00', '1.00', '0.00', '1.00', '0.00', '1.00', '1.00', '1.00', '0.00', '1.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '0.00', '0.00', '1.00', '0.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '1.00', '0.00', '1.00', '0.00', '0.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '0.00', '1.00', '0.00', '1.00', '0.00', '1.00', '0.00', '1.00', '0.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.00', '1.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', 1, 1, '2021-05-04 11:35:25', '2021-05-09 07:47:57'),
(2, '1.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.00', '1.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '1.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', 2, 2, '2021-05-04 17:45:28', '2021-05-04 18:56:50');

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
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `id` int(10) UNSIGNED NOT NULL,
  `homeaway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_date` date NOT NULL,
  `team_score` int(10) UNSIGNED NOT NULL,
  `opp_score` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `opp_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`id`, `homeaway`, `match_date`, `team_score`, `opp_score`, `created_at`, `updated_at`, `opp_id`, `user_id`) VALUES
(2, 'Away', '2021-05-04', 2, 1, '2021-05-03 11:30:34', '2021-05-03 16:21:23', 2, 1),
(3, 'Away', '2021-05-01', 1, 1, '2021-05-03 16:21:16', '2021-05-03 16:21:16', 2, 1),
(4, 'Home', '2021-05-01', 3, 0, '2021-05-04 17:51:24', '2021-05-04 17:53:00', 3, 2),
(6, 'Away', '2021-05-01', 2, 2, '2021-05-04 17:51:58', '2021-05-04 17:51:58', 4, 2),
(7, 'Home', '2021-05-02', 0, 1, '2021-05-04 17:52:16', '2021-05-04 17:52:16', 5, 2),
(8, 'Home', '2021-05-03', 1, 0, '2021-05-04 17:52:27', '2021-05-04 17:52:27', 6, 2),
(9, 'Home', '2021-05-05', 1, 0, '2021-05-04 17:52:39', '2021-05-04 17:52:39', 7, 2);

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2015_04_12_000000_create_orchid_users_table', 1),
(21, '2015_10_19_214424_create_orchid_roles_table', 1),
(22, '2015_10_19_214425_create_orchid_role_users_table', 1),
(23, '2016_08_07_125128_create_orchid_attachmentstable_table', 1),
(24, '2017_09_17_125801_create_notifications_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2021_04_15_130604_create_user_teams_table', 1),
(27, '2021_04_15_131542_create_opponents_table', 1),
(28, '2021_04_15_184058_create_fixtures_table', 1),
(29, '2021_04_22_124455_create_players_table', 1),
(30, '2021_04_24_153215_create_att_physicals_table', 1),
(31, '2021_04_24_153238_create_att_technicals_table', 1),
(32, '2021_04_24_153250_create_att_tacticals_table', 1),
(33, '2021_04_29_182215_create_dss_weights_table', 1),
(34, '2021_05_01_152021_create_player_stats_table', 1),
(35, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opponents`
--

CREATE TABLE `opponents` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opponents`
--

INSERT INTO `opponents` (`id`, `team_name`, `abv`, `urlImage`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'FC United of Manchester', 'FCUM', '/storage/2021/05/03/4094a5edbda10d3051c231aaf6a3d34761136ea9.png', '2021-05-03 11:30:25', '2021-05-03 11:30:25', 1),
(3, 'Everton FC', 'EVE', '/storage/2021/05/05/eb02ff6a34ff92fb1c71c1a681fb8538fa1bf37c.png', '2021-05-04 17:47:12', '2021-05-04 17:47:12', 2),
(4, 'FC United of Manchester', 'FCM', '/storage/2021/05/05/aabfad11a3e0ff1a5e6d4e7409717bb9e4d08116.png', '2021-05-04 17:47:35', '2021-05-04 17:47:35', 2),
(5, 'FC Midtjylland', 'MDT', '/storage/2021/05/05/b0308e20d88cbd02a83d46b5d5284c0a3e277778.png', '2021-05-04 17:49:51', '2021-05-04 17:49:51', 2),
(6, 'Brentford FC', 'BFC', '/storage/2021/05/05/62c4b93b764373b688b0040372dfd6bc047cc742.png', '2021-05-04 17:50:10', '2021-05-04 17:50:10', 2),
(7, 'Brighton & Hove Albion', 'BHA', '/storage/2021/05/05/23fbac2a689b5dcd573aea51adfdd3a53da84324.png', '2021-05-04 17:50:37', '2021-05-04 17:50:37', 2),
(8, 'Barrow AFC', 'BFC', '/storage/2021/05/05/e5ae8a53ed8bcb2782bb95d9147d45babb26ab18.png', '2021-05-04 17:50:56', '2021-05-04 17:50:56', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jovianos99@gmail.com', '$2y$10$R4ffNR3FMAd0ZE32zmf30.404EdXdLhnLwtfL4B6kWi81lU0dcnmi', '2021-05-05 22:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthDate` date NOT NULL,
  `prefFoot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NOT NULL,
  `urlImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `position`, `birthDate`, `prefFoot`, `weight`, `height`, `number`, `urlImage`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Kory Tromp', 'Goalkeeper', '2021-03-08', 'Left', 23, 99, 66, '/storage/2021/05/03/87ae0b3387895bf3ba78e293fd2dfc636a9ba5a7.png', '2021-05-03 10:56:19', '2021-05-03 10:56:19', 1),
(2, 'Marilou Bartell', 'Forward', '2021-07-16', 'Left', 163, 195, 98, '/storage/2021/05/04/47a4451991a561308576e07739510b72d553f270.png', '2021-05-03 17:25:33', '2021-05-03 17:25:33', 1),
(3, 'Duane Towne', 'Defender', '2021-08-28', 'Left', 65, 46, 40, '/storage/2021/05/05/db689c1fa6a8b6f76c9ba6cb24748bb12926273e.png', '2021-05-04 11:36:48', '2021-05-05 16:49:26', 1),
(4, 'Ovie Ejaria', 'Att. Midfield', '2021-05-05', 'Right', 80, 190, 10, '/storage/2021/05/05/dc0ee497c942986fcf1df1f80c2d60eccbde2000.png', '2021-05-04 18:21:22', '2021-05-04 18:21:22', 2),
(5, 'Sean Longstaff', 'Def. Midfield', '1997-10-30', 'Right', 80, 190, 6, '/storage/2021/05/05/d80117911fe99417a493559e68d79ade3b28aafe.png', '2021-05-04 18:23:57', '2021-05-04 18:24:19', 2),
(6, 'Aaron Wan-Bissaka', 'Defender', '1997-11-26', 'Right', 80, 190, 2, '/storage/2021/05/05/f26d2ad19a280ef1c2b94f5eba5fe954255875e1.png', '2021-05-04 18:27:37', '2021-05-04 18:27:37', 2),
(7, 'Tosin Adarabioyo', 'Defender', '1997-09-24', 'Right', 90, 190, 3, '/storage/2021/05/05/b752d41240892cdd8a5eeaee4b3f7cc45b1e3cf7.png', '2021-05-04 18:30:49', '2021-05-04 18:30:49', 2),
(8, 'Callum O\'Hare', 'Att. Midfield', '1998-05-01', 'Right', 80, 190, 11, '/storage/2021/05/05/b741c9e0f866c3a3161f5572f257eeca38fc6389.png', '2021-05-04 18:33:01', '2021-05-04 18:33:01', 2),
(10, 'Tom Davies', 'Def. Midfield', '1998-06-30', 'Right', 80, 190, 6, '/storage/2021/05/09/699ae7c774c2ea419e2bdcdcab6ce62a63de9970.png', '2021-05-04 18:35:22', '2021-05-09 11:37:09', 2);

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `id` int(10) UNSIGNED NOT NULL,
  `min_played` int(10) UNSIGNED NOT NULL,
  `goals` int(10) UNSIGNED NOT NULL,
  `assist` int(10) UNSIGNED NOT NULL,
  `goals_conceded` int(10) UNSIGNED NOT NULL,
  `own_goals` int(10) UNSIGNED NOT NULL,
  `yellow_c` int(10) UNSIGNED NOT NULL,
  `red_c` int(10) UNSIGNED NOT NULL,
  `touches_t` int(10) UNSIGNED NOT NULL,
  `touches_opp_half` int(10) UNSIGNED NOT NULL,
  `touches_f3` int(10) UNSIGNED NOT NULL,
  `min_touches` int(10) UNSIGNED NOT NULL,
  `pass_received_t` int(10) UNSIGNED NOT NULL,
  `pass_received_opp_half` int(10) UNSIGNED NOT NULL,
  `pass_received_f3` int(10) UNSIGNED NOT NULL,
  `min_pass_received` int(10) UNSIGNED NOT NULL,
  `take_ons_t` int(10) UNSIGNED NOT NULL,
  `take_ons_s` int(10) UNSIGNED NOT NULL,
  `take_ons_s_p` int(10) UNSIGNED NOT NULL,
  `pass_t` int(10) UNSIGNED NOT NULL,
  `pass_s` int(10) UNSIGNED NOT NULL,
  `pass_s_p` int(10) UNSIGNED NOT NULL,
  `chance_created` int(10) UNSIGNED NOT NULL,
  `big_chance_created` int(10) UNSIGNED NOT NULL,
  `min_chance_created` int(10) UNSIGNED NOT NULL,
  `goals_threat` int(10) UNSIGNED NOT NULL,
  `min_goals` int(10) UNSIGNED NOT NULL,
  `attempts_t` int(10) UNSIGNED NOT NULL,
  `attempts_on_target` int(10) UNSIGNED NOT NULL,
  `min_attempts` int(10) UNSIGNED NOT NULL,
  `shot_acc` int(10) UNSIGNED NOT NULL,
  `goal_conversion` int(10) UNSIGNED NOT NULL,
  `aerial_t` int(10) UNSIGNED NOT NULL,
  `aerial_w` int(10) UNSIGNED NOT NULL,
  `aerial_w_p` int(10) UNSIGNED NOT NULL,
  `tackles_t` int(10) UNSIGNED NOT NULL,
  `tackles_w` int(10) UNSIGNED NOT NULL,
  `tackles_w_p` int(10) UNSIGNED NOT NULL,
  `interceptions` int(10) UNSIGNED NOT NULL,
  `recoveries` int(10) UNSIGNED NOT NULL,
  `clearances` int(10) UNSIGNED NOT NULL,
  `blocks` int(10) UNSIGNED NOT NULL,
  `err_chance` int(10) UNSIGNED NOT NULL,
  `err_goals` int(10) UNSIGNED NOT NULL,
  `fixtures_id` int(10) UNSIGNED NOT NULL,
  `player_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_stats`
--

INSERT INTO `player_stats` (`id`, `min_played`, `goals`, `assist`, `goals_conceded`, `own_goals`, `yellow_c`, `red_c`, `touches_t`, `touches_opp_half`, `touches_f3`, `min_touches`, `pass_received_t`, `pass_received_opp_half`, `pass_received_f3`, `min_pass_received`, `take_ons_t`, `take_ons_s`, `take_ons_s_p`, `pass_t`, `pass_s`, `pass_s_p`, `chance_created`, `big_chance_created`, `min_chance_created`, `goals_threat`, `min_goals`, `attempts_t`, `attempts_on_target`, `min_attempts`, `shot_acc`, `goal_conversion`, `aerial_t`, `aerial_w`, `aerial_w_p`, `tackles_t`, `tackles_w`, `tackles_w_p`, `interceptions`, `recoveries`, `clearances`, `blocks`, `err_chance`, `err_goals`, `fixtures_id`, `player_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, '2021-05-04 00:07:26', '2021-05-04 00:07:26'),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, '2021-05-04 00:07:26', '2021-05-04 00:07:26'),
(6, 234, 815, 304, 632, 290, 783, 684, 443, 945, 197, 1, 500, 227, 297, 0, 243, 7, 0, 939, 157, 0, 529, 7, 0, 815, 0, 724, 36, 0, 0, 1, 493, 245, 0, 653, 472, 1, 336, 772, 67, 371, 871, 312, 3, 2, 1, '2021-05-04 07:24:51', '2021-05-04 07:56:23'),
(7, 899, 417, 950, 707, 293, 221, 720, 7, 138, 258, 128, 872, 794, 122, 1, 475, 975, 2, 994, 464, 0, 586, 455, 2, 417, 2, 288, 169, 3, 1, 1, 55, 333, 6, 841, 364, 0, 180, 874, 549, 974, 739, 178, 3, 3, 1, '2021-05-04 16:00:46', '2021-05-04 16:00:46'),
(8, 90, 1, 0, 0, 0, 0, 0, 13, 64, 85, 7, 49, 54, 53, 2, 32, 87, 3, 4, 19, 5, 90, 76, 1, 1, 90, 53, 47, 2, 1, 0, 84, 16, 0, 68, 61, 1, 80, 9, 66, 7, 16, 8, 4, 4, 2, '2021-05-04 18:37:59', '2021-05-04 18:39:46'),
(9, 89, 2, 0, 0, 0, 0, 0, 67, 53, 61, 1, 95, 0, 61, 1, 27, 51, 2, 22, 23, 1, 28, 89, 3, 2, 45, 20, 8, 4, 0, 0, 68, 7, 0, 37, 88, 2, 75, 14, 86, 42, 24, 38, 7, 4, 2, '2021-05-04 18:40:58', '2021-05-04 18:40:58'),
(10, 90, 0, 1, 0, 0, 0, 0, 27, 35, 17, 3, 12, 32, 41, 8, 9, 16, 2, 33, 36, 1, 88, 98, 1, 0, 0, 72, 44, 1, 1, 0, 45, 2, 0, 15, 84, 6, 94, 40, 63, 36, 15, 50, 7, 5, 2, '2021-05-04 18:50:14', '2021-05-04 18:50:14'),
(11, 70, 0, 0, 0, 0, 0, 0, 82, 40, 99, 1, 18, 80, 71, 4, 10, 95, 10, 78, 76, 1, 11, 58, 6, 0, 0, 43, 9, 2, 0, 0, 7, 83, 12, 79, 19, 0, 0, 23, 59, 2, 70, 53, 8, 6, 2, '2021-05-04 18:51:07', '2021-05-04 18:51:07'),
(12, 90, 2, 1, 0, 0, 0, 0, 29, 97, 17, 3, 56, 20, 41, 2, 8, 2, 0, 40, 28, 1, 8, 92, 11, 2, 45, 35, 12, 3, 0, 0, 59, 15, 0, 74, 65, 1, 61, 90, 38, 32, 54, 98, 4, 7, 2, '2021-05-04 18:51:46', '2021-05-04 18:51:46'),
(13, 90, 0, 0, 0, 0, 0, 1, 42, 9, 65, 2, 37, 25, 73, 2, 14, 39, 3, 60, 33, 1, 37, 75, 2, 0, 0, 25, 7, 4, 0, 0, 55, 66, 1, 53, 42, 1, 65, 22, 41, 89, 49, 38, 7, 8, 2, '2021-05-04 18:52:30', '2021-05-04 18:52:30'),
(14, 90, 0, 2, 1, 0, 0, 0, 51, 42, 67, 2, 42, 87, 85, 2, 57, 83, 1, 63, 22, 0, 61, 86, 1, 0, 0, 89, 79, 1, 1, 0, 96, 43, 0, 63, 91, 1, 44, 40, 99, 88, 92, 19, 8, 10, 2, '2021-05-04 18:53:03', '2021-05-04 18:53:03'),
(15, 90, 1, 0, 0, 0, 0, 0, 70, 38, 47, 1, 8, 26, 6, 11, 35, 46, 1, 63, 61, 1, 43, 51, 2, 1, 90, 88, 37, 1, 0, 0, 56, 52, 1, 87, 82, 1, 17, 95, 0, 85, 90, 86, 8, 4, 2, '2021-05-04 18:57:58', '2021-05-04 18:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `permissions`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$TyzC1mOHpCfdTieAN1NOM.tt2fuFuDwLzUCYz0WloPqNj5PgAs2LW', NULL, NULL, 'vNlVEBPRRPqmEIytFCs2xyzZ2ZR2UhLipAojURueZTIZgbrbbrZTljhXONrb', '2021-05-03 10:55:52', '2021-05-03 10:55:52', '{\"platform.systems.roles\":true,\"platform.systems.users\":true,\"platform.systems.attachment\":true,\"platform.index\":true,\"platform.systems.index\":true}'),
(2, 'Jovi', 'jovianos99@gmail.com', NULL, '$2y$10$I09v5/futQcioMaEvoiUgu1oCqNx7kQMY1/KPoKXjVo9oNuA5hofO', NULL, NULL, 'R4EWIO56mjamtn2QhsoOPhYUn0DWJeC2MweCxWkkqjH3y8uKZTVts2u7jMaE', '2021-05-04 17:36:43', '2021-05-04 17:36:43', '{\"platform.index\":\"1\",\"platform.systems.index\":\"0\",\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\"}'),
(3, 'admin2', 'admin@gmail.com', NULL, '$2y$10$bthBqbdY4lQR5HMNWTs4N.jRUh57E0WKfDtFJ8r2fNqfPNh76oyA.', NULL, NULL, 'nOcyyMlQPglZcoK3Ga0UiYZHZsnhjNtp20NaXBenfURFWGaqmiL2SglcgeBi', '2021-05-05 16:04:30', '2021-05-05 16:11:56', '{\"platform.index\":\"1\",\"platform.systems.index\":\"0\",\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\"}'),
(7, 'Joviano Siahaan', 'siahaan.jv@gmail.com', NULL, '$2y$10$nuQ7E8zINICd.qqTXaUqBujb94M8WrAHJ6lweDqMDGKXnQcAz7cOq', NULL, NULL, NULL, '2021-05-05 17:34:53', '2021-05-05 17:34:53', '{\"platform.index\":\"1\",\"platform.systems.index\":\"0\",\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\"}'),
(8, 'artgwerte', 'admin@google.com', NULL, '$2y$10$jS1zoQ7jeMWgB8mlnOLZu.Qx88CibqeOhluaU1mkae9eeYTGZAiNy', NULL, NULL, NULL, '2021-05-05 17:35:32', '2021-05-05 17:35:32', '{\"platform.index\":\"1\",\"platform.systems.index\":\"0\",\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `user_teams`
--

CREATE TABLE `user_teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachmentable_attachmentable_type_attachmentable_id_index` (`attachmentable_type`,`attachmentable_id`),
  ADD KEY `attachmentable_attachment_id_foreign` (`attachment_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `att_physicals`
--
ALTER TABLE `att_physicals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_physicals_players_id_foreign` (`players_id`),
  ADD KEY `att_physicals_user_id_foreign` (`user_id`);

--
-- Indexes for table `att_tacticals`
--
ALTER TABLE `att_tacticals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_tacticals_players_id_foreign` (`players_id`),
  ADD KEY `att_tacticals_user_id_foreign` (`user_id`);

--
-- Indexes for table `att_technicals`
--
ALTER TABLE `att_technicals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_technicals_players_id_foreign` (`players_id`),
  ADD KEY `att_technicals_user_id_foreign` (`user_id`);

--
-- Indexes for table `dss_weights`
--
ALTER TABLE `dss_weights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dss_weights_userpref_id_foreign` (`userPref_id`),
  ADD KEY `dss_weights_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fixtures_opp_id_foreign` (`opp_id`),
  ADD KEY `fixtures_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `opponents`
--
ALTER TABLE `opponents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opponents_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_user_id_foreign` (`user_id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_stats_fixtures_id_foreign` (`fixtures_id`),
  ADD KEY `player_stats_player_id_foreign` (`player_id`),
  ADD KEY `player_stats_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_teams`
--
ALTER TABLE `user_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_teams_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachmentable`
--
ALTER TABLE `attachmentable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `att_physicals`
--
ALTER TABLE `att_physicals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `att_tacticals`
--
ALTER TABLE `att_tacticals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `att_technicals`
--
ALTER TABLE `att_technicals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dss_weights`
--
ALTER TABLE `dss_weights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixtures`
--
ALTER TABLE `fixtures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `opponents`
--
ALTER TABLE `opponents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `player_stats`
--
ALTER TABLE `player_stats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_teams`
--
ALTER TABLE `user_teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD CONSTRAINT `attachmentable_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `att_physicals`
--
ALTER TABLE `att_physicals`
  ADD CONSTRAINT `att_physicals_players_id_foreign` FOREIGN KEY (`players_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `att_physicals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `att_tacticals`
--
ALTER TABLE `att_tacticals`
  ADD CONSTRAINT `att_tacticals_players_id_foreign` FOREIGN KEY (`players_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `att_tacticals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `att_technicals`
--
ALTER TABLE `att_technicals`
  ADD CONSTRAINT `att_technicals_players_id_foreign` FOREIGN KEY (`players_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `att_technicals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `dss_weights`
--
ALTER TABLE `dss_weights`
  ADD CONSTRAINT `dss_weights_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dss_weights_userpref_id_foreign` FOREIGN KEY (`userPref_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD CONSTRAINT `fixtures_opp_id_foreign` FOREIGN KEY (`opp_id`) REFERENCES `opponents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fixtures_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `opponents`
--
ALTER TABLE `opponents`
  ADD CONSTRAINT `opponents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD CONSTRAINT `player_stats_fixtures_id_foreign` FOREIGN KEY (`fixtures_id`) REFERENCES `fixtures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_stats_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_stats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_teams`
--
ALTER TABLE `user_teams`
  ADD CONSTRAINT `user_teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
