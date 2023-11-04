-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2023 at 07:08 AM
-- Server version: 5.7.43-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allo_chef_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_en` longtext COLLATE utf8mb4_unicode_ci,
  `body_ar` longtext COLLATE utf8mb4_unicode_ci,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=>user, 1=>delegate, 2=>driver',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `image`, `phone`, `email`, `website`, `facebook`, `twitter`, `instagram`, `linkedin`, `body_en`, `body_ar`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '162653732460f2fd6c42050.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alo Chef is the first company in the world that seeks to facilitate home cooking instead of dispensing with fast food or restaurants, and this is what the CEO of the company, Chef Ihab Dalati, and a group of distinguished chefs are keen to present.\r\nIn 2018, Alo Chef started with the idea of ​​collaborating with world-class chefs with the aim of bringing people together around the dining table, no matter how difficult their day may be by reducing the time required to create a delicious recipe.\r\nIt makes enjoying home cooking after a long day out easy, simple, intuitive and inspiring from the internet to the doorstep and then to the kitchen table.\r\nAfter designing delicious and easy-to-cook recipes and introducing them to the Egyptian market, the Alo Chef team has grown to include many professional chefs, and more than 200 employees and workers in the fields of production, marketing, technology, product, design and customer service.', 'شركة ألو شيف هي أول شركة بالعالم تسعى لتسهيل الطبخ المنزلي بدلاً من الاستغناء عنه بالأكلات السريعة أو المطاعم، وهذا ما يحرص على تقديمه الرئيس التنفيذي للشركة الشيف / إيهاب دالاتي ومعه مجموعة من الطهاة المتميزين.	\r\nفي عام ٢٠١٨ بدأت شركة ألو شيف بفكرة التعاون مع طهاة عالميين وذلك بهدف جمع الناس معاً حول مائدة الطعام مهما كانت ظروف يومهم الصعبة عن طريق تقليل الوقت المطلوب لصنع وصفة لذيذة.\r\nمما يجعل الاستمتاع بالطهي المنزلي بعد يوم طويل في الخارج أمراً سهلاً وبسيطًا وبديهيا وملهمًا من خلال الإنترنت إلى عتبة الباب ثم إلى طاولة المطبخ.\r\nبعد تصميم وصفات لذيذة وسهلة التحضير وطرحها في السوق المصري أخذ فريق ألو شيف في النمو ليشمل العديد من الطهاة المحترفين، وأكثر من ٢٠٠ موظفًا وعاملاً في مجالات الإنتاج والتسويق والتكنولوجيا والمنتجات والتصميم وخدمة العملاء.', 0, NULL, '2020-05-10 02:59:50', '2021-07-18 00:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_admin.png',
  `app_percent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_percent` double NOT NULL DEFAULT '0',
  `user_max_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `delegate_max_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `driver_max_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `person_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `active`, `name`, `email`, `phone`, `password`, `image`, `app_percent`, `fee_percent`, `user_max_value`, `delegate_max_value`, `driver_max_value`, `person_image`, `cover_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', '0123', '$2y$10$WzA1B9pKmdZ4pbr5EC4QJeKdkQNTabl9sccJwiN6KIGSr4knD/LFm', 'logo.png', '10', 15, '200000', '200000', '200000', NULL, NULL, '2020-03-12 22:00:00', '2021-04-21 10:26:56'),
(5, 1, 'amera', 'ameragrand@gmail.com', '0124658979', '$2y$10$i/0tAOYJGUtahMpgYPYkKe7gGc9Is5RCSMRXV89XVjc8o6EeQec1O', '1679959803642226fb34588.png', NULL, 0, '1', '1', '1', NULL, NULL, '2021-02-23 09:29:39', '2023-05-19 02:10:58'),
(6, 1, 'Nada', 'nada.mahany1@gmail.com', '01061334326', '$2y$10$D/hDC2IaN/VyfHCNzc5VJO6oX2wk/TUtXd.Z5omGFi1B.5lChGeU6', '168822838964a0522544171.png', NULL, 0, '1', '1', '1', NULL, NULL, '2023-07-02 01:19:49', '2023-07-02 01:49:07'),
(7, 1, 'Ahmed', 'ahmed@gmail.com', '013902', '$2y$10$MOQqwA3x9VyZGkibRlMNyepNzLKWvJr3VAEqr4nDHA07G9Y.nD1lK', '168823023264a059586ac70.png', NULL, 0, '1', '1', '1', NULL, NULL, '2023-07-02 01:50:32', '2023-07-02 01:50:32'),
(8, 1, 'Nada', 'nada.mahany1@gmail.com', '01061334326', '$2y$10$VwOtP.dHFfVOuBLNLmODB.ppMZZB0ACUnjxXcl/GZTaGIvtF2umZS', '168823036664a059de53fe8.png', NULL, 0, '1', '1', '1', NULL, NULL, '2023-07-02 01:52:46', '2023-07-02 01:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `app_explanations`
--

CREATE TABLE `app_explanations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_explanations`
--

INSERT INTO `app_explanations` (`id`, `en_title`, `ar_title`, `en_body`, `ar_body`, `image`, `privacy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Allo Chef APP', 'تطبيق الو شيف', 'Organize your cooking schedule with us', 'نظمي معنا جدول طبخاتك الاسبوعية', '1628193344610c4240504f0.jpg', 0, NULL, '2019-11-03 16:16:25', '2021-08-06 04:55:44'),
(2, 'Allo Chef APP', 'تطبيق الو شيف', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت ...', '162422266260cfabc67232d.png', 1, '2021-07-15 03:02:13', '2019-11-03 16:16:25', '2021-07-15 03:02:13'),
(3, 'Allo Chef APP', 'تطبيق الو شيف', 'You can find new recipes every day', 'تستطيع أن تجد كل يوم طبخات جديدة', '1628193323610c422b3ff61.jpg', 0, NULL, '2019-11-03 16:16:25', '2021-08-06 04:55:23'),
(4, 'test 3', 'تست 3', 'test 3', 'تست 3', '', 0, '2021-06-21 05:51:38', '2019-11-03 16:16:25', '2021-06-21 05:51:38'),
(5, 'ww2', 'qq1', 'ww4', 'qq3', '162293203460bbfa42dd0df.jpg', 0, '2021-06-21 05:51:44', '2021-06-06 07:26:13', '2021-06-21 05:51:44'),
(6, 'Allo Chef APP', 'تطبيق ألو شيف', 'Who needs Alo Chef application services?', 'من يحتاج خدمات تطبيق ألو شيف ؟', '1628193305610c42190f655.jpg', 0, NULL, '2021-07-18 01:08:52', '2021-08-06 04:55:05'),
(7, 'Allo Chef APP', 'تطبيق ألو شيف', 'The perfect solution to the problem of choosing today\'s food', 'الحل الأمثل لمشكلة أختيار أكلة اليوم', '1628193286610c42064b427.jpg', 0, NULL, '2021-08-06 04:29:43', '2021-08-06 04:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', 'Cairo', 1, NULL, '2020-05-10 02:59:50', '2023-07-15 06:34:43'),
(2, 'الجيزة', 'Giza', 1, NULL, '2020-05-10 02:59:50', '2023-07-15 06:34:37'),
(3, 'القليوبية', 'Qalyobia', 1, NULL, '2021-06-06 09:03:30', '2023-07-15 08:01:37'),
(4, 'الاسكندرية', 'Alexandria', 0, NULL, '2021-06-06 09:44:00', '2021-07-17 02:16:39'),
(5, 'البحيرة', 'Albohira', 0, NULL, '2021-06-21 06:19:34', '2021-07-17 02:16:45'),
(6, 'مطروح', 'Matrouh', 0, NULL, '2021-07-15 03:41:00', '2021-07-17 02:16:53'),
(7, 'دمياط', 'Domiat', 0, NULL, '2021-07-17 01:48:29', '2021-07-17 02:17:00'),
(8, 'الدقهلية', 'Aldakahlyah', 0, NULL, '2021-07-17 01:49:41', '2021-07-17 02:17:03'),
(9, 'كفر الشيخ', 'Kafr-Alshikh', 0, NULL, '2021-07-17 01:50:26', '2021-07-17 02:17:07'),
(10, 'الغربية', 'Algharbiya', 0, NULL, '2021-07-17 01:51:24', '2021-07-17 02:17:11'),
(11, 'فارغ', 'E', 0, NULL, '2021-07-17 01:51:54', '2021-07-17 02:21:20'),
(12, 'فارغ', 'E', 0, NULL, '2021-07-17 01:52:28', '2021-07-17 02:22:16'),
(13, 'فارغ', 'E', 0, NULL, '2021-07-17 01:53:09', '2021-07-17 02:20:55'),
(14, 'فارغ', 'E', 0, NULL, '2021-07-17 01:53:46', '2021-07-17 02:21:54'),
(15, 'المنوفية', 'Almonofyah', 0, NULL, '2021-07-17 01:54:05', '2021-07-17 02:17:19'),
(16, 'الشرقية', 'Alsharqiah', 0, NULL, '2021-07-17 01:54:33', '2021-07-17 02:17:25'),
(17, 'بورسعيد', 'Portsaid', 0, NULL, '2021-07-17 01:55:18', '2021-07-17 02:17:30'),
(18, 'الاسماعيلية', 'Alismailia', 0, NULL, '2021-07-17 01:56:09', '2021-07-17 02:17:35'),
(19, 'السويس', 'Alsuez', 0, NULL, '2021-07-17 01:56:43', '2021-07-17 02:17:38'),
(20, 'شمال سيناء', 'North Sinai', 0, NULL, '2021-07-17 01:57:35', '2021-07-17 02:17:43'),
(21, 'جنوب سيناء', 'South Sinaa', 0, NULL, '2021-07-17 01:57:59', '2021-07-17 02:23:02'),
(22, 'بني سويف', 'Banisweif', 0, NULL, '2021-07-17 01:58:37', '2021-07-17 02:23:08'),
(23, 'الفيوم', 'Alfayoum', 0, NULL, '2021-07-17 01:58:59', '2021-07-17 02:23:13'),
(24, 'المنيا', 'Alminya', 0, NULL, '2021-07-17 01:59:21', '2021-07-17 02:22:34'),
(25, 'أسيوط', 'Asyut', 0, NULL, '2021-07-17 01:59:50', '2021-07-17 02:17:48'),
(26, 'الوادي الجديد', 'Aleadialjaded', 0, NULL, '2021-07-17 02:14:10', '2021-07-17 02:22:57'),
(27, 'البحر الاحمر', 'Red Sea', 0, NULL, '2021-07-17 02:14:54', '2021-07-17 02:22:52'),
(28, 'سوهاج', 'Sohag', 0, NULL, '2021-07-17 02:15:20', '2021-07-17 02:22:48'),
(29, 'قنا', 'Qina', 0, NULL, '2021-07-17 02:15:34', '2021-07-17 02:22:43'),
(30, 'الاقصر', 'Aloqsor', 0, NULL, '2021-07-17 02:16:03', '2021-07-17 02:22:39'),
(31, 'أسوان', 'Aswan', 0, NULL, '2021-07-17 02:16:18', '2021-07-17 02:23:17'),
(32, 'الأآسماعلية', 'Ismailia', 0, NULL, '2021-07-24 22:03:45', '2021-07-24 22:04:00'),
(33, 'مطروح', 'Matroo7', 1, NULL, '2023-07-15 06:49:53', '2023-07-15 06:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `is_read`, `name`, `email`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`, `notes`) VALUES
(1, 0, 'aa', 'aa@aa.com', '0163546846', 'jhgbiushf uhfkjchb iuheidfhbn', NULL, '2021-05-13 03:14:37', '2021-05-13 03:14:37', NULL),
(2, 0, 'aa', 'aa@aa.com', '0163546846', 'jhgbiushf uhfkjchb iuheidfhbn', NULL, '2021-05-13 10:58:47', '2021-05-13 10:58:47', NULL),
(3, 0, 'QQ', 'QQ@QQ.com', '0123456788', 'Allo', NULL, '2021-05-13 11:00:16', '2021-05-13 11:00:16', NULL),
(4, 0, 'aa', 'aa@aa.com', '0163546846', 'jhgbiushf uhfkjchb iuheidfhbn', NULL, '2021-05-17 21:44:11', '2021-05-17 21:44:11', NULL),
(5, 0, 'aaq', 'aaq@aa.com', '01635468460', 'jhgbiushf uhfkjchb iuheidfhbn  q', NULL, '2021-05-18 07:21:06', '2021-05-18 07:21:06', NULL),
(6, 0, 'cbbcbc', 'bccbcb@gmail.com', NULL, 'hdjfjf', NULL, '2021-05-26 06:11:28', '2021-05-26 06:11:28', NULL),
(7, 0, 'rr', 'rr@rr.com', NULL, 'rr rr', NULL, '2021-07-05 20:44:15', '2021-07-05 20:44:15', NULL),
(8, 0, 'ali', 'ali@gmail.com', NULL, 'test mr ihab', NULL, '2021-07-15 03:23:02', '2021-07-15 03:23:02', NULL),
(9, 0, NULL, NULL, NULL, 'Write Your Message', NULL, '2021-07-17 01:15:38', '2021-07-17 01:15:38', NULL),
(10, 0, 'bakry', 'tawfiksweedy4@gmail.com', '01099667851', 'Write Your Message', NULL, '2021-07-19 02:39:12', '2021-07-19 02:39:12', NULL),
(11, 0, 'Enas', 'ehab.alhhab@windowslive.com', '01015020102', 'Hello test', NULL, '2021-07-31 22:17:40', '2021-07-31 22:17:40', NULL),
(12, 0, 'Enas', 'ehab.alhhab@windowslive.com', '01015020102', 'Hello test', NULL, '2021-07-31 23:58:59', '2021-07-31 23:58:59', NULL),
(13, 0, 'Enas', 'enas_m80@live.com', '01555999122', 'Test', NULL, '2021-08-07 06:23:46', '2021-08-07 06:23:46', NULL),
(14, 0, 'ايهاب', 'ehab.alhhab@windowslive.com', NULL, 'تجربة', NULL, '2021-08-13 23:19:22', '2021-08-13 23:19:22', NULL),
(15, 0, NULL, NULL, NULL, 'Write Your Message', NULL, '2023-02-13 08:47:28', '2023-02-13 08:47:28', NULL),
(16, 1, 'sdfsdf', 'sdfsdf@g.b', NULL, 'asdasasaS', NULL, '2023-02-17 04:40:24', '2023-03-18 07:23:13', 'xxxxxxzz'),
(17, 0, 'hshs', 'jshsj', NULL, 'shsh', NULL, '2023-04-01 06:34:19', '2023-04-01 06:34:19', NULL),
(18, 1, 'Eslam Maged', NULL, NULL, 'Klkklkllk', NULL, '2023-04-01 06:35:23', '2023-05-15 05:56:47', NULL),
(19, 0, 'Eslam Maged', 'Eslam.maged00@gmail.com', NULL, 'Testing iOS Version', NULL, '2023-06-02 03:16:44', '2023-06-02 03:16:44', NULL),
(20, 0, 't', 't', NULL, 't', NULL, '2023-08-19 17:12:33', '2023-08-19 17:12:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `copons`
--

CREATE TABLE `copons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `min_order` bigint(20) DEFAULT NULL,
  `max_order` bigint(20) DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copons`
--

INSERT INTO `copons` (`id`, `min_order`, `max_order`, `code`, `discount`, `description_ar`, `description_en`, `expire_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'free50', '50', 'رأس السنة', 'New Year', '2023-01-01', NULL, '2020-03-04 21:46:54', '2022-12-26 02:19:14'),
(2, NULL, NULL, '1010', '25', 'عيد الفطر', 'Eid al-Fitr', '2021-05-15', NULL, '2021-06-21 20:18:03', '2021-07-18 21:22:13'),
(3, NULL, NULL, '1020', '25', 'عيد الأضحى', 'Eid al-Adha', '2021-07-24', NULL, '2021-06-26 01:12:45', '2021-07-18 21:25:29'),
(4, NULL, NULL, '1030', '20', 'رأس السنة', 'New Year', '2021-12-31', NULL, '2021-07-15 04:13:52', '2021-07-18 22:24:32'),
(5, NULL, NULL, 'free60', '60', '60', '60', '2023-05-31', NULL, '2023-02-22 04:59:12', '2023-02-22 04:59:12'),
(6, 100, 1000, 'asd', '22', 'AS', 'as', '2023-03-04', NULL, '2023-03-18 08:54:55', '2023-03-18 08:55:09'),
(7, 100, 1000, 'free10', '10', 'free10', 'free10', '2024-01-01', NULL, '2023-04-08 00:59:29', '2023-04-08 00:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `code`, `code_name`, `currency_ar`, `currency_en`, `image`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(1, 'الاوروغواي', 'Uruguay', '589', 'ad', 'ج.مصري', 'EG', '1628187281610c2a9180603.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2023-07-15 06:34:00'),
(2, 'الإمارات العربية المتحدة', 'United Arab Emirates (UAE)', '971', 'ae', 'درهم', NULL, '1628184996610c21a4b04e4.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 02:38:36'),
(3, 'أفغانستان', 'Afghanistan', '93', 'af', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(4, 'أنتيغوا وبربودا', 'Antigua and Barbuda', '1', 'ag', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(5, 'أنغويلا', 'Anguilla', '1', 'ai', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(6, 'ألبانيا', 'Albania', '355', 'al', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(7, 'أرمينيا', 'Armenia', '374', 'am', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(8, 'أنغولا', 'Angola', '244', 'ao', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(9, 'القطب الجنوبي', 'Antarctica', '672', 'aq', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(10, 'الأرجنتين', 'Argentina', '54', 'ar', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(11, 'ساموا الأمريكية', 'American Samoa', '1', 'as', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(12, 'النمسا', 'Austria', '43', 'at', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(13, 'أستراليا', 'Australia', '61', 'au', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(14, 'أروبا', 'Aruba', '297', 'aw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(15, 'جزر آلاند', 'Åland Islands', '358', 'ax', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(16, 'أذربيجان', 'Azerbaijan', '994', 'az', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(17, 'البوسنة والهرسك', 'Bosnia And Herzegovina', '387', 'ba', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(18, 'باربادوس', 'Barbados', '1', 'bb', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(19, 'بنغلاديش', 'Bangladesh', '880', 'bd', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(20, 'بلجيكا', 'Belgium', '32', 'be', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(21, 'بوركينا فاسو', 'Burkina Faso', '226', 'bf', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(22, 'بلغاريا', 'Bulgaria', '359', 'bg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(23, 'البحرين', 'Bahrain', '973', 'bh', 'دينار', NULL, '1628185191610c2267018aa.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 02:39:51'),
(24, 'بوروندي', 'Burundi', '257', 'bi', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(25, 'بنين', 'Benin', '229', 'bj', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(26, 'سانت بارتيليمي', 'Saint Barthélemy', '590', 'bl', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(27, 'برمودا', 'Bermuda', '1', 'bm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(28, 'بروناي', 'Brunei Darussalam', '673', 'bn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(29, 'بوليفيا', 'Bolivia, Plurinational State Of', '591', 'bo', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(30, 'البرازيل', 'Brazil', '55', 'br', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(31, 'باهاماس', 'Bahamas', '1', 'bs', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(32, 'بوتان', 'Bhutan', '975', 'bt', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(33, 'بوتسوانا', 'Botswana', '267', 'bw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(34, 'روسيا البيضاء', 'Belarus', '375', 'by', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(35, 'بليز', 'Belize', '501', 'bz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(36, 'كندا', 'Canada', '1', 'ca', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(37, 'جزر كوكوس', 'Cocos (keeling) Islands', '61', 'cc', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(38, 'الكونفو', 'Congo, The Democratic Republic Of The', '243', 'cd', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(39, 'جمهورية افريقيا الوسطى', 'Central African Republic', '236', 'cf', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(40, 'الكونغو', 'Congo', '242', 'cg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(41, 'سويسرا', 'Switzerland', '41', 'ch', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(42, 'ساحل العاج', 'Côte D\'ivoire', '225', 'ci', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(43, 'جزر كوك', 'Cook Islands', '682', 'ck', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(44, 'تشيلي', 'Chile', '56', 'cl', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(45, 'الكاميرون', 'Cameroon', '237', 'cm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(46, 'الصين', 'China', '86', 'cn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(47, 'كولومبيا', 'Colombia', '57', 'co', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(48, 'كوستا ريكا', 'Costa Rica', '506', 'cr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(49, 'كوبا', 'Cuba', '53', 'cu', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(50, 'الرأس الأخضر', 'Cape Verde', '238', 'cv', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(51, 'كوراكاو', 'Curaçao', '599', 'cw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(52, 'جزيرة الكريسماس', 'Christmas Island', '61', 'cx', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(53, 'قبرص', 'Cyprus', '357', 'cy', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(54, 'جمهورية التشيك', 'Czech Republic', '420', 'cz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(55, 'ألمانيا', 'Germany', '49', 'de', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(56, 'جيبوتي', 'Djibouti', '253', 'dj', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(57, 'الدنمارك', 'Denmark', '45', 'dk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(58, 'دومينيكا', 'Dominica', '1', 'dm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(59, 'جمهورية الدومنيكان', 'Dominican Republic', '1', 'do', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(60, 'الجزائر', 'Algeria', '213', 'dz', 'دينار', NULL, '1628185573610c23e5627a1.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 02:46:13'),
(61, 'الإكوادور', 'Ecuador', '593', 'ec', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(62, 'استونيا', 'Estonia', '372', 'ee', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(63, 'مصر', 'Egypt', '20', 'eg', 'ج.م', NULL, '1628185718610c2476253dc.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 02:48:38'),
(64, 'إريتريا', 'Eritrea', '291', 'er', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(65, 'إسبانيا', 'Spain', '34', 'es', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(66, 'أثيوبيا', 'Ethiopia', '251', 'et', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(67, 'فنلندا', 'Finland', '358', 'fi', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(68, 'فيجي', 'Fiji', '679', 'fj', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(69, 'جزر فوكلاند', 'Falkland Islands (malvinas)', '500', 'fk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(70, 'ولايات ميكرونيسيا المتحدة', 'Micronesia, Federated States Of', '691', 'fm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(71, 'جزر فارو', 'Faroe Islands', '298', 'fo', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(72, 'فرنسا', 'France', '33', 'fr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(73, 'الغابون', 'Gabon', '241', 'ga', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(74, 'المملكة المتحدة', 'United Kingdom', '44', 'gb', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(75, 'غرينادا', 'Grenada', '1', 'gd', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(76, 'جورجيا', 'Georgia', '995', 'ge', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(77, 'غويانا الفرنسية', 'French Guyana', '594', 'gf', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(78, 'غيرنسي', 'Guernsey', '44', 'gg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(79, 'غانا', 'Ghana', '233', 'gh', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(80, 'جبل طارق', 'Gibraltar', '350', 'gi', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(81, 'جرينلاند', 'Greenland', '299', 'gl', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(82, 'غامبيا', 'Gambia', '220', 'gm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(83, 'غينيا', 'Guinea', '224', 'gn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(84, 'جوادلوب', 'Guadeloupe', '590', 'gp', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(85, 'غينيا الإستوائية', 'Equatorial Guinea', '240', 'gq', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(86, 'اليونان', 'Greece', '30', 'gr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(87, 'غواتيمالا', 'Guatemala', '502', 'gt', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(88, 'غوام', 'Guam', '1', 'gu', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(89, 'غينيا بيساو', 'Guinea-bissau', '245', 'gw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(90, 'غيانا', 'Guyana', '592', 'gy', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(91, 'هونغ كونغ', 'Hong Kong', '852', 'hk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(92, 'هندوراس', 'Honduras', '504', 'hn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(93, 'كرواتيا', 'Croatia', '385', 'hr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(94, 'هايتي', 'Haiti', '509', 'ht', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(95, 'المجر', 'Hungary', '36', 'hu', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(96, 'أندونيسيا', 'Indonesia', '62', 'id', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(97, 'جمهورية أيرلندا', 'Ireland', '353', 'ie', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(99, 'جزيرة مان', 'Isle Of Man', '44', 'im', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(100, 'آيسلندا', 'Iceland', '354', 'is', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(101, 'الهند', 'India', '91', 'in', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(102, 'إقليم المحيط البريطاني الهندي', 'British Indian Ocean Territory', '246', 'io', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(103, 'العراق', 'Iraq', '964', 'iq', 'دينار', NULL, '1628186453610c2755b1257.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:00:53'),
(104, 'إيران', 'Iran, Islamic Republic Of', '98', 'ir', 'ريال', NULL, '1628186320610c26d0859dd.png', 'Africa/Cairo', 0, '2020-11-18 05:59:45', '2021-08-06 02:58:40'),
(105, 'إيطاليا', 'Italy', '39', 'it', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(106, 'جيرسي', 'Jersey', '44', 'je', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(107, 'جامايكا', 'Jamaica', '1', 'jm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(108, 'الأردن', 'Jordan', '962', 'jo', 'دينار', NULL, '1628185982610c257ed4c03.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 02:53:02'),
(109, 'اليابان', 'Japan', '81', 'jp', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(110, 'كينيا', 'Kenya', '254', 'ke', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(111, 'قرغيزستان', 'Kyrgyzstan', '996', 'kg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(112, 'كمبوديا', 'Cambodia', '855', 'kh', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(113, 'كيريباتي', 'Kiribati', '686', 'ki', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(114, 'جزر القمر', 'Comoros', '269', 'km', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(115, 'سانت كيتس ونيفيس', 'Saint Kitts and Nevis', '1', 'kn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(116, 'كوريا الشمالية', 'North Korea', '850', 'kp', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(117, 'كوريا الجنوبية', 'South Korea', '82', 'kr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(118, 'الكويت', 'Kuwait', '965', 'kw', 'دينار', NULL, '1628188389610c2ee5afdb1.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:33:09'),
(119, 'جزر كايمان', 'Cayman Islands', '1', 'ky', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(120, 'كازاخستان', 'Kazakhstan', '7', 'kz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(121, 'لاوس', 'Lao People\'s Democratic Republic', '856', 'la', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(122, 'لبنان', 'Lebanon', '961', 'lb', 'ليرة', NULL, '1628188427610c2f0ba0c48.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:33:47'),
(123, 'القديسة لوسيا', 'Saint Lucia', '1', 'lc', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(124, 'ليختنشتاين', 'Liechtenstein', '423', 'li', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(125, 'سيريلانكا', 'Sri Lanka', '94', 'lk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(126, 'ليبيريا', 'Liberia', '231', 'lr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(127, 'ليسوتو', 'Lesotho', '266', 'ls', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(128, 'ليتوانيا', 'Lithuania', '370', 'lt', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(129, 'لوكسمبورغ', 'Luxembourg', '352', 'lu', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(130, 'لاتفيا', 'Latvia', '371', 'lv', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(131, 'ليبيا', 'Libya', '218', 'ly', 'دينار', NULL, '1628188094610c2dbe3d304.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:28:14'),
(132, 'المغرب', 'Morocco', '212', 'ma', 'درهم', NULL, '1628188050610c2d92adc7a.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:27:30'),
(133, 'موناكو', 'Monaco', '377', 'mc', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(134, 'مولدافيا', 'Moldova, Republic Of', '373', 'md', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(135, 'الجبل الأسود', 'Montenegro', '382', 'me', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(136, 'القديس مارتن', 'Saint Martin', '590', 'mf', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(137, 'مدغشقر', 'Madagascar', '261', 'mg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(138, 'جزر مارشال', 'Marshall Islands', '692', 'mh', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(139, 'مقدونيا، جمهورية يوغوسلافيا السابقة', 'Macedonia (FYROM)', '389', 'mk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(140, 'مالي', 'Mali', '223', 'ml', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(141, 'ميانمار', 'Myanmar', '95', 'mm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(142, 'منغوليا', 'Mongolia', '976', 'mn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(143, 'ماكاو', 'Macau', '853', 'mo', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(144, 'جزر مريانا الشمالية', 'Northern Mariana Islands', '1', 'mp', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(145, 'مارتينيك', 'Martinique', '596', 'mq', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(146, 'موريتانيا', 'Mauritania', '222', 'mr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(147, 'مونتسيرات', 'Montserrat', '1', 'ms', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(148, 'مالطا', 'Malta', '356', 'mt', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(149, 'موريشيوس', 'Mauritius', '230', 'mu', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(150, 'جزر المالديف', 'Maldives', '960', 'mv', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(151, 'ملاوي', 'Malawi', '265', 'mw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(152, 'المكسيك', 'Mexico', '52', 'mx', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(153, 'ماليزيا', 'Malaysia', '60', 'my', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(154, 'موزمبيق', 'Mozambique', '258', 'mz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(155, 'ناميبيا', 'Namibia', '264', 'na', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(156, 'كاليدونيا الجديدة', 'New Caledonia', '687', 'nc', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(157, 'النيجر', 'Niger', '227', 'ne', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(158, 'جزر نورفولك', 'Norfolk Islands', '672', 'nf', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(159, 'نيجيريا', 'Nigeria', '234', 'ng', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(160, 'نيكاراغوا', 'Nicaragua', '505', 'ni', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(161, 'هولندا', 'Netherlands', '31', 'nl', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(162, 'النرويج', 'Norway', '47', 'no', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(163, 'نيبال', 'Nepal', '977', 'np', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(164, 'ناورو', 'Nauru', '674', 'nr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(165, 'نيوي', 'Niue', '683', 'nu', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(166, 'نيوزيلاندا', 'New Zealand', '64', 'nz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(167, 'سلطنة عمان', 'Oman', '968', 'om', 'ريال', NULL, '1628188188610c2e1ca224e.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:29:48'),
(168, 'بناما', 'Panama', '507', 'pa', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(169, 'بيرو', 'Peru', '51', 'pe', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(170, 'بولينيزيا الفرنسية', 'French Polynesia', '689', 'pf', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(171, 'بابوا غينيا الجديدة', 'Papua New Guinea', '675', 'pg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(172, 'الفلبين', 'Philippines', '63', 'ph', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(173, 'باكستان', 'Pakistan', '92', 'pk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(174, 'بولندا', 'Poland', '48', 'pl', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(175, 'سان بيار وميكلون', 'Saint Pierre And Miquelon', '508', 'pm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(176, 'جزر بيتكيرن', 'Pitcairn Islands', '870', 'pn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(177, 'بورتوريكو', 'Puerto Rico', '1', 'pr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(178, 'فلسطين', 'Palestine', '970', 'ps', 'جنيه', NULL, '1628187053610c29ad7aea1.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:10:53'),
(179, 'البرتغال', 'Portugal', '351', 'pt', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(180, 'بالاو', 'Palau', '680', 'pw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(181, 'باراغواي', 'Paraguay', '595', 'py', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(182, 'قطر', 'Qatar', '974', 'qa', 'ريال', NULL, '1628186926610c292ebd6cb.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:08:46'),
(183, 'لا ريونيون', 'Réunion', '262', 're', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(184, 'رومانيا', 'Romania', '40', 'ro', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(185, 'صربيا', 'Serbia', '381', 'rs', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(186, 'روسيا', 'Russian Federation', '7', 'ru', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(187, 'رواندا', 'Rwanda', '250', 'rw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(188, 'المملكة العربية السعودية', 'Saudi Arabia', '966', 'sa', 'ريال', NULL, '1628186815610c28bfbcbc9.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:06:55'),
(189, 'جزر سليمان', 'Solomon Islands', '677', 'sb', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(190, 'سيشيل', 'Seychelles', '248', 'sc', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(191, 'السودان', 'Sudan', '249', 'sd', NULL, NULL, '1628186741610c28750cb16.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:05:41'),
(192, 'السويد', 'Sweden', '46', 'se', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(193, 'سنغافورة', 'Singapore', '65', 'sg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(194, 'سانت هيلانة', 'Saint Helena', '290', 'sh', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2021-08-06 03:11:26'),
(195, 'سلوفينيا', 'Slovenia', '386', 'si', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(196, 'سلوفاكيا', 'Slovakia', '421', 'sk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(197, 'سيرا ليون', 'Sierra Leone', '232', 'sl', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(198, 'سان مارينو', 'San Marino', '378', 'sm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(199, 'السنغال', 'Senegal', '221', 'sn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(200, 'الصومال', 'Somalia', '252', 'so', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(201, 'سورينام', 'Suriname', '597', 'sr', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(202, 'جنوب السودان', 'South Sudan', '211', 'ss', 'جنيه سوداني', NULL, '1628188510610c2f5e99801.png', 'Africa/Cairo', 0, '2020-11-18 05:59:45', '2021-08-06 03:35:10'),
(203, 'ساو تومي وبرينسيبي', 'Sao Tome And Principe', '239', 'st', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(204, 'السلفادور', 'El Salvador', '503', 'sv', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(205, 'سانت مارتن', 'Sint Maarten', '1', 'sx', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(206, 'سوريا', 'Syrian Arab Republic', '963', 'sy', 'ليرة', NULL, '1628188870610c30c68b757.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:41:10'),
(207, 'سوازيلاند', 'Swaziland', '268', 'sz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(208, 'جزر تركس وكايكوس', 'Turks and Caicos Islands', '1', 'tc', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(209, 'تشاد', 'Chad', '235', 'td', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(210, 'توغو', 'Togo', '228', 'tg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(211, 'تايلاند', 'Thailand', '66', 'th', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(212, 'طاجيكستان', 'Tajikistan', '992', 'tj', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(213, 'توكيلاو', 'Tokelau', '690', 'tk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(214, 'تيمور الشرقية', 'Timor-leste', '670', 'tl', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(215, 'تركمانستان', 'Turkmenistan', '993', 'tm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(216, 'تونس', 'Tunisia', '216', 'tn', 'دينار', NULL, '1628188837610c30a5ec151.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:40:37'),
(217, 'تونغا', 'Tonga', '676', 'to', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(218, 'تركيا', 'Turkey', '90', 'tr', NULL, NULL, '1628189022610c315ec1c75.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:43:42'),
(219, 'ترينيداد وتوباغو', 'Trinidad & Tobago', '1', 'tt', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(220, 'توفالو', 'Tuvalu', '688', 'tv', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(221, 'تايوان', 'Taiwan', '886', 'tw', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(222, 'تنزانيا', 'Tanzania, United Republic Of', '255', 'tz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(223, 'أوكرانيا', 'Ukraine', '380', 'ua', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(224, 'أوغندا', 'Uganda', '256', 'ug', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(225, 'الولايات المتحدة', 'United States (USA)', '1', 'us', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(226, 'أوروغواي', 'Uruguay', '598', 'uy', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(227, 'أوزبكستان', 'Uzbekistan', '998', 'uz', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(228, 'الفاتيكان', 'Holy See (vatican City State)', '379', 'va', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(229, 'سانت فينسنت والغرينادين', 'Saint Vincent & The Grenadines', '1', 'vc', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(230, 'فنزويلا', 'Venezuela, Bolivarian Republic Of', '58', 've', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(231, 'جزر العذراء البريطانية', 'British Virgin Islands', '1', 'vg', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(232, 'جزر فيرجن الأمريكية', 'US Virgin Islands', '1', 'vi', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(233, 'فيتنام', 'Vietnam', '84', 'vn', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(234, 'فانواتو', 'Vanuatu', '678', 'vu', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(235, 'واليس وفوتونا', 'Wallis And Futuna', '681', 'wf', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(236, 'ساموا', 'Samoa', '685', 'ws', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(237, 'كوسوفو', 'Kosovo', '383', 'xk', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(238, 'اليمن', 'Yemen', '967', 'ye', 'ريال', NULL, '1628188612610c2fc4d03e4.png', 'Africa/Cairo', 1, '2020-11-18 05:59:45', '2021-08-06 03:36:52'),
(239, 'مايوت', 'Mayotte', '262', 'yt', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(240, 'جنوب أفريقيا', 'South Africa', '27', 'za', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(241, 'زامبيا', 'Zambia', '260', 'zm', NULL, NULL, NULL, 'Africa/Cairo', NULL, '2020-11-18 05:59:45', '2020-11-18 05:59:45'),
(242, 'زيمبابوي', 'Zimbabwe', '263', 'zw', NULL, NULL, NULL, 'Africa/Cairo', 0, '2020-11-18 05:59:45', '2021-03-11 11:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `delegates`
--

CREATE TABLE `delegates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suspend` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delegates`
--

INSERT INTO `delegates` (`id`, `suspend`, `name`, `phone`, `email`, `id_num`, `created_at`, `updated_at`) VALUES
(1, 1, 'مندوب12', '0123452', 'delegate@gmail.com2', '2345678', '2023-02-25 10:48:09', '2023-05-22 06:25:13'),
(2, 0, '4356', '4567676767', 'andrewalbert93501@gmail.com', 'fgh5467', '2023-05-22 06:25:31', '2023-05-22 06:25:31'),
(3, 1, 'Ayman Mohamed', NULL, NULL, '945839klll', '2023-07-15 08:05:14', '2023-07-15 08:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suspend` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `suspend`, `name`, `phone`, `email`, `id_num`, `created_at`, `updated_at`) VALUES
(1, 0, 'سائق1', '0123456', 'driver1@gmail.com', '34567', '2023-02-25 10:48:45', '2023-05-22 06:25:42'),
(2, 0, '4567', '3456756', 'andrewalbert93501@gmail.com', '3567hgj', '2023-05-22 06:26:05', '2023-05-22 06:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main` tinyint(4) DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `main`, `title`, `lat`, `lng`, `street`, `floor`, `appartment`, `user_id`, `region_id`, `city_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'tetewww', NULL, NULL, 'ert', 'ew', 'er', 1, 1, 1, '2021-05-22 21:45:52', '2021-05-13 10:00:36', '2021-05-22 21:45:52'),
(2, 1, 'tetewww', NULL, NULL, 'ert', 'ew', 'er', 1, 1, 1, NULL, '2021-05-13 11:17:11', '2021-05-30 06:42:56'),
(3, 0, 'tete', NULL, NULL, 'ert', 'ew', 'er', 1, 1, 1, NULL, '2021-05-14 21:47:16', '2021-05-30 06:42:56'),
(4, 0, 'العمل', '30.166526779127107', '31.31615817546845', '٣ هاشم الاشقر', 'ew', 'er', 7, 1, 1, '2021-05-22 21:54:54', '2021-05-17 22:53:33', '2021-05-22 21:54:54'),
(5, 0, '3 هاشم الاشقر النزهة الجديدة', NULL, NULL, 'ert', 'ew', 'er', 7, 1, 1, '2021-05-22 21:54:44', '2021-05-18 02:25:11', '2021-05-22 21:54:44'),
(6, 0, 'Nasr City', NULL, NULL, 'marram 3abaid', '5', 'aa', 8, 1, 1, '2021-06-26 02:43:02', '2021-05-18 09:44:26', '2021-06-26 02:43:02'),
(7, 0, 'mansoura', NULL, NULL, 'om Khalthom', '5', 'aa', 9, 1, 1, NULL, '2021-05-22 01:29:14', '2021-05-22 01:29:17'),
(8, 0, 'المنزل', NULL, NULL, 'الامير العمومى', '٣', NULL, 7, 1, 1, '2021-05-22 21:54:51', '2021-05-22 21:04:09', '2021-05-22 21:54:51'),
(9, 1, 'العمل', NULL, NULL, '٣ هاشم الاشقر', '٣', NULL, 7, 1, 1, '2021-05-22 21:56:02', '2021-05-22 21:55:58', '2021-05-22 21:56:02'),
(10, 0, 'المنزل', NULL, NULL, 'الامير العمومى', '٣', NULL, 7, 1, 1, '2021-05-22 22:01:53', '2021-05-22 21:56:52', '2021-05-22 22:01:53'),
(11, 1, 'تلتىىت', NULL, NULL, 'بتبتىت', 'ىزت ل', NULL, 7, 1, 1, '2021-05-22 22:03:20', '2021-05-22 22:02:38', '2021-05-22 22:03:20'),
(12, 1, 'فبيااب', NULL, NULL, 'ةرورةبا', 'ترت', NULL, 7, 2, 2, '2021-05-22 22:08:10', '2021-05-22 22:07:41', '2021-05-22 22:08:10'),
(13, 1, 'هفهفلنلهلن', NULL, NULL, 'ةنةنا', 'ىننةنل', NULL, 7, 1, 1, '2021-06-06 00:05:04', '2021-05-22 22:08:03', '2021-06-06 00:05:04'),
(14, 0, '3 هاشم الاشقر النزهه', NULL, NULL, 'شارع ١٣ للعمارة التالته يمين', '٤', NULL, 7, 1, 1, '2021-06-06 00:05:01', '2021-06-04 02:37:48', '2021-06-06 00:05:01'),
(15, 0, 'Nasr city', NULL, NULL, 'first makrm', 'الدور التالت', NULL, 7, 1, 1, '2021-06-06 00:18:09', '2021-06-06 00:08:01', '2021-06-06 00:18:09'),
(16, 0, 'يعلي', NULL, NULL, 'رتوببة', 'رةبت', NULL, 7, 1, 1, '2021-06-06 00:35:21', '2021-06-06 00:28:27', '2021-06-06 00:35:21'),
(17, 1, 'ياتؤةؤ', NULL, NULL, 'راؤةؤوة', 'يتوبو', NULL, 7, 1, 1, '2021-06-06 00:44:48', '2021-06-06 00:35:44', '2021-06-06 00:44:48'),
(18, 0, 'ىنىن', NULL, NULL, 'بتبتبتب', 'بةرةرةرة', NULL, 7, 2, 2, '2021-06-06 00:47:29', '2021-06-06 00:47:16', '2021-06-06 00:47:29'),
(19, 1, '٧ففهعفعف', NULL, NULL, 'بتىوىوبتبلتبت', 'رةروروور', NULL, 7, 1, 1, '2023-02-20 00:33:17', '2021-06-06 00:48:02', '2023-02-20 00:33:17'),
(20, 1, 'amir', '30.160158437264336', '31.402341574430466', 'amir omomi', 'dff', NULL, 7, 3, 3, NULL, '2021-06-06 16:44:59', '2023-03-26 08:02:15'),
(21, 0, 'ahmed bakry street', NULL, NULL, 'mahkama', '5', NULL, 8, 4, 5, '2021-06-26 02:43:04', '2021-06-26 02:36:40', '2021-06-26 02:43:04'),
(22, 1, 'awel gamal', NULL, NULL, 'awel gamal', '5', NULL, 8, 4, 5, '2021-07-15 03:39:39', '2021-06-26 02:43:43', '2021-07-15 03:39:39'),
(23, 0, 'my locayion', NULL, NULL, 'gamal', '5', NULL, 8, 5, 1, NULL, '2021-07-15 03:45:54', '2021-08-29 06:12:43'),
(24, 1, 'test', NULL, NULL, 'haram', '7', NULL, 8, 4, 5, NULL, '2021-07-15 03:46:26', '2021-08-29 06:12:43'),
(25, 1, 'Ahmed', '0.0', '0.0', '5 ش الجارحى من الاخلاص', '5', NULL, 25, 8, 2, NULL, '2021-07-28 21:04:23', '2021-08-16 18:59:37'),
(26, 1, 'test', NULL, NULL, 'test', 'test', NULL, 22, 13, 1, NULL, '2021-08-05 20:07:37', '2021-08-21 01:10:18'),
(27, 1, NULL, NULL, NULL, NULL, NULL, 'aa', 29, 8, 2, NULL, '2021-08-07 06:32:29', '2021-08-29 06:06:47'),
(28, 0, 't', NULL, NULL, 't', 'tt', NULL, 22, 7, 1, NULL, '2021-08-08 08:47:25', '2021-08-21 01:10:18'),
(29, 1, 'team', NULL, NULL, 'cairo', '3', NULL, 30, 6, 2, NULL, '2021-08-14 01:53:03', '2021-08-14 01:53:37'),
(30, 0, 'غات', NULL, NULL, 'غغغغ', 'غغ', NULL, 22, 13, 1, NULL, '2021-08-17 01:33:32', '2021-08-21 01:10:18'),
(31, 0, 'asdasdasd', NULL, NULL, 'asdasdasd', 'asdasdasd', NULL, 7, 1, 1, '2023-05-30 21:54:29', '2023-02-19 23:48:16', '2023-05-30 21:54:29'),
(32, 0, 'asdasd', NULL, NULL, 'asdasdasd', 'asdasd', NULL, 7, 1, 1, NULL, '2023-02-19 23:50:01', '2023-03-26 08:02:15'),
(33, 0, 'test', NULL, NULL, 'asdasdasd', 'asdasd', NULL, 7, 1, 1, '2023-05-30 21:54:21', '2023-02-19 23:53:58', '2023-05-30 21:54:21'),
(34, 0, 'test2', NULL, NULL, 'بتىوىوبتبلتبت', 'رةروروور', NULL, 7, 1, 1, '2023-02-20 00:33:22', '2023-02-20 00:24:20', '2023-02-20 00:33:22'),
(36, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2023-03-07 14:16:42', '2023-03-07 14:16:42'),
(38, 0, 'tete', NULL, NULL, 'ert', 'ew', 'er', 1, 1, 1, NULL, '2023-03-07 15:26:29', '2023-03-07 15:26:29'),
(40, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:02:53', '2023-03-12 06:02:53'),
(41, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:02:54', '2023-03-12 06:02:54'),
(42, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:02:58', '2023-03-12 06:02:58'),
(43, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:00', '2023-03-12 06:03:00'),
(44, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:00', '2023-03-12 06:03:00'),
(45, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:00', '2023-03-12 06:03:00'),
(46, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:00', '2023-03-12 06:03:00'),
(47, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:08', '2023-03-12 06:03:08'),
(48, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:08', '2023-03-12 06:03:08'),
(49, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:10', '2023-03-12 06:03:10'),
(50, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:10', '2023-03-12 06:03:10'),
(51, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:10', '2023-03-12 06:03:10'),
(52, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:10', '2023-03-12 06:03:10'),
(53, 0, 'ttt', NULL, NULL, 'ttt', 'ttt', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:10', '2023-03-12 06:03:10'),
(54, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', 'ttt vvvv', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:19', '2023-03-12 06:03:19'),
(55, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', 'ttt vvvv', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:19', '2023-03-12 06:03:19'),
(56, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', 'ttt vvvv', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:20', '2023-03-12 06:03:20'),
(57, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', 'ttt vvvv', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:20', '2023-03-12 06:03:20'),
(58, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:31', '2023-03-12 06:03:31'),
(59, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:31', '2023-03-12 06:03:31'),
(60, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:32', '2023-03-12 06:03:32'),
(61, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:32', '2023-03-12 06:03:32'),
(62, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:32', '2023-03-12 06:03:32'),
(63, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:32', '2023-03-12 06:03:32'),
(64, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:35', '2023-03-12 06:03:35'),
(65, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:36', '2023-03-12 06:03:36'),
(66, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:37', '2023-03-12 06:03:37'),
(67, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 1, 1, NULL, '2023-03-12 06:03:37', '2023-03-12 06:03:37'),
(68, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 6, 2, NULL, '2023-03-12 06:03:43', '2023-03-12 06:03:43'),
(69, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 6, 2, NULL, '2023-03-12 06:03:44', '2023-03-12 06:03:44'),
(70, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 6, 2, NULL, '2023-03-12 06:03:44', '2023-03-12 06:03:44'),
(71, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(72, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(73, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(74, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(75, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(76, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(77, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(78, 0, 'ttt gggg', NULL, NULL, 'ttt gggg', '5', NULL, 22, 12, 2, NULL, '2023-03-12 06:03:52', '2023-03-12 06:03:52'),
(79, 0, 'tete', NULL, NULL, 'ert', 'ew', 'er', 1, 1, 1, NULL, '2023-03-12 14:42:49', '2023-03-12 14:42:49'),
(80, 0, 'hxbxb', NULL, NULL, 'gxhxhxbx', 'xhhxchbc', NULL, 7, 1, 1, '2023-05-30 21:54:16', '2023-03-12 19:05:29', '2023-05-30 21:54:16'),
(81, 0, 'xbhxbbc', NULL, NULL, 'dhhxhxbx', 'xbhcbc', NULL, 7, 1, 1, '2023-03-26 07:59:10', '2023-03-12 19:11:21', '2023-03-26 07:59:10'),
(82, 0, 'ii', NULL, NULL, 'ii', 'ii', NULL, 22, 1, 1, NULL, '2023-03-12 20:29:44', '2023-03-12 20:29:44'),
(84, 1, 'Zahra', NULL, NULL, 'el gama', '3', NULL, 57, 17, 1, '2023-03-29 07:31:04', '2023-03-29 07:30:04', '2023-03-29 07:31:04'),
(85, 1, 'البيت', NULL, NULL, 'المعادي', '5', NULL, 54, 15, 1, '2023-04-07 00:14:38', '2023-03-30 08:15:40', '2023-04-07 00:14:38'),
(86, 1, 'home', NULL, NULL, 'street', '5', '5', 57, 2, 1, '2023-03-31 08:27:29', '2023-03-31 08:21:40', '2023-03-31 08:27:29'),
(87, 1, 'Home', NULL, NULL, 'Gate1,H Street', '8', '8', 57, 2, 1, '2023-04-05 05:54:43', '2023-03-31 08:44:04', '2023-04-05 05:54:43'),
(88, 0, '2 work', NULL, NULL, 'street 2', '6', '6', 57, 4, 1, '2023-04-08 20:55:21', '2023-03-31 09:10:52', '2023-04-08 20:55:21'),
(89, 1, 's', NULL, NULL, 'a', '5', '5', 57, 1, 1, '2023-04-07 14:28:38', '2023-04-01 02:23:11', '2023-04-07 14:28:38'),
(92, 0, 'tete', NULL, NULL, 'ert', 'ew', 'er', 22, 1, 1, NULL, '2023-04-01 03:00:18', '2023-04-01 03:00:18'),
(93, 0, 'tete', '123.123123', '21.123123', 'ert', 'ew', 'er', 22, 1, 1, NULL, '2023-04-01 03:01:54', '2023-04-01 03:01:54'),
(94, 0, 'home', '24.774817', '46.670056', 'jkjd kjdsakjdjk', '9', '9', 57, 1, 1, '2023-06-01 03:18:31', '2023-04-07 01:14:20', '2023-06-01 03:18:31'),
(95, 1, 'h hvhvvhgv', '29.972293261763312', '31.330532804131508', 'gvh g. g', '56', NULL, 54, 1, 1, NULL, '2023-04-07 01:49:58', '2023-04-07 01:49:58'),
(96, 0, 'jsjsj', '29.972231107867533', '31.33071586489677', 'hshs', '5', NULL, 54, 1, 1, NULL, '2023-04-08 00:37:05', '2023-04-08 00:37:05'),
(97, 1, 'tes', '31.290085015806536', '30.033513754606247', 'Cairo Egypt', '5', NULL, 75, 1, 1, '2023-05-27 19:13:05', '2023-05-27 19:11:46', '2023-05-27 19:13:05'),
(98, 1, 'Home', '30.166520691873984', '31.316167227923867', 'New Cairo', '5', NULL, 75, 1, 1, '2023-05-29 22:35:10', '2023-05-29 02:42:32', '2023-05-29 22:35:10'),
(99, 0, 'Home1', '30.159389941414755', '31.313023678958412', 'New Cairo', '5', NULL, 75, 6, 2, '2023-05-29 02:43:30', '2023-05-29 02:43:13', '2023-05-29 02:43:30'),
(100, 1, 'chhxhc', '29.96175645931262', '31.259086467325687', 'dhhdhddh', 'fj', NULL, 75, 1, 1, '2023-05-29 23:01:49', '2023-05-29 22:59:03', '2023-05-29 23:01:49'),
(101, 1, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:05', '2023-05-29 23:02:05'),
(102, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:06', '2023-05-29 23:02:06'),
(103, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:06', '2023-05-29 23:02:06'),
(104, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:07', '2023-05-29 23:02:07'),
(105, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:08', '2023-05-29 23:02:08'),
(106, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:08', '2023-05-29 23:02:08'),
(107, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:08', '2023-05-29 23:02:08'),
(108, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:09', '2023-05-29 23:02:09'),
(109, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:09', '2023-05-29 23:02:09'),
(110, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:09', '2023-05-29 23:02:09'),
(111, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:10', '2023-05-29 23:02:10'),
(112, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:10', '2023-05-29 23:02:10'),
(113, 0, 'xhhxhxhxhx', '29.96175558790422', '31.259088143706325', 'dhhdhdhdhs', 'r', NULL, 75, 1, 1, NULL, '2023-05-29 23:02:10', '2023-05-29 23:02:10'),
(114, 0, 'fufuhfch', '29.961747164289065', '31.259064003825188', 'fhufhfhd', 'fhch', NULL, 7, 1, 1, '2023-05-30 21:55:08', '2023-05-30 21:53:51', '2023-05-30 21:55:08'),
(115, 0, 'fufuhfch', '29.961747164289065', '31.259064003825188', 'fhufhfhd', 'fhch', NULL, 7, 1, 1, '2023-05-30 21:55:06', '2023-05-30 21:53:51', '2023-05-30 21:55:06'),
(116, 0, 'fufuhfch', '29.961747164289065', '31.259064003825188', 'fhufhfhd', 'fhch', NULL, 7, 1, 1, '2023-05-30 21:55:04', '2023-05-30 21:53:52', '2023-05-30 21:55:04'),
(117, 0, 'fufuhfch', '29.961747164289065', '31.259064003825188', 'fhufhfhd', 'fhch', NULL, 7, 1, 1, '2023-05-30 21:55:00', '2023-05-30 21:53:52', '2023-05-30 21:55:00'),
(118, 0, 'fufuhfch', '29.961747164289065', '31.259064003825188', 'fhufhfhd', 'fhch', NULL, 7, 1, 1, '2023-05-30 21:54:57', '2023-05-30 21:54:12', '2023-05-30 21:54:57'),
(119, 0, 'chfhhf', '29.961767787621426', '31.259109266102314', 'dhghx', 'fchhchc', NULL, 7, 1, 1, '2023-05-30 21:56:27', '2023-05-30 21:56:10', '2023-05-30 21:56:27'),
(120, 0, 'chfhhf', '29.961767787621426', '31.259109266102314', 'dhghx', 'fchhchc', NULL, 7, 1, 1, '2023-05-30 21:56:25', '2023-05-30 21:56:11', '2023-05-30 21:56:25'),
(121, 0, 'chfhhf', '29.961767787621426', '31.259109266102314', 'dhghx', 'fchhchc', NULL, 7, 1, 1, '2023-05-30 21:56:23', '2023-05-30 21:56:11', '2023-05-30 21:56:23'),
(122, 0, 'fjcjcjch', '29.961770401846337', '31.259112283587456', 'hdhxyxycu', 'tcc', NULL, 7, 1, 1, '2023-05-30 22:06:36', '2023-05-30 21:58:29', '2023-05-30 22:06:36'),
(123, 0, 'dhejdjrn', '29.96176314011027', '31.259078420698643', 'ehehrhehr', 'ccf', NULL, 7, 1, 1, '2023-05-30 23:05:12', '2023-05-30 22:06:32', '2023-05-30 23:05:12'),
(124, 0, 'test', '29.96175791165999', '31.259019412100315', 'test', 'ggh', NULL, 7, 1, 1, '2023-05-31 00:23:00', '2023-05-30 23:05:37', '2023-05-31 00:23:00'),
(125, 0, 'fuhcchhc h', '29.961758202129463', '31.259047240018848', 'djchchhchx', 'v', NULL, 7, 1, 1, '2023-05-31 00:22:54', '2023-05-30 23:12:01', '2023-05-31 00:22:54'),
(126, 0, 'testa', '29.96618311549519', '31.252827532589432', 'djchchhchx', 'v', NULL, 7, 1, 1, '2023-05-31 00:22:52', '2023-05-30 23:26:41', '2023-05-31 00:22:52'),
(127, 0, 'testa', '29.961747745228063', '31.25905863940716', 'djchchhchxfufjdududu', 'v', NULL, 7, 1, 1, '2023-05-31 00:22:22', '2023-05-30 23:31:42', '2023-05-31 00:22:22'),
(128, 1, 'Home', '24.774817', '46.670056', '22 street name', '7', '7', 78, 1, 1, NULL, '2023-06-02 03:27:23', '2023-06-02 03:27:23'),
(129, 1, 'Work', '30.061748', '31.27551738490382', '13', '8', '8', 79, 1, 1, NULL, '2023-06-10 20:18:40', '2023-06-10 20:18:40'),
(130, 1, 'Street 103 Mokkatam', '30.00776662308149', '31.314421445131305', 'Al Abageyah', '10', NULL, 80, 1, 1, NULL, '2023-06-28 07:22:27', '2023-06-28 07:22:27'),
(131, 1, 'test', '30.10239267177249', '31.37881357222795', 'test', '6', NULL, 83, 23, 3, NULL, '2023-08-19 17:24:02', '2023-08-19 17:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `method_ar` text COLLATE utf8mb4_unicode_ci,
  `method_en` text COLLATE utf8mb4_unicode_ci,
  `grams` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `meal_no`, `name_ar`, `name_en`, `description_ar`, `description_en`, `method_ar`, `method_en`, `grams`, `price`, `persons`, `points`, `free_delivery`, `rate`, `url`, `created_at`, `updated_at`) VALUES
(1, '1001', 'دجاج محشي بالارز ومرقه الخضار', 'Chicken stuffed with rice and vegetable broth', 'المطبخ الشامي', 'Shami kitchen', '1-	نضع الملح واللوز والزبيب فوق الرز ونخلطهم \r\n2-	ناتي بالفرخه نحشوها بالخلطة \r\n3-	ناتي بالقليل من الرز ونضع فوقه الفلفل الاسود والفلفل الاحمر \r\n4-	نخلطهم ونضع الدجاجة المحشية فوق الرز ثم نضع الاكلة في داخل الفرن حوالي 25 دقيقة \r\n5-	نضع البطاطس والباذجان والطماطم في الحلة بعد ان نقوم بتقطيعهم حسب الرغبة الي شرائح او مكعبات ونضيف لهم المرق والملح ونضعهم في الفرن لمدة 45 دقيقة حتي تنضج.', '1- Put the salt, almonds and raisins on top of the rice and mix them\r\n2- Bring the chicken and stuff it with the mixture\r\n3- Bring a little rice and put black pepper and red pepper on top\r\n4- Mix them and put the stuffed chicken on top of the rice and then put the food in the oven for about 25 minutes\r\n5- We put the potatoes, eggplant and tomatoes in the pot, after we cut them as desired into slices or cubes, add broth and salt to them, and put them in the oven for 45 minutes until they are cooked.', '4200', '275', '4', '25', NULL, '2.5', 'https://www.youtube.com/watch?v=0FXJUP6_O1w', '2021-08-15 04:13:59', '2023-03-21 08:31:32'),
(2, '2001', 'كباب هندي', 'Indian kebab', 'المطبخ الهندي', 'Indian Cuisine', '1-	تقشر الطماطم ثم تقطع الي ست قطع \r\n2-	توضع في صينية تيفال مقاس وسط و تدهن بالسمنة ويفرم عليها بصله  ويرش الملح والبهار والفلفل وتوضع علي نار هادئه \r\n3-	بعد ساعه تكور الدجاج وتمد باليد علي شكل قرص كباب صغير الي نفاذ كميه الدجاج \r\n4-	توضع قطع الدجاج فوق البندورة مدة نصف ساعه او حتي الاستواء ثم تقدم مع الارز المفلفل.', '1- Peel the tomatoes and cut them into six pieces\r\n2- Place in a medium-sized Tefal tray, grease with ghee, chop an onion, sprinkle with salt, pepper and pepper, and put on a low heat.\r\n3- After an hour, the chicken will be balled and extended by hand in the form of a small kebab disk until the amount of chicken runs out\r\n4- Place the chicken pieces on top of the tomatoes for half an hour or until doneness, then serve with peppered rice.', '3200', '190', '4', '19', NULL, NULL, NULL, '2021-08-15 05:17:10', '2021-08-15 06:46:58'),
(4, '3001', 'روبيان بالأناناس', 'Shrimp with pineapple', 'المطبخ الصيني', 'Chinese cuisine', '1-	نتبل الروبيان بالملح والفلفل الاسود ثم نضع الثوم والزنجبيل معاً على الروبيان\r\n2-	نقلى الروبيان ومعه الزنجبيل والثوم لمدة 7 دقائق بعد ذلك نرفع الروبيان\r\n3-	سيبقى فى القدر بقايا الزنجبيل والثوم وبعض الزيت نضيف اليه البصل الاخضر والفلفل الحار ثم الفلفل الفلفل الحلو بأنواعه تدريجياً ثم البروكلى ثم الطماطم واخييراً الاناناس ويقلب لمدة 7 دقائق ثم يرفع\r\n4-	فى نفس القدر نضع معجون الطماطم والخل والسكر والنشاء وصوص الصويا ونقلبه على النار عالية حتى يغلظ قليلا\r\n5-	نضيف الروبيان والخضار الى الصلصة فى القدر ونخلطهم مع بعض 10 دقائق وبلهناء والشفاء', '1- Season the shrimp with salt and black pepper, then put garlic and ginger together on the shrimp\r\n2- Fry the shrimp with ginger and garlic for 7 minutes, then remove the shrimp\r\n3- The remains of ginger, garlic and some oil will remain in the pot, add green onions and hot peppers, then sweet peppers of all kinds gradually, then broccoli, then tomatoes and finally pineapple, stir for 7 minutes, then remove\r\n4- In the same pot, put tomato paste, vinegar, sugar, starch and soy sauce, and stir over high heat until it thickens a little\r\n5- Add the shrimp and vegetables to the sauce in the saucepan and mix them together for 10 minutes and enjoy and heal', '3400', '320', '4', '32', NULL, NULL, NULL, '2021-08-15 06:38:01', '2021-08-15 06:38:01'),
(5, '4001', 'مكمور الملفوف بالزيت', 'Makmour cabbage with oil', 'المطبخ الاسيوي', 'Asian cuisine', 'يفرم الملفوف مع ضلوعه فرما ناعما ثم يغسل و يوضع في مصفاة.\r\nيفرم البصل ناعماً و يقلى في الزيت الساخن حتى يشقر.\r\nيفقش الحمص وينظف من قشره ثم يضاف إلى البصل و يقلى معه.\r\nيضاف الملفوف و الدقيق و يحرك المزيج على نار متوسطه حتى يصبح الملفوف أصفر اللون، يضاف حينها الملح ونصف ملعقة من البهار الحلو و الكمون.\r\nيضاف هذا المزيج إلى الملفوف، يغمر المزيح بالماء المغلي و يطهى على نار قوية.\r\nتخفف بعدها النار و يتابع الطهو حتى ينضج المزيج و تتبخر معظم الصلصة\r\nيقدم الطبق بارداً', 'Finely chop the cabbage with its ribs, wash and put in a colander.\r\nFinely chop the onion and fry in hot oil until golden.\r\nChickpeas are peeled and cleaned of their peel, then added to the onion and fried with it.\r\nAdd the cabbage and flour and stir over a medium heat until the cabbage turns yellow, then add salt and half a spoon of sweet pepper and cumin.\r\nAdd this mixture to the cabbage, cover the mixture with boiling water and cook over a high heat.\r\nThen reduce the heat and continue cooking until the mixture is cooked and most of the sauce has evaporated\r\nServe the dish cold', '2900', '120', '4', '12', NULL, NULL, 'https://youtu.be/6AviDjR9mmo', '2021-08-15 07:14:26', '2023-03-04 08:23:26'),
(6, '12345', 'دواجن الوطنية', 'Al Watania Poultry', 'دواجن الوطنية أضخم منشأة دواجن على مستوى الشرق الأوسط، وإحدى أكبر الشركات في قطاع الدواجن في العالم.', 'Al-Watania Poultry is the largest poultry facility in the Middle East, and one of the largest companies in the poultry sector in the world.', 'لا يوجد', 'Nothink to see', '1200', '70', '4', '12', NULL, NULL, 'https://youtu.be/6AviDjR9mmo', '2021-08-25 21:10:08', '2021-08-25 21:10:08'),
(7, '510', 'تجربه طبخه', 'test cook', 'تجربه وصف الطبخه', 'testing cook details', 'تجربه طريقه العمل', 'test how to cook', '150', '150', '5', '1', NULL, NULL, NULL, '2023-08-19 17:35:14', '2023-08-19 17:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `meal_images`
--

CREATE TABLE `meal_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_images`
--

INSERT INTO `meal_images` (`id`, `meal_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1628968439611815f728c4f.gif', '2021-08-15 04:13:59', '2021-08-15 04:13:59'),
(2, 2, '1628972230611824c67a269.jpg', '2021-08-15 05:17:10', '2021-08-15 05:17:10'),
(4, 4, '1628977081611837b921fc9.jpg', '2021-08-15 06:38:01', '2021-08-15 06:38:01'),
(5, 4, '162897835061183cae578cc.jpg', '2021-08-15 06:59:10', '2021-08-15 06:59:10'),
(6, 2, '162897842361183cf77de96.jpg', '2021-08-15 07:00:23', '2021-08-15 07:00:23'),
(7, 1, '162897848961183d39d0fb6.jpg', '2021-08-15 07:01:29', '2021-08-15 07:01:29'),
(8, 5, '1628979266611840428f4bd.jpg', '2021-08-15 07:14:26', '2021-08-15 07:14:26'),
(9, 6, '16298934086126332054424.jpg', '2021-08-25 21:10:08', '2021-08-25 21:10:08'),
(10, 7, '169243411464e07ec23cdd6.png', '2023-08-19 17:35:14', '2023-08-19 17:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `meal_ingredients`
--

CREATE TABLE `meal_ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_ingredients`
--

INSERT INTO `meal_ingredients` (`id`, `meal_id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(2, 1, 'فرخه كاملة 1200 غرام', 'Chicken 1200 g', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(3, 1, 'رز 2 كاسة', 'Rice 2 Cups', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(4, 1, 'كوسا كيلو', 'Zucchini kilo', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(5, 1, 'طماطم نصف كيلو', 'Tomatoes half a kilo', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(6, 1, 'بطاطس نصف كيلو', 'Half a kilo of potatoes', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(7, 1, 'لوز مقشر كاسة', 'Cup peeled almonds', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(8, 1, 'زبيب كاسة', 'Raisin cup', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(9, 1, 'مكعبات مرقة الدجاج ماجي عدد 2', '2 MAGGI Chicken Stock cubes', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(10, 1, NULL, NULL, '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(11, 1, 'ملح حسب الطلب', 'Salt to order', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(12, 1, 'كمون ملعقة صغيرة', 'Cumin teaspoon', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(13, 1, 'فلفل اسود ملعقة صغيرة', 'Black pepper teaspoon', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(14, 1, 'فلفل احمر ملعقة صغيرة', 'Red pepper teaspoon', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(15, 1, 'سمنة نباتي 2 ملعقة كبيرة', 'Vegetable ghee a tablespoon', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(16, 1, 'ماء 2 كاسة', 'Water 2 cups', '2021-08-15 04:38:58', '2021-08-15 04:38:58'),
(26, 4, 'نصف كيلو جمبري', 'Half a kilo of shrimp', '2021-08-15 06:38:01', '2021-08-15 06:38:01'),
(27, 2, 'كيلو من اللحم المفروم البقري', 'Kilo of ground beef', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(28, 2, 'طماطم 2 كيلو', 'Tomatoes 2 kg', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(29, 2, 'بصلة كبيرة', 'Big onion', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(30, 2, 'ملعقة سمنة كبيرة', 'Big spoon of ghee', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(31, 2, 'ملح حسب الرغبة', 'Salt, to taste', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(32, 2, 'ملعقة صغيرة فلفل اسود', 'Teaspoon black pepper', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(33, 2, 'ملعقة صغيرة 7 بهارات', 'Teaspoon 7 spices', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(34, 2, 'بقدونس للتزيين', 'Parsley for garnish', '2021-08-15 06:46:58', '2021-08-15 06:46:58'),
(37, 6, 'طازج', 'Fresh', '2021-08-25 21:10:08', '2021-08-25 21:10:08'),
(38, 5, 'راس ملفوف كبير', 'large cabbage head', '2023-03-04 08:23:26', '2023-03-04 08:23:26'),
(39, 7, 'وصف عربي للمقادير', 'test arabic prob', '2023-08-19 17:35:14', '2023-08-19 17:35:14'),
(40, 7, 'وصف عربي للمقادير 2', 'test arabic prob2', '2023-08-19 17:35:14', '2023-08-19 17:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `meal_rates`
--

CREATE TABLE `meal_rates` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal_rates`
--

INSERT INTO `meal_rates` (`id`, `user_id`, `meal_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 37, 1, '4', '2023-03-01 23:13:27', '2023-03-21 08:31:32'),
(2, 1, 1, '1', '2023-03-12 14:39:05', '2023-03-12 14:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_12_000000_create_app_explanations_table', 1),
(2, '2013_10_12_000000_create_contact_us_table', 1),
(3, '2013_10_12_000000_create_copons_table', 1),
(4, '2013_10_12_000000_create_packages_table', 1),
(5, '2013_10_12_000000_create_periods_table', 1),
(6, '2013_10_12_000000_create_settings_table', 1),
(7, '2014_10_11_000000_create_cities_table', 1),
(8, '2014_10_11_000001_create_regions_table', 1),
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2015_02_25_123734_create_locations_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2020_01_26_213953_create_notifications_table', 1),
(14, '2020_01_26_222819_create_aboutus_table', 1),
(15, '2020_02_25_142834_create_terms_table', 1),
(16, '2020_02_25_143036_create_verifications_table', 1),
(17, '2020_03_03_101002_create_meals_table', 1),
(18, '2020_03_03_101003_create_meal_images_table', 1),
(19, '2020_03_03_101004_create_meal_ingredients_table', 1),
(20, '2020_03_03_101009_create_user_likes_table', 1),
(21, '2020_03_03_101033_create_schedualed_meals_table', 1),
(22, '2020_03_03_101222_create_orders_table', 1),
(23, '2020_03_03_101223_create_order_meals_table', 1),
(24, '2021_02_22_080200_create_permission_tables', 1),
(25, '2020_03_03_101004_create_meal_rates_table', 1),
(26, '2020_03_03_101009_create_user_subscriptions_table', 2),
(27, '2023_02_24_221350_create_delegates_table', 2),
(28, '2023_02_24_221516_create_drivers_table', 2),
(29, '2023_02_24_235510_create_tags_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 1),
(3, 'App\\Models\\Admin', 1),
(4, 'App\\Models\\Admin', 1),
(5, 'App\\Models\\Admin', 1),
(6, 'App\\Models\\Admin', 1),
(7, 'App\\Models\\Admin', 1),
(8, 'App\\Models\\Admin', 1),
(9, 'App\\Models\\Admin', 1),
(10, 'App\\Models\\Admin', 1),
(11, 'App\\Models\\Admin', 1),
(12, 'App\\Models\\Admin', 1),
(13, 'App\\Models\\Admin', 1),
(14, 'App\\Models\\Admin', 1),
(15, 'App\\Models\\Admin', 1),
(16, 'App\\Models\\Admin', 1),
(17, 'App\\Models\\Admin', 1),
(18, 'App\\Models\\Admin', 1),
(19, 'App\\Models\\Admin', 1),
(20, 'App\\Models\\Admin', 1),
(21, 'App\\Models\\Admin', 1),
(22, 'App\\Models\\Admin', 1),
(23, 'App\\Models\\Admin', 1),
(24, 'App\\Models\\Admin', 1),
(25, 'App\\Models\\Admin', 1),
(26, 'App\\Models\\Admin', 1),
(27, 'App\\Models\\Admin', 1),
(28, 'App\\Models\\Admin', 1),
(29, 'App\\Models\\Admin', 1),
(30, 'App\\Models\\Admin', 1),
(31, 'App\\Models\\Admin', 1),
(32, 'App\\Models\\Admin', 1),
(33, 'App\\Models\\Admin', 1),
(34, 'App\\Models\\Admin', 1),
(35, 'App\\Models\\Admin', 1),
(36, 'App\\Models\\Admin', 1),
(37, 'App\\Models\\Admin', 1),
(38, 'App\\Models\\Admin', 1),
(39, 'App\\Models\\Admin', 1),
(40, 'App\\Models\\Admin', 1),
(41, 'App\\Models\\Admin', 1),
(42, 'App\\Models\\Admin', 1),
(43, 'App\\Models\\Admin', 1),
(44, 'App\\Models\\Admin', 1),
(45, 'App\\Models\\Admin', 1),
(46, 'App\\Models\\Admin', 1),
(47, 'App\\Models\\Admin', 1),
(48, 'App\\Models\\Admin', 1),
(49, 'App\\Models\\Admin', 1),
(50, 'App\\Models\\Admin', 1),
(51, 'App\\Models\\Admin', 1),
(52, 'App\\Models\\Admin', 1),
(53, 'App\\Models\\Admin', 1),
(54, 'App\\Models\\Admin', 1),
(55, 'App\\Models\\Admin', 1),
(56, 'App\\Models\\Admin', 1),
(57, 'App\\Models\\Admin', 1),
(58, 'App\\Models\\Admin', 1),
(59, 'App\\Models\\Admin', 1),
(60, 'App\\Models\\Admin', 1),
(61, 'App\\Models\\Admin', 1),
(62, 'App\\Models\\Admin', 1),
(63, 'App\\Models\\Admin', 1),
(64, 'App\\Models\\Admin', 1),
(65, 'App\\Models\\Admin', 1),
(66, 'App\\Models\\Admin', 1),
(67, 'App\\Models\\Admin', 1),
(68, 'App\\Models\\Admin', 1),
(69, 'App\\Models\\Admin', 1),
(70, 'App\\Models\\Admin', 1),
(71, 'App\\Models\\Admin', 1),
(72, 'App\\Models\\Admin', 1),
(73, 'App\\Models\\Admin', 1),
(74, 'App\\Models\\Admin', 1),
(75, 'App\\Models\\Admin', 1),
(76, 'App\\Models\\Admin', 1),
(77, 'App\\Models\\Admin', 1),
(78, 'App\\Models\\Admin', 1),
(79, 'App\\Models\\Admin', 1),
(80, 'App\\Models\\Admin', 1),
(81, 'App\\Models\\Admin', 1),
(82, 'App\\Models\\Admin', 1),
(1, 'App\\Models\\Admin', 5),
(2, 'App\\Models\\Admin', 5),
(3, 'App\\Models\\Admin', 5),
(35, 'App\\Models\\Admin', 5),
(1, 'App\\Models\\Admin', 6),
(2, 'App\\Models\\Admin', 6),
(3, 'App\\Models\\Admin', 6),
(4, 'App\\Models\\Admin', 6),
(5, 'App\\Models\\Admin', 6),
(6, 'App\\Models\\Admin', 6),
(7, 'App\\Models\\Admin', 6),
(8, 'App\\Models\\Admin', 6),
(9, 'App\\Models\\Admin', 6),
(10, 'App\\Models\\Admin', 6),
(11, 'App\\Models\\Admin', 6),
(12, 'App\\Models\\Admin', 6),
(13, 'App\\Models\\Admin', 6),
(14, 'App\\Models\\Admin', 6),
(15, 'App\\Models\\Admin', 6),
(16, 'App\\Models\\Admin', 6),
(17, 'App\\Models\\Admin', 6),
(18, 'App\\Models\\Admin', 6),
(19, 'App\\Models\\Admin', 6),
(20, 'App\\Models\\Admin', 6),
(21, 'App\\Models\\Admin', 6),
(22, 'App\\Models\\Admin', 6),
(23, 'App\\Models\\Admin', 6),
(24, 'App\\Models\\Admin', 6),
(25, 'App\\Models\\Admin', 6),
(26, 'App\\Models\\Admin', 6),
(27, 'App\\Models\\Admin', 6),
(28, 'App\\Models\\Admin', 6),
(29, 'App\\Models\\Admin', 6),
(30, 'App\\Models\\Admin', 6),
(31, 'App\\Models\\Admin', 6),
(32, 'App\\Models\\Admin', 6),
(33, 'App\\Models\\Admin', 6),
(34, 'App\\Models\\Admin', 6),
(35, 'App\\Models\\Admin', 6),
(36, 'App\\Models\\Admin', 6),
(37, 'App\\Models\\Admin', 6),
(38, 'App\\Models\\Admin', 6),
(39, 'App\\Models\\Admin', 6),
(40, 'App\\Models\\Admin', 6),
(41, 'App\\Models\\Admin', 6),
(42, 'App\\Models\\Admin', 6),
(43, 'App\\Models\\Admin', 6),
(44, 'App\\Models\\Admin', 6),
(45, 'App\\Models\\Admin', 6),
(46, 'App\\Models\\Admin', 6),
(47, 'App\\Models\\Admin', 6),
(48, 'App\\Models\\Admin', 6),
(49, 'App\\Models\\Admin', 6),
(50, 'App\\Models\\Admin', 6),
(51, 'App\\Models\\Admin', 6),
(52, 'App\\Models\\Admin', 6),
(53, 'App\\Models\\Admin', 6),
(54, 'App\\Models\\Admin', 6),
(55, 'App\\Models\\Admin', 6),
(56, 'App\\Models\\Admin', 6),
(57, 'App\\Models\\Admin', 6),
(58, 'App\\Models\\Admin', 6),
(59, 'App\\Models\\Admin', 6),
(60, 'App\\Models\\Admin', 6),
(61, 'App\\Models\\Admin', 6),
(62, 'App\\Models\\Admin', 6),
(63, 'App\\Models\\Admin', 6),
(64, 'App\\Models\\Admin', 6),
(65, 'App\\Models\\Admin', 6),
(66, 'App\\Models\\Admin', 6),
(67, 'App\\Models\\Admin', 6),
(68, 'App\\Models\\Admin', 6),
(69, 'App\\Models\\Admin', 6),
(70, 'App\\Models\\Admin', 6),
(71, 'App\\Models\\Admin', 6),
(72, 'App\\Models\\Admin', 6),
(73, 'App\\Models\\Admin', 6),
(74, 'App\\Models\\Admin', 6),
(75, 'App\\Models\\Admin', 6),
(76, 'App\\Models\\Admin', 6),
(77, 'App\\Models\\Admin', 6),
(78, 'App\\Models\\Admin', 6),
(79, 'App\\Models\\Admin', 6),
(80, 'App\\Models\\Admin', 6),
(81, 'App\\Models\\Admin', 6),
(82, 'App\\Models\\Admin', 6),
(1, 'App\\Models\\Admin', 7),
(1, 'App\\Models\\Admin', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '0=>user, 1=>delegate, 2=>driver',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` tinyint(4) DEFAULT NULL COMMENT '1=>package, 2=>points, 3=>online',
  `order_package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_points` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_visa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_cash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT NULL,
  `delegate_id` bigint(20) DEFAULT NULL,
  `period_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `copon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `received` timestamp NULL DEFAULT NULL,
  `prepared` datetime DEFAULT NULL,
  `on_way` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_before` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_after` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_status`, `visa_value`, `order_number`, `payment_type`, `order_package`, `order_points`, `order_visa`, `order_cash`, `user_id`, `driver_id`, `delegate_id`, `period_id`, `location_id`, `copon_id`, `notes`, `received`, `prepared`, `on_way`, `delivered`, `discount`, `total_before`, `total_after`, `total_delivery`, `rate`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '945287', 1, '0', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2021-08-16 03:39:49', '2023-03-18 00:44:20', '2023-03-12 03:13:44', '2023-03-12 02:39:50', '0', '500.0', '500.0', '30.0', NULL, NULL, '2021-08-16 03:39:49', '2023-03-18 07:44:20'),
(2, 'paid', '100', '7489622', 1, '0', '0', '0', '0', 22, NULL, NULL, 1, 30, NULL, NULL, '2021-08-17 01:33:45', NULL, NULL, NULL, '0', '120.0', '120.0', '20.0', NULL, NULL, '2021-08-17 01:33:45', '2023-03-07 07:03:03'),
(3, NULL, NULL, '7109522', 1, '0', '0', '0', '0', 22, NULL, NULL, 1, 30, NULL, NULL, '2021-08-17 01:33:55', NULL, NULL, NULL, '0', '120.0', '120.0', '20.0', NULL, NULL, '2021-08-17 01:33:55', '2021-08-17 01:33:55'),
(4, NULL, NULL, '6835522', 1, '0', '0', '0', '0', 22, NULL, NULL, 1, 30, NULL, NULL, '2021-08-17 01:34:20', NULL, NULL, NULL, '0', '120.0', '120.0', '20.0', NULL, NULL, '2021-08-17 01:34:20', '2021-08-17 01:34:20'),
(5, NULL, NULL, '4298422', 2, '0', '0', '0', '0', 22, NULL, NULL, 1, 30, NULL, NULL, '2021-08-17 01:53:03', NULL, NULL, NULL, '0', '120.0', '120.0', '20.0', NULL, NULL, '2021-08-17 01:53:03', '2021-08-17 01:53:03'),
(6, NULL, NULL, '8059022', 2, '0', '0', '0', '0', 22, NULL, NULL, 1, 30, NULL, NULL, '2021-08-17 01:53:44', NULL, NULL, NULL, '0', '120.0', '120.0', '20.0', NULL, NULL, '2021-08-17 01:53:44', '2021-08-17 01:53:44'),
(7, NULL, NULL, '7104222', 2, '0', '0', '0', '0', 22, NULL, NULL, 1, 30, NULL, NULL, '2021-08-17 01:54:05', NULL, NULL, NULL, '0', '120.0', '120.0', '20.0', NULL, NULL, '2021-08-17 01:54:05', '2021-08-17 01:54:05'),
(8, NULL, NULL, '496751', 2, '0', '0', '0', '0', 1, NULL, NULL, 2, 22, NULL, 'Bbbb', '2021-08-17 01:57:53', NULL, NULL, NULL, '0', '120', '120', '20', NULL, NULL, '2021-08-17 01:57:53', '2021-08-17 01:57:53'),
(9, NULL, NULL, '4956922', 2, '0', '0', '0', '0', 22, NULL, NULL, 1, 30, NULL, NULL, '2021-08-17 01:58:49', NULL, NULL, NULL, '0', '120.0', '120.0', '20.0', NULL, NULL, '2021-08-17 01:58:49', '2021-08-17 01:58:49'),
(10, NULL, NULL, '6686029', 1, '0', '0', '0', '0', 29, NULL, NULL, 2, 27, NULL, 'Please enter instruction in details', '2021-08-19 21:48:54', NULL, NULL, NULL, '0', '0', '0', '20', NULL, NULL, '2021-08-19 21:48:54', '2021-08-19 21:48:54'),
(11, NULL, NULL, '5874822', 2, '0', '0', '0', '0', 22, NULL, NULL, 1, 26, NULL, NULL, '2021-08-21 01:10:18', NULL, NULL, NULL, '0', '250.0', '250.0', '20.0', NULL, NULL, '2021-08-21 01:10:18', '2021-08-21 01:10:18'),
(12, NULL, NULL, '1222622', 2, '0', '0', '0', '0', 22, NULL, NULL, 4, 26, NULL, NULL, '2021-08-21 01:22:01', NULL, NULL, NULL, '0', '250.0', '250.0', '20.0', NULL, NULL, '2021-08-21 01:22:01', '2021-08-21 01:22:01'),
(13, NULL, NULL, '751567', 2, '0', '0', '0', '0', 7, NULL, NULL, 1, 19, NULL, NULL, '2021-08-21 01:24:13', NULL, NULL, NULL, '0', '250.0', '250.0', '30.0', NULL, NULL, '2021-08-21 01:24:13', '2021-08-21 01:24:13'),
(14, NULL, NULL, '234197', 2, '0', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2021-08-21 01:43:39', NULL, NULL, NULL, '0', '250.0', '250.0', '30.0', NULL, NULL, '2021-08-21 01:43:39', '2021-08-21 01:43:39'),
(15, NULL, NULL, '758657', 2, '0', '0', '0', '0', 7, NULL, NULL, 2, 19, NULL, NULL, '2021-08-21 23:34:54', NULL, NULL, NULL, '0', '250.0', '250.0', '30.0', NULL, NULL, '2021-08-21 23:34:54', '2021-08-21 23:34:54'),
(16, NULL, NULL, '483067', 2, '0', '0', '0', '0', 7, NULL, NULL, 2, 19, NULL, NULL, '2021-08-21 23:57:17', NULL, NULL, NULL, '0', '250.0', '250.0', '30.0', NULL, NULL, '2021-08-21 23:57:17', '2021-08-21 23:57:17'),
(17, NULL, NULL, '958867', 1, '0', '0', '0', '0', 7, NULL, NULL, 2, 22, NULL, 'Bbbb', '2021-08-22 00:01:36', NULL, NULL, NULL, '0', '300', '300', '50', NULL, NULL, '2021-08-22 00:01:36', '2021-08-22 00:01:36'),
(18, NULL, NULL, '179877', 2, '0', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2021-08-22 00:14:15', NULL, NULL, NULL, '0', '250.0', '250.0', '30.0', NULL, NULL, '2021-08-22 00:14:15', '2021-08-22 00:14:15'),
(19, NULL, NULL, '575867', 2, '0', '0', '0', '0', 7, NULL, NULL, 2, 22, NULL, 'Bbbb', '2021-08-22 00:26:07', NULL, NULL, NULL, '0', '300', '300', '50', NULL, NULL, '2021-08-22 00:26:07', '2021-08-22 00:26:07'),
(31, NULL, NULL, '761487', 1, '0', '0', '0', '0', 7, NULL, NULL, 1, 19, NULL, NULL, '2021-08-23 03:39:48', NULL, NULL, NULL, '0', '120.0', '120.0', '30.0', NULL, NULL, '2021-08-23 03:39:48', '2021-08-23 03:39:48'),
(32, NULL, NULL, '897787', 2, '0', '0', '0', '0', 7, NULL, NULL, 1, 19, NULL, NULL, '2021-08-23 03:39:54', NULL, '2022-12-26 01:19:36', NULL, '0', '120.0', '120.0', '30.0', NULL, NULL, '2021-08-23 03:39:54', '2022-12-26 01:19:36'),
(33, NULL, NULL, '727688', 1, '0', '0', '0', '0', 8, NULL, NULL, 2, 23, NULL, 'Vhh', '2021-08-29 06:02:29', NULL, NULL, NULL, '0', '190', '190', '30', NULL, NULL, '2021-08-29 06:02:29', '2021-08-29 06:02:29'),
(34, NULL, NULL, '173268', 2, '0', '0', '0', '0', 8, NULL, NULL, 2, 23, NULL, 'Vhh', '2021-08-29 06:02:34', NULL, NULL, NULL, '0', '190', '190', '30', NULL, NULL, '2021-08-29 06:02:34', '2021-08-29 06:02:34'),
(35, NULL, NULL, '3031829', 2, '0', '0', '0', '0', 29, NULL, NULL, 2, 27, NULL, 'Fftf', '2021-08-29 06:07:01', NULL, NULL, NULL, '0', '190', '190', '20', NULL, NULL, '2021-08-29 06:07:01', '2021-08-29 06:07:01'),
(36, NULL, NULL, '7440229', 1, '0', '0', '0', '0', 29, NULL, NULL, 2, 27, NULL, 'Fftf', '2021-08-29 06:07:05', NULL, NULL, NULL, '0', '190', '190', '20', NULL, NULL, '2021-08-29 06:07:05', '2021-08-29 06:07:05'),
(37, NULL, NULL, '220717', 3, '0', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-05 04:48:42', NULL, NULL, NULL, '0', '1550', '1550', '30.0', NULL, NULL, '2023-03-05 04:48:42', '2023-03-05 04:48:42'),
(38, NULL, NULL, '875387', 4, '0', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 00:39:47', NULL, NULL, NULL, '0', '350', '350', '30.0', NULL, NULL, '2023-03-08 00:39:47', '2023-03-08 00:39:47'),
(39, NULL, NULL, '5648422', 3, '0', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:27:44', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:27:44', '2023-03-08 11:27:44'),
(40, NULL, NULL, '6946122', 3, '0', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:28:42', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:28:42', '2023-03-08 11:28:42'),
(41, NULL, NULL, '1354122', 3, '0', '0', '190', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:31:25', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:31:25', '2023-03-08 11:31:25'),
(42, NULL, NULL, '2083522', 3, '0', '0', '190', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:33:54', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:33:54', '2023-03-08 11:33:54'),
(43, NULL, NULL, '1072022', 3, '0', '0', '190', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:34:02', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:34:02', '2023-03-08 11:34:02'),
(44, NULL, NULL, '8515122', 3, '0', '0', '190', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:36:10', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:36:10', '2023-03-08 11:36:10'),
(45, NULL, NULL, '6332222', 3, '0', '0', '190', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:37:24', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:37:24', '2023-03-08 11:37:24'),
(46, NULL, NULL, '8198322', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:37:45', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:37:45', '2023-03-08 11:37:45'),
(47, NULL, NULL, '9508422', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:43:20', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:43:20', '2023-03-08 11:43:20'),
(48, NULL, NULL, '2308122', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:55:01', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:55:01', '2023-03-08 11:55:01'),
(49, NULL, NULL, '4264622', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:57:47', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:57:47', '2023-03-08 11:57:47'),
(50, NULL, NULL, '6344022', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 11:59:04', NULL, NULL, NULL, '0', '0', '190', '10', NULL, NULL, '2023-03-08 11:59:04', '2023-03-08 11:59:04'),
(51, NULL, NULL, '5529322', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 12:03:37', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-08 12:03:37', '2023-03-08 12:03:37'),
(52, NULL, NULL, '8346722', 1, '100', '45', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 12:04:29', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-08 12:04:29', '2023-03-08 12:04:29'),
(53, NULL, NULL, '8336122', 1, '0', '95', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 12:04:48', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-08 12:04:48', '2023-03-08 12:04:48'),
(54, NULL, NULL, '8617422', 1, '0', '95', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 12:05:29', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-08 12:05:29', '2023-03-08 12:05:29'),
(55, NULL, NULL, '1694922', 1, '0', '95', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 12:07:16', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-08 12:07:16', '2023-03-08 12:07:16'),
(56, NULL, NULL, '1929522', 1, '0', '18', '154', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-08 12:07:35', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-08 12:07:35', '2023-03-08 12:07:35'),
(57, NULL, NULL, '136737', 1, '380', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 19:49:36', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-03-08 19:49:36', '2023-03-08 19:49:36'),
(58, NULL, NULL, '844547', 3, '0', '0', '380', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 19:51:24', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-03-08 19:51:24', '2023-03-08 19:51:24'),
(59, NULL, NULL, '353367', 3, '0', '0', '380', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 20:06:04', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-03-08 20:06:04', '2023-03-08 20:06:04'),
(60, NULL, NULL, '558207', 1, '730', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 20:14:29', NULL, NULL, NULL, '0', '730', '730', '30', NULL, NULL, '2023-03-08 20:14:29', '2023-03-08 20:14:29'),
(61, NULL, NULL, '826957', 1, '380', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 20:17:31', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-03-08 20:17:31', '2023-03-08 20:17:31'),
(62, NULL, NULL, '363327', 1, '380', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 20:18:39', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-03-08 20:18:39', '2023-03-08 20:18:39'),
(63, NULL, NULL, '249867', 1, '380', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 20:19:35', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-03-08 20:19:35', '2023-03-08 20:19:35'),
(64, NULL, NULL, '714987', 1, '380', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-08 20:22:07', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-03-08 20:22:07', '2023-03-08 20:22:07'),
(65, NULL, NULL, '3964822', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-11 00:15:48', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-11 00:15:48', '2023-03-11 00:15:48'),
(66, NULL, NULL, '3613022', 1, '110', '30', '20', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-11 00:50:01', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-11 00:50:01', '2023-03-11 00:50:01'),
(67, NULL, NULL, '245177', 1, '442.5', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 20:07:12', NULL, NULL, NULL, '0', '442.5', '442.5', '30', NULL, NULL, '2023-03-11 20:07:12', '2023-03-11 20:07:12'),
(68, NULL, NULL, '676107', 1, '230', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 22:33:50', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 22:33:50', '2023-03-11 22:33:50'),
(69, NULL, NULL, '137147', 1, '48', '91', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:05:21', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 23:05:21', '2023-03-11 23:05:21'),
(70, NULL, NULL, '168577', 1, '0', '115', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:09:17', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 23:09:17', '2023-03-11 23:09:17'),
(71, NULL, NULL, '415907', 1, '0', '115', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:11:41', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 23:11:41', '2023-03-11 23:11:41'),
(72, NULL, NULL, '411537', 1, '0', '227', '176', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:12:41', NULL, NULL, NULL, '0', '630', '630', '30', NULL, NULL, '2023-03-11 23:12:41', '2023-03-11 23:12:41'),
(73, NULL, NULL, '100947', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:17:47', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 23:17:47', '2023-03-11 23:17:47'),
(74, NULL, NULL, '591787', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:22:48', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 23:22:48', '2023-03-11 23:22:48'),
(75, 'paid', '230', '376567', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:23:25', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 23:23:25', '2023-03-11 23:25:40'),
(76, NULL, NULL, '372067', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-11 23:26:28', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-11 23:26:28', '2023-03-11 23:26:28'),
(77, 'paid', '230', '361647', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 00:02:58', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 00:02:58', '2023-03-12 00:08:42'),
(78, 'paid', '230', '290667', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 00:06:17', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 00:06:17', '2023-03-12 00:07:31'),
(79, 'paid', '230', '833777', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 00:12:02', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 00:12:02', '2023-03-12 00:12:35'),
(80, 'paid', '230', '798327', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 00:18:49', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 00:18:49', '2023-03-12 00:19:22'),
(81, NULL, NULL, '187957', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 00:19:45', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 00:19:45', '2023-03-12 00:19:45'),
(82, NULL, NULL, '309897', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 01:04:08', NULL, '2023-03-12 03:03:56', NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 01:04:08', '2023-03-12 03:03:56'),
(83, NULL, NULL, '2483522', 1, '0', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-12 01:05:01', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-12 01:05:01', '2023-03-12 01:05:01'),
(84, NULL, NULL, '185917', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 01:14:02', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 01:14:02', '2023-03-12 01:14:03'),
(85, NULL, NULL, '7860522', 1, '190', '0', '0', '0', 22, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-03-12 01:14:05', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-03-12 01:14:05', '2023-03-12 01:14:05'),
(86, NULL, NULL, '267517', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 01:15:36', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 01:15:36', '2023-03-12 01:15:36'),
(87, NULL, NULL, '113127', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 02:22:30', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 02:22:30', '2023-03-12 02:22:30'),
(88, NULL, NULL, '413077', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 02:24:22', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 02:24:22', '2023-03-12 02:24:22'),
(89, NULL, NULL, '996817', 4, '0', '0', '0', '230', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-12 02:28:36', NULL, '2023-03-12 19:26:28', NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-12 02:28:36', '2023-03-12 19:26:28'),
(90, NULL, NULL, '196997', 4, '0', '0', '0', '230', 7, 1, 1, 1, 20, NULL, NULL, '2023-03-12 02:29:47', NULL, '2023-03-12 03:08:51', '2023-03-12 02:33:27', '0', '230', '230', '30', NULL, NULL, '2023-03-12 02:29:47', '2023-03-12 06:01:33'),
(91, NULL, NULL, '912637', 4, '0', '0', '0', '0', 7, 1, 1, 1, 20, NULL, NULL, '2023-03-12 02:33:06', NULL, '2023-03-12 03:53:15', '2023-03-12 02:38:44', '0', '230', '230', '30', NULL, NULL, '2023-03-12 02:33:06', '2023-03-12 06:10:19'),
(92, NULL, NULL, '6670522', 1, '220', '0', '0', '0', 22, 1, 1, 2, 30, NULL, NULL, '2023-03-12 06:04:04', NULL, '2023-03-12 19:45:22', '2023-03-12 06:06:44', '0', '220', '220', '20', NULL, NULL, '2023-03-12 06:04:04', '2023-03-12 19:45:22'),
(93, NULL, NULL, '7985522', 4, '0', '0', '0', '220', 22, NULL, NULL, 1, 26, NULL, NULL, '2023-03-12 20:54:26', NULL, NULL, NULL, '0', '220', '220', '20', NULL, NULL, '2023-03-12 20:54:26', '2023-03-12 20:54:26'),
(94, 'paid', '1430', '255117', 3, '0', '0', '1430', '0', 7, NULL, NULL, 3, 32, NULL, NULL, '2023-03-15 04:35:45', NULL, NULL, NULL, '0', '1430', '1430', '30', NULL, NULL, '2023-03-15 04:35:45', '2023-03-15 04:36:20'),
(95, NULL, NULL, '813917', 4, '0', '0', '0', '730', 7, NULL, NULL, 3, 20, NULL, NULL, '2023-03-15 04:39:16', NULL, NULL, NULL, '0', '730', '730', '30', NULL, NULL, '2023-03-15 04:39:16', '2023-03-15 04:39:16'),
(96, 'paid', '230', '888467', 3, '0', '0', '230', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-16 21:36:08', NULL, NULL, NULL, '0', '230', '230', '30', NULL, NULL, '2023-03-16 21:36:08', '2023-03-16 21:37:04'),
(97, 'paid', '170', '308827', 1, '300', '30', '170', '0', 7, NULL, NULL, 2, 20, NULL, NULL, '2023-03-16 22:05:55', NULL, NULL, NULL, '0', '530', '530', '30', NULL, NULL, '2023-03-16 22:05:55', '2023-03-16 22:06:48'),
(98, NULL, NULL, '601817', 4, '0', '0', '0', '530', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-03-23 20:11:42', NULL, NULL, NULL, '0', '530', '530', '30', NULL, NULL, '2023-03-23 20:11:42', '2023-03-23 20:11:42'),
(99, NULL, NULL, '8418354', 4, '0', '0', '0', '420', 54, NULL, NULL, 3, 85, NULL, NULL, '2023-03-30 08:15:59', NULL, NULL, NULL, '0', '420', '420', '20', NULL, NULL, '2023-03-30 08:15:59', '2023-03-30 08:15:59'),
(100, 'paid', '420', '8374554', 3, '0', '0', '420', '0', 54, NULL, NULL, 1, 85, NULL, NULL, '2023-04-03 03:40:36', NULL, NULL, NULL, '0', '420', '420', '20', NULL, NULL, '2023-04-03 03:40:36', '2023-04-03 03:41:17'),
(101, NULL, NULL, '3405857', 1, '645', '0', '0', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:16:07', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:16:07', '2023-04-05 04:16:07'),
(102, NULL, NULL, '1742957', 1, '645', '0', '0', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:25:36', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:25:36', '2023-04-05 04:25:36'),
(103, NULL, NULL, '4529657', 1, '645', '0', '0', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:32:43', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:32:43', '2023-04-05 04:32:43'),
(104, NULL, NULL, '2646354', 3, '0', '0', '432.5', '0', 54, NULL, NULL, 1, 85, NULL, NULL, '2023-04-05 04:33:55', NULL, NULL, NULL, '0', '432.5', '432.5', '20', NULL, NULL, '2023-04-05 04:33:55', '2023-04-05 04:33:55'),
(105, NULL, NULL, '5274654', 4, '0', '0', '0', '432.5', 54, NULL, NULL, 1, 85, NULL, NULL, '2023-04-05 04:35:07', NULL, NULL, NULL, '0', '432.5', '432.5', '20', NULL, NULL, '2023-04-05 04:35:07', '2023-04-05 04:35:07'),
(106, NULL, NULL, '7837854', 1, '300', '30', '72.5', '0', 54, NULL, NULL, 1, 85, NULL, NULL, '2023-04-05 04:41:36', NULL, NULL, NULL, '0', '432.5', '432.5', '20', NULL, NULL, '2023-04-05 04:41:36', '2023-04-05 04:41:36'),
(107, NULL, NULL, '6689854', 1, '0', '0', '432.5', '0', 54, NULL, NULL, 1, 85, NULL, NULL, '2023-04-05 04:41:55', NULL, NULL, NULL, '0', '432.5', '432.5', '20', NULL, NULL, '2023-04-05 04:41:55', '2023-04-05 04:41:55'),
(108, NULL, NULL, '8577454', 1, '0', '0', '432.5', '0', 54, NULL, NULL, 1, 85, NULL, NULL, '2023-04-05 04:43:11', NULL, NULL, NULL, '0', '432.5', '432.5', '20', NULL, NULL, '2023-04-05 04:43:11', '2023-04-05 04:43:11'),
(109, NULL, NULL, '8738557', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:45:21', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:45:21', '2023-04-05 04:45:21'),
(110, NULL, NULL, '8376657', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:47:00', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:47:00', '2023-04-05 04:47:00'),
(111, 'paid', '645', '8296757', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:48:10', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:48:10', '2023-04-05 04:48:51'),
(112, NULL, NULL, '7506357', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:50:43', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:50:43', '2023-04-05 04:50:43'),
(113, 'paid', '645', '3480857', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:53:44', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:53:44', '2023-04-05 04:54:46'),
(114, NULL, NULL, '4642657', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 04:55:42', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 04:55:42', '2023-04-05 04:55:42'),
(115, 'paid', '645', '3647657', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 05:00:53', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 05:00:53', '2023-04-05 05:01:56'),
(116, NULL, NULL, '4797854', 4, '0', '0', '0', '432.5', 54, NULL, NULL, 1, 85, NULL, NULL, '2023-04-05 05:29:06', NULL, NULL, NULL, '0', '432.5', '432.5', '20', NULL, NULL, '2023-04-05 05:29:06', '2023-04-05 05:29:06'),
(117, NULL, NULL, '2058657', 3, '0', '0', '645', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 05:32:28', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 05:32:28', '2023-04-05 05:32:28'),
(118, NULL, NULL, '4679057', 4, '0', '0', '0', '645', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 05:32:58', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 05:32:58', '2023-04-05 05:32:58'),
(119, NULL, NULL, '2803757', 4, '0', '0', '0', '645', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 05:34:20', NULL, NULL, NULL, '0', '645', '645', '10', NULL, NULL, '2023-04-05 05:34:20', '2023-04-05 05:34:20'),
(120, NULL, NULL, '1255657', 1, '410', '0', '0', '0', 57, NULL, NULL, 2, 22, NULL, NULL, '2023-04-05 05:44:51', NULL, NULL, NULL, '0', '410', '410', '10', NULL, NULL, '2023-04-05 05:44:51', '2023-04-05 05:44:51'),
(121, NULL, NULL, '4723657', 1, '410', '0', '0', '0', 57, NULL, NULL, 1, 22, NULL, NULL, '2023-04-07 01:43:54', NULL, NULL, NULL, '0', '410', '410', '10', NULL, NULL, '2023-04-07 01:43:54', '2023-04-07 01:43:54'),
(122, NULL, NULL, '9511457', 3, '0', '0', '410', '0', 57, NULL, NULL, 1, 22, NULL, NULL, '2023-04-07 01:44:16', NULL, NULL, NULL, '0', '410', '410', '10', NULL, NULL, '2023-04-07 01:44:16', '2023-04-07 01:44:17'),
(123, NULL, NULL, '6659654', 4, '0', '0', '0', '442.5', 54, NULL, NULL, 1, 96, NULL, NULL, '2023-04-08 00:37:24', NULL, NULL, NULL, '0', '442.5', '442.5', '30', NULL, NULL, '2023-04-08 00:37:24', '2023-04-08 00:37:24'),
(124, 'paid', '442.5', '2902554', 3, '0', '0', '442.5', '0', 54, NULL, NULL, 1, 96, NULL, NULL, '2023-04-08 00:37:40', NULL, NULL, NULL, '0', '442.5', '442.5', '30', NULL, NULL, '2023-04-08 00:37:40', '2023-04-08 00:38:16'),
(125, NULL, NULL, '3379622', 4, '0', '0', '0', '25', 22, NULL, NULL, 2, 26, NULL, NULL, '2023-04-08 02:24:46', NULL, NULL, NULL, '0', '25', '25', '20', NULL, NULL, '2023-04-08 02:24:46', '2023-04-08 02:24:46'),
(126, NULL, NULL, '9548657', 1, '430', '0', '0', '0', 57, NULL, NULL, 4, 94, NULL, NULL, '2023-04-08 20:57:50', NULL, NULL, NULL, '0', '430', '430', '30', NULL, NULL, '2023-04-08 20:57:50', '2023-04-08 20:57:50'),
(127, NULL, NULL, '4399175', 3, '0', '0', '1230', '0', 75, NULL, NULL, 3, 98, NULL, NULL, '2023-05-29 02:49:24', NULL, NULL, NULL, '0', '1230', '1230', '30', NULL, NULL, '2023-05-29 02:49:24', '2023-05-29 02:49:25'),
(128, 'paid', '190', '8964075', 3, '0', '0', '190', '0', 75, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-05-29 19:07:41', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-05-29 19:07:41', '2023-05-29 19:43:22'),
(129, 'paid', '190', '9239275', 3, '0', '0', '190', '0', 75, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-05-29 19:49:27', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-05-29 19:49:27', '2023-05-29 19:50:35'),
(130, 'paid', '190', '8240475', 3, '0', '0', '190', '0', 75, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-05-29 20:00:27', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-05-29 20:00:27', '2023-05-29 20:01:16'),
(131, 'paid', '190', '9945975', 3, '0', '0', '190', '0', 75, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-05-29 20:01:50', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-05-29 20:01:50', '2023-05-29 20:02:34'),
(132, NULL, NULL, '7349175', 3, '0', '0', '190', '0', 75, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-05-29 20:07:37', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-05-29 20:07:37', '2023-05-29 20:07:37'),
(133, NULL, NULL, '4040175', 3, '0', '0', '190', '0', 75, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-05-29 20:07:51', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-05-29 20:07:51', '2023-05-29 20:07:51'),
(134, NULL, NULL, '3772175', 3, '0', '0', '190', '0', 75, NULL, NULL, 2, 22, NULL, 'Bbbb', '2023-05-29 20:11:35', NULL, NULL, NULL, '0', '190', '190', '10', NULL, NULL, '2023-05-29 20:11:35', '2023-05-29 20:11:36'),
(135, NULL, NULL, '7833257', 3, '0', '0', '430', '0', 57, NULL, NULL, 1, 94, NULL, NULL, '2023-05-29 23:16:44', NULL, NULL, NULL, '0', '430', '430', '30', NULL, NULL, '2023-05-29 23:16:44', '2023-05-29 23:16:44'),
(136, 'paid', '430', '3076857', 3, '0', '0', '430', '0', 57, NULL, NULL, 1, 94, NULL, NULL, '2023-05-29 23:27:01', NULL, NULL, NULL, '0', '430', '430', '30', NULL, NULL, '2023-05-29 23:27:01', '2023-05-29 23:29:01'),
(137, NULL, NULL, '8181357', 3, '0', '0', '430', '0', 57, NULL, NULL, 1, 94, NULL, NULL, '2023-05-30 05:06:04', NULL, NULL, NULL, '0', '430', '430', '30', NULL, NULL, '2023-05-30 05:06:04', '2023-05-30 05:06:04'),
(138, 'paid', '410', '752457', 3, '0', '0', '410', '0', 7, NULL, NULL, 1, 127, NULL, NULL, '2023-05-31 00:44:50', NULL, NULL, NULL, '0', '410', '410', '10', NULL, NULL, '2023-05-31 00:44:50', '2023-05-31 00:46:27'),
(139, NULL, NULL, '128177', 1, '430', '0', '0', '0', 7, NULL, NULL, 1, 20, NULL, NULL, '2023-05-31 03:07:13', NULL, NULL, NULL, '0', '430', '430', '30', NULL, NULL, '2023-05-31 03:07:13', '2023-05-31 03:07:14'),
(140, 'paid', '780', '549647', 3, '0', '0', '780', '0', 7, NULL, NULL, 4, 20, NULL, NULL, '2023-05-31 03:07:50', NULL, NULL, NULL, '0', '780', '780', '30', NULL, NULL, '2023-05-31 03:07:50', '2023-05-31 03:08:26'),
(141, NULL, NULL, '950487', 1, '430', '0', '0', '0', 7, NULL, NULL, 4, 20, NULL, NULL, '2023-05-31 03:09:58', NULL, NULL, NULL, '0', '430', '430', '30', NULL, NULL, '2023-05-31 03:09:58', '2023-05-31 03:09:58'),
(142, NULL, NULL, '217667', 1, '380', '0', '0', '0', 7, NULL, NULL, 4, 20, NULL, NULL, '2023-05-31 03:11:04', NULL, NULL, NULL, '0', '380', '380', '30', NULL, NULL, '2023-05-31 03:11:04', '2023-05-31 03:11:04'),
(143, 'paid', '118', '838837', 1, '260', '150', '118', '0', 7, NULL, NULL, 4, 20, NULL, NULL, '2023-05-31 03:12:01', NULL, NULL, NULL, '0', '780', '780', '30', NULL, NULL, '2023-05-31 03:12:01', '2023-05-31 03:12:34'),
(144, 'paid', '2730', '2695178', 3, '0', '0', '2730', '0', 78, NULL, NULL, 1, 128, NULL, NULL, '2023-06-02 03:27:28', NULL, '2023-06-02 03:29:47', '2023-06-02 03:29:58', '0', '2730', '2730', '30', NULL, NULL, '2023-06-02 03:27:28', '2023-06-02 03:29:58'),
(145, 'paid', '1230', '7703779', 3, '0', '0', '1230', '0', 79, NULL, NULL, 4, 129, NULL, NULL, '2023-06-10 20:18:45', NULL, NULL, NULL, '0', '1230', '1230', '30', NULL, NULL, '2023-06-10 20:18:45', '2023-06-10 20:21:13'),
(146, NULL, NULL, '1207680', 4, '0', '0', '0', '830', 80, NULL, NULL, 1, 130, NULL, NULL, '2023-06-28 08:14:38', NULL, '2023-06-28 08:15:55', '2023-07-02 01:46:17', '0', '830', '830', '30', NULL, NULL, '2023-06-28 08:14:38', '2023-07-02 01:46:17'),
(147, NULL, NULL, '7574279', 4, '0', '0', '0', '1530', 79, NULL, NULL, 3, 129, NULL, NULL, '2023-08-19 17:45:34', NULL, NULL, NULL, '0', '1530', '1530', '30', NULL, NULL, '2023-08-19 17:45:34', '2023-08-19 17:45:34'),
(148, NULL, NULL, '9385079', 4, '0', '0', '0', '1680', 79, NULL, NULL, 3, 129, NULL, NULL, '2023-08-19 17:47:25', NULL, NULL, NULL, '0', '1680', '1680', '30', NULL, NULL, '2023-08-19 17:47:25', '2023-08-19 17:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_meals`
--

CREATE TABLE `order_meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vip` tinyint(4) NOT NULL DEFAULT '0',
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `price` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_meals`
--

INSERT INTO `order_meals` (`id`, `status`, `order_id`, `vip`, `order_date`, `meal_id`, `quantity`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 0, '2021-08-17', 1, 2, 500, NULL, '2021-08-16 03:39:49', '2021-08-16 03:39:49'),
(2, 0, 4, 0, '2021-08-18', 5, 1, 120, NULL, '2021-08-17 01:34:20', '2021-08-17 01:34:20'),
(3, 0, 9, 0, '2021-08-18', 5, 1, 120, NULL, '2021-08-17 01:58:49', '2021-08-17 01:58:49'),
(4, 0, 10, 0, '2021-08-21', 1, 1, 0, NULL, '2021-08-19 21:48:54', '2021-08-19 21:48:54'),
(5, 0, 11, 0, '2021-08-22', 1, 1, 250, NULL, '2021-08-21 01:10:18', '2021-08-21 01:10:18'),
(6, 0, 12, 0, '2021-08-22', 1, 1, 250, NULL, '2021-08-21 01:22:01', '2021-08-21 01:22:01'),
(7, 0, 13, 0, '2021-08-22', 1, 1, 250, NULL, '2021-08-21 01:24:13', '2021-08-21 01:24:13'),
(8, 0, 14, 0, '2021-08-22', 1, 1, 250, NULL, '2021-08-21 01:43:39', '2021-08-21 01:43:39'),
(9, 0, 15, 0, '2021-08-23', 1, 1, 250, NULL, '2021-08-21 23:34:54', '2021-08-21 23:34:54'),
(10, 0, 16, 0, '2021-08-23', 1, 1, 250, NULL, '2021-08-21 23:57:17', '2021-08-21 23:57:17'),
(11, 0, 17, 0, '2021-06-28', 5, 1, 300, NULL, '2021-08-22 00:01:36', '2021-08-22 00:01:36'),
(12, 0, 18, 0, '2021-08-23', 1, 1, 250, NULL, '2021-08-22 00:14:15', '2021-08-22 00:14:15'),
(13, 0, 19, 0, '2021-06-28', 5, 1, 300, NULL, '2021-08-22 00:26:07', '2021-08-22 00:26:07'),
(14, 0, 20, 0, '2021-08-24', 5, 1, 120, NULL, '2021-08-22 21:02:36', '2021-08-22 21:02:36'),
(15, 0, 21, 0, '2021-08-24', 5, 1, 120, NULL, '2021-08-22 21:17:31', '2021-08-22 21:17:31'),
(16, 0, 22, 0, '2021-08-24', 5, 1, 120, NULL, '2021-08-22 21:26:51', '2021-08-22 21:26:51'),
(17, 0, 23, 0, '2021-08-24', 5, 1, 120, NULL, '2021-08-22 21:29:07', '2021-08-22 21:29:07'),
(18, 0, 24, 0, '2021-08-24', 5, 1, 120, NULL, '2021-08-22 21:29:10', '2021-08-22 21:29:10'),
(19, 0, 25, 0, '2021-08-24', 5, 1, 120, NULL, '2021-08-22 21:30:14', '2021-08-22 21:30:14'),
(20, 0, 33, 0, '2021-08-30', 2, 1, 190, NULL, '2021-08-29 06:02:29', '2021-08-29 06:02:29'),
(21, 0, 34, 0, '2021-08-30', 2, 1, 190, NULL, '2021-08-29 06:02:34', '2021-08-29 06:02:34'),
(22, 0, 35, 0, '2021-08-30', 2, 1, 190, NULL, '2021-08-29 06:07:01', '2021-08-29 06:07:01'),
(23, 0, 36, 0, '2021-08-30', 2, 1, 190, NULL, '2021-08-29 06:07:05', '2021-08-29 06:07:05'),
(24, 0, 37, 0, '2023-03-06', 1, 1, 350, NULL, '2023-03-05 04:48:42', '2023-03-05 04:48:42'),
(25, 0, 37, 0, '2023-03-06', 2, 1, 400, NULL, '2023-03-05 04:48:42', '2023-03-05 04:48:42'),
(26, 0, 37, 0, '2023-03-06', 4, 1, 800, NULL, '2023-03-05 04:48:42', '2023-03-05 04:48:42'),
(27, 0, 38, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 00:39:47', '2023-03-08 00:39:47'),
(28, 0, 39, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:27:44', '2023-03-08 11:27:44'),
(29, 0, 40, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:28:42', '2023-03-08 11:28:42'),
(30, 0, 41, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:31:25', '2023-03-08 11:31:25'),
(31, 0, 42, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:33:54', '2023-03-08 11:33:54'),
(32, 0, 43, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:34:02', '2023-03-08 11:34:02'),
(33, 0, 44, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:36:10', '2023-03-08 11:36:10'),
(34, 0, 45, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:37:24', '2023-03-08 11:37:24'),
(35, 0, 46, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:37:45', '2023-03-08 11:37:45'),
(36, 0, 47, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:43:20', '2023-03-08 11:43:20'),
(37, 0, 48, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:55:01', '2023-03-08 11:55:01'),
(38, 0, 49, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:57:47', '2023-03-08 11:57:47'),
(39, 0, 50, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 11:59:04', '2023-03-08 11:59:04'),
(40, 0, 51, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 12:03:37', '2023-03-08 12:03:37'),
(41, 0, 52, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 12:04:29', '2023-03-08 12:04:29'),
(42, 0, 53, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 12:04:48', '2023-03-08 12:04:48'),
(43, 0, 54, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 12:05:29', '2023-03-08 12:05:29'),
(44, 0, 55, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 12:07:16', '2023-03-08 12:07:16'),
(45, 0, 56, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-08 12:07:35', '2023-03-08 12:07:35'),
(46, 0, 57, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 19:49:36', '2023-03-08 19:49:36'),
(47, 0, 58, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 19:51:24', '2023-03-08 19:51:24'),
(48, 0, 59, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 20:06:04', '2023-03-08 20:06:04'),
(49, 0, 60, 0, '2023-03-09', 1, 2, 700, NULL, '2023-03-08 20:14:29', '2023-03-08 20:14:29'),
(50, 0, 61, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 20:17:31', '2023-03-08 20:17:31'),
(51, 0, 62, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 20:18:39', '2023-03-08 20:18:39'),
(52, 0, 63, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 20:19:35', '2023-03-08 20:19:35'),
(53, 0, 64, 0, '2023-03-09', 1, 1, 350, NULL, '2023-03-08 20:22:07', '2023-03-08 20:22:07'),
(54, 0, 65, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-11 00:15:48', '2023-03-11 00:15:48'),
(55, 0, 66, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-11 00:50:01', '2023-03-11 00:50:01'),
(56, 0, 67, 0, NULL, 1, 1, 413, NULL, '2023-03-11 20:07:12', '2023-03-11 20:07:12'),
(57, 0, 68, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 22:33:50', '2023-03-11 22:33:50'),
(58, 0, 69, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 23:05:21', '2023-03-11 23:05:21'),
(59, 0, 70, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 23:09:17', '2023-03-11 23:09:17'),
(60, 0, 71, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 23:11:41', '2023-03-11 23:11:41'),
(61, 0, 72, 0, '2023-03-13', 1, 3, 600, NULL, '2023-03-11 23:12:41', '2023-03-11 23:12:41'),
(62, 0, 73, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 23:17:47', '2023-03-11 23:17:47'),
(63, 0, 74, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 23:22:48', '2023-03-11 23:22:48'),
(64, 0, 75, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 23:23:25', '2023-03-11 23:23:25'),
(65, 0, 76, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-11 23:26:28', '2023-03-11 23:26:28'),
(66, 0, 77, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 00:02:58', '2023-03-12 00:02:58'),
(67, 0, 78, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 00:06:17', '2023-03-12 00:06:17'),
(68, 0, 79, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 00:12:02', '2023-03-12 00:12:02'),
(69, 0, 80, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 00:18:49', '2023-03-12 00:18:49'),
(70, 0, 81, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 00:19:45', '2023-03-12 00:19:45'),
(71, 0, 82, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 01:04:08', '2023-03-12 01:04:08'),
(72, 0, 83, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-12 01:05:01', '2023-03-12 01:05:01'),
(73, 0, 84, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 01:14:02', '2023-03-12 01:14:02'),
(74, 0, 85, 0, '2021-06-28', 5, 1, 300, NULL, '2023-03-12 01:14:05', '2023-03-12 01:14:05'),
(75, 0, 86, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 01:15:36', '2023-03-12 01:15:36'),
(76, 0, 87, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 02:22:30', '2023-03-12 02:22:30'),
(77, 0, 88, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 02:24:22', '2023-03-12 02:24:22'),
(78, 0, 89, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 02:28:36', '2023-03-12 02:28:36'),
(79, 0, 90, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 02:29:47', '2023-03-12 02:29:47'),
(80, 0, 91, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 02:33:06', '2023-03-12 02:33:06'),
(81, 0, 92, 0, '2023-03-13', 1, 1, 200, NULL, '2023-03-12 06:04:04', '2023-03-12 06:04:04'),
(82, 0, 93, 0, '2023-03-14', 1, 1, 200, NULL, '2023-03-12 20:54:26', '2023-03-12 20:54:26'),
(83, 0, 94, 0, '2023-03-16', 4, 2, 1400, NULL, '2023-03-15 04:35:45', '2023-03-15 04:35:45'),
(84, 0, 95, 0, '2023-03-16', 4, 1, 700, NULL, '2023-03-15 04:39:16', '2023-03-15 04:39:16'),
(85, 0, 96, 0, '2023-03-18', 1, 1, 200, NULL, '2023-03-16 21:36:08', '2023-03-16 21:36:08'),
(86, 0, 97, 0, '2023-03-18', 1, 1, 200, NULL, '2023-03-16 22:05:55', '2023-03-16 22:05:55'),
(87, 0, 97, 0, '2023-03-19', 2, 1, 300, NULL, '2023-03-16 22:05:55', '2023-03-16 22:05:55'),
(88, 0, 98, 0, '2023-03-21', 1, 1, 500, NULL, '2023-03-23 20:11:42', '2023-03-23 20:11:42'),
(89, 0, 99, 0, '2023-03-28', 1, 1, 400, NULL, '2023-03-30 08:15:59', '2023-03-30 08:15:59'),
(90, 0, 100, 0, '2023-04-04', 1, 1, 400, NULL, '2023-04-03 03:40:36', '2023-04-03 03:40:36'),
(91, 0, 101, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:16:07', '2023-04-05 04:16:07'),
(92, 0, 101, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:16:07', '2023-04-05 04:16:07'),
(93, 0, 102, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:25:36', '2023-04-05 04:25:36'),
(94, 0, 102, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:25:36', '2023-04-05 04:25:36'),
(95, 0, 103, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:32:43', '2023-04-05 04:32:43'),
(96, 0, 103, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:32:43', '2023-04-05 04:32:43'),
(97, 0, 104, 0, '2023-04-06', 1, 1, 412, NULL, '2023-04-05 04:33:55', '2023-04-05 04:33:55'),
(98, 0, 105, 0, '2023-04-06', 1, 1, 412, NULL, '2023-04-05 04:35:07', '2023-04-05 04:35:07'),
(99, 0, 106, 0, '2023-04-06', 1, 1, 412, NULL, '2023-04-05 04:41:36', '2023-04-05 04:41:36'),
(100, 0, 107, 0, '2023-04-06', 1, 1, 412, NULL, '2023-04-05 04:41:55', '2023-04-05 04:41:55'),
(101, 0, 108, 0, '2023-04-06', 1, 1, 412, NULL, '2023-04-05 04:43:11', '2023-04-05 04:43:11'),
(102, 0, 109, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:45:21', '2023-04-05 04:45:21'),
(103, 0, 109, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:45:21', '2023-04-05 04:45:21'),
(104, 0, 110, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:47:00', '2023-04-05 04:47:00'),
(105, 0, 110, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:47:00', '2023-04-05 04:47:00'),
(106, 0, 111, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:48:10', '2023-04-05 04:48:10'),
(107, 0, 111, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:48:10', '2023-04-05 04:48:10'),
(108, 0, 112, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:50:43', '2023-04-05 04:50:43'),
(109, 0, 112, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:50:43', '2023-04-05 04:50:43'),
(110, 0, 113, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:53:44', '2023-04-05 04:53:44'),
(111, 0, 113, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:53:44', '2023-04-05 04:53:44'),
(112, 0, 114, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 04:55:42', '2023-04-05 04:55:42'),
(113, 0, 114, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 04:55:42', '2023-04-05 04:55:42'),
(114, 0, 115, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 05:00:53', '2023-04-05 05:00:53'),
(115, 0, 115, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 05:00:53', '2023-04-05 05:00:53'),
(116, 0, 116, 0, '2023-04-06', 1, 1, 412, NULL, '2023-04-05 05:29:06', '2023-04-05 05:29:06'),
(117, 0, 117, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 05:32:28', '2023-04-05 05:32:28'),
(118, 0, 117, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 05:32:28', '2023-04-05 05:32:28'),
(119, 0, 118, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 05:32:58', '2023-04-05 05:32:58'),
(120, 0, 118, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 05:32:58', '2023-04-05 05:32:58'),
(121, 0, 119, 0, '2023-04-06', 2, 1, 0, NULL, '2023-04-05 05:34:20', '2023-04-05 05:34:20'),
(122, 0, 119, 0, '2023-03-02', 1, 1, 350, NULL, '2023-04-05 05:34:20', '2023-04-05 05:34:20'),
(123, 0, 120, 0, '2023-03-02', 2, 1, 400, NULL, '2023-04-05 05:44:51', '2023-04-05 05:44:51'),
(124, 0, 121, 0, '2023-03-02', 2, 1, 400, NULL, '2023-04-07 01:43:54', '2023-04-07 01:43:54'),
(125, 0, 122, 0, '2023-03-02', 2, 1, 400, NULL, '2023-04-07 01:44:16', '2023-04-07 01:44:16'),
(126, 0, 123, 0, '2023-04-09', 1, 1, 412, NULL, '2023-04-08 00:37:24', '2023-04-08 00:37:24'),
(127, 0, 124, 0, '2023-04-09', 1, 1, 412, NULL, '2023-04-08 00:37:40', '2023-04-08 00:37:40'),
(128, 0, 125, 0, '2023-04-09', 1, 1, 5, NULL, '2023-04-08 02:24:46', '2023-04-08 02:24:46'),
(129, 0, 126, 0, '2023-03-02', 2, 1, 400, NULL, '2023-04-08 20:57:50', '2023-04-08 20:57:50'),
(130, 0, 127, 0, '2023-05-30', 4, 2, 1200, NULL, '2023-05-29 02:49:24', '2023-05-29 02:49:24'),
(131, 0, 128, 0, '2021-06-28', 5, 1, 300, NULL, '2023-05-29 19:07:41', '2023-05-29 19:07:41'),
(132, 0, 129, 0, '2021-06-28', 5, 1, 300, NULL, '2023-05-29 19:49:27', '2023-05-29 19:49:27'),
(133, 0, 130, 0, '2021-06-28', 5, 1, 300, NULL, '2023-05-29 20:00:27', '2023-05-29 20:00:27'),
(134, 0, 131, 0, '2021-06-28', 5, 1, 300, NULL, '2023-05-29 20:01:50', '2023-05-29 20:01:50'),
(135, 0, 132, 0, '2021-06-28', 5, 1, 300, NULL, '2023-05-29 20:07:37', '2023-05-29 20:07:37'),
(136, 0, 133, 0, '2021-06-28', 5, 1, 300, NULL, '2023-05-29 20:07:51', '2023-05-29 20:07:51'),
(137, 0, 134, 0, '2021-06-28', 5, 1, 300, NULL, '2023-05-29 20:11:35', '2023-05-29 20:11:35'),
(138, 0, 135, 0, '2023-03-02', 2, 1, 400, NULL, '2023-05-29 23:16:44', '2023-05-29 23:16:44'),
(139, 0, 136, 0, '2023-03-02', 2, 1, 400, NULL, '2023-05-29 23:27:01', '2023-05-29 23:27:01'),
(140, 0, 137, 0, '2023-03-02', 2, 1, 400, NULL, '2023-05-30 05:06:04', '2023-05-30 05:06:04'),
(141, 0, 138, 0, '2023-06-01', 1, 1, 400, NULL, '2023-05-31 00:44:50', '2023-05-31 00:44:50'),
(142, 0, 139, 0, '2023-06-01', 1, 1, 400, NULL, '2023-05-31 03:07:13', '2023-05-31 03:07:13'),
(143, 0, 140, 0, '2023-06-01', 1, 1, 400, NULL, '2023-05-31 03:07:50', '2023-05-31 03:07:50'),
(144, 0, 140, 0, '2023-06-01', 5, 1, 350, NULL, '2023-05-31 03:07:50', '2023-05-31 03:07:50'),
(145, 0, 141, 0, '2023-06-01', 1, 1, 400, NULL, '2023-05-31 03:09:58', '2023-05-31 03:09:58'),
(146, 0, 142, 0, '2023-06-01', 5, 1, 350, NULL, '2023-05-31 03:11:04', '2023-05-31 03:11:04'),
(147, 0, 143, 0, '2023-06-01', 1, 1, 400, NULL, '2023-05-31 03:12:01', '2023-05-31 03:12:01'),
(148, 0, 143, 0, '2023-06-01', 5, 1, 350, NULL, '2023-05-31 03:12:01', '2023-05-31 03:12:01'),
(149, 0, 144, 0, '2023-06-01', 1, 5, 400, NULL, '2023-06-02 03:27:28', '2023-06-02 03:27:28'),
(150, 0, 144, 0, '2023-06-01', 5, 2, 350, NULL, '2023-06-02 03:27:28', '2023-06-02 03:27:28'),
(151, 0, 145, 0, '2023-06-01', 1, 3, 400, NULL, '2023-06-10 20:18:45', '2023-06-10 20:18:45'),
(152, 0, 146, 0, '2023-07-01', 2, 1, 800, NULL, '2023-06-28 08:14:38', '2023-06-28 08:14:38'),
(153, 0, 147, 0, '2023-08-21', 2, 3, 1500, NULL, '2023-08-19 17:45:34', '2023-08-19 17:45:34'),
(154, 0, 148, 0, '2023-08-21', 1, 4, 1650, NULL, '2023-08-19 17:47:25', '2023-08-19 17:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `active`, `price`, `points`, `days`, `name_ar`, `name_en`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '300', '30', '10', 'الباقة الزرقاء', 'Blue Package', NULL, '2020-03-13 07:00:00', '2023-06-28 07:25:20'),
(2, 1, '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', NULL, '2020-03-13 07:00:00', '2021-07-18 21:43:19'),
(3, 1, '3000', '300', '90', 'الباقة الفضية', 'Silver Package', NULL, '2020-03-13 07:00:00', '2021-07-18 21:43:03'),
(4, 1, '5000', '500', '180', 'الباقة الذهبية', 'Golden Package', NULL, '2021-06-09 23:13:30', '2021-07-18 21:44:30'),
(5, 1, '8000', '800', '365', 'الباقة البلاتينية', 'Platinum Package', NULL, '2021-06-09 23:49:04', '2021-07-18 21:45:58'),
(6, 1, '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', NULL, '2021-07-15 03:57:49', '2021-07-18 21:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '''order'' , ''subscription''',
  `order_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_value` double DEFAULT NULL,
  `invoice_url` text COLLATE utf8mb4_unicode_ci,
  `_id` text COLLATE utf8mb4_unicode_ci,
  `payment_id` text COLLATE utf8mb4_unicode_ci,
  `response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `type`, `order_id`, `user_id`, `status`, `invoice_id`, `invoice_value`, `invoice_url`, `_id`, `payment_id`, `response`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 'Paid', '2103769', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072210376941-9a0ac97c', '07072103769148515072', '07072103769148515072', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2103769,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023084288\",\"CustomerReference\":\"ref 1\",\"CreatedDate\":\"2023-03-04T03:14:55.223\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"03:14:55.223\",\"InvoiceValue\":8.097,\"Comments\":null,\"CustomerName\":\"asd\",\"CustomerMobile\":\"+966\",\"CustomerEmail\":\"mo010@mo.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"100.000 SR\",\"DueDeposit\":8.082,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Product & Service\",\"Quantity\":1,\"UnitPrice\":8.097,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T03:18:05.4533333\",\"PaymentGateway\":\"Sadad\",\"ReferenceId\":\"306300118257\",\"TrackId\":\"04-03-2023_1485150\",\"TransactionId\":\"118257\",\"PaymentId\":\"07072103769148515072\",\"AuthorizationId\":\"118257\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"8.097\",\"CustomerServiceCharge\":\"0.303\",\"TotalServiceCharge\":\"0.303\",\"DueValue\":\"8.400\",\"PaidCurrency\":\"SR\",\"PaidCurrencyValue\":\"103.750\",\"IpAddress\":\"102.41.219.162\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-04 00:14:55', '2023-03-04 00:18:06'),
(2, NULL, 1, 1, NULL, '2103770', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072210377040-5aaf1442', NULL, NULL, NULL, '2023-03-04 00:21:15', '2023-03-04 00:21:15'),
(3, NULL, 1, 7, 'Paid', '2103782', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072210378240-d6c6be6f', '07072103782148515172', '07072103782148515172', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2103782,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023084301\",\"CustomerReference\":\"Order_num:1\",\"CreatedDate\":\"2023-03-04T03:40:03.18\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"03:40:03.180\",\"InvoiceValue\":1.172,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"100.000 LE\",\"DueDeposit\":1.073,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":1.172,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T03:40:41.5533333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306300120790\",\"TrackId\":\"04-03-2023_1485151\",\"TransactionId\":\"120790\",\"PaymentId\":\"07072103782148515172\",\"AuthorizationId\":\"494470\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"1.172\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.102\",\"DueValue\":\"1.180\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"1.180\",\"IpAddress\":\"102.41.219.162\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-04 00:40:03', '2023-03-04 00:40:42'),
(4, NULL, 2, 22, 'Paid', '2103794', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072210379441-e0b18209', '07072103794148515672', '07072103794148515672', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2103794,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023084313\",\"CustomerReference\":\"Order_num:2\",\"CreatedDate\":\"2023-03-04T04:03:55.51\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"04:03:55.510\",\"InvoiceValue\":1.172,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"100.000 LE\",\"DueDeposit\":1.073,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":1.172,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T04:08:41.64\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306301122880\",\"TrackId\":\"04-03-2023_1485156\",\"TransactionId\":\"122880\",\"PaymentId\":\"07072103794148515672\",\"AuthorizationId\":\"535800\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"1.172\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.102\",\"DueValue\":\"1.180\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"1.180\",\"IpAddress\":\"102.41.219.162\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-04 10:03:55', '2023-03-04 10:08:42'),
(5, 'subscription', 2, 22, NULL, '2104993', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072210499341-5456d47e', NULL, NULL, NULL, '2023-03-04 22:44:24', '2023-03-04 22:44:24'),
(6, 'subscription', 2, 22, 'Paid', '2105002', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072210500239-5ef87a37', '07072105002148541871', '07072105002148541871', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2105002,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023084864\",\"CustomerReference\":\"Order_num:2\",\"CreatedDate\":\"2023-03-04T16:51:17.023\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"16:51:17.023\",\"InvoiceValue\":1.172,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"100.000 LE\",\"DueDeposit\":1.073,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":1.172,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T16:51:47.67\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306313119714\",\"TrackId\":\"04-03-2023_1485418\",\"TransactionId\":\"119714\",\"PaymentId\":\"07072105002148541871\",\"AuthorizationId\":\"815710\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"1.172\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.102\",\"DueValue\":\"1.180\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"1.180\",\"IpAddress\":\"102.42.213.226\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-04 22:51:17', '2023-03-04 22:51:48'),
(7, 'subscription', 1, 7, NULL, '2105289', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210528941-746040ed', NULL, NULL, NULL, '2023-03-05 01:37:50', '2023-03-05 01:37:50'),
(8, 'subscription', 1, 7, NULL, '2105301', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210530139-982aba76', NULL, NULL, NULL, '2023-03-05 01:44:37', '2023-03-05 01:44:37'),
(9, 'subscription', 1, 7, NULL, '2105305', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210530540-61b843f2', NULL, NULL, NULL, '2023-03-05 01:46:20', '2023-03-05 01:46:20'),
(10, 'subscription', 1, 7, 'Paid', '2105311', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210531139-8c243bcc', '07072105311148549271', '07072105311148549271', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2105311,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023085157\",\"CustomerReference\":\"Order_num:1\",\"CreatedDate\":\"2023-03-04T19:51:01.487\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"19:51:01.487\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.411,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T19:52:00.8666667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306316122886\",\"TrackId\":\"04-03-2023_1485492\",\"TransactionId\":\"122886\",\"PaymentId\":\"07072105311148549271\",\"AuthorizationId\":\"774880\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"197.55.113.45\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-05 01:51:01', '2023-03-11 23:16:58'),
(11, 'subscription', 1, 7, NULL, '2105448', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210544841-44a2fe8d', NULL, NULL, NULL, '2023-03-05 03:27:51', '2023-03-05 03:27:51'),
(12, 'subscription', 1, 7, NULL, '2105455', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210545540-969cf515', NULL, NULL, NULL, '2023-03-05 03:33:43', '2023-03-05 03:33:43'),
(13, 'subscription', 1, 7, NULL, '2105476', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210547641-52504503', NULL, NULL, NULL, '2023-03-05 03:40:58', '2023-03-05 03:40:58'),
(14, 'subscription', 1, 7, NULL, '2105477', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210547741-6cd84971', NULL, NULL, NULL, '2023-03-05 03:42:33', '2023-03-05 03:42:33'),
(15, 'order', 2, 22, 'Paid', '2105479', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072210547941-2f355e25', '07072105479148550973', '07072105479148550973', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2105479,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023085290\",\"CustomerReference\":\"Order_num:2\",\"CreatedDate\":\"2023-03-04T21:44:24.373\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"21:44:24.373\",\"InvoiceValue\":1.172,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"100.000 LE\",\"DueDeposit\":1.073,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":1.172,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T21:45:06.18\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306318126997\",\"TrackId\":\"04-03-2023_1485509\",\"TransactionId\":\"126997\",\"PaymentId\":\"07072105479148550973\",\"AuthorizationId\":\"828580\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"1.172\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.102\",\"DueValue\":\"1.180\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"1.180\",\"IpAddress\":\"102.42.213.226\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-05 03:44:24', '2023-03-05 06:00:07'),
(16, 'subscription', 1, 7, NULL, '2105480', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210548040-4cfc2bc5', NULL, NULL, NULL, '2023-03-05 03:44:58', '2023-03-05 03:44:58'),
(17, 'subscription', 33, 22, 'Paid', '2105501', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210550140-47b7d732', '07072105501148552071', '07072105501148552071', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2105501,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023085312\",\"CustomerReference\":\"Order_num:33\",\"CreatedDate\":\"2023-03-04T22:51:39.08\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"22:51:39.080\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.411,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T22:55:29.6566667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306319121888\",\"TrackId\":\"04-03-2023_1485520\",\"TransactionId\":\"121888\",\"PaymentId\":\"07072105501148552071\",\"AuthorizationId\":\"786540\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"102.42.213.226\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-05 04:51:39', '2023-03-05 04:55:31'),
(18, 'subscription', 34, 22, 'Paid', '2105503', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210550340-d2c83f3e', '07072105503148552171', '07072105503148552171', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2105503,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023085314\",\"CustomerReference\":\"Order_num:34\",\"CreatedDate\":\"2023-03-04T22:57:51.743\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"22:57:51.743\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.411,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T22:58:25\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306319122888\",\"TrackId\":\"04-03-2023_1485521\",\"TransactionId\":\"122888\",\"PaymentId\":\"07072105503148552171\",\"AuthorizationId\":\"736830\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"102.42.213.226\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-05 04:57:51', '2023-03-05 04:58:26'),
(19, 'subscription', 35, 22, NULL, '2105504', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210550440-70a0c998', NULL, NULL, NULL, '2023-03-05 04:59:30', '2023-03-05 04:59:30'),
(20, 'subscription', 36, 22, 'Paid', '2105507', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210550740-3be1e289', '07072105507148552372', '07072105507148552372', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2105507,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023085318\",\"CustomerReference\":\"Order_num:36\",\"CreatedDate\":\"2023-03-04T23:08:52.567\",\"ExpiryDate\":\"March 7, 2023\",\"ExpiryTime\":\"23:08:52.567\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.411,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-04T23:09:47.2633333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306320124938\",\"TrackId\":\"04-03-2023_1485523\",\"TransactionId\":\"124938\",\"PaymentId\":\"07072105507148552372\",\"AuthorizationId\":\"295880\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"102.42.213.226\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-05 05:08:52', '2023-03-05 05:16:24'),
(21, 'subscription', 37, 22, NULL, '2105509', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210550940-7ddbeca2', NULL, NULL, NULL, '2023-03-05 05:16:31', '2023-03-05 05:16:31'),
(22, 'subscription', 45, 22, NULL, '2105515', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210551540-ccfd46c3', NULL, NULL, NULL, '2023-03-05 05:30:19', '2023-03-05 05:30:19'),
(23, 'subscription', 46, 22, NULL, '2105516', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210551640-17a03846', NULL, NULL, NULL, '2023-03-05 05:31:42', '2023-03-05 05:31:42'),
(24, 'subscription', 47, 22, NULL, '2105517', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210551740-20b3973f', NULL, NULL, NULL, '2023-03-05 05:32:30', '2023-03-05 05:32:30'),
(25, 'subscription', 48, 22, NULL, '2105518', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210551840-3c0f5ceb', NULL, NULL, NULL, '2023-03-05 05:33:04', '2023-03-05 05:33:04'),
(26, 'subscription', 49, 22, NULL, '2105519', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210551940-10829435', NULL, NULL, NULL, '2023-03-05 05:33:34', '2023-03-05 05:33:34'),
(27, 'subscription', 50, 22, NULL, '2105521', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210552140-be760ea2', NULL, NULL, NULL, '2023-03-05 05:37:16', '2023-03-05 05:37:16'),
(28, 'subscription', 51, 7, NULL, '2108808', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210880841-e939d8ec', NULL, NULL, NULL, '2023-03-06 18:32:08', '2023-03-06 18:32:08'),
(29, 'subscription', 52, 7, NULL, '2108814', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210881441-6df7dd70', NULL, NULL, NULL, '2023-03-06 18:33:29', '2023-03-06 18:33:29'),
(30, 'subscription', 53, 7, 'Paid', '2108827', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210882741-e77a5b23', '07072108827148659673', '07072108827148659673', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2108827,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023086886\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-03-06T12:36:21.533\",\"ExpiryDate\":\"March 9, 2023\",\"ExpiryTime\":\"12:36:21.533\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.411,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-06T12:37:08.58\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306509128059\",\"TrackId\":\"06-03-2023_1486596\",\"TransactionId\":\"128059\",\"PaymentId\":\"07072108827148659673\",\"AuthorizationId\":\"625710\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"197.55.113.45\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-06 18:36:21', '2023-03-06 18:37:09'),
(31, 'subscription', 54, 7, NULL, '2108835', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210883541-464879e8', NULL, NULL, NULL, '2023-03-06 18:38:25', '2023-03-06 18:38:25'),
(32, 'subscription', 55, 7, NULL, '2108840', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210884040-040f7cf0', NULL, NULL, NULL, '2023-03-06 18:39:13', '2023-03-06 18:39:13'),
(33, 'subscription', 56, 7, NULL, '2108853', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210885341-223619b8', NULL, NULL, NULL, '2023-03-06 18:43:25', '2023-03-06 18:43:25'),
(34, 'subscription', 57, 7, NULL, '2109151', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210915140-4333b065', NULL, NULL, NULL, '2023-03-06 19:47:55', '2023-03-06 19:47:55'),
(35, 'subscription', 58, 7, NULL, '2109180', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210918040-60b3eb6a', NULL, NULL, NULL, '2023-03-06 19:52:54', '2023-03-06 19:52:54'),
(36, 'subscription', 59, 7, NULL, '2109198', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210919841-5646930b', NULL, NULL, NULL, '2023-03-06 19:57:46', '2023-03-06 19:57:46'),
(37, 'subscription', 60, 7, NULL, '2109231', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072210923140-ed52f8b9', NULL, NULL, NULL, '2023-03-06 20:07:00', '2023-03-06 20:07:00'),
(38, 'order', 2, 22, 'Paid', '2110425', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072211042540-02d37af8', '07072110425148743171', '07072110425148743171', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2110425,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023088001\",\"CustomerReference\":\"Order_num:2\",\"CreatedDate\":\"2023-03-07T01:02:23.75\",\"ExpiryDate\":\"March 10, 2023\",\"ExpiryTime\":\"01:02:23.750\",\"InvoiceValue\":1.172,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"100.000 LE\",\"DueDeposit\":1.073,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":1.172,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-07T01:03:01.7433333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306522122937\",\"TrackId\":\"07-03-2023_1487431\",\"TransactionId\":\"122937\",\"PaymentId\":\"07072110425148743171\",\"AuthorizationId\":\"887190\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"1.172\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.102\",\"DueValue\":\"1.180\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"1.180\",\"IpAddress\":\"102.41.235.242\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-07 07:02:23', '2023-03-07 07:03:03'),
(39, 'order', 41, 22, NULL, '2113123', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072211312339-0136c475', NULL, NULL, NULL, '2023-03-08 11:31:26', '2023-03-08 11:31:26'),
(40, 'order', 42, 22, NULL, '2113124', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072211312440-ab914619', NULL, NULL, NULL, '2023-03-08 11:33:55', '2023-03-08 11:33:55'),
(41, 'order', 43, 22, NULL, '2113132', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072211313239-e298d3e3', NULL, NULL, NULL, '2023-03-08 11:34:03', '2023-03-08 11:34:03'),
(42, 'order', 44, 22, NULL, '2113133', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072211313340-df573867', NULL, NULL, NULL, '2023-03-08 11:36:11', '2023-03-08 11:36:11'),
(43, 'order', 45, 22, NULL, '2113134', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072211313440-c85db146', NULL, NULL, NULL, '2023-03-08 11:37:25', '2023-03-08 11:37:25'),
(44, 'order', 56, 22, NULL, '2113184', 154, 'https://demo.MyFatoorah.com/KWT/ie/01072211318440-24c75c12', NULL, NULL, NULL, '2023-03-08 12:07:35', '2023-03-08 12:07:35'),
(45, 'order', 58, 7, NULL, '2114267', 380, 'https://demo.MyFatoorah.com/KWT/ie/01072211426740-77f4e255', NULL, NULL, NULL, '2023-03-08 19:51:25', '2023-03-08 19:51:25'),
(46, 'order', 59, 7, NULL, '2114309', 380, 'https://demo.MyFatoorah.com/KWT/ie/01072211430940-6984894d', NULL, NULL, NULL, '2023-03-08 20:06:04', '2023-03-08 20:06:04'),
(47, 'subscription', 61, 1, NULL, '2119212', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072211921240-cb9fa819', NULL, NULL, NULL, '2023-03-10 22:51:58', '2023-03-10 22:51:58'),
(48, 'subscription', 62, 22, 'Paid', '2119405', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072211940540-fedb4e18', '07072119405149082672', '07072119405149082672', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2119405,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023092958\",\"CustomerReference\":\"Order_num:62\",\"CreatedDate\":\"2023-03-10T18:12:52.907\",\"ExpiryDate\":\"March 13, 2023\",\"ExpiryTime\":\"18:12:52.907\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"andrew\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewalbert93501@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-10T18:14:15.73\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"306915141653\",\"TrackId\":\"10-03-2023_1490826\",\"TransactionId\":\"141653\",\"PaymentId\":\"07072119405149082672\",\"AuthorizationId\":\"277980\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"102.46.3.33\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-11 00:12:53', '2023-03-11 00:14:16'),
(49, 'order', 66, 22, NULL, '2119487', 20, 'https://demo.MyFatoorah.com/KWT/ie/01072211948741-81ea1fa8', NULL, NULL, NULL, '2023-03-11 00:50:01', '2023-03-11 00:50:01'),
(50, 'order', 72, 7, NULL, '2121097', 176, 'https://demo.MyFatoorah.com/KWT/ie/01072212109740-60cf26d2', NULL, NULL, NULL, '2023-03-11 23:12:42', '2023-03-11 23:12:42'),
(51, 'order', 73, 7, NULL, '2121109', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072212110940-352bb3fd', NULL, NULL, NULL, '2023-03-11 23:17:48', '2023-03-11 23:17:48'),
(52, 'order', 75, 7, 'Paid', '2121119', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072212111940-7c731275', '07072121119149121571', '07072121119149121571', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2121119,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023093924\",\"CustomerReference\":\"Order_num:75\",\"CreatedDate\":\"2023-03-11T17:23:25.853\",\"ExpiryDate\":\"March 14, 2023\",\"ExpiryTime\":\"17:23:25.853\",\"InvoiceValue\":2.695,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"230.000 LE\",\"DueDeposit\":2.582,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.695,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-11T17:23:59.9966667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307014143680\",\"TrackId\":\"11-03-2023_1491215\",\"TransactionId\":\"143680\",\"PaymentId\":\"07072121119149121571\",\"AuthorizationId\":\"980140\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.695\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.700\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.700\",\"IpAddress\":\"102.42.245.150\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-11 23:23:25', '2023-03-11 23:25:40'),
(53, 'order', 76, 7, NULL, '2121121', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072212112139-0aea9767', NULL, NULL, NULL, '2023-03-11 23:26:28', '2023-03-11 23:26:28'),
(54, 'order', 77, 7, 'Paid', '2121182', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072212118240-54a7835c', NULL, '07072121182149123471', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2121182,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023093985\",\"CustomerReference\":\"Order_num:77\",\"CreatedDate\":\"2023-03-11T18:02:58.713\",\"ExpiryDate\":\"March 14, 2023\",\"ExpiryTime\":\"18:02:58.713\",\"InvoiceValue\":2.695,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"230.000 LE\",\"DueDeposit\":2.582,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.695,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-11T18:03:32.05\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307015147890\",\"TrackId\":\"11-03-2023_1491234\",\"TransactionId\":\"147890\",\"PaymentId\":\"07072121182149123471\",\"AuthorizationId\":\"610440\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.695\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.700\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.700\",\"IpAddress\":\"102.42.245.150\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-12 00:02:58', '2023-03-12 00:08:42'),
(55, 'order', 78, 7, 'Paid', '2121189', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072212118941-51aadc3f', NULL, '07072121189149123672', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2121189,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023093991\",\"CustomerReference\":\"Order_num:78\",\"CreatedDate\":\"2023-03-11T18:06:17.717\",\"ExpiryDate\":\"March 14, 2023\",\"ExpiryTime\":\"18:06:17.717\",\"InvoiceValue\":2.695,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"230.000 LE\",\"DueDeposit\":2.582,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.695,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-11T18:06:51.31\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307015148890\",\"TrackId\":\"11-03-2023_1491236\",\"TransactionId\":\"148890\",\"PaymentId\":\"07072121189149123672\",\"AuthorizationId\":\"251340\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.695\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.700\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.700\",\"IpAddress\":\"102.42.245.150\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-12 00:06:17', '2023-03-12 00:07:31'),
(56, 'order', 79, 7, 'Paid', '2121198', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072212119841-4a686e6f', NULL, '07072121198149123872', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2121198,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023094000\",\"CustomerReference\":\"Order_num:79\",\"CreatedDate\":\"2023-03-11T18:12:03.457\",\"ExpiryDate\":\"March 14, 2023\",\"ExpiryTime\":\"18:12:03.457\",\"InvoiceValue\":2.695,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"230.000 LE\",\"DueDeposit\":2.582,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.695,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-11T18:12:34.1166667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307015149920\",\"TrackId\":\"11-03-2023_1491238\",\"TransactionId\":\"149920\",\"PaymentId\":\"07072121198149123872\",\"AuthorizationId\":\"494740\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.695\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.700\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.700\",\"IpAddress\":\"102.42.245.150\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-12 00:12:03', '2023-03-12 00:12:35'),
(57, 'order', 80, 7, 'Paid', '2121210', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072212121039-a9f7bb73', NULL, '07072121210149124370', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2121210,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023094012\",\"CustomerReference\":\"Order_num:80\",\"CreatedDate\":\"2023-03-11T18:18:50.093\",\"ExpiryDate\":\"March 14, 2023\",\"ExpiryTime\":\"18:18:50.093\",\"InvoiceValue\":2.695,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"230.000 LE\",\"DueDeposit\":2.582,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.695,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-11T18:19:20.7866667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307015140631\",\"TrackId\":\"11-03-2023_1491243\",\"TransactionId\":\"140631\",\"PaymentId\":\"07072121210149124370\",\"AuthorizationId\":\"110850\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.695\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.700\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.700\",\"IpAddress\":\"102.42.245.150\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-12 00:18:50', '2023-03-12 00:19:22'),
(58, 'subscription', 63, 7, NULL, '2128268', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072212826841-ed221b06', NULL, NULL, NULL, '2023-03-15 04:26:17', '2023-03-15 04:26:17'),
(59, 'order', 94, 7, 'Paid', '2128279', 1430, 'https://demo.MyFatoorah.com/KWT/ie/01072212827941-c3cfa443', NULL, '07072128279149386774', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2128279,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023098410\",\"CustomerReference\":\"Order_num:94\",\"CreatedDate\":\"2023-03-14T22:35:46.133\",\"ExpiryDate\":\"March 17, 2023\",\"ExpiryTime\":\"22:35:46.133\",\"InvoiceValue\":16.754,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"1,430.000 LE\",\"DueDeposit\":16.625,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":16.754,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-14T22:36:18.63\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307319145921\",\"TrackId\":\"14-03-2023_1493867\",\"TransactionId\":\"145921\",\"PaymentId\":\"07072128279149386774\",\"AuthorizationId\":\"977060\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"16.754\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.117\",\"DueValue\":\"16.760\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"16.760\",\"IpAddress\":\"197.55.119.101\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-15 04:35:46', '2023-03-15 04:36:20'),
(60, 'subscription', 64, 7, NULL, '2128282', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072212828241-ece9d35b', NULL, NULL, NULL, '2023-03-15 04:39:47', '2023-03-15 04:39:47'),
(61, 'subscription', 65, 7, NULL, '2129974', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072212997442-f559cfb5', NULL, NULL, NULL, '2023-03-15 21:35:51', '2023-03-15 21:35:51'),
(62, 'subscription', 66, 7, 'Paid', '2132598', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072213259841-59bb946d', NULL, '07072132598149570473', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2132598,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023100691\",\"CustomerReference\":\"Order_num:66\",\"CreatedDate\":\"2023-03-16T15:31:29.59\",\"ExpiryDate\":\"March 19, 2023\",\"ExpiryTime\":\"15:31:29.590\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-16T15:32:21.2\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307512123994\",\"TrackId\":\"16-03-2023_1495704\",\"TransactionId\":\"123994\",\"PaymentId\":\"07072132598149570473\",\"AuthorizationId\":\"583760\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"197.55.35.206\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-16 21:31:29', '2023-03-16 21:32:22'),
(63, 'order', 96, 7, 'Paid', '2132606', 230, 'https://demo.MyFatoorah.com/KWT/ie/01072213260640-fa9dc31f', NULL, '07072132606149570672', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2132606,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023100699\",\"CustomerReference\":\"Order_num:96\",\"CreatedDate\":\"2023-03-16T15:36:09.493\",\"ExpiryDate\":\"March 19, 2023\",\"ExpiryTime\":\"15:36:09.493\",\"InvoiceValue\":2.695,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"230.000 LE\",\"DueDeposit\":2.582,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.695,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-16T15:37:02.54\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307512126054\",\"TrackId\":\"16-03-2023_1495706\",\"TransactionId\":\"126054\",\"PaymentId\":\"07072132606149570672\",\"AuthorizationId\":\"836530\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.695\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.700\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.700\",\"IpAddress\":\"197.55.35.206\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-16 21:36:09', '2023-03-16 21:37:04'),
(64, 'order', 97, 7, 'Paid', '2132670', 170, 'https://demo.MyFatoorah.com/KWT/ie/01072213267040-30aeca80', NULL, '07072132670149573772', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2132670,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023100740\",\"CustomerReference\":\"Order_num:97\",\"CreatedDate\":\"2023-03-16T16:05:56.277\",\"ExpiryDate\":\"March 19, 2023\",\"ExpiryTime\":\"16:05:56.277\",\"InvoiceValue\":1.992,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"170.000 LE\",\"DueDeposit\":1.883,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":1.992,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-03-16T16:06:46.89\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"307513125045\",\"TrackId\":\"16-03-2023_1495737\",\"TransactionId\":\"125045\",\"PaymentId\":\"07072132670149573772\",\"AuthorizationId\":\"901290\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"1.992\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.102\",\"DueValue\":\"2.000\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.000\",\"IpAddress\":\"197.55.35.206\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-03-16 22:05:56', '2023-03-16 22:06:48'),
(65, 'subscription', 67, 7, NULL, '2132674', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072213267441-ef933cd5', NULL, NULL, NULL, '2023-03-16 22:07:20', '2023-03-16 22:07:20'),
(66, 'subscription', 68, 54, NULL, '2164403', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216440340-92b0b7b0', NULL, NULL, NULL, '2023-04-02 07:42:02', '2023-04-02 07:42:02'),
(67, 'subscription', 69, 7, NULL, '2164404', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216440440-a03391a0', NULL, NULL, NULL, '2023-04-02 07:44:14', '2023-04-02 07:44:14'),
(68, 'subscription', 70, 57, NULL, '2164509', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216450941-96c7433e', NULL, NULL, NULL, '2023-04-02 11:06:03', '2023-04-02 11:06:03'),
(69, 'subscription', 71, 57, NULL, '2164517', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216451741-98b8253e', NULL, NULL, NULL, '2023-04-02 11:06:25', '2023-04-02 11:06:25'),
(70, 'subscription', 72, 57, NULL, '2164518', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216451841-881ac9db', NULL, NULL, NULL, '2023-04-02 11:06:35', '2023-04-02 11:06:35'),
(71, 'subscription', 73, 57, NULL, '2164519', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216451941-994efff8', NULL, NULL, NULL, '2023-04-02 11:08:53', '2023-04-02 11:08:53'),
(72, 'subscription', 74, 57, NULL, '2164521', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216452140-aac92d43', NULL, NULL, NULL, '2023-04-02 11:09:40', '2023-04-02 11:09:40'),
(73, 'subscription', 75, 57, NULL, '2164522', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216452240-0051d2fa', NULL, NULL, NULL, '2023-04-02 11:09:45', '2023-04-02 11:09:45'),
(74, 'subscription', 76, 57, NULL, '2164525', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072216452541-61ca6620', NULL, NULL, NULL, '2023-04-02 11:09:55', '2023-04-02 11:09:55'),
(75, 'subscription', 77, 57, NULL, '2164526', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216452641-ca31e999', NULL, NULL, NULL, '2023-04-02 11:10:30', '2023-04-02 11:10:30'),
(76, 'subscription', 78, 57, NULL, '2164527', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216452741-d4ae370f', NULL, NULL, NULL, '2023-04-02 11:10:43', '2023-04-02 11:10:43'),
(77, 'subscription', 79, 57, NULL, '2164535', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216453541-58ead1f0', NULL, NULL, NULL, '2023-04-02 11:12:01', '2023-04-02 11:12:01'),
(78, 'subscription', 80, 57, NULL, '2164546', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216454641-8298ff61', NULL, NULL, NULL, '2023-04-02 11:17:09', '2023-04-02 11:17:09'),
(79, 'subscription', 81, 57, NULL, '2164548', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216454841-a157f9e5', NULL, NULL, NULL, '2023-04-02 11:19:06', '2023-04-02 11:19:06'),
(80, 'subscription', 82, 57, NULL, '2164549', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216454941-a2fb1b0b', NULL, NULL, NULL, '2023-04-02 11:19:11', '2023-04-02 11:19:11'),
(81, 'subscription', 83, 57, 'Paid', '2164550', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072216455040-73009efd', '07072164550150742571', '07072164550150742571', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164550,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118589\",\"CustomerReference\":\"Order_num:83\",\"CreatedDate\":\"2023-04-02T05:19:21.24\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"05:19:21.240\",\"InvoiceValue\":11.716,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"1,000.000 LE\",\"DueDeposit\":11.591,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":11.716,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T05:20:32.5233333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309202265723\",\"TrackId\":\"02-04-2023_1507425\",\"TransactionId\":\"265723\",\"PaymentId\":\"07072164550150742571\",\"AuthorizationId\":\"257470\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"11.716\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.112\",\"DueValue\":\"11.720\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"11.720\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 11:19:21', '2023-04-02 11:20:34'),
(82, 'subscription', 84, 57, NULL, '2164551', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072216455141-f5569b07', NULL, NULL, NULL, '2023-04-02 11:20:57', '2023-04-02 11:20:57'),
(83, 'subscription', 85, 7, 'Paid', '2164575', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216457541-03775e65', NULL, '07072164575150743272', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164575,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118593\",\"CustomerReference\":\"Order_num:85\",\"CreatedDate\":\"2023-04-02T05:39:14.643\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"05:39:14.643\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T05:39:55.2866667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309202266723\",\"TrackId\":\"02-04-2023_1507432\",\"TransactionId\":\"266723\",\"PaymentId\":\"07072164575150743272\",\"AuthorizationId\":\"346860\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"197.55.242.44\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 11:39:14', '2023-04-02 11:39:57'),
(84, 'subscription', 86, 7, NULL, '2164576', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216457641-f0d9d2ce', NULL, NULL, NULL, '2023-04-02 11:40:29', '2023-04-02 11:40:29'),
(85, 'subscription', 87, 57, 'Paid', '2164577', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216457741-e70cf148', '07072164577150743472', '07072164577150743472', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164577,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118595\",\"CustomerReference\":\"Order_num:87\",\"CreatedDate\":\"2023-04-02T05:42:12.963\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"05:42:12.963\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T05:44:44.3133333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309202267793\",\"TrackId\":\"02-04-2023_1507434\",\"TransactionId\":\"267793\",\"PaymentId\":\"07072164577150743472\",\"AuthorizationId\":\"480470\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 11:42:13', '2023-04-02 11:44:46');
INSERT INTO `payments` (`id`, `type`, `order_id`, `user_id`, `status`, `invoice_id`, `invoice_value`, `invoice_url`, `_id`, `payment_id`, `response`, `created_at`, `updated_at`) VALUES
(86, 'subscription', 88, 57, 'Paid', '2164578', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216457841-0bc089a8', '07072164578150743573', '07072164578150743573', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164578,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118596\",\"CustomerReference\":\"Order_num:88\",\"CreatedDate\":\"2023-04-02T05:46:17.93\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"05:46:17.930\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T05:47:31.23\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309202268883\",\"TrackId\":\"02-04-2023_1507435\",\"TransactionId\":\"268883\",\"PaymentId\":\"07072164578150743573\",\"AuthorizationId\":\"261850\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 11:46:18', '2023-04-02 11:47:32'),
(87, 'subscription', 89, 57, 'Paid', '2164579', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216457942-b4ccbd28', '07072164579150743673', '07072164579150743673', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164579,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118597\",\"CustomerReference\":\"Order_num:89\",\"CreatedDate\":\"2023-04-02T05:50:26.46\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"05:50:26.460\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T05:51:07.62\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309202269883\",\"TrackId\":\"02-04-2023_1507436\",\"TransactionId\":\"269883\",\"PaymentId\":\"07072164579150743673\",\"AuthorizationId\":\"741690\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 11:50:26', '2023-04-02 11:51:09'),
(88, 'subscription', 90, 57, 'Paid', '2164580', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216458041-baa11f4d', '07072164580150743772', '07072164580150743772', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164580,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118598\",\"CustomerReference\":\"Order_num:90\",\"CreatedDate\":\"2023-04-02T05:51:59.243\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"05:51:59.243\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T05:53:42.6633333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309202270953\",\"TrackId\":\"02-04-2023_1507437\",\"TransactionId\":\"270953\",\"PaymentId\":\"07072164580150743772\",\"AuthorizationId\":\"492800\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 11:51:59', '2023-04-02 11:53:44'),
(89, 'subscription', 91, 57, NULL, '2164588', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216458842-1d1cde5d', NULL, NULL, NULL, '2023-04-02 12:00:01', '2023-04-02 12:00:01'),
(90, 'subscription', 92, 57, NULL, '2164596', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216459641-54dd6e8c', NULL, NULL, NULL, '2023-04-02 12:04:25', '2023-04-02 12:04:25'),
(91, 'subscription', 93, 57, 'Paid', '2164597', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216459742-17aae6f3', '07072164597150744172', '07072164597150744172', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164597,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118601\",\"CustomerReference\":\"Order_num:93\",\"CreatedDate\":\"2023-04-02T06:05:28.357\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"06:05:28.357\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T06:05:59.6566667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309203272043\",\"TrackId\":\"02-04-2023_1507441\",\"TransactionId\":\"272043\",\"PaymentId\":\"07072164597150744172\",\"AuthorizationId\":\"635880\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 12:05:28', '2023-04-02 12:06:01'),
(92, 'subscription', 94, 57, 'Paid', '2164605', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216460541-d1e4378f', '07072164605150744271', '07072164605150744271', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164605,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118602\",\"CustomerReference\":\"Order_num:94\",\"CreatedDate\":\"2023-04-02T06:06:54.803\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"06:06:54.803\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T06:07:20.1\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309203273083\",\"TrackId\":\"02-04-2023_1507442\",\"TransactionId\":\"273083\",\"PaymentId\":\"07072164605150744271\",\"AuthorizationId\":\"906090\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 12:06:54', '2023-04-02 12:07:21'),
(93, 'subscription', 95, 57, 'Paid', '2164606', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216460641-a12d3fbc', '07072164606150744372', '07072164606150744372', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164606,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118603\",\"CustomerReference\":\"Order_num:95\",\"CreatedDate\":\"2023-04-02T06:08:07.66\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"06:08:07.660\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T06:08:35.8133333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309203274113\",\"TrackId\":\"02-04-2023_1507443\",\"TransactionId\":\"274113\",\"PaymentId\":\"07072164606150744372\",\"AuthorizationId\":\"972690\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 12:08:07', '2023-04-02 12:08:37'),
(94, 'subscription', 96, 57, 'Paid', '2164607', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216460741-27874080', '07072164607150744572', '07072164607150744572', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2164607,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023118604\",\"CustomerReference\":\"Order_num:96\",\"CreatedDate\":\"2023-04-02T06:10:15.44\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"06:10:15.440\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T06:10:47.9533333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309203275173\",\"TrackId\":\"02-04-2023_1507445\",\"TransactionId\":\"275173\",\"PaymentId\":\"07072164607150744572\",\"AuthorizationId\":\"310380\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-02 12:10:15', '2023-04-02 12:10:50'),
(95, 'subscription', 97, 57, 'Paid', '2165687', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216568742-bf45c9aa', '07072165687150784573', '07072165687150784573', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165687,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119123\",\"CustomerReference\":\"Order_num:97\",\"CreatedDate\":\"2023-04-02T20:53:26.493\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"20:53:26.493\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T20:56:12.5333333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309217272058\",\"TrackId\":\"02-04-2023_1507845\",\"TransactionId\":\"272058\",\"PaymentId\":\"07072165687150784573\",\"AuthorizationId\":\"851060\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"156.174.21.209\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 02:53:26', '2023-04-03 02:56:15'),
(96, 'subscription', 98, 57, NULL, '2165695', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216569542-c7c32831', NULL, NULL, NULL, '2023-04-03 02:58:53', '2023-04-03 02:58:53'),
(97, 'subscription', 99, 57, NULL, '2165697', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216569742-f5648dba', NULL, NULL, NULL, '2023-04-03 02:59:14', '2023-04-03 02:59:14'),
(98, 'subscription', 100, 57, NULL, '2165699', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216569942-9f748019', NULL, NULL, NULL, '2023-04-03 02:59:35', '2023-04-03 02:59:35'),
(99, 'subscription', 101, 57, NULL, '2165702', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216570240-742e9099', NULL, NULL, NULL, '2023-04-03 03:01:24', '2023-04-03 03:01:24'),
(100, 'subscription', 102, 57, 'Paid', '2165703', 5000, 'https://demo.MyFatoorah.com/KWT/ie/01072216570341-d694d30c', '07072165703150784772', '07072165703150784772', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165703,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119139\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-04-02T21:02:00.157\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:02:00.157\",\"InvoiceValue\":58.581,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"5,000.000 LE\",\"DueDeposit\":58.407,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":58.581,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:02:32.65\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218273098\",\"TrackId\":\"02-04-2023_1507847\",\"TransactionId\":\"273098\",\"PaymentId\":\"07072165703150784772\",\"AuthorizationId\":\"650820\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"58.581\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.159\",\"DueValue\":\"58.590\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"58.590\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:02:00', '2023-04-03 03:02:34'),
(101, 'subscription', 103, 57, 'Paid', '2165705', 8000, 'https://demo.MyFatoorah.com/KWT/ie/01072216570541-25266b9e', '07072165705150784973', '07072165705150784973', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165705,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119141\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-04-02T21:04:57.43\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:04:57.430\",\"InvoiceValue\":93.729,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"8,000.000 LE\",\"DueDeposit\":93.507,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":93.729,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:06:05.05\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218274128\",\"TrackId\":\"02-04-2023_1507849\",\"TransactionId\":\"274128\",\"PaymentId\":\"07072165705150784973\",\"AuthorizationId\":\"724410\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"93.729\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.194\",\"DueValue\":\"93.730\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"93.730\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:04:57', '2023-04-03 03:06:06'),
(102, 'subscription', 104, 57, 'Paid', '2165707', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216570741-cdee604a', '07072165707150785072', '07072165707150785072', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165707,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119143\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-04-02T21:08:28\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:08:28.000\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:09:23.7333333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218275188\",\"TrackId\":\"02-04-2023_1507850\",\"TransactionId\":\"275188\",\"PaymentId\":\"07072165707150785072\",\"AuthorizationId\":\"821210\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:08:28', '2023-04-03 03:09:25'),
(103, 'subscription', 105, 57, 'Paid', '2165713', 8000, 'https://demo.MyFatoorah.com/KWT/ie/01072216571341-1c8bc110', '07072165713150785172', '07072165713150785172', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165713,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119149\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-04-02T21:11:05.437\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:11:05.437\",\"InvoiceValue\":93.729,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"8,000.000 LE\",\"DueDeposit\":93.507,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":93.729,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:11:38.0133333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218265739\",\"TrackId\":\"02-04-2023_1507851\",\"TransactionId\":\"265739\",\"PaymentId\":\"07072165713150785172\",\"AuthorizationId\":\"371790\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"93.729\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.194\",\"DueValue\":\"93.730\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"93.730\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:11:05', '2023-04-03 03:11:39'),
(104, 'subscription', 106, 57, 'Paid', '2165715', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216571541-ff1ecd0c', '07072165715150785272', '07072165715150785272', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165715,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119151\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-04-02T21:12:52.41\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:12:52.410\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:14:09.38\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218266739\",\"TrackId\":\"02-04-2023_1507852\",\"TransactionId\":\"266739\",\"PaymentId\":\"07072165715150785272\",\"AuthorizationId\":\"851220\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:12:52', '2023-04-03 03:14:10'),
(105, 'order', 100, 54, 'Paid', '2165759', 420, 'https://demo.MyFatoorah.com/KWT/ie/01072216575942-bb2209b6', NULL, '07072165759150785673', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165759,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119191\",\"CustomerReference\":\"Order_num:100\",\"CreatedDate\":\"2023-04-02T21:40:37.653\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:40:37.653\",\"InvoiceValue\":4.921,\"Comments\":null,\"CustomerName\":\"eslam maged\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"magedhassanin1@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"420.000 LE\",\"DueDeposit\":4.809,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":4.921,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:41:14.6633333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218268899\",\"TrackId\":\"02-04-2023_1507856\",\"TransactionId\":\"268899\",\"PaymentId\":\"07072165759150785673\",\"AuthorizationId\":\"927360\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"4.921\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.105\",\"DueValue\":\"4.930\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"4.930\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:40:37', '2023-04-03 03:41:17'),
(106, 'subscription', 107, 54, 'Paid', '2165762', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072216576241-70d6e386', NULL, '07072165762150785773', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165762,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119194\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-04-02T21:42:42.05\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:42:42.050\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"eslam maged\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"magedhassanin1@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:43:21.6566667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218269899\",\"TrackId\":\"02-04-2023_1507857\",\"TransactionId\":\"269899\",\"PaymentId\":\"07072165762150785773\",\"AuthorizationId\":\"316660\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:42:42', '2023-04-03 03:43:25'),
(107, 'subscription', 108, 57, 'Paid', '2165775', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072216577541-698e34a2', '07072165775150785974', '07072165775150785974', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2165775,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023119207\",\"CustomerReference\":\"Order_num:\",\"CreatedDate\":\"2023-04-02T21:47:29.02\",\"ExpiryDate\":\"April 5, 2023\",\"ExpiryTime\":\"21:47:29.020\",\"InvoiceValue\":292.905,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"25,000.000 LE\",\"DueDeposit\":292.458,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":292.905,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-02T21:48:04.19\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309218270969\",\"TrackId\":\"02-04-2023_1507859\",\"TransactionId\":\"270969\",\"PaymentId\":\"07072165775150785974\",\"AuthorizationId\":\"144680\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"292.905\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.393\",\"DueValue\":\"292.910\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"292.910\",\"IpAddress\":\"196.158.199.83\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-03 03:47:29', '2023-04-03 03:48:05'),
(108, 'subscription', 109, 57, NULL, '2168090', 3000, 'https://demo.MyFatoorah.com/KWT/ie/01072216809041-e3e39ca8', NULL, NULL, NULL, '2023-04-04 03:58:34', '2023-04-04 03:58:34'),
(109, 'order', 104, 54, NULL, '2170299', 432.5, 'https://demo.MyFatoorah.com/KWT/ie/01072217029941-74364e82', NULL, NULL, NULL, '2023-04-05 04:33:56', '2023-04-05 04:33:56'),
(110, 'order', 106, 54, NULL, '2170313', 72.5, 'https://demo.MyFatoorah.com/KWT/ie/01072217031340-0e76fa57', NULL, NULL, NULL, '2023-04-05 04:41:37', '2023-04-05 04:41:37'),
(111, 'order', 107, 54, NULL, '2170315', 432.5, 'https://demo.MyFatoorah.com/KWT/ie/01072217031540-0840c848', NULL, NULL, NULL, '2023-04-05 04:41:55', '2023-04-05 04:41:55'),
(112, 'order', 108, 54, NULL, '2170321', 432.5, 'https://demo.MyFatoorah.com/KWT/ie/01072217032140-4d9f1256', NULL, NULL, NULL, '2023-04-05 04:43:12', '2023-04-05 04:43:12'),
(113, 'order', 109, 57, NULL, '2170325', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217032540-1fd5c5b4', NULL, NULL, NULL, '2023-04-05 04:45:22', '2023-04-05 04:45:22'),
(114, 'order', 110, 57, NULL, '2170327', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217032740-073b584e', NULL, NULL, NULL, '2023-04-05 04:47:01', '2023-04-05 04:47:01'),
(115, 'order', 111, 57, 'Paid', '2170329', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217032941-ba5bf5d6', '07072170329150985572', '07072170329150985572', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2170329,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023121776\",\"CustomerReference\":\"Order_num:111\",\"CreatedDate\":\"2023-04-04T22:48:11.11\",\"ExpiryDate\":\"April 7, 2023\",\"ExpiryTime\":\"22:48:11.110\",\"InvoiceValue\":7.557,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"645.000 LE\",\"DueDeposit\":7.436,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":7.557,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-04T22:48:49.74\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309419295012\",\"TrackId\":\"04-04-2023_1509855\",\"TransactionId\":\"295012\",\"PaymentId\":\"07072170329150985572\",\"AuthorizationId\":\"283130\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"7.557\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.108\",\"DueValue\":\"7.560\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"7.560\",\"IpAddress\":\"196.154.223.27\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-05 04:48:11', '2023-04-05 04:48:51'),
(116, 'order', 112, 57, NULL, '2170332', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217033240-5fbaea32', NULL, NULL, NULL, '2023-04-05 04:50:44', '2023-04-05 04:50:44'),
(117, 'order', 113, 57, 'Paid', '2170338', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217033841-7d8ad697', '07072170338150985973', '07072170338150985973', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2170338,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023121784\",\"CustomerReference\":\"Order_num:113\",\"CreatedDate\":\"2023-04-04T22:53:45.017\",\"ExpiryDate\":\"April 7, 2023\",\"ExpiryTime\":\"22:53:45.017\",\"InvoiceValue\":7.557,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"645.000 LE\",\"DueDeposit\":7.436,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":7.557,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-04T22:54:45.03\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309419286723\",\"TrackId\":\"04-04-2023_1509859\",\"TransactionId\":\"286723\",\"PaymentId\":\"07072170338150985973\",\"AuthorizationId\":\"139580\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"7.557\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.108\",\"DueValue\":\"7.560\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"7.560\",\"IpAddress\":\"196.154.223.27\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-05 04:53:45', '2023-04-05 04:54:46'),
(118, 'order', 114, 57, NULL, '2170343', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217034340-92ddf3af', NULL, NULL, NULL, '2023-04-05 04:55:42', '2023-04-05 04:55:42'),
(119, 'order', 115, 57, 'Paid', '2170353', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217035340-937d7de2', NULL, '07072170353150986272', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2170353,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023121798\",\"CustomerReference\":\"Order_num:115\",\"CreatedDate\":\"2023-04-04T23:00:54.537\",\"ExpiryDate\":\"April 7, 2023\",\"ExpiryTime\":\"23:00:54.537\",\"InvoiceValue\":7.557,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"645.000 LE\",\"DueDeposit\":7.436,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":7.557,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-04T23:01:34.3066667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309420287723\",\"TrackId\":\"04-04-2023_1509862\",\"TransactionId\":\"287723\",\"PaymentId\":\"07072170353150986272\",\"AuthorizationId\":\"152070\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"7.557\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.108\",\"DueValue\":\"7.560\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"7.560\",\"IpAddress\":\"196.154.223.27\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-05 05:00:54', '2023-04-05 05:01:56'),
(120, 'order', 117, 57, NULL, '2170382', 645, 'https://demo.MyFatoorah.com/KWT/ie/01072217038240-b7de9250', NULL, NULL, NULL, '2023-04-05 05:32:28', '2023-04-05 05:32:28'),
(121, 'order', 122, 57, NULL, '2174167', 410, 'https://demo.MyFatoorah.com/KWT/ie/01072217416741-0c12ccee', NULL, NULL, NULL, '2023-04-07 01:44:17', '2023-04-07 01:44:17'),
(122, 'order', 124, 54, 'Paid', '2175598', 442.5, 'https://demo.MyFatoorah.com/KWT/ie/01072217559842-4501bfca', NULL, '07072175598151194673', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2175598,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023124225\",\"CustomerReference\":\"Order_num:124\",\"CreatedDate\":\"2023-04-07T18:37:41.32\",\"ExpiryDate\":\"April 10, 2023\",\"ExpiryTime\":\"18:37:41.320\",\"InvoiceValue\":5.184,\"Comments\":null,\"CustomerName\":\"eslam maged\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"magedhassanin1@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"442.500 LE\",\"DueDeposit\":5.068,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":5.184,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-04-07T18:38:14.4666667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"309715312875\",\"TrackId\":\"07-04-2023_1511946\",\"TransactionId\":\"312875\",\"PaymentId\":\"07072175598151194673\",\"AuthorizationId\":\"173170\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"5.184\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.106\",\"DueValue\":\"5.190\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"5.190\",\"IpAddress\":\"196.129.204.181\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-04-08 00:37:41', '2023-04-08 00:38:16'),
(123, 'subscription', 110, 71, NULL, '2305619', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072230561941-4a1ed031', NULL, NULL, NULL, '2023-05-23 02:20:28', '2023-05-23 02:20:28'),
(124, 'subscription', 111, 71, NULL, '2305620', 25000, 'https://demo.MyFatoorah.com/KWT/ie/01072230562040-39c2c6f1', NULL, NULL, NULL, '2023-05-23 02:21:04', '2023-05-23 02:21:04'),
(125, 'subscription', 112, 75, NULL, '2317063', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072231706340-b0eb56cf', NULL, NULL, NULL, '2023-05-27 19:13:51', '2023-05-27 19:13:51'),
(126, 'subscription', 113, 75, NULL, '2317067', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072231706741-44a27072', NULL, NULL, NULL, '2023-05-27 19:17:04', '2023-05-27 19:17:04'),
(127, 'order', 1, 7, NULL, '2317075', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072231707541-28cda732', NULL, NULL, NULL, '2023-05-27 19:22:08', '2023-05-27 19:22:08'),
(128, 'order', 1, 7, NULL, '2317081', 100, 'https://demo.MyFatoorah.com/KWT/ie/01072231708140-6d2d8a91', NULL, NULL, NULL, '2023-05-27 19:25:06', '2023-05-27 19:25:06'),
(129, 'subscription', 114, 75, NULL, '2317115', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072231711540-5bb92e77', NULL, NULL, NULL, '2023-05-27 19:45:11', '2023-05-27 19:45:11'),
(130, 'subscription', 115, 75, NULL, '2317116', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072231711640-6a693702', NULL, NULL, NULL, '2023-05-27 19:45:21', '2023-05-27 19:45:21'),
(131, 'subscription', 116, 75, NULL, '2317118', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072231711840-2a9b0940', NULL, NULL, NULL, '2023-05-27 19:45:41', '2023-05-27 19:45:41'),
(132, 'subscription', 117, 75, NULL, '2317119', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072231711941-c5b22ca6', NULL, NULL, NULL, '2023-05-27 19:46:04', '2023-05-27 19:46:04'),
(133, 'subscription', 118, 75, NULL, '2320276', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232027640-49be319d', NULL, NULL, NULL, '2023-05-29 02:23:24', '2023-05-29 02:23:24'),
(134, 'subscription', 119, 75, NULL, '2320301', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232030139-4649a3f5', NULL, NULL, NULL, '2023-05-29 02:32:44', '2023-05-29 02:32:44'),
(135, 'subscription', 120, 75, NULL, '2320307', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232030740-e34ebb85', NULL, NULL, NULL, '2023-05-29 02:34:35', '2023-05-29 02:34:35'),
(136, 'subscription', 121, 75, NULL, '2320365', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232036540-7f6fc63d', NULL, NULL, NULL, '2023-05-29 03:03:01', '2023-05-29 03:03:01'),
(137, 'order', 127, 7, NULL, '2321633', 1230, 'https://demo.MyFatoorah.com/KWT/ie/01072232163340-4b749627', NULL, NULL, NULL, '2023-05-29 19:02:49', '2023-05-29 19:02:49'),
(138, 'order', 127, 75, NULL, '2321645', 1230, 'https://demo.MyFatoorah.com/KWT/ie/01072232164540-8c6effca', NULL, NULL, NULL, '2023-05-29 19:05:33', '2023-05-29 19:05:33'),
(139, 'order', 128, 75, 'Paid', '2321655', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072232165541-45607afd', '07072321655157602872', '07072321655157602872', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2321655,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023189266\",\"CustomerReference\":\"Order_num:128\",\"CreatedDate\":\"2023-05-29T13:07:42.633\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"13:07:42.633\",\"InvoiceValue\":2.226,\"Comments\":null,\"CustomerName\":\"Mostafa  Elnaggar\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"mos@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"190.000 LE\",\"DueDeposit\":2.112,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.226,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T13:43:20.45\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314910092258\",\"TrackId\":\"29-05-2023_1576028\",\"TransactionId\":\"92258\",\"PaymentId\":\"07072321655157602872\",\"AuthorizationId\":\"458780\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.226\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.230\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.230\",\"IpAddress\":\"41.44.37.189\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-29 19:07:42', '2023-05-29 19:43:22'),
(140, 'order', 129, 75, 'Paid', '2321831', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072232183140-0316c6c4', '07072321831157603672', '07072321831157603672', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2321831,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023189406\",\"CustomerReference\":\"Order_num:129\",\"CreatedDate\":\"2023-05-29T13:49:28.823\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"13:49:28.823\",\"InvoiceValue\":2.226,\"Comments\":null,\"CustomerName\":\"Mostafa  Elnaggar\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"mos@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"190.000 LE\",\"DueDeposit\":2.112,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.226,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T13:50:33.4033333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314910093288\",\"TrackId\":\"29-05-2023_1576036\",\"TransactionId\":\"93288\",\"PaymentId\":\"07072321831157603672\",\"AuthorizationId\":\"243900\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.226\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.230\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.230\",\"IpAddress\":\"41.44.37.189\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-29 19:49:28', '2023-05-29 19:50:35'),
(141, 'subscription', 122, 75, NULL, '2321845', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232184541-8db42413', NULL, NULL, NULL, '2023-05-29 19:51:43', '2023-05-29 19:51:43'),
(142, 'order', 130, 75, 'Paid', '2321873', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072232187341-9cb63613', '07072321873157605272', '07072321873157605272', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2321873,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023189444\",\"CustomerReference\":\"Order_num:130\",\"CreatedDate\":\"2023-05-29T14:00:28.343\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"14:00:28.343\",\"InvoiceValue\":2.226,\"Comments\":null,\"CustomerName\":\"Mostafa  Elnaggar\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"mos@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"190.000 LE\",\"DueDeposit\":2.112,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.226,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T14:01:14.81\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314911099548\",\"TrackId\":\"29-05-2023_1576052\",\"TransactionId\":\"99548\",\"PaymentId\":\"07072321873157605272\",\"AuthorizationId\":\"775400\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.226\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.230\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.230\",\"IpAddress\":\"41.44.37.189\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-29 20:00:28', '2023-05-29 20:01:16'),
(143, 'order', 131, 75, 'Paid', '2321878', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072232187841-c4c4d111', '07072321878157605473', '07072321878157605473', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2321878,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023189449\",\"CustomerReference\":\"Order_num:131\",\"CreatedDate\":\"2023-05-29T14:01:51.127\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"14:01:51.127\",\"InvoiceValue\":2.226,\"Comments\":null,\"CustomerName\":\"Mostafa  Elnaggar\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"mos@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"190.000 LE\",\"DueDeposit\":2.112,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":2.226,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T14:02:32.71\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314911100578\",\"TrackId\":\"29-05-2023_1576054\",\"TransactionId\":\"100578\",\"PaymentId\":\"07072321878157605473\",\"AuthorizationId\":\"897160\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"2.226\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.103\",\"DueValue\":\"2.230\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"2.230\",\"IpAddress\":\"41.44.37.189\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-29 20:01:51', '2023-05-29 20:02:34'),
(144, 'order', 132, 75, NULL, '2321897', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072232189741-257b4400', NULL, NULL, NULL, '2023-05-29 20:07:38', '2023-05-29 20:07:38'),
(145, 'order', 133, 75, NULL, '2321899', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072232189942-1c6219ba', NULL, NULL, NULL, '2023-05-29 20:07:52', '2023-05-29 20:07:52'),
(146, 'order', 134, 75, NULL, '2321909', 190, 'https://demo.MyFatoorah.com/KWT/ie/01072232190941-990bf984', NULL, NULL, NULL, '2023-05-29 20:11:36', '2023-05-29 20:11:36'),
(147, 'subscription', 123, 75, 'Paid', '2322286', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232228641-0d093f83', '07072322286157623772', '07072322286157623772', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2322286,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023189769\",\"CustomerReference\":\"Order_num:123\",\"CreatedDate\":\"2023-05-29T15:56:28.033\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"15:56:28.033\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"Mostafa  Elnaggar\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"mos@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T15:56:49.25\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"07072322286157623372\",\"TrackId\":\"29-05-2023_1576233\",\"TransactionId\":\"07072322286157623372\",\"PaymentId\":\"07072322286157623372\",\"AuthorizationId\":\"07072322286157623372\",\"TransactionStatus\":\"Failed\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"41.33.35.1\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":\"DECLINED\",\"CardNumber\":\"411111xxxxxx1111\",\"ErrorCode\":\"MF002\"},{\"TransactionDate\":\"2023-05-29T15:58:33.0166667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"07072322286157623572\",\"TrackId\":\"29-05-2023_1576235\",\"TransactionId\":\"07072322286157623572\",\"PaymentId\":\"07072322286157623572\",\"AuthorizationId\":\"07072322286157623572\",\"TransactionStatus\":\"Failed\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"41.33.35.1\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":\"DECLINED\",\"CardNumber\":\"411111xxxxxx1111\",\"ErrorCode\":\"MF002\"},{\"TransactionDate\":\"2023-05-29T15:59:38.8133333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314912098485\",\"TrackId\":\"29-05-2023_1576237\",\"TransactionId\":\"98485\",\"PaymentId\":\"07072322286157623772\",\"AuthorizationId\":\"975290\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"41.44.37.189\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-29 21:56:28', '2023-06-01 20:19:28'),
(148, 'subscription', 124, 75, NULL, '2322316', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232231640-a4058cff', NULL, NULL, NULL, '2023-05-29 22:06:02', '2023-05-29 22:06:02'),
(149, 'subscription', 125, 75, 'Paid', '2322334', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232233440-295590a5', '07072322334157624972', '07072322334157624972', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2322334,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023189813\",\"CustomerReference\":\"Order_num:125\",\"CreatedDate\":\"2023-05-29T16:14:33.297\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"16:14:33.297\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"Mostafa  Elnaggar\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"mos@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T16:15:07.9533333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314913094386\",\"TrackId\":\"29-05-2023_1576249\",\"TransactionId\":\"94386\",\"PaymentId\":\"07072322334157624972\",\"AuthorizationId\":\"695870\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"41.44.37.189\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-29 22:14:33', '2023-05-29 22:15:09');
INSERT INTO `payments` (`id`, `type`, `order_id`, `user_id`, `status`, `invoice_id`, `invoice_value`, `invoice_url`, `_id`, `payment_id`, `response`, `created_at`, `updated_at`) VALUES
(150, 'order', 135, 57, NULL, '2322571', 430, 'https://demo.MyFatoorah.com/KWT/ie/01072232257140-b7bd2a0b', NULL, NULL, NULL, '2023-05-29 23:16:45', '2023-05-29 23:16:45'),
(151, 'order', 136, 57, 'Paid', '2322611', 430, 'https://demo.MyFatoorah.com/KWT/ie/01072232261140-c68d9901', NULL, '07072322611157633872', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2322611,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023190063\",\"CustomerReference\":\"Order_num:136\",\"CreatedDate\":\"2023-05-29T17:27:02.327\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"17:27:02.327\",\"InvoiceValue\":5.038,\"Comments\":null,\"CustomerName\":\"hossam\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"hossamabosaleh4@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"430.000 LE\",\"DueDeposit\":4.918,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":5.038,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T17:27:45.5633333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314914092269\",\"TrackId\":\"29-05-2023_1576338\",\"TransactionId\":\"92269\",\"PaymentId\":\"07072322611157633872\",\"AuthorizationId\":\"150540\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"5.038\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.106\",\"DueValue\":\"5.040\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"5.040\",\"IpAddress\":\"102.42.213.22\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-29 23:27:02', '2023-05-29 23:29:01'),
(152, 'subscription', 126, 75, NULL, '2322640', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232264040-af57a886', NULL, NULL, NULL, '2023-05-29 23:34:30', '2023-05-29 23:34:30'),
(153, 'subscription', 127, 75, NULL, '2322650', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232265040-38cf40ae', NULL, NULL, NULL, '2023-05-29 23:38:08', '2023-05-29 23:38:08'),
(154, 'subscription', 128, 75, NULL, '2322654', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232265441-b20445e6', NULL, NULL, NULL, '2023-05-29 23:40:45', '2023-05-29 23:40:45'),
(155, 'subscription', 129, 7, 'Pending', '2322659', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232265941-5771b377', '07072322659157637573', '07072322659157637573', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2322659,\"InvoiceStatus\":\"Pending\",\"InvoiceReference\":\"2023190109\",\"CustomerReference\":\"Order_num:129\",\"CreatedDate\":\"2023-05-29T17:42:46.59\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"17:42:46.590\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":0,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T17:43:02.4066667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"07072322659157636373\",\"TrackId\":\"29-05-2023_1576363\",\"TransactionId\":\"07072322659157636373\",\"PaymentId\":\"07072322659157636373\",\"AuthorizationId\":\"07072322659157636373\",\"TransactionStatus\":\"Failed\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"41.33.35.1\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":\"DECLINED\",\"CardNumber\":\"411111xxxxxx1111\",\"ErrorCode\":\"MF002\"},{\"TransactionDate\":\"2023-05-29T17:46:08.7533333\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"07072322659157636873\",\"TrackId\":\"29-05-2023_1576368\",\"TransactionId\":\"07072322659157636873\",\"PaymentId\":\"07072322659157636873\",\"AuthorizationId\":\"07072322659157636873\",\"TransactionStatus\":\"Failed\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"196.157.70.236\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":\"DECLINED\",\"CardNumber\":\"411111xxxxxx1111\",\"ErrorCode\":\"MF002\"},{\"TransactionDate\":\"2023-05-29T17:51:35.45\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"07072322659157637573\",\"TrackId\":\"29-05-2023_1576375\",\"TransactionId\":\"07072322659157637573\",\"PaymentId\":\"07072322659157637573\",\"AuthorizationId\":\"07072322659157637573\",\"TransactionStatus\":\"Failed\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"196.157.70.236\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":\"DECLINED\",\"CardNumber\":\"411111xxxxxx1111\",\"ErrorCode\":\"MF002\"}],\"Suppliers\":[]}}', '2023-05-29 23:42:46', '2023-05-29 23:51:45'),
(156, 'subscription', 130, 7, 'Paid', '2322753', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232275341-44c70333', '07072322753157651772', '07072322753157651772', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2322753,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023190196\",\"CustomerReference\":\"Order_num:130\",\"CreatedDate\":\"2023-05-29T18:20:41.647\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"18:20:41.647\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T21:25:16.15\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314918099566\",\"TrackId\":\"29-05-2023_1576517\",\"TransactionId\":\"99566\",\"PaymentId\":\"07072322753157651772\",\"AuthorizationId\":\"366420\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"102.41.250.110\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"512345xxxxxx0008\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-30 00:20:41', '2023-05-30 03:25:17'),
(157, 'order', 137, 57, NULL, '2323305', 430, 'https://demo.MyFatoorah.com/KWT/ie/01072232330540-525b3a71', NULL, NULL, NULL, '2023-05-30 05:06:05', '2023-05-30 05:06:05'),
(158, 'subscription', 131, 7, 'Paid', '2323307', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232330740-b2f852b5', NULL, '07072323307157655572', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2323307,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023190690\",\"CustomerReference\":\"Order_num:131\",\"CreatedDate\":\"2023-05-29T23:13:12.993\",\"ExpiryDate\":\"June 1, 2023\",\"ExpiryTime\":\"23:13:12.993\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-29T23:14:21.7366667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"314920095397\",\"TrackId\":\"29-05-2023_1576555\",\"TransactionId\":\"95397\",\"PaymentId\":\"07072323307157655572\",\"AuthorizationId\":\"318650\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"197.58.71.200\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-30 05:13:13', '2023-05-30 05:14:23'),
(159, 'order', 138, 7, 'Paid', '2325730', 410, 'https://demo.MyFatoorah.com/KWT/ie/01072232573040-a8fcba78', NULL, '07072325730157768273', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2325730,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023192230\",\"CustomerReference\":\"Order_num:138\",\"CreatedDate\":\"2023-05-30T18:44:51.057\",\"ExpiryDate\":\"June 2, 2023\",\"ExpiryTime\":\"18:44:51.057\",\"InvoiceValue\":4.804,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"410.000 LE\",\"DueDeposit\":4.689,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":4.804,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-30T18:46:25.5266667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315015091299\",\"TrackId\":\"30-05-2023_1577682\",\"TransactionId\":\"91299\",\"PaymentId\":\"07072325730157768273\",\"AuthorizationId\":\"160800\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"4.804\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.105\",\"DueValue\":\"4.810\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"4.810\",\"IpAddress\":\"196.157.38.50\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-31 00:44:51', '2023-05-31 00:46:27'),
(160, 'subscription', 132, 7, 'Paid', '2326045', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232604540-684c59bd', NULL, '07072326045157775673', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2326045,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023192517\",\"CustomerReference\":\"Order_num:132\",\"CreatedDate\":\"2023-05-30T21:05:00.677\",\"ExpiryDate\":\"June 2, 2023\",\"ExpiryTime\":\"21:05:00.677\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-30T21:05:47.93\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315018098531\",\"TrackId\":\"30-05-2023_1577756\",\"TransactionId\":\"98531\",\"PaymentId\":\"07072326045157775673\",\"AuthorizationId\":\"577860\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"197.58.71.200\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-31 03:05:00', '2023-05-31 03:05:49'),
(161, 'order', 140, 7, 'Paid', '2326046', 780, 'https://demo.MyFatoorah.com/KWT/ie/01072232604640-7a2bbdfb', NULL, '07072326046157775773', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2326046,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023192518\",\"CustomerReference\":\"Order_num:140\",\"CreatedDate\":\"2023-05-30T21:07:51.447\",\"ExpiryDate\":\"June 2, 2023\",\"ExpiryTime\":\"21:07:51.447\",\"InvoiceValue\":9.139,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"780.000 LE\",\"DueDeposit\":9.014,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":9.139,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-30T21:08:25.2266667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315018099601\",\"TrackId\":\"30-05-2023_1577757\",\"TransactionId\":\"99601\",\"PaymentId\":\"07072326046157775773\",\"AuthorizationId\":\"268230\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"9.139\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.110\",\"DueValue\":\"9.140\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"9.140\",\"IpAddress\":\"197.58.71.200\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-31 03:07:51', '2023-05-31 03:08:26'),
(162, 'order', 143, 7, 'Paid', '2326052', 118, 'https://demo.MyFatoorah.com/KWT/ie/01072232605240-bc8bb3a1', NULL, '07072326052157776072', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2326052,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023192522\",\"CustomerReference\":\"Order_num:143\",\"CreatedDate\":\"2023-05-30T21:12:02.077\",\"ExpiryDate\":\"June 2, 2023\",\"ExpiryTime\":\"21:12:02.077\",\"InvoiceValue\":1.383,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"118.000 LE\",\"DueDeposit\":1.273,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":1.383,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-30T21:12:32.7166667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315018092312\",\"TrackId\":\"30-05-2023_1577760\",\"TransactionId\":\"92312\",\"PaymentId\":\"07072326052157776072\",\"AuthorizationId\":\"374820\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"1.383\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.102\",\"DueValue\":\"1.390\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"1.390\",\"IpAddress\":\"197.58.71.200\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-31 03:12:02', '2023-05-31 03:12:34'),
(163, 'subscription', 133, 7, 'Paid', '2326056', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072232605641-2ed058f6', NULL, '07072326056157776373', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2326056,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023192526\",\"CustomerReference\":\"Order_num:133\",\"CreatedDate\":\"2023-05-30T21:14:52.797\",\"ExpiryDate\":\"June 2, 2023\",\"ExpiryTime\":\"21:14:52.797\",\"InvoiceValue\":3.515,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"300.000 LE\",\"DueDeposit\":3.4,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":3.515,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-30T21:15:15.43\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315018093342\",\"TrackId\":\"30-05-2023_1577763\",\"TransactionId\":\"93342\",\"PaymentId\":\"07072326056157776373\",\"AuthorizationId\":\"644040\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"3.515\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.104\",\"DueValue\":\"3.520\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"3.520\",\"IpAddress\":\"197.58.71.200\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-31 03:14:52', '2023-05-31 03:15:17'),
(164, 'subscription', 134, 7, 'Paid', '2326058', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072232605841-008894a0', NULL, '07072326058157776473', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2326058,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023192528\",\"CustomerReference\":\"Order_num:134\",\"CreatedDate\":\"2023-05-30T21:15:42.74\",\"ExpiryDate\":\"June 2, 2023\",\"ExpiryTime\":\"21:15:42.740\",\"InvoiceValue\":11.716,\"Comments\":null,\"CustomerName\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u0644\\u0646\\u062c\\u0627\\u0631\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"melnagar271@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"1,000.000 LE\",\"DueDeposit\":11.591,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":11.716,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-05-30T21:16:05.0166667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315018095432\",\"TrackId\":\"30-05-2023_1577764\",\"TransactionId\":\"95432\",\"PaymentId\":\"07072326058157776473\",\"AuthorizationId\":\"736560\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"11.716\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.112\",\"DueValue\":\"11.720\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"11.720\",\"IpAddress\":\"197.58.71.200\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-05-31 03:15:42', '2023-05-31 03:16:06'),
(165, 'subscription', 135, 78, 'Paid', '2331173', 3000, 'https://demo.MyFatoorah.com/KWT/ie/01072233117340-793d5649', '07072331173158004071', '07072331173158004071', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2331173,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023196092\",\"CustomerReference\":\"Order_num:135\",\"CreatedDate\":\"2023-06-01T21:18:55.35\",\"ExpiryDate\":\"June 4, 2023\",\"ExpiryTime\":\"21:18:55.350\",\"InvoiceValue\":35.149,\"Comments\":null,\"CustomerName\":\"Eslam Maged\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewakramalbert@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"3,000.000 LE\",\"DueDeposit\":34.994,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":35.149,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-06-01T21:19:43.6566667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315218095488\",\"TrackId\":\"01-06-2023_1580040\",\"TransactionId\":\"95488\",\"PaymentId\":\"07072331173158004071\",\"AuthorizationId\":\"389610\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"35.149\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.136\",\"DueValue\":\"35.150\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"35.150\",\"IpAddress\":\"102.42.213.22\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-06-02 03:18:55', '2023-06-02 03:19:44'),
(166, 'order', 144, 78, 'Paid', '2331194', 2730, 'https://demo.MyFatoorah.com/KWT/ie/01072233119440-322bb494', '07072331194158004872', '07072331194158004872', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2331194,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023196112\",\"CustomerReference\":\"Order_num:144\",\"CreatedDate\":\"2023-06-01T21:27:29.467\",\"ExpiryDate\":\"June 4, 2023\",\"ExpiryTime\":\"21:27:29.467\",\"InvoiceValue\":31.985,\"Comments\":null,\"CustomerName\":\"Eslam Maged\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewakramalbert@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"2,730.000 LE\",\"DueDeposit\":31.838,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":31.985,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-06-01T21:28:41.27\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"315218099658\",\"TrackId\":\"01-06-2023_1580048\",\"TransactionId\":\"99658\",\"PaymentId\":\"07072331194158004872\",\"AuthorizationId\":\"212380\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"31.985\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.132\",\"DueValue\":\"31.990\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"31.990\",\"IpAddress\":\"102.42.213.22\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-06-02 03:27:29', '2023-06-02 03:28:42'),
(167, 'subscription', 136, 7, NULL, '2369993', 3000, 'https://demo.MyFatoorah.com/KWT/ie/01072236999342-e85d4f97', NULL, NULL, NULL, '2023-06-10 19:55:18', '2023-06-10 19:55:18'),
(168, 'subscription', 137, 79, NULL, '2370000', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072237000039-012aad3a', NULL, NULL, NULL, '2023-06-10 19:59:06', '2023-06-10 19:59:06'),
(169, 'order', 145, 79, 'Paid', '2370039', 1230, 'https://demo.MyFatoorah.com/KWT/ie/01072237003941-b445ef85', '07072370039160655772', '07072370039160655772', '{\"IsSuccess\":true,\"Message\":\"\",\"ValidationErrors\":null,\"Data\":{\"InvoiceId\":2370039,\"InvoiceStatus\":\"Paid\",\"InvoiceReference\":\"2023209032\",\"CustomerReference\":\"Order_num:145\",\"CreatedDate\":\"2023-06-10T14:18:46.057\",\"ExpiryDate\":\"June 13, 2023\",\"ExpiryTime\":\"14:18:46.057\",\"InvoiceValue\":14.411,\"Comments\":null,\"CustomerName\":\"Testing iOS\",\"CustomerMobile\":\"+20\",\"CustomerEmail\":\"andrewakramalbert@gmail.com\",\"UserDefinedField\":\"Custom field\",\"InvoiceDisplayValue\":\"1,230.000 LE\",\"DueDeposit\":14.288,\"DepositStatus\":\"Not Deposited\",\"InvoiceItems\":[{\"ItemName\":\"Allo chef Order\",\"Quantity\":1,\"UnitPrice\":14.411,\"Weight\":null,\"Width\":null,\"Height\":null,\"Depth\":null}],\"InvoiceTransactions\":[{\"TransactionDate\":\"2023-06-10T14:21:11.8166667\",\"PaymentGateway\":\"VISA\\/MASTER\",\"ReferenceId\":\"316111088302\",\"TrackId\":\"10-06-2023_1606557\",\"TransactionId\":\"88302\",\"PaymentId\":\"07072370039160655772\",\"AuthorizationId\":\"150360\",\"TransactionStatus\":\"Succss\",\"TransationValue\":\"14.411\",\"CustomerServiceCharge\":\"0.000\",\"TotalServiceCharge\":\"0.115\",\"DueValue\":\"14.420\",\"PaidCurrency\":\"KD\",\"PaidCurrencyValue\":\"14.420\",\"IpAddress\":\"196.129.211.88\",\"Country\":\"Egypt\",\"Currency\":\"KD\",\"Error\":null,\"CardNumber\":\"545301xxxxxx5539\",\"ErrorCode\":\"\"}],\"Suppliers\":[]}}', '2023-06-10 20:18:46', '2023-06-10 20:21:13'),
(170, 'subscription', 138, 7, NULL, '2370044', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072237004440-76d9cf3b', NULL, NULL, NULL, '2023-06-10 20:19:33', '2023-06-10 20:19:33'),
(171, 'subscription', 139, 80, NULL, '2431408', 300, 'https://demo.MyFatoorah.com/KWT/ie/01072243140840-ee584537', NULL, NULL, NULL, '2023-06-28 08:11:25', '2023-06-28 08:11:25'),
(172, 'subscription', 140, 78, NULL, '2613432', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072261343240-84938c91', NULL, NULL, NULL, '2023-08-16 03:27:30', '2023-08-16 03:27:30'),
(173, 'subscription', 148, 76, NULL, '2651581', 1000, 'https://demo.MyFatoorah.com/KWT/ie/01072265158141-9d899de8', NULL, NULL, NULL, '2023-08-26 15:57:35', '2023-08-26 15:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `payment_ways`
--

CREATE TABLE `payment_ways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_ways`
--

INSERT INTO `payment_ways` (`id`, `accept`, `active`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'رصيد الباقة', 'package credit', '2020-05-09 17:59:50', '2019-11-11 22:00:00'),
(2, 0, 1, 'نقاط الباقة', 'package points', '2020-05-09 17:59:50', '2019-11-11 22:00:00'),
(3, 1, 1, 'فيزا', 'visa', '2020-05-09 17:59:50', '2019-11-11 22:00:00'),
(4, 1, 1, 'كاش', 'cash', '2020-05-09 17:59:50', '2023-05-29 02:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `active`, `from`, `to`, `desc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '09:00', '12:00', NULL, NULL, '2019-11-03 16:16:25', '2021-07-18 22:12:48'),
(2, 1, '12:00', '15:00', NULL, NULL, '2019-11-03 16:16:25', '2021-07-18 22:13:22'),
(3, 1, '15:00', '18:00', NULL, NULL, '2021-06-09 23:50:23', '2021-07-18 22:13:58'),
(4, 1, '18:00', '21:00', NULL, NULL, '2021-07-15 04:19:43', '2021-07-18 22:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الرئيسية', 'admin', '2023-03-27 21:37:38', '2023-03-27 21:37:38'),
(2, 'المشرفين', 'admin', '2023-03-27 21:37:38', '2023-03-27 21:37:38'),
(3, 'اضافة مشرف', 'admin', '2023-03-27 21:37:38', '2023-03-27 21:37:38'),
(4, 'تعديل مشرف', 'admin', '2023-03-27 21:37:38', '2023-03-27 21:37:38'),
(5, 'حذف مشرف', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(6, 'تفعيل مشرف', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(7, 'الدول', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(8, 'تعديل دولة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(9, 'تفعيل دولة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(10, 'المدن', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(11, 'اضافة مدينة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(12, 'تعديل مدينة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(13, 'تفعيل مدينة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(14, 'المناطق', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(15, 'اضافة منطقة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(16, 'تعديل منطقة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(17, 'تفعيل منطقة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(18, 'العملاء', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(19, 'إشتراكات العميل', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(20, 'طلبات العميل', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(21, 'تفاصيل المحفظة', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(22, 'تعديل إنتهاء الإشتراك', 'admin', '2023-03-27 21:37:39', '2023-03-27 21:37:39'),
(23, 'إيقاف العميل', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(24, 'المناديب', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(25, 'إضافة مندوب', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(26, 'تعديل مندوب', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(27, 'تفعيل مندوب', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(28, 'طلبات المندوب', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(29, 'السائقين', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(30, 'إضافة سائق', 'admin', '2023-03-27 21:37:40', '2023-03-27 21:37:40'),
(31, 'تعديل سائق', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(32, 'تفعيل سائق', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(33, 'طلبات سائق', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(34, 'إشتراكات العملاء', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(35, 'الطلبات', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(36, 'طباعة الطلب', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(37, 'تفاصيل الطلب', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(38, 'تغيير حالة الطلب', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(39, 'المندوب الخاص الطلب', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(40, 'السائق الخاص الطلب', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(41, 'الكوبونات', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(42, 'إضافة كوبون', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(43, 'تعديل كوبون', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(44, 'الباقات', 'admin', '2023-03-27 21:37:41', '2023-03-27 21:37:41'),
(45, 'إضافة باقة', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(46, 'تعديل باقة', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(47, 'تفعيل باقة', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(48, 'tags', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(49, 'إضافة tag', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(50, 'تعديل tag', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(51, 'حذف tag', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(52, 'تفعيل tag', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(53, 'الطبخات', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(54, 'إضافة طبخة', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(55, 'تعديل طبخة', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(56, 'إضافة صورة للطبخة', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(57, 'تفاصيل الطبخة', 'admin', '2023-03-27 21:37:42', '2023-03-27 21:37:42'),
(58, 'جدولة الطبخات', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(59, 'إضافة طبخة للجدولة', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(60, 'تعديل جدولة طبخة', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(61, 'حذف جدولة طبخة', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(62, 'تفاصيل جدولة الطبخة', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(63, 'فترات التوصيل', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(64, 'إضافة فترة', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(65, 'تعديل فترة', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(66, 'تفعيل فترة', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(67, 'الشاشات الترحيبية', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(68, 'إضافة شاشة ترحيبية', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(69, 'تعديل شاشة ترحيبية', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(70, 'حذف شاشة ترحيبية', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(71, 'تواصل معنا', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(72, 'تعديل حالة تواصل معنا', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(73, 'اضف ملاحظة تواصل معنا', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(74, 'الشروط و الأحكام', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(75, 'تعديل الشروط و الأحكام', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(76, 'عن التطبيق', 'admin', '2023-03-27 21:37:43', '2023-03-27 21:37:43'),
(77, 'تعديل عن التطبيق', 'admin', '2023-03-27 21:37:44', '2023-03-27 21:37:44'),
(78, 'طرق الدفع', 'admin', '2023-03-27 21:37:44', '2023-03-27 21:37:44'),
(79, 'تعديل طرق الدفع', 'admin', '2023-03-27 21:37:44', '2023-03-27 21:37:44'),
(80, 'تفعيل طرق الدفع', 'admin', '2023-03-27 21:37:44', '2023-03-27 21:37:44'),
(81, 'الإعدادات', 'admin', '2023-03-27 21:37:44', '2023-03-27 21:37:44'),
(82, 'تعديل الإعدادات', 'admin', '2023-03-27 21:37:44', '2023-03-27 21:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name_ar`, `name_en`, `delivery`, `city_id`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة الجديدة', 'New Cairo', '30', 3, 1, NULL, '2019-11-11 07:00:00', '2023-07-15 08:01:46'),
(2, 'مدينتي', 'Madenati', '30', 1, 1, NULL, '2020-01-12 07:00:00', '2021-07-18 21:15:54'),
(3, 'مدينة الشروق', 'Al-Shuroq City', '30', 1, 1, NULL, '2021-06-06 09:45:24', '2021-07-17 03:14:20'),
(4, 'مدينة بدر', 'Bader City', '30', 1, 1, NULL, '2021-06-26 01:10:40', '2021-07-17 03:13:49'),
(5, 'مدينة الرحاب', 'Al-Rehab City', '30', 1, 1, NULL, '2021-07-15 03:42:44', '2021-07-17 03:14:57'),
(6, '6 أكتوبر', 'October 6', '30', 2, 1, NULL, '2021-07-17 03:15:36', '2021-07-17 03:15:36'),
(7, 'الشيخ زايد', 'Sheikh Zayed', '30', 1, 1, NULL, '2021-07-17 03:15:54', '2021-07-17 03:15:54'),
(8, 'الهرم', 'Pyramids', '20', 2, 1, NULL, '2021-07-17 03:23:15', '2021-07-17 03:23:15'),
(9, 'العجوزة', 'Alaguza', '20', 2, 1, NULL, '2021-07-17 03:24:02', '2021-07-17 03:24:02'),
(10, 'الدقي', 'Aldoqi', '20', 2, 1, NULL, '2021-07-17 03:24:31', '2021-07-17 03:24:31'),
(11, 'المهندسين', 'Almohandesin', '20', 1, 1, NULL, '2021-07-17 03:25:02', '2021-07-17 03:25:02'),
(12, 'الزمالك', 'Alzamalek', '30', 2, 1, NULL, '2021-07-17 03:26:07', '2021-07-17 03:26:07'),
(13, 'المعادي كورنيش', 'Maadi Kornish', '20', 1, 1, NULL, '2021-07-17 03:27:13', '2021-07-17 03:27:13'),
(14, 'المعادي اوتوستراد', 'Maadi Outostrad', '20', 1, 1, NULL, '2021-07-17 03:28:08', '2021-07-17 03:28:08'),
(15, 'المعادي كارفور', 'Maadi Carfor', '20', 1, 1, NULL, '2021-07-17 03:28:46', '2021-07-17 03:28:46'),
(16, 'المقطم', 'Moqattam', '20', 1, 1, NULL, '2021-07-17 03:29:09', '2021-07-17 03:29:09'),
(17, 'مدينة نصر', 'Nasr City', '20', 1, 1, NULL, '2021-07-17 03:30:01', '2021-07-17 03:30:01'),
(18, 'مصر الجديدة', 'New Mesr', '30', 1, 1, NULL, '2021-07-17 03:30:31', '2021-07-17 03:30:31'),
(19, 'الشيراتون', 'Sheraton', '20', 1, 1, NULL, '2021-07-17 03:31:07', '2021-07-17 03:31:07'),
(20, 'النزهة', 'Nozha', '20', 1, 1, NULL, '2021-07-17 03:31:27', '2021-07-17 03:31:27'),
(21, 'حدائق الأهرام', 'Pyramids Gardens', '30', 2, 1, NULL, '2021-07-17 03:32:46', '2021-07-17 03:32:46'),
(22, 'حدائق أكتوبر', 'Octber Gardens', '30.89', 1, 1, NULL, '2021-07-17 03:33:36', '2023-07-15 07:47:54'),
(23, 'Mokkatam', 'المقطم', '20km;m', 3, 1, NULL, '2023-07-15 07:42:49', '2023-07-15 08:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedualed_meals`
--

CREATE TABLE `schedualed_meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publish_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lable_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lable_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_before` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_after` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedualed_meals`
--

INSERT INTO `schedualed_meals` (`id`, `meal_id`, `publish_date`, `lable_ar`, `lable_en`, `price_before`, `price_after`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-11', 'طبخة فراخ', 'Chiken Cook', '275', '250', 25, '2021-08-15 04:13:59', '2021-09-09 06:35:35'),
(2, 2, '2021-09-11', 'طبخة لحم', 'Meat Cook', '190', '190', 19, '2021-08-15 05:17:10', '2021-09-09 06:36:05'),
(3, 2, '2021-09-15', 'طبخة لحم', 'Meat Cook', '190', '190', 19, '2021-08-15 05:17:10', '2021-09-09 06:38:08'),
(4, 2, '2021-09-13', 'طبخة لحم', 'Meat Cook', '190', '190', 19, '2021-08-15 05:17:10', '2021-09-09 06:36:37'),
(5, 1, '2021-09-13', 'طبخة فراخ', 'Chiken Cook', '275', '250', 25, '2021-08-15 05:18:32', '2021-09-09 06:36:55'),
(6, 1, '2021-09-15', 'طبخة فراخ', 'Chiken Cook', '275', '250', 25, '2021-08-15 05:21:22', '2021-09-09 06:37:49'),
(8, 4, '2021-09-12', 'طبخة سمك', 'Fish Coock', '320', '290', 32, '2021-08-15 06:38:01', '2021-09-09 06:35:12'),
(9, 4, '2021-09-14', 'طبخة سمك', 'Fish Coock', '320', '290', 32, '2021-08-15 06:38:01', '2021-09-09 06:37:11'),
(10, 4, '2021-09-16', 'طبخة سمك', 'Fish Coock', '320', '290', 32, '2021-08-15 06:38:01', '2021-09-09 06:38:26'),
(11, 5, '2021-09-12', 'طبخة خضار', 'vegetable Cook', '120', '120', 12, '2021-08-15 07:14:26', '2021-09-09 06:36:23'),
(12, 5, '2021-09-16', 'طبخة خضار', 'vegetable Cook', '120', '120', 12, '2021-08-15 07:14:26', '2021-09-09 06:38:43'),
(13, 5, '2021-09-14', 'طبخة خضار', 'vegetable Cook', '120', '120', 12, '2021-08-15 07:14:26', '2021-09-09 06:37:29'),
(14, 6, '2021-09-12', 'دواجن الوطنية', 'Al Watania Poultry', '70', '70', 12, '2021-08-28 04:05:14', '2021-09-09 06:34:54'),
(15, 6, '2021-09-11', 'دواجن الوطنية', 'Al Watania Poultry', '70', '70', 12, '2021-08-28 04:05:14', '2021-09-09 06:34:36'),
(16, 1, '2021-09-18', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(17, 1, '2021-09-19', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(18, 1, '2021-09-20', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(19, 1, '2021-09-21', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(20, 1, '2021-09-22', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(21, 1, '2021-09-23', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(22, 1, '2021-09-25', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(23, 1, '2021-09-26', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(24, 1, '2021-09-27', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(25, 1, '2021-09-28', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(26, 1, '2021-09-29', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(27, 1, '2021-09-30', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(28, 1, '2021-10-02', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(29, 1, '2021-10-03', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(30, 1, '2021-10-04', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(31, 1, '2021-10-05', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(32, 1, '2021-10-06', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(33, 1, '2021-10-07', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(34, 1, '2021-10-09', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(35, 1, '2021-10-10', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(36, 1, '2021-10-11', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(37, 1, '2021-10-12', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(38, 1, '2021-10-13', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(39, 1, '2021-10-14', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(40, 1, '2021-10-16', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(41, 1, '2021-10-17', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(42, 1, '2021-10-18', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(43, 1, '2021-10-19', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(44, 1, '2021-10-20', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(45, 1, '2021-10-21', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(46, 1, '2021-10-23', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(47, 1, '2021-10-24', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(48, 1, '2021-10-25', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(49, 1, '2021-10-26', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(50, 1, '2021-10-27', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(51, 1, '2021-10-28', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(52, 1, '2021-10-30', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(53, 1, '2021-10-31', 'طبخة فراخ', 'Chiken Cook', '160', '150', 12, '2021-09-17 23:45:07', '2021-09-17 23:45:07'),
(54, 2, '2021-09-18', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(55, 2, '2021-09-19', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(56, 2, '2021-09-20', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(57, 2, '2021-09-21', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(58, 2, '2021-09-22', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(59, 2, '2021-09-23', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(60, 2, '2021-09-25', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(61, 2, '2021-09-26', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(62, 2, '2021-09-27', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(63, 2, '2021-09-28', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(64, 2, '2021-09-29', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(65, 2, '2021-09-30', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(66, 2, '2021-10-02', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(67, 2, '2021-10-03', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(68, 2, '2021-10-04', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(69, 2, '2021-10-05', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(70, 2, '2021-10-06', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(71, 2, '2021-10-07', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(72, 2, '2021-10-09', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(73, 2, '2021-10-10', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(74, 2, '2021-10-11', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(75, 2, '2021-10-12', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(76, 2, '2021-10-13', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(77, 2, '2021-10-14', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:54:41'),
(78, 2, '2021-10-17', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-18 00:00:34'),
(79, 2, '2021-10-16', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:57:20'),
(80, 2, '2021-10-18', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:58:34'),
(81, 2, '2021-10-19', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:41', '2021-09-17 23:56:59'),
(82, 2, '2021-10-20', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(83, 2, '2021-10-21', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(84, 2, '2021-10-23', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(85, 2, '2021-10-24', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(86, 2, '2021-10-25', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(87, 2, '2021-10-26', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(88, 2, '2021-10-27', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(89, 2, '2021-10-28', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(90, 2, '2021-10-30', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(91, 2, '2021-10-31', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(92, 2, '2021-11-01', 'طبخة لحم', 'Meet Coock', '230', '210', 24, '2021-09-17 23:54:42', '2021-09-17 23:54:42'),
(93, 4, '2021-09-18', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(94, 4, '2021-09-19', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(95, 4, '2021-09-20', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(96, 4, '2021-09-21', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(97, 4, '2021-09-22', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(98, 4, '2021-09-23', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(99, 4, '2021-09-25', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(100, 4, '2021-09-26', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(101, 4, '2021-09-27', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(102, 4, '2021-09-28', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(103, 4, '2021-09-29', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(104, 4, '2021-09-30', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(105, 4, '2021-10-02', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(106, 4, '2021-10-03', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(107, 4, '2021-10-04', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(108, 4, '2021-10-05', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(109, 4, '2021-10-06', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(110, 4, '2021-10-07', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(111, 4, '2021-10-09', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(112, 4, '2021-10-10', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(113, 4, '2021-10-11', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(114, 4, '2021-10-12', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(115, 4, '2021-10-13', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(116, 4, '2021-10-14', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(117, 4, '2021-10-16', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(118, 4, '2021-10-17', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(119, 4, '2021-10-18', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(120, 4, '2021-10-19', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(121, 4, '2021-10-20', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(122, 4, '2021-10-21', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(123, 4, '2021-10-23', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(124, 4, '2021-10-24', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(125, 4, '2021-10-25', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(126, 4, '2021-10-26', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(127, 4, '2021-10-27', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(128, 4, '2021-10-28', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(129, 4, '2021-10-30', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(130, 4, '2021-10-31', 'طبخة سمك', 'Fish Coock', '320', '300', 32, '2021-09-18 00:08:45', '2021-09-18 00:08:45'),
(131, 5, '2021-09-18', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(132, 5, '2021-09-19', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(133, 5, '2021-09-20', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(134, 5, '2021-09-21', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(135, 5, '2021-09-22', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(136, 5, '2021-09-23', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(137, 5, '2021-09-25', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(138, 5, '2021-09-26', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(139, 5, '2021-09-27', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(140, 5, '2021-09-28', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(141, 5, '2021-09-29', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(142, 5, '2021-09-30', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(143, 5, '2021-10-02', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(144, 5, '2021-10-03', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(145, 5, '2021-10-04', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(146, 5, '2021-10-05', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(147, 5, '2021-10-06', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(148, 5, '2021-10-07', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(149, 5, '2021-10-09', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(150, 5, '2021-10-10', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(151, 5, '2021-10-11', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(152, 5, '2021-10-12', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(153, 5, '2021-10-13', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(154, 5, '2021-10-14', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(155, 5, '2021-10-16', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(156, 5, '2021-10-17', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(157, 5, '2021-10-18', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(158, 5, '2021-10-19', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(159, 5, '2021-10-20', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(160, 5, '2021-10-21', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(161, 5, '2021-10-23', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(162, 5, '2021-10-24', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(163, 5, '2021-10-25', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(164, 5, '2021-10-26', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(165, 5, '2021-10-27', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(166, 5, '2021-10-28', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(167, 5, '2021-10-30', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(168, 5, '2021-10-31', 'طبخة خضار', 'Vegetable Cook', '100', '90', 10, '2021-09-18 00:14:38', '2021-09-18 00:14:38'),
(169, 2, '2022-12-27', 'لحمة', 'meat', '77', '7', NULL, '2022-12-26 01:52:24', '2022-12-26 01:52:24'),
(170, 2, '2022-12-29', 'لحمة', 'meat', '77', '7', NULL, '2022-12-26 01:52:24', '2022-12-26 01:52:24'),
(171, 1, '2022-12-27', 'qwe', 'qwe', '234', '23', 11, '2022-12-26 02:03:14', '2022-12-26 02:03:14'),
(172, 1, '2022-12-29', 'qwe', 'qwe', '234', '23', 11, '2022-12-26 02:03:14', '2022-12-26 02:03:14'),
(173, 5, '2022-12-27', 'zxc', 'zxc', '340', '34', 43, '2022-12-26 02:03:53', '2022-12-26 02:03:53'),
(174, 5, '2022-12-29', 'zxc', 'zxc', '340', '34', 43, '2022-12-26 02:03:53', '2022-12-26 02:03:53'),
(175, 2, '2023-02-15', 'طبخة لحم', 'meat meal', '100', '90', 10, '2023-02-14 05:46:46', '2023-02-14 05:46:46'),
(176, 2, '2023-02-16', 'طبخة لحم', 'meat meal', '100', '90', 10, '2023-02-14 05:46:46', '2023-02-14 05:46:46'),
(177, 1, '2023-02-15', 'طبخة فراخ', 'chicks meal', '50', '40', 30, '2023-02-14 05:49:13', '2023-02-14 05:49:13'),
(178, 1, '2023-02-16', 'طبخة فراخ', 'chicks meal', '50', '40', 30, '2023-02-14 05:49:13', '2023-02-14 05:49:13'),
(179, 4, '2023-02-15', 'طبخة سمك', 'fish meal', '160', '150', 70, '2023-02-14 05:52:38', '2023-02-14 05:52:38'),
(180, 4, '2023-02-16', 'طبخة سمك', 'fish meal', '160', '150', 70, '2023-02-14 05:52:38', '2023-02-14 05:52:38'),
(181, 2, '2023-02-18', 'طبخة لحم', 'meat meal', '300', '250', 150, '2023-02-16 05:06:37', '2023-02-16 05:06:37'),
(182, 2, '2023-02-19', 'طبخة لحم', 'meat meal', '300', '250', 150, '2023-02-16 05:06:37', '2023-02-16 05:06:37'),
(183, 2, '2023-02-20', 'طبخة لحم', 'meat meal', '300', '250', 150, '2023-02-16 05:06:37', '2023-02-16 05:06:37'),
(184, 2, '2023-02-21', 'طبخة لحم', 'meat meal', '300', '250', 150, '2023-02-16 05:06:37', '2023-02-16 05:06:37'),
(185, 2, '2023-02-22', 'طبخة لحم', 'meat meal', '300', '250', 150, '2023-02-16 05:06:37', '2023-02-16 05:06:37'),
(186, 2, '2023-02-23', 'طبخة لحم', 'meat meal', '300', '250', 150, '2023-02-16 05:06:37', '2023-02-16 05:06:37'),
(187, 2, '2023-02-25', 'طبخة لحم', 'meat meal', '300', '250', 150, '2023-02-16 05:06:37', '2023-02-16 05:06:37'),
(188, 1, '2023-02-18', 'طبخة فراخ', 'chicks meal', '400', '380', 500, '2023-02-16 05:08:27', '2023-02-16 05:08:27'),
(189, 1, '2023-02-19', 'طبخة فراخ', 'chicks meal', '400', '380', 500, '2023-02-16 05:08:27', '2023-02-16 05:08:27'),
(190, 1, '2023-02-20', 'طبخة فراخ', 'chicks meal', '400', '380', 500, '2023-02-16 05:08:27', '2023-02-16 05:08:27'),
(191, 1, '2023-02-21', 'طبخة فراخ', 'chicks meal', '400', '380', 500, '2023-02-16 05:08:27', '2023-02-16 05:08:27'),
(192, 1, '2023-02-22', 'طبخة فراخ', 'chicks meal', '400', '380', 500, '2023-02-16 05:08:27', '2023-02-16 05:08:27'),
(193, 1, '2023-02-23', 'طبخة فراخ', 'chicks meal', '400', '380', 500, '2023-02-16 05:08:27', '2023-02-16 05:08:27'),
(194, 1, '2023-02-25', 'طبخة فراخ', 'chicks meal', '400', '380', 500, '2023-02-16 05:08:27', '2023-02-16 05:08:27'),
(195, 4, '2023-02-18', 'طبخة سمك', 'fish meal', '700', '650', 600, '2023-02-16 05:09:33', '2023-02-16 05:09:33'),
(196, 4, '2023-02-19', 'طبخة سمك', 'fish meal', '700', '650', 600, '2023-02-16 05:09:33', '2023-02-16 05:09:33'),
(197, 4, '2023-02-20', 'طبخة سمك', 'fish meal', '700', '650', 600, '2023-02-16 05:09:33', '2023-02-16 05:09:33'),
(198, 4, '2023-02-21', 'طبخة سمك', 'fish meal', '700', '650', 600, '2023-02-16 05:09:33', '2023-02-16 05:09:33'),
(199, 4, '2023-02-22', 'طبخة سمك', 'fish meal', '700', '650', 600, '2023-02-16 05:09:33', '2023-02-16 05:09:33'),
(200, 4, '2023-02-23', 'طبخة سمك', 'fish meal', '700', '650', 600, '2023-02-16 05:09:33', '2023-02-16 05:09:33'),
(201, 4, '2023-02-25', 'طبخة سمك', 'fish meal', '700', '650', 600, '2023-02-16 05:09:33', '2023-02-16 05:09:33'),
(202, 6, '2023-02-26', 'طبخة لحم', 'meat meal', '700', '600', 300, '2023-02-22 08:33:03', '2023-02-22 08:33:03'),
(203, 6, '2023-02-27', 'طبخة لحم', 'meat meal', '700', '600', 300, '2023-02-22 08:33:03', '2023-02-22 08:33:03'),
(204, 6, '2023-02-28', 'طبخة لحم', 'meat meal', '700', '600', 300, '2023-02-22 08:33:03', '2023-02-22 08:33:03'),
(205, 1, '2023-02-26', 'طبخة فراخ', 'chicks meal', '500', '450', 230, '2023-02-22 08:33:48', '2023-02-22 08:33:48'),
(206, 1, '2023-02-27', 'طبخة فراخ', 'chicks meal', '500', '450', 230, '2023-02-22 08:33:48', '2023-02-22 08:33:48'),
(207, 1, '2023-02-28', 'طبخة فراخ', 'chicks meal', '500', '450', 230, '2023-02-22 08:33:48', '2023-02-22 08:33:48'),
(208, 4, '2023-02-26', 'طبخة سمك', 'fish meal', '900', '880', 800, '2023-02-22 08:34:29', '2023-02-22 08:34:29'),
(209, 4, '2023-02-27', 'طبخة سمك', 'fish meal', '900', '880', 800, '2023-02-22 08:34:29', '2023-02-22 08:34:29'),
(210, 4, '2023-02-28', 'طبخة سمك', 'fish meal', '900', '880', 800, '2023-02-22 08:34:29', '2023-02-22 08:34:29'),
(211, 2, '2023-03-02', 'طبخة لحم', 'meat meal', '500', '400', 400, '2023-03-01 05:13:23', '2023-03-01 05:13:23'),
(212, 2, '2023-03-04', 'طبخة لحم', 'meat meal', '500', '400', 400, '2023-03-01 05:13:23', '2023-03-01 05:13:23'),
(213, 2, '2023-03-05', 'طبخة لحم', 'meat meal', '500', '400', 400, '2023-03-01 05:13:23', '2023-03-01 05:13:23'),
(214, 2, '2023-03-06', 'طبخة لحم', 'meat meal', '500', '400', 400, '2023-03-01 05:13:23', '2023-03-01 05:13:23'),
(215, 2, '2023-03-07', 'طبخة لحم', 'meat meal', '500', '400', 400, '2023-03-01 05:13:23', '2023-03-01 05:13:23'),
(216, 2, '2023-03-08', 'طبخة لحم', 'meat meal', '500', '400', 400, '2023-03-01 05:13:23', '2023-03-01 05:13:23'),
(217, 2, '2023-03-09', 'طبخة لحم', 'meat meal', '500', '400', 400, '2023-03-01 05:13:23', '2023-03-01 05:13:23'),
(218, 1, '2023-03-02', 'طبخة فراخ', 'chicks meal', '450', '350', 500, '2023-03-01 05:15:06', '2023-03-01 05:15:06'),
(219, 1, '2023-03-04', 'طبخة فراخ', 'chicks meal', '450', '350', 500, '2023-03-01 05:15:06', '2023-03-01 05:15:06'),
(220, 1, '2023-03-05', 'طبخة فراخ', 'chicks meal', '450', '350', 500, '2023-03-01 05:15:06', '2023-03-01 05:15:06'),
(221, 1, '2023-03-06', 'طبخة فراخ', 'chicks meal', '450', '350', 500, '2023-03-01 05:15:06', '2023-03-01 05:15:06'),
(222, 1, '2023-03-07', 'طبخة فراخ', 'chicks meal', '450', '350', 500, '2023-03-01 05:15:06', '2023-03-01 05:15:06'),
(223, 1, '2023-03-08', 'طبخة فراخ', 'chicks meal', '450', '350', 500, '2023-03-01 05:15:06', '2023-03-01 05:15:06'),
(224, 1, '2023-03-09', 'طبخة فراخ', 'chicks meal', '450', '350', 500, '2023-03-01 05:15:06', '2023-03-01 05:15:06'),
(225, 4, '2023-03-02', 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(226, 4, '2023-03-04', 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(227, 4, '2023-03-05', 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(228, 4, '2023-03-06', 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(229, 4, '2023-03-07', 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(230, 4, '2023-03-08', 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(231, 4, '2023-03-09', 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(232, 4, NULL, 'طبخة سمك', 'fish meal', '900', '800', 800, '2023-03-01 05:16:29', '2023-03-01 05:16:29'),
(233, 5, '2023-03-13', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-03-11 21:46:09', '2023-03-11 21:46:09'),
(234, 5, '2023-03-14', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-03-11 21:46:09', '2023-03-11 21:46:09'),
(235, 5, '2023-03-15', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-03-11 21:46:09', '2023-03-11 21:46:09'),
(236, 5, '2023-03-16', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-03-11 21:46:09', '2023-03-11 21:46:09'),
(237, 5, '2023-03-18', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-03-11 21:46:09', '2023-03-11 21:46:09'),
(238, 5, NULL, 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-03-11 21:46:09', '2023-03-11 21:46:09'),
(239, 1, '2023-03-13', 'طبخة فراخ', 'chicks meal', '300', '200', 300, '2023-03-11 21:47:20', '2023-03-11 21:47:20'),
(240, 1, '2023-03-14', 'طبخة فراخ', 'chicks meal', '300', '200', 300, '2023-03-11 21:47:20', '2023-03-11 21:47:20'),
(241, 1, '2023-03-15', 'طبخة فراخ', 'chicks meal', '300', '200', 300, '2023-03-11 21:47:20', '2023-03-11 21:47:20'),
(242, 1, '2023-03-18', 'طبخة فراخ', 'chicks meal', '300', '200', 300, '2023-03-11 21:47:20', '2023-03-11 21:47:20'),
(243, 4, '2023-03-13', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-11 21:48:22', '2023-03-11 21:48:22'),
(244, 4, '2023-03-14', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-11 21:48:22', '2023-03-11 21:48:22'),
(245, 4, '2023-03-15', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-11 21:48:22', '2023-03-11 21:48:22'),
(246, 4, '2023-03-16', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-11 21:48:22', '2023-03-11 21:48:22'),
(247, 4, '2023-03-18', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-11 21:48:22', '2023-03-11 21:48:22'),
(248, 2, '2023-03-19', 'طبخة لحم', 'meat meal', '400', '300', 300, '2023-03-16 21:51:36', '2023-03-16 21:51:36'),
(249, 2, '2023-03-20', 'طبخة لحم', 'meat meal', '400', '300', 300, '2023-03-16 21:51:36', '2023-03-16 21:51:36'),
(250, 2, '2023-03-21', 'طبخة لحم', 'meat meal', '400', '300', 300, '2023-03-16 21:51:36', '2023-03-16 21:51:36'),
(251, 2, '2023-03-22', 'طبخة لحم', 'meat meal', '400', '300', 300, '2023-03-16 21:51:36', '2023-03-16 21:51:36'),
(252, 2, '2023-03-23', 'طبخة لحم', 'meat meal', '400', '300', 300, '2023-03-16 21:51:36', '2023-03-16 21:51:36'),
(253, 2, '2023-03-25', 'طبخة لحم', 'meat meal', '400', '300', 300, '2023-03-16 21:51:36', '2023-03-16 21:51:36'),
(254, 1, '2023-03-19', 'طبخة فراخ', 'chicks meal', '600', '500', 500, '2023-03-16 21:53:31', '2023-03-16 21:53:31'),
(255, 1, '2023-03-20', 'طبخة فراخ', 'chicks meal', '600', '500', 500, '2023-03-16 21:53:31', '2023-03-16 21:53:31'),
(256, 1, '2023-03-21', 'طبخة فراخ', 'chicks meal', '600', '500', 500, '2023-03-16 21:53:31', '2023-03-16 21:53:31'),
(257, 1, '2023-03-22', 'طبخة فراخ', 'chicks meal', '600', '500', 500, '2023-03-16 21:53:31', '2023-03-16 21:53:31'),
(258, 1, '2023-03-23', 'طبخة فراخ', 'chicks meal', '600', '500', 500, '2023-03-16 21:53:31', '2023-03-16 21:53:31'),
(259, 1, '2023-03-25', 'طبخة فراخ', 'chicks meal', '600', '500', 500, '2023-03-16 21:53:31', '2023-03-16 21:53:31'),
(260, 4, '2023-03-01', 'asd', 'qwe', '99', '80', 700, '2023-03-18 06:35:15', '2023-03-18 06:35:15'),
(261, 1, '2023-03-26', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-03-24 08:52:59', '2023-03-24 08:52:59'),
(262, 1, '2023-03-27', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-03-24 08:52:59', '2023-03-24 08:52:59'),
(263, 1, '2023-03-28', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-03-24 08:52:59', '2023-03-24 08:52:59'),
(264, 1, '2023-03-29', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-03-24 08:52:59', '2023-03-24 08:52:59'),
(265, 1, '2023-04-04', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-03-24 08:52:59', '2023-04-02 07:52:13'),
(266, 2, '2023-03-26', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-03-24 08:55:07', '2023-03-24 08:55:07'),
(267, 2, '2023-03-27', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-03-24 08:55:07', '2023-03-24 08:55:07'),
(268, 2, '2023-03-28', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-03-24 08:55:07', '2023-03-24 08:55:07'),
(269, 2, '2023-03-29', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-03-24 08:55:07', '2023-03-24 08:55:07'),
(270, 2, '2023-03-30', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-03-24 08:55:07', '2023-03-24 08:55:07'),
(271, 4, '2023-03-26', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-24 08:57:55', '2023-03-24 08:57:55'),
(272, 4, '2023-03-27', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-24 08:57:55', '2023-03-24 08:57:55'),
(273, 4, '2023-03-28', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-24 08:57:55', '2023-03-24 08:57:55'),
(274, 4, '2023-03-29', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-24 08:57:55', '2023-03-24 08:57:55'),
(275, 4, '2023-03-30', 'طبخة سمك', 'fish meal', '800', '700', 700, '2023-03-24 08:57:55', '2023-03-24 08:57:55'),
(276, 1, '2023-04-09', 'طبخة دجاج', 'chicks meal', '10', '5', 500, '2023-04-08 02:09:42', '2023-04-08 02:09:42'),
(277, 1, '2023-05-24', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-05-23 01:58:23', '2023-05-23 01:58:23'),
(278, 1, '2023-05-25', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-05-23 01:58:23', '2023-05-23 01:58:23'),
(279, 1, '2023-05-27', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-05-23 01:58:23', '2023-05-23 01:58:23'),
(280, 1, '2023-05-28', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-05-23 01:58:23', '2023-05-23 01:58:23'),
(281, 1, '2023-05-29', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-05-23 01:58:23', '2023-05-23 01:58:23'),
(282, 1, '2023-06-01', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-05-23 01:58:23', '2023-05-31 00:44:27'),
(283, 5, '2023-05-24', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-05-23 01:59:16', '2023-05-23 01:59:16'),
(284, 5, '2023-05-25', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-05-23 01:59:16', '2023-05-23 01:59:16'),
(285, 5, '2023-05-27', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-05-23 01:59:16', '2023-05-23 01:59:16'),
(286, 5, '2023-05-28', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-05-23 01:59:16', '2023-05-23 01:59:16'),
(287, 5, '2023-05-29', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-05-23 01:59:16', '2023-05-23 01:59:16'),
(288, 5, '2023-05-30', 'طبخة لحم', 'meat meal', '600', '500', 500, '2023-05-23 01:59:16', '2023-05-23 01:59:16'),
(289, 4, '2023-05-24', 'طبخة سمك', 'fish meal', '700', '600', 700, '2023-05-23 02:00:44', '2023-05-23 02:00:44'),
(290, 4, '2023-05-25', 'طبخة سمك', 'fish meal', '700', '600', 700, '2023-05-23 02:00:44', '2023-05-23 02:00:44'),
(291, 4, '2023-05-27', 'طبخة سمك', 'fish meal', '700', '600', 700, '2023-05-23 02:00:44', '2023-05-23 02:00:44'),
(292, 4, '2023-05-28', 'طبخة سمك', 'fish meal', '700', '600', 700, '2023-05-23 02:00:44', '2023-05-23 02:00:44'),
(293, 4, '2023-05-29', 'طبخة سمك', 'fish meal', '700', '600', 700, '2023-05-23 02:00:44', '2023-05-23 02:00:44'),
(294, 4, '2023-05-30', 'طبخة سمك', 'fish meal', '700', '600', 700, '2023-05-23 02:00:44', '2023-05-23 02:00:44'),
(295, 1, '2023-05-31', 'طبخة دجاج', 'chicks meal', '600', '500', 500, '2023-05-31 02:09:52', '2023-05-31 02:09:52'),
(296, 5, '2023-05-31', 'طبخة لحم', 'meat meal', '600', '450', 500, '2023-05-31 02:10:26', '2023-05-31 02:10:26'),
(297, 5, '2023-06-01', 'طبخة لحم', 'meat meal', '400', '350', 500, '2023-05-31 02:15:08', '2023-05-31 02:15:08'),
(298, 1, '2023-06-03', 'طبخة دجاج', 'chicks meal', '600', '500', 500, '2023-06-02 03:21:53', '2023-06-02 03:21:53'),
(299, 1, '2023-06-28', 'طبخة دجاج', 'chicks meal', '600', '500', 500, '2023-06-02 03:21:53', '2023-06-28 07:28:46'),
(300, 5, '2023-06-03', 'طبخة لحم', 'meat meal', '400', '350', 500, '2023-06-02 03:22:25', '2023-06-02 03:22:25'),
(301, 5, '2023-06-04', 'طبخة لحم', 'meat meal', '400', '350', 500, '2023-06-02 03:22:25', '2023-06-02 03:22:25'),
(302, 2, '2023-07-01', 'طبخة سمك', 'fish meal', '900', '800', 300, '2023-06-28 08:10:40', '2023-06-28 08:10:40'),
(303, 1, '2023-08-02', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-07-31 07:51:25'),
(304, 1, '2023-08-03', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-07-31 07:51:25'),
(305, 1, '2023-08-05', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-07-31 07:51:25'),
(306, 1, '2023-08-06', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-07-31 07:51:25'),
(307, 1, '2023-08-07', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-07-31 07:51:25'),
(308, 1, '2023-08-08', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-07-31 07:51:25'),
(309, 1, '2023-08-09', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-07-31 07:51:25'),
(310, 1, '2023-08-19', 'طبخة دجاج', 'chicks meal', '500', '400', 500, '2023-07-31 07:51:25', '2023-08-19 17:31:51'),
(311, 2, '2023-08-02', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-07-31 07:52:55'),
(312, 2, '2023-08-03', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-07-31 07:52:55'),
(313, 2, '2023-08-05', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-07-31 07:52:55'),
(314, 2, '2023-08-21', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-08-19 17:37:40'),
(315, 2, '2023-08-07', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-07-31 07:52:55'),
(316, 2, '2023-08-08', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-07-31 07:52:55'),
(317, 2, '2023-08-09', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-07-31 07:52:55'),
(318, 2, '2023-08-10', 'طبخة لحم', 'meat meal', '600', '500', 300, '2023-07-31 07:52:55', '2023-07-31 07:52:55'),
(319, 4, '2023-08-02', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(320, 4, '2023-08-03', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(321, 4, '2023-08-05', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(322, 4, '2023-08-06', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(323, 4, '2023-08-07', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(324, 4, '2023-08-08', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(325, 4, '2023-08-09', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(326, 4, '2023-08-10', 'طبخة سمك', 'fish meal', '900', '800', 700, '2023-07-31 07:54:10', '2023-07-31 07:54:10'),
(327, 7, '2023-08-19', 'تفاصيل جدول', 'test table', '160', '150', 1, '2023-08-19 17:35:14', '2023-08-19 17:35:14'),
(328, 5, '2023-08-20', 'تفاصيل جدول', 'test table', '160', '150', 1, '2023-08-19 17:35:14', '2023-08-19 17:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_price_percentage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point_equality_in_egp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_cost_in_egp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `meal_price_percentage`, `point_equality_in_egp`, `delivery_cost_in_egp`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '50', '2.68', '10', NULL, '2020-05-10 02:59:50', '2023-05-22 06:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `active`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 1, 'طبخة دجاج', 'chicks meal', '2023-02-25 10:49:33', '2023-03-24 08:51:11'),
(2, 1, 'طبخة لحم', 'meat meal', '2023-03-07 05:03:05', '2023-03-24 08:51:32'),
(3, 1, 'طبخة سمك', 'fish meal', '2023-03-24 08:51:54', '2023-03-24 08:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `term_ar`, `term_en`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'شروط وأحكام الخدمة\r\n\r\nهذه (\" الشروط والأحكام \") هي اتفاقية بينك وبين Allo Chef Brand Of  (Ward Al Cham LLC.) ، جنبًا إلى جنب مع ممثلينا والمسؤولين والمساهمين و الشركات التابعة  والآباء والموظفين والوكلاء (يشار إليهم جميعًا باسم \" Allo Chef \"أو\" نحن \"أو\" خاصتنا \") نقدم الموقع على  www.allochefeg.com وتحكم هذه الشروط والأحكام استخدامك للموقع وتطبيقات الهاتف المحمول أو الخدمات الأخرى عبر الإنترنت حيث يتم نشرهذه الشروط والأحكام (يشار إليها مجتمعة باسم \" موقع الويب \" ) ما لم ينص صراحة على خلاف ذلك ، سيتم تضمين أي أدوات أو تطبيقات جديدة تعمل على تغيير أو تحسين موقع الويب الحالي في تعريف \"موقع الويب\" ويخضع استخدامك للموقع لهذه الشروط والأحكام ، والتي تقرها وتوافق عليها وتوافق عليها باستخدام الموقع. \r\nتتضمن هذه الشروط والأحكام سياسة الخصوصية الخاصة بنا ، والتي تتوفر على www.allochefeg.com /privacy-policy/ والتي تم دمجها بموجب هذا بالإشارة ، بالإضافة إلى شروط وأحكام المشتريات / الاشتراكات واعتبارات سلامة الغذاء مع العلم أنه سوف سيشار إلى جميع مكونات الوجبات والمنتجات الأخرى المتاحة من خلال موقع الويب ، بشكل جماعي ، باسم \" المنتجات.\r\nالرجاء قراءة هذه الشروط والأحكام بعناية قبل طلب أي منتجات منا أو الاشتراك في إحدى خدماتنا ويجب عليك طباعة نسخة من هذه الشروط والأحكام للرجوع إليها في المستقبل عند استخدام موقع الويب وستخضع لجميع القواعد والسياسات المعروضة و سوف يتم دمج هذه القواعد والسياسات بموجب هذا بالإشارة إلى هذه الشروط والأحكام و قد نقدم أيضًا مواقع ويب أخرى تحكمها شروط وأحكام مختلفة ويجوز لنا تعديل هذه الشروط والأحكام من وقت لآخر وفقًا لتقديرنا الخاص. \r\nيرجى مراجعتها بشكل دوري من خلال الاستمرار في استخدام موقع الويب لاحقًا لإتاحة نسخة معدلة من الشروط والأحكام ، فإنك تقر وتوافق على هذا التعديل ولا يمكنك إنشاء حساب أو شراء منتجاتنا أو الاشتراك في خدماتنا دون الموافقة على هذه الشروط والأحكام.\r\n\r\nمكان توفر الخدمة\r\nإن موقعنا الإلكتروني مخصص للاستخدام من قبل الأشخاص الموجودين فقط في جمهورية مصر العربية ولن نقبل أوامر من أفراد خارج جمهورية مصر العربية ومن خلال تقديم طلب عبر موقعنا فإنك تضمن ما يلي:  أنت قادر قانونيًا على الدخول في عقود ملزمة وأن يكون عمرك 18 عامًا على الأقل وأنت مقيم في جمهورية مصر العربية  وأنت تدخل إلى موقعنا على الويب من جمهورية مصر العربية.\r\n\r\nالموافقة على حفظ السجلات الإلكترونية\r\nأنت توافق على إدخال هذه الشروط والأحكام إلكترونيًا وتخزين السجلات المتعلقة بهذه الشروط والأحكام بشكل إلكتروني.\r\n\r\nالوصول إلى الموقع\r\nيمكنك الوصول إلى أجزاء من الموقع دون تسجيل ومع ذلك من أجل الوصول إلى بعض أجزاء وميزات الموقع ولإجراء عمليات شراء سيُطلب منك تسجيل حساب في الموقع وتسجيل الدخول إليه.\r\nأنت مسؤول عن الحفاظ على سرية اسم المستخدم وكلمة المرور والمعلومات الأخرى المستخدمة للتسجيل وتسجيل الدخول إلى موقع الويب وأنت مسؤول مسؤولية كاملة عن جميع الأنشطة التي تحدث بموجب كلمة المرور واسم المستخدم. \r\nيرجى إخطارنا على الفور بأي استخدام غير مصرح به لحسابك أوأي خرق آخر للأمن عن طريق الاتصال بنا على  security@allochefeg.com .\r\n\r\nوصف المنتج\r\nنبذل جهودًا معقولة لعرض ألوان منتجاتنا بأكبر قدر ممكن من الدقة ومع ذلك فإن الألوان الفعلية التي تراها تعتمد على شاشتك أو جهازك وبالتالي لا يمكننا ضمان دقة ألوان المنتجات التي تراها عند عرض موقع الويب.\r\n\r\n\r\nسياسات شحن المنتج والاشتراك والضمان والإرجاع\r\nيرجى الرجوع إلى الشروط والأحكام الخاصة بالمشتريات / الاشتراكات في أسفل هذه الصفحة للحصول على مزيد من المعلومات حول أسعار الشحن وسياسات الاسترداد والإجراءات الأخرى وكلها مدرجة هنا بالإشارة و تتضمن الشروط والأحكام الخاصة بالمشتريات / الاشتراكات أحكامًا منفصلة تتعلق بإخلاء المسؤولية عن الضمان وقيود المسؤولية.\r\nويوافق العميل في حال عدم تواجده في الموعد المحدد يتم استلامها من جار له او البواب او عنوان مجاور او يتم ارجاعه و يستلمه العميل من بنفسه من أقرب مركز توزيع او يرسل مره اخرى بعد اعادة تحديد موعد جديد بتكاليف اضافية.\r\n\r\nملكيتنا الفكرية\r\nAllo Chef  والشعارات والأسماء المرتبطة بها هي علامات تجارية أوعلامات خدمتنا. \r\nالعلامات التجارية وعلامات الخدمة والأسماء والشعارات الأخرى المستخدمة في الموقع أومن خلاله مثل العلامات التجارية أو علامات الخدمة أو الأسماء أو الشعارات المرتبطة بمؤسسات تابعة لجهات خارجية هي علامات تجارية أو علامات خدمة أو شعارات لأصحابها المعنيين.\r\nلا يتم منحك أي حق أوترخيص فيما يتعلق بأي من العلامات التجارية أو علامات الخدمة أو الشعارات السالفة الذكر.\r\nبعض المواد المتاحة على الموقع أو من خلاله هي أعمالنا (أي المحتوى الذي نمتلكه أو نؤلفه أو أنشأناه أو اشتريناه أو رخصنا له). \r\nقد تكون أعمالنا محمية بموجب حقوق النشر والعلامات التجارية وبراءات الاختراع والأسرار التجارية و / أو قوانين أخرى ونحن نحتفظ بجميع الحقوق في أعمالنا والموقع الإلكتروني ونحتفظ بها.\r\nنمنحك بموجب هذا ترخيصًا خاليًا من حقوق الملكية ومحدود وقابل للإلغاء وغير قابل للترخيص من الباطن وغير حصري للوصول إلى أعمالنا فقط لاستخدامك الشخصي فيما يتعلق باستخدام الموقع.\r\nيمكنك طباعة نسخة واحدة وتنزيل مقتطفات من أي صفحات من موقعنا الإلكتروني كمرجع شخصي لك.\r\nيجب ألا تستخدم أي جزء من مواد حقوق الطبع والنشر الخاصة بنا لأغراض تجارية دون الحصول أولاً على ترخيص للقيام بذلك منا ومن مرخصينا. \r\nلا يجوز لك بخلاف ذلك إعادة الإنتاج أو التوزيع أو التواصل مع الجمهور أو الإتاحة أو التكيف أو محتوى أرسله المستخدمون.\r\nقد تتمكن أنت والمستخدمون الآخرون للموقع من تحميل أو نشر أو إنشاء أو إتاحة أو إرسال أو مشاركة أو توصيل أو نقل (\"النشر\") البيانات أو المعلومات أو الصور أو التعليقات أو الأفكار أو أنواع المحتوى الأخرى (مجتمعة \"المحتوى\") إلى أو من خلال موقع الويب والمواقع الأخرى المرتبطة بالموقع. \r\nأنت تدرك أن كل المحتوى المنشور من قبل مستخدمي الموقع (\"محتوى المستخدم\") هو المسؤولية الوحيدة للشخص الذي نشأ هذا المحتوى منه. \r\nنحن لا نتحكم في محتوى المستخدم ولا نقدم أي ضمان على الإطلاق يتعلق بمحتوى المستخدم. \r\nعلى الرغم من أننا نراجع أحيانًا محتوى المستخدم إلا أننا لسنا ملزمين بذلك. \r\nلن نكون تحت أي ظرف من الظروف مسؤولين أو مسؤولين بأي شكل من الأشكال عن أي مطالبة تتعلق بمحتوى المستخدم.\r\nأنت تحتفظ بملكية الملكية الفكرية الواردة في محتوى المستخدم الخاص بك ومع ذلك فإنك تمنحنا ترخيصًا دائمًا خاليًا من حقوق الملكية وغير قابل للإلغاء وقابل للتحويل وقابل للترخيص من الباطن وغير حصري في جميع أنحاء العالم للاستخدام في أي وجميع الوسائط سواء كانت معروفة الآن أو تم تصميمها فيما بعد للاستخدام والاستغلال (بما في ذلك على سبيل المثال لا الحصر النسخ والتوزيع ، والعرض العام ، والتكيف ، والتواصل مع الجمهور ، و / أو الأداء العام ، بما في ذلك للأغراض التجارية أو الإعلانية) وجميع محتوى المستخدم الذي تنشره على الموقع أو من خلاله دون أي حق في المراجعة أو الموافقة من جانبك.\r\nأنت أيضًا تتنازل إلى أقصى حد يسمح به القانون عن أي وجميع الدعاوى المرفوعة ضدنا فيما يتعلق بالحقوق المعنوية في محتوى المستخدم. \r\nلن نكون مسؤولين تجاهك بأي حال من الأحوال عن أي استغلال لأي محتوى مستخدم تنشره.\r\nليس لدينا أي التزام بالسرية صريحًا أو ضمنيًا فيما يتعلق بمحتوى المستخدم الذي تنشره على الموقع أو من خلاله أو ترسله إلينا بطريقة أخرى ويحق لنا استخدام أو استغلال أو الكشف (أو اختيار عدم الاستخدام أو تستغل أو تكشف) محتوى المستخدم هذا وفقًا لتقديرنا الوحيد والمطلق دون أي التزام تجاهك على الإطلاق (على سبيل المثال(  لن يحق لك الحصول على أي تعويض أو تعويض من أي نوع منا تحت أي ظرف من الظروف.\r\nإذا كنت قاصرًا فلا يجب أن تنشر أي محتوى مستخدم ومع ذلك إذا قمت بذلك وتريد منا إزالة محتوى المستخدم من الموقع فيرجى الاتصال بنا على content@allochefeg.com .  ستحتاج إلى تزويدنا بمعلومات محددة تصف موقع محتوى المستخدم الذي تريد منا إزالته. \r\nسنبذل جهودًا معقولة لإزالة محتوى المستخدم عند تلقي طلب كافٍ ولكن لا يمكننا ضمان الإزالة الكاملة أو الشاملة لمحتوى المستخدم.\r\n\r\nالسلوك المحظور / الإقرارات والضمانات\r\nأنت تقر وتضمن أنك لن تستخدم الموقع من أجل:\r\nانتهاك أي قانون (بما في ذلك على سبيل المثال لا الحصر القوانين المتعلقة بالأضرار أو العقود أو ضوابط التصدير أو براءات الاختراع أو العلامات التجارية أو الأسرار التجارية أو حقوق النشر أو التشهير أو الفحش أو حقوق الدعاية أو غيرها من الحقوق) أو تشجيع أو تقديم تعليمات للآخرين للقيام بذلك التصرف بطريقة تؤثر سلبًا على قدرة المستخدمين الآخرين على استخدام الموقع بما في ذلك على سبيل المثال لا الحصر الانخراط في سلوك ضار أو بغيض أو مهدد أو مسيء أو تحريضي أو تخويف أو عنيف أو يشجع على العنف أو مضايقة أو مطاردة أو غازية لشخص آخر الخصوصية أو عنصريًا أوعرقيًا أوغير مرغوب فيه بأي شكل آخر نشر أو إرسال أي محتوى مستخدم نحدده وفقًا لتقديرنا الخاص :\r\n(1) غير قانوني ، ضار ، مضايق ، احتيالي ، تهديد ، تخويف ، عنيف ، تشجيع على العنف ، مسيء ، تشهيري ، تشهيري ، مبتذل ، فاحش ، بغيض أو عنصريًا أو إثنيًا أو تمييزيًا بأي شكل آخر.\r\n(2) مهينة أو ضارة بسمعة Allo Chef .\r\n(3) يضر بالأطفال بأي شكل من الأشكال.\r\n(4) يسعى إلى التمييز ضد أي فرد على أساس العرق أو الجنس أو الأصل القومي أو الميول الجنسية أو الإعاقة الجسدية أو العقلية أو على أي أساس آخر.\r\nنشر أو إرسال أي محتوى مستخدم إلينا يحتوي على إعلانات غير مرغوب فيها أو غير مصرح بها أو مواد ترويجية أو بريد عشوائي أو بريد غير مرغوب فيه أو رسائل متسلسلة أو مخططات هرمية أو أي شكل آخر من أشكال الالتماس غير المصرح به.\r\nنشر أو إرسال أي محتوى مستخدم إلينا يحتوي على مسابقات يانصيب أو مسابقات أو يانصيب أو متعلق بالمقامرة بطريقة أخرى.\r\nنشر أو إرسال أي محتوى مستخدم يحتوي على مواد محمية بحقوق الطبع والنشر أو مواد محمية بموجب قوانين الملكية الفكرية الأخرى والتي لا تمتلكها.\r\nنشر أو إرسال أي محتوى مستخدم لم تحصل عليه من جميع الأذونات والإصدارات المكتوبة اللازمة و تحريف أي حقيقة (بما في ذلك على سبيل المثال لا الحصر هويتك).\r\nنشر أو إرسال أي فيروسات برمجية أو أي رمز أو ملفات أو برامج كمبيوتر أخرى مصممة لمقاطعة أو تدمير أو تقييد وظائف أي برنامج كمبيوتر أو أجهزة أو معدات اتصالات بما في ذلك عن طريق الانخراط في أي هجوم لرفض الخدمة أو سلوك مشابه تجاوز وصولك المصرح به إلى أي جزء من الموقع جمع أو تخزين البيانات الشخصية الخاصة بأي شخص تعديل أي جزء من الموقع دون إذن الحصول على أو محاولة الوصول أو الحصول على أي محتوى أو معلومات من خلال أي وسيلة لم يتم توفيرها أو توفيرها عن قصد من خلال الموقع.\r\nاستغلال الأخطاء في التصميم والميزات غير الموثقة و/ أو الأخطاء للوصول إلى الوصول الذي لم يكن متاحًا لولا ذلك.\r\nاستخدام أي روبوت أو عنكبوت أو مكشطة أو أي وسيلة آلية أخرى للوصول إلى الموقع لأي غرض.\r\nاتخاذ أي إجراء يفرض أو قد يفرض حملاً غير معقول أو كبير بشكل غير متناسب على بنيتنا التحتية. \r\nالتدخل أو محاولة التدخل في العمل السليم للموقع أو أي أنشطة يتم إجراؤها على الموقع أو تجاوز أي تدابير قد نستخدمها لمنع أو تقييد الوصول إلى الموقع.\r\n\r\nإشعار التعدي على حق المؤلف\r\nإذا كنت تعتقد أن عملك قد تم نسخه بطريقة تشكل انتهاكًا لحقوق الطبع والنشر ، فالرجاء إرسال المعلومات التالية إلى وكيل حقوق الطبع والنشر لدينا ، المعين على هذا النحو وفقًا لقانون حقوق النشر الرقمية للألفية المسمى أدناه: \r\nوصف للعمل المحمي بحقوق الطبع والنشر الذي تدعي أنه تم انتهاكه\r\nعنوانك ورقم هاتفك وعنوان بريدك الإلكتروني\r\nوصف لمكان وجود المادة المخالفة المزعومة (إذا زودتنا بعنوان URL ، فهذا يساعدنا في تحديد موقع المحتوى بسرعة)\r\nإفادة من جانبك بأن لديك اعتقاد حسن النية بأن الاستخدام المتنازع عليه غير مصرح به من قبل مالك حقوق النشر أو وكيله أو القانون\r\nتوقيع إلكتروني أو مادي للشخص المخول بالتصرف نيابة عن مالك حقوق الطبع والنشر و تصريح من جانبك تحت طائلة عقوبة الحنث باليمين بأن المعلومات الواردة أعلاه في إشعارك دقيقة وأنك مالك حقوق الطبع والنشر أو مخول بالتصرف نيابة عن مالك حقوق النشر.\r\nللحصول على مساعدة خدمة العملاء ، يرجى الاتصال بالرقم +20233822288  أو الذهاب هنا :\r\nلإشعارات حقوق الطبع والنشر فقط وكيل حقوق النشر: \r\nIhab Dalati \\ Allo Chef - WhatsApp:+201555505031 أو بريد إلكتروني :   legal@allochefeg.com\r\nملاحظات : \r\nلن يعالج وكيل حقوق الطبع والنشر الاستفسارات غير المتعلقة بحقوق النشر. \r\nلا تحرّف عن قصد ماديًا أن المواد تمثل انتهاكًا. \r\nالقيام بذلك قد يعرضك للمسؤولية بموجب قانون حقوق النشر.\r\n\r\nتقديم الشكاوى\r\nإذا كنت تعتقد أن حقوقك أو حقوق طرف ثالث يتم انتهاكها بأي شكل من الأشكال بواسطة أي محتوى يمكن الوصول إليه على موقع الويب أو من خلاله فيرجى الاتصال بنا على content@allochefeg.com عند الاقتضاء و سنعمل على منع حدوث أي نشاط غير قانوني على الموقع الإلكتروني أو من خلاله.\r\n\r\nمواقع الطرف الثالث\r\nيحتوي الموقع على روابط لمواقع أطراف ثالثة وإعلانات لمنتجات وخدمات الطرف الثالث. \r\nإذا كنت تستخدم هذه الروابط فسوف تغادر موقع Allo Chef هذه الأطراف الثالثة ومواقعها الإلكترونية ليست تحت سيطرتنا. \r\nنحن لا نفحص أو نقيم هذه المواقع ولسنا مسؤولين عن محتواها أو تشغيلها. \r\nمن خلال توفير روابط لهذه المواقع فإننا لا نوافق أو نضمن أو نصادق أو نقدم أي تمثيل عنها أو عن مالكيها أو مشغليها ولا نتحمل أي مسؤولية أو مسؤولية ذات صلة. \r\nيجب أن تمارس حكمك الخاص في تقييم واستخدام هذه المواقع. \r\nعندما تقوم بالارتباط بهذه المواقع فإنك تصبح خاضعًا لشروط وأحكام الاستخدام وسياسات الخصوصية الخاصة بها. \r\nنحن لا نؤيد هذه المواقع ولا تنطبق عليها سياسة الخصوصية والشروط والأحكام الخاصة بنا.\r\nأنت تعفينا صراحةً من أي وجميع المسؤوليات الناشئة عن استخدامك لأي موقع ويب أو خدمة أو محتوى تابع لجهة خارجية. \r\nإن تعاملاتك أو مشاركتك في العروض الترويجية للمعلنين الموجودة على مواقع الأطراف الثالثة بما في ذلك الدفع أو تسليم البضائع وأي شروط أخرى بما في ذلك على سبيل المثال لا الحصر الضمانات هي فقط بينك وبين هؤلاء المعلنين. \r\nأنت توافق على وجه التحديد على أننا لسنا مسؤولين عن أي خسارة أو ضرر من أي نوع ينتج أو ينشأ عن تعاملاتك مع مواقع الطرف الثالث و / أو المعلنين.\r\n\r\nإطلاق سراح\r\nإذا كان لديك نزاع مع واحد أو أكثر من مستخدمي الموقع أو مع أي طرف يقدم إعلانات أو خدمات طرف ثالث على أو من خلال موقع الويب أو مع أي طرف يوفر موقعًا إلكترونيًا مرتبطًا بالموقع فإنك تخلينا أي وجميع المطالبات والطلبات والأضرار (عرضية ، غير مباشرة ، عقابية ، قانونية ، نموذجية ، توقع ، خاصة ، أو تبعية) من كل نوع وطبيعتها معروفة وغير معروفة ناشئة عن هذا النزاع أو مرتبطة به بأي شكل من الأشكال. \r\n\r\nالتعويض\r\nسوف تعوضنا عن أي وجميع مطالبات الأطراف الثالثة ، والخسائر ، والأضرار ، والمسؤوليات ، والتكاليف ، والنفقات (بما في ذلك أتعاب المحاماة المعقولة ونفقاتها) ، المتعلقة أو الناشئة بموجب أو الناشئة عن العلاقة بينك وبيننا الموضحة. \r\nفي هذه الشروط والأحكام بما في ذلك أي خرق للإقرارات والضمانات الواردة هنا. أنت توافق بموجب هذا على أن لنا الحق والالتزام الوحيد في التحكم في الدفاع القانوني ضد أي من هذه المطالبات أو المطالب أو التقاضي بما في ذلك الحق في اختيار محام من اختيارنا والتنازل عن أي مطالبات أو مطالب أو دعاوى أو تسوية هذه المطالبات.\r\n\r\nإخلاء المسؤولية\r\nأنت تستخدم موقع الويب على مسؤوليتك الشخصية. \r\nنحن نقدم الموقع \"كما هو\" و \"كما هو متاح\". \r\nنحن نخلي مسؤوليتنا صراحة إلى الحد الأقصى الذي يسمح به القانون عن جميع الضمانات من أي نوع فيما يتعلق بالموقع الإلكتروني والمحتوى الذي تم الحصول عليه من خلال الموقع ، سواء أكان صريحًا أم ضمنيًا ، بما في ذلك ، على سبيل المثال لا الحصر ، الضمانات الضمنية وعدم الانتهاك. \r\nتتحمل وحدك المسؤولية عن أي ضرر يلحق بنظام الكمبيوتر أو فقدان البيانات الناتج عن استخدامك للموقع الإلكتروني ولا نقدم أي ضمان بأن :\r\n(1) الموقع الإلكتروني سيلبي متطلباتك \r\n(2) سيكون الموقع الإلكتروني غير منقطع أو في الوقت المناسب أو آمنًا أو خاليًا من الأخطاء \r\n(3) أن تكون نتائج الموقع دقيقة أو موثوقة \r\n(4) جودة أي محتوى تحصل عليه من خلال الموقع الإلكتروني سيلبي توقعاتك \r\n(5) أو سيكون موقع الويب أو خوادمنا أو الاتصالات المرسلة منا خالية من الفيروسات أو المكونات الضارة الأخرى.\r\n(6) لن تُنشئ أي معلومات تحصل عليها منا أو من خلال الموقع الإلكتروني أي ضمان غير منصوص عليه صراحةً في هذه الشروط.\r\n\r\nتحديد المسؤولية\r\nإلى الحد الذي يسمح به القانون ، لن نكون مسؤولين أو مسؤولين تجاهك عن أي خسارة أو ضرر من أي نوع حدث نتيجة لما يلي :\r\n•	التأخير أو الرفض أو الإزالة لأي محتوى أو كله في أي وقت لأي سبب أو بدون سبب مهما كان لك أو بدون إخطارك\r\n•	تعديل الموقع الإلكتروني (أو أي جزء منه) أو إيقافه مؤقتًا أو نهائيًا بإشعارك أو بدونه لأي سبب أو بدونه\r\n•	الإنهاء الفوري لوصولك إلى الموقع الإلكتروني لأي سبب أو بدون سبب على الإطلاق وبإخطارك أو بدونه\r\n•	دقة أو فائدة أو توفر أي معلومات يتم نشرها على الموقع الإلكتروني أو من خلاله ؛ أو أي خسارة أو ضرر من أي نوع تتكبده كنتيجة للتفاعلات التي أجريتها مع أطراف ثالثة تم العثور عليها على الموقع الإلكتروني أو من خلاله.\r\nلن نكون مسؤولين بأي حال من الأحوال تجاهك عن أي أضرار عرضية أو غير مباشرة أو عقابية أو قانونية أو نموذجية أو توقعية أو خاصة أو تبعية أياً كانت (بما في ذلك الأضرار الناجمة عن فقدان الأرباح أو فقدان السمعة أو سوء النية أو عدم الالتزام الخسارة المالية) في الارتباط مع أي مطالبة أو أي خسارة أو ضرر أو دعوى أو دعوى أو إجراء آخر يتعلق أو ينشأ بموجب أو خارج الشروط والأحكام ، حتى إذا تم إبلاغنا باحتمالية حدوث مثل هذه الأضرار تم تأسيسه بموجب عقد أو انتهاك لحقوق الملكية الفكرية أو ضرر أو إهمال أو أسباب أخرى. أنت توافق على عدم تقديم أي دعوى أو إجراءات تتعارض مع قيود المسؤولية السابقة.\r\n\r\nالقيود القضائية\r\nقد لا تسمح بعض السلطات القضائية بقيود المسؤولية أو التنازلات عنها. \r\nإذا قررت أي محكمة أن القانون المطبق في مثل هذا الاختصاص القضائي ، فستقتصر مسؤوليتنا على الحد الأقصى الذي يسمح به القانون.\r\nحل النزاعات تحديد الوقت لتقديم المطالبة ؛ التحكيم في المطالبات التنازل عن الدعوى الجماعية يجب تقديم أي دعوى أو سبب دعوى يتعلق أو ينشأ بموجب أو نتيجة استخدامك للموقع ، بما في ذلك أي مبيعات أو اشتراكات تم إجراؤها من خلال هذا الموقع ، في غضون عام واحد بعد ظهور هذه المطالبة أو سبب الدعوى أو رفعها.\r\nأي نزاع يتم تقديمه إلى التحكيم بموجب هذه الشروط والأحكام سيخضع لقوانين دولة إقامتك بغض النظر عن اختيارها (أو تعارضها) لقواعد القوانين.\r\nالاختصاص القضائي ومكان أي نزاع سيكون في ( القاهرة ) ، القاهرة الجديدة. \r\nيخضع كل طرف للاختصاص القضائي الشخصي والمكان في هذا المنتدى لأي وجميع الأغراض. \r\nإذا كانت هذه الفقرة ستجعل أي فقرة أو شرط آخر من هذه الشروط والأحكام غير قابل للتنفيذ ، فسيكون الاختصاص القضائي والمكان بدلاً من ذلك في بلد إقامتك.\r\nيجوز لأي من الطرفين السعي لإنفاذ هذا الحكم في أي محكمة ذات اختصاص قضائي.\r\nيجب على المحكم تحديد أي وجميع الاعتراضات على تحكيم الدعوى. \r\nسيكون قرار التحكيم واجب التنفيذ قضائيًا. \r\nيجوز لأي محكمة مختصة ، وبناءً على طلبها ، أن تدخل حكمًا في قرار التحكيم. \r\nيجوز لأي من الطرفين طلب تأكيد (حكم على قرار التحكيم) و / أو التنفيذ في أي محكمة ذات اختصاص قضائي.\r\nتتخاصم أنت و Allo Chef عن الحق في تقديم أي مطالبة يغطيها بند حل النزاع هذا كإجراء عام جماعي أو موحد أو تمثيلي أو جماعي أو خاص ، أو للمشاركة في محامي جماعي أو موحد أو تمثيلي أو جماعي أو خاص إجراء عام بخصوص أي مطالبة يغطيها حكم حل النزاعات هذا يقدمها أي شخص آخر.\r\nبصرف النظر عن أي حكم في قواعد تحكيم المستهلك على عكس ذلك ، لا يجوز للمحكم أن يتمتع بالسلطة أو أي اختصاص قضائي لسماع التحكيم كإجراء عام جماعي أو موحد أو تمثيلي أو خاص أو لدمج الدعاوى أو الانضمام إليها من أشخاص مختلفين في إجراء واحد. إذا تم البدء في تحكيم الدعوى العامة لفئة أو موحدة أو تمثيلية أو جماعية أو خاصة على الرغم من الحظر المذكور أعلاه وتم تحديده نهائيًا من قبل المحكم (أو محكمة مختصة) أن التنازل المحدد هنا غير قابل للتنفيذ ، ثم سيكون مجمل إجراء تسوية النزاع هذا لاغيًا وباطلاً.\r\nعلى الرغم من إجراءات التحكيم الملزمة السابقة ، يجوز لأي من الطرفين رفع دعوى فردية في محكمة الدعاوى الصغيرة (شريطة أن تكون الدعوى مؤهلة بخلاف ذلك لهذا البرنامج) كبديل لمتابعة التحكيم.\r\nيمكنك اختيار الانسحاب (استبعاد نفسك) من إجراء التحكيم النهائي والملزم والتنازل عن الدعوى الجماعية المحدد في هذه الشروط والأحكام عن طريق القيام بما يلي. \r\nفي غضون 15 يومًا من إنشاء حساب Allo Chef الخاص بك ، يجب عليك إرسال خطاب إلى Allo Chef ،  Mr.Ihab Dalati \\ Attn: Legal Department\r\nعلى الجيزة – الهرم – 1 ش استوديو مصر و تحدد : (1) اسمك (2) اسم عضو الحساب الخاص بك (3) عنوانك البريدي (4) و طلبك للاستبعاد من إجراء التحكيم النهائي والملزم والتنازل عن الدعوى الجماعية المحددة في هذه الشروط والأحكام. يجب أن تظل جميع الشروط والأحكام الأخرى سارية عليك وعلى حسابك ، بما في ذلك شرط المشاركة في الوساطة قبل النزاع. لا يلزمك إرسال الخطاب عن طريق البريد المؤكد أو طلب إيصال الإرجاع ، ولكن يوصى بذلك.\r\n\r\nإنهاء الخدمة\r\nأنت توافق على أنه يجوز لـ Allo Chef ، دون إشعار مسبق ، إنهاء حسابك على الفور أو تقييد وصولك إليه أو تعليقه بناءً على أي مما يلي: \r\n(أ) خرق أو انتهاك هذه الشروط والأحكام\r\n(ب) بناء على طلب من جهات إنفاذ القانون \r\n(ج) المشكلات أو المشكلات الفنية أو الأمنية غير المتوقعة \r\n(د) فترات طويلة من عدم النشاط\r\n(هـ) نشاط احتيالي أو خادع أو غير قانوني أو أي نشاط آخر يعتقد Allo Chef أنه ضار بهذا الموقع أو بمصالحه التجارية. \r\nأنت توافق على أن الإنهاء و / أو الحد من الوصول و / أو التعليق سيتم وفقًا لتقدير Allo Chef الوحيد وأن Allo Chef لن يكون مسؤولاً تجاهك أو تجاه أي طرف ثالث عن إنهاء حسابك و / أو تقييد الوصول إليه و / أو تعليقه.\r\nعند الإنهاء ، لن يكون لديك الحق في الوصول إلى حسابك أو محتوى المستخدم الخاص بك. لن نكون ملزمين بمساعدتك في ترحيل بياناتك أو محتوى المستخدم الخاص بك وقد لا نحتفظ بأي نسخة احتياطية لأي من محتوى المستخدم الخاص بك. لن نكون مسؤولين عن حذف محتوى المستخدم الخاص بك.\r\n\r\n\r\n\r\nمتنوع\r\nتشكل هذه الشروط والأحكام الاتفاقية الكاملة بينك وبين Allo Chef ، وتحكم استخدامك للموقع والمشتريات والاشتراكات التي تتم فيه.\r\nتحل هذه الشروط والأحكام محل أي اتفاقيات سابقة بينك وبيننا فيما يتعلق بالموقع الإلكتروني والمشتريات التي تتم عليه.\r\nيقر كل منا بأنه عند الدخول في هذه الشروط والأحكام ، لا يعتمد أي منا على أي تعهد أو ضمان (سواء تم تقديمه عن طريق البراءة أو الإهمال) غير المنصوص عليه في هذه الشروط والأحكام أو المستندات المشار إليها فيها.\r\nهذه الشروط والأحكام والحقوق والمزايا والالتزامات الواردة هنا قابلة للتنازل عنها بالكامل من قبلنا وستكون ملزمة ونافذة لصالح خلفائنا والمتنازل لهم.\r\nلن يُعتبر أي طرف ، ولا أي من محامي الأطراف المعنيين ، هو المسؤول عن صياغة هذه الشروط والأحكام لأغراض تفسير أي حكم في هذه الاتفاقية في أي إجراء قضائي أو أي إجراء آخر قد ينشأ بين الطرفين.\r\nباستثناء ما هو منصوص عليه صراحةً في هذه الشروط والأحكام ، لن يكون هناك أي طرف ثالث مستفيد من هذه الشروط والأحكام. لغرض التوضيح ، فإن ممثلي Allo Chef ، والمسؤولين ، والمساهمين ، والشركات التابعة ، والشركات التابعة ، والموظفين ، والوكلاء هم من الأطراف الخارجية المقصودة.\r\nلا توجد علاقة بين الوكالات أو الشراكة أو المشروع المشترك أو الموظف- صاحب العمل أو مانح الامتياز-صاحب الامتياز أو يتم إنشاؤها بموجب هذه الشروط والأحكام.\r\nأي إخفاق من جانبنا في ممارسة أو إنفاذ أي حق أو حكم من هذه الشروط والأحكام لن يشكل تنازلاً عن هذا الحق أو الحكم. يجب أن يكون أي تنازل عن أي حق أو حكم من هذه الشروط والأحكام كتابيًا.\r\nإذا وجدت محكمة ذات اختصاص قضائي أن أي حكم من هذه الشروط والأحكام غير صالح ، فيجب على المحكمة مع ذلك أن تسعى إلى تفعيل نوايا الأطراف على النحو المبين في الحكم ، وتظل الأحكام الأخرى لهذه الشروط والأحكام في القوة والتأثير الكامل.\r\nما لم يُنص على خلاف ذلك صراحةً في هذا المستند ، فإن قوانين جمهورية مصر العربية ، بغض النظر عن مبادئ تنازع القوانين ، ستحكم هذه الشروط والأحكام ، واستخدامك للموقع ، وجميع الأمور المتعلقة للوصول إلى و / أو استخدام الموقع ، بما في ذلك جميع النزاعات بينك وبيننا. أنت توافق أيضًا على أن موقع الويب سيعتبر مقره الوحيد في القاهرة .\r\nيعني \"التضمين\" و \"يشمل\" و \"التضمين\" و \"التضمين\" و \"يشمل\" و \"بما في ذلك\" هنا بما في ذلك على سبيل المثال لا الحصر.\r\nيجب إرسال جميع الإشعارات التي قدمتها إلينا إلى Ward Al Caham LLC( Allo Chef ) على support@Allochefeg.com  وقد نرسل إليك إشعارًا إما على عنوان البريد الإلكتروني أو العنوان البريدي الذي تقدمه لنا عند تقديم طلب ، أو بأي من الطرق المحددة هنا. سيتم اعتبار الإشعار مستلمًا ويتم تقديمه بشكل صحيح فور نشره على موقعنا الإلكتروني ، أو بعد 24 ساعة من إرسال بريد إلكتروني ، أو في تاريخ نشر أي خطاب. \r\nعند إثبات خدمة أي إشعار ، سيكون كافياً إثبات ، في حالة وجود خطاب ، أن هذا الخطاب قد تم توجيهه وختمه ووضعه في البريد بشكل صحيح ، وفي حالة البريد الإلكتروني ، تم إرسال البريد إلى عنوان البريد الإلكتروني المحدد للمرسل إليه.\r\n\r\nشروط وأحكام المشتريات / الاشتراكات\r\nالاشتراكات\r\nأنت تقر وتوافق على أنه عند اشتراكك في المحفظة ، لا يمكن استرداد أي مبالغ الا من خلال طلب شراء بواسطتك. \r\nمن خلال التسجيل للحصول على اشتراك ، فإنك توافق على قبول المسؤولية عن جميع الرسوم المتكررة قبل الإلغاء.\r\nيمكنك تعديل اشتراكك (على سبيل المثال ، عدد الوجبات) أو تغيير طريقة الدفع أو إلغاء حسابك في أي وقت عبر الإنترنت (أثناء تسجيل الدخول إلى حسابك) أو عن طريق إرسال طلب بالبريد الإلكتروني إلى support@homechef.com. لن تؤثر هذه الطلبات على الرسوم المقدمة قبل أن يتمكن Home Chef من التصرف بشكل معقول بناءً على هذه الطلبات. \r\nيعتبر طلبك نهائيًا بحلول الساعة 12:00 مساءً بالتوقيت المركزي القياسي يوم الخميس قبل التسليم في الأسبوع التالي (\"الموعد النهائي\") . \r\nنحتفظ بالحق وفقًا لتقديرنا المطلق في عدم تجديد اشتراكك في أي وقت دون إبداء أي أسباب لقرارنا.\r\nبعد تقديم طلبك الأول من خلال نموذج الطلب القياسي الخاص بنا على هذا الموقع ، سترى في ملف تعريف حسابك عبر الإنترنت المبلغ الذي تم تحصيله منك مقابل هذا الطلب.\r\nالقسائم وبطاقات الهدايا\r\nقد نقدم بطاقات هدايا ، وعروض ترويجية ، وائتمانات إحالة وأنواع أخرى من القسائم (\"القسيمة\") التي يجب تنشيطها عن طريق التطبيق عبر الإنترنت حتى يبدأ صاحبها في تسليم المنتجات من خلال الخدمة. \r\nإذا تم الدفع مقابل الإيصال ، فيُعتبر أنه قد تم بيعه في وقت السداد. \r\nستصبح جميع هذه الشروط والأحكام قابلة للتطبيق فيما بيننا وبين صاحب القسيمة (\"المالك\") عندما يسترد المالك القسيمة من خلال التقدم بطلب لبدء الخدمة.\r\nيجوز استخدام القسيمة مرة واحدة فقط من قبل صاحبها ولا يجوز نسخها أو إعادة إنتاجها أو توزيعها أو نقلها أو بيعها أو نشرها بشكل مباشر أو غير مباشر بأي شكل أو تخزينها في نظام استرداد البيانات دون الحصول على موافقة كتابية مسبقة منا.\r\nلا توجد قيمة نقدية لأي خصم أو رصيد إحالة يتم تلقيه من خلال عرض ترويجي. \r\nنحتفظ بالحق في سحب أو إلغاء أي قسيمة (بخلاف بطاقة الهدايا المدفوعة) لأي سبب في أي وقت.\r\nلا يجوز استبدال القسائم إلا من خلال موقعنا الإلكتروني وليس من خلال أي موقع ويب أو وسيلة اتصال أخرى. لاستخدام قسيمتك ، سيُطلب منك إدخال رمزها الفريد عند الخروج عبر الإنترنت ، وسيعتبر استخدام هذا الرمز تأكيدًا لموافقتك على هذه الشروط والأحكام وأي شروط خاصة مرفقة بالقسيمة.\r\nتخضع القسائم للشروط والأحكام الخاصة بها. ما لم يُنص على خلاف ذلك صراحةً ، لا يجوز دمج جميع الخصومات الترويجية مع أي عروض أخرى ، وهي صالحة للعملاء الجدد فقط ، وتقتصر على عرض واحد لكل عنوان أسرة.\r\n\r\nالإحالات\r\nأنت توافق على مشاركة رابط إحالة Allo Chef الخاص بك مع اتصالاتك الشخصية فقط عبر البريد الإلكتروني ، وحسابات الوسائط الاجتماعية الخاصة بك ، والمدونات الشخصية حيث تكون أنت المالك الأساسي للمحتوى. لا يُسمح بالتوزيع العام على المواقع التي لا تكون فيها مالك المحتوى الأساسي ، مثل صفحات وسائل التواصل الاجتماعي ومواقع القسائم الخاصة بـ Allo Chef. نحتفظ بالحق في تعليق حسابك و / أو إلغاء أي وجميع أرصدة الإحالة في أي وقت إذا كنا نعتقد أن أرصدة قد تم الحصول عليها بشكل غير لائق. \r\nسيتم تطبيق الرصيد تلقائيًا على عمليات التسليم المستقبلية ويجب استخدامه في غضون 90 يومًا من الإصدار.\r\n\r\nالمخاطرة والملكية\r\nبمجرد تسليم المنتجات إليك ، تنتقل الملكية وخطر الخسارة إليك. \r\nبعد التسليم ، أنت ، وليس Allo  Chef ، مسؤولان وحدك عن غسل المنتجات وإعدادها وتخزينها وطهيها بشكل صحيح وآمن. \r\nمن خلال طلب أي من منتجاتنا ، فإنك توافق على استخدام منتجاتنا على مسؤوليتك الخاصة.\r\n\r\nالسعر والدفع\r\nستكون أسعار منتجاتنا والتسليم ، إن وجدت ، على النحو المبين على هذا الموقع من وقت لآخر ، باستثناء حالات الخطأ الواضح. \r\nسيتم تضمين ضرائب المبيعات المطبقة عند الخروج.\r\nقد تتغير أسعارنا من وقت لآخر ، ولكن التغييرات ستنطبق فقط على الطلبات التي تم تأكيدها بعد ذكر التغييرات على موقعنا.\r\nيجب أن يتم الدفع عن طريق بطاقة الائتمان أو الخصم. \r\nنقبل بطاقات أمريكان إكسبريس وفيزا وماستر كارد. \r\nنحتفظ بالحق في تغيير طرق الدفع المتاحة في أي وقت. \r\nعلى الرغم من أننا نبذل جهودًا معقولة لتوفير معلومات تسعير دقيقة ووصف المنتج ، فقد تحدث أخطاء في التسعير أو أخطاء مطبعية أو أخطاء تتعلق بتوافر المنتج. \r\nنحن نحتفظ بالحق في تصحيح مثل هذه الأخطاء.\r\nلا يمكننا ضمان أن المعلومات المعروضة على الموقع دقيقة بنسبة 100٪. \r\nإذا تم إدراج منتج بسعر غير صحيح أو كان وصف المنتج غير دقيق ، فيحق لنا ، وفقًا لتقديرنا الخاص ، رفض أي طلب أو إلغاء أي طلبات مقدمة لهذا المنتج. \r\nفي هذه الظروف ، إذا تم الخصم من بطاقتك الائتمانية بالفعل ، فسنصدر رصيدًا لبطاقتك الائتمانية في غضون فترة زمنية معقولة تجاريًا.\r\n\r\nقيود الطلب\r\nنحتفظ بالحق في الحد ، وفقًا لتقديرنا الخاص ، من كميات أي منتج يمكن شراؤه على أساس كل شخص أو لكل طلب.\r\n\r\nسياسة الاسترداد الخاصة بنا\r\nبعد قبولك تسليم منتج منا ، إذا لم تكن راضيًا عن المنتج بنسبة 100٪ (لأنه معيب أو غير ذلك) ، يمكنك طلب رصيد Allo Chef قابل للاسترداد من خلال حسابك لشراء منتج ذي قيمة متساوية في المستقبل.\r\n(\"ائتمان\") أو استردادها في غضون سبعة أيام من التسليم عن طريق إرسال بريد إلكتروني إلى support@allochefeg.com . \r\nإذا كان جزء من المنتج معيبًا ، فإننا نحتفظ بالحق في أن نقرر وفقًا لتقديرنا ما إذا كنا سنوفر لك : \r\n(أ) رصيدًا أو استردادًا بمبلغ مساوٍ لقيمة الجزء (الأجزاء) المعيبة.\r\n(ب) أ ائتمان أو استرداد كامل بمبلغ مساوٍ للقيمة الكاملة للمنتج. \r\nلا ينطبق خيار الاسترداد الكامل على الطلبات التي يزيد حجمها عن 100 جنيه ونحتفظ بالحق في رفض الطلبات التي تعتبر احتيالية.\r\nإذا رفضت تسليم منتج منا لأنك تخطيت أو أوقفت مؤقتًا أو ألغيت الطلب قبل الموعد النهائي لهذا الطلب ، وكنت قادرًا على تقديم دليل موثق على هذا التخطي أو الإيقاف المؤقت أو الإلغاء (على سبيل المثال ، بريد إلكتروني مختوم زمنيًا ) ، سنقوم بمعالجة رصيد أو استرداد كامل (بما في ذلك أي رسوم تسليم مطبقة) في أقرب وقت ممكن عمليًا ، وفي أي حال ، في غضون 30 يومًا من طلب الإلغاء.\r\nإذا رفضت تسليم منتج منا لأي سبب آخر ، فسنخطرك في غضون فترة زمنية معقولة بما إذا كان يحق لك الحصول على ائتمان أو استرداد المبلغ (وإذا كان الأمر كذلك ، المبلغ) عبر الهاتف أو البريد الإلكتروني. \r\nإذا قررنا أنه يحق لك الحصول على ائتمان أو استرداد ، فسنقوم بمعالجة هذا الائتمان أو رد الأموال في غضون 30 يومًا من إبلاغك بقرارنا.\r\nعادةً ما نوفر المبالغ المستردة باستخدام نفس الطريقة التي استخدمتها للدفع مقابل الشراء.\r\n\r\nضمان المنتج المحدود ؛ إخلاء المسؤولية عن المنتج وتحديد المسؤولية\r\nنضمن لك أن أي منتج تم شراؤه منا من خلال هذا الموقع الإلكتروني سوف يتوافق مع وصفه عند التسليم ، وأن يكون ذا جودة مرضية ، ويكون مناسبًا بشكل معقول لجميع الأغراض التي يتم توفير المنتجات من هذا النوع بشكل عام. \r\nإذا كنت تشعر أننا لم نلبي الضمان في الجملة السابقة ، فيمكنك طلب استرداد الأموال وفقًا لسياسة الاسترداد الخاصة بنا ، كما هو موضح أعلاه.\r\nباستثناء ما هو منصوص عليه صراحةً في الفقرة السابقة ، فإننا بموجب هذا نخلي مسؤوليتنا ، إلى أقصى حد يسمح به القانون المعمول به ، من جميع الضمانات ، الصريحة أو الضمنية ، بما في ذلك على سبيل المثال لا الحصر الضمانات الضمنية للمسألة والصلاحية. إلى أقصى حد يسمح به القانون المعمول به ، لن نكون مسؤولين بأي حال من الأحوال عن أي أضرار مباشرة أو غير مباشرة أو عرضية أو خاصة أو عقابية أو تبعية من أي نوع تنشأ عن المنتجات.\r\nإلى أقصى حد يسمح به القانون المعمول به ، لن يتجاوز الحد الأقصى لمسؤوليتنا الإجمالية الناشئة عن المنتجات أو موقع الويب هذا سعر شراء المنتجات. \r\nسيشكل هذا مسؤوليتنا الفردية ، إن وجدت ، بغض النظر عن شكل الدعوى ، سواء كان ذلك قائمًا على العقد أو الضرر أو أي نظرية أخرى قانونية أو قابلة للإنصاف.\r\n\r\n\r\nالأحداث الخارجة عن سيطرتنا\r\nلن نكون مسؤولين أو مسؤولين عن أي فشل في الأداء أو عن أي تأخير في أداء أي من التزاماتنا بموجب أمر ناجم عن أحداث خارجة عن سيطرتنا المعقولة (\"حدث قوة قاهرة\") .\r\nيتضمن حدث القوة القاهرة أي فعل أو حدث أو عدم حدوث أو إغفال أو حادث خارج عن سيطرتنا المعقولة ويتضمن على وجه الخصوص (على سبيل المثال لا الحصر) ما يلي:\r\nالإضرابات أو الإغلاق أو الإضرابات الصناعية الأخرى\r\nالاضطرابات المدنية أو الشغب أو الغزو أو الهجوم الإرهابي أو التهديد بهجوم إرهابي أو الحرب (سواء تم الإعلان عنها أم لا) أو التهديد أو التحضير للحرب\r\nحريق أو انفجار أو عاصفة أو فيضان أو زلزال أو هبوط أو وباء أو كارثة طبيعية أخرى\r\nاستحالة استخدام السكك الحديدية أو الشحن أو الطائرات أو النقل بالسيارات أو غيرها من وسائل النقل العام أو الخاص\r\nاستحالة استخدام شبكات الاتصالات العامة أو الخاصة والأعمال والمراسيم والتشريعات واللوائح أو القيود الخاصة بأي حكومة.\r\nيعتبر أداؤنا بموجب أي أمر معلقًا للفترة التي تستمر فيها أحداث القوة القاهرة ، وسيكون لدينا تمديد للوقت للأداء طوال تلك الفترة. سنبذل جهودنا المعقولة لإنهاء حدث القوة القاهرة أو لإيجاد حل يمكن من خلاله تنفيذ التزاماتنا بموجب الأمر على الرغم من حدث القوة القاهرة.\r\n\r\nالتوفر والتسليم\r\nسيتم الوفاء بطلبك بحلول تاريخ التسليم المنصوص عليه في التأكيد أو ، في حالة عدم ذكر تاريخ التسليم ، في غضون 30 يومًا من تاريخ التأكيد ، في غياب وقوع حدث قوة قاهرة. \r\nإذا كان هناك حدث قوة قاهرة ، فإننا لسنا مسؤولين عن تكلفة أي عمليات تسليم مخترقة أو فاشلة ؛ ومع ذلك ، فإننا نحتفظ بالحق في رد الأموال لك مقابل كل أو جزء من أي عمليات تسليم مخترقة أو فاشلة على النحو الذي نراه مناسبًا.\r\n\r\nاعتبارات سلامة الغذاء\r\nأنت مسؤول عن التعامل الآمن مع جميع المنتجات المتاحة من خلال مواقع Allo Chef أو تطبيقات الهاتف المحمول أو المدونات والوسائط الأخرى (\"Allo Chef media  )عند التسليم. \r\nنوصي بفحص جميع المنتجات التي تتلقاها منا على الفور بحثًا عن أي تلف أو مشاكل أخرى ، ولتحديد مدى نضارتها عند التسليم. يقوم Allo Chef بتعبئة جميع حاويات الشحن ببطانات معزولة وعبوات هلامية في محاولة لضمان الاحتفاظ بالمنتجات في بيئة مبردة وباردة أثناء النقل ، ولكن لا يمكنها ضمان أن المناولة أثناء التسليم قد لا تؤدي إلى تغيير المنتج أو إتلاف حاوية الشحن أو محتوياتها. لذلك ، عند استلام صندوق Allo Chef الخاص بك ، يجب عليك دائمًا فحص التسليم الخاص بك على الفور للتأكد من وصول مكونات الوجبة في حالة باردة ومبردة ، وحاوية الشحن ومحتوياتها غير متضررة بشكل واضح. \r\nنوصي باستخدام مقياس حرارة للطعام للتأكد من أن درجات حرارة المنتج داخل الحاوية لأي لحوم ودواجن ومأكولات بحرية ومنتجات ألبان ومنتجات مقطعة 40 درجة فهرنهايت أو أقل. \r\nفي حالة احتمال أن تكون اللحوم والدواجن والمأكولات البحرية ومنتجات الألبان و / أو المنتجات المقطوعة أعلى من 40 درجة فهرنهايت ، أو إذا كان لديك أي سبب آخر للاعتقاد بأن أي منتج آخر في التسليم الخاص بك غير مناسب للاستهلاك ، على الفور تواصل معنا على support@allochefeg.com ثم تجاهل العنصر.\r\nللحفاظ على جودة المنتجات وسلامتها ، نوصيك فور التسليم ، بتبريد جميع المنتجات القابلة للتلف عند التسليم واتباع جميع إرشادات وزارة الزراعة المصرية (\"وزارة الزراعة المصرية\") بشأن سلامة الأغذية للتخزين المبرد / المجمد والتعامل الآمن مع الأغذية . \r\nنوصي باتباع جميع تعليمات الطهي على النحو المبين في بطاقات الوصفات والتحقق من أن درجات حرارة الطهي لجميع اللحوم والدواجن والمأكولات البحرية والعناصر الأخرى القابلة للتطبيق تلبي الحد الأدنى من إرشادات الطبخ الداخلية لوزارة الزراعة المصرية باستخدام مقياس حرارة الطعام. \r\nنوصي أيضًا بغسل جميع المنتجات الطازجة تحت الماء الجاري قبل استخدامها. قد يؤدي عدم اتباع ممارسات التعامل الآمن مع الطعام وتوصيات درجة الحرارة إلى زيادة خطر الإصابة بالأمراض المنقولة عن طريق الأغذية. بالإضافة إلى ذلك ، يجب على النساء الحوامل والأطفال الصغار وكبار السن والأفراد الذين يعانون من ضعف في جهاز المناعة اتباع توصيات إدارة الغذاء والدواء المصرية بشأن استهلاك الطعام للفئات المعرضة للخطر.\r\nتقوم جميع مرافق الإنتاج في Allo Chef بتخزين وتقسيم وتوزيع المكونات التي تحتوي على ثمانية (8) مسببات الحساسية الغذائية الرئيسية على النحو الذي تحدده إدارة الغذاء والدواء المصرية (\"Egyptian Food Safety Authority \") (الحليب والقمح والبيض وفول الصويا والأسماك والمحار ، الفول السوداني والمكسرات). \r\nبينما يتخذ Allo Chef الاحتياطات لتقليل مخاطر التلوث المتبادل بين المكونات والمنتجات الغذائية ، فقد يحدث التلوث المتبادل عن غير قصد أثناء الإنتاج والعبور مما قد يتسبب في احتواء الوجبات أو المنتجات الأخرى المقدمة فيما يتعلق بخدمة Allo Chef على بعض أو كل تلك المواد المسببة للحساسية. البيض والأسماك والمحار وفول الصويا من المواد المسببة للحساسية التي توجد بشكل شائع في العديد من المكونات ، وخاصة بعض الصلصات التي يمكن استخدامها في وصفات Allo Chef (صلصة السمك وصلصة Worcestershire وما إلى ذلك). \r\nإذا كنت تشك في أن لديك رد فعل تحسسي أو أي حدث صحي ضار آخر ، فاتصل على الفور بمقدم الرعاية الصحية الخاص بك. \r\nبالإضافة إلى ذلك ، نظرًا للطبيعة المتغيرة لتوافر المكونات ، قد تختلف المعلومات الغذائية المقدمة من Allo Chef عن المعلومات الغذائية المنشورة.', 'Terms and conditions of service\r\n\r\nThese (\"Terms and Conditions\") are an agreement between you and Allo Chef Brand Of (Ward Al Cham LLC.), together with our representatives, officers, shareholders, subsidiaries, parents, employees, and agents (collectively, \"Allo Chef\", \"we\" or \"we\" or “Ours”) we provide the website at www.allochefeg.com and these terms and conditions govern your use of the website, mobile applications or other online services where these terms and conditions (collectively “Website”) are posted unless expressly stated otherwise, will be Include any new tools or applications that change or improve the current Website in the definition of “Website” and your use of the Website is subject to these Terms and Conditions, which you acknowledge, agree to and agree to by using the Website.\r\nThese Terms and Conditions include our Privacy Policy, which is available at www.allochefeg.com/privacy-policy/ and hereby incorporated by reference, as well as the Terms and Conditions for Purchases/Subscriptions and Food Safety Considerations that all meal ingredients and other products will be indicated available through the Website, collectively, as \"Products.\r\nPlease read these terms and conditions carefully before ordering any products from us or subscribing to one of our services and you should print a copy of these terms and conditions for future reference when using the website and will be subject to all rules and policies displayed and these rules and policies will hereby be incorporated by reference to these terms We may also offer other websites which are governed by different terms and conditions and we may amend these terms and conditions from time to time at our sole discretion.\r\nPlease review them periodically By continuing to use the Website later to make available a modified version of the Terms and Conditions, you acknowledge and agree to such modification and cannot create an account, purchase our products or subscribe to our Services without agreeing to these Terms and Conditions.\r\n\r\nWhere the service is available\r\nOur website is intended for use by persons located only in the Arab Republic of Egypt and we will not accept orders from individuals outside the Arab Republic of Egypt and by placing an order through our website you warrant that: You are legally able to enter into binding contracts and that you are at least 18 years of age and you Resident in the Arab Republic of Egypt and you are accessing our website from the Arab Republic of Egypt.\r\n\r\nConsent to keep electronic records\r\nYou agree to enter these Terms and Conditions electronically and store records relating to these Terms and Conditions electronically.\r\n\r\nAccess to the site\r\nYou may access parts of the Site without registering. However, in order to access some parts and features of the Site and to make purchases, you will be required to register and log in to the Site.\r\nYou are responsible for maintaining the confidentiality of your username, password and other information used for registration and login to the Website and you are fully responsible for all activities that occur under your username and password.\r\nPlease notify us immediately of any unauthorized use of your account or any other breach of security by contacting us at security@allochefeg.com.\r\n\r\nProduct Description\r\nWe make reasonable efforts to display the colors of our products as accurately as possible however the actual colors you see depend on your monitor or device and therefore we cannot guarantee the accuracy of the colors of the products you see when viewing the Website.\r\n\r\n\r\nProduct Shipping, Subscription, Warranty and Return Policies\r\nPlease refer to the Terms and Conditions for Purchases/Subscriptions at the bottom of this page for further information on shipping rates, refund policies and other procedures, all of which are incorporated here by reference. The Terms and Conditions for Purchases/Subscriptions include separate provisions relating to warranty disclaimers and limitations of liability.\r\nThe customer agrees that if he is not present on the specified date, it will be received from a neighbor, the doorman, or a nearby address, or it will be returned and received by the customer by himself from the nearest distribution center, or it will be sent again after re-scheduling a new appointment with additional costs.\r\n\r\nOur intellectual property\r\nAllo Chef, associated logos and names are trademarks or service marks of our service.\r\nOther trademarks, service marks, names and logos used on or through the Site such as trademarks, service marks, names or logos associated with third-party organizations are the trademarks, service marks, or logos of their respective owners.\r\nNo right or license is granted to you in connection with any of the foregoing trademarks, service marks or logos.\r\nSome of the materials available on or through the Site are our business (that is, content that we own, author, create, purchase or license).\r\nOur business may be protected by copyright, trademark, patent, trade secret and/or other laws and we reserve and reserve all rights in our business and the Website.\r\nWe hereby grant you a royalty-free, limited, revocable, non-sublicensable, non-exclusive license to access our business solely for your personal use in connection with the use of the Site.\r\nYou may print one copy and download extracts from any pages of our website for your personal reference.\r\nYou must not use any part of our copyright material for commercial purposes without first obtaining a license to do so from us and our licensors.\r\nYou may not otherwise reproduce, distribute, communicate with the public, make available, adapt or submit User Content.\r\nYou and other users of the Site may be able to upload, post, create, make available, send, share, communicate or transmit (“Post”) data, information, images, comments, ideas or other types of content (collectively, the “Content”) to a\r\nand through the Website and other websites linked to the Website.\r\nYou understand that all content posted by users of the Site (\"User Content\") is the sole responsibility of the person from whom such Content originated.\r\nWe do not control User Content and make no warranty whatsoever with respect to User Content.\r\nAlthough we occasionally review User Content, we are not obligated to do so.\r\nUnder no circumstances will we be responsible or liable in any way for any claim relating to User Content.\r\nYou retain ownership of the intellectual property contained in Your User Content and yet you grant us a perpetual, royalty-free, irrevocable, transferable, sublicensable, non-exclusive worldwide license for use in any and all media whether now known or hereafter designed for use and exploitation (including but not limited to copying, distribution, public display, adaptation, communication with the public, and/or public performance, including for commercial or advertising purposes) and all User Content that you post on or through the Site without any right in review or approval by you.\r\nYou also waive, to the fullest extent permitted by law, any and all claims against us regarding moral rights in User Content.\r\nIn no event shall we be liable to you for any exploitation of any User Content you post.\r\nWe have no obligation of confidentiality, express or implied, with respect to User Content that you post on or through the Site or otherwise transmit to us and may use, exploit, disclose (or choose not to use, exploit or disclose) such User Content in our sole and absolute discretion without any An obligation to you whatsoever (for example) you will not be entitled to any compensation or compensation of any kind from us under any circumstances.\r\nIf you are a minor you should not post any User Content however if you do and would like us to remove User Content from the Site please contact us at content@allochefeg.com. You will need to provide us with specific information describing the location of the User Content that you want us to remove.\r\nWe will use reasonable efforts to remove User Content upon sufficient request but cannot guarantee the complete or comprehensive removal of User Content.\r\nProhibited Conduct / Representations and Warranties\r\nYou represent and warrant that you will not use the Site to:\r\nViolate any law (including without limitation laws relating to torts, contracts, export controls, patents, trademarks, trade secrets, copyrights, libel, obscenity, rights of publicity, or other rights) or encourage or instruct others To do so behave in a manner that negatively affects the ability of other users to use the Site including but not limited to engaging in conduct that is harmful, hateful, threatening, abusive, inflammatory, intimidating, violent, encourages violence, harassing, stalking or invasive of another person\'s privacy racially, ethnically, or otherwise objectionable post or transmit any User Content that we determine in our sole discretion:\r\n(i) is unlawful, harmful, harassing, fraudulent, threatening, intimidating, violent, encouraging violence, abusive, defamatory, defamatory, vulgar, obscene, hateful, racially, ethnically or otherwise discriminatory;\r\n(2) insulting or detrimental to the reputation of the Allo Chef.\r\n(3) harms children in any way.\r\n(4) seeks to discriminate against any individual on the basis of race, sex, national origin, sexual orientation, physical or mental disability, or on any other basis.\r\nPost or send any User Content to us that contains unsolicited or unauthorized advertising, promotional materials, spam, unsolicited mail, chain letters, pyramid schemes or any other form of unauthorized solicitation.\r\nPost or submit any User Content to us that contains sweepstakes, contests, sweepstakes, or is otherwise related to gambling.\r\nPost or transmit any User Content that contains copyrighted material or material protected by other intellectual property laws that you do not own.\r\nPost or submit any User Content that you have not obtained all necessary written permissions and versions and misrepresent any fact (including but not limited to your identity).\r\nPost or transmit any software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer software or hardware or telecommunications equipment including by engaging in any denial-of-service attack or similar behavior bypassing your authorized access to any Part of the Site Collect or store personal data of any person Modify any part of the Site without permission Obtain or attempt to access or obtain any content or information through any means not provided or intentionally made available through the Site.\r\nExploit design flaws, undocumented features, and/or bugs to gain access that would not otherwise be available.\r\nUse any robot, spider, scraper or other automated means to access the Site for any purpose.\r\nTake any action that imposes or may impose an unreasonable or disproportionately large load on our infrastructure.\r\nInterfere or attempt to interfere with the proper working of the Website or any activities conducted on the Website or bypass any measures we may use to prevent or restrict access to the Website.\r\n\r\nCopyright Infringement Notice\r\nIf you believe that your work has been copied in a manner that constitutes copyright infringement, please submit the following information to our Copyright Agent, designated as such pursuant to the Digital Millennium Copyright Act named below:\r\nA description of the copyrighted work that you claim has been infringed\r\nYour address, phone number and email address\r\nA description of where the allegedly infringing material is located (if you provide us with a URL, it helps us locate the content quickly)\r\nA statement by you that you have a good faith belief that the disputed use is not authorized by the copyright owner, its agent, or the law\r\nAn electronic or physical signature of the person authorized to act on behalf of the copyright owner and a statement by you under penalty of perjury that the above information in your notice is accurate and that you are the copyright owner or authorized to act on behalf of the copyright owner.\r\nFor customer service assistance, please call +20233822288 or go here:\r\nFor copyright notices only, the copyright agent:\r\nIhab Dalati \\ Allo Chef - WhatsApp: +201555505031 or email: legal@allochefeg.com\r\nNotes :\r\nA Copyright Agent will not handle non-copyright inquiries.\r\nDo not intentionally misrepresent that the material constitutes an infringement.\r\nDoing so may expose you to liability under copyright law.\r\n\r\nSubmit complaints\r\nIf you believe that your rights or the rights of a third party are being infringed in any way by any content accessible on or through the Website please contact us at content@allochefeg.com where appropriate and we will work to prevent any illegal activity on the Website or through it.\r\n\r\nThird Party Sites\r\nThe Site contains links to third-party websites and advertisements for third-party products and services.\r\nIf you use these links you will leave Allo Chef\'s website. These third parties and their websites are not under our control.\r\nWe do not review or rate these sites and are not responsible for their content or operation.\r\nBy providing links to these websites we do not endorse, guarantee, endorse or make any representation about them or their owners or operators and have no responsibility or liability in connection with them.\r\nYou should exercise your own judgment in evaluating and using these websites.\r\nWhen you link to these sites, you become subject to their terms and conditions of use and privacy policies.\r\nWe do not endorse these sites and our Privacy Policy and Terms and Conditions do not apply to them.\r\nYou expressly release us from any and all liability arising from your use of any third-party website, service or content.\r\nYour dealings with or participation in promotions for advertisers on third-party websites in\r\nSuch payment or delivery of goods and any other terms including but not limited to warranties are solely between you and such advertisers.\r\nYou specifically agree that we are not liable for any loss or damage of any kind arising from or arising from your interactions with third party websites and/or advertisers.\r\n\r\nRelease\r\nIf you have a dispute with one or more users of the Website or with any party that provides advertisements or third party services on or through the Website or with any party that provides a website linked to the Website, you release us from any and all claims, demands and damages (incidental, indirect, punitive). , legal, exemplary, predictable, special, or consequential) of every kind and nature known and unknown arising out of or in any way connected with this dispute.\r\n\r\ncompensation\r\nYou will indemnify us against any and all third party claims, losses, damages, liabilities, costs, and expenses (including reasonable attorneys\' fees and expenses), relating to, arising under or arising out of the relationship between you and us described.\r\nIN THESE TERMS AND CONDITIONS INCLUDING ANY BREACH OF ANY REPRESENTATIONS AND WARRANTIES HEREIN. You hereby agree that we have the sole right and obligation to control the legal defense against any such claims, demands or litigation including the right to choose an attorney of our choosing and to waive any such claims, demands or claims or to settle such claims.\r\n\r\nEvacuation responsibilaty\r\nYou use the Website at your own risk.\r\nWe provide the website \"as is\" and \"as available\".\r\nTo the fullest extent permitted by law, we expressly disclaim all warranties of any kind with respect to the Website and content obtained through the Website, whether express or implied, including, but not limited to, the implied warranties of non-infringement .\r\nYou are solely responsible for any damage to your computer system or loss of data resulting from your use of the Website and we make no warranty that:\r\n(1) The website will meet your requirements\r\n(2) The Website will be uninterrupted, timely, secure or error-free\r\n(3) That the results of the site are accurate or reliable\r\n(4) The quality of any content you obtain through the Website will meet your expectations\r\n(5) or the Website, our servers or communications sent from us will be free of viruses or other harmful components.\r\n(6) NO INFORMATION YOU OBTAIN FROM US OR THROUGH THE WEBSITE SHALL CREATE ANY WARRANTY NOT EXPRESSLY STATED IN THESE TERMS.\r\n\r\nLimitation of Liability\r\nTo the extent permitted by law, we will not be liable or responsible to you for any loss or damage of any kind incurred as a result of:\r\n• Delay, refuse or remove any or all Content at any time for any reason or no reason whatsoever to you or without notice to you\r\n• Modify, temporarily or permanently suspend the Website (or any part of it) with or without notice to you for any or no reason\r\n• Immediately terminate your access to the Website for any reason or no reason at all and with or without notice to you\r\n• the accuracy, usefulness or availability of any information posted on or through the Website; or any loss or damage of any kind incurred by you as a result of your interactions with third parties found on or through the Website.\r\nIn no event shall we be liable to you for any incidental, indirect, punitive, statutory, exemplary, predictable, special or consequential damages whatsoever (including damages for loss of profits, loss of reputation, bad faith, non-compliance or financial loss) in connection with any claim or any loss, damage, suit, suit or other action relating to or arising under or outside the Terms and Conditions, even if we have been advised of the possibility of such damages being established by contract, infringement of intellectual property rights, tort, negligence or causes other. You agree not to bring any claim or action in conflict with the foregoing limitations of liability.\r\n\r\nJudicial restrictions\r\nSome jurisdictions may not allow limitations or disclaimers of liability.\r\nIf any court determines that the law applicable in such jurisdiction, our liability will be limited to the maximum extent permitted by law.\r\nDispute resolution setting time for filing a claim; Claims Arbitration Class Action Waiver Any claim or cause of action relating to, arising under or as a result of your use of the Site, including any sales or subscriptions made through this Site, must be filed within one year after such claim or cause of action arose or was raised .\r\nAny Dispute submitted to arbitration under these Terms and Conditions will be governed by the laws of your state of residence regardless of its choice (or conflict of) rules of laws.\r\nThe jurisdiction and venue of any dispute will be in (Cairo), New Cairo.\r\nEach party is subject to personal jurisdiction and venue in this forum for any and all purposes.\r\nIf this clause would render any other clause or condition of these Terms and Conditions unenforceable, then the jurisdiction and venue will instead be in your country of residence.\r\nEither party may seek enforcement of this provision in any court of competent jurisdiction.\r\nThe arbitrator shall determine any and all objections to the arbitration of the case.\r\nThe arbitration award will be judicially enforceable.\r\nAny court of competent jurisdiction may, at its request, enter a judgment in the arbitration award.\r\nEither party may request confirmation (judgment of the arbitration award) and/or enforcement in any court of competent jurisdiction.\r\nYou and Allo Chef dispute the right to file any claim covered by this dispute resolution provision as a class, consolidated, representative, class or private public proceeding, or to participate in a class, consolidated, representative, class or private attorney general proceeding with respect to any claim covered by the dispute resolution provision This is provided by anyone else.\r\nNotwithstanding any provision in the Consumer Arbitration Rules to the contrary, no\r\nThe arbitrator may have the power or any jurisdiction to hear arbitration as a class, consolidated, representative, or private public proceeding or to combine or join claims from different persons into a single proceeding. If a class, consolidated, representative, group, or private public action arbitration is commenced notwithstanding the foregoing prohibition and is finally determined by the arbitrator (or a court of competent jurisdiction) that the waiver specified herein is unenforceable, then the entirety of such dispute resolution procedure will be null and void .\r\nNotwithstanding prior binding arbitration proceedings, either party may file an individual claim in small claims court (provided that the claim otherwise qualifies for this program) as an alternative to pursuing arbitration.\r\nYou can choose to opt out (exclude yourself) from the final and binding arbitration proceeding and to waive the class action defined in these Terms and Conditions by doing the following.\r\nWithin 15 days of creating your Allo Chef account, you must send a letter to Allo Chef, Mr.Ihab Dalati \\ Attn: Legal Department\r\nOn Giza - Haram - 1 Studio Misr St. and specify: (1) your name (2) your account member\'s name (3) your mailing address (4) and your request for exclusion from the final and binding arbitration procedure and the class action waiver specified in these terms and conditions. All other terms and conditions shall remain applicable to you and your account, including the requirement to participate in mediation prior to the dispute. You do not have to send the letter by confirmed mail or request a return receipt, but it is recommended.\r\n\r\nTermination of service\r\nYou agree that Allo Chef may, without prior notice, immediately terminate your account or limit or suspend your access to it based on any of the following:\r\n(a) Your breach or violation of these Terms and Conditions\r\n(B) At the request of law enforcement agencies\r\n(c) Unexpected technical or security problems or issues\r\n(d) Prolonged periods of inactivity\r\n(e) fraudulent, deceptive, illegal or other activity that Allo Chef believes is harmful to this Website or its business interests.\r\nYou agree that termination, limitation of access and/or suspension shall be in Allo Chef\'s sole discretion and that Allo Chef shall not be liable to you or any third party for the termination, limitation of access to and/or suspension of your account.\r\nUpon termination, you will no longer have the right to access your account or your User Content. We will have no obligation to assist you in migrating your data or User Content and we may not keep any backup copy of any of your User Content. We will not be responsible for the deletion of your User Content.\r\n\r\n\r\n\r\ndiverse\r\nThese Terms and Conditions constitute the entire agreement between you and Allo Chef, and govern your use of the Site and purchases and subscriptions made therein.\r\nThese Terms and Conditions supersede any prior agreements between you and us regarding the Website and purchases made on it.\r\nEach of us acknowledges that in entering into these Terms and Conditions, neither of us is relying on any representation or warranty (whether made by patent or negligence) not set forth in these Terms and Conditions or the documents referred to therein.\r\nThese terms, conditions, rights, benefits and obligations herein are fully assignable by us and will be binding and enforceable in favor of our successors and assigns.\r\nNeither party, nor any of the respective parties\' attorneys, shall be deemed responsible for drafting these Terms and Conditions for the purposes of interpreting any provision of this Agreement in any judicial or other proceeding that may arise between the parties.\r\nExcept as expressly provided in these terms and conditions, there will be no third party beneficiary of these terms and conditions. For clarity, Allo Chef\'s representatives, officers, shareholders, subsidiaries, affiliates, employees, and agents are intended third parties.\r\nNo agency, partnership, joint venture, employee-employer or franchisor-franchisee relationship exists or is created under these Terms and Conditions.\r\nAny failure by us to exercise or enforce any right or provision of these Terms and Conditions will not constitute a waiver of such right or provision. Any waiver of any right or provision of these Terms and Conditions must be in writing.\r\nIf a court of competent jurisdiction finds any provision of these Terms and Conditions to be invalid, the court shall nonetheless endeavor to give effect to the parties\' intentions as set out in the provision, and the other provisions of these Terms and Conditions shall remain in full force and effect.\r\nUnless otherwise expressly stated in this document, the laws of the Arab Republic of Egypt, regardless of principles of conflict of laws, will govern these Terms and Conditions, your use of the Site, and all matters relating to your access to and/or use of the Site, including all disputes between you and us . You also agree that the Website shall be deemed to have its sole headquarters in Cairo.\r\n\"include\", \"include\", \"implication\", \"implication\", \"include\" and \"including\" herein means including but not limited to.\r\nAll notices provided by you to us must be sent to Ward Al Caham LLC (Allo Chef) at support@Allochefeg.com and we may send you notice either at the email address or postal address you provide to us when placing an order, or in any of the ways specified herein. Notice will be deemed received and properly served immediately upon posting on our Website, 24 hours after an email has been sent, or on the date any communication is posted.\r\nIn establishing the service of any notice, it will be sufficient to establish, in the case of a letter, that such letter was properly addressed, stamped and placed in the mail, and in the case of e-mail, the mail was sent to the specified e-mail address of the addressee.\r\n\r\nTerms and Conditions for Purchases / Subscriptions\r\nSubscriptions\r\nYou acknowledge and agree that when you subscribe to the Wallet, any refunds can only be made through an order placed by you.\r\nFrom\r\nBy registering for a subscription, you agree to accept responsibility for all recurring charges prior to cancellation.\r\nYou may modify your subscription (eg number of meals), change your payment method, or cancel your account at any time online (while logged into your account) or by sending an email request to support@homechef.com. Such requests will not affect the fees submitted before Home Chef can act reasonably upon such requests.\r\nYour order is considered final by 12:00 PM CST on Thursday before delivery the following week (\"Deadline\").\r\nWe reserve the right at our absolute discretion not to renew your subscription at any time without giving any reasons for our decision.\r\nAfter placing your first order through our standard order form on this website, you will see in your online account profile the amount you were charged for that order.\r\nCoupons and Gift Cards\r\nWe may offer gift cards, promotions, referral credits and other types of coupons (“Coupon”) that must be activated by the Online Application in order for the holder to begin delivering Products through the Service.\r\nIf the receipt is paid for, it is considered sold at the time of payment.\r\nAll such terms and conditions will become applicable between us and the owner of the Voucher (the “Owner”) when the Voucher is redeemed by the Voucher by applying to start the Service.\r\nThe Coupon may be used only once by its holder and may not be copied, reproduced, distributed, transferred, sold, published directly or indirectly in any form or stored in a data retrieval system without our prior written consent.\r\nThere is no cash value for any discount or referral credit received through a promotion.\r\nWe reserve the right to withdraw or cancel any voucher (other than a paid gift card) for any reason at any time.\r\nCoupons may only be redeemed through our Website and not through any other website or means of communication. To use your voucher, you will be required to enter its unique code at online checkout, and use of this code will be deemed confirmation of your acceptance of these terms and conditions and any special terms attached to the voucher.\r\nVouchers are subject to their own terms and conditions. Unless expressly stated otherwise, all promotional discounts may not be combined with any other offers, are valid for new customers only, and are limited to one offer per household address.\r\n\r\nReferrals\r\nYou agree to share your Allo Chef referral link only with your personal communications via email, your social media accounts, and personal blogs where you are the primary owner of the content. Public distribution is not permitted on sites where you are not the primary content owner, such as Allo Chef\'s social media pages and coupon sites. We reserve the right to suspend your account and/or cancel any and all Referral Credits at any time if we believe that Credits have been improperly obtained.\r\nThe credit will be automatically applied to future deliveries and must be used within 90 days of issuance.\r\n\r\nRisk and Ownership\r\nOnce the products are delivered to you, the title and risk of loss passes to you.\r\nAfter delivery, you, and not Allo Chef, are solely responsible for properly and safely washing, preparing, storing and cooking produce.\r\nBy ordering any of our products, you agree to use our products at your own risk.\r\n\r\nprice and payment\r\nPrices for our products and delivery, if any, will be as set out on this website from time to time, except in cases of obvious error.\r\nApplicable sales taxes will be included at checkout.\r\nOur prices may change from time to time, but changes will only apply to orders that have been confirmed after the changes are mentioned on our website.\r\nPayment must be made by credit or debit card.\r\nWe accept American Express, Visa and MasterCard cards.\r\nWe reserve the right to change the payment methods available at any time.\r\nAlthough we make reasonable efforts to provide accurate pricing information and product descriptions, pricing errors, typographical errors, or errors regarding product availability may occur.\r\nWe reserve the right to correct such errors.\r\nWe cannot guarantee that the information displayed on the Site is 100% accurate.\r\nIf a product is listed at an incorrect price or the product description is inaccurate, we may, in our sole discretion, refuse any order or cancel any orders placed for that product.\r\nIn these circumstances, if your credit card has already been charged, we will issue a credit to your credit card within a commercially reasonable time.\r\n\r\nOrder Restrictions\r\nWe reserve the right to limit, in our sole discretion, the quantities of any Product that may be purchased on a per person or per order basis.\r\n\r\nOur refund policy\r\nAfter you accept delivery of a product from us, if you are not 100% satisfied with the product (because it is defective or otherwise), you can request a refundable Allo Chef credit through your account to purchase a product of equal value in the future.\r\n(\"credit\") or refunded within seven days of delivery by sending an email to support@allochefeg.com.\r\nIf a part of the product is defective, we reserve the right to decide at our discretion whether to provide you with:\r\n(a) a credit or refund in an amount equal to the value of the defective part(s).\r\n(b) a credit or full refund in an amount equal to the full value of the product.\r\nThe full refund option does not apply to orders over $100 and we reserve the right to refuse orders that are considered fraudulent.\r\nIf you refuse to deliver a product from us because you skipped, paused, or canceled an order before the deadline for that order, and you were able to provide documented evidence of such skip, pause, or cancellation (eg, a time-stamped email), we will process a credit or full refund (including any applicable delivery charges) as soon as reasonably practicable\r\nA, and in any event, within 30 days of the cancellation request.\r\nIf you refuse to deliver a product from us for any other reason, we will notify you within a reasonable time whether you are entitled to a credit or refund (and if so, the amount) by phone or email.\r\nIf we determine that you are entitled to a credit or refund, we will process that credit or refund within 30 days of notifying you of our decision.\r\nWe usually provide refunds using the same method you used to pay for your purchase.\r\n\r\nLimited Product Warranty; Product disclaimer and limitation of liability\r\nWe warrant to you that any product purchased from us through this website will comply with its description upon delivery, be of satisfactory quality, and be reasonably fit for all purposes for which products of this nature are generally provided.\r\nIf you feel that we did not meet the warranty in the previous sentence, you can request a refund according to our refund policy, as described above.\r\nExcept as expressly provided in the preceding paragraph, we hereby disclaim, to the fullest extent permitted by applicable law, all warranties, express or implied, including but not limited to implied warranties of matter and fitness. To the fullest extent permitted by applicable law, in no event will we be liable for any direct, indirect, incidental, special, punitive or consequential damages of any kind arising from the Products.\r\nTo the fullest extent permitted by applicable law, our maximum aggregate liability arising from the Products or this Website will not exceed the purchase price of the Products.\r\nThis will constitute our sole liability, if any, regardless of the form of the claim, whether based on contract, tort or any other legal or equitable theory.\r\n\r\n\r\nEvents beyond our control\r\nWe will not be responsible or liable for any failure to perform or for any delay in performance of any of our obligations under an order caused by events beyond our reasonable control (\"Force Majeure Event\").\r\nA force majeure event includes any act, event, non-occurrence, omission or accident beyond our reasonable control and includes in particular (but is not limited to) the following:\r\nStrikes, lockouts or other industrial strikes\r\nCivil commotion, riot, invasion, terrorist attack, threat of terrorist attack, war (whether declared or not), threat or preparation for war\r\nFire, explosion, storm, flood, earthquake, subsidence, epidemic or other natural disaster\r\nImpossibility to use rail, freight, aircraft, motor transport, or other public or private transportation\r\nThe impossibility of using public or private communications networks, businesses, ordinances, legislation, regulations or restrictions of any government.\r\nOur performance under any order is deemed to be suspended for the period during which the Force Majeure events continue, and we will have an extension of time to perform throughout that period. We will use our reasonable efforts to terminate the Force Majeure Event or to find a solution by which our obligations under the Order may be performed despite the Force Majeure Event.\r\n\r\nAvailability and delivery\r\nYour order will be fulfilled by the delivery date stated in the Confirmation or, if the delivery date is not stated, within 30 days from the Confirmation date, in the absence of a force majeure event.\r\nIf there is a Force Majeure event, we are not responsible for the cost of any compromised or failed deliveries; However, we reserve the right to refund you for all or part of any compromised or failed deliveries as we see fit.\r\n\r\nFood Safety Considerations\r\nYou are responsible for the safe handling of all Products available through the Allo Chef websites, mobile applications, blogs and other media (“Allo Chef media) upon delivery.\r\nWe recommend that all products you receive from us be immediately checked for damage or other issues, and to determine their freshness upon delivery. Allo Chef packs all shipping containers with insulated liners and gel packaging in an effort to ensure that products are kept in a cooler and cooler environment during transportation, but cannot guarantee that handling during delivery may not alter the product or damage the shipping container or its contents. Therefore, upon receiving your Allo Chef box, you should always inspect your delivery immediately to ensure that the meal ingredients have arrived in a cool, refrigerated condition, and the shipping container and its contents are visibly undamaged.\r\nWe recommend using a food thermometer to ensure product temperatures inside the container of any meat, poultry, seafood, dairy, and cut-up products are 40 degrees Fahrenheit or less.\r\nIn the event that meat, poultry, seafood, dairy, and/or shredded products are likely to be above 40°F, or if you have any other reason to believe that any other product in your delivery is not suitable for consumption, immediately contact us at support@allochefeg .com and then discard the item.\r\nTo maintain product quality and safety, we recommend that immediately upon delivery, refrigerate all perishable products upon delivery and follow all Egyptian Ministry of Agriculture (“Egyptian Ministry of Agriculture”) food safety guidelines for refrigerated/frozen storage and safe food handling.\r\nWe recommend that you follow all cooking instructions as outlined on the recipe cards and verify that the cooking temperatures for all applicable meat, poultry, seafood, and other items meet the Egyptian Ministry of Agriculture\'s minimum internal cooking guidelines using a food thermometer.\r\nWe also recommend washing all fresh produce under running water before using it. Failure to follow safe food handling practices and temperature recommendations may increase the risk of foodborne illness. In addition, women should\r\nHope, young children, the elderly, and individuals with weakened immune systems follow the recommendations of the Egyptian Food and Drug Administration regarding food consumption for at-risk groups.\r\nAllo Chef\'s production facilities store, partition and distribute ingredients containing eight (8) major food allergens as defined by the Egyptian Food and Drug Administration (\"Egyptian Food Safety Authority\") (milk, wheat, eggs, soybeans, fish, shellfish, peanuts and nuts ).\r\nWhile Allo Chef takes precautions to minimize the risk of cross-contamination between ingredients and food products, inadvertent cross-contamination may occur during production and transit which may cause meals or other products provided in connection with the Allo Chef service to contain some or all of those allergens. Eggs, fish, shellfish and soy are allergens that are commonly found in many ingredients, especially some sauces that can be used in Allo Chef recipes (fish sauce, Worcestershire sauce, etc.).\r\nIf you suspect that you are having an allergic reaction or any other adverse health event, contact your healthcare provider immediately.\r\nAdditionally, due to the changing nature of ingredient availability, the nutritional information provided by Allo Chef may differ from the nutritional information published.', NULL, '2020-05-10 02:59:50', '2021-07-18 01:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'android' COMMENT 'android | ios | other	',
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar' COMMENT 'ar | en',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jwt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` text COLLATE utf8mb4_unicode_ci,
  `objective` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `suspend` tinyint(4) DEFAULT '0',
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` tinyint(4) DEFAULT '0' COMMENT '0=>male, 1=>femail',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` bigint(20) DEFAULT '0',
  `wallet` bigint(20) DEFAULT '0',
  `subscription_expire` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `platform`, `lang`, `name`, `email`, `phone`, `jwt`, `provider_id`, `objective`, `user_code`, `active`, `suspend`, `city_id`, `region_id`, `gender`, `image`, `email_verified_at`, `password`, `token`, `points`, `wallet`, `subscription_expire`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'android', 'ar', 'zo', 'mo010@mo.com', '010304071000', 'v6iCaMJkBjNLl7iCL2ompzuq61620831665', NULL, NULL, NULL, 0, 1, NULL, NULL, 1, NULL, NULL, '$2y$10$h0XWNx0sxOd6lwZ5meCxy.GtVPLY/x0MQdTjc9Mw6rNlq62QlMmhq', 'asd', 150, 450, '2023-03-02', NULL, NULL, '2021-05-13 00:01:05', '2023-03-18 09:27:46'),
(2, 'android', 'ar', 'zo', 'mo015@mo.com', '01557557024', 'WEnYd8HjvCTo94jTy8UZrCvFy1629474842', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$TBhpI7a.fwm1FZan4DACt.C8oG.Lc5n34ZlbNrh988p7K6vzV2.1a', 'asd', 0, 0, NULL, NULL, NULL, '2021-05-13 08:43:23', '2021-08-21 00:54:02'),
(3, 'android', 'ar', 'mo', 'mo@mo.com', '0123456789', 'Ob40zfB51mZiaXjmk0QRh2tAN1620867996', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$nAzHO6sxmK1gdoRmt2y6aOfzlxmNcSVaDlwYy5PBYu0tzagO3tv6i', 'vOZR3FiZQ1Xgg3gucCbdAbo4p1620867996', 0, 0, NULL, NULL, NULL, '2021-05-13 10:06:36', '2023-08-19 17:29:51'),
(4, 'android', 'ar', 'QQ', 'QQ@QQ.comm', '0123456788', 'cO9w3nhFv5umeWmGkwS8GalNF1620996370', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, '1621002084609e87644c76d.jpg', NULL, '$2y$10$S5AsOqowG55pDDgvUZcPKu4BPviEyw/kjVISgX04cW6Qg1EODYRte', NULL, 0, 0, NULL, NULL, NULL, '2021-05-13 10:15:32', '2021-05-14 23:21:24'),
(5, 'android', 'ar', 'SS', 'SS@SS.com', '0123456787', 'XezwlXIHZUdQ859OQf2w1zPuN1620868637', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$lz.P2.H.q/fnZkQo/8s8L.K.Eczt5BUM1TUIOsLvTaxB3MaQV9ePC', 'Keg7CEXfGsZsycuyqcKNoCGGr1620868637', 0, 0, NULL, NULL, NULL, '2021-05-13 10:17:17', '2021-05-13 10:17:17'),
(6, 'android', 'ar', 'ZZ', 'ZZ@ZZ.com', '01123456789', 'ABghkDb7C63hT2YmzopdCvX6Y1620868828', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$LgcFc8QhOiJnnyIAf3nLheDQb9CwRzht./i9rP8eZd1kJmSnr4Rkm', NULL, 0, 0, NULL, NULL, NULL, '2021-05-13 10:18:49', '2021-05-13 10:20:28'),
(7, 'android', 'en', 'مصطفى النجار', 'melnagar271@gmail.com', '01090624441', 'J7pZ60I2EBJ1B1Rsz92wr0Mmw1685469850', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, '1678538803640c78337f4f1.jpg', NULL, '$2y$10$oyH9c0aW75PRcWWzU2mPCucoIWWXU8ioGfK/7vsO/BD57eEfIp5k.', 'd5h1ahfPRImabVO5--hCoj:APA91bEChxhQ5PUHEGI1ayEwOLz4Q-6FhwuMTDLIAN5s5WmeAMyIlXKVihPviTErtMdEU5IWjz_H0wj3Wqse1h2PGse8Xn_eWY36mCSnJUKmrMCOE0H4-senxr8wNEmmHdttSFJuLpfy', 130, 1300, '2023-06-29 20:16:06', NULL, NULL, '2021-05-15 01:12:55', '2023-05-31 03:16:06'),
(8, 'android', 'ar', 'bakry', 'tawfiksweedy4@gmail.com', '01099667851', 'h9VuxzJ0q8aAFVmiVfzURYfmp1631186848', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, '162628743560ef2d4b20a0a.jpg', NULL, '$2y$10$WzA1B9pKmdZ4pbr5EC4QJeKdkQNTabl9sccJwiN6KIGSr4knD/LFm', NULL, 217, 5910, '2021-10-31 18:28:18', NULL, NULL, '2021-05-16 08:51:28', '2021-09-09 20:27:28'),
(9, 'android', 'ar', 'QQ', 'QQ@QQ.com', '0100200300', 'v6z9SQueTpPHX4ddC4WJoZTO81621614444', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, '162161451260a7dfb0e3809.jpg', NULL, '$2y$10$WzA1B9pKmdZ4pbr5EC4QJeKdkQNTabl9sccJwiN6KIGSr4knD/LFm', 'RhQWSXMHVwptT2LSABAKyVLmF1621614444', 250, 2500, NULL, NULL, NULL, '2021-05-22 01:27:25', '2021-05-22 01:31:45'),
(10, 'android', 'ar', 'ahmed mostafa', 'medobakry00@gmail.com', '01016171926', 'b6hQZVbgANHswKQolbo4CE0yh1623441263', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$sDhstNZdH5TFi4guoUoqs.wo5VAJ35jpPowHo3xc4ePYMnMS.7T4O', 'oC5hn1JRnu9y27GAF5GUw4Q4F1623441263', 0, 0, NULL, NULL, NULL, '2021-06-12 04:54:23', '2021-06-12 04:54:23'),
(11, 'android', 'ar', 'hamed higazy', 'hamed2grand@gmail.com', NULL, 'wawcTWvCVu7xqlfheqXBGMeMn1624034317', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, '$2y$10$134Od7nUsC2922ni/OTw.O3lfx8FNFirPdU81SNXs/MPsIUHNuCYa', 'C6406tjTsNalmg0WVwuPQbs1E1624034317', 0, 0, NULL, NULL, NULL, '2021-06-19 01:38:37', '2021-06-19 01:38:37'),
(12, 'android', 'ar', 'ahmed bakry', 'medobakry00@hotmail.com', '01016171929', 'qRqMw0PsSyBuu5Y8mOaei1c2w1624223571', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$VjaMwDKndA/FpFzpOXx0Gus5BKZ3Ue8pYqM1rmpxXjnLBkQFJn/CK', 'zykSy4Ipt7SYyfbsWOzoWnY311624223571', 0, 0, NULL, NULL, NULL, '2021-06-21 06:12:52', '2021-06-21 06:12:52'),
(22, 'android', 'en', 'andrew', 'andrewalbert93501@gmail.com', '01276718501', 'SVGSEgQJ9usdbHdsnnDn5z4q71680887608', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, '162548690460e2f6381dfc1.png', NULL, '$2y$10$WzA1B9pKmdZ4pbr5EC4QJeKdkQNTabl9sccJwiN6KIGSr4knD/LFm', 'ctkLpVDlR1uXMW3pc-FKQ3:APA91bE1K2y8M-poOYFbj8SQIEJ2mWMetvNGHE6hXCpe8jgtJR6RDugaAYVVir0zYHxnSOnYKJNgokZq73VyLXtpocf9JqhaifjlY7Dv-lj8x7EGKXTZhkH_QUvlE2DxS2Vd7OMY4Nsx', 50, 90, '2023-03-26 16:16:58', NULL, NULL, '2021-06-26 09:58:18', '2023-04-08 02:13:28'),
(25, 'android', 'ar', 'Ahmed Zain', 'ahzain912@gmail.com', '01111851013', 'axE2DVKgSYL38TK8ZRRkS0K4H1627822128', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$bR71wpyPE9sCnPfC5s5nZu1T.HyMXZJTmkGkTjveZAUa1Easm6t4y', NULL, 0, 0, NULL, NULL, NULL, '2021-07-16 03:12:32', '2021-08-01 21:48:48'),
(26, 'android', 'ar', 'Ihab', 'power-stone@hotmail.com', '01555505031', 'dkdd4DSOE430rHsLirtojrZav1626428341', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$tjU1S.hLKN6LKZbnifl3MuEWySxo1tIp/aKHX8d7Y9v6rf1tv5gMW', '329C9jgTOG8nPHHCn3jqEnr5e1626428341', 0, 0, NULL, NULL, NULL, '2021-07-16 18:39:01', '2021-07-16 18:39:01'),
(27, 'android', 'ar', 'yy', 'yy@yy.com', '0100400500', 'ifnQ5nZzwzvRraVxk1JodUtp41626436272', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$Hdg0vOM0KQspCxE9Eixv0O8nYz.hC9lrL9roZ0jMEzzKxfo1hbN2m', 'jzp2pdFQYe280K3uub2nizFCu1626436272', 0, 0, NULL, NULL, NULL, '2021-07-16 20:51:12', '2021-07-16 20:51:12'),
(28, 'android', 'ar', 'Ihab', 'ehab.alhhab@windowslive.com', '01015020102', 'gZertnhecc2Cq3897sVoavxZz1627736800', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, '162781907161068c3f28232.jpg', NULL, '$2y$10$BSNAcC8wWosaCFEiR2ALWeWFLPxYdvSlBd63k.3Y9fvQPPIGtSMeO', 'ttMxgbfo94khmICtLdclyTYPt1627736800', 0, 0, NULL, NULL, NULL, '2021-07-31 22:06:40', '2021-08-01 20:57:51'),
(29, 'android', 'ar', 'Enas', 'enas_m80@live.com', '01555999122', 'u7g6jpd0CdAlTh8VhCHkIw3QW1631187083', NULL, NULL, NULL, 1, 0, NULL, NULL, 2, NULL, NULL, '$2y$10$w/A8S.x8A6XvyqLcDf566enELF2acPxcH/q5Bu8Dt4wPMF5QdtaLG', NULL, 4949, 49410, '2024-05-09 18:01:56', NULL, NULL, '2021-08-07 06:18:51', '2021-09-09 20:31:23'),
(30, 'android', 'ar', 'test', 'tesy@gmail.com', '10102030', 'yr3gHSjLyJrI8wPeFIKT7q77q1628873408', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$BC4WoM.UjCkQR7au6MTVF.1IXVpcpmfqJzB4u5lRnk/3gcERFcpd2', NULL, 0, 0, NULL, NULL, NULL, '2021-08-14 01:48:14', '2021-08-14 01:50:08'),
(31, 'android', 'ar', 'abduljabar', 'abooda-k@hotmail.com', '01212327770', 'PTSj6JVxz3SaIlHRSuLTG7C7O1629134551', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$f.HGFuhZaboqER.Z41X7cu6n538kUI5gE9/8HZcqdRyn1iYtBW.yi', NULL, 0, 0, NULL, NULL, NULL, '2021-08-17 02:19:24', '2021-08-17 02:22:31'),
(32, 'android', 'ar', 'Mohamed abdallah', 'mabdo1822@gmail.com', '01097803914', 'pSA6EASeRryrStpqMyKh9m5b01629465198', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$sMIg.43esi85/Tdgwe92EOy2WbZe3u3pB7dZMzj3aJsbez8Rsp3Ei', NULL, 0, 0, NULL, NULL, NULL, '2021-08-20 22:11:44', '2021-08-20 22:13:18'),
(33, 'android', 'ar', '22ww', 'sss@ww.com', '12344321', 'SmdGomdkjwcTRS8qUD48Dq8xS1631138349', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$4ZK5JcYlqVQHI7OFpf6tIO9iM7zWZai5D8nGc/JwBVTWlbhwsxKXO', '9PLcQ8p5ncpqCn1ZUVTyyMMIc1631138349', 0, 0, NULL, NULL, NULL, '2021-09-09 06:59:10', '2021-09-09 06:59:10'),
(34, 'android', 'ar', '22ww', 'sss@w.com', '01067821378', 'aY3pGyayWPFFuMj4G7599VrtB1631138397', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$gvXSoSkFMRHUCjIBSAleDOKju1OCifYdnln1Q1s1ZSn0tR7cIuFVy', 'pSywGpZkc7VLBpVtED3EgcE0J1631138397', 0, 0, NULL, NULL, NULL, '2021-09-09 06:59:57', '2021-09-09 07:06:54'),
(35, 'android', 'ar', 'Eslam Maged', 'eslam.maged00@gmail.com', '+201113405859', 'S44UflyG8ERQ1TtoJsClsxTik1634914518', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$pwM/W5p5la6Eh/wyUm/jWunkqJksMTeHEqVgZhMByfEWgRRtbg7SS', 'Kyavh4DBwNc7SiSlC9RO4AWa71634914518', 0, 0, NULL, NULL, NULL, '2021-10-22 23:55:18', '2023-03-15 11:20:43'),
(36, 'android', 'ar', 'Eslam Maged', 'eslam.maged@gmail.com', '01113405859', 'WaDPjVp24LHeMDY41MNhOoR8d1635014513', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$9FO7D2GLa.dcbLsdaOs/KOHjOC7nwdc8DEelaAZgnMQpWBZv4s3bK', NULL, 0, 0, NULL, NULL, NULL, '2021-10-22 23:55:57', '2021-10-24 03:41:53'),
(38, 'android', 'ar', 'Eslam', 'Eslam.maged@gmail.org', '01204833611', 'pkgqAsc3rJmyf5Qh45UgASVNh1676243233', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$u.C1/R6sc9anBs8U1sZQJOc9qFnzk0tQJogiL42AmwUtvBotLfJw6', 'y82XN4qgIT2meuoALgDHdfJi01676243233', 0, 0, NULL, NULL, NULL, '2023-02-13 08:07:13', '2023-02-13 08:07:13'),
(39, 'android', 'ar', 'Eslam', 'Eslam.maged@gmail.org1', '012048336111', 'iMGKJWm3tTsV1WMh1TCyNwIwr1676243383', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$dN.b7v7Gj4dygs6zM54qI.8SOnyhZluAykEMGaNmzDKy/2LnNvrHy', '51eP4bc7PDawDinrGlD98LrNK1676243383', 0, 0, NULL, NULL, NULL, '2023-02-13 08:09:43', '2023-02-13 08:09:43'),
(40, 'android', 'ar', 'mostafa elnagar', 'mostafaelnaggar@shgarid.app', '0103040710', '500tsaPr0xTOGw9kfqDj3pfnH1676466115', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$e2YTnv8udXuOAy7x/dWrxOYbmb9Ibcaz6HiiwVl.81sLti4cNNB4C', '4Rk1yVZdRw7J5VedRB6ttsXzW1676466115', 0, 0, NULL, NULL, NULL, '2023-02-15 22:01:55', '2023-02-15 22:01:55'),
(41, 'android', 'ar', 'Mostafa Elnagar', 'mostafaelnaggar@shgardi.app', '01002515660', 'Hdkj0JXGqUQbC1IDYDRsycJJ41676747079', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$He1q6B39F3mkjp6Sr5SNdOVXkSUplL249A57I4W/iq4vp6TSWHHme', 'MfsO9EHzDWGrqSdKeoVeWaFBu1676747079', 0, 0, NULL, NULL, NULL, '2023-02-19 04:04:39', '2023-02-19 04:04:39'),
(42, 'android', 'ar', NULL, NULL, NULL, 'c7Q9933Ulji3igmhXkoBbcV7y1677965648', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, '$2y$10$CSdJ7l8vN2hcyJ1NnrQce.IZ83XE4L9uSAKGAn//iIUnBQf/OYc9K', 'FNjwtC5TVFxO4iOWUO4GWcoRE1677965648', 0, 0, NULL, NULL, NULL, '2023-03-05 06:34:09', '2023-03-05 06:34:09'),
(43, 'android', 'ar', NULL, NULL, NULL, 'wy3bZpVGg6APu1QuRO7BI5R4V1677965681', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, '$2y$10$l51OICVWgwMXz0KCd6634eovdv9VBLNTVfP97K3UAbwt7j9yf51Dm', 'NAGXVjN0sdEOMtbmhz9ZQS0ph1677965681', 0, 0, NULL, NULL, NULL, '2023-03-05 06:34:41', '2023-03-05 06:34:41'),
(44, 'android', 'ar', NULL, NULL, NULL, 'AAJxSjWOQWE1GFxmgqMyBoCCC1677965840', '12345678sedrftghyj2345', 'google', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, '$2y$10$X1ox3mV6LEf976LEZs7lXumWowehAZgH.dmypHVBocCqgVRRMAKhO', 'ipnyrZ32mHRMjHhzhgiJoBt6s1677965840', 0, 0, NULL, NULL, NULL, '2023-03-05 06:37:20', '2023-03-05 06:37:20'),
(45, 'android', 'ar', 'zo', NULL, '012345677880', 'AAxZKseQ5aqFaWz5P8WQKEXWQ1678165540', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$F5n8CG/aatXSQMw07hhyJ.FsZ7Wxfl6d/eS7z3l6zs4jndjAMTB9G', 'xpliZOgmbyqpclUGdAmCqQgzT1678165540', 0, 0, NULL, NULL, NULL, '2023-03-07 14:05:40', '2023-03-07 14:05:40'),
(46, 'android', 'ar', 'Ahmad Alashmony', 'a.alashmony@allochefeg.com', '01092530258', 'Icar6OUwYHuHFED7EbiI1evN21679527550', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$aW/Et91QcBJxpxA7sAMF2.2waz9qpvodyt750x1kidv8lkDXdvqWO', NULL, 0, 0, NULL, NULL, NULL, '2023-03-23 08:25:51', '2023-03-23 08:25:51'),
(47, 'android', 'ar', 'hossam', 'hossam@gmail.com', '01117465650', 'mTc1FAUnL0cEEp87YRVEOtwUk1679582922', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$pQWFSzjpYUMOCQwp81YWAu9H0P2UZQ.ozWVbYMvMwr4mvcgukPQL6', NULL, 0, 0, NULL, NULL, NULL, '2023-03-23 23:48:42', '2023-03-23 23:48:42'),
(49, 'android', 'ar', 'dasdasds', NULL, '23123213', '9ma0cD03TPaOSs4sO6OfM9QUB1679608382', '106654397370091245252', 'google', NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$jzEdAfDT3pZDtRAom2TFEOI5A5jhczDNtefo6kGhCSr.MAk94WAma', NULL, 0, 0, NULL, NULL, NULL, '2023-03-24 06:53:02', '2023-03-24 06:53:02'),
(50, 'android', 'ar', 'dasdasds', NULL, '231232138', 'Fqpedhvd1gtO2WpENXFJaHGXT1679608721', '106654397370091245252', 'google', NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$ufXHWfcT0dtASomCq7op3.P3B70lUp0hsvGu3fnb5s1.Mi8nxaZg2', NULL, 0, 0, NULL, NULL, NULL, '2023-03-24 06:58:41', '2023-03-24 06:58:41'),
(51, 'android', 'ar', 'nnnnn', 'njj@g.m', '0102020', 'q37uBPSe42DEorg0bZ17QgfDQ1679783873', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$rrM.VAuuDHvsvL/lA9iwcuxOJsEZXlyJ6XpVywIzvlkM6VNEuJvwa', NULL, 0, 0, NULL, NULL, NULL, '2023-03-26 07:37:53', '2023-03-26 08:11:36'),
(52, 'android', 'ar', 'mostafa ios', NULL, '0103040', 'L7v1PKTRNbkBQ6RJO4DJ8R9HG1679784952', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$HZbMv7dqnW56juVDLPbhjuDAkcufBYJfEeemzKGdIBU2BkhHsOtQi', NULL, 0, 0, NULL, NULL, NULL, '2023-03-26 07:55:52', '2023-03-26 07:55:52'),
(53, 'android', 'ar', 'Eslam Maged', NULL, '01016450422', 'xwJsSnJFAzZm2vf4T2zPUqHQj1679795288', '106654397370091245252', 'google', NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$AEa5U2gYXdzMcH/q.9bJ3.6yu47qFQQsy90RDzTGuFLjqV7AV8hN6', NULL, 0, 0, NULL, NULL, NULL, '2023-03-26 10:48:08', '2023-03-26 10:48:08'),
(54, 'android', 'ar', 'eslam maged', 'magedhassanin1@gmail.com', '011', 'Ts2K2XD8BrgdCi1LCCENmNJeh1680882872', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$RCxrBTaQ.1h1kJ4cVwztReUCqIQO.9vTllG5emzHiScsgkCcAfUhe', 'e9O3KiNUR7aB8e0qDJirX8:APA91bF0KtTPJ_BHCs6WlTwsuAtzri6OBLpNjXwpveCTYAaRGuEAAe1QtNuR2a5Rlo6O0kOL63MKBHTT6gjqfWQujmO8YmOE-1CUs9UqxWMoozKBWYzquJVQfPt4h2SLUNtmQ68C4KIT', 0, 0, '2023-04-08 20:43:25', NULL, NULL, '2023-03-26 10:53:05', '2023-04-08 00:54:32'),
(55, 'android', 'en', 'hossam', 'hossamabosaleh44@gmail.com', 'hossamabosaleh44@gmail.com', 'UxzOrlwq63BHrYJFkbMBdHhZr1679923971', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$ojBY8Gtz7gD6ouVmZNWSdO1vxylZyBpqcB43aEA6bliiCyg0o.MDu', NULL, 0, 0, NULL, NULL, NULL, '2023-03-27 22:32:51', '2023-03-27 22:40:34'),
(57, 'iOS', 'en', 'hossam', 'hossamabosaleh4@gmail.com', '01091781758', 'VNYRYrBmZRaF7tBw6VCBDiui41685557012', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$7zQ85Ejq5slrETqjpd1uaOd/yNASXEDAjiOD1Nugr/aaA5LeZ1bJu', 'fcm', 32200, 318815, '2025-12-27 20:48:05', NULL, NULL, '2023-03-28 11:39:14', '2023-06-01 03:16:52'),
(58, 'android', 'ar', 'test verify', NULL, '099', 'gW2wTy0PlzdrqQKwhSzRwemKV1680015611', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$/oUXuRq6bj40esEi/7TscOhQQ4KUU2c1Jn0WdSpfhEOaw0wjaXvye', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 00:00:11', '2023-03-29 00:00:11'),
(59, 'android', 'ar', 'test verify', NULL, '088', 'te0WlppfM8k9foVhawD9W6g461680015804', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$AId5tmGErn38kjg3tk6a7uPFLMtE0h9hL41BAr98lBCGV6KlCn.jK', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 00:03:24', '2023-03-29 00:03:24'),
(60, 'android', 'ar', 'test verify', NULL, '0888', 'NwlwmstyYmMxZk5UN7aRf5R7P1680015975', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$MBW9CIgW.EIs0xInepBH6.nOapzAqj06JCLprTzE42iBnQaPsVG/u', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 00:06:15', '2023-03-29 00:06:15'),
(61, 'android', 'ar', 'test verify', NULL, '08889', 'G40MMcjlBNBR0b4T9Q5yFlcYP1680016211', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$tWX7M3/axEYYKa7P3X5XxugxpOVLRNuknvoJds70FSUf6CB0M3s5e', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 00:10:11', '2023-03-29 00:10:11'),
(62, 'android', 'ar', 'test verify', NULL, '088890', 'pDSky7DT9XgiI3DssbIogQHyN1680017511', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$MzQfjmStOHRewNML2OUesempdjBqsHIf1ZKZWE0ZSHy02GSBf5rfm', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 00:31:51', '2023-03-29 00:31:51'),
(63, 'android', 'ar', 'test verify', NULL, '0888909', 'hiEVtiH2rdhyiaWHo9TLJzx2J1680017653', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$vwqYF1tEjSphfmhyKUXzLO.ghfkOU8NEPt290oPXvI1nLo0tf3Ffu', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 00:34:13', '2023-03-29 00:34:13'),
(64, 'android', 'ar', 'test active', NULL, '9988', 'h6aWkvIz7y0mZ3DnKnbCAatw51680036430', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$AveE0r1tKGd3dehF2uMPVeW/HwalkL6oKRBrkfuBMueC4dje8Udn.', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 05:47:10', '2023-03-29 05:47:10'),
(65, 'android', 'ar', 'hdjs jsjs', NULL, '7766', 'OUfTcFuc8vyo8jpGkW7hVAQfg1680036632', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$8nzLpCBQcoBFe5QDc1g6deTt8LFaeSS/PnQvSvfMnnG/cxjuGjjqO', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 05:50:32', '2023-03-29 05:50:32'),
(66, 'android', 'ar', 'zo1', NULL, '0123456778801', 'OKbO8AFjm91mdZtF2Im2fQNgM1680037020', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$MDduB5uENlDbDqUk19vz7..1XCDZak7bd9zoM3HucRQxkw.vArIB.', 'asd1', 0, 0, NULL, NULL, NULL, '2023-03-29 05:57:00', '2023-03-29 05:57:00'),
(67, 'android', 'ar', 'hdjs jsjs', NULL, '77667', 'BoDG7lMae1CrK5vD73aDxIuGv1680037091', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$OSL1NVUr/U93mHmah/lD0OK3ci2VWT7Ao4JqWfVQgbdra9OHYhjYq', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 05:58:11', '2023-03-29 05:58:11'),
(68, 'android', 'ar', NULL, NULL, '01010', 'lmq4iV8uaYm3H8X9pPotnZCoR1680089510', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$5YtuFZbFCJIw6PwFi.0jMO8jQfFopobqIhJRVfgoy/TRY/QLVtA3W', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 20:31:50', '2023-03-29 20:31:50'),
(69, 'android', 'ar', 'm', 'm@g.com', '358688', '34NOFifamElOPcJepWdARO8J01680096548', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$FoBCeV/TsqThjJyAOEzJwuzxUufioH.mDkkwIfxDUpkuOuwGGCuKu', NULL, 0, 0, NULL, NULL, NULL, '2023-03-29 22:29:08', '2023-03-29 22:29:08'),
(70, 'android', 'ar', 'Mohamed Bahaa', 'Mohamedbahaa01156@gmail.com', '01022721140', 'Pt2BNDmvW0Fa7ZDpLf6Jg4toZ1680353475', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$vzeM5p7pUrMYAwb1PyAWte6r1/jIHxfvsmqhrCPkWIJKgee1SWpEi', NULL, 0, 0, NULL, NULL, NULL, '2023-04-01 21:51:15', '2023-04-01 21:51:15'),
(71, 'android', 'en', 'Test allo', 'melnagar272@gmail.com', '01001525660', 'hpBA0WUSlVBbrAoTJdKLpZwKU1684775558', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, '1684775999646ba43f2dfdf.jpg', NULL, '$2y$10$u4gPDa1zdVpOD23FSTGLXuslXqzja0kW3Bpk9cLbDrb0b4SWm.O/u', 'test', 0, 0, NULL, NULL, NULL, '2023-05-23 02:10:30', '2023-05-23 02:19:59'),
(75, 'android', 'en', 'Mostafa  Elnaggar', 'mos@gmail.com', '01030407100', 'KMSCAUxXLYCggUuf2aDIUFKrY1685614032', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$ozljyfzO2hNtbudeXDBkDuuxwGNgCkSobrMpv03SCIB5KR5AfLny6', 'enFKCJyOQJCSvdqZE3QMnq:APA91bHOBvgdp52c9Rap5epvSXPl2I7vC3uo-aq91M7rzQru0xmuUVGB5TwtJuy0hh9t6uPopNnYAl0LNMzpTq1KFOfnB9ejzudp4r8lc8U4CkKMwlrFLvB3ORbNKMVaHk13wxM98NFw', 90, 900, '2023-06-07 13:19:28', NULL, NULL, '2023-05-27 19:10:21', '2023-06-01 20:19:28'),
(76, 'android', 'en', 'Ahmed', 'a.alashmony@outlook.com', '01010030036', 'KrNk7GWm5hIvhNTlC8nClqWXk1692866027', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$WzA1B9pKmdZ4pbr5EC4QJeKdkQNTabl9sccJwiN6KIGSr4knD/LFm', 'dw-lH5AZSC6K8h6KuyUSZd:APA91bGGGej1ELQC7e8OtouMugtJ4LEbxcJkUHRkWard_zWaNxi0n0175KpxMqJhNNGGamFV8ET8GSUdbTvDkIJ8vRa494Mim3YQ42NsutA71Wu2sFJQ1VvoSvu_t6SleB71KCbEyc28', 0, 0, NULL, NULL, NULL, '2023-05-29 02:39:42', '2023-08-24 17:33:47'),
(77, 'android', 'ar', 'Reem Hegazy', NULL, '01093195576', '0og8vkMhY5TQUZPQ6RKWlrJQc1685638454', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$fDgwQ9ryKOQCvz4LYRAMGunKWN6hS0idhnCCyKgm5kBVZHI0TxwpW', NULL, 0, 0, NULL, NULL, NULL, '2023-06-02 01:54:14', '2023-06-02 01:54:14'),
(78, 'iOS', 'en', 'Eslam Maged', NULL, '01016450420', '4Xj1zs0VrEd6PcvWMx6YaWxo91692123547', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$pJjWfMyAJNGQiHBFQmNYC.VV8e94UPAvZcY0RUUoN8mDKOBegbPl.', 'fcm', 300, 3000, '2023-08-30 20:19:46', NULL, NULL, '2023-06-02 03:15:22', '2023-08-16 03:19:07'),
(79, 'android', 'en', 'Testing iOS', NULL, '01094641332', 'fr66dt7QWS7RocKD9EughIBLn1692433866', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$9QYTDdcRzD3o8tvB2yNIue5JT/BIhSE6HVDVI5RJArZeUfMtQ75Fy', 'eSfOMV8UTe6LFC7L-_eZKH:APA91bEvhcOQLuP3fYZZiGoY17s4Qs9wlv-wJWGWwuvkuua49QhcW1gl-puWUjneBy_aEZGVKjBH6fe6ZOtz9q5Fsf7q_7JsE0fMEE4AOYGxXt9m9Gvp4xlzk6OFyU0xctF_Uujx69Vw', 0, 0, NULL, NULL, NULL, '2023-06-10 19:55:36', '2023-08-19 17:31:06'),
(80, 'android', 'en', 'Nada Mohammed', 'nada.mahany1@gmail.com', '0106133432', 'lgg6htsH4TNuVsSLiqRNeEY4i1687910163', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, '$2y$10$LRuN2UMxVAPIDEz3ds4yRe2TKYHmzBWpotJ1ErvNvpfRP.QLwPeUq', 'cLJws7-_R9iYgSk7yVopYT:APA91bENhFUQ7zNvoAjRCzgPwZ0m8-puLn39hjZtN_95coVnQe7PkbySmTV5lNSAniPODLEuLjxLtdA6w1wxxd4XeB9bcKvqIw6603P8YhWzpvlqNTeygHfpVTb4c788fStoWrLqwjVV', 0, 0, '2023-07-12', NULL, NULL, '2023-06-28 07:08:59', '2023-07-15 07:41:35'),
(81, 'android', 'ar', 'ahmed ramadan', 'aramadan.scu2006@gmail.com', '971568807761', 'nFNT2MQuuGvBQssuCrvrN7nDP1692256734', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$m7NyZ5mniPrkHEd9g9sxjOEBk0he/J13qzPgw.tip8aTF4N/Sdany', NULL, 0, 0, NULL, NULL, NULL, '2023-08-17 16:18:54', '2023-08-17 16:18:54'),
(82, 'android', 'ar', 'Ahmed ali', 'ahmed2020@gmail.com', '01', 'yduow0FrtmSPyT3QFXwfR3Isw1692432240', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, '$2y$10$q5dkdk7QqUZ1QE4CNds6iufNwrV0Dvps4CvTxApI6qp2i5OZQkinC', NULL, 0, 0, NULL, NULL, NULL, '2023-08-19 17:04:00', '2023-08-19 17:04:00'),
(83, 'android', 'en', 'Ahmed alo', 'ahmed2020', '01091821804', 'lyJudqaBaY30T89IYwKV40pbq1692432375', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, '169243340364e07bfb06617.jpeg', NULL, '$2y$10$Wo0O4BRryn8CMhiCadlNaeBpPQoXx1fTvgPzW20HVn8OipBRSNbQq', NULL, 0, 0, NULL, NULL, NULL, '2023-08-19 17:06:15', '2023-08-19 17:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_likes`
--

CREATE TABLE `user_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_likes`
--

INSERT INTO `user_likes` (`id`, `meal_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 2, 4, '2021-05-15 11:29:22', '2021-05-15 11:29:22'),
(5, 2, 1, '2021-05-15 11:47:01', '2021-05-15 11:47:01'),
(7, 2, 9, '2021-05-22 01:32:12', '2021-05-22 01:32:12'),
(8, 1, 1, '2021-05-22 02:15:31', '2021-05-22 02:15:31'),
(54, 2, 8, '2021-08-06 09:15:05', '2021-08-06 09:15:05'),
(74, 1, 30, '2021-08-14 03:08:44', '2021-08-14 03:08:44'),
(78, 1, 25, '2021-08-16 18:52:36', '2021-08-16 18:52:36'),
(79, 2, 25, '2021-08-16 18:52:42', '2021-08-16 18:52:42'),
(81, 5, 8, '2021-08-29 06:10:12', '2021-08-29 06:10:12'),
(90, 4, 7, '2023-02-27 04:52:52', '2023-02-27 04:52:52'),
(96, 4, 37, '2023-03-12 14:39:38', '2023-03-12 14:39:38'),
(99, 5, 22, '2023-03-12 20:55:23', '2023-03-12 20:55:23'),
(102, 1, 7, '2023-03-26 07:57:09', '2023-03-26 07:57:09'),
(103, 2, 54, '2023-03-26 10:58:36', '2023-03-26 10:58:36'),
(105, 2, 57, '2023-04-01 07:16:50', '2023-04-01 07:16:50'),
(106, 1, 71, '2023-05-23 02:18:32', '2023-05-23 02:18:32'),
(107, 5, 75, '2023-05-27 19:12:47', '2023-05-27 19:12:47'),
(108, 1, 57, '2023-06-01 03:16:59', '2023-06-01 03:16:59'),
(109, 1, 78, '2023-06-02 03:23:00', '2023-06-02 03:23:00'),
(111, 2, 79, '2023-08-19 17:41:53', '2023-08-19 17:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` bigint(20) NOT NULL,
  `visa_value` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `visa_value`, `payment_status`, `user_id`, `expire_at`, `price`, `points`, `days`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, '300', 'paid', 22, '2021-10-29 12:02:47', '500', '50', '15', 'اسبوعين', '2 weeks', '2021-05-14 12:02:47', '2023-03-05 03:11:04'),
(2, '100', 'paid', 1, '2021-05-29 12:03:20', '500', '50', '15', 'اسبوعين', '2 weeks', '2021-05-14 12:03:20', '2023-03-04 22:51:48'),
(3, NULL, NULL, 9, '2021-08-20 01:31:45', '2500', '250', '90', '3 شهور', '3 months', '2021-05-22 01:31:45', '2021-05-22 01:31:45'),
(4, NULL, NULL, 7, '2021-07-27 20:22:18', '1500', '150', '60', 'شهرين', '2 months', '2021-05-28 20:22:18', '2021-05-28 20:22:18'),
(5, NULL, NULL, 8, '2021-09-24 01:08:29', '2500', '250', '90', '3 شهور', '3 months', '2021-06-26 01:08:29', '2021-06-26 01:08:29'),
(6, NULL, NULL, 8, '2021-08-25 01:11:41', '1500', '150', '60', 'شهرين', '2 months', '2021-06-26 01:11:41', '2021-06-26 01:11:41'),
(7, NULL, NULL, 7, '2021-07-14 04:40:01', '500', '50', '15', 'اسبوعين', '2 weeks', '2021-06-29 04:40:01', '2021-06-29 04:40:01'),
(8, NULL, NULL, 1, '2021-07-14 05:11:20', '500', '50', '15', 'اسبوعين', '2 weeks', '2021-06-29 05:11:20', '2021-06-29 05:11:20'),
(9, NULL, NULL, 8, '2021-11-01 01:28:18', '3000', '300', '90', 'الباقة الفضية', 'Silver Package', '2021-08-03 01:28:18', '2021-08-03 01:28:18'),
(10, NULL, NULL, 29, '2024-05-10 00:07:17', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2021-08-14 00:07:17', '2021-08-14 00:07:17'),
(11, NULL, NULL, 7, '2021-08-20 00:11:25', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2021-08-14 00:11:25', '2021-08-14 00:11:25'),
(12, NULL, NULL, 29, '2024-05-10 01:01:56', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2021-08-14 01:01:56', '2021-08-14 01:01:56'),
(13, NULL, NULL, 22, '2021-08-27 01:31:11', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2021-08-21 01:31:11', '2021-08-21 01:31:11'),
(14, NULL, NULL, 7, '2023-03-11 00:25:33', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 00:25:33', '2023-03-05 00:25:33'),
(15, NULL, NULL, 7, '2023-03-11 01:37:49', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 01:37:49', '2023-03-05 01:37:49'),
(16, NULL, NULL, 7, '2023-03-11 01:44:36', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 01:44:36', '2023-03-05 01:44:36'),
(17, NULL, NULL, 7, '2023-03-11 01:46:19', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 01:46:19', '2023-03-05 01:46:19'),
(18, NULL, NULL, 7, '2023-03-11 01:51:00', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 01:51:00', '2023-03-05 01:51:00'),
(19, NULL, NULL, 7, '2023-03-11 03:27:49', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 03:27:49', '2023-03-05 03:27:49'),
(20, NULL, NULL, 7, '2023-03-11 03:33:42', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 03:33:42', '2023-03-05 03:33:42'),
(21, NULL, NULL, 7, '2023-03-11 03:40:56', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 03:40:56', '2023-03-05 03:40:56'),
(22, NULL, NULL, 7, '2023-03-11 03:42:32', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 03:42:32', '2023-03-05 03:42:32'),
(23, NULL, NULL, 7, '2023-03-11 03:44:57', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 03:44:57', '2023-03-05 03:44:57'),
(24, NULL, NULL, 22, '2023-03-11 04:24:32', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:24:32', '2023-03-05 04:24:32'),
(25, NULL, NULL, 22, '2023-03-11 04:26:15', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:26:15', '2023-03-05 04:26:15'),
(26, NULL, NULL, 22, '2023-03-11 04:47:01', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:47:01', '2023-03-05 04:47:01'),
(27, NULL, NULL, 22, '2023-03-11 04:47:23', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:47:23', '2023-03-05 04:47:23'),
(28, NULL, NULL, 22, '2023-03-11 04:47:40', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:47:40', '2023-03-05 04:47:40'),
(29, NULL, NULL, 22, '2023-03-11 04:48:33', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:48:33', '2023-03-05 04:48:33'),
(30, NULL, NULL, 22, '2023-03-11 04:49:40', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:49:40', '2023-03-05 04:49:40'),
(31, NULL, NULL, 22, '2023-03-11 04:50:42', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:50:42', '2023-03-05 04:50:42'),
(32, NULL, NULL, 22, '2023-03-11 04:51:21', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:51:21', '2023-03-05 04:51:21'),
(33, '300', 'paid', 22, '2023-03-11 04:51:38', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:51:38', '2023-03-05 04:55:31'),
(34, '300', 'paid', 22, '2023-03-11 04:57:51', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:57:51', '2023-03-05 04:58:26'),
(35, NULL, NULL, 22, '2023-03-11 04:59:29', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 04:59:29', '2023-03-05 04:59:29'),
(36, '300', 'paid', 22, '2023-03-11 05:08:51', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:08:51', '2023-03-05 05:09:48'),
(37, NULL, NULL, 22, '2023-03-11 05:16:30', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:16:30', '2023-03-05 05:16:30'),
(38, NULL, NULL, 22, '2023-03-11 05:17:51', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:17:51', '2023-03-05 05:17:51'),
(39, NULL, NULL, 22, '2023-03-11 05:18:36', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:18:36', '2023-03-05 05:18:36'),
(40, NULL, NULL, 22, '2023-03-11 05:19:30', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:19:30', '2023-03-05 05:19:30'),
(41, NULL, NULL, 22, '2023-03-11 05:21:14', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:21:14', '2023-03-05 05:21:14'),
(42, NULL, NULL, 22, '2023-03-11 05:26:41', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:26:41', '2023-03-05 05:26:41'),
(43, NULL, NULL, 22, '2023-03-11 05:27:43', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:27:43', '2023-03-05 05:27:43'),
(44, NULL, NULL, 22, '2023-03-11 05:29:16', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:29:16', '2023-03-05 05:29:16'),
(45, NULL, NULL, 22, '2023-03-11 05:30:19', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:30:19', '2023-03-05 05:30:19'),
(46, NULL, NULL, 22, '2023-03-11 05:31:41', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:31:41', '2023-03-05 05:31:41'),
(47, NULL, NULL, 22, '2023-03-11 05:32:29', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:32:29', '2023-03-05 05:32:29'),
(48, NULL, NULL, 22, '2023-03-11 05:33:03', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:33:03', '2023-03-05 05:33:03'),
(49, NULL, NULL, 22, '2023-03-11 05:33:33', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:33:33', '2023-03-05 05:33:33'),
(50, NULL, NULL, 22, '2023-03-11 05:37:15', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-05 05:37:15', '2023-03-05 05:37:15'),
(51, NULL, NULL, 7, '2023-03-12 18:32:07', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 18:32:07', '2023-03-06 18:32:07'),
(52, NULL, NULL, 7, '2023-03-12 18:33:29', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 18:33:29', '2023-03-06 18:33:29'),
(53, '300', 'paid', 7, '2023-03-12 18:36:20', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 18:36:20', '2023-03-06 18:37:09'),
(54, NULL, NULL, 7, '2023-03-12 18:38:25', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 18:38:25', '2023-03-06 18:38:25'),
(55, NULL, NULL, 7, '2023-03-12 18:39:12', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 18:39:12', '2023-03-06 18:39:12'),
(56, NULL, NULL, 7, '2023-03-12 18:43:24', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 18:43:24', '2023-03-06 18:43:24'),
(57, NULL, NULL, 7, '2023-03-12 19:47:54', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 19:47:54', '2023-03-06 19:47:54'),
(58, NULL, NULL, 7, '2023-03-12 19:52:54', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 19:52:54', '2023-03-06 19:52:54'),
(59, NULL, NULL, 7, '2023-03-12 19:57:45', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 19:57:45', '2023-03-06 19:57:45'),
(60, NULL, NULL, 7, '2023-03-12 20:06:59', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-06 20:06:59', '2023-03-06 20:06:59'),
(61, NULL, NULL, 1, '2023-03-16 22:51:57', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-10 22:51:57', '2023-03-10 22:51:57'),
(62, '300', 'paid', 22, '2023-03-17 00:12:52', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-11 00:12:52', '2023-03-11 00:14:16'),
(63, NULL, NULL, 7, '2023-04-14 04:26:17', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-03-15 04:26:17', '2023-03-15 04:26:17'),
(64, NULL, NULL, 7, '2023-03-21 04:39:46', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-15 04:39:46', '2023-03-15 04:39:46'),
(65, NULL, NULL, 7, '2023-03-21 21:35:50', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-15 21:35:50', '2023-03-15 21:35:50'),
(66, '300', 'paid', 7, '2023-03-22 21:31:29', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-03-16 21:31:29', '2023-03-16 21:32:22'),
(67, NULL, NULL, 7, '2023-04-15 22:07:20', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-03-16 22:07:20', '2023-03-16 22:07:20'),
(68, NULL, NULL, 54, '2023-04-08 07:42:02', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 07:42:02', '2023-04-02 07:42:02'),
(69, NULL, NULL, 7, '2023-04-08 07:44:13', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 07:44:13', '2023-04-02 07:44:13'),
(70, NULL, NULL, 57, '2023-04-08 11:06:02', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:06:02', '2023-04-02 11:06:02'),
(71, NULL, NULL, 57, '2023-04-08 11:06:24', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:06:24', '2023-04-02 11:06:24'),
(72, NULL, NULL, 57, '2023-04-08 11:06:35', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:06:35', '2023-04-02 11:06:35'),
(73, NULL, NULL, 57, '2023-04-08 11:08:52', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:08:52', '2023-04-02 11:08:52'),
(74, NULL, NULL, 57, '2023-04-08 11:09:40', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:09:40', '2023-04-02 11:09:40'),
(75, NULL, NULL, 57, '2023-04-08 11:09:44', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:09:44', '2023-04-02 11:09:44'),
(76, NULL, NULL, 57, '2023-05-02 11:09:54', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-04-02 11:09:54', '2023-04-02 11:09:54'),
(77, NULL, NULL, 57, '2023-04-08 11:10:30', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:10:30', '2023-04-02 11:10:30'),
(78, NULL, NULL, 57, '2023-04-08 11:10:42', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:10:42', '2023-04-02 11:10:42'),
(79, NULL, NULL, 57, '2023-04-08 11:12:00', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:12:00', '2023-04-02 11:12:00'),
(80, NULL, NULL, 57, '2023-04-08 11:17:08', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:17:08', '2023-04-02 11:17:08'),
(81, NULL, NULL, 57, '2023-04-08 11:19:05', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:19:05', '2023-04-02 11:19:05'),
(82, NULL, NULL, 57, '2023-04-08 11:19:11', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:19:11', '2023-04-02 11:19:11'),
(83, '1000', 'paid', 57, '2023-05-02 11:19:20', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-04-02 11:19:20', '2023-04-02 11:20:34'),
(84, NULL, NULL, 57, '2023-05-02 11:20:57', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-04-02 11:20:57', '2023-04-02 11:20:57'),
(85, '300', 'paid', 7, '2023-04-08 11:39:14', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:39:14', '2023-04-02 11:39:57'),
(86, NULL, NULL, 7, '2023-04-08 11:40:28', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-02 11:40:28', '2023-04-02 11:40:28'),
(87, '25000', 'paid', 57, '2025-12-27 11:42:12', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 11:42:12', '2023-04-02 11:44:46'),
(88, '25000', 'paid', 57, '2025-12-27 11:46:17', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 11:46:17', '2023-04-02 11:47:32'),
(89, '25000', 'paid', 57, '2025-12-27 11:50:25', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 11:50:25', '2023-04-02 11:51:09'),
(90, '25000', 'paid', 57, '2025-12-27 11:51:58', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 11:51:58', '2023-04-02 11:53:44'),
(91, NULL, NULL, 57, '2025-12-27 12:00:01', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 12:00:01', '2023-04-02 12:00:01'),
(92, NULL, NULL, 57, '2025-12-27 12:04:25', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 12:04:25', '2023-04-02 12:04:25'),
(93, '25000', 'paid', 57, '2025-12-27 12:05:27', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 12:05:27', '2023-04-02 12:06:01'),
(94, '25000', 'paid', 57, '2025-12-27 12:06:54', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 12:06:54', '2023-04-02 12:07:21'),
(95, '25000', 'paid', 57, '2025-12-27 12:08:07', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 12:08:07', '2023-04-02 12:08:37'),
(96, '25000', 'paid', 57, '2025-12-27 12:10:14', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-02 12:10:14', '2023-04-02 12:10:50'),
(97, '25000', 'paid', 57, '2025-12-28 02:53:25', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 02:53:25', '2023-04-03 02:56:15'),
(98, NULL, NULL, 57, '2025-12-28 02:58:52', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 02:58:52', '2023-04-03 02:58:52'),
(99, NULL, NULL, 57, '2025-12-28 02:59:13', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 02:59:13', '2023-04-03 02:59:13'),
(100, NULL, NULL, 57, '2025-12-28 02:59:34', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 02:59:34', '2023-04-03 02:59:34'),
(101, NULL, NULL, 57, '2025-12-28 03:01:24', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 03:01:24', '2023-04-03 03:01:24'),
(102, '5000', 'paid', 57, '2023-09-30 03:01:59', '5000', '500', '180', 'الباقة الذهبية', 'Golden Package', '2023-04-03 03:01:59', '2023-04-03 03:02:34'),
(103, '8000', 'paid', 57, '2024-04-02 03:04:56', '8000', '800', '365', 'الباقة البلاتينية', 'Platinum Package', '2023-04-03 03:04:56', '2023-04-03 03:06:06'),
(104, '25000', 'paid', 57, '2025-12-28 03:08:27', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 03:08:27', '2023-04-03 03:09:25'),
(105, '8000', 'paid', 57, '2024-04-02 03:11:04', '8000', '800', '365', 'الباقة البلاتينية', 'Platinum Package', '2023-04-03 03:11:04', '2023-04-03 03:11:39'),
(106, '25000', 'paid', 57, '2025-12-28 03:12:51', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 03:12:51', '2023-04-03 03:14:10'),
(107, '300', 'paid', 54, '2023-04-09 03:42:41', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-04-03 03:42:41', '2023-04-03 03:43:25'),
(108, '25000', 'paid', 57, '2025-12-28 03:47:28', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-04-03 03:47:28', '2023-04-03 03:48:05'),
(109, NULL, NULL, 57, '2023-07-03 03:58:34', '3000', '300', '90', 'الباقة الفضية', 'Silver Package', '2023-04-04 03:58:34', '2023-04-04 03:58:34'),
(110, NULL, NULL, 71, '2026-02-16 02:20:27', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-05-23 02:20:27', '2023-05-23 02:20:27'),
(111, NULL, NULL, 71, '2026-02-16 02:21:03', '25000', '2500', '1000', 'الباقة ماسية', 'Diamond Package', '2023-05-23 02:21:03', '2023-05-23 02:21:03'),
(112, NULL, NULL, 75, '2023-06-02 19:13:50', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-27 19:13:50', '2023-05-27 19:13:50'),
(113, NULL, NULL, 75, '2023-06-02 19:17:03', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-27 19:17:03', '2023-05-27 19:17:03'),
(114, NULL, NULL, 75, '2023-06-02 19:45:10', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-27 19:45:10', '2023-05-27 19:45:10'),
(115, NULL, NULL, 75, '2023-06-02 19:45:20', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-27 19:45:20', '2023-05-27 19:45:20'),
(116, NULL, NULL, 75, '2023-06-02 19:45:41', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-27 19:45:41', '2023-05-27 19:45:41'),
(117, NULL, NULL, 75, '2023-06-02 19:46:04', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-27 19:46:04', '2023-05-27 19:46:04'),
(118, NULL, NULL, 75, '2023-06-04 02:23:23', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 02:23:23', '2023-05-29 02:23:23'),
(119, NULL, NULL, 75, '2023-06-04 02:32:43', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 02:32:43', '2023-05-29 02:32:43'),
(120, NULL, NULL, 75, '2023-06-04 02:34:34', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 02:34:34', '2023-05-29 02:34:34'),
(121, NULL, NULL, 75, '2023-06-04 03:03:00', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 03:03:00', '2023-05-29 03:03:00'),
(122, NULL, NULL, 75, '2023-06-04 19:51:43', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 19:51:43', '2023-05-29 19:51:43'),
(123, '300', 'paid', 75, '2023-06-04 21:56:27', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 21:56:27', '2023-05-29 21:59:39'),
(124, NULL, NULL, 75, '2023-06-04 22:06:01', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 22:06:01', '2023-05-29 22:06:01'),
(125, '300', 'paid', 75, '2023-06-04 22:14:32', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 22:14:32', '2023-05-29 22:15:09'),
(126, NULL, NULL, 75, '2023-06-04 23:34:29', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 23:34:29', '2023-05-29 23:34:29'),
(127, NULL, NULL, 75, '2023-06-04 23:38:07', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 23:38:07', '2023-05-29 23:38:07'),
(128, NULL, NULL, 75, '2023-06-04 23:40:44', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 23:40:44', '2023-05-29 23:40:44'),
(129, '300', 'paid', 7, '2023-06-04 23:42:45', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-29 23:42:45', '2023-05-29 23:51:45'),
(130, '300', 'paid', 7, '2023-06-05 00:20:41', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-30 00:20:41', '2023-05-30 03:25:17'),
(131, '300', 'paid', 7, '2023-06-05 05:13:12', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-30 05:13:12', '2023-05-30 05:14:23'),
(132, '300', 'paid', 7, '2023-06-06 03:04:59', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-31 03:04:59', '2023-05-31 03:05:49'),
(133, '300', 'paid', 7, '2023-06-06 03:14:52', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-05-31 03:14:52', '2023-05-31 03:15:17'),
(134, '1000', 'paid', 7, '2023-06-30 03:15:42', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-05-31 03:15:42', '2023-05-31 03:16:06'),
(135, '3000', 'paid', 78, '2023-08-31 03:18:54', '3000', '300', '90', 'الباقة الفضية', 'Silver Package', '2023-06-02 03:18:54', '2023-06-02 03:19:44'),
(136, NULL, NULL, 7, '2023-09-08 19:55:18', '3000', '300', '90', 'الباقة الفضية', 'Silver Package', '2023-06-10 19:55:18', '2023-06-10 19:55:18'),
(137, NULL, NULL, 79, '2023-07-10 19:59:05', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-06-10 19:59:05', '2023-06-10 19:59:05'),
(138, NULL, NULL, 7, '2023-06-16 20:19:32', '300', '30', '6', 'الباقة الزرقاء', 'Blue Package', '2023-06-10 20:19:32', '2023-06-10 20:19:32'),
(139, NULL, NULL, 80, '2023-07-08 08:11:24', '300', '30', '10', 'الباقة الزرقاء', 'Blue Package', '2023-06-28 08:11:24', '2023-06-28 08:11:24'),
(140, NULL, NULL, 78, '2023-09-15 03:27:29', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-08-16 03:27:29', '2023-08-16 03:27:29'),
(141, NULL, NULL, 83, '2023-08-29 17:06:58', '300', '30', '10', 'الباقة الزرقاء', 'Blue Package', '2023-08-19 17:06:58', '2023-08-19 17:06:58'),
(142, NULL, NULL, 83, '2023-09-18 17:07:01', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-08-19 17:07:01', '2023-08-19 17:07:01'),
(143, NULL, NULL, 83, '2023-11-17 17:07:03', '3000', '300', '90', 'الباقة الفضية', 'Silver Package', '2023-08-19 17:07:03', '2023-08-19 17:07:03'),
(144, NULL, NULL, 83, '2023-08-29 17:10:03', '300', '30', '10', 'الباقة الزرقاء', 'Blue Package', '2023-08-19 17:10:03', '2023-08-19 17:10:03'),
(145, NULL, NULL, 83, '2023-08-29 17:10:26', '300', '30', '10', 'الباقة الزرقاء', 'Blue Package', '2023-08-19 17:10:26', '2023-08-19 17:10:26'),
(146, NULL, NULL, 83, '2023-08-29 17:10:33', '300', '30', '10', 'الباقة الزرقاء', 'Blue Package', '2023-08-19 17:10:33', '2023-08-19 17:10:33'),
(147, NULL, NULL, 83, '2023-08-29 17:10:41', '300', '30', '10', 'الباقة الزرقاء', 'Blue Package', '2023-08-19 17:10:41', '2023-08-19 17:10:41'),
(148, NULL, NULL, 76, '2023-09-25 15:57:34', '1000', '100', '30', 'الباقة البرونزية', 'Bronze Package', '2023-08-26 15:57:34', '2023-08-26 15:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wallet_old_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_new_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_old_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_new_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `user_id`, `order_id`, `subscription_id`, `wallet_old_value`, `wallet_new_value`, `points_old_value`, `points_new_value`, `description_ar`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 22, 9, NULL, '40', '40', '290', '278', 'طلب جديد من النقاط', NULL, '2021-08-17 01:58:49', '2021-08-17 01:58:49'),
(2, 29, 10, NULL, '49890', '49620', '4968', '4968', 'طلب جديد من الباقة', NULL, '2021-08-19 21:48:54', '2021-08-19 21:48:54'),
(3, 22, 11, NULL, '40', '40', '278', '253', 'طلب جديد من النقاط', NULL, '2021-08-21 01:10:18', '2021-08-21 01:10:18'),
(4, 22, 12, NULL, '40', '40', '253', '228', 'طلب جديد من النقاط', 'New order from the points', '2021-08-21 01:22:01', '2021-08-21 01:22:01'),
(6, 22, NULL, 13, '40', '340', '228', '258', 'شحن للباقة بقيمة: 300 و 30 نقظة ', 'Shipping the package with: 300 & 30 point ', '2021-08-21 01:31:11', '2021-08-21 01:31:11'),
(24, 7, 31, NULL, '200', '50', '230', '230', 'طلب جديد من الباقة', 'New order from the package', '2021-08-23 03:39:48', '2021-08-23 03:39:48'),
(25, 7, 32, NULL, '50', '50', '230', '218', 'طلب جديد من النقاط', 'New order from the points', '2021-08-23 03:39:54', '2021-08-23 03:39:54'),
(26, 8, 33, NULL, '6130', '5910', '236', '236', 'طلب جديد من الباقة', 'New order from the package', '2021-08-29 06:02:29', '2021-08-29 06:02:29'),
(27, 8, 34, NULL, '5910', '5910', '236', '217', 'طلب جديد من النقاط', 'New order from the points', '2021-08-29 06:02:34', '2021-08-29 06:02:34'),
(28, 29, 35, NULL, '49620', '49620', '4968', '4949', 'طلب جديد من النقاط', 'New order from the points', '2021-08-29 06:07:01', '2021-08-29 06:07:01'),
(29, 29, 36, NULL, '49620', '49410', '4949', '4949', 'طلب جديد من الباقة', 'New order from the package', '2021-08-29 06:07:05', '2021-08-29 06:07:05'),
(30, 7, NULL, 14, '50', '350', '218', '248', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 00:25:33', '2023-03-05 00:25:33'),
(31, 7, NULL, 15, '350', '650', '248', '278', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 01:37:49', '2023-03-05 01:37:49'),
(32, 7, NULL, 16, '650', '950', '278', '308', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 01:44:36', '2023-03-05 01:44:36'),
(33, 7, NULL, 17, '950', '1250', '308', '338', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 01:46:19', '2023-03-05 01:46:19'),
(34, 7, NULL, 18, '1250', '1550', '338', '368', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 01:51:00', '2023-03-05 01:51:00'),
(35, 7, NULL, 19, '1550', '1850', '368', '398', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 03:27:49', '2023-03-05 03:27:49'),
(36, 7, NULL, 20, '1850', '2150', '398', '428', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 03:33:42', '2023-03-05 03:33:42'),
(37, 7, NULL, 21, '2150', '2450', '428', '458', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 03:40:56', '2023-03-05 03:40:56'),
(38, 7, NULL, 22, '2450', '2750', '458', '488', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 03:42:32', '2023-03-05 03:42:32'),
(39, 7, NULL, 23, '2750', '3050', '488', '518', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 03:44:57', '2023-03-05 03:44:57'),
(40, 22, NULL, 24, '340', '640', '258', '288', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 04:24:32', '2023-03-05 04:24:32'),
(41, 22, NULL, 25, '640', '940', '288', '318', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 04:26:15', '2023-03-05 04:26:15'),
(42, 7, 37, NULL, '3050', '3050', '518', '518', 'طلب جديد اون لاين', 'New order online', '2023-03-05 04:48:42', '2023-03-05 04:48:42'),
(43, 22, NULL, 36, '940', '1240', '318', '348', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-05 05:16:24', '2023-03-05 05:16:24'),
(44, 7, NULL, 53, '3050', '3350', '518', '548', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-06 18:37:09', '2023-03-06 18:37:09'),
(45, 7, 38, NULL, '3350', '3350', '548', '548', 'طلب جديد اون لاين', 'New order online', '2023-03-08 00:39:47', '2023-03-08 00:39:47'),
(46, 22, 46, NULL, '1240', '1050', '348', '348', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 11:37:45', '2023-03-08 11:37:45'),
(47, 22, 47, NULL, '1050', '860', '348', '348', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 11:43:20', '2023-03-08 11:43:20'),
(48, 22, 48, NULL, '860', '670', '348', '348', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 11:55:01', '2023-03-08 11:55:01'),
(49, 22, 49, NULL, '670', '480', '348', '348', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 11:57:47', '2023-03-08 11:57:47'),
(50, 22, 50, NULL, '480', '290', '348', '348', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 11:59:04', '2023-03-08 11:59:04'),
(51, 22, 51, NULL, '290', '100', '348', '348', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 12:03:37', '2023-03-08 12:03:37'),
(52, 22, 52, NULL, '100', '0', '348', '303', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 12:04:29', '2023-03-08 12:04:29'),
(53, 22, 53, NULL, '0', '0', '303', '208', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 12:04:48', '2023-03-08 12:04:48'),
(54, 22, 54, NULL, '0', '0', '208', '113', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 12:05:29', '2023-03-08 12:05:29'),
(55, 22, 55, NULL, '0', '0', '113', '18', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 12:07:16', '2023-03-08 12:07:16'),
(56, 22, 56, NULL, '0', '0', '18', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 12:07:35', '2023-03-08 12:07:35'),
(57, 7, 57, NULL, '3350', '2970', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 19:49:36', '2023-03-08 19:49:36'),
(58, 7, 60, NULL, '2970', '2240', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 20:14:29', '2023-03-08 20:14:29'),
(59, 7, 61, NULL, '2240', '1860', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 20:17:31', '2023-03-08 20:17:31'),
(60, 7, 62, NULL, '1860', '1480', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 20:18:39', '2023-03-08 20:18:39'),
(61, 7, 63, NULL, '1480', '1100', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 20:19:35', '2023-03-08 20:19:35'),
(62, 7, 64, NULL, '1100', '720', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-08 20:22:07', '2023-03-08 20:22:07'),
(63, 22, NULL, 62, '0', '300', '0', '30', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-11 00:14:16', '2023-03-11 00:14:16'),
(64, 22, 65, NULL, '300', '110', '30', '30', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 00:15:48', '2023-03-11 00:15:48'),
(65, 22, 66, NULL, '110', '0', '30', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 00:50:01', '2023-03-11 00:50:01'),
(66, 7, 67, NULL, '720', '277.5', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 20:07:12', '2023-03-11 20:07:12'),
(67, 7, 68, NULL, '278', '48', '548', '548', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 22:33:50', '2023-03-11 22:33:50'),
(68, 7, 69, NULL, '48', '0', '548', '457', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 23:05:21', '2023-03-11 23:05:21'),
(69, 7, 70, NULL, '0', '0', '457', '342', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 23:09:17', '2023-03-11 23:09:17'),
(70, 7, 71, NULL, '0', '0', '342', '227', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 23:11:41', '2023-03-11 23:11:41'),
(71, 7, 72, NULL, '0', '0', '227', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-03-11 23:12:41', '2023-03-11 23:12:41'),
(72, 22, NULL, 1, '0', '500', '0', '50', 'شحن للباقة بقيمة: 500 جنبة و 50 نقظة ', 'Shipping the package with: 500 EGP & 50 point ', '2023-03-11 23:16:58', '2023-03-11 23:16:58'),
(73, 22, 85, NULL, '500', '310', '50', '50', 'طلب جديد من الباقة', 'New order from the package', '2023-03-12 01:14:05', '2023-03-12 01:14:05'),
(74, 22, 92, NULL, '310', '90', '50', '50', 'طلب جديد من الباقة', 'New order from the package', '2023-03-12 06:04:04', '2023-03-12 06:04:04'),
(75, 7, NULL, 66, '0', '300', '0', '30', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-03-16 21:32:22', '2023-03-16 21:32:22'),
(76, 7, 97, NULL, '300', '0', '30', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-03-16 22:05:55', '2023-03-16 22:05:55'),
(77, 1, NULL, NULL, '450', '450', '150', '150', 'تعديل تاريخ انتهاء الاشتراك من مدير النظام: 2023-03-02', 'Admin updated the expiration date of subscription: 2023-03-02', '2023-03-18 09:27:46', '2023-03-18 09:27:46'),
(78, 57, NULL, 83, '0', '1000', '0', '100', 'شحن للباقة بقيمة: 1000 جنبة و 100 نقظة ', 'Shipping the package with: 1000 EGP & 100 point ', '2023-04-02 11:20:34', '2023-04-02 11:20:34'),
(79, 7, NULL, 85, '0', '300', '0', '30', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-04-02 11:39:57', '2023-04-02 11:39:57'),
(80, 57, NULL, 87, '1000', '26000', '100', '2600', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 11:44:46', '2023-04-02 11:44:46'),
(81, 57, NULL, 88, '26000', '51000', '2600', '5100', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 11:47:32', '2023-04-02 11:47:32'),
(82, 57, NULL, 89, '51000', '76000', '5100', '7600', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 11:51:09', '2023-04-02 11:51:09'),
(83, 57, NULL, 90, '76000', '101000', '7600', '10100', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 11:53:44', '2023-04-02 11:53:44'),
(84, 57, NULL, 93, '101000', '126000', '10100', '12600', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 12:06:01', '2023-04-02 12:06:01'),
(85, 57, NULL, 94, '126000', '151000', '12600', '15100', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 12:07:21', '2023-04-02 12:07:21'),
(86, 57, NULL, 95, '151000', '176000', '15100', '17600', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 12:08:37', '2023-04-02 12:08:37'),
(87, 57, NULL, 96, '176000', '201000', '17600', '20100', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-02 12:10:50', '2023-04-02 12:10:50'),
(88, 57, NULL, 97, '201000', '226000', '20100', '22600', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-03 02:56:15', '2023-04-03 02:56:15'),
(89, 57, NULL, 102, '226000', '231000', '22600', '23100', 'شحن للباقة بقيمة: 5000 جنبة و 500 نقظة ', 'Shipping the package with: 5000 EGP & 500 point ', '2023-04-03 03:02:34', '2023-04-03 03:02:34'),
(90, 57, NULL, 103, '231000', '239000', '23100', '23900', 'شحن للباقة بقيمة: 8000 جنبة و 800 نقظة ', 'Shipping the package with: 8000 EGP & 800 point ', '2023-04-03 03:06:06', '2023-04-03 03:06:06'),
(91, 57, NULL, 104, '239000', '264000', '23900', '26400', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-03 03:09:25', '2023-04-03 03:09:25'),
(92, 57, NULL, 105, '264000', '272000', '26400', '27200', 'شحن للباقة بقيمة: 8000 جنبة و 800 نقظة ', 'Shipping the package with: 8000 EGP & 800 point ', '2023-04-03 03:11:39', '2023-04-03 03:11:39'),
(93, 57, NULL, 106, '272000', '297000', '27200', '29700', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-03 03:14:10', '2023-04-03 03:14:10'),
(94, 54, NULL, 107, '0', '300', '0', '30', 'شحن للباقة بقيمة: 300 جنبة و 30 نقظة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-04-03 03:43:25', '2023-04-03 03:43:25'),
(95, 57, NULL, 108, '297000', '322000', '29700', '32200', 'شحن للباقة بقيمة: 25000 جنبة و 2500 نقظة ', 'Shipping the package with: 25000 EGP & 2500 point ', '2023-04-03 03:48:05', '2023-04-03 03:48:05'),
(96, 57, 101, NULL, '322000', '321355', '32200', '32200', 'طلب جديد من الباقة', 'New order from the package', '2023-04-05 04:16:07', '2023-04-05 04:16:07'),
(97, 57, 102, NULL, '321355', '320710', '32200', '32200', 'طلب جديد من الباقة', 'New order from the package', '2023-04-05 04:25:36', '2023-04-05 04:25:36'),
(98, 57, 103, NULL, '320710', '320065', '32200', '32200', 'طلب جديد من الباقة', 'New order from the package', '2023-04-05 04:32:43', '2023-04-05 04:32:43'),
(99, 54, 106, NULL, '300', '0', '30', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-04-05 04:41:36', '2023-04-05 04:41:36'),
(100, 54, 107, NULL, '0', '0', '0', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-04-05 04:41:55', '2023-04-05 04:41:55'),
(101, 54, 108, NULL, '0', '0', '0', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-04-05 04:43:11', '2023-04-05 04:43:11'),
(102, 57, 120, NULL, '320065', '319655', '32200', '32200', 'طلب جديد من الباقة', 'New order from the package', '2023-04-05 05:44:51', '2023-04-05 05:44:51'),
(103, 57, 121, NULL, '319655', '319245', '32200', '32200', 'طلب جديد من الباقة', 'New order from the package', '2023-04-07 01:43:54', '2023-04-07 01:43:54'),
(104, 57, 126, NULL, '319245', '318815', '32200', '32200', 'طلب جديد من الباقة', 'New order from the package', '2023-04-08 20:57:50', '2023-04-08 20:57:50'),
(105, 75, NULL, 123, '0', '300', '0', '30', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-05-29 21:59:39', '2023-05-29 21:59:39'),
(106, 75, NULL, 125, '300', '600', '30', '60', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-05-29 22:15:09', '2023-05-29 22:15:09'),
(107, 7, NULL, 129, '300', '600', '30', '60', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-05-29 23:51:45', '2023-05-29 23:51:45'),
(108, 7, NULL, 130, '600', '900', '60', '90', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-05-30 03:25:17', '2023-05-30 03:25:17'),
(109, 7, NULL, 131, '900', '1200', '90', '120', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-05-30 05:14:23', '2023-05-30 05:14:23'),
(110, 7, NULL, 132, '1200', '1500', '120', '150', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-05-31 03:05:49', '2023-05-31 03:05:49'),
(111, 7, 139, NULL, '1500', '1070', '150', '150', 'طلب جديد من الباقة', 'New order from the package', '2023-05-31 03:07:14', '2023-05-31 03:07:14'),
(112, 7, 141, NULL, '1070', '640', '150', '150', 'طلب جديد من الباقة', 'New order from the package', '2023-05-31 03:09:58', '2023-05-31 03:09:58'),
(113, 7, 142, NULL, '640', '260', '150', '150', 'طلب جديد من الباقة', 'New order from the package', '2023-05-31 03:11:04', '2023-05-31 03:11:04'),
(114, 7, 143, NULL, '260', '0', '150', '0', 'طلب جديد من الباقة', 'New order from the package', '2023-05-31 03:12:01', '2023-05-31 03:12:01'),
(115, 7, NULL, 133, '0', '300', '0', '30', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-05-31 03:15:17', '2023-05-31 03:15:17'),
(116, 7, NULL, 134, '300', '1300', '30', '130', 'شحن للباقة بقيمة: 1000 جنية و 100 نقطة ', 'Shipping the package with: 1000 EGP & 100 point ', '2023-05-31 03:16:06', '2023-05-31 03:16:06'),
(117, 75, NULL, 123, '600', '900', '60', '90', 'شحن للباقة بقيمة: 300 جنية و 30 نقطة ', 'Shipping the package with: 300 EGP & 30 point ', '2023-06-01 20:19:28', '2023-06-01 20:19:28'),
(118, 78, NULL, 135, '0', '3000', '0', '300', 'شحن للباقة بقيمة: 3000 جنية و 300 نقطة ', 'Shipping the package with: 3000 EGP & 300 point ', '2023-06-02 03:19:44', '2023-06-02 03:19:44'),
(119, 80, NULL, NULL, '0', '0', '0', '0', 'تعديل تاريخ انتهاء الاشتراك من مدير النظام: 2023-07-25', 'Admin updated the expiration date of subscription: 2023-07-25', '2023-07-15 07:35:54', '2023-07-15 07:35:54'),
(120, 80, NULL, NULL, '0', '0', '0', '0', 'تعديل تاريخ انتهاء الاشتراك من مدير النظام: 2023-07-12', 'Admin updated the expiration date of subscription: 2023-07-12', '2023-07-15 07:36:13', '2023-07-15 07:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('activate','reset') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `role`, `type`, `phone`, `code`, `expire_at`) VALUES
(1, 'user', 'activate', '01212212121', '1131', '2021-05-13 00:18:28'),
(2, 'user', 'activate', '012345677880', '2324', '2021-05-13 09:43:23'),
(3, 'user', 'activate', '012345679', '7536', '2021-05-13 05:01:05'),
(4, 'user', 'activate', '012345677880', '1700', '2021-05-13 09:57:43'),
(5, 'user', 'activate', '0123456789', '3763', '2021-05-13 11:06:36'),
(6, 'user', 'activate', '0123456788', '8363', '2021-05-13 11:15:32'),
(7, 'user', 'activate', '0123456787', '9722', '2021-05-13 11:17:17'),
(8, 'user', 'activate', '01123456789', '8752', '2021-05-13 11:18:49'),
(9, 'user', 'activate', '01090624441', '5693', '2021-05-15 02:12:55'),
(10, 'user', 'activate', '01090624441', '1074', '2021-05-15 02:14:36'),
(11, 'user', 'activate', '01099667851', '6388', '2021-05-16 09:51:28'),
(12, 'user', 'activate', '01099667851', '8205', '2021-05-22 02:13:38'),
(13, 'user', 'activate', '01099667851', '7394', '2021-05-22 02:24:41'),
(14, 'user', 'activate', '0100200300', '1636', '2021-05-22 02:27:25'),
(15, 'user', 'activate', '01090624441', '6843', '2021-06-11 00:33:17'),
(16, 'user', 'activate', '01090624441', '8835', '2021-06-11 00:33:40'),
(17, 'user', 'activate', '01090624441', '2988', '2021-06-11 00:34:04'),
(18, 'user', 'activate', '01016171926', '6015', '2021-06-12 05:54:23'),
(19, 'user', 'activate', '01016171926', '8982', '2021-06-21 07:06:37'),
(20, 'user', 'activate', '01016171929', '1754', '2021-06-21 07:12:52'),
(21, 'user', 'activate', 'andrewalbert93501@gmail.com', '7562', '2021-08-31 10:58:18'),
(22, 'user', 'activate', 'andrewalbert93501@gmail.com', '7264', '2021-07-15 21:33:46'),
(24, 'user', 'activate', 'andrewalbert93501@gmail.com', '1477', '2021-07-15 21:57:23'),
(25, 'user', 'activate', 'andrewakramalbert@gmail.com', '1061', '2021-07-15 22:02:09'),
(26, 'user', 'activate', 'melnagar271@gmail.com', '2531', '2021-07-15 23:05:51'),
(27, 'user', 'activate', 'andrewalbert93501@gmail.com', '4468', '2021-07-15 23:15:06'),
(28, 'user', 'activate', 'ahzain912@gmail.com', '6935', '2021-07-16 04:12:32'),
(29, 'user', 'activate', 'power-stone@hotmail.com', '8785', '2021-07-16 19:39:06'),
(30, 'user', 'activate', 'yy@yy.com', '3865', '2021-07-16 21:51:17'),
(31, 'user', 'activate', 'ehab.alhhab@windowslive.com', '8870', '2021-07-31 23:06:46'),
(32, 'user', 'activate', 'melnagar271@gmail.com', '9194', '2021-08-03 02:18:03'),
(33, 'user', 'activate', 'melnagar271@gmail.com', '4186', '2021-08-03 02:19:17'),
(34, 'user', 'activate', 'enas_m80@live.com', '9586', '2021-08-07 07:18:56'),
(35, 'user', 'activate', 'tesy@gmail.com', '9752', '2021-08-14 02:48:15'),
(36, 'user', 'activate', 'abooda-k@hotmail.com', '6706', '2021-08-17 03:19:25'),
(37, 'user', 'activate', 'mabdo1822@gmail.com', '6958', '2021-08-20 23:11:45'),
(38, 'user', 'activate', 'andrewalbert93501@gmail.com', '1683', '2021-08-31 23:40:07'),
(39, 'user', 'activate', 'andrewalbert93501@gmail.com', '7595', '2021-08-31 23:42:25'),
(40, 'user', 'activate', 'melnagar271@gmail.com', '1701', '2021-09-01 00:06:47'),
(41, 'user', 'activate', 'melnagar271@gmail.com', '5608', '2021-09-01 00:11:22'),
(42, 'user', 'activate', 'melnagar271@gmail.com', '3720', '2021-09-06 23:00:18'),
(43, 'user', 'activate', 'mo015@mo.com', '1315', '2021-09-06 23:03:13'),
(44, 'user', 'activate', 'mo010@mo.com', '7130', '2021-09-06 23:05:34'),
(45, 'user', 'activate', 'power-stone@hotmail.com', '3317', '2021-09-07 07:11:42'),
(46, 'user', 'activate', 'sss@ww.com', '8429', '2021-09-09 07:59:11'),
(47, 'user', 'activate', 'sss@w.com', '6425', '2021-09-09 07:59:59'),
(48, 'user', 'activate', 'melnagar271@gmail.com', '2839', '2021-10-22 08:15:48'),
(49, 'user', 'activate', 'melnagar271@gmail.com', '5009', '2021-10-22 08:17:00'),
(50, 'user', 'activate', 'eslam.maged00@gmail.com', '2243', '2021-10-23 00:55:19'),
(51, 'user', 'activate', 'eslam.maged@gmail.com', '3270', '2021-10-23 00:55:58'),
(52, 'user', 'activate', 'melnagar271@gmail.com', '1111', '2023-02-20 02:55:36'),
(53, 'user', 'activate', 'eslam@gmail.com', '1111', '2023-02-21 00:01:43'),
(54, 'user', 'activate', 'melnagar271@gmail.com', '1111', '2023-03-04 18:58:09'),
(55, 'user', 'activate', 'eslam.maged00@gmail.com', '1111', '2023-03-15 11:36:53'),
(56, 'user', 'activate', 'eslam.maged00@gmail.com', '1111', '2023-03-15 12:11:10'),
(57, 'user', 'activate', 'eslam.maged00@gmail.com', '1111', '2023-03-15 12:20:34'),
(58, 'user', 'activate', 'a.alashmony@allochefeg.com', '1111', '2023-03-23 09:25:51'),
(59, 'user', 'activate', 'hossam@gmail.com', '1111', '2023-03-24 00:48:42'),
(60, 'user', 'activate', 'njj@g.m', '1111', '2023-03-26 08:37:53'),
(61, 'user', 'activate', 'melnagar271@gmail.com', '1111', '2023-03-26 08:58:19'),
(62, 'user', 'activate', 'melnagar271@gmail.com', '1111', '2023-03-26 09:02:55'),
(63, 'user', 'activate', 'magedhassanin1@gmail.com', '1111', '2023-03-26 11:53:05'),
(64, 'user', 'activate', 'hossamabosaleh44@gmail.com', '1111', '2023-03-27 23:32:51'),
(65, 'user', 'activate', 'hossamabosaleh44@gmail.com', '1111', '2023-03-28 07:45:46'),
(66, 'user', 'activate', 'hossamabosaleh4@gmail.com', '1111', '2023-03-28 12:39:14'),
(67, 'user', 'activate', '088890', '1111', '2023-03-29 01:31:51'),
(68, 'user', 'activate', '0888909', '1111', '2023-03-29 01:34:13'),
(69, 'user', 'activate', '9988', '1111', '2023-03-29 06:47:10'),
(70, 'user', 'activate', '7766', '1111', '2023-03-29 06:50:32'),
(71, 'user', 'activate', '0123456778801', '1111', '2023-03-29 06:57:00'),
(72, 'user', 'activate', '77667', '1111', '2023-03-29 06:58:11'),
(73, 'user', 'activate', '+201113405859', '1111', '2023-03-29 21:27:54'),
(74, 'user', 'activate', '+201113405859', '1111', '2023-03-29 21:28:29'),
(75, 'user', 'activate', '+201113405859', '1111', '2023-03-29 21:29:49'),
(76, 'user', 'activate', '01010', '1111', '2023-03-29 21:31:50'),
(77, 'user', 'activate', '358688', '1111', '2023-03-29 23:29:08'),
(78, 'user', 'activate', '+201113405859', '1111', '2023-04-01 04:05:49'),
(79, 'user', 'activate', '01090624441', '1111', '2023-04-01 22:14:52'),
(80, 'user', 'activate', '01022721140', '1111', '2023-04-01 22:51:15'),
(81, 'user', 'activate', '01001525660', '1111', '2023-05-23 03:10:30'),
(82, 'user', 'activate', '01090624441', '1111', '2023-05-27 19:21:48'),
(83, 'user', 'activate', '01030407100', '4221', '2023-05-27 20:10:22'),
(84, 'user', 'activate', '01030407100', '1111', '2023-05-27 19:29:34'),
(85, 'user', 'activate', '01030407100', '1111', '2023-05-27 19:30:10'),
(86, 'user', 'activate', '01128570038', '1111', '2023-05-27 19:30:43'),
(87, 'user', 'activate', '01128570038', '1111', '2023-05-27 19:38:04'),
(88, 'user', 'activate', '01030407100', '1111', '2023-05-27 19:48:49'),
(89, 'user', 'activate', '01030407100', '1111', '2023-05-27 19:51:47'),
(90, 'user', 'activate', '01030407100', '1703', '2023-05-27 20:02:45'),
(91, 'user', 'activate', '01276718501', '5918', '2023-05-27 20:14:02'),
(92, 'user', 'activate', '01010030036', '7870', '2023-05-29 03:39:43'),
(93, 'user', 'activate', '01010030036', '2069', '2023-05-29 03:40:48'),
(94, 'user', 'activate', '01016450420', '4039', '2023-06-02 04:15:22'),
(95, 'user', 'activate', '01030407100', '9960', '2023-06-01 20:06:24'),
(96, 'user', 'activate', '01016450420', '3781', '2023-06-02 00:11:38'),
(97, 'user', 'activate', '01093195576', '6025', '2023-06-02 02:54:15'),
(98, 'user', 'activate', '01016450420', '4444', '2023-06-02 03:08:30'),
(99, 'user', 'activate', '01093195576', '3932', '2023-06-02 03:30:33'),
(100, 'user', 'activate', '01094641332', '4790', '2023-06-10 20:55:37'),
(101, 'user', 'activate', '01061334326', '8725', '2023-06-28 08:08:59'),
(102, 'user', 'activate', '971568807761', '1909', '2023-08-17 17:18:54'),
(103, 'user', 'activate', '971568807761', '5650', '2023-08-17 17:23:10'),
(104, 'user', 'activate', '01', '4255', '2023-08-19 18:04:01'),
(105, 'user', 'activate', '01091821804', '9742', '2023-08-19 18:06:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_explanations`
--
ALTER TABLE `app_explanations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copons`
--
ALTER TABLE `copons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delegates`
--
ALTER TABLE `delegates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delegates_phone_unique` (`phone`),
  ADD UNIQUE KEY `delegates_email_unique` (`email`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_phone_unique` (`phone`),
  ADD UNIQUE KEY `drivers_email_unique` (`email`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_user_id_foreign` (`user_id`),
  ADD KEY `locations_region_id_foreign` (`region_id`),
  ADD KEY `locations_city_id_foreign` (`city_id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_images`
--
ALTER TABLE `meal_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_images_meal_id_foreign` (`meal_id`);

--
-- Indexes for table `meal_ingredients`
--
ALTER TABLE `meal_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_ingredients_meal_id_foreign` (`meal_id`);

--
-- Indexes for table `meal_rates`
--
ALTER TABLE `meal_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_period_id_foreign` (`period_id`),
  ADD KEY `orders_location_id_foreign` (`location_id`);

--
-- Indexes for table `order_meals`
--
ALTER TABLE `order_meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_meals_order_id_foreign` (`order_id`),
  ADD KEY `order_meals_meal_id_foreign` (`meal_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_ways`
--
ALTER TABLE `payment_ways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_city_id_foreign` (`city_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedualed_meals`
--
ALTER TABLE `schedualed_meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedualed_meals_meal_id_foreign` (`meal_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_region_id_foreign` (`region_id`);

--
-- Indexes for table `user_likes`
--
ALTER TABLE `user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_likes_meal_id_foreign` (`meal_id`),
  ADD KEY `user_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wallets_user_id` (`user_id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app_explanations`
--
ALTER TABLE `app_explanations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `copons`
--
ALTER TABLE `copons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `delegates`
--
ALTER TABLE `delegates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `meal_images`
--
ALTER TABLE `meal_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meal_ingredients`
--
ALTER TABLE `meal_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `meal_rates`
--
ALTER TABLE `meal_rates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `order_meals`
--
ALTER TABLE `order_meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `payment_ways`
--
ALTER TABLE `payment_ways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedualed_meals`
--
ALTER TABLE `schedualed_meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `user_likes`
--
ALTER TABLE `user_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meal_images`
--
ALTER TABLE `meal_images`
  ADD CONSTRAINT `meal_images_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_ingredients`
--
ALTER TABLE `meal_ingredients`
  ADD CONSTRAINT `meal_ingredients_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_period_id_foreign` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
