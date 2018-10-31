-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2018 at 03:17 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guidelines`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT 'hide',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `category_id`, `name`, `url`, `icon`, `order`, `description`, `image`, `images`, `slug`, `status`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Powered by Laravel 5', '', 'ti-stats-up', 0, 'We have tried to make use of all features of Laravel 5 which help you to develop the website with all resources available online.​ ', '', NULL, 'powered-by-laravel-5-5', 'show', 1, 'App\\User', '2016/07/21/104902202', NULL, NULL, NULL),
(2, 1, 'Configure to your project', '', 'ti-ruler-pencil', 0, 'Lavalite helps you to configure your Laravel projects easily. It acts as a bootstrapper for your Laravel Content Management System.', '', NULL, 'configure-to-your-project', 'show', 1, 'App\\User', '2016/07/21/104854884', NULL, NULL, NULL),
(3, 1, 'Online package builder', '', 'ti-package', 0, 'The online package builder helps you to build Lavalite packages easily, The downloaded package with basic required files help you to finish your projects quickly.', '', NULL, 'online-package-builder', 'show', 1, 'App\\User', '2016/07/21/104846403', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `block_categories`
--

CREATE TABLE `block_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT 'hide',
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `block_categories`
--

INSERT INTO `block_categories` (`id`, `name`, `slug`, `title`, `details`, `status`, `user_type`, `user_id`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Features', 'features', 'Packed with features you can\'t live without.', 'Visit our <a href=\"https://lavalite.org/docs\" target=\"_blank\">documentation</a> for more information.', 'show', 'App\\User', 1, '2016/10/31/163917964', NULL, '2016-07-20 03:17:48', '2016-11-01 09:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Draft','Calendar') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`id`, `title`, `slug`, `color`, `location`, `status`, `start`, `end`, `details`, `created_by`, `assignee_id`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Board Meeting', 'board-meeting', 'rgb(60, 141, 188)', NULL, 'Calendar', '2016-07-19 00:00:00', '2016-07-19 01:00:00', NULL, NULL, NULL, 1, 'App\\User', NULL, NULL, '2016-07-20 04:35:17', '2016-07-20 04:38:08'),
(2, 'ALEXUS bday', 'alexus-bday', 'rgb(255, 0, 128)', NULL, 'Calendar', '2016-07-29 00:00:00', '2016-07-29 01:00:00', NULL, NULL, NULL, 1, 'App\\User', NULL, NULL, '2016-07-20 04:36:42', '2016-07-20 04:38:30'),
(3, 'Conference', 'conference', 'rgb(255, 133, 27)', NULL, 'Calendar', '2016-07-20 00:00:00', '2016-07-20 01:00:00', NULL, NULL, NULL, 1, 'App\\User', NULL, NULL, '2016-07-20 04:37:12', '2016-07-20 04:37:37'),
(4, 'Company meeting', 'company-meeting', 'rgb(57, 204, 204)', NULL, 'Calendar', '2016-07-08 00:00:00', '2016-07-08 01:00:00', NULL, NULL, NULL, 1, 'App\\User', NULL, NULL, '2016-07-20 04:37:28', '2016-07-20 04:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `reporting_to` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` enum('','male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('New','Active','Suspended','Locked') COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `reporting_to`, `name`, `email`, `password`, `api_token`, `remember_token`, `sex`, `dob`, `designation`, `mobile`, `phone`, `address`, `street`, `city`, `district`, `state`, `country`, `photo`, `web`, `permissions`, `status`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'Client', 'client@lavalite.org', '$2y$10$us3Emco1BzJpoGJbs6jmDOStmx128B2lW.GbWORgLe3Nz7iGNR9Ce', 'BMNrgzm1HNysIIrzLxR9QpBRX1HhklobSFeKgzRqFc5QK69rSIM1oROHZzZe', NULL, 'male', '2014-05-15', 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://litepie.org', NULL, 'Active', NULL, NULL, NULL, NULL, '2015-09-14 20:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(4) DEFAULT NULL,
  `website` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `mobile`, `email`, `default`, `website`, `details`, `address`, `street`, `city`, `state`, `country`, `zip`, `lat`, `lng`, `status`, `slug`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Renfos Technologies Pvt. Ltd.', '+91 484-4011 609', '+91 97444 89361', 'india@lavalite.org', NULL, 'http://lavalite.org', 'INFOPARK TBC\nJNI Stadium Complex, Kaloor\nKochi, Kerala,\nIndia, Pin - 682017', 'INFOPARK TBC, JNI Stadium Complex', 'Kaloor', 'Kochi', 'Kerala', 'India', 682017, '9.998856897222739', '76.30494149737547', 'Show', 'headoffice', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `target` enum('_blank','_self') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `uload_folder` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `key`, `url`, `icon`, `permission`, `role`, `name`, `description`, `target`, `order`, `uload_folder`, `slug`, `status`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'admin', '/admin', NULL, NULL, NULL, 'Admin', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(2, 0, 'user', '/user', NULL, NULL, NULL, 'User', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(3, 0, 'client', '/client', NULL, NULL, NULL, 'Client', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(4, 0, 'main', '', NULL, NULL, NULL, 'Main', 'Website main menu', NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(5, 0, 'footer', '', NULL, NULL, NULL, 'Footer', 'Footer menu', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(6, 0, 'social', '', NULL, NULL, NULL, 'Social', 'Social media menu', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(7, 1, NULL, 'admin/menu/menu', 'fa fa-bars', NULL, '[\"superuser\"]', 'Menu', NULL, NULL, 6, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(8, 1, NULL, 'admin', 'fa fa-dashboard', NULL, NULL, 'Dashboard', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(9, 6, NULL, 'https://twitter.com/lavalitecms', 'fa fa-twitter', NULL, NULL, 'Twitter', NULL, '_blank', 11, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(10, 6, NULL, 'https://github.com/LavaLite', 'fa fa-github', NULL, NULL, 'GitHub', NULL, '_blank', 12, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(11, 6, NULL, 'https://www.facebook.com/lavalite/', 'fa fa-facebook-square', NULL, NULL, 'Facebook', NULL, '_blank', 13, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(18, 2, NULL, 'user', 'dashboard', NULL, NULL, 'Dashborad', NULL, NULL, 50, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(19, 1, NULL, 'admin/user/user', 'fa fa-users', NULL, '[\"superuser\"]', 'User', NULL, NULL, 1999, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(20, 19, NULL, 'admin/user/user', 'fa fa-user', NULL, NULL, 'Users', NULL, NULL, 1200, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(21, 19, NULL, 'admin/user/client', 'fa fa-user', NULL, NULL, 'Clients', NULL, NULL, 1202, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(22, 1, 'role', 'admin/roles/role', 'fa fa-check-circle-o', NULL, '[\"superuser\"]', 'Roles & Permissions', NULL, NULL, 190, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(23, 1, NULL, 'admin/message/message', 'fa fa-envelope-o', NULL, NULL, 'Message', NULL, NULL, 180, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(24, 2, NULL, 'user/message/message', 'message', NULL, NULL, 'Message', NULL, NULL, 180, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(25, 1, NULL, 'admin/calendar/calendar', 'fa fa-calendar', NULL, NULL, 'Calendars', NULL, NULL, 120, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(26, 2, NULL, 'user/calendar/calendar', 'date_range', NULL, NULL, 'Calendars', NULL, NULL, 120, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(27, 1, NULL, 'admin/task/task', 'fa fa-flag-o', NULL, NULL, 'Tasks', NULL, NULL, 220, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(28, 2, NULL, 'user/task/task', 'view_week', NULL, NULL, 'Tasks', NULL, NULL, 220, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(29, 3, NULL, 'client/task/task', 'view_week', NULL, NULL, 'Task', NULL, NULL, 220, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(30, 1, NULL, 'admin/block/block', 'fa fa-square', NULL, NULL, 'Blocks', NULL, NULL, 100, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(31, 1, NULL, 'admin/contact/contact', 'fa fa-newspaper-o', NULL, NULL, 'Contact', NULL, NULL, 190, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(32, 4, NULL, 'contact.htm', NULL, NULL, NULL, 'Contact', NULL, NULL, 190, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(33, 5, NULL, 'contact.htm', NULL, NULL, NULL, 'Contact', NULL, NULL, 190, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(34, 1, NULL, 'admin/page/page', 'fa fa-book', NULL, NULL, 'Pages', NULL, NULL, 5, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(35, 4, NULL, 'about-us.html', NULL, NULL, NULL, 'About Us', NULL, NULL, 8, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(36, 5, NULL, 'about-us.html', NULL, NULL, NULL, 'About Us', NULL, NULL, 8, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(11) DEFAULT NULL,
  `from_type` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `to_type` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `folder` enum('Draft','Inbox','Sent','Junk') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starred` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `readed` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labels` mediumtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2015_01_05_100001_create_clients_table', 1),
(2, '2015_01_05_100001_create_users_table', 1),
(3, '2015_01_05_100010_create_password_resets_table', 1),
(4, '2015_08_05_100011_create_pages_table', 1),
(5, '2016_07_07_100001_create_tasks_table', 1),
(6, '2016_07_08_100001_create_messages_table', 1),
(7, '2016_07_14_100001_create_blocks_table', 1),
(8, '2016_07_18_100001_create_calendars_table', 1),
(9, '2017_01_02_100001_create_contacts_table', 1),
(10, '2017_05_05_100001_create_menus_table', 1),
(11, '2017_05_23_100001_create_settings_table', 1),
(12, '2017_11_09_100001_create_roles_table', 1),
(13, '2017_11_09_100002_create_role_user_table', 1),
(14, '2017_11_09_100003_create_permissions_table', 1),
(15, '2017_11_09_100004_create_permission_user_table', 1),
(16, '2017_11_09_100005_create_permission_role_table', 1),
(17, '2018_02_05_100001_create_activity_log_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `heading` text COLLATE utf8mb4_unicode_ci,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `abstract` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `banner` mediumtext COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `compile` tinyint(1) DEFAULT '0',
  `view` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `category` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `order` int(11) DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT 'show',
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `heading`, `sub_heading`, `abstract`, `content`, `meta_title`, `meta_keyword`, `meta_description`, `banner`, `images`, `compile`, `view`, `category`, `order`, `slug`, `status`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', 'Home', NULL, NULL, 'Home Page', 'Home', 'Home', 'Home', NULL, NULL, NULL, 'page', 'default', 0, 'home', 'show', NULL, NULL, NULL, NULL),
(2, 'About Us', 'About Us', 'Meet Lavalite', NULL, NULL, '                    <div class=\"about\">\n                        <div class=\"row\">\n                            <div class=\"col-md-12\">\n                                <div class=\"count-numerics\">\n                                    <h2>Our mission is to make insurance<br>work better for businesses of all types and sizes.</h2>\n                                    <ul class=\"list-inline row\">\n                                        <li class=\"col-md-3 col-xs-6\">\n                                            <div class=\"text-center\">\n                                                <div>\n                                                    <figure>1</figure>\n                                                    <span>k+</span>\n                                                </div>\n                                                <h4>Set of pages</h4>\n                                          </div>\n                                        </li>\n                                        <li class=\"col-md-3 col-xs-6\">\n                                            <div class=\"text-center\">\n                                                <div>\n                                                    <figure>53</figure>\n                                                </div>\n                                                <h4>Categories</h4>\n                                            </div>\n                                        </li>\n                                        <li class=\"col-md-3 col-xs-6\">\n                                            <div class=\"text-center\">\n                                                <div>\n                                                    <figure>10</figure>\n                                                    <span>x</span>\n                                                </div>\n                                                <h4>Save time</h4>\n                                            </div>\n                                        </li>\n                                        <li class=\"col-md-3 col-xs-6 s-counter-v1\">\n                                            <div class=\"text-center\">\n                                                <div>\n                                                    <figure>9</figure>\n                                                </div>\n                                                <h4>Formats to use</h4>\n                                            </div>\n                                        </li>\n                                      </ul>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"row\">\n                            <div class=\"col-md-12\">\n                                <div class=\"promo-section\">\n                                    <div class=\"row mln mrn\">\n                                        <div class=\"col-md-6 pl-0 pr-0\">\n                                            <div class=\"content-section text-center\">\n                                                <h2>Creative Digital Agency</h2>\n                                                <span>You are in good hands.</span>\n                                                <p>It’s important to stay detail oriented with every project we tackle. Staying focused allows us to turn every project we complete into something we love.</p>\n                                                <p>The time has come to bring those ideas and plans to life. This is where we really begin to visualize your napkin sketches and make them into beautiful pixels.</p>\n                                                <h4>— John Doe</h4>\n                                            </div>\n                                        </div>\n                                        <div class=\"col-md-6 pl-0 pr-0 image-section\">\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"row features-section\">\n                            <div class=\"col-sm-5\">\n                                <div class=\"hor-centered-row\">\n                                    <div class=\"hor-centered-row-col exp-num\"><span>9</span></div>\n                                    <div class=\"hor-centered-row-col exp-year\">\n                                        <h4>\n                                            <span>Years</span>\n                                            <span>Experience</span>\n                                        </h4>\n                                        <p>Front-end Design & Development.</p>\n                                    </div>\n                                </div>\n                            </div>\n                            <div class=\"col-sm-7\">\n                                <div class=\"row mb40\">\n                                    <div class=\"col-sm-6\">\n                                        <div class=\"feature-item\">\n                                            <i class=\"ti-mobile\"></i>\n                                            <h4>Responsive Layout</h4>\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.</p>\n                                        </div>\n                                    </div>\n                                    <div class=\"col-sm-6\">\n                                        <div class=\"feature-item\">\n                                            <i class=\"ti-palette\"></i>\n                                            <h4>Fully Customizable</h4>\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.</p>\n                                        </div>\n                                    </div>\n                                </div>\n\n                                <div class=\"row\">\n                                    <div class=\"col-sm-6\">\n                                        <div class=\"feature-item\">\n                                            <i class=\"ti-cup\"></i>\n                                            <h4>Endless Possibilities</h4>\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.</p>\n                                        </div>\n                                    </div>\n                                    <div class=\"col-sm-6\">\n                                        <div class=\"feature-item\">\n                                            <i class=\"ti-crown\"></i>\n                                            <h4>Powerful Performance</h4>\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.</p>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>', 'About Us', 'About Us', 'This is a started theme for Lavalite cms, you can customize according to your requirement.', NULL, NULL, NULL, 'page', 'default', 0, 'about-us', 'show', NULL, NULL, NULL, NULL),
(3, 'Contact Us', 'Contact Us', 'Contact Us', NULL, NULL, '<p><br></p>', 'Contact Us', 'Contact Us', 'Contact Us', NULL, NULL, NULL, 'page', 'default', 0, 'contact', 'show', NULL, NULL, NULL, NULL),
(4, 'Page Not found', 'Page Not found', 'Page Not found', NULL, NULL, '<p><br></p>', 'Page Not found', 'Page Not found', 'Page Not found', NULL, NULL, NULL, 'page', 'default', 0, '404', 'show', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'View Message', 'message.message.view', NULL, NULL, NULL, NULL),
(2, 'Create Message', 'message.message.create', NULL, NULL, NULL, NULL),
(3, 'Update Message', 'message.message.edit', NULL, NULL, NULL, NULL),
(4, 'Delete Message', 'message.message.delete', NULL, NULL, NULL, NULL),
(5, 'View Calendar', 'calendar.calendar.view', NULL, NULL, NULL, NULL),
(6, 'Create Calendar', 'calendar.calendar.create', NULL, NULL, NULL, NULL),
(7, 'Update Calendar', 'calendar.calendar.edit', NULL, NULL, NULL, NULL),
(8, 'Delete Calendar', 'calendar.calendar.delete', NULL, NULL, NULL, NULL),
(9, 'View Task', 'task.task.view', NULL, NULL, NULL, NULL),
(10, 'Create Task', 'task.task.create', NULL, NULL, NULL, NULL),
(11, 'Update Task', 'task.task.edit', NULL, NULL, NULL, NULL),
(12, 'Delete Task', 'task.task.delete', NULL, NULL, NULL, NULL),
(13, 'View Block', 'block.block.view', NULL, NULL, NULL, NULL),
(14, 'Create Block', 'block.block.create', NULL, NULL, NULL, NULL),
(15, 'Update Block', 'block.block.edit', NULL, NULL, NULL, NULL),
(16, 'Delete Block', 'block.block.delete', NULL, NULL, NULL, NULL),
(17, 'View Category', 'block.category.view', NULL, NULL, NULL, NULL),
(18, 'Create Category', 'block.category.create', NULL, NULL, NULL, NULL),
(19, 'Update Category', 'block.category.edit', NULL, NULL, NULL, NULL),
(20, 'Delete Category', 'block.category.delete', NULL, NULL, NULL, NULL),
(21, 'View Contact', 'contact.contact.view', NULL, NULL, NULL, NULL),
(22, 'Create Contact', 'contact.contact.create', NULL, NULL, NULL, NULL),
(23, 'Update Contact', 'contact.contact.edit', NULL, NULL, NULL, NULL),
(24, 'Delete Contact', 'contact.contact.delete', NULL, NULL, NULL, NULL),
(25, 'View Page', 'page.page.view', NULL, NULL, NULL, NULL),
(26, 'Create Page', 'page.page.create', NULL, NULL, NULL, NULL),
(27, 'Update Page', 'page.page.edit', NULL, NULL, NULL, NULL),
(28, 'Delete Page', 'page.page.delete', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super User', 'superuser', NULL, 1, NULL, NULL, NULL),
(2, 'Admin', 'admin', NULL, 1, NULL, NULL, NULL),
(3, 'User', 'user', NULL, 1, NULL, NULL, NULL),
(4, 'Client', 'client', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `control` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `type` enum('System','Default','User') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `package`, `module`, `name`, `value`, `file`, `control`, `type`, `slug`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'main.company.name', 'Main', 'Company', 'Company name', 'Lavalite', NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'main.company.address', 'Main', 'Company', 'Company address', '3481 Melrose Place <br>\nBeverly Hills, CA 90210', NULL, 'textarea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'main.company.email', 'Main', 'Company', 'Company address', 'info@lavalite.org', NULL, 'email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'main.company.logo', 'Main', 'Company', 'Company logo', 'img/logo.png', NULL, 'file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_required` time DEFAULT NULL,
  `time_taken` time DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `parent_id`, `start`, `end`, `category`, `task`, `time_required`, `time_taken`, `priority`, `status`, `created_by`, `slug`, `assigned_to`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'testing', NULL, NULL, NULL, 'completed', NULL, 'testing', NULL, 1, 'App\\User', NULL, NULL, '2016-07-19 07:43:26', '2016-07-19 07:43:58'),
(2, NULL, NULL, NULL, NULL, 'developing', NULL, NULL, NULL, 'to_do', NULL, 'developing', NULL, 1, 'App\\User', NULL, NULL, '2016-07-19 07:43:38', '2016-07-19 07:43:38'),
(3, NULL, NULL, NULL, NULL, 'designing', NULL, NULL, NULL, 'in_progress', NULL, 'designing', NULL, 1, 'App\\User', NULL, NULL, '2016-07-19 07:43:53', '2016-07-19 07:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `reporting_to` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` enum('','male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('New','Active','Suspended','Locked') COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reporting_to`, `name`, `email`, `password`, `api_token`, `remember_token`, `sex`, `dob`, `designation`, `mobile`, `phone`, `address`, `street`, `city`, `district`, `state`, `country`, `photo`, `web`, `permissions`, `status`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'Super User', 'shiblie@bshara.com', '$2y$10$aNW4XU1LgPxIlFTmFjimYOvHoUu8g0Boy4RngEK9Fb/72faHQzS.S', 'HTqNKUQ8VVHlxrZnlVSpFElF9cdqVRMHWP24JAPwZ6rjo6T89AYnyGy4XuQF', NULL, 'male', '2014-05-15', 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://litepie.org', NULL, 'Active', NULL, NULL, NULL, NULL, '2015-09-14 20:00:00', '2018-08-09 09:12:29'),
(2, 0, 'Admin', 'admin@lavalite.org', '$2y$10$MFHyAFRUnO2JPXE3IBd57u4N.hlAku9kpx.7i5fX98PnSvty7R012', 'YAynpaz9ilePCmQ4a3rhztGF6SR0v7ZCWXrdTOqzoxcMbGAamQJAsCrDLTGZ', NULL, 'male', '2020-05-15', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://litepie.org', NULL, 'Active', NULL, NULL, NULL, NULL, '2015-09-14 20:00:00', NULL),
(3, 0, 'User', 'user@lavalite.org', '$2y$10$7BAnYu8.1HSFV6FRDcG5dualibWwLM4umq9qYZCdg54uXoAWnsy.K', 'Snpcf3sLfJq81VZLTcICd4yNQZZccXGy6k10uxb2fGbXCsv0gu7ha6i7cXNM', NULL, 'male', '2014-05-15', 'User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://litepie.org', NULL, 'Active', NULL, NULL, NULL, NULL, '2015-09-14 20:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_categories`
--
ALTER TABLE `block_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD UNIQUE KEY `clients_api_token_unique` (`api_token`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `block_categories`
--
ALTER TABLE `block_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
