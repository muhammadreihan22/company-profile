-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2026 at 01:36 AM
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
-- Database: `db_cabletech`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'GGG1YF5SsY25ZBR7ErFtX6ekAqW03TmZ', 1, '2025-02-25 19:08:34', '2025-02-25 19:08:34', '2025-02-25 19:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT 0,
  `action_label` varchar(60) DEFAULT NULL,
  `action_url` varchar(400) DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT 0,
  `dismissible` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements_translations`
--

CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) NOT NULL,
  `announcements_id` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `action_label` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `reference_user` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1294, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Administrator Cable Tech', 'info', '2026-02-25 07:55:35', '2026-02-25 07:55:35'),
(1295, 1, 'user', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, ' ', 'danger', '2026-02-25 07:57:15', '2026-02-25 07:57:15'),
(1296, 1, 'user', '{\"_method\":\"PUT\",\"old_password\":\"admin123\"}', 'updated profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Administrator Cable Tech', 'info', '2026-02-25 07:58:23', '2026-02-25 07:58:23'),
(1297, 1, 'user', '{\"_method\":\"PUT\",\"old_password\":\"admin123\"}', 'changed password', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Administrator Cable Tech', 'danger', '2026-02-25 07:58:23', '2026-02-25 07:58:23'),
(1298, 1, 'user', '{\"_method\":\"PUT\",\"old_password\":\"admin123\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Administrator Cable Tech', 'primary', '2026-02-25 07:58:23', '2026-02-25 07:58:23'),
(1299, 1, 'user', '{\"_method\":\"PUT\",\"first_name\":\"Administrator\",\"last_name\":\"Cable Tech\",\"email\":\"admin@cabletech.co.id\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Administrator Cable Tech', 'primary', '2026-02-25 07:58:27', '2026-02-25 07:58:27'),
(1300, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Administrator Cable Tech', 'info', '2026-02-25 07:58:36', '2026-02-25 07:58:36'),
(1301, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Administrator Cable Tech', 'info', '2026-02-25 07:58:53', '2026-02-25 07:58:53'),
(1302, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Administrator Cable Tech', 'info', '2026-02-25 08:00:09', '2026-02-25 08:00:09'),
(1303, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Administrator Cable Tech', 'info', '2026-02-25 08:28:53', '2026-02-25 08:28:53'),
(1304, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Administrator Cable Tech', 'info', '2026-02-25 08:30:37', '2026-02-25 08:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `location` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `location`, `salary`, `description`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Senior Full Stack Engineer', 'Lake Larissashire, French Polynesia', '5,825', 'Join our team as a Senior Full Stack Engineer and help us build cutting-edge solutions to empower creators worldwide.', '<h4>Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n', 'published', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(2, 'Lead Backend Developer', 'Jastfurt, Portugal', '3,090', 'Exciting opportunity for a Lead Backend Developer to lead our backend team in architecting scalable and robust systems.', '<h4>Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n', 'published', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(3, 'UI/UX Designer', 'North Hans, Switzerland', '7,238', 'We are looking for a talented UI/UX Designer to create intuitive and visually stunning user experiences for our products.', '<h4>Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n', 'published', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(4, 'Product Manager', 'Port Conor, Tanzania', '7,460', 'As a Product Manager, you will drive the development and strategy of our products to meet the needs of our growing user base.', '<h4>Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n', 'published', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(5, 'Data Scientist', 'Port Jules, Norway', '7,510', 'Seeking a Data Scientist to analyze large datasets and derive actionable insights to inform business decisions.', '<h4>Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n', 'published', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(6, 'DevOps Engineer', 'Bessiechester, Korea', '3,420', 'We are hiring a DevOps Engineer to streamline our development processes and ensure the reliability and scalability of our infrastructure.', '<h4>Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n', 'published', '2025-02-25 19:08:57', '2025-02-25 19:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `careers_translations`
--

CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) NOT NULL,
  `careers_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(10, 'Company News', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2025-03-25 07:34:54', '2025-03-25 07:34:54'),
(11, 'Events &amp; Activities', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 2, 0, 0, '2025-03-25 07:35:10', '2025-03-25 07:35:10'),
(12, 'Product Updates', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 3, 0, 0, '2025-03-25 07:35:21', '2025-03-25 07:35:21'),
(13, 'Industry Insights', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 4, 0, 0, '2025-03-25 07:35:31', '2025-03-25 07:35:31'),
(14, 'Employee Spotlight', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 0, 0, '2025-03-25 07:35:43', '2025-03-25 07:35:43'),
(15, 'CSR &amp; Sustainability', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 6, 0, 0, '2025-03-25 07:35:57', '2025-03-25 07:35:57'),
(16, 'Certifications', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 7, 0, 0, '2025-06-09 02:18:12', '2025-06-09 02:18:12'),
(17, 'International Certifications', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 8, 0, 0, '2025-06-09 02:18:26', '2025-06-09 02:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2025-02-26 00:17:47', '2025-02-26 00:17:47'),
(2, 'widget_total_users', '2025-02-26 00:17:47', '2025-02-26 00:17:47'),
(3, 'widget_total_plugins', '2025-02-26 00:17:47', '2025-02-26 00:17:47'),
(4, 'widget_total_pages', '2025-02-26 00:17:47', '2025-02-26 00:17:47'),
(5, 'widget_posts_recent', '2025-02-26 00:17:47', '2025-02-26 00:17:47'),
(6, 'widget_audit_logs', '2025-02-26 00:17:47', '2025-02-26 00:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 'What are the logistics and lead times for bulk orders?', '<p>Lead times depend on <strong>order volume, customization requirements, and destination</strong>. We provide <strong>flexible shipping solutions</strong>, working closely with <strong>logistics partners to ensure efficient and cost-effective delivery</strong>. Our team can provide estimated production schedules upon request.</p>', 2, 'published', '2025-02-25 19:08:39', '2025-03-04 03:57:47'),
(6, 'How does PT Cable Tech ensure the quality and durability of the B6H Throttle Cable?', '<p>Our <strong>manufacturing process adheres to international standards</strong>, with strict <strong>quality control, durability testing, and compliance with OEM specifications</strong>. Each throttle cable undergoes <strong>performance, stress, and environmental resistance testing</strong> to ensure reliability.</p>', 2, 'published', '2025-02-25 19:08:39', '2025-03-04 03:57:16'),
(9, 'Does PT Cable Tech provide customization or private labeling for throttle cables?', '<p>We offer <strong>customization services</strong>, including <strong>branding, labeling, and cable specifications tailored</strong> to your business needs. Whether for <strong>specific vehicle models or private-label products</strong>, we can develop solutions that align with your market requirements.</p>', 2, 'published', '2025-02-25 19:08:39', '2025-03-04 03:56:26'),
(13, 'Can PT Cable Tech supply B6H Throttle Cable in bulk for manufacturing or distribution?', '<p>Yes, we offer <strong>bulk supply options</strong> for manufacturers and distributors. Our production capacity ensures consistent quality and timely delivery, meeting the demands of <strong>OEM partnerships, spare parts suppliers, and international markets</strong>.</p>', 2, 'published', '2025-02-25 19:08:39', '2025-03-04 03:56:06'),
(16, 'What industries and businesses benefit from the B6H Throttle Cable?', '<p>The <strong>B6H Throttle Cable</strong> is ideal for <strong>automotive manufacturers, motorcycle assemblers, spare parts distributors, and aftermarket service providers</strong>. It ensures high-quality throttle control for <strong>OEM production lines, fleet maintenance, and retail distribution</strong>.</p>', 2, 'published', '2025-02-25 19:08:39', '2025-03-04 03:54:24'),
(19, 'What is the B6H Seatlock Cable used for?', '<p>The <strong>B6H Seatlock Cable</strong> is designed for <strong>secure and smooth seat locking mechanisms</strong> in motorcycles, ensuring easy and reliable operation when locking or unlocking the seat.</p>', 4, 'published', '2025-03-04 05:47:25', '2025-03-04 05:47:25'),
(20, 'Is the B6H Seatlock Cable compatible with all motorcycle models?', '<p>The <strong>B6H Seatlock Cable</strong> is specifically designed to be <strong>OEM-compatible with Yamaha NMAX</strong> and similar models. For other motorcycles, compatibility may vary depending on specifications.</p>', 4, 'published', '2025-03-04 05:47:39', '2025-03-04 05:47:39'),
(21, 'How does PT Cable Tech ensure the durability of the B6H Seatlock Cable?', '<p>We use <strong>high-quality materials and precision engineering</strong> to ensure durability, smooth operation, and resistance to wear and tear. Every cable undergoes <strong>rigorous quality control and performance testing</strong>.</p>', 4, 'published', '2025-03-04 05:47:54', '2025-03-04 05:47:54'),
(22, 'Can PT Cable Tech provide bulk orders or customized Seatlock Cables?', '<p>Yes, we offer <strong>bulk supply</strong> and <strong>customization options</strong> for manufacturers, distributors, and aftermarket retailers. We can tailor specifications based on your business needs.</p>', 4, 'published', '2025-03-04 05:48:06', '2025-03-04 05:48:06'),
(23, 'What are the signs that a Seatlock Cable needs replacement?', '<p>If you experience <strong>difficulty locking/unlocking the seat, a loose or unresponsive mechanism, or visible wear on the cable</strong>, it may be time to replace the Seatlock Cable to maintain security and functionality.</p>', 4, 'published', '2025-03-04 05:48:33', '2025-03-04 05:48:33'),
(24, 'What does Cable Tech manufacture?', '<p>Cable Tech specializes in the manufacturing of high-quality control cables for a wide range of applications, including automotive and agricultural equipment.</p>', 5, 'published', '2025-03-05 09:38:16', '2025-06-10 08:41:28'),
(25, 'Does Cable Tech provide custom cable solutions?', '<p>Yes, we provide custom cable solutions designed to meet specific industry requirements, ensuring optimal performance and long-lasting durability for specialized applications.</p>', 5, 'published', '2025-03-05 09:38:30', '2025-06-10 02:03:33'),
(26, 'What quality standards does Cable Tech follow?', '<p>Our products adhere to international quality standards (ISO 14001:2015 &amp; IATF 16949:2016 ), ensuring safety, reliability, and high performance across all our control cable offerings.</p>', 5, 'published', '2025-03-05 09:38:50', '2025-06-10 08:49:48'),
(27, 'Does Cable Tech export its products internationally?', '<p>While currently serving domestic customers, we are also expanding our production capacity to meet the growing demands of the international market. Our products have been exported to nearly every continent.</p>', 5, 'published', '2025-03-05 09:39:08', '2025-06-10 02:05:34'),
(28, 'How can I contact Cable Tech for inquiries or partnerships?', '<p>You can reach us via our official website, email, or phone. Please visit our \"Contact Us\" page for detailed information on how to get in touch with our team.</p>', 5, 'published', '2025-03-05 09:39:24', '2025-06-10 02:05:47'),
(29, 'What industries use Cable Tech\'s control cables?', '<p>Our control cables are used across various industrial sectors, including automotive and agriculture, delivering reliable performance even in the most challenging environments.</p>', 5, 'published', '2025-03-05 09:42:15', '2025-06-10 08:45:29'),
(30, 'Can Cable Tech assist with product development and design?', '<p>Yes, our team offers engineering support and technical expertise to assist in the design and development of custom cable solutions tailored to your specific requirements.</p>', 5, 'published', '2025-03-05 09:42:32', '2025-06-10 02:08:53'),
(31, 'Where is Cable Tech located?', '<p>Cable Tech is located in <a href=\"https://maps.app.goo.gl/ZGaKNfx9TsVaav7v6\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Delta Silicon Industrial Park, Jl. Meranti III Blok L10-10A, Cikarang, West Java, Indonesia 17530</strong></a>,</p><p>Cable Tech Plant 2 is located in <a href=\"https://maps.app.goo.gl/uyip2iFUQwr4gsZXA\"><strong>Jl. Meranti 1 No.Blok L/2, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17610</strong></a></p>', 5, 'published', '2025-03-05 09:46:26', '2025-06-09 06:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faqs_id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Service Offerings', 0, 'published', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL),
(2, 'Motorcycle', 1, 'published', '2025-02-25 19:08:39', '2025-03-04 03:47:59', NULL),
(3, 'Follow-Up Support', 2, 'published', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL),
(4, 'Seatlock Cable', 0, 'published', '2025-03-04 05:42:30', '2025-03-04 05:42:33', 'A durable and precise control cable for secure seat locking mechanisms in motorcycles and vehicles. Designed for smooth operation, high durability, and OEM compatibility, ensuring safety and convenience.'),
(5, 'About Cable Tech', 0, 'published', '2025-03-05 09:37:45', '2025-03-05 09:37:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faq_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Awards &amp; Certifications', '<p>Explore our collection of prestigious awards and certifications, showcasing Cable Tech\'s commitment to quality, innovation, and excellence in the manufacturing industry. These recognitions reflect our dedication to delivering high-performance control cables that meet global standards.</p>', 0, 0, 'certification/acv-2.jpg', 1, 'published', '2025-02-25 19:08:56', '2025-03-07 09:12:54'),
(10, 'International Certifications', '<p>Our manufacturing facilities are certified with IATF 16949 and ISO 14001, reflecting PT Cable Tech\'s commitment to excellence and compliance with industry-leading quality and environmental standards</p>', 0, 0, 'certification/iso2-1.jpg', 1, 'published', '2025-02-25 19:08:56', '2025-03-07 09:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `galleries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(10, '[{\"img\":\"certification\\/iso-14001-2027.png\",\"description\":\"\"},{\"img\":\"certification\\/iatf-2027.png\",\"description\":\"\"}]', 10, 'Botble\\Gallery\\Models\\Gallery', '2025-02-25 19:08:56', '2025-03-03 04:47:35'),
(30, NULL, 13, 'Botble\\Page\\Models\\Page', '2025-03-03 03:35:59', '2025-03-03 03:35:59'),
(51, '[{\"img\":\"certification\\/c3.jpg\",\"description\":\"\"},{\"img\":\"certification\\/c2.jpg\",\"description\":\"\"},{\"img\":\"certification\\/c5.jpg\",\"description\":\"\"},{\"img\":\"certification\\/c4.jpg\",\"description\":\"\"},{\"img\":\"certification\\/c1.jpg\",\"description\":\"\"}]', 9, 'Botble\\Gallery\\Models\\Gallery', '2025-03-05 08:49:28', '2025-03-05 08:49:28'),
(109, NULL, 33, 'Botble\\Page\\Models\\Page', '2025-03-25 07:47:38', '2025-03-25 07:47:38'),
(112, '[{\"img\":\"certification\\/iso-14001-2027.png\",\"description\":\"\"},{\"img\":\"certification\\/iatf-2027.png\",\"description\":\"\"}]', 35, 'Botble\\Page\\Models\\Page', '2025-03-25 07:53:22', '2025-03-25 07:53:22'),
(114, NULL, 19, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:19:28', '2025-06-09 02:19:28'),
(115, NULL, 20, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:19:51', '2025-06-09 02:19:51'),
(122, NULL, 23, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:26:44', '2025-06-09 02:26:44'),
(123, NULL, 24, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:27:02', '2025-06-09 02:27:02'),
(150, NULL, 15, 'Botble\\Page\\Models\\Page', '2025-06-13 01:42:14', '2025-06-13 01:42:14'),
(151, NULL, 3, 'Botble\\Page\\Models\\Page', '2025-06-13 01:45:55', '2025-06-13 01:45:55'),
(191, NULL, 36, 'Botble\\Page\\Models\\Page', '2025-06-16 07:16:45', '2025-06-16 07:16:45'),
(199, NULL, 37, 'Botble\\Page\\Models\\Page', '2025-07-28 06:37:36', '2025-07-28 06:37:36'),
(200, NULL, 32, 'Botble\\Blog\\Models\\Post', '2025-12-10 03:28:20', '2025-12-10 03:28:20'),
(201, NULL, 36, 'Botble\\Blog\\Models\\Post', '2025-12-10 03:34:56', '2025-12-10 03:34:56'),
(202, NULL, 33, 'Botble\\Blog\\Models\\Post', '2025-12-10 03:36:00', '2025-12-10 03:36:00'),
(203, NULL, 34, 'Botble\\Blog\\Models\\Post', '2025-12-10 03:36:17', '2025-12-10 03:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) NOT NULL,
  `gallery_meta_id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(5, 'Bahasa Indonesia', 'id', 'id_ID', 'id', 0, 0, 0),
(6, '中文 (台灣)', 'zh', 'zh_TW', 'tw', 0, 0, 0),
(7, '日本語', 'ja', 'ja', 'jp', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'fe3687ee50ce288d6b03c243af3bda24', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(3, 'en_US', 'aa6b61381082980ff190cbb8393a7029', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(17, 'en_US', '1ac00945bb94c7344441ef86e13d9b5c', 52, 'Botble\\Menu\\Models\\MenuNode'),
(18, 'en_US', '4c739ffe1ac271604e30e5ca9e752b36', 53, 'Botble\\Menu\\Models\\MenuNode'),
(19, 'en_US', '59108d916f02c9a54fc703a3cd6f1476', 54, 'Botble\\Menu\\Models\\MenuNode'),
(20, 'en_US', 'e2d1333b0e1658a4769d792527f6a8dc', 55, 'Botble\\Menu\\Models\\MenuNode'),
(21, 'en_US', '7379aa0f8989c9f8af2e9682ae3a49b8', 56, 'Botble\\Menu\\Models\\MenuNode'),
(22, 'en_US', '3be33c978a940651264192dd8a3117e5', 57, 'Botble\\Menu\\Models\\MenuNode'),
(23, 'en_US', 'af0e7116b7cc49d3b37786ec90f91f27', 58, 'Botble\\Menu\\Models\\MenuNode'),
(24, 'en_US', '5b0ccb23fdd829324551042f752f1da4', 59, 'Botble\\Menu\\Models\\MenuNode'),
(25, 'en_US', 'b55369de6ff141007f8e0cb923f18ccd', 60, 'Botble\\Menu\\Models\\MenuNode'),
(26, 'en_US', 'ff6a01e66f7efbf0fdf3c868f873cd30', 61, 'Botble\\Menu\\Models\\MenuNode'),
(27, 'en_US', 'd1475069b15bb63e47dd6b61de282d11', 62, 'Botble\\Menu\\Models\\MenuNode'),
(28, 'en_US', '6770cfe9284b6644825bac0ec00ff189', 63, 'Botble\\Menu\\Models\\MenuNode'),
(29, 'en_US', '1147281a1d06f988659e9b2a01ceb434', 64, 'Botble\\Menu\\Models\\MenuNode'),
(30, 'en_US', 'b6b60e57bac9f4d844c67e28201874ab', 65, 'Botble\\Menu\\Models\\MenuNode'),
(31, 'en_US', 'cf8958bdb4c9876f735a2cdc735984e0', 66, 'Botble\\Menu\\Models\\MenuNode'),
(32, 'en_US', '17915db395ae92508eec4b8e96106451', 67, 'Botble\\Menu\\Models\\MenuNode'),
(33, 'en_US', '9afa47105db7f30e43639b490468c9b4', 68, 'Botble\\Menu\\Models\\MenuNode'),
(34, 'en_US', 'eb8be5c3a48fd7898f9952a0799baf1d', 69, 'Botble\\Menu\\Models\\MenuNode'),
(35, 'en_US', '7e871a9df70719feb18e92d3406d4681', 70, 'Botble\\Menu\\Models\\MenuNode'),
(36, 'en_US', '9796f1df06faabd61876eaff832627eb', 71, 'Botble\\Menu\\Models\\MenuNode'),
(37, 'en_US', 'eaf828fd347b09e607b6c03a54afd6dd', 72, 'Botble\\Menu\\Models\\MenuNode'),
(38, 'en_US', '4aa92b868407bfdae068ede11d2d5caf', 73, 'Botble\\Menu\\Models\\MenuNode'),
(39, 'en_US', '0fd5da98832b94d0e86dd003544be860', 74, 'Botble\\Menu\\Models\\MenuNode'),
(40, 'en_US', '55d11f18e0b6b78da1b5b524f64cfc21', 75, 'Botble\\Menu\\Models\\MenuNode'),
(42, 'en_US', '17eda3cb407783a63bdee6fb994b7a30', 77, 'Botble\\Menu\\Models\\MenuNode'),
(43, 'en_US', 'aa0f57fd255535470a0597c9ce683e95', 78, 'Botble\\Menu\\Models\\MenuNode'),
(44, 'en_US', '7ba3432cf07c99e5d9839f65c901cfa4', 79, 'Botble\\Menu\\Models\\MenuNode'),
(59, 'en_US', '17ceab7aae47434b1671fe66b3b08b21', 92, 'Botble\\Menu\\Models\\MenuNode'),
(60, 'en_US', '4f716edaeafd4f434ee6c3972f6abf5c', 93, 'Botble\\Menu\\Models\\MenuNode'),
(61, 'en_US', '7a4c09b53cc3636052c939eaaf1d4d49', 94, 'Botble\\Menu\\Models\\MenuNode'),
(62, 'en_US', '921fee4e77c3038c4d410698f878d37e', 95, 'Botble\\Menu\\Models\\MenuNode'),
(63, 'en_US', 'da2339745a9be216fc0955ecdb895bae', 96, 'Botble\\Menu\\Models\\MenuNode'),
(64, 'en_US', '9d669bb74171e62f209cbea02697d5c9', 97, 'Botble\\Menu\\Models\\MenuNode'),
(65, 'en_US', '918cdbe72b3352500cb2d6cff3060759', 98, 'Botble\\Menu\\Models\\MenuNode'),
(66, 'en_US', 'f292a78a15d29886f39828078ee0284f', 99, 'Botble\\Menu\\Models\\MenuNode'),
(67, 'en_US', '2e93115b93201fef69157bac1bd67c16', 100, 'Botble\\Menu\\Models\\MenuNode'),
(68, 'en_US', '8899531b44dd67b41bffa56f2cfaa8c2', 101, 'Botble\\Menu\\Models\\MenuNode'),
(69, 'en_US', '233d03805d002983c0856ff6d27c5c1d', 102, 'Botble\\Menu\\Models\\MenuNode'),
(70, 'en_US', '4696e9eed60bc74b8b4de076fbc8bf49', 103, 'Botble\\Menu\\Models\\MenuNode'),
(71, 'en_US', '459d17f83c740a1c6a365c1d5029b43f', 104, 'Botble\\Menu\\Models\\MenuNode'),
(72, 'en_US', '5cd018f44168a6841fd3fa4b12585f85', 105, 'Botble\\Menu\\Models\\MenuNode'),
(73, 'en_US', '17a19a900554ed910998e755f252ffeb', 106, 'Botble\\Menu\\Models\\MenuNode'),
(74, 'en_US', '806112cd9737303c3a7503b8c886c74d', 107, 'Botble\\Menu\\Models\\MenuNode'),
(75, 'en_US', '50981353035af4f3d7e2d425e756f6c2', 108, 'Botble\\Menu\\Models\\MenuNode'),
(76, 'en_US', '78ac2fd9cc9e88688713e2a4bea4663f', 109, 'Botble\\Menu\\Models\\MenuNode'),
(77, 'en_US', 'c03ba686e3852acff62630891d3a82f6', 110, 'Botble\\Menu\\Models\\MenuNode'),
(78, 'en_US', 'f96dec206008018cce49be74f9ce4548', 111, 'Botble\\Menu\\Models\\MenuNode'),
(79, 'en_US', '4d225663bba0f753aad2b87acd90785b', 112, 'Botble\\Menu\\Models\\MenuNode'),
(80, 'en_US', '50323143b582b5ccf503780f5a2abb2a', 113, 'Botble\\Menu\\Models\\MenuNode'),
(81, 'en_US', '2fd1b3f26ef7ba7129800698d489c4b4', 114, 'Botble\\Menu\\Models\\MenuNode'),
(82, 'en_US', '3340841d43eb460f169fee9096c6c33e', 115, 'Botble\\Menu\\Models\\MenuNode'),
(84, 'en_US', 'f9cb1c49e7b6e0af45bf9d997c533486', 117, 'Botble\\Menu\\Models\\MenuNode'),
(85, 'en_US', '75b3fae4d23f4c4b9e21de00ef5880d9', 118, 'Botble\\Menu\\Models\\MenuNode'),
(86, 'en_US', '55ed94b5a56831ff4bf2942dcce22709', 119, 'Botble\\Menu\\Models\\MenuNode'),
(101, 'en_US', 'fcd8fc3b379c3dfb5a6819355fd5745c', 132, 'Botble\\Menu\\Models\\MenuNode'),
(102, 'en_US', 'e2ac012354807aeb3fe072f5c2e6cb30', 133, 'Botble\\Menu\\Models\\MenuNode'),
(103, 'en_US', '55294f2c6c3e961b64e9bf57e36fe731', 134, 'Botble\\Menu\\Models\\MenuNode'),
(104, 'en_US', '6dc6410f8acd1ff3b930af73d91c258b', 135, 'Botble\\Menu\\Models\\MenuNode'),
(105, 'en_US', '8ab4632a566e1a422a22d9d658a35fa0', 136, 'Botble\\Menu\\Models\\MenuNode'),
(106, 'en_US', '2b4d442bcaa8c2899e845faf643e7aea', 137, 'Botble\\Menu\\Models\\MenuNode'),
(107, 'en_US', 'e4c30053130d37d8fa485cd167904a02', 138, 'Botble\\Menu\\Models\\MenuNode'),
(108, 'en_US', '5c24ffb863026fbe5abed1fa88749724', 139, 'Botble\\Menu\\Models\\MenuNode'),
(109, 'en_US', '5ad33927c29fd663e18bcb5e7ada9118', 140, 'Botble\\Menu\\Models\\MenuNode'),
(110, 'en_US', '44ddf5ce70b8bc0a5e735bca836e954e', 141, 'Botble\\Menu\\Models\\MenuNode'),
(111, 'en_US', 'dc8a95106d9dec5c34b429a57959109e', 142, 'Botble\\Menu\\Models\\MenuNode'),
(112, 'en_US', '13f1de4c3e63b5abe96369e3f46c66dc', 143, 'Botble\\Menu\\Models\\MenuNode'),
(113, 'en_US', '745667cd93c91bf2c8fda40d65fddb54', 144, 'Botble\\Menu\\Models\\MenuNode'),
(114, 'en_US', '83e3b82642a4b15d80992d59d95e363c', 145, 'Botble\\Menu\\Models\\MenuNode'),
(115, 'en_US', '69f8b26550738275e01dc555fa991eb8', 146, 'Botble\\Menu\\Models\\MenuNode'),
(116, 'en_US', 'cb192c5c116eaf46baf30d0258316602', 147, 'Botble\\Menu\\Models\\MenuNode'),
(117, 'en_US', '4603b6cfdbd5aeba528367d1481a9921', 148, 'Botble\\Menu\\Models\\MenuNode'),
(118, 'en_US', 'f596dcd81576fabd446a676753eec298', 149, 'Botble\\Menu\\Models\\MenuNode'),
(119, 'en_US', '799b30e7ccc48c5d624823729956be67', 150, 'Botble\\Menu\\Models\\MenuNode'),
(120, 'en_US', 'a6bf2b425b1926a8adc1eeffca8e51bb', 151, 'Botble\\Menu\\Models\\MenuNode'),
(121, 'en_US', 'e59b39982f1cedb12d89602849ca37f9', 152, 'Botble\\Menu\\Models\\MenuNode'),
(122, 'en_US', '0a1d57808b6f482d430c8652920464de', 153, 'Botble\\Menu\\Models\\MenuNode'),
(123, 'en_US', '664180e9efeb8206d052ee22f0e0b0e7', 154, 'Botble\\Menu\\Models\\MenuNode'),
(124, 'en_US', '8e8404fab68f2dc4434e4de339583107', 155, 'Botble\\Menu\\Models\\MenuNode'),
(126, 'en_US', '651673e499f06128d87415cb7f6f3fbb', 157, 'Botble\\Menu\\Models\\MenuNode'),
(127, 'en_US', '55d7b3bb9c929097473d1bf77c010602', 158, 'Botble\\Menu\\Models\\MenuNode'),
(128, 'en_US', '087c7d2c778df96b01db38a76a33d81a', 159, 'Botble\\Menu\\Models\\MenuNode'),
(130, 'en_US', '1f7c5bf7a16bd3331328aa5ba6829151', 1, 'Botble\\Menu\\Models\\MenuNode'),
(131, 'en_US', '0f507c3d576e13a1e1cadc6b072cfa45', 7, 'Botble\\Menu\\Models\\MenuNode'),
(132, 'en_US', '4dad3346a54dfb54522fd37629ad5340', 14, 'Botble\\Menu\\Models\\MenuNode'),
(133, 'en_US', '741ebb94b50b3e3e300a7f070244a45f', 15, 'Botble\\Menu\\Models\\MenuNode'),
(134, 'en_US', '872243ac6ce02fd2a54723df9686406b', 16, 'Botble\\Menu\\Models\\MenuNode'),
(135, 'en_US', '4fa08f2aab448900cce41df6699dd53e', 17, 'Botble\\Menu\\Models\\MenuNode'),
(136, 'en_US', '329cac4ae843560b74f481fbe83b4829', 18, 'Botble\\Menu\\Models\\MenuNode'),
(137, 'en_US', 'a494ba2310d93aaf89614d7d9efec619', 19, 'Botble\\Menu\\Models\\MenuNode'),
(138, 'en_US', '0c647c1428739890619e4003d8be47b5', 20, 'Botble\\Menu\\Models\\MenuNode'),
(139, 'en_US', '731704d5dbf3db7d86cba0c55081bf12', 21, 'Botble\\Menu\\Models\\MenuNode'),
(140, 'en_US', 'ce179888c8617a8c7f9e05c67f0a38ab', 22, 'Botble\\Menu\\Models\\MenuNode'),
(141, 'en_US', '7698a64ece1e0577e37bcfb38e05903f', 23, 'Botble\\Menu\\Models\\MenuNode'),
(142, 'en_US', '7f604a7bac8309910659b1366b02be0b', 24, 'Botble\\Menu\\Models\\MenuNode'),
(143, 'en_US', '9743ba6b7e8e04d3dc579cc355d50efb', 25, 'Botble\\Menu\\Models\\MenuNode'),
(144, 'en_US', 'f78b3a9ca2b1a9273668b1ef37a50209', 26, 'Botble\\Menu\\Models\\MenuNode'),
(145, 'en_US', '3c74ef51b822f153be1e5cedcf8e23fc', 27, 'Botble\\Menu\\Models\\MenuNode'),
(146, 'en_US', 'bd3727e789a4dc9ba0d0dae7852208cf', 28, 'Botble\\Menu\\Models\\MenuNode'),
(147, 'en_US', '5050397cb8e85a6a0c6695baaa37166b', 29, 'Botble\\Menu\\Models\\MenuNode'),
(148, 'en_US', '39c77c30cfbba84947aa43afd42a0040', 30, 'Botble\\Menu\\Models\\MenuNode'),
(149, 'en_US', '12ce206a53a4d90ff92910a840c8ce41', 31, 'Botble\\Menu\\Models\\MenuNode'),
(150, 'en_US', 'e37e18dd376542b9b95d8b1752bbe5e5', 32, 'Botble\\Menu\\Models\\MenuNode'),
(151, 'en_US', '8addd51f602079472d7937b6be1210e6', 33, 'Botble\\Menu\\Models\\MenuNode'),
(152, 'en_US', '619330ab2940231fc7a5de7396cd95da', 34, 'Botble\\Menu\\Models\\MenuNode'),
(153, 'en_US', '9b2db3ef43bc80863a838457ece69ff7', 35, 'Botble\\Menu\\Models\\MenuNode'),
(154, 'en_US', '6bf3b004ed7b43107346f312171c9fe6', 36, 'Botble\\Menu\\Models\\MenuNode'),
(155, 'en_US', '951fcded273e2579f2f01541f0ec4d59', 37, 'Botble\\Menu\\Models\\MenuNode'),
(156, 'en_US', '766b859be83b23bf75c68c7341385173', 38, 'Botble\\Menu\\Models\\MenuNode'),
(157, 'en_US', '8b005a2c381f941dc6207dd4b25dfccc', 39, 'Botble\\Menu\\Models\\MenuNode'),
(158, 'en_US', '7b79acbdc93898f3807f286dca6717d5', 40, 'Botble\\Menu\\Models\\MenuNode'),
(159, 'en_US', '7ab29c3dbd59bb8d44c9b749acece345', 5, 'Botble\\Menu\\Models\\Menu'),
(160, 'en_US', '0c81b6adc446a82a5ac01c249ab6ad1f', 161, 'Botble\\Menu\\Models\\MenuNode'),
(161, 'en_US', '1b77f5aadd3956d881523ec8d63e6dd6', 163, 'Botble\\Menu\\Models\\MenuNode'),
(162, 'en_US', '82cff65567e788f8486ed8f565d98546', 164, 'Botble\\Menu\\Models\\MenuNode'),
(163, 'en_US', 'fd00b3585ab333a80e798f845cf0d75e', 162, 'Botble\\Menu\\Models\\MenuNode'),
(164, 'en_US', '4f4cd1af7a91b439878afefd18f15cf9', 165, 'Botble\\Menu\\Models\\MenuNode'),
(165, 'en_US', 'bf9eae51b6777162a4044c474c11d488', 166, 'Botble\\Menu\\Models\\MenuNode'),
(166, 'en_US', 'ec96f8d7bce04713e199f67df4553d7a', 167, 'Botble\\Menu\\Models\\MenuNode'),
(167, 'en_US', '1116a5ce1d39cd716e7d85f0d2617215', 171, 'Botble\\Menu\\Models\\MenuNode'),
(168, 'en_US', '57eeff0ae92c6591dc855aae030c3054', 168, 'Botble\\Menu\\Models\\MenuNode'),
(169, 'en_US', 'df29b1109c3978fd3210eb2d05fd7d7a', 169, 'Botble\\Menu\\Models\\MenuNode'),
(170, 'en_US', 'cb324e1a7c92436204d0e9cc7c614003', 170, 'Botble\\Menu\\Models\\MenuNode'),
(171, 'en_US', '008257528c82f1b144fb3bbaac29d70b', 173, 'Botble\\Menu\\Models\\MenuNode'),
(172, 'en_US', '485f88e7b4ecd810b5a254bfb198aa0f', 172, 'Botble\\Menu\\Models\\MenuNode'),
(173, 'en_US', '74f387ea85c41a07cc27e166b3d98658', 174, 'Botble\\Menu\\Models\\MenuNode'),
(174, 'en_US', '4d8cc0f0fe8fdbb88886c21c1d9108c8', 175, 'Botble\\Menu\\Models\\MenuNode'),
(175, 'en_US', 'd99cf45e446a0f74b821642d3a4a05f7', 176, 'Botble\\Menu\\Models\\MenuNode'),
(176, 'en_US', 'd3d678c00b87ed40358854a2bdc87d69', 177, 'Botble\\Menu\\Models\\MenuNode'),
(177, 'en_US', '1f172aef01eafa5f38a5002fb216c38b', 179, 'Botble\\Menu\\Models\\MenuNode'),
(178, 'en_US', '1e2277bf051f869c2c63bbaadbd76a12', 178, 'Botble\\Menu\\Models\\MenuNode'),
(179, 'id_ID', '7ab29c3dbd59bb8d44c9b749acece345', 6, 'Botble\\Menu\\Models\\Menu'),
(180, 'id_ID', 'fa88e4263794d1be18c375d9deed2f46', 6, 'Botble\\Menu\\Models\\MenuLocation'),
(181, 'id_ID', '0c81b6adc446a82a5ac01c249ab6ad1f', 180, 'Botble\\Menu\\Models\\MenuNode'),
(182, 'id_ID', '57eeff0ae92c6591dc855aae030c3054', 181, 'Botble\\Menu\\Models\\MenuNode'),
(183, 'id_ID', 'cb324e1a7c92436204d0e9cc7c614003', 182, 'Botble\\Menu\\Models\\MenuNode'),
(184, 'id_ID', '1116a5ce1d39cd716e7d85f0d2617215', 183, 'Botble\\Menu\\Models\\MenuNode'),
(185, 'id_ID', '008257528c82f1b144fb3bbaac29d70b', 184, 'Botble\\Menu\\Models\\MenuNode'),
(186, 'en_US', 'd99cf45e446a0f74b821642d3a4a05f7', 185, 'Botble\\Menu\\Models\\MenuNode'),
(187, 'en_US', '1e2277bf051f869c2c63bbaadbd76a12', 186, 'Botble\\Menu\\Models\\MenuNode'),
(188, 'en_US', '1f172aef01eafa5f38a5002fb216c38b', 187, 'Botble\\Menu\\Models\\MenuNode'),
(189, 'zh_TW', '7ab29c3dbd59bb8d44c9b749acece345', 7, 'Botble\\Menu\\Models\\Menu'),
(190, 'zh_TW', '1de74e960b26a31f66a4cb66575458a2', 7, 'Botble\\Menu\\Models\\MenuLocation'),
(191, 'zh_TW', '0c81b6adc446a82a5ac01c249ab6ad1f', 188, 'Botble\\Menu\\Models\\MenuNode'),
(192, 'zh_TW', '57eeff0ae92c6591dc855aae030c3054', 189, 'Botble\\Menu\\Models\\MenuNode'),
(193, 'zh_TW', 'cb324e1a7c92436204d0e9cc7c614003', 190, 'Botble\\Menu\\Models\\MenuNode'),
(194, 'zh_TW', '1116a5ce1d39cd716e7d85f0d2617215', 191, 'Botble\\Menu\\Models\\MenuNode'),
(195, 'zh_TW', '008257528c82f1b144fb3bbaac29d70b', 192, 'Botble\\Menu\\Models\\MenuNode'),
(196, 'en_US', 'd99cf45e446a0f74b821642d3a4a05f7', 193, 'Botble\\Menu\\Models\\MenuNode'),
(197, 'en_US', '1e2277bf051f869c2c63bbaadbd76a12', 194, 'Botble\\Menu\\Models\\MenuNode'),
(198, 'en_US', '1f172aef01eafa5f38a5002fb216c38b', 195, 'Botble\\Menu\\Models\\MenuNode'),
(199, 'ja', '7ab29c3dbd59bb8d44c9b749acece345', 8, 'Botble\\Menu\\Models\\Menu'),
(200, 'ja', '2d52fcb61c237e83cb5d4c0cd6868ed4', 8, 'Botble\\Menu\\Models\\MenuLocation'),
(201, 'ja', '0c81b6adc446a82a5ac01c249ab6ad1f', 196, 'Botble\\Menu\\Models\\MenuNode'),
(202, 'ja', '57eeff0ae92c6591dc855aae030c3054', 197, 'Botble\\Menu\\Models\\MenuNode'),
(203, 'ja', 'cb324e1a7c92436204d0e9cc7c614003', 198, 'Botble\\Menu\\Models\\MenuNode'),
(204, 'ja', '1116a5ce1d39cd716e7d85f0d2617215', 199, 'Botble\\Menu\\Models\\MenuNode'),
(205, 'ja', '008257528c82f1b144fb3bbaac29d70b', 200, 'Botble\\Menu\\Models\\MenuNode'),
(206, 'en_US', 'd99cf45e446a0f74b821642d3a4a05f7', 201, 'Botble\\Menu\\Models\\MenuNode'),
(207, 'en_US', '1e2277bf051f869c2c63bbaadbd76a12', 202, 'Botble\\Menu\\Models\\MenuNode'),
(208, 'en_US', '1f172aef01eafa5f38a5002fb216c38b', 203, 'Botble\\Menu\\Models\\MenuNode'),
(209, 'en_US', '88d1108e78a30ba27b31e4d407250c23', 204, 'Botble\\Menu\\Models\\MenuNode'),
(210, 'en_US', '645a1c7de01cdf5cfdc0cc603e9535bf', 205, 'Botble\\Menu\\Models\\MenuNode'),
(211, 'en_US', '052cb6bf7ffaf4b353ab99628b9771b4', 206, 'Botble\\Menu\\Models\\MenuNode');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(1, 0, '1', '1', 1, 'image/png', 9268, 'projects/1.png', '[]', '2025-02-25 19:08:34', '2025-02-25 19:08:34', NULL, 'public'),
(2, 0, '2', '2', 1, 'image/png', 9268, 'projects/2.png', '[]', '2025-02-25 19:08:34', '2025-02-25 19:08:34', NULL, 'public'),
(3, 0, '3', '3', 1, 'image/png', 9268, 'projects/3.png', '[]', '2025-02-25 19:08:34', '2025-02-25 19:08:34', NULL, 'public'),
(4, 0, '4', '4', 1, 'image/png', 9268, 'projects/4.png', '[]', '2025-02-25 19:08:34', '2025-02-25 19:08:34', NULL, 'public'),
(5, 0, '5', '5', 1, 'image/png', 9268, 'projects/5.png', '[]', '2025-02-25 19:08:34', '2025-02-25 19:08:34', NULL, 'public'),
(6, 0, '6', '6', 1, 'image/png', 9268, 'projects/6.png', '[]', '2025-02-25 19:08:34', '2025-02-25 19:08:34', NULL, 'public'),
(7, 0, '7', '7', 1, 'image/png', 12093, 'projects/7.png', '[]', '2025-02-25 19:08:35', '2025-02-25 19:08:35', NULL, 'public'),
(8, 0, '8', '8', 1, 'image/png', 12093, 'projects/8.png', '[]', '2025-02-25 19:08:35', '2025-02-25 19:08:35', NULL, 'public'),
(9, 0, '1', '1', 2, 'image/jpeg', 230266, 'services/1.jpg', '[]', '2025-02-25 19:08:35', '2025-02-25 19:08:35', NULL, 'public'),
(10, 0, '10', '10', 2, 'image/jpeg', 196018, 'services/10.jpg', '[]', '2025-02-25 19:08:35', '2025-02-25 19:08:35', NULL, 'public'),
(11, 0, '2', '2', 2, 'image/jpeg', 369786, 'services/2.jpg', '[]', '2025-02-25 19:08:35', '2025-02-25 19:08:35', NULL, 'public'),
(12, 0, '3', '3', 2, 'image/jpeg', 245886, 'services/3.jpg', '[]', '2025-02-25 19:08:35', '2025-02-25 19:08:35', NULL, 'public'),
(13, 0, '4', '4', 2, 'image/jpeg', 257774, 'services/4.jpg', '[]', '2025-02-25 19:08:36', '2025-02-25 19:08:36', NULL, 'public'),
(14, 0, '5', '5', 2, 'image/jpeg', 158866, 'services/5.jpg', '[]', '2025-02-25 19:08:36', '2025-02-25 19:08:36', NULL, 'public'),
(15, 0, '6', '6', 2, 'image/jpeg', 180793, 'services/6.jpg', '[]', '2025-02-25 19:08:36', '2025-02-25 19:08:36', NULL, 'public'),
(16, 0, '7', '7', 2, 'image/jpeg', 144859, 'services/7.jpg', '[]', '2025-02-25 19:08:36', '2025-02-25 19:08:36', NULL, 'public'),
(17, 0, '8', '8', 2, 'image/jpeg', 146310, 'services/8.jpg', '[]', '2025-02-25 19:08:36', '2025-02-25 19:08:36', NULL, 'public'),
(18, 0, '9', '9', 2, 'image/jpeg', 227162, 'services/9.jpg', '[]', '2025-02-25 19:08:36', '2025-02-25 19:08:36', NULL, 'public'),
(19, 0, 'android', 'android', 3, 'image/png', 1089, 'icons/android.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(20, 0, 'apple', 'apple', 3, 'image/png', 1153, 'icons/apple.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(21, 0, 'brave', 'brave', 3, 'image/png', 2089, 'icons/brave.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(22, 0, 'check', 'check', 3, 'image/png', 692, 'icons/check.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(23, 0, 'chrome', 'chrome', 3, 'image/png', 2088, 'icons/chrome.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(24, 0, 'contact', 'contact', 3, 'image/png', 2705, 'icons/contact.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(25, 0, 'finder', 'finder', 3, 'image/png', 3054, 'icons/finder.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(26, 0, 'firefox', 'firefox', 3, 'image/png', 4406, 'icons/firefox.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(27, 0, 'icon-1', 'icon-1', 3, 'image/png', 2383, 'icons/icon-1.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(28, 0, 'icon-10', 'icon-10', 3, 'image/png', 2413, 'icons/icon-10.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(29, 0, 'icon-11', 'icon-11', 3, 'image/png', 2311, 'icons/icon-11.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(30, 0, 'icon-12', 'icon-12', 3, 'image/png', 2895, 'icons/icon-12.png', '[]', '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL, 'public'),
(31, 0, 'icon-13', 'icon-13', 3, 'image/png', 1315, 'icons/icon-13.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(32, 0, 'icon-14', 'icon-14', 3, 'image/png', 1076, 'icons/icon-14.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(33, 0, 'icon-15', 'icon-15', 3, 'image/png', 3247, 'icons/icon-15.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(34, 0, 'icon-16', 'icon-16', 3, 'image/png', 2445, 'icons/icon-16.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(35, 0, 'icon-17', 'icon-17', 3, 'image/png', 2725, 'icons/icon-17.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(36, 0, 'icon-18', 'icon-18', 3, 'image/png', 2790, 'icons/icon-18.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(37, 0, 'icon-2', 'icon-2', 3, 'image/png', 2425, 'icons/icon-2.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(38, 0, 'icon-3', 'icon-3', 3, 'image/png', 1193, 'icons/icon-3.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(39, 0, 'icon-4', 'icon-4', 3, 'image/png', 2444, 'icons/icon-4.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(40, 0, 'icon-5', 'icon-5', 3, 'image/png', 1480, 'icons/icon-5.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(41, 0, 'icon-6', 'icon-6', 3, 'image/png', 1273, 'icons/icon-6.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(42, 0, 'icon-7', 'icon-7', 3, 'image/png', 1830, 'icons/icon-7.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(43, 0, 'icon-8', 'icon-8', 3, 'image/png', 439, 'icons/icon-8.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(44, 0, 'icon-9', 'icon-9', 3, 'image/png', 2194, 'icons/icon-9.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(45, 0, 'icon-star', 'icon-star', 3, 'image/png', 1988, 'icons/icon-star.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(46, 0, 'linux', 'linux', 3, 'image/png', 2935, 'icons/linux.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(47, 0, 'opera-mini', 'opera-mini', 3, 'image/png', 2809, 'icons/opera-mini.png', '[]', '2025-02-25 19:08:38', '2025-02-25 19:08:38', NULL, 'public'),
(48, 0, 'safari', 'safari', 3, 'image/png', 3297, 'icons/safari.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(49, 0, 'window', 'window', 3, 'image/png', 457, 'icons/window.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(50, 0, '1', '1', 4, 'image/png', 6025, 'teams/1.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(51, 0, '2', '2', 4, 'image/png', 6025, 'teams/2.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(52, 0, '3', '3', 4, 'image/png', 6025, 'teams/3.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(53, 0, '4', '4', 4, 'image/png', 6025, 'teams/4.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(54, 0, '5', '5', 4, 'image/png', 6025, 'teams/5.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(55, 0, '6', '6', 4, 'image/png', 6025, 'teams/6.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(56, 0, '7', '7', 4, 'image/png', 6025, 'teams/7.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(57, 0, '8', '8', 4, 'image/png', 6025, 'teams/8.png', '[]', '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL, 'public'),
(58, 0, 'avatar-1', 'avatar-1', 5, 'image/png', 1895, 'testimonials/avatar-1.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(59, 0, 'avatar-10', 'avatar-10', 5, 'image/png', 1895, 'testimonials/avatar-10.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(60, 0, 'avatar-11', 'avatar-11', 5, 'image/png', 1895, 'testimonials/avatar-11.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(61, 0, 'avatar-12', 'avatar-12', 5, 'image/png', 1895, 'testimonials/avatar-12.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(62, 0, 'avatar-13', 'avatar-13', 5, 'image/png', 1895, 'testimonials/avatar-13.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(63, 0, 'avatar-14', 'avatar-14', 5, 'image/png', 1895, 'testimonials/avatar-14.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(64, 0, 'avatar-15', 'avatar-15', 5, 'image/png', 1895, 'testimonials/avatar-15.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(65, 0, 'avatar-16', 'avatar-16', 5, 'image/png', 1895, 'testimonials/avatar-16.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(66, 0, 'avatar-17', 'avatar-17', 5, 'image/png', 1895, 'testimonials/avatar-17.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(67, 0, 'avatar-18', 'avatar-18', 5, 'image/png', 1895, 'testimonials/avatar-18.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(68, 0, 'avatar-19', 'avatar-19', 5, 'image/png', 1895, 'testimonials/avatar-19.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(69, 0, 'avatar-2', 'avatar-2', 5, 'image/png', 1895, 'testimonials/avatar-2.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(70, 0, 'avatar-20', 'avatar-20', 5, 'image/png', 1895, 'testimonials/avatar-20.png', '[]', '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL, 'public'),
(71, 0, 'avatar-3', 'avatar-3', 5, 'image/png', 1895, 'testimonials/avatar-3.png', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(72, 0, 'avatar-4', 'avatar-4', 5, 'image/png', 1441, 'testimonials/avatar-4.png', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(73, 0, 'avatar-5', 'avatar-5', 5, 'image/png', 1895, 'testimonials/avatar-5.png', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(74, 0, 'avatar-6', 'avatar-6', 5, 'image/png', 1895, 'testimonials/avatar-6.png', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(75, 0, 'avatar-7', 'avatar-7', 5, 'image/png', 1895, 'testimonials/avatar-7.png', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(76, 0, 'avatar-8', 'avatar-8', 5, 'image/png', 1895, 'testimonials/avatar-8.png', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(77, 0, 'avatar-9', 'avatar-9', 5, 'image/png', 1895, 'testimonials/avatar-9.png', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(78, 0, '1', '1', 6, 'image/jpeg', 10371, 'posts/1.jpg', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(79, 0, '10', '10', 6, 'image/jpeg', 10371, 'posts/10.jpg', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(80, 0, '11', '11', 6, 'image/jpeg', 10371, 'posts/11.jpg', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(81, 0, '12', '12', 6, 'image/jpeg', 10371, 'posts/12.jpg', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(82, 0, '13', '13', 6, 'image/jpeg', 10371, 'posts/13.jpg', '[]', '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL, 'public'),
(83, 0, '14', '14', 6, 'image/jpeg', 10371, 'posts/14.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(84, 0, '15', '15', 6, 'image/jpeg', 10371, 'posts/15.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(85, 0, '16', '16', 6, 'image/jpeg', 10371, 'posts/16.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(86, 0, '17', '17', 6, 'image/jpeg', 10371, 'posts/17.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(87, 0, '18', '18', 6, 'image/jpeg', 10371, 'posts/18.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(88, 0, '19', '19', 6, 'image/jpeg', 10371, 'posts/19.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(89, 0, '2', '2', 6, 'image/jpeg', 10371, 'posts/2.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(90, 0, '20', '20', 6, 'image/jpeg', 10371, 'posts/20.jpg', '[]', '2025-02-25 19:08:42', '2025-02-25 19:08:42', NULL, 'public'),
(91, 0, '3', '3', 6, 'image/jpeg', 10371, 'posts/3.jpg', '[]', '2025-02-25 19:08:43', '2025-02-25 19:08:43', NULL, 'public'),
(92, 0, '4', '4', 6, 'image/jpeg', 10371, 'posts/4.jpg', '[]', '2025-02-25 19:08:43', '2025-02-25 19:08:43', NULL, 'public'),
(93, 0, '5', '5', 6, 'image/jpeg', 10371, 'posts/5.jpg', '[]', '2025-02-25 19:08:43', '2025-02-25 19:08:43', NULL, 'public'),
(94, 0, '6', '6', 6, 'image/jpeg', 10371, 'posts/6.jpg', '[]', '2025-02-25 19:08:43', '2025-02-25 19:08:43', NULL, 'public'),
(95, 0, '7', '7', 6, 'image/jpeg', 10371, 'posts/7.jpg', '[]', '2025-02-25 19:08:43', '2025-02-25 19:08:43', NULL, 'public'),
(96, 0, '8', '8', 6, 'image/jpeg', 10371, 'posts/8.jpg', '[]', '2025-02-25 19:08:43', '2025-02-25 19:08:43', NULL, 'public'),
(97, 0, '9', '9', 6, 'image/jpeg', 10371, 'posts/9.jpg', '[]', '2025-02-25 19:08:43', '2025-02-25 19:08:43', NULL, 'public'),
(211, 0, '1', '1', 12, 'image/png', 26356, 'sliders/1.png', '[]', '2025-02-25 19:08:56', '2025-02-25 19:08:56', NULL, 'public'),
(212, 0, '2', '2', 12, 'image/png', 26356, 'sliders/2.png', '[]', '2025-02-25 19:08:56', '2025-02-25 19:08:56', NULL, 'public'),
(213, 0, 'banner', 'banner', 13, 'image/jpeg', 369786, 'careers/banner.jpg', '[]', '2025-02-25 19:08:56', '2025-02-25 19:08:56', NULL, 'public'),
(214, 0, '1', '1', 14, 'image/png', 1659, 'partners/1.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(215, 0, '2', '2', 14, 'image/png', 1659, 'partners/2.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(216, 0, '3', '3', 14, 'image/png', 1659, 'partners/3.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(217, 0, '4', '4', 14, 'image/png', 1659, 'partners/4.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(218, 0, '5', '5', 14, 'image/png', 1659, 'partners/5.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(219, 0, '6', '6', 14, 'image/png', 1659, 'partners/6.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(220, 0, '7', '7', 14, 'image/png', 1659, 'partners/7.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(221, 0, '8', '8', 14, 'image/png', 1659, 'partners/8.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(222, 0, 'icon-1', 'icon-1', 14, 'image/png', 1659, 'partners/icon-1.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(223, 0, 'icon-2', 'icon-2', 14, 'image/png', 1659, 'partners/icon-2.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(224, 0, 'icon-3', 'icon-3', 14, 'image/png', 1659, 'partners/icon-3.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(225, 0, 'icon-4', 'icon-4', 14, 'image/png', 1659, 'partners/icon-4.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(226, 0, 'icon-5', 'icon-5', 14, 'image/png', 1659, 'partners/icon-5.png', '[]', '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL, 'public'),
(227, 0, 'icon-6', 'icon-6', 14, 'image/png', 1659, 'partners/icon-6.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(228, 0, 'icon-7', 'icon-7', 14, 'image/png', 1659, 'partners/icon-7.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(229, 0, 'icon-8', 'icon-8', 14, 'image/png', 1659, 'partners/icon-8.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(230, 0, 'icon-9', 'icon-9', 14, 'image/png', 1659, 'partners/icon-9.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(231, 0, 'bg-line-bottom', 'bg-line-bottom', 15, 'image/png', 29676, 'backgrounds/bg-line-bottom.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(232, 0, 'bg-line-col', 'bg-line-col', 15, 'image/png', 5754, 'backgrounds/bg-line-col.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(233, 0, 'breadcrumb', 'breadcrumb', 15, 'image/png', 24620, 'backgrounds/breadcrumb.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(234, 0, 'contact', 'contact', 15, 'image/png', 269922, 'backgrounds/contact.png', '[]', '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL, 'public'),
(235, 0, 'faqs', 'faqs', 15, 'image/png', 24515, 'backgrounds/faqs.png', '[]', '2025-02-25 19:08:59', '2025-02-25 19:08:59', NULL, 'public'),
(236, 0, 'feature-2', 'feature-2', 15, 'image/png', 9504, 'backgrounds/feature-2.png', '[]', '2025-02-25 19:08:59', '2025-02-25 19:08:59', NULL, 'public'),
(237, 0, 'feature-3', 'feature-3', 15, 'image/png', 11841, 'backgrounds/feature-3.png', '[]', '2025-02-25 19:08:59', '2025-02-25 19:08:59', NULL, 'public'),
(238, 0, 'feature', 'feature', 15, 'image/png', 14912, 'backgrounds/feature.png', '[]', '2025-02-25 19:08:59', '2025-02-25 19:08:59', NULL, 'public'),
(239, 0, 'hb-bottom', 'hb-bottom', 15, 'image/png', 10215, 'backgrounds/hb-bottom.png', '[]', '2025-02-25 19:08:59', '2025-02-25 19:08:59', NULL, 'public'),
(240, 0, 'hb-right', 'hb-right', 15, 'image/png', 290762, 'backgrounds/hb-right.png', '[]', '2025-02-25 19:08:59', '2025-02-25 19:08:59', NULL, 'public'),
(241, 0, 'newsletter-left', 'newsletter-left', 15, 'image/png', 8237, 'backgrounds/newsletter-left.png', '[]', '2025-02-25 19:09:00', '2025-02-25 19:09:00', NULL, 'public'),
(242, 0, 'newsletter', 'newsletter', 15, 'image/png', 17476, 'backgrounds/newsletter.png', '[]', '2025-02-25 19:09:00', '2025-02-25 19:09:00', NULL, 'public'),
(243, 0, 'service-detail-feature', 'service-detail-feature', 15, 'image/png', 6997, 'backgrounds/service-detail-feature.png', '[]', '2025-02-25 19:09:00', '2025-02-25 19:09:00', NULL, 'public'),
(244, 0, 'service', 'service', 15, 'image/png', 518968, 'backgrounds/service.png', '[]', '2025-02-25 19:09:00', '2025-02-25 19:09:00', NULL, 'public'),
(245, 0, 'team', 'team', 15, 'image/png', 40164, 'backgrounds/team.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(246, 0, 'testimonial', 'testimonial', 15, 'image/png', 25147, 'backgrounds/testimonial.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(247, 0, '1', '1', 16, 'image/png', 5501, 'shapes/1.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(248, 0, '2', '2', 16, 'image/png', 4663, 'shapes/2.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(249, 0, '3', '3', 16, 'image/png', 4866, 'shapes/3.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(250, 0, '4', '4', 16, 'image/png', 1927, 'shapes/4.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(251, 0, 'icon-contact', 'icon-contact', 16, 'image/png', 2679, 'shapes/icon-contact.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(252, 0, 'img-favicon', 'img-favicon', 16, 'image/png', 16493, 'shapes/img-favicon.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(253, 0, 'site-statistics-decorate', 'site-statistics-decorate', 16, 'image/png', 4397, 'shapes/site-statistics-decorate.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(254, 0, 'testimonial-star', 'testimonial-star', 16, 'image/png', 4416, 'shapes/testimonial-star.png', '[]', '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL, 'public'),
(255, 0, '404', '404', 17, 'image/png', 59748, 'general/404.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(256, 0, 'about-us-information-2-1', 'about-us-information-2-1', 17, 'image/jpeg', 21828, 'general/about-us-information-2-1.jpeg', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(257, 0, 'about-us-information-img', 'about-us-information-img', 17, 'image/png', 8769, 'general/about-us-information-img.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(258, 0, 'about-us-information-tabs-1', 'about-us-information-tabs-1', 17, 'image/png', 9348, 'general/about-us-information-tabs-1.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(259, 0, 'about-us-information-tabs-2', 'about-us-information-tabs-2', 17, 'image/png', 4373, 'general/about-us-information-tabs-2.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(260, 0, 'about-us-information-tabs-3', 'about-us-information-tabs-3', 17, 'image/png', 5152, 'general/about-us-information-tabs-3.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(261, 0, 'about-us-information-tabs-4', 'about-us-information-tabs-4', 17, 'image/png', 5315, 'general/about-us-information-tabs-4.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(262, 0, 'app-downloads-img', 'app-downloads-img', 17, 'image/png', 13226, 'general/app-downloads-img.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(263, 0, 'app-payment-1', 'app-payment-1', 17, 'image/png', 1055, 'general/app-payment-1.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(264, 0, 'app-payment-2', 'app-payment-2', 17, 'image/png', 1088, 'general/app-payment-2.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(265, 0, 'app-payment-3', 'app-payment-3', 17, 'image/png', 1088, 'general/app-payment-3.png', '[]', '2025-02-25 19:09:02', '2025-02-25 19:09:02', NULL, 'public'),
(266, 0, 'app-payment-4', 'app-payment-4', 17, 'image/png', 1088, 'general/app-payment-4.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(267, 0, 'apple-store', 'apple-store', 17, 'image/png', 1088, 'general/apple-store.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(268, 0, 'author-avatar', 'author-avatar', 17, 'image/png', 829, 'general/author-avatar.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(269, 0, 'author-signature', 'author-signature', 17, 'image/png', 3986, 'general/author-signature.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(270, 0, 'call-to-action-1', 'call-to-action-1', 17, 'image/png', 3935, 'general/call-to-action-1.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(271, 0, 'call-to-action-2', 'call-to-action-2', 17, 'image/png', 3211, 'general/call-to-action-2.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(272, 0, 'contact-block', 'contact-block', 17, 'image/png', 27069, 'general/contact-block.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(273, 0, 'customer-reviews', 'customer-reviews', 17, 'image/png', 1336, 'general/customer-reviews.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(274, 0, 'faqs-4-1', 'faqs-4-1', 17, 'image/png', 1700, 'general/faqs-4-1.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(275, 0, 'faqs-4-2', 'faqs-4-2', 17, 'image/png', 1539, 'general/faqs-4-2.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(276, 0, 'faqs-img-2', 'faqs-img-2', 17, 'image/png', 14774, 'general/faqs-img-2.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(277, 0, 'favicon', 'favicon', 17, 'image/png', 5745, 'general/favicon.png', '[]', '2025-02-25 19:09:03', '2025-02-25 19:09:03', NULL, 'public'),
(278, 0, 'feature-tabs-1', 'feature-tabs-1', 17, 'image/png', 6181, 'general/feature-tabs-1.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(279, 0, 'feature-tabs-2', 'feature-tabs-2', 17, 'image/png', 6181, 'general/feature-tabs-2.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(280, 0, 'feature-tabs-3', 'feature-tabs-3', 17, 'image/png', 6181, 'general/feature-tabs-3.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(281, 0, 'feature-tabs-4', 'feature-tabs-4', 17, 'image/png', 6181, 'general/feature-tabs-4.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(282, 0, 'feature-tabs-5', 'feature-tabs-5', 17, 'image/png', 6181, 'general/feature-tabs-5.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(283, 0, 'feature-tabs-6', 'feature-tabs-6', 17, 'image/png', 6181, 'general/feature-tabs-6.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(284, 0, 'features-10', 'features-10', 17, 'image/png', 8491, 'general/features-10.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(285, 0, 'features-4-1', 'features-4-1', 17, 'image/png', 10249, 'general/features-4-1.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(286, 0, 'features-4-2', 'features-4-2', 17, 'image/png', 10249, 'general/features-4-2.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(287, 0, 'features-5', 'features-5', 17, 'image/png', 8308, 'general/features-5.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(288, 0, 'features-6', 'features-6', 17, 'image/png', 12294, 'general/features-6.png', '[]', '2025-02-25 19:09:04', '2025-02-25 19:09:04', NULL, 'public'),
(289, 0, 'features-7', 'features-7', 17, 'image/png', 13812, 'general/features-7.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(290, 0, 'features-8', 'features-8', 17, 'image/png', 12294, 'general/features-8.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(291, 0, 'features-9-1', 'features-9-1', 17, 'image/png', 12142, 'general/features-9-1.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(292, 0, 'features-9-2', 'features-9-2', 17, 'image/png', 9907, 'general/features-9-2.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(293, 0, 'google-play', 'google-play', 17, 'image/png', 1055, 'general/google-play.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(294, 0, 'hero-banner-2', 'hero-banner-2', 17, 'image/png', 16796, 'general/hero-banner-2.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(295, 0, 'hero-banner-3-1', 'hero-banner-3-1', 17, 'image/png', 4802, 'general/hero-banner-3-1.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(296, 0, 'hero-banner-3-2', 'hero-banner-3-2', 17, 'image/png', 4802, 'general/hero-banner-3-2.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(297, 0, 'hero-banner-3-3', 'hero-banner-3-3', 17, 'image/png', 4802, 'general/hero-banner-3-3.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(298, 0, 'hero-banner-3-4', 'hero-banner-3-4', 17, 'image/png', 4802, 'general/hero-banner-3-4.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(299, 0, 'instruction-steps-img', 'instruction-steps-img', 17, 'image/png', 17764, 'general/instruction-steps-img.png', '[]', '2025-02-25 19:09:05', '2025-02-25 19:09:05', NULL, 'public'),
(300, 0, 'line-bg', 'line-bg', 17, 'image/png', 137399, 'general/line-bg.png', '[]', '2025-02-25 19:09:06', '2025-02-25 19:09:06', NULL, 'public'),
(301, 0, 'logo-dark', 'logo-dark', 17, 'image/png', 9772, 'general/logo-dark.png', '[]', '2025-02-25 19:09:06', '2025-02-25 19:09:06', NULL, 'public'),
(302, 0, 'logo-white', 'logo-white', 17, 'image/png', 8576, 'general/logo-white.png', '[]', '2025-02-25 19:09:06', '2025-02-25 19:09:06', NULL, 'public'),
(303, 0, 'mastercard', 'mastercard', 17, 'image/png', 929, 'general/mastercard.png', '[]', '2025-02-25 19:09:06', '2025-02-25 19:09:06', NULL, 'public'),
(304, 0, 'microsoft', 'microsoft', 17, 'image/png', 1088, 'general/microsoft.png', '[]', '2025-02-25 19:09:06', '2025-02-25 19:09:06', NULL, 'public'),
(305, 0, 'newsletter-bg', 'newsletter-bg', 17, 'image/png', 529422, 'general/newsletter-bg.png', '[]', '2025-02-25 19:09:06', '2025-02-25 19:09:06', NULL, 'public'),
(306, 0, 'our-history-2', 'our-history-2', 17, 'image/png', 7300, 'general/our-history-2.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(307, 0, 'our-history-3', 'our-history-3', 17, 'image/png', 9878, 'general/our-history-3.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(308, 0, 'our-history-4', 'our-history-4', 17, 'image/png', 16994, 'general/our-history-4.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(309, 0, 'our-mission-3', 'our-mission-3', 17, 'image/png', 12501, 'general/our-mission-3.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(310, 0, 'our-mission-img-1', 'our-mission-img-1', 17, 'image/png', 15539, 'general/our-mission-img-1.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(311, 0, 'our-mission-img-2-1', 'our-mission-img-2-1', 17, 'image/png', 13622, 'general/our-mission-img-2-1.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(312, 0, 'our-mission-img-2-2', 'our-mission-img-2-2', 17, 'image/png', 5389, 'general/our-mission-img-2-2.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(313, 0, 'our-mission-img-2', 'our-mission-img-2', 17, 'image/png', 1907, 'general/our-mission-img-2.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(314, 0, 'our-mission-img', 'our-mission-img', 17, 'image/png', 7336, 'general/our-mission-img.png', '[]', '2025-02-25 19:09:07', '2025-02-25 19:09:07', NULL, 'public'),
(315, 0, 'paypal', 'paypal', 17, 'image/png', 783, 'general/paypal.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(316, 0, 'platforms-featured-1', 'platforms-featured-1', 17, 'image/png', 9021, 'general/platforms-featured-1.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(317, 0, 'platforms-featured-2-1', 'platforms-featured-2-1', 17, 'image/png', 8162, 'general/platforms-featured-2-1.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(318, 0, 'platforms-featured-2-2', 'platforms-featured-2-2', 17, 'image/png', 3449, 'general/platforms-featured-2-2.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(319, 0, 'skrill', 'skrill', 17, 'image/png', 779, 'general/skrill.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(320, 0, 'stripe', 'stripe', 17, 'image/png', 825, 'general/stripe.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(321, 0, 'team-3', 'team-3', 17, 'image/png', 14558, 'general/team-3.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(322, 0, 'work-process-1', 'work-process-1', 17, 'image/png', 12918, 'general/work-process-1.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(323, 0, 'work-process-2', 'work-process-2', 17, 'image/png', 12918, 'general/work-process-2.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(324, 0, 'work-process-3', 'work-process-3', 17, 'image/png', 12918, 'general/work-process-3.png', '[]', '2025-02-25 19:09:08', '2025-02-25 19:09:08', NULL, 'public'),
(325, 0, 'work-process-4', 'work-process-4', 17, 'image/png', 12918, 'general/work-process-4.png', '[]', '2025-02-25 19:09:09', '2025-02-25 19:09:09', NULL, 'public'),
(326, 0, 'sample', 'sample', 18, 'application/pdf', 18810, 'docs/sample.pdf', '[]', '2025-02-25 19:09:09', '2025-02-25 19:09:09', NULL, 'public'),
(327, 1, 'logo cable tech_upscayl_4x_upscayl-standard-4x copy', 'logo cable tech_upscayl_4x_upscayl-standard-4x copy', 0, 'image/png', 3452478, 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy.png', '[]', '2025-02-26 07:52:37', '2025-02-26 07:52:37', NULL, 'public'),
(328, 1, 'logo cable tech_upscayl_4x_upscayl-standard-4x copy2', 'logo cable tech_upscayl_4x_upscayl-standard-4x copy2', 0, 'image/png', 281269, 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png', '[]', '2025-02-26 07:53:27', '2025-02-26 07:53:27', NULL, 'public'),
(329, 1, 'white logo', 'white logo', 0, 'image/png', 279665, 'white-logo.png', '[]', '2025-02-26 07:53:33', '2025-02-26 07:53:33', NULL, 'public'),
(330, 1, '1', '1', 19, 'image/png', 88475, 'customers/1.png', '[]', '2025-02-27 03:17:30', '2025-02-27 03:17:30', NULL, 'public'),
(331, 1, '2', '2', 19, 'image/png', 15798, 'customers/2.png', '[]', '2025-02-27 03:17:31', '2025-02-27 03:17:31', NULL, 'public'),
(332, 1, '3', '3', 19, 'image/png', 93482, 'customers/3.png', '[]', '2025-02-27 03:17:32', '2025-02-27 03:17:32', NULL, 'public'),
(333, 1, '4', '4', 19, 'image/png', 22901, 'customers/4.png', '[]', '2025-02-27 03:17:32', '2025-02-27 03:17:32', NULL, 'public'),
(334, 1, '5', '5', 19, 'image/png', 18361, 'customers/5.png', '[]', '2025-02-27 03:17:33', '2025-02-27 03:17:33', NULL, 'public'),
(335, 1, '6', '6', 19, 'image/png', 42807, 'customers/6.png', '[]', '2025-02-27 03:17:33', '2025-02-27 03:17:33', NULL, 'public'),
(336, 1, '7', '7', 19, 'image/png', 33233, 'customers/7.png', '[]', '2025-02-27 03:17:34', '2025-02-27 03:17:34', NULL, 'public'),
(337, 1, '8', '8', 19, 'image/png', 48463, 'customers/8.png', '[]', '2025-02-27 03:17:34', '2025-02-27 03:17:34', NULL, 'public'),
(338, 1, '9', '9', 19, 'image/png', 124083, 'customers/9.png', '[]', '2025-02-27 03:17:35', '2025-02-27 03:17:35', NULL, 'public'),
(339, 1, '10', '10', 19, 'image/png', 46704, 'customers/10.png', '[]', '2025-02-27 03:17:35', '2025-02-27 03:17:35', NULL, 'public'),
(340, 1, '11', '11', 19, 'image/png', 115533, 'customers/11.png', '[]', '2025-02-27 03:17:36', '2025-02-27 03:17:36', NULL, 'public'),
(341, 1, '12', '12', 19, 'image/png', 38764, 'customers/12.png', '[]', '2025-02-27 03:17:37', '2025-02-27 03:17:37', NULL, 'public'),
(342, 1, '13', '13', 19, 'image/png', 109748, 'customers/13.png', '[]', '2025-02-27 03:17:37', '2025-02-27 03:17:37', NULL, 'public'),
(343, 1, '14', '14', 19, 'image/png', 3281, 'customers/14.png', '[]', '2025-02-27 03:17:38', '2025-02-27 03:17:38', NULL, 'public'),
(344, 1, 'image_fx_ (1)', 'image_fx_ (1)', 12, 'image/jpeg', 1650528, 'sliders/image-fx-1.jpg', '[]', '2025-02-27 04:05:41', '2025-02-27 04:05:41', NULL, 'public'),
(345, 1, 'image_fx_ (2)', 'image_fx_ (2)', 12, 'image/jpeg', 1393811, 'sliders/image-fx-2.jpg', '[]', '2025-02-27 04:22:28', '2025-02-27 04:22:28', NULL, 'public'),
(346, 1, 'Picture1', 'Picture1', 20, 'image/png', 73486, 'avatar/picture1.png', '[]', '2025-02-28 01:35:56', '2025-02-28 01:35:56', NULL, 'public'),
(347, 1, 'Picture1-1', 'Picture1-1', 20, 'image/png', 6415, 'avatar/picture1-1.png', '[]', '2025-02-28 01:38:38', '2025-02-28 01:38:38', NULL, 'public'),
(348, 1, 'images', 'images', 21, 'image/png', 23828, 'certification/images.png', '[]', '2025-02-28 02:21:44', '2025-02-28 02:21:44', NULL, 'public'),
(349, 1, 'iso', 'iso', 21, 'image/png', 10203, 'certification/iso.png', '[]', '2025-02-28 02:25:41', '2025-02-28 02:25:41', NULL, 'public'),
(350, 1, 'iat', 'iat', 21, 'image/png', 5484, 'certification/iat.png', '[]', '2025-02-28 02:25:50', '2025-02-28 02:25:50', NULL, 'public'),
(351, 1, 'slide2', 'slide2', 12, 'image/jpeg', 123736, 'sliders/slide2.jpg', '[]', '2025-02-28 03:28:26', '2025-02-28 03:28:26', NULL, 'public'),
(352, 1, 'slide2-1', 'slide2-1', 12, 'image/jpeg', 132511, 'sliders/slide2-1.jpg', '[]', '2025-02-28 03:30:09', '2025-02-28 03:30:09', NULL, 'public'),
(353, 1, 'Desain tanpa judul', 'Desain tanpa judul', 21, 'image/jpeg', 1851, 'certification/desain-tanpa-judul.jpg', '[]', '2025-02-28 03:54:42', '2025-02-28 03:54:42', NULL, 'public'),
(354, 1, 'e483448e-29fe-4cb1-89c1-7eb943a1a3ff', 'e483448e-29fe-4cb1-89c1-7eb943a1a3ff', 22, 'image/png', 23544, 'users/e483448e-29fe-4cb1-89c1-7eb943a1a3ff.png', '[]', '2025-02-28 07:26:51', '2025-02-28 07:26:51', NULL, 'public'),
(355, 1, 'IATF 2027', 'IATF 2027', 21, 'image/png', 466440, 'certification/iatf-2027.png', '[]', '2025-03-03 04:40:38', '2025-03-03 04:40:38', NULL, 'public'),
(356, 1, 'ISO 14001 2027', 'ISO 14001 2027', 21, 'image/png', 480039, 'certification/iso-14001-2027.png', '[]', '2025-03-03 04:40:39', '2025-03-03 04:40:39', NULL, 'public'),
(357, 1, 'iso 14001', 'iso 14001', 21, 'image/jpeg', 2583, 'certification/iso-14001.jpg', '[]', '2025-03-03 08:50:38', '2025-03-03 08:50:38', NULL, 'public'),
(358, 1, 'iso 14001-1', 'iso 14001-1', 21, 'image/jpeg', 3802, 'certification/iso-14001-1.jpg', '[]', '2025-03-03 09:10:10', '2025-03-03 09:10:10', NULL, 'public'),
(359, 1, 'iatf', 'iatf', 21, 'image/png', 11301, 'certification/iatf.png', '[]', '2025-03-03 09:12:04', '2025-03-03 09:12:04', NULL, 'public'),
(360, 1, 'Desain tanpa judul (1)', 'Desain tanpa judul (1)', 3, 'image/png', 673361, 'icons/desain-tanpa-judul-1.png', '[]', '2025-03-04 04:20:39', '2025-03-04 04:20:39', NULL, 'public'),
(361, 1, 'throttle', 'throttle', 23, 'image/jpeg', 27626, 'products/throttle.jpg', '[]', '2025-03-04 04:45:45', '2025-06-17 08:23:07', '2025-06-17 08:23:07', 'public'),
(362, 1, 'ad', 'ad', 23, 'image/png', 76925, 'products/ad.png', '[]', '2025-03-04 04:50:54', '2025-06-17 08:23:01', '2025-06-17 08:23:01', 'public'),
(363, 1, '4r', '4r', 23, 'image/jpeg', 11686, 'products/4r.jpg', '[]', '2025-03-04 04:52:19', '2025-06-17 08:22:58', '2025-06-17 08:22:58', 'public'),
(364, 1, 'seatlock', 'seatlock', 23, 'image/jpeg', 20415, 'products/seatlock.jpg', '[]', '2025-03-04 06:31:10', '2025-03-04 06:31:10', NULL, 'public'),
(365, 1, 'throttles', 'throttles', 23, 'image/jpeg', 26513, 'products/throttles.jpg', '[]', '2025-03-04 06:50:43', '2025-03-04 06:50:43', NULL, 'public'),
(366, 1, 'imgs', 'imgs', 23, 'image/jpeg', 11824, 'products/imgs.jpg', '[]', '2025-03-04 06:54:36', '2025-03-04 06:54:36', NULL, 'public'),
(367, 1, 'img2', 'img2', 23, 'image/jpeg', 8484, 'products/img2.jpg', '[]', '2025-03-04 06:57:32', '2025-06-17 08:22:34', '2025-06-17 08:22:34', 'public'),
(368, 1, 'automotive-control-cable', 'automotive-control-cable', 12, 'image/jpeg', 36066, 'sliders/automotive-control-cable.jpg', '[]', '2025-03-05 08:19:34', '2025-03-05 08:19:34', NULL, 'public'),
(369, 1, 'c1', 'c1', 21, 'image/jpeg', 139309, 'certification/c1.jpg', '[]', '2025-03-05 08:43:34', '2025-06-10 01:03:21', '2025-06-10 01:03:21', 'public'),
(370, 1, 'c5', 'c5', 21, 'image/jpeg', 175341, 'certification/c5.jpg', '[]', '2025-03-05 08:45:22', '2025-06-10 01:03:14', '2025-06-10 01:03:14', 'public'),
(371, 1, 'c4', 'c4', 21, 'image/jpeg', 87358, 'certification/c4.jpg', '[]', '2025-03-05 08:45:22', '2025-06-10 01:03:18', '2025-06-10 01:03:18', 'public'),
(372, 1, 'c3', 'c3', 21, 'image/jpeg', 74696, 'certification/c3.jpg', '[]', '2025-03-05 08:45:23', '2025-06-10 01:03:08', '2025-06-10 01:03:08', 'public'),
(373, 1, 'c2', 'c2', 21, 'image/jpeg', 98937, 'certification/c2.jpg', '[]', '2025-03-05 08:45:23', '2025-06-10 01:03:12', '2025-06-10 01:03:12', 'public'),
(374, 1, 'ct1', 'ct1', 0, 'image/jpeg', 219400, 'ct1.jpg', '[]', '2025-03-05 09:08:41', '2025-03-05 09:08:41', NULL, 'public'),
(375, 1, 'ct1-1', 'ct1-1', 0, 'image/jpeg', 30890, 'ct1-1.jpg', '[]', '2025-03-05 09:09:50', '2025-03-05 09:09:50', NULL, 'public'),
(376, 1, 'maps', 'maps', 0, 'image/png', 3404408, 'maps.png', '[]', '2025-03-07 01:15:26', '2025-03-07 01:15:26', NULL, 'public'),
(377, 1, 'cable tech', 'cable tech', 24, 'image/jpeg', 86203, 'branch/cable-tech.jpg', '[]', '2025-03-07 01:37:55', '2025-03-07 02:46:36', '2025-03-07 02:46:36', 'public'),
(378, 1, 'Chang Zhou Tsen You', 'Chang Zhou Tsen You', 24, 'image/jpeg', 44114, 'branch/chang-zhou-tsen-you.jpg', '[]', '2025-03-07 01:37:56', '2025-03-07 02:46:36', '2025-03-07 02:46:36', 'public'),
(379, 1, 'ct2', 'ct2', 24, 'image/jpeg', 102482, 'branch/ct2.jpg', '[]', '2025-03-07 01:37:56', '2025-03-07 02:46:36', '2025-03-07 02:46:36', 'public'),
(380, 1, 'Kakosi Co.LTD', 'Kakosi Co.LTD', 24, 'image/jpeg', 37119, 'branch/kakosi-coltd.jpg', '[]', '2025-03-07 01:37:57', '2025-03-07 02:46:36', '2025-03-07 02:46:36', 'public'),
(381, 1, 'Tsen Yeou Spring Co., Ltd', 'Tsen Yeou Spring Co., Ltd', 24, 'image/jpeg', 49763, 'branch/tsen-yeou-spring-co-ltd.jpg', '[]', '2025-03-07 01:37:57', '2025-03-07 02:46:36', '2025-03-07 02:46:36', 'public'),
(382, 1, 'cable tech-1', 'cable tech-1', 24, 'image/jpeg', 74441, 'branch/cable-tech-1.jpg', '[]', '2025-03-07 02:46:42', '2025-03-07 02:46:42', NULL, 'public'),
(383, 1, 'Chang Zhou Tsen You-1', 'Chang Zhou Tsen You-1', 24, 'image/jpeg', 38901, 'branch/chang-zhou-tsen-you-1.jpg', '[]', '2025-03-07 02:46:43', '2025-03-07 02:46:43', NULL, 'public'),
(384, 1, 'ct2-1', 'ct2-1', 24, 'image/jpeg', 78240, 'branch/ct2-1.jpg', '[]', '2025-03-07 02:46:43', '2025-03-07 02:46:43', NULL, 'public'),
(385, 1, 'Kakosi Co.LTD-1', 'Kakosi Co.LTD-1', 24, 'image/jpeg', 32822, 'branch/kakosi-coltd-1.jpg', '[]', '2025-03-07 02:46:44', '2025-03-07 02:46:44', NULL, 'public'),
(386, 1, 'Tsen Yeou Spring Co., Ltd-1', 'Tsen Yeou Spring Co., Ltd-1', 24, 'image/jpeg', 37675, 'branch/tsen-yeou-spring-co-ltd-1.jpg', '[]', '2025-03-07 02:46:44', '2025-03-07 02:46:44', NULL, 'public'),
(387, 1, 'iso-1', 'iso-1', 21, 'image/jpeg', 62227, 'certification/iso-1.jpg', '[]', '2025-03-07 07:15:23', '2025-03-07 07:15:23', NULL, 'public'),
(388, 1, 'acv', 'acv', 21, 'image/jpeg', 40386, 'certification/acv.jpg', '[]', '2025-03-07 07:44:51', '2025-03-07 07:44:51', NULL, 'public'),
(389, 1, 'c4', 'c4', 0, 'image/jpeg', 87358, 'c4.jpg', '[]', '2025-03-07 07:55:33', '2025-06-10 00:58:03', '2025-06-10 00:58:03', 'public'),
(390, 1, 'c5', 'c5', 0, 'image/jpeg', 175341, 'c5.jpg', '[]', '2025-03-07 07:55:33', '2025-06-10 00:58:07', '2025-06-10 00:58:07', 'public'),
(391, 1, 'c3', 'c3', 0, 'image/jpeg', 74696, 'c3.jpg', '[]', '2025-03-07 07:55:33', '2025-06-10 00:58:10', '2025-06-10 00:58:10', 'public'),
(392, 1, 'c2', 'c2', 0, 'image/jpeg', 98937, 'c2.jpg', '[]', '2025-03-07 07:55:33', '2025-06-10 00:58:13', '2025-06-10 00:58:13', 'public'),
(393, 1, 'c1', 'c1', 0, 'image/jpeg', 139309, 'c1.jpg', '[]', '2025-03-07 07:55:33', '2025-06-10 00:58:16', '2025-06-10 00:58:16', 'public'),
(394, 1, 'iso2', 'iso2', 21, 'image/jpeg', 41604, 'certification/iso2.jpg', '[]', '2025-03-07 09:04:52', '2025-03-07 09:04:52', NULL, 'public'),
(395, 1, 'acv-1', 'acv-1', 21, 'image/jpeg', 32003, 'certification/acv-1.jpg', '[]', '2025-03-07 09:06:07', '2025-03-07 09:06:07', NULL, 'public'),
(396, 1, 'iso2-1', 'iso2-1', 21, 'image/jpeg', 43409, 'certification/iso2-1.jpg', '[]', '2025-03-07 09:12:00', '2025-03-07 09:12:00', NULL, 'public'),
(397, 1, 'acv-2', 'acv-2', 21, 'image/jpeg', 33665, 'certification/acv-2.jpg', '[]', '2025-03-07 09:12:21', '2025-03-07 09:12:21', NULL, 'public'),
(398, 1, 'prod bg', 'prod bg', 15, 'image/png', 102395, 'backgrounds/prod-bg.png', '[]', '2025-03-13 01:20:15', '2025-03-13 01:20:15', NULL, 'public'),
(399, 1, 'Untitled-1', 'Untitled-1', 15, 'image/jpeg', 14968, 'backgrounds/untitled-1.jpg', '[]', '2025-03-13 02:57:22', '2025-03-13 02:57:22', NULL, 'public'),
(400, 1, 'Untitled-2', 'Untitled-2', 0, 'image/jpeg', 10655, 'untitled-2.jpg', '[]', '2025-03-13 03:39:25', '2025-03-13 03:39:25', NULL, 'public'),
(401, 1, 'callus', 'callus', 3, 'image/png', 1974, 'icons/callus.png', '[]', '2025-03-14 01:34:37', '2025-03-14 01:34:37', NULL, 'public'),
(402, 1, 'help', 'help', 3, 'image/png', 1948, 'icons/help.png', '[]', '2025-03-14 01:34:37', '2025-03-14 01:34:37', NULL, 'public'),
(403, 1, 'icon-14-1', 'icon-14-1', 3, 'image/png', 885, 'icons/icon-14-1.png', '[]', '2025-03-14 01:34:38', '2025-03-14 01:34:38', NULL, 'public'),
(404, 1, 'icon-15-1', 'icon-15-1', 3, 'image/png', 2291, 'icons/icon-15-1.png', '[]', '2025-03-14 01:34:38', '2025-03-14 01:34:38', NULL, 'public'),
(405, 1, 'callus-1', 'callus-1', 3, 'image/png', 18027, 'icons/callus-1.png', '[]', '2025-03-17 02:25:01', '2025-03-17 02:25:01', NULL, 'public'),
(406, 1, 'callus-2', 'callus-2', 3, 'image/png', 17482, 'icons/callus-2.png', '[]', '2025-03-17 02:26:04', '2025-03-17 02:26:04', NULL, 'public'),
(407, 1, 'callus-3', 'callus-3', 3, 'image/png', 17249, 'icons/callus-3.png', '[]', '2025-03-17 02:27:00', '2025-03-17 02:27:00', NULL, 'public'),
(408, 1, 'bukber', 'bukber', 25, 'image/jpeg', 509554, 'gallery/bukber.jpg', '[]', '2025-03-25 07:31:00', '2025-03-25 07:31:00', NULL, 'public'),
(409, 1, 'WIRE, SEAT LOCK_ Mrcly1', 'WIRE, SEAT LOCK_ Mrcly1', 23, 'image/png', 338024, 'products/wire-seat-lock-mrcly1.png', '[]', '2025-06-09 02:31:14', '2025-12-10 02:12:49', '2025-12-10 02:12:49', 'public'),
(410, 1, 'THROTTLE CABLE-MRCLY', 'THROTTLE CABLE-MRCLY', 23, 'image/png', 112412, 'products/throttle-cable-mrcly.png', '[]', '2025-06-09 02:32:20', '2025-12-10 02:12:49', '2025-12-10 02:12:49', 'public'),
(411, 1, 'CABLE ASSY PARKING FRONT_Atmv', 'CABLE ASSY PARKING FRONT_Atmv', 23, 'image/png', 508463, 'products/cable-assy-parking-front-atmv.png', '[]', '2025-06-09 02:34:59', '2025-07-08 02:38:51', '2025-07-08 02:38:51', 'public'),
(412, 1, 'icon 1', 'icon 1', 3, 'image/jpeg', 28785, 'icons/icon-1.jpg', '[]', '2025-06-09 02:38:57', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(413, 1, 'icon8', 'icon8', 3, 'image/png', 12288, 'icons/icon8.png', '[]', '2025-06-09 02:40:52', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(414, 1, 'CABLE ASSY HOOD LOCK CONTROL_Atmv', 'CABLE ASSY HOOD LOCK CONTROL_Atmv', 3, 'image/png', 23093, 'icons/cable-assy-hood-lock-control-atmv.png', '[]', '2025-06-09 03:02:40', '2025-06-09 06:18:31', '2025-06-09 06:18:31', 'public'),
(415, 1, 'icon9', 'icon9', 3, 'image/png', 34901, 'icons/icon9.png', '[]', '2025-06-09 03:08:10', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(416, 1, 'WIRE,PULL _Mrcly1', 'WIRE,PULL _Mrcly1', 23, 'image/png', 209503, 'products/wirepull-mrcly1.png', '[]', '2025-06-09 03:09:35', '2025-12-10 02:12:49', '2025-12-10 02:12:49', 'public'),
(417, 1, 'CABLE COMP,FUEL LID OPENER_Atmv1', 'CABLE COMP,FUEL LID OPENER_Atmv1', 23, 'image/png', 100614, 'products/cable-compfuel-lid-opener-atmv1.png', '[]', '2025-06-09 03:11:31', '2025-12-10 02:12:49', '2025-12-10 02:12:49', 'public'),
(418, 1, 'CABLE CLUTCH_MRCLY', 'CABLE CLUTCH_MRCLY', 23, 'image/png', 335932, 'products/cable-clutch-mrcly.png', '[]', '2025-06-09 06:05:04', '2025-12-10 02:12:49', '2025-12-10 02:12:49', 'public'),
(419, 1, 'icon 5', 'icon 5', 3, 'image/jpeg', 31880, 'icons/icon-5.jpg', '[]', '2025-06-09 06:08:55', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(420, 1, 'SPEEDO. CABLE ASSY_ Mrcly1', 'SPEEDO. CABLE ASSY_ Mrcly1', 23, 'image/png', 146288, 'products/speedo-cable-assy-mrcly1.png', '[]', '2025-06-09 06:09:09', '2025-07-08 02:38:42', '2025-07-08 02:38:42', 'public'),
(421, 1, 'CABLE COMP,HOOD LATCH RELEASE_Atmv1', 'CABLE COMP,HOOD LATCH RELEASE_Atmv1', 3, 'image/png', 544819, 'icons/cable-comphood-latch-release-atmv1.png', '[]', '2025-06-09 06:19:37', '2025-06-09 06:23:58', '2025-06-09 06:23:58', 'public'),
(422, 1, 'CABLE COMP,HOOD LATCH RELEASE_Atmv1', 'CABLE COMP,HOOD LATCH RELEASE_Atmv1', 23, 'image/png', 544819, 'products/cable-comphood-latch-release-atmv1.png', '[]', '2025-06-09 06:20:23', '2025-12-10 02:12:49', '2025-12-10 02:12:49', 'public'),
(423, 1, 'icon 2', 'icon 2', 3, 'image/jpeg', 114266, 'icons/icon-2.jpg', '[]', '2025-06-09 06:24:34', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(424, 1, 'icon 3', 'icon 3', 3, 'image/jpeg', 5990, 'icons/icon-3.jpg', '[]', '2025-06-09 06:24:49', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(425, 1, 'icon6', 'icon6', 3, 'image/png', 17114, 'icons/icon6.png', '[]', '2025-06-09 06:24:59', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(426, 1, 'icon10', 'icon10', 3, 'image/png', 281817, 'icons/icon10.png', '[]', '2025-06-09 06:30:00', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(427, 1, 'icon11', 'icon11', 3, 'image/png', 922403, 'icons/icon11.png', '[]', '2025-06-09 06:37:59', '2025-06-09 06:39:40', '2025-06-09 06:39:40', 'public'),
(428, 1, 'icon11-1', 'icon11-1', 3, 'image/png', 251614, 'icons/icon11-1.png', '[]', '2025-06-09 06:40:45', '2025-06-09 06:40:58', '2025-06-09 06:40:58', 'public'),
(429, 1, 'icon11-2', 'icon11-2', 3, 'image/png', 149721, 'icons/icon11-2.png', '[]', '2025-06-09 06:41:25', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(430, 1, 'tyt 2', 'tyt 2', 21, 'image/png', 583774, 'certification/tyt-2.png', '[]', '2025-06-10 01:04:01', '2025-12-10 03:37:28', '2025-12-10 03:37:28', 'public'),
(431, 1, 'tyt 3', 'tyt 3', 21, 'image/png', 952544, 'certification/tyt-3.png', '[]', '2025-06-10 01:04:38', '2025-12-10 03:37:28', '2025-12-10 03:37:28', 'public'),
(432, 1, 'tyt 6', 'tyt 6', 21, 'image/png', 1608838, 'certification/tyt-6.png', '[]', '2025-06-10 01:05:52', '2025-12-10 03:37:28', '2025-12-10 03:37:28', 'public'),
(433, 1, 'tyt 7', 'tyt 7', 21, 'image/png', 2137301, 'certification/tyt-7.png', '[]', '2025-06-10 01:06:51', '2025-12-10 03:37:28', '2025-12-10 03:37:28', 'public'),
(434, 1, 'pt alva', 'pt alva', 19, 'image/png', 6650, 'customers/pt-alva.png', '[]', '2025-06-13 01:21:27', '2025-06-13 01:25:22', '2025-06-13 01:25:22', 'public'),
(435, 1, 'pt maka', 'pt maka', 19, 'image/png', 33632, 'customers/pt-maka.png', '[]', '2025-06-13 01:21:57', '2025-12-10 03:40:55', '2025-12-10 03:40:55', 'public'),
(436, 1, 'pt alva-1', 'pt alva-1', 19, 'image/png', 7010, 'customers/pt-alva-1.png', '[]', '2025-06-13 01:25:04', '2025-06-13 06:07:56', '2025-06-13 06:07:56', 'public'),
(437, 1, 'Kunjungan smk klaten', 'Kunjungan smk klaten', 25, 'image/jpeg', 251313, 'gallery/kunjungan-smk-klaten.jpeg', '[]', '2025-06-13 02:11:10', '2025-12-10 03:27:05', '2025-12-10 03:27:05', 'public'),
(438, 1, 'Tasyakur', 'Tasyakur', 25, 'image/jpeg', 160418, 'gallery/tasyakur.jpeg', '[]', '2025-06-13 02:20:09', '2025-12-10 03:27:05', '2025-12-10 03:27:05', 'public'),
(439, 1, 'automotive-control-cable', 'automotive-control-cable', 23, 'image/jpeg', 36066, 'products/automotive-control-cable.jpg', '[]', '2025-06-13 03:48:04', '2025-12-10 02:12:49', '2025-12-10 02:12:49', 'public'),
(440, 1, 'pt-alva', 'pt-alva', 19, 'image/png', 12846, 'customers/pt-alva.png', '[]', '2025-06-13 05:59:25', '2025-06-13 06:07:50', '2025-06-13 06:07:50', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(441, 1, 'pt-alva-1', 'pt-alva-1', 19, 'image/png', 12189, 'customers/pt-alva-1.png', '[]', '2025-06-13 06:01:58', '2025-06-13 06:07:53', '2025-06-13 06:07:53', 'public'),
(442, 1, 'pt-alva-2', 'pt-alva-2', 19, 'image/png', 12442, 'customers/pt-alva-2.png', '[]', '2025-06-13 06:04:28', '2025-06-13 06:07:47', '2025-06-13 06:07:47', 'public'),
(443, 1, 'pt-alva-3', 'pt-alva-3', 19, 'image/png', 12373, 'customers/pt-alva-3.png', '[]', '2025-06-13 06:07:28', '2025-06-13 06:16:24', '2025-06-13 06:16:24', 'public'),
(444, 1, 'pt-alva-4', 'pt-alva-4', 19, 'image/png', 10929, 'customers/pt-alva-4.png', '[]', '2025-06-13 06:10:12', '2025-06-13 06:16:21', '2025-06-13 06:16:21', 'public'),
(445, 1, 'pt-alva-5', 'pt-alva-5', 19, 'image/png', 10268, 'customers/pt-alva-5.png', '[]', '2025-06-13 06:11:57', '2025-06-13 06:16:18', '2025-06-13 06:16:18', 'public'),
(446, 1, 'pt-alva-6', 'pt-alva-6', 19, 'image/png', 10045, 'customers/pt-alva-6.png', '[]', '2025-06-13 06:13:39', '2025-12-10 03:40:55', '2025-12-10 03:40:55', 'public'),
(447, 1, 'apar', 'apar', 25, 'image/jpeg', 2710033, 'gallery/apar.jpg', '[]', '2025-06-16 04:50:45', '2025-12-10 03:27:05', '2025-12-10 03:27:05', 'public'),
(448, 1, 'Training KYT', 'Training KYT', 25, 'image/jpeg', 132414, 'gallery/training-kyt.jpeg', '[]', '2025-06-16 06:54:21', '2025-12-10 03:27:05', '2025-12-10 03:27:05', 'public'),
(449, 1, 'Materi KYT', 'Materi KYT', 0, 'image/jpeg', 59571, 'materi-kyt.jpeg', '[]', '2025-06-16 06:55:13', '2025-06-16 06:55:13', NULL, 'public'),
(450, 1, 'Training TPM', 'Training TPM', 25, 'image/jpeg', 178304, 'gallery/training-tpm.jpeg', '[]', '2025-06-16 07:02:52', '2025-12-10 03:27:05', '2025-12-10 03:27:05', 'public'),
(451, 1, 'tyt 1', 'tyt 1', 21, 'image/png', 894450, 'certification/tyt-1.png', '[]', '2025-07-08 02:27:59', '2025-12-10 03:37:28', '2025-12-10 03:37:28', 'public'),
(452, 1, 'SPEEDO. CABLE ASSY_ Mrcly1-1', 'SPEEDO. CABLE ASSY_ Mrcly1-1', 23, 'image/png', 283042, 'products/speedo-cable-assy-mrcly1-1.png', '[]', '2025-07-08 02:37:54', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(453, 1, 'CABLE ASSY PARKING FRONT_Atmv-1', 'CABLE ASSY PARKING FRONT_Atmv-1', 23, 'image/png', 1046966, 'products/cable-assy-parking-front-atmv-1.png', '[]', '2025-07-08 02:38:29', '2025-07-08 02:39:47', '2025-07-08 02:39:47', 'public'),
(454, 1, 'CABLE ASSY PARKING FRONT_Atmv-2', 'CABLE ASSY PARKING FRONT_Atmv-2', 23, 'image/png', 1072389, 'products/cable-assy-parking-front-atmv-2.png', '[]', '2025-07-08 02:39:53', '2025-07-08 02:42:26', '2025-07-08 02:42:26', 'public'),
(455, 1, 'CABLE ASSY PARKING FRONT_Atmv-3', 'CABLE ASSY PARKING FRONT_Atmv-3', 23, 'image/png', 1074931, 'products/cable-assy-parking-front-atmv-3.png', '[]', '2025-07-08 02:41:17', '2025-07-08 02:42:22', '2025-07-08 02:42:22', 'public'),
(456, 1, 'CABLE ASSY PARKING FRONT_Atmv-4', 'CABLE ASSY PARKING FRONT_Atmv-4', 23, 'image/png', 1076568, 'products/cable-assy-parking-front-atmv-4.png', '[]', '2025-07-08 02:41:55', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(457, 1, 'icon12', 'icon12', 3, 'image/png', 758144, 'icons/icon12.png', '[]', '2025-07-08 03:12:33', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(458, 1, 'wire brake', 'wire brake', 23, 'image/png', 464833, 'products/wire-brake.png', '[]', '2025-07-08 04:52:55', '2025-07-08 04:56:34', '2025-07-08 04:56:34', 'public'),
(459, 1, 'wire brake-1', 'wire brake-1', 23, 'image/png', 491843, 'products/wire-brake-1.png', '[]', '2025-07-08 04:56:41', '2025-07-08 04:57:11', '2025-07-08 04:57:11', 'public'),
(460, 1, 'wire brake-2', 'wire brake-2', 23, 'image/png', 512037, 'products/wire-brake-2.png', '[]', '2025-07-08 04:57:21', '2025-07-08 04:58:07', '2025-07-08 04:58:07', 'public'),
(461, 1, 'wire brake-3', 'wire brake-3', 23, 'image/png', 511933, 'products/wire-brake-3.png', '[]', '2025-07-08 04:58:16', '2025-07-08 08:38:39', '2025-07-08 08:38:39', 'public'),
(462, 1, 'icon14', 'icon14', 3, 'image/png', 650933, 'icons/icon14.png', '[]', '2025-07-08 05:56:09', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(464, 1, 'Door Latch Cable-1', 'Door Latch Cable-1', 23, 'image/jpeg', 4186, 'products/door-latch-cable-1.jpg', '[]', '2025-07-08 06:15:35', '2025-07-08 06:17:57', '2025-07-08 06:17:57', 'public'),
(465, 1, 'Door Latch Cable-2', 'Door Latch Cable-2', 23, 'image/jpeg', 4386, 'products/door-latch-cable-2.jpg', '[]', '2025-07-08 06:16:16', '2025-07-08 08:34:10', '2025-07-08 08:34:10', 'public'),
(466, 1, 'icon 16', 'icon 16', 3, 'image/png', 691146, 'icons/icon-16.png', '[]', '2025-07-08 06:20:12', '2025-07-08 06:20:12', NULL, 'public'),
(469, 1, 'DOOR LATCH_ATMV-2', 'DOOR LATCH_ATMV-2', 23, 'image/png', 256208, 'products/door-latch-atmv-2.png', '[]', '2025-07-08 08:09:27', '2025-07-08 08:10:27', '2025-07-08 08:10:27', 'public'),
(470, 1, 'Tip-Up Sheet Cable', 'DOOR LATCH_ATMV-3', 23, 'image/png', 257091, 'products/door-latch-atmv-3.png', '[]', '2025-07-08 08:10:02', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(471, 1, '444444', '444444', 23, 'image/png', 296294, 'products/444444.png', '[]', '2025-07-08 08:28:27', '2025-07-08 08:38:33', '2025-07-08 08:38:33', 'public'),
(472, 1, '444444-1', '444444-1', 23, 'image/png', 309945, 'products/444444-1.png', '[]', '2025-07-08 08:29:47', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(473, 1, 'icon17', 'icon17', 3, 'image/png', 512069, 'icons/icon17.png', '[]', '2025-07-08 08:36:52', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(474, 1, 'WINOW BENER', 'WINOW BENER', 23, 'image/png', 534213, 'products/winow-bener.png', '[]', '2025-07-28 03:40:12', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(475, 1, 'WINDOW REGULALTOR', 'WINDOW REGULALTOR', 23, 'image/png', 559994, 'products/window-regulaltor.png', '[]', '2025-07-28 03:41:31', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(480, 1, 'contact-removebg-preview (2)', 'contact-removebg-preview (2)', 3, 'image/png', 94058, 'icons/contact-removebg-preview-2.png', '[]', '2025-07-28 04:17:37', '2025-07-28 04:19:07', '2025-07-28 04:19:07', 'public'),
(481, 1, 'contact-removebg-preview (3)', 'contact-removebg-preview (3)', 3, 'image/png', 94432, 'icons/contact-removebg-preview-3.png', '[]', '2025-07-28 04:18:44', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(483, 1, 'kontak-removebg-preview', 'kontak-removebg-preview', 3, 'image/png', 108982, 'icons/kontak-removebg-preview.png', '[]', '2025-07-28 06:27:04', '2025-07-28 06:27:04', NULL, 'public'),
(484, 1, 'Cable front door look', 'Cable front door look', 23, 'image/png', 330019, 'products/cable-front-door-look.png', '[]', '2025-07-28 06:37:29', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(485, 1, 'icon19', 'icon19', 3, 'image/png', 1045615, 'icons/icon19.png', '[]', '2025-07-28 06:48:30', '2025-12-10 02:15:49', '2025-12-10 02:15:49', 'public'),
(486, 1, 'SPEEDO. CABLE ASSY_ Mrcly1-2', 'SPEEDO. CABLE ASSY_ Mrcly1-2', 23, 'image/png', 289531, 'products/speedo-cable-assy-mrcly1-2.png', '[]', '2025-11-18 08:07:25', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(487, 1, 'SPEEDO. CABLE ASSY_ Mrcly1-3', 'SPEEDO. CABLE ASSY_ Mrcly1-3', 23, 'image/png', 289531, 'products/speedo-cable-assy-mrcly1-3.png', '[]', '2025-11-18 08:09:15', '2025-12-10 02:12:48', '2025-12-10 02:12:48', 'public'),
(488, 1, 'SPEEDO. CABLE ASSY_ Mrcly1-4', 'SPEEDO. CABLE ASSY_ Mrcly1-4', 23, 'image/png', 283042, 'products/speedo-cable-assy-mrcly1-4.png', '[]', '2025-11-18 08:17:12', '2025-12-10 03:02:36', '2025-12-10 03:02:36', 'public'),
(489, 1, '444444-2', '444444-2', 23, 'image/png', 309945, 'products/444444-2.png', '[]', '2025-12-10 02:13:27', '2025-12-10 02:13:27', NULL, 'public'),
(490, 1, 'CABLE ASSY HOOD LOCK CONTROL_Atmv', 'CABLE ASSY HOOD LOCK CONTROL_Atmv', 23, 'image/png', 23093, 'products/cable-assy-hood-lock-control-atmv.png', '[]', '2025-12-10 02:13:28', '2025-12-10 03:03:10', '2025-12-10 03:03:10', 'public'),
(491, 1, 'CABLE ASSY PARKING FRONT_Atmv-5', 'CABLE ASSY PARKING FRONT_Atmv-5', 23, 'image/png', 1076568, 'products/cable-assy-parking-front-atmv-5.png', '[]', '2025-12-10 02:13:30', '2025-12-10 02:13:30', NULL, 'public'),
(492, 1, 'CABLE CLUTCH_MRCLY-1', 'CABLE CLUTCH_MRCLY-1', 23, 'image/png', 335932, 'products/cable-clutch-mrcly-1.png', '[]', '2025-12-10 02:13:32', '2025-12-10 02:13:32', NULL, 'public'),
(493, 1, 'CABLE COMP,FUEL LID OPENER_Atmv1-1', 'CABLE COMP,FUEL LID OPENER_Atmv1-1', 23, 'image/png', 100614, 'products/cable-compfuel-lid-opener-atmv1-1.png', '[]', '2025-12-10 02:13:33', '2025-12-10 02:13:33', NULL, 'public'),
(494, 1, 'CABLE COMP,HOOD LATCH RELEASE_Atmv1-1', 'CABLE COMP,HOOD LATCH RELEASE_Atmv1-1', 23, 'image/png', 544819, 'products/cable-comphood-latch-release-atmv1-1.png', '[]', '2025-12-10 02:13:34', '2025-12-10 02:13:34', NULL, 'public'),
(495, 1, 'Cable front door look-1', 'Cable front door look-1', 23, 'image/png', 330019, 'products/cable-front-door-look-1.png', '[]', '2025-12-10 02:13:36', '2025-12-10 02:13:36', NULL, 'public'),
(496, 1, 'SPEEDO. CABLE ASSY_ Mrcly1-5', 'SPEEDO. CABLE ASSY_ Mrcly1-5', 23, 'image/png', 283042, 'products/speedo-cable-assy-mrcly1-5.png', '[]', '2025-12-10 02:13:37', '2025-12-10 03:02:31', '2025-12-10 03:02:31', 'public'),
(497, 1, 'THROTTLE CABLE-MRCLY-1', 'THROTTLE CABLE-MRCLY-1', 23, 'image/png', 112412, 'products/throttle-cable-mrcly-1.png', '[]', '2025-12-10 02:13:38', '2025-12-10 02:13:38', NULL, 'public'),
(498, 1, 'Tipup Sheet Cable', 'Tipup Sheet Cable', 23, 'image/png', 257091, 'products/tipup-sheet-cable.png', '[]', '2025-12-10 02:13:39', '2025-12-10 02:13:39', NULL, 'public'),
(499, 1, 'WINDOW REGULALTOR-1', 'WINDOW REGULALTOR-1', 23, 'image/png', 559994, 'products/window-regulaltor-1.png', '[]', '2025-12-10 02:13:41', '2025-12-10 02:13:41', NULL, 'public'),
(500, 1, 'WIRE, SEAT LOCK_ Mrcly1-1', 'WIRE, SEAT LOCK_ Mrcly1-1', 23, 'image/png', 338024, 'products/wire-seat-lock-mrcly1-1.png', '[]', '2025-12-10 02:13:42', '2025-12-10 02:13:42', NULL, 'public'),
(501, 1, 'WIRE,PULL _Mrcly1-1', 'WIRE,PULL _Mrcly1-1', 23, 'image/png', 209503, 'products/wirepull-mrcly1-1.png', '[]', '2025-12-10 02:13:43', '2025-12-10 02:13:43', NULL, 'public'),
(502, 1, 'contac', 'contac', 3, 'image/png', 94214, 'icons/contac.png', '[]', '2025-12-10 02:16:18', '2025-12-10 03:03:57', '2025-12-10 03:03:57', 'public'),
(503, 1, 'contac1', 'contac1', 3, 'image/png', 108982, 'icons/contac1.png', '[]', '2025-12-10 02:16:18', '2025-12-10 03:03:57', '2025-12-10 03:03:57', 'public'),
(504, 1, 'icon 1-1', 'icon 1-1', 3, 'image/jpeg', 28785, 'icons/icon-1-1.jpg', '[]', '2025-12-10 02:16:19', '2025-12-10 03:03:57', '2025-12-10 03:03:57', 'public'),
(505, 1, 'icon 2-1', 'icon 2-1', 3, 'image/jpeg', 114266, 'icons/icon-2-1.jpg', '[]', '2025-12-10 02:16:20', '2025-12-10 02:16:20', NULL, 'public'),
(506, 1, 'icon 3-1', 'icon 3-1', 3, 'image/jpeg', 5990, 'icons/icon-3-1.jpg', '[]', '2025-12-10 02:16:20', '2025-12-10 03:05:23', '2025-12-10 03:05:23', 'public'),
(507, 1, 'icon 5-1', 'icon 5-1', 3, 'image/jpeg', 31880, 'icons/icon-5-1.jpg', '[]', '2025-12-10 02:16:21', '2025-12-10 02:16:21', NULL, 'public'),
(508, 1, 'icon6-1', 'icon6-1', 3, 'image/png', 17114, 'icons/icon6-1.png', '[]', '2025-12-10 02:16:21', '2025-12-10 02:16:21', NULL, 'public'),
(509, 1, 'icon7', 'icon7', 3, 'image/webp', 6728, 'icons/icon7.webp', '[]', '2025-12-10 02:16:22', '2025-12-10 03:03:57', '2025-12-10 03:03:57', 'public'),
(510, 1, 'icon8-1', 'icon8-1', 3, 'image/png', 12288, 'icons/icon8-1.png', '[]', '2025-12-10 02:16:23', '2025-12-10 02:16:23', NULL, 'public'),
(511, 1, 'icon9-1', 'icon9-1', 3, 'image/png', 34901, 'icons/icon9-1.png', '[]', '2025-12-10 02:16:23', '2025-12-10 02:16:23', NULL, 'public'),
(512, 1, 'icon10-1', 'icon10-1', 3, 'image/png', 281817, 'icons/icon10-1.png', '[]', '2025-12-10 02:16:24', '2025-12-10 02:16:24', NULL, 'public'),
(513, 1, 'icon11-3', 'icon11-3', 3, 'image/png', 149721, 'icons/icon11-3.png', '[]', '2025-12-10 02:16:24', '2025-12-10 02:16:24', NULL, 'public'),
(514, 1, 'icon12-1', 'icon12-1', 3, 'image/png', 758144, 'icons/icon12-1.png', '[]', '2025-12-10 02:16:25', '2025-12-10 02:16:25', NULL, 'public'),
(515, 1, 'icon13', 'icon13', 3, 'image/jpeg', 18103, 'icons/icon13.jpg', '[]', '2025-12-10 02:16:26', '2025-12-10 03:03:57', '2025-12-10 03:03:57', 'public'),
(516, 1, 'icon14-1', 'icon14-1', 3, 'image/png', 650933, 'icons/icon14-1.png', '[]', '2025-12-10 02:16:27', '2025-12-10 02:16:27', NULL, 'public'),
(517, 1, 'icon15', 'icon15', 3, 'image/png', 10357, 'icons/icon15.png', '[]', '2025-12-10 02:16:28', '2025-12-10 03:03:57', '2025-12-10 03:03:57', 'public'),
(518, 1, 'icon16', 'icon16', 3, 'image/png', 691146, 'icons/icon16.png', '[]', '2025-12-10 02:16:29', '2025-12-10 03:03:57', '2025-12-10 03:03:57', 'public'),
(519, 1, 'icon17-1', 'icon17-1', 3, 'image/png', 512069, 'icons/icon17-1.png', '[]', '2025-12-10 02:16:30', '2025-12-10 02:16:30', NULL, 'public'),
(520, 1, 'icon19-1', 'icon19-1', 3, 'image/png', 1045615, 'icons/icon19-1.png', '[]', '2025-12-10 02:16:31', '2025-12-10 02:16:31', NULL, 'public'),
(521, 1, 'CABLE ASSY HOOD LOCK CONTROL_Atmv-1', 'CABLE ASSY HOOD LOCK CONTROL_Atmv-1', 23, 'image/png', 31898, 'products/cable-assy-hood-lock-control-atmv-1.png', '[]', '2025-12-10 03:03:17', '2025-12-10 03:03:17', NULL, 'public'),
(522, 1, 'SPEEDO. CABLE ASSY_ Mrcly1-6', 'SPEEDO. CABLE ASSY_ Mrcly1-6', 23, 'image/png', 283042, 'products/speedo-cable-assy-mrcly1-6.png', '[]', '2025-12-10 03:03:33', '2025-12-10 03:03:33', NULL, 'public'),
(523, 1, 'contac-1', 'contac-1', 3, 'image/png', 94214, 'icons/contac-1.png', '[]', '2025-12-10 03:04:16', '2025-12-10 03:04:16', NULL, 'public'),
(524, 1, 'contac1-1', 'contac1-1', 3, 'image/png', 108982, 'icons/contac1-1.png', '[]', '2025-12-10 03:04:17', '2025-12-10 03:05:52', '2025-12-10 03:05:52', 'public'),
(525, 1, 'icon 1-2', 'icon 1-2', 3, 'image/jpeg', 28785, 'icons/icon-1-2.jpg', '[]', '2025-12-10 03:04:17', '2025-12-10 03:04:17', NULL, 'public'),
(526, 1, 'icon 2-2', 'icon 2-2', 3, 'image/jpeg', 114266, 'icons/icon-2-2.jpg', '[]', '2025-12-10 03:04:18', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(527, 1, 'icon 3-2', 'icon 3-2', 3, 'image/jpeg', 5990, 'icons/icon-3-2.jpg', '[]', '2025-12-10 03:04:19', '2025-12-10 03:04:19', NULL, 'public'),
(528, 1, 'icon 4', 'icon 4', 3, 'image/jpeg', 15839, 'icons/icon-4.jpg', '[]', '2025-12-10 03:04:19', '2025-12-10 03:04:19', NULL, 'public'),
(529, 1, 'icon 5-2', 'icon 5-2', 3, 'image/jpeg', 31880, 'icons/icon-5-2.jpg', '[]', '2025-12-10 03:04:20', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(530, 1, 'icon6-2', 'icon6-2', 3, 'image/png', 17114, 'icons/icon6-2.png', '[]', '2025-12-10 03:04:20', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(531, 1, 'icon7-1', 'icon7-1', 3, 'image/webp', 6728, 'icons/icon7-1.webp', '[]', '2025-12-10 03:04:21', '2025-12-10 03:04:21', NULL, 'public'),
(532, 1, 'icon8-2', 'icon8-2', 3, 'image/png', 12288, 'icons/icon8-2.png', '[]', '2025-12-10 03:04:21', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(533, 1, 'icon9-2', 'icon9-2', 3, 'image/png', 34901, 'icons/icon9-2.png', '[]', '2025-12-10 03:04:22', '2025-12-10 03:04:22', NULL, 'public'),
(534, 1, 'icon10-2', 'icon10-2', 3, 'image/png', 281817, 'icons/icon10-2.png', '[]', '2025-12-10 03:04:23', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(535, 1, 'icon11-4', 'icon11-4', 3, 'image/png', 149721, 'icons/icon11-4.png', '[]', '2025-12-10 03:04:23', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(536, 1, 'icon12-2', 'icon12-2', 3, 'image/png', 758144, 'icons/icon12-2.png', '[]', '2025-12-10 03:04:24', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(537, 1, 'icon13-1', 'icon13-1', 3, 'image/jpeg', 18103, 'icons/icon13-1.jpg', '[]', '2025-12-10 03:04:25', '2025-12-10 03:04:25', NULL, 'public'),
(538, 1, 'icon14-2', 'icon14-2', 3, 'image/png', 650933, 'icons/icon14-2.png', '[]', '2025-12-10 03:04:26', '2025-12-10 03:04:26', NULL, 'public'),
(539, 1, 'icon15-1', 'icon15-1', 3, 'image/png', 10357, 'icons/icon15-1.png', '[]', '2025-12-10 03:04:27', '2025-12-10 03:04:27', NULL, 'public'),
(540, 1, 'icon16-1', 'icon16-1', 3, 'image/png', 691146, 'icons/icon16-1.png', '[]', '2025-12-10 03:04:28', '2025-12-10 03:04:28', NULL, 'public'),
(541, 1, 'icon17-2', 'icon17-2', 3, 'image/png', 512069, 'icons/icon17-2.png', '[]', '2025-12-10 03:04:29', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(542, 1, 'icon19-2', 'icon19-2', 3, 'image/png', 1045615, 'icons/icon19-2.png', '[]', '2025-12-10 03:04:30', '2025-12-10 03:05:00', '2025-12-10 03:05:00', 'public'),
(543, 1, 'WIRE BRAKE-4', 'WIRE BRAKE-4', 23, 'image/png', 196530, 'products/wire-brake-4.png', '[]', '2025-12-10 03:24:46', '2025-12-10 03:24:46', NULL, 'public'),
(544, 1, '17 ags 2025', '17 ags 2025', 25, 'image/jpeg', 830815, 'gallery/17-ags-2025.jpg', '[]', '2025-12-10 03:27:18', '2025-12-10 03:27:18', NULL, 'public'),
(545, 1, 'Apar-1', 'Apar-1', 25, 'image/jpeg', 2654954, 'gallery/apar-1.jpg', '[]', '2025-12-10 03:27:21', '2025-12-10 03:27:21', NULL, 'public'),
(546, 1, 'smk klaten', 'smk klaten', 25, 'image/jpeg', 1000161, 'gallery/smk-klaten.JPG', '[]', '2025-12-10 03:27:23', '2025-12-10 03:27:23', NULL, 'public'),
(547, 1, 'Tasyafur', 'Tasyafur', 25, 'image/jpeg', 177390, 'gallery/tasyafur.JPG', '[]', '2025-12-10 03:27:25', '2025-12-10 03:27:25', NULL, 'public'),
(548, 1, 'tyt 1-1', 'tyt 1-1', 21, 'image/png', 894450, 'certification/tyt-1-1.png', '[]', '2025-12-10 03:37:11', '2025-12-10 03:37:11', NULL, 'public'),
(549, 1, 'tyt 2-1', 'tyt 2-1', 21, 'image/png', 583774, 'certification/tyt-2-1.png', '[]', '2025-12-10 03:37:12', '2025-12-10 03:37:12', NULL, 'public'),
(550, 1, 'tyt 3-1', 'tyt 3-1', 21, 'image/png', 952544, 'certification/tyt-3-1.png', '[]', '2025-12-10 03:37:13', '2025-12-10 03:37:13', NULL, 'public'),
(551, 1, 'tyt 4', 'tyt 4', 21, 'image/jpeg', 68119, 'certification/tyt-4.jpg', '[]', '2025-12-10 03:37:14', '2025-12-10 03:37:14', NULL, 'public'),
(552, 1, 'tyt 5', 'tyt 5', 21, 'image/jpeg', 295592, 'certification/tyt-5.jpg', '[]', '2025-12-10 03:37:15', '2025-12-10 03:37:15', NULL, 'public'),
(553, 1, 'tyt 6-1', 'tyt 6-1', 21, 'image/png', 1608838, 'certification/tyt-6-1.png', '[]', '2025-12-10 03:37:17', '2025-12-10 03:37:17', NULL, 'public'),
(554, 1, 'tyt 7-1', 'tyt 7-1', 21, 'image/png', 2137301, 'certification/tyt-7-1.png', '[]', '2025-12-10 03:37:18', '2025-12-10 03:37:18', NULL, 'public'),
(555, 1, '14-1', '14-1', 19, 'image/png', 83173, 'customers/14-1.png', '[]', '2025-12-10 03:41:23', '2025-12-10 03:41:23', NULL, 'public'),
(556, 1, '15', '15', 19, 'image/png', 133198, 'customers/15.png', '[]', '2025-12-10 03:41:24', '2025-12-10 03:41:24', NULL, 'public'),
(557, 1, '14-2', '14-2', 19, 'image/png', 88036, 'customers/14-2.png', '[]', '2025-12-10 03:57:40', '2025-12-10 03:57:40', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'projects', NULL, 'projects', 0, '2025-02-25 19:08:34', '2025-02-25 19:08:34', NULL),
(2, 0, 'services', NULL, 'services', 0, '2025-02-25 19:08:35', '2025-02-25 19:08:35', NULL),
(3, 0, 'icons', NULL, 'icons', 0, '2025-02-25 19:08:37', '2025-02-25 19:08:37', NULL),
(4, 0, 'teams', NULL, 'teams', 0, '2025-02-25 19:08:39', '2025-02-25 19:08:39', NULL),
(5, 0, 'testimonials', NULL, 'testimonials', 0, '2025-02-25 19:08:40', '2025-02-25 19:08:40', NULL),
(6, 0, 'posts', NULL, 'posts', 0, '2025-02-25 19:08:41', '2025-02-25 19:08:41', NULL),
(12, 0, 'sliders', NULL, 'sliders', 0, '2025-02-25 19:08:56', '2025-02-25 19:08:56', NULL),
(13, 0, 'careers', NULL, 'careers', 0, '2025-02-25 19:08:56', '2025-02-25 19:08:56', NULL),
(14, 0, 'partners', NULL, 'partners', 0, '2025-02-25 19:08:57', '2025-02-25 19:08:57', NULL),
(15, 0, 'backgrounds', NULL, 'backgrounds', 0, '2025-02-25 19:08:58', '2025-02-25 19:08:58', NULL),
(16, 0, 'shapes', NULL, 'shapes', 0, '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL),
(17, 0, 'general', NULL, 'general', 0, '2025-02-25 19:09:01', '2025-02-25 19:09:01', NULL),
(18, 0, 'docs', NULL, 'docs', 0, '2025-02-25 19:09:09', '2025-02-25 19:09:09', NULL),
(19, 1, 'Customers', NULL, 'customers', 0, '2025-02-27 03:17:17', '2025-02-27 03:17:17', NULL),
(20, 1, 'AVATAR', NULL, 'avatar', 0, '2025-02-28 01:35:46', '2025-02-28 01:35:46', NULL),
(21, 1, 'Certification', NULL, 'certification', 0, '2025-02-28 02:21:33', '2025-02-28 02:21:33', NULL),
(22, 1, 'users', NULL, 'users', 0, '2025-02-28 07:26:50', '2025-02-28 07:26:50', NULL),
(23, 1, 'Products', NULL, 'products', 0, '2025-03-04 04:45:37', '2025-03-04 04:45:37', NULL),
(24, 1, 'Branch', NULL, 'branch', 0, '2025-03-07 01:37:44', '2025-03-07 01:37:44', NULL),
(25, 1, 'Gallery', NULL, 'gallery', 0, '2025-03-25 07:30:51', '2025-03-25 07:30:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Menu Bar', 'menu-bar', 'published', '2025-02-27 00:57:25', '2025-06-13 09:35:32'),
(6, 'Menu Bar', 'menu-bar-id_ID', 'published', '2025-06-09 02:50:58', '2025-06-09 02:50:58'),
(7, 'Menu Bar', 'menu-bar-zh_TW', 'published', '2025-06-09 02:51:25', '2025-06-09 02:51:25'),
(8, 'Menu Bar', 'menu-bar-ja', 'published', '2025-06-09 02:51:32', '2025-06-09 02:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(5, 5, 'main-menu', '2025-02-27 01:00:41', '2025-02-27 01:00:41'),
(6, 6, 'main-menu', '2025-06-09 02:50:58', '2025-06-09 02:50:58'),
(7, 7, 'main-menu', '2025-06-09 02:51:25', '2025-06-09 02:51:25'),
(8, 8, 'main-menu', '2025-06-09 02:51:32', '2025-06-09 02:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(161, 5, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 0, 'Home', '', '_self', 0, '2025-02-27 00:57:46', '2025-06-13 09:35:32'),
(168, 5, 0, 27, 'Botble\\Page\\Models\\Page', '/en/about', '', 1, 'About Us', '', '_self', 0, '2025-02-28 01:59:11', '2025-06-13 09:35:32'),
(170, 5, 0, 31, 'Botble\\Page\\Models\\Page', '/en/newsct', '', 4, 'News', '', '_self', 0, '2025-02-28 01:59:11', '2025-06-13 09:35:32'),
(173, 5, 0, 30, 'Botble\\Page\\Models\\Page', '/en/products', '', 3, 'Products', '', '_self', 0, '2025-02-28 01:59:11', '2025-06-13 09:35:32'),
(180, 6, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 0, 'Home', '', '_self', 0, '2025-06-09 02:50:58', '2025-06-09 02:50:58'),
(181, 6, 0, 27, 'Botble\\Page\\Models\\Page', '/en/about', '', 1, 'About Us', '', '_self', 0, '2025-06-09 02:50:58', '2025-06-09 02:50:58'),
(182, 6, 0, 31, 'Botble\\Page\\Models\\Page', '/en/newsct', '', 4, 'News', '', '_self', 0, '2025-06-09 02:50:58', '2025-06-09 02:50:58'),
(183, 6, 0, 28, 'Botble\\Page\\Models\\Page', '/en/companyct', '', 2, 'Our Company', '', '_self', 1, '2025-06-09 02:50:58', '2025-06-09 02:50:58'),
(184, 6, 0, 30, 'Botble\\Page\\Models\\Page', '/en/products', '', 3, 'Products', '', '_self', 0, '2025-06-09 02:50:58', '2025-06-09 02:50:58'),
(186, 5, 0, 36, 'Botble\\Page\\Models\\Page', '/en/customer-appreciation', '', 2, 'Achievements', '', '_self', 1, '2025-06-09 02:50:58', '2025-06-13 09:35:32'),
(187, 5, 186, 35, 'Botble\\Page\\Models\\Page', '/en/inter', '', 0, 'International Certifications', '', '_self', 0, '2025-06-09 02:50:58', '2025-06-13 09:35:32'),
(188, 7, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 0, 'Home', '', '_self', 0, '2025-06-09 02:51:25', '2025-06-09 02:51:25'),
(189, 7, 0, 27, 'Botble\\Page\\Models\\Page', '/en/about', '', 1, 'About Us', '', '_self', 0, '2025-06-09 02:51:25', '2025-06-09 02:51:25'),
(190, 7, 0, 31, 'Botble\\Page\\Models\\Page', '/en/newsct', '', 4, 'News', '', '_self', 0, '2025-06-09 02:51:25', '2025-06-09 02:51:25'),
(191, 7, 0, 28, 'Botble\\Page\\Models\\Page', '/en/companyct', '', 2, 'Our Company', '', '_self', 1, '2025-06-09 02:51:25', '2025-06-09 02:51:25'),
(192, 7, 0, 30, 'Botble\\Page\\Models\\Page', '/en/products', '', 3, 'Products', '', '_self', 0, '2025-06-09 02:51:25', '2025-06-09 02:51:25'),
(196, 8, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 0, 'Home', '', '_self', 0, '2025-06-09 02:51:32', '2025-06-09 02:51:32'),
(197, 8, 0, 27, 'Botble\\Page\\Models\\Page', '/en/about', '', 1, 'About Us', '', '_self', 0, '2025-06-09 02:51:32', '2025-06-09 02:51:32'),
(198, 8, 0, 31, 'Botble\\Page\\Models\\Page', '/en/newsct', '', 4, 'News', '', '_self', 0, '2025-06-09 02:51:32', '2025-06-09 02:51:32'),
(199, 8, 0, 28, 'Botble\\Page\\Models\\Page', '/en/companyct', '', 2, 'Our Company', '', '_self', 1, '2025-06-09 02:51:32', '2025-06-09 02:51:32'),
(200, 8, 0, 30, 'Botble\\Page\\Models\\Page', '/en/products', '', 3, 'Products', '', '_self', 0, '2025-06-09 02:51:32', '2025-06-09 02:51:32'),
(205, 5, 186, 36, 'Botble\\Page\\Models\\Page', '/en/customer-appreciation', '', 1, 'Customers Appreciation', '', '_self', 0, '2025-06-12 07:51:04', '2025-06-13 09:35:32'),
(206, 5, 0, 0, NULL, '/', '', 5, '', '', '_self', 0, '2025-06-13 07:54:04', '2025-06-13 09:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(21, 'link', '[\"https:\\/\\/example.com\\/real-estate\"]', 8, 'Botble\\Portfolio\\Models\\Project', '2025-02-25 19:08:39', '2025-02-25 19:08:39'),
(22, 'category_ids', '[[1,6]]', 8, 'Botble\\Portfolio\\Models\\Project', '2025-02-25 19:08:39', '2025-02-25 19:08:39'),
(23, 'breadcrumb_enabled', '[\"0\"]', 1, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(24, 'breadcrumb_enabled', '[\"0\"]', 2, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(25, 'breadcrumb_enabled', '[\"1\"]', 3, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(26, 'breadcrumb_enabled', '[\"0\"]', 4, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(27, 'breadcrumb_enabled', '[\"1\"]', 5, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(28, 'breadcrumb_enabled', '[\"0\"]', 6, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(29, 'breadcrumb_enabled', '[\"0\"]', 7, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(30, 'breadcrumb_enabled', '[\"0\"]', 8, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(31, 'breadcrumb_enabled', '[\"0\"]', 9, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(32, 'breadcrumb_enabled', '[\"0\"]', 10, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(33, 'breadcrumb_enabled', '[\"0\"]', 11, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(34, 'breadcrumb_enabled', '[\"0\"]', 12, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(35, 'breadcrumb_enabled', '[\"0\"]', 13, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(36, 'breadcrumb_enabled', '[\"0\"]', 21, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(37, 'breadcrumb_enabled', '[\"0\"]', 22, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(38, 'breadcrumb_enabled', '[\"0\"]', 24, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(39, 'breadcrumb_enabled', '[\"0\"]', 25, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(40, 'breadcrumb_enabled', '[\"0\"]', 26, 'Botble\\Page\\Models\\Page', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(41, 'subtitle', '[\"\\ud83d\\ude80 Welcome to Cable Tech\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-27 04:13:54'),
(42, 'slogan', '[\"23+ Years of Experience\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-27 04:13:54'),
(43, 'primary_action_label', '[\"View Our Products\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-27 04:13:54'),
(44, 'primary_action_url', '[\"\\/products\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-06-09 02:47:28'),
(45, 'primary_action_icon', '[\"ti ti-arrow-up-right\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-25 19:08:56'),
(48, 'secondary_action_icon', '[\"ti ti-player-play\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-25 19:08:56'),
(50, 'subtitle', '[\"\\ud83d\\ude80 Welcome to PT Cable Tech\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-27 04:24:55'),
(51, 'slogan', '[\"23+ Years of Experience\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-27 04:24:55'),
(52, 'primary_action_label', '[\"View Our Products\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-27 04:24:55'),
(53, 'primary_action_url', '[\"\\/products\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-06-09 02:47:35'),
(54, 'primary_action_icon', '[\"ti ti-arrow-up-right\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-25 19:08:56'),
(57, 'secondary_action_icon', '[\"ti ti-player-play\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-02-25 19:08:56', '2025-02-25 19:08:56'),
(59, 'image', '[\"careers\\/banner.jpg\"]', 1, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(60, 'icon', '[\"ti ti-chart-bar\"]', 1, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(61, 'apply_url', '[\"\\/contact-us\"]', 1, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(62, 'image', '[\"careers\\/banner.jpg\"]', 2, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(63, 'icon', '[\"ti ti-replace\"]', 2, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(64, 'apply_url', '[\"\\/contact-us\"]', 2, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(65, 'image', '[\"careers\\/banner.jpg\"]', 3, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(66, 'icon', '[\"ti ti-components\"]', 3, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(67, 'apply_url', '[\"\\/contact-us\"]', 3, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(68, 'image', '[\"careers\\/banner.jpg\"]', 4, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(69, 'icon', '[\"ti ti-brand-deezer\"]', 4, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(70, 'apply_url', '[\"\\/contact-us\"]', 4, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(71, 'image', '[\"careers\\/banner.jpg\"]', 5, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(72, 'icon', '[\"ti ti-video\"]', 5, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(73, 'apply_url', '[\"\\/contact-us\"]', 5, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(74, 'image', '[\"careers\\/banner.jpg\"]', 6, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(75, 'icon', '[\"ti ti-device-desktop-code\"]', 6, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(76, 'apply_url', '[\"\\/contact-us\"]', 6, 'ArchiElite\\Career\\Models\\Career', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(77, 'breadcrumb_enabled', '[\"1\"]', 27, 'Botble\\Page\\Models\\Page', '2025-02-28 01:57:16', '2025-02-28 01:57:16'),
(78, 'seo_meta', '[{\"index\":\"index\"}]', 27, 'Botble\\Page\\Models\\Page', '2025-02-28 01:57:16', '2025-02-28 01:57:16'),
(79, 'breadcrumb_enabled', '[\"1\"]', 28, 'Botble\\Page\\Models\\Page', '2025-02-28 01:57:29', '2025-02-28 01:57:29'),
(80, 'seo_meta', '[{\"index\":\"index\"}]', 28, 'Botble\\Page\\Models\\Page', '2025-02-28 01:57:29', '2025-02-28 01:57:29'),
(83, 'breadcrumb_enabled', '[\"1\"]', 30, 'Botble\\Page\\Models\\Page', '2025-02-28 01:57:55', '2025-02-28 01:57:55'),
(84, 'seo_meta', '[{\"index\":\"index\"}]', 30, 'Botble\\Page\\Models\\Page', '2025-02-28 01:57:55', '2025-02-28 01:57:55'),
(85, 'breadcrumb_enabled', '[\"1\"]', 31, 'Botble\\Page\\Models\\Page', '2025-02-28 01:58:10', '2025-02-28 01:58:10'),
(86, 'seo_meta', '[{\"index\":\"index\"}]', 31, 'Botble\\Page\\Models\\Page', '2025-02-28 01:58:10', '2025-02-28 01:58:10'),
(87, 'breadcrumb_enabled', '[\"1\"]', 32, 'Botble\\Page\\Models\\Page', '2025-02-28 01:58:21', '2025-02-28 01:58:21'),
(88, 'seo_meta', '[{\"index\":\"index\"}]', 32, 'Botble\\Page\\Models\\Page', '2025-02-28 01:58:21', '2025-02-28 01:58:21'),
(89, 'seo_meta', '[{\"index\":\"index\"}]', 13, 'Botble\\Page\\Models\\Page', '2025-03-03 00:51:57', '2025-03-03 00:51:57'),
(90, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Gallery\\Models\\Gallery', '2025-03-03 04:47:35', '2025-03-03 04:47:35'),
(91, 'seo_meta', '[{\"index\":\"index\"}]', 1, 'Botble\\Portfolio\\Models\\ServiceCategory', '2025-03-04 01:00:15', '2025-03-04 01:00:15'),
(92, 'seo_meta', '[{\"index\":\"index\"}]', 2, 'Botble\\Portfolio\\Models\\ServiceCategory', '2025-03-04 01:00:57', '2025-03-04 01:00:57'),
(93, 'seo_meta', '[{\"index\":\"index\"}]', 3, 'Botble\\Portfolio\\Models\\ServiceCategory', '2025-03-04 01:01:25', '2025-03-04 01:01:25'),
(95, 'seo_meta', '[{\"index\":\"index\"}]', 7, 'Botble\\Portfolio\\Models\\Service', '2025-03-04 05:48:48', '2025-03-04 05:48:48'),
(96, 'icon_image', '[\"icons\\/desain-tanpa-judul-1.png\"]', 7, 'Botble\\Portfolio\\Models\\Service', '2025-03-04 06:58:03', '2025-12-10 03:19:11'),
(97, 'seo_meta', '[{\"index\":\"index\"}]', 8, 'Botble\\Portfolio\\Models\\Project', '2025-03-05 02:09:11', '2025-03-05 02:09:11'),
(98, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Portfolio\\Models\\Project', '2025-03-05 03:50:00', '2025-03-05 03:50:00'),
(99, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Portfolio\\Models\\Project', '2025-03-05 03:51:55', '2025-03-05 03:51:55'),
(100, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Gallery\\Models\\Gallery', '2025-03-05 08:41:29', '2025-03-05 08:41:29'),
(102, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Portfolio\\Models\\Project', '2025-03-07 01:33:59', '2025-03-07 01:33:59'),
(103, 'seo_meta', '[{\"index\":\"index\"}]', 13, 'Botble\\Portfolio\\Models\\Project', '2025-03-07 01:39:38', '2025-03-07 01:39:38'),
(104, 'seo_meta', '[{\"index\":\"index\"}]', 14, 'Botble\\Portfolio\\Models\\Project', '2025-03-07 01:41:00', '2025-03-07 01:41:00'),
(105, 'seo_meta', '[{\"index\":\"index\"}]', 15, 'Botble\\Portfolio\\Models\\Project', '2025-03-07 01:42:41', '2025-03-07 01:42:41'),
(107, 'seo_meta', '[{\"index\":\"index\"}]', 17, 'Botble\\Portfolio\\Models\\Project', '2025-03-07 07:55:39', '2025-03-07 07:55:39'),
(108, 'breadcrumb_enabled', '[\"1\"]', 33, 'Botble\\Page\\Models\\Page', '2025-03-07 09:00:53', '2025-03-07 09:00:53'),
(109, 'seo_meta', '[{\"index\":\"index\"}]', 33, 'Botble\\Page\\Models\\Page', '2025-03-07 09:00:53', '2025-03-07 09:00:53'),
(110, 'seo_meta', '[{\"index\":\"index\"}]', 18, 'Botble\\Portfolio\\Models\\Project', '2025-03-07 09:02:06', '2025-03-07 09:02:06'),
(111, 'seo_meta', '[{\"index\":\"index\"}]', 8, 'Botble\\Portfolio\\Models\\Service', '2025-03-10 00:50:17', '2025-03-10 00:50:17'),
(112, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Portfolio\\Models\\Service', '2025-03-10 02:39:23', '2025-03-10 02:39:23'),
(115, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Portfolio\\Models\\Service', '2025-03-10 04:50:48', '2025-03-10 04:50:48'),
(116, 'seo_meta', '[{\"index\":\"index\"}]', 11, 'Botble\\Portfolio\\Models\\Service', '2025-03-10 06:33:23', '2025-03-10 06:33:23'),
(117, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Portfolio\\Models\\Service', '2025-03-10 06:37:25', '2025-03-10 06:37:25'),
(118, 'seo_meta', '[{\"index\":\"index\"}]', 5, 'Botble\\Portfolio\\Models\\ServiceCategory', '2025-03-13 05:48:41', '2025-03-13 05:48:41'),
(119, 'seo_meta', '[{\"index\":\"index\"}]', 13, 'Botble\\Portfolio\\Models\\Service', '2025-03-13 05:48:56', '2025-03-13 05:48:56'),
(121, 'icon', '[\"ti ti-motorbike\"]', 11, 'Botble\\Portfolio\\Models\\Service', '2025-03-17 02:14:02', '2025-03-17 02:14:02'),
(122, 'icon', '[\"ti ti-car-suv\"]', 10, 'Botble\\Portfolio\\Models\\Service', '2025-03-17 02:14:16', '2025-03-17 02:14:16'),
(123, 'icon', '[\"ti ti-automatic-gearbox\"]', 12, 'Botble\\Portfolio\\Models\\Service', '2025-03-17 02:17:20', '2025-03-17 02:17:20'),
(126, 'seo_meta', '[{\"index\":\"index\"}]', 17, 'Botble\\Blog\\Models\\Post', '2025-03-25 06:17:47', '2025-03-25 06:17:47'),
(127, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Blog\\Models\\Category', '2025-03-25 07:34:54', '2025-03-25 07:34:54'),
(128, 'seo_meta', '[{\"index\":\"index\"}]', 11, 'Botble\\Blog\\Models\\Category', '2025-03-25 07:35:10', '2025-03-25 07:35:10'),
(129, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Blog\\Models\\Category', '2025-03-25 07:35:21', '2025-03-25 07:35:21'),
(130, 'seo_meta', '[{\"index\":\"index\"}]', 13, 'Botble\\Blog\\Models\\Category', '2025-03-25 07:35:31', '2025-03-25 07:35:31'),
(131, 'seo_meta', '[{\"index\":\"index\"}]', 14, 'Botble\\Blog\\Models\\Category', '2025-03-25 07:35:43', '2025-03-25 07:35:43'),
(132, 'seo_meta', '[{\"index\":\"index\"}]', 15, 'Botble\\Blog\\Models\\Category', '2025-03-25 07:35:57', '2025-03-25 07:35:57'),
(133, 'breadcrumb_enabled', '[\"1\"]', 35, 'Botble\\Page\\Models\\Page', '2025-03-25 07:50:20', '2025-03-25 07:50:20'),
(134, 'seo_meta', '[{\"index\":\"index\"}]', 35, 'Botble\\Page\\Models\\Page', '2025-03-25 07:50:20', '2025-03-25 07:50:20'),
(135, 'breadcrumb_enabled', '[\"1\"]', 36, 'Botble\\Page\\Models\\Page', '2025-03-25 07:50:44', '2025-03-25 07:50:44'),
(136, 'seo_meta', '[{\"index\":\"index\"}]', 36, 'Botble\\Page\\Models\\Page', '2025-03-25 07:50:44', '2025-03-25 07:50:44'),
(137, 'seo_meta', '[{\"index\":\"index\"}]', 16, 'Botble\\Blog\\Models\\Category', '2025-06-09 02:18:13', '2025-06-09 02:18:13'),
(138, 'seo_meta', '[{\"index\":\"index\"}]', 17, 'Botble\\Blog\\Models\\Category', '2025-06-09 02:18:26', '2025-06-09 02:18:26'),
(140, 'seo_meta', '[{\"index\":\"index\"}]', 19, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:19:28', '2025-06-09 02:19:28'),
(141, 'seo_meta', '[{\"index\":\"index\"}]', 20, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:19:51', '2025-06-09 02:19:51'),
(144, 'seo_meta', '[{\"index\":\"index\"}]', 23, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:26:44', '2025-06-09 02:26:44'),
(145, 'seo_meta', '[{\"index\":\"index\"}]', 24, 'Botble\\Blog\\Models\\Post', '2025-06-09 02:27:02', '2025-06-09 02:27:02'),
(146, 'icon_image', '[\"icons\\/icon7-1.webp\"]', 8, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 02:39:01', '2025-12-10 03:07:54'),
(148, 'seo_meta', '[{\"index\":\"index\"}]', 15, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 03:05:05', '2025-06-09 03:05:05'),
(149, 'seo_meta', '[{\"index\":\"index\"}]', 16, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 03:06:43', '2025-06-09 03:06:43'),
(150, 'icon_image', '[\"icons\\/icon9-1.png\"]', 17, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 03:08:24', '2025-12-10 02:24:20'),
(151, 'seo_meta', '[{\"index\":\"index\"}]', 17, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 03:08:24', '2025-06-09 03:08:24'),
(152, 'icon_image', '[\"icons\\/icon15-1.png\"]', 18, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 06:07:38', '2025-12-10 03:22:30'),
(153, 'seo_meta', '[{\"index\":\"index\"}]', 18, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 06:07:38', '2025-06-09 06:07:38'),
(154, 'icon_image', '[\"icons\\/icon-5-1.jpg\"]', 19, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 06:12:34', '2025-12-10 02:22:59'),
(155, 'seo_meta', '[{\"index\":\"index\"}]', 19, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 06:12:34', '2025-06-09 06:12:34'),
(156, 'icon_image', '[\"icons\\/icon17-1.png\"]', 15, 'Botble\\Portfolio\\Models\\Service', '2025-06-09 06:38:08', '2025-12-10 03:15:07'),
(159, 'seo_meta', '[{\"index\":\"index\"}]', 26, 'Botble\\Blog\\Models\\Post', '2025-06-10 01:04:10', '2025-06-10 01:04:10'),
(160, 'seo_meta', '[{\"index\":\"index\"}]', 27, 'Botble\\Blog\\Models\\Post', '2025-06-10 01:04:49', '2025-06-10 01:04:49'),
(161, 'seo_meta', '[{\"index\":\"index\"}]', 28, 'Botble\\Blog\\Models\\Post', '2025-06-10 01:06:25', '2025-06-10 01:06:25'),
(162, 'seo_meta', '[{\"index\":\"index\"}]', 29, 'Botble\\Blog\\Models\\Post', '2025-06-10 01:07:01', '2025-06-10 01:07:01'),
(163, 'breadcrumb_enabled', '[\"1\"]', 15, 'Botble\\Page\\Models\\Page', '2025-06-13 01:42:14', '2025-06-13 01:42:14'),
(164, 'seo_meta', '[{\"index\":\"index\"}]', 15, 'Botble\\Page\\Models\\Page', '2025-06-13 01:42:14', '2025-06-13 01:42:14'),
(165, 'seo_meta', '[{\"index\":\"index\"}]', 3, 'Botble\\Page\\Models\\Page', '2025-06-13 01:45:55', '2025-06-13 01:45:55'),
(166, 'seo_meta', '[{\"index\":\"index\"}]', 30, 'Botble\\Blog\\Models\\Post', '2025-06-13 02:15:53', '2025-06-13 02:15:53'),
(167, 'seo_meta', '[{\"index\":\"index\"}]', 31, 'Botble\\Blog\\Models\\Post', '2025-06-13 02:21:20', '2025-06-13 02:21:20'),
(168, 'seo_meta', '[{\"index\":\"index\"}]', 32, 'Botble\\Blog\\Models\\Post', '2025-06-16 04:51:32', '2025-06-16 04:51:32'),
(169, 'seo_meta', '[{\"index\":\"index\"}]', 33, 'Botble\\Blog\\Models\\Post', '2025-06-16 06:55:22', '2025-06-16 06:55:22'),
(170, 'seo_meta', '[{\"index\":\"index\"}]', 34, 'Botble\\Blog\\Models\\Post', '2025-06-16 07:04:31', '2025-06-16 07:04:31'),
(171, 'seo_meta', '[{\"index\":\"index\"}]', 20, 'Botble\\Portfolio\\Models\\Service', '2025-06-17 03:57:34', '2025-06-17 03:57:34'),
(172, 'seo_meta', '[{\"index\":\"index\"}]', 21, 'Botble\\Portfolio\\Models\\Service', '2025-06-17 03:58:02', '2025-06-17 03:58:02'),
(173, 'seo_meta', '[{\"index\":\"index\"}]', 22, 'Botble\\Portfolio\\Models\\Service', '2025-06-17 03:58:25', '2025-06-17 03:58:25'),
(174, 'seo_meta', '[{\"index\":\"index\"}]', 23, 'Botble\\Portfolio\\Models\\Service', '2025-06-17 03:58:51', '2025-06-17 03:58:51'),
(175, 'seo_meta', '[{\"index\":\"index\"}]', 35, 'Botble\\Blog\\Models\\Post', '2025-07-08 02:28:35', '2025-07-08 02:28:35'),
(176, 'icon_image', '[\"icons\\/icon12-1.png\"]', 20, 'Botble\\Portfolio\\Models\\Service', '2025-07-08 03:12:38', '2025-12-10 02:24:55'),
(177, 'icon_image', '[\"icons\\/icon14-2.png\"]', 21, 'Botble\\Portfolio\\Models\\Service', '2025-07-08 05:56:13', '2025-12-10 03:24:52'),
(178, 'seo_meta', '[{\"index\":\"index\"}]', 24, 'Botble\\Portfolio\\Models\\Service', '2025-07-08 06:13:08', '2025-07-08 06:13:08'),
(179, 'icon_image', '[\"icons\\/icon11-3.png\"]', 24, 'Botble\\Portfolio\\Models\\Service', '2025-07-08 06:21:10', '2025-12-10 02:19:52'),
(180, 'seo_meta', '[{\"index\":\"index\"}]', 25, 'Botble\\Portfolio\\Models\\Service', '2025-07-08 08:33:47', '2025-07-08 08:33:47'),
(181, 'icon_image', '[\"icons\\/icon-3-2.jpg\"]', 25, 'Botble\\Portfolio\\Models\\Service', '2025-07-08 08:36:56', '2025-12-10 03:13:20'),
(182, 'seo_meta', '[{\"index\":\"index\"}]', 37, 'Botble\\Page\\Models\\Page', '2025-07-28 06:37:36', '2025-07-28 06:37:36'),
(183, 'seo_meta', '[{\"index\":\"index\"}]', 26, 'Botble\\Portfolio\\Models\\Service', '2025-07-28 06:40:56', '2025-07-28 06:40:56'),
(184, 'icon_image', '[\"icons\\/icon19-1.png\"]', 26, 'Botble\\Portfolio\\Models\\Service', '2025-07-28 06:48:38', '2025-12-10 02:18:12'),
(185, 'icon_image', '[\"icons\\/icon-1-2.jpg\"]', 16, 'Botble\\Portfolio\\Models\\Service', '2025-12-10 02:35:40', '2025-12-10 03:10:08'),
(186, 'icon_image', '[\"icons\\/icon10-1.png\"]', 9, 'Botble\\Portfolio\\Models\\Service', '2025-12-10 03:20:58', '2025-12-10 03:20:58'),
(187, 'seo_meta', '[{\"index\":\"index\"}]', 36, 'Botble\\Blog\\Models\\Post', '2025-12-10 03:34:56', '2025-12-10 03:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '2013_04_09_032329_create_base_tables', 1),
(3, '2013_04_09_062329_create_revisions_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(6, '2015_06_18_033822_create_blog_table', 1),
(7, '2015_06_29_025744_create_audit_history', 1),
(8, '2016_06_10_230148_create_acl_tables', 1),
(9, '2016_06_14_230857_create_menus_table', 1),
(10, '2016_06_17_091537_create_contacts_table', 1),
(11, '2016_06_28_221418_create_pages_table', 1),
(12, '2016_10_03_032336_create_languages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_10_07_193005_create_translations_table', 1),
(15, '2016_10_13_150201_create_galleries_table', 1),
(16, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(17, '2016_12_16_084601_create_widgets_table', 1),
(18, '2017_05_09_070343_create_media_tables', 1),
(19, '2017_07_11_140018_create_simple_slider_table', 1),
(20, '2017_10_24_154832_create_newsletter_table', 1),
(21, '2017_11_03_070450_create_slug_table', 1),
(22, '2018_07_09_214610_create_testimonial_table', 1),
(23, '2018_07_09_221238_create_faq_table', 1),
(24, '2019_01_05_053554_create_jobs_table', 1),
(25, '2019_06_24_211801_create_career_table', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(29, '2021_10_25_021023_fix-priority-load-for-language-advanced', 1),
(30, '2021_12_03_030600_create_blog_translations', 1),
(31, '2021_12_03_075608_create_page_translations', 1),
(32, '2021_12_03_082134_create_faq_translations', 1),
(33, '2021_12_03_082953_create_gallery_translations', 1),
(34, '2021_12_03_083642_create_testimonials_translations', 1),
(35, '2021_12_04_095357_create_careers_translations_table', 1),
(36, '2022_04_19_113923_add_index_to_table_posts', 1),
(37, '2022_04_20_100851_add_index_to_media_table', 1),
(38, '2022_04_20_101046_add_index_to_menu_table', 1),
(39, '2022_04_30_034048_create_gallery_meta_translations_table', 1),
(40, '2022_07_10_034813_move_lang_folder_to_root', 1),
(41, '2022_08_04_051940_add_missing_column_expires_at', 1),
(42, '2022_09_01_000001_create_admin_notifications_tables', 1),
(43, '2022_10_14_024629_drop_column_is_featured', 1),
(44, '2022_11_02_092723_team_create_team_table', 1),
(45, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(46, '2022_12_02_093615_update_slug_index_columns', 1),
(47, '2023_01_30_024431_add_alt_to_media_table', 1),
(48, '2023_02_16_042611_drop_table_password_resets', 1),
(49, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(50, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(51, '2023_07_06_011444_create_slug_translations_table', 1),
(52, '2023_07_25_072632_create_portfolio_tables', 1),
(53, '2023_08_11_060908_create_announcements_table', 1),
(54, '2023_08_11_094574_update_team_table', 1),
(55, '2023_08_21_090810_make_page_content_nullable', 1),
(56, '2023_08_29_074620_make_column_author_id_nullable', 1),
(57, '2023_08_29_075308_make_column_user_id_nullable', 1),
(58, '2023_09_11_023233_create_pf_custom_fields_table', 1),
(59, '2023_09_13_042633_add_columns_to_pf_projects_table', 1),
(60, '2023_09_13_044041_create_pf_project_categories_table', 1),
(61, '2023_09_14_021936_update_index_for_slugs_table', 1),
(62, '2023_09_14_022423_add_index_for_language_table', 1),
(63, '2023_09_20_050420_add_missing_translation_column', 1),
(64, '2023_09_22_061723_create_custom_fields_translations_table', 1),
(65, '2023_09_22_343531_remove_project_categories_table', 1),
(66, '2023_11_05_081701_fix_projects_table', 1),
(67, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 1),
(68, '2023_11_14_033417_change_request_column_in_table_audit_histories', 1),
(69, '2023_11_17_063408_add_description_column_to_faq_categories_table', 1),
(70, '2023_11_30_085354_add_missing_description_to_team', 1),
(71, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(72, '2023_12_12_105220_drop_translations_table', 1),
(73, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(74, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 1),
(75, '2024_03_25_000001_update_captcha_settings_for_contact', 1),
(76, '2024_03_25_000001_update_captcha_settings_for_newsletter', 1),
(77, '2024_04_04_110758_update_value_column_in_user_meta_table', 1),
(78, '2024_04_19_063914_create_custom_fields_table', 1),
(79, '2024_04_27_100730_improve_analytics_setting', 1),
(80, '2024_05_12_091229_add_column_visibility_to_table_media_files', 1),
(81, '2024_05_16_060328_add_projects_translations_table', 1),
(82, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 1),
(83, '2024_07_12_100000_change_random_hash_for_media', 1),
(84, '2024_07_30_091615_fix_order_column_in_categories_table', 1),
(85, '2024_09_09_075552_add_action_field_pf_packages_table', 1),
(86, '2024_09_30_024515_create_sessions_table', 1),
(87, '2024_10_02_030027_add_more_columns_to_teams_translations_table', 1),
(88, '2024_11_14_024038_improve_pf_packages_table', 1),
(89, '2025_01_06_033807_add_default_value_for_categories_author_type', 1),
(90, '2025_01_19_145943_add_column_order_to_table_pf_services', 1),
(91, '2025_01_24_140458_fix-theme-option', 1),
(92, '2025_02_11_153025_add_action_label_to_announcement_translations', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<shortcode>[simple-slider key=\"home-slider\"][/simple-slider]</shortcode><shortcode>[about-us-information-tabs title=\"High &lt;b&gt;Performance&lt;/b&gt; &lt;br&gt; &lt;b&gt;Solutions For&lt;/b&gt; Various Industries.\" image=\"ct1-1.jpg\" data_counter_title_1=\"Years of Experience\" data_counter_1=\"23\" data_counter_unit_1=\"+\" data_counter_title_2=\"Control Cables Manufactured\" data_counter_2=\"11\" data_counter_unit_2=\"M+\" features=\"High-Quality Manufacturing | Diverse Industry Applications | Innovative &amp; Custom Solutions | Future Global Expansion\" quantity=\"2\" title_1=\"Our History\" description_1=\"Founded in 2002, PT Cable Tech began as a specialized manufacturer with a big vision: to deliver high-quality control cable solutions for various industries.\" content_1=\"Over the years, we have expanded our expertise and production capabilities, becoming a trusted partner for our customers. As we continue to grow, our commitment to innovation, precision, and reliability remains unwavering.\" image_1=\"backgrounds/untitled-1.jpg\" title_2=\"Our Mission\" description_2=\"Deliver High-Quality Solutions: To provide reliable and durable control cables that enhance performance across various industries.\" content_2=\"We continuously develop advanced cable solutions through cutting-edge technology and precision engineering, foster long-term partnerships based on trust and quality, and optimize manufacturing processes to ensure cost-effective, high-performance products.\" image_2=\"untitled-2.jpg\" title_3=\"Our Vision\" description_3=\"At PT Cable Tech, our vision is to be a leading manufacturer of high-quality control cables, empowering industries with reliable and innovative solutions.\" content_3=\"We strive to be a trusted partner known for our commitment to excellence, precision, and customer satisfaction. By continuously advancing our technology and adapting to industry demands, we aim to provide cable solutions that not only meet today’s needs but also anticipate the challenges of the future.\" image_3=\"products/img2.jpg\" primary_action_label=\"Get to Know\" primary_action_icon=\"ti ti-arrow-narrow-right\" enable_lazy_loading=\"no\"][/about-us-information-tabs]</shortcode><shortcode>[services style=\"5\" title=\"High-Performance Reliable Control Cables\" subtitle=\"We manufacture and supply a wide range of reliable control cables.\" service_ids=\"10,11,12\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode><h3 class=\"ds-3 my-3\" style=\"background-color:rgb(255,255,255);color:rgb(17,24,39);font-family:\'Satoshi-Variable\', sans-serif;font-size:38px;font-style:normal;line-height:1.2;margin-bottom:1rem;margin-top:1rem;text-align:center;word-spacing:0px;\">Customers list</h3><div class=\"raw-html-embed\"><div class=\"container style=\'padding:10px;\'\">\r\n<p style=\"text-align:center;font-size:20px;\">Our customers come from various sectors of the automotive industry, including&nbsp;both two-wheeled (motorcycle) and four-wheeled (automotive) vehicles. We serve a&nbsp;wide range of companies engaged in the two-wheel and four-wheel vehicle sectors.</p>\r\n</div></div><shortcode>[partners style=\"1\" title=\"Our Major Customers\" description=\"We helped these brands turn online assessments into success stories.\" primary_action_label=\"View Our Partners\" primary_action_url=\"/contact\" primary_action_icon=\"ti ti-arrow-right\" quantity=\"14\" name_1=\"PT Yamaha Indonesia Motor Manufacturing\" image_1=\"customers/1.png\" open_in_new_tab_1=\"0\" name_2=\"PT Suzuki Indomobil Motor\" image_2=\"customers/12.png\" open_in_new_tab_2=\"0\" name_3=\"PT Kawasaki Motor Indonesia\" image_3=\"customers/7.png\" open_in_new_tab_3=\"0\" name_4=\"PT Suzuki Indomobil Motor\" image_4=\"customers/10.png\" open_in_new_tab_4=\"0\" name_5=\"PT Astra Daihatsu Motor\" image_5=\"customers/5.png\" open_in_new_tab_5=\"0\" name_6=\"PT Krama Yudha Tiga Berlian Motors\" image_6=\"customers/6.png\" open_in_new_tab_6=\"0\" name_7=\"PT Toyota Motor Manufacturing Indonesia\" image_7=\"customers/13.png\" open_in_new_tab_7=\"0\" name_8=\"PT. Indosafety Sentosa Industry\" image_8=\"customers/11.png\" open_in_new_tab_8=\"0\" name_9=\"PT Otscon Safety Indonesia\" image_9=\"customers/9.png\" open_in_new_tab_9=\"0\" name_10=\"PT. Adient Automotive Indonesia\" image_10=\"customers/4.png\" open_in_new_tab_10=\"0\" name_11=\"PT Danmotor Indonesia\" image_11=\"customers/3.png\" open_in_new_tab_11=\"0\" name_12=\"CV. Karya Hidup Sentosa\" image_12=\"customers/8.png\" open_in_new_tab_12=\"0\" name_13=\"PT Maka\" image_13=\"customers/15.png\" open_in_new_tab_13=\"0\" name_14=\"PT Alva\" image_14=\"customers/14-2.png\" open_in_new_tab_14=\"0\" background_color=\"rgba(0, 0, 255, 0)\"][/partners]</shortcode><shortcode>[projects style=\"1\" title=\"Global Network\" subtitle=\"Global Network\" description=\"Founded in 1978 in Taiwan as Tsen Yeou Spring Co., Ltd., the company expanded to Indonesia in 2002 under the name PT Cable Tech. With various forms of support, we operate facilities in multiple countries, including Taiwan, China, and Vietnam.\" project_ids=\"12,13,14,15\" quantity=\"6\" limit=\"5\" enable_lazy_loading=\"no\"][/projects]</shortcode><shortcode>[faqs style=\"3\" title=\"Frequently Asked Questions (FAQ)\" subtitle=\"Everything You Need to Know About Cable Tech\" description=\"Find answers to the most frequently asked questions about Cable Tech. From our product offerings and quality standards to customization options and international expansion, we\'re here to provide the information you need. If you have further inquiries, feel free to contact our team for assistance.\" quantity=\"6\" category_ids=\"5\" limit=\"10\" enable_lazy_loading=\"no\"][/faqs]</shortcode>', 1, NULL, 'full-width', '', 'published', '2025-02-25 19:09:09', '2025-12-10 03:57:46'),
(2, 'Projects', '[projects title=&quot;All Case Studies&quot; subtitle=&quot;What We Offer&quot; description=&quot;We help you to bring success fast&quot;][/projects]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(3, 'Services', '<shortcode>[services subtitle=\"WHAT WE OFFERS\" title=\"Explore Our Services\" description=\"By doing a financial analysis of these statements, you can see &lt;br&gt; whether you have enough working capital.\" service_ids=\"3,4,5,2,1,6\" background_image=\"backgrounds/service.png\"][/services]</shortcode><shortcode>[partners style=\"2\" title=\"Loved By Developers &nbsp;Trusted By Enterprises\" description=\"We helped these brands turn online assessments into success stories.\" primary_action_label=\"View Our Partners\" primary_action_url=\"/contact\" primary_action_icon=\"ti ti-arrow-right\" quantity=\"1\" name_1=\"Framer\" image_1=\"partners/1.png\" open_in_new_tab_1=\"0\" name_2=\"Reddit\" image_2=\"partners/2.png\" open_in_new_tab_2=\"0\" name_3=\"Netflix\" image_3=\"partners/3.png\" open_in_new_tab_3=\"0\" name_4=\"Microsoft\" image_4=\"partners/4.png\" open_in_new_tab_4=\"0\" name_5=\"Discover\" image_5=\"partners/5.png\" open_in_new_tab_5=\"0\" name_6=\"Lemon Squeezy\" image_6=\"partners/6.png\" open_in_new_tab_6=\"0\" name_7=\"Paypal\" image_7=\"partners/7.png\" open_in_new_tab_7=\"0\" name_8=\"Mailchimp\" image_8=\"partners/8.png\" open_in_new_tab_8=\"0\" open_in_new_tab_9=\"0\" open_in_new_tab_10=\"0\" open_in_new_tab_11=\"0\" open_in_new_tab_12=\"0\" background_color=\"transparent\"][/partners]</shortcode><shortcode>[testimonials style=\"2\" title=\"+100k users have loved \\n Infinia Conference System\" description=\"Provide your team with top-tier group mentoring \\n programs and exceptional professional benefits.\" testimonial_ids=\"1,2,3,4,5,6\" background_image=\"backgrounds/testimonial.png\" primary_action_label=\"View All Testimonials\" primary_action_url=\"/contact\" primary_action_icon=\"ti ti-arrow-up-right\"][/testimonials]</shortcode>', 1, NULL, 'full-width', '', 'published', '2025-02-25 19:09:09', '2025-06-13 01:45:55'),
(4, 'Services v2', '[services style=&quot;5&quot; title=&quot;Let&#039;s Discover Our Service &lt;b&gt;Our Service&lt;/b&gt; &lt;br&gt; &lt;b&gt;Features &lt;/b&gt; Charter&quot; subtitle=&quot;WHAT WE OFFERS&quot; service_ids=&quot;1,2,3,4,5,6&quot; primary_action_label=&quot;Explore Now&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot; primary_action_url=&quot;/contact&quot; secondary_action_label=&quot;Contact Us&quot; secondary_action_url=&quot;/contact&quot; secondary_action_icon=&quot;ti ti-phone-call&quot;][/services]\n[app-downloads title=&quot;Manage all &lt;br&gt; from anywhere&quot; subtitle=&quot;Download Mobile App&quot; description=&quot;⚡Don&#039;t miss any contact. Stay connected.&quot; image=&quot;general/app-downloads-img.png&quot; features=&quot;Beautiful and awesome interface | Online collaborative anytime, anywhere. | Real-time updates&quot; quantity=&quot;3&quot; name_1=&quot;Apple&quot; url_1=&quot;https://www.apple.com/&quot; image_1=&quot;general/apple-store.png&quot; name_2=&quot;Google Play&quot; url_2=&quot;https://play.google.com/&quot; image_2=&quot;general/google-play.png&quot; name_3=&quot;Microsoft&quot; url_3=&quot;https://www.microsoft.com/&quot; image_3=&quot;general/microsoft.png&quot; reviews_card_title=&quot; Trusted by 1M+ customers&quot; reviews_card_image=&quot;general/customer-reviews.png&quot; reviews_card_rate=&quot;4.8/5&quot; reviews_card_data=&quot;26&quot; reviews_card_unit=&quot;k Reviews&quot;][/app-downloads]\n[site-statistics style=&quot;2&quot; title=&quot;Numbers Speaking for &lt;br&gt; Themselves&quot; quantity=&quot;4&quot; title_1=&quot;Users Active / Month&quot; data_1=&quot;500&quot; unit_1=&quot;k+&quot; title_2=&quot;New Download / Month&quot; data_2=&quot;38&quot; unit_2=&quot;k&quot; title_3=&quot;Operating countries&quot; data_3=&quot;150&quot; title_4=&quot;Businesses trust on the worldinfinia&quot; data_4=&quot;4000&quot; background_image=&quot;shapes/site-statistics-decorate.png&quot; background_color=&quot;#6d4df2&quot;][/site-statistics]\n[testimonials style=&quot;1&quot; subtitle=&quot;TESTIMONIALS&quot; title=&quot;What our clients say&quot; description=&quot;Access top-tier group mentoring plans and exclusive professional benefits for your team. ?&quot; testimonial_ids=&quot;1,2,3,4&quot; primary_action_label=&quot;Contact Us&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-phone&quot; secondary_action_label=&quot;Help Center&quot; secondary_action_url=&quot;/contact&quot; secondary_action_icon=&quot;ti ti-arrow-right&quot;][/testimonials]\n[contact-form display_fields=&quot;phone,email,subject,address&quot; mandatory_fields=&quot;email&quot; style=&quot;2&quot; form_title=&quot;Leave a message&quot; title=&quot;Thinking about a project? &lt;br&gt; Get in touch with us.&quot; subtitle=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; description=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; quantity=&quot;3&quot; title_1=&quot;Chat with us&quot; description_1=&quot;The support team is always available 24/7&quot; button_label_1_1=&quot;Chat via Whatsapp&quot; button_url_1_1=&quot;https://www.whatsapp.com&quot; button_icon_1_1=&quot;ti ti-brand-whatsapp&quot; button_label_2_1=&quot;Chat via Viber&quot; button_url_2_1=&quot;https://www.viber.com/&quot; button_icon_2_1=&quot;ti ti-phone-call&quot; button_label_3_1=&quot;Chat via Messager&quot; button_url_3_1=&quot;https://www.facebook.com/&quot; button_icon_3_1=&quot;ti ti-brand-messenger&quot; title_2=&quot;Send us an email&quot; description_2=&quot;Our team will respond promptly to your inquiries&quot; button_label_1_2=&quot;support@infinia.com&quot; button_url_1_2=&quot;mailto:support@infinia.com&quot; button_icon_1_2=&quot;ti ti-mail&quot; button_label_2_2=&quot;sale@infinia.com&quot; button_url_2_2=&quot;mailto:sale@infinia.com&quot; button_icon_2_2=&quot;ti ti-mail&quot; title_3=&quot;For more inquiry&quot; description_3=&quot;Reach out for immediate assistance&quot; button_label_1_3=&quot;+01 (24) 568 900&quot; button_url_1_3=&quot;tell:0124568900&quot; button_icon_1_3=&quot;ti ti-phone-call&quot; background_color=&quot;#fff7ee&quot;][/contact-form]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(5, 'Services v3', '[feature-tabs title=&quot;Building &lt;b&gt;enduring value&lt;/b&gt; &lt;br&gt; through &lt;b&gt;bold&lt;/b&gt; strategies&quot; subtitle=&quot;WHAT WE OFFERS&quot; quantity=&quot;6&quot; tab_name_1=&quot;Financial Consultancy&quot; title_1=&quot;Pick Your Premium&quot; description_1=&quot;We strive to build long-lasting partnerships with our clients, understanding their unique challenges and opportunities, and providing tailored strategies that lead to measurable success.&quot; image_1=&quot;general/feature-tabs-1.png&quot; feature_item_title_1_1=&quot;Research planning&quot; feature_item_description_1_1=&quot;Separating your work from your home life can improve work-life balance.&quot; feature_item_icon_image_1_1=&quot;icons/icon-14.png&quot; feature_item_title_2_1=&quot;Investment&quot; feature_item_description_2_1=&quot;A business consultant provides expert advice and guidance to businesses.&quot; feature_item_icon_image_2_1=&quot;icons/icon-15.png&quot; tab_name_2=&quot;Business Consultancy&quot; title_2=&quot;Build LastingPartnerships&quot; description_2=&quot;We strive to build long-lasting partnerships with our clients, understanding their unique challenges and opportunities, and providing tailored strategies that lead to measurable success.&quot; image_2=&quot;general/feature-tabs-2.png&quot; feature_item_title_1_2=&quot;Research planning&quot; feature_item_description_1_2=&quot;Separating your work from your home life can improve work-life balance.&quot; feature_item_icon_image_1_2=&quot;icons/icon-14.png&quot; feature_item_title_2_2=&quot;Investment&quot; feature_item_description_2_2=&quot;A business consultant provides expert advice and guidance to businesses.&quot; feature_item_icon_image_2_2=&quot;icons/icon-2.png&quot; tab_name_3=&quot;Solicitory Consultancy&quot; title_3=&quot;Enhance Operational&quot; description_3=&quot;We strive to build long-lasting partnerships with our clients, understanding their unique challenges and opportunities, and providing tailored strategies that lead to measurable success.&quot; image_3=&quot;general/feature-tabs-3.png&quot; feature_item_title_1_3=&quot;Research planning&quot; feature_item_description_1_3=&quot;Separating your work from your home life can improve work-life balance.&quot; feature_item_icon_image_1_3=&quot;icons/icon-3.png&quot; feature_item_title_2_3=&quot;Investment&quot; feature_item_description_2_3=&quot;A business consultant provides expert advice and guidance to businesses.&quot; feature_item_icon_image_2_3=&quot;icons/icon-17.png&quot; tab_name_4=&quot;HR Consultancy&quot; title_4=&quot;Sustainable Growth&quot; description_4=&quot;We strive to build long-lasting partnerships with our clients, understanding their unique challenges and opportunities, and providing tailored strategies that lead to measurable success.&quot; image_4=&quot;general/feature-tabs-4.png&quot; feature_item_title_1_4=&quot;Research planning&quot; feature_item_description_1_4=&quot;Separating your work from your home life can improve work-life balance.&quot; feature_item_icon_image_1_4=&quot;icons/icon-12.png&quot; feature_item_title_2_4=&quot;Investment&quot; feature_item_description_2_4=&quot;A business consultant provides expert advice and guidance to businesses.&quot; feature_item_icon_image_2_4=&quot;icons/icon-18.png&quot; tab_name_5=&quot;Strategy Consultancy&quot; title_5=&quot;Continuous Evolution&quot; description_5=&quot;We strive to build long-lasting partnerships with our clients, understanding their unique challenges and opportunities, and providing tailored strategies that lead to measurable success.&quot; image_5=&quot;general/feature-tabs-5.png&quot; feature_item_title_1_5=&quot;Research planning&quot; feature_item_description_1_5=&quot;Separating your work from your home life can improve work-life balance.&quot; feature_item_icon_image_1_5=&quot;icons/icon-15.png&quot; feature_item_title_2_5=&quot;Investment&quot; feature_item_description_2_5=&quot;A business consultant provides expert advice and guidance to businesses.&quot; feature_item_icon_image_2_5=&quot;icons/icon-14.png&quot; tab_name_6=&quot;Start Ups&quot; title_6=&quot;Empower Businesses&quot; description_6=&quot;We strive to build long-lasting partnerships with our clients, understanding their unique challenges and opportunities, and providing tailored strategies that lead to measurable success.&quot; image_6=&quot;general/feature-tabs-6.png&quot; feature_item_title_1_6=&quot;Research planning&quot; feature_item_description_1_6=&quot;Separating your work from your home life can improve work-life balance.&quot; feature_item_icon_image_1_6=&quot;icons/icon-15.png&quot; feature_item_title_2_6=&quot;Investment&quot; feature_item_description_2_6=&quot;A business consultant provides expert advice and guidance to businesses.&quot; feature_item_icon_image_2_6=&quot;icons/icon-12.png&quot; background_image=&quot;backgrounds/team.png&quot; primary_action_label=&quot;Get a Free Quote&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-right&quot; secondary_action_label=&quot;Our Help Center&quot; secondary_action_url=&quot;/contact&quot; secondary_action_icon=&quot;ti ti-phone-call&quot;][/feature-tabs]\n[site-statistics style=&quot;3&quot; quantity=&quot;4&quot; second_tab_title_1=&quot;Continuous &lt;br&gt; growth with&quot; second_tab_description_1=&quot;New accounts&quot; second_tab_data_1=&quot;24&quot; second_tab_unit_1=&quot;k&quot; second_tab_title_2=&quot;Successfully &lt;br&gt; completed&quot; second_tab_description_2=&quot;Finished projects&quot; second_tab_data_2=&quot;1024&quot; second_tab_title_3=&quot;Recruit more &lt;br&gt; than&quot; second_tab_description_3=&quot;Skilled experts&quot; second_tab_data_3=&quot;865&quot; second_tab_title_4=&quot;Increase internet &lt;br&gt; awareness&quot; second_tab_description_4=&quot;Media posts&quot; second_tab_data_4=&quot;168&quot; second_tab_unit_4=&quot;k&quot;][/site-statistics]\n[blog-posts style=&quot;2&quot; title=&quot;Our Latest Articles&quot; subtitle=&quot;FROM BLOG&quot; description=&quot;Explore the insights and trends shaping our industry&quot; paginate=&quot;4&quot; action_label=&quot;See all articles&quot; action_url=&quot;/blog&quot; background_image=&quot;backgrounds/team.png&quot;][/blog-posts]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(6, 'Our Team', '[teams subtitle=&quot;OUR TEAM MEMBERS&quot; title=&quot;Meet Our Team&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; team_ids=&quot;1,2,3,4,5,6,7,8&quot; background_image=&quot;backgrounds/team.png&quot;][/teams]\n[features style=&quot;9&quot; title=&quot;We bring a rich variety of &lt;br&gt; experience from multiple fields.&quot; subtitle=&quot;Meet Our Team&quot; description=&quot;Leveraging Extensive Experience: Comprehensive Solutions Crafted from Diverse Professional Backgrounds&quot; image=&quot;general/features-9-1.png&quot; image_1=&quot;general/features-9-2.png&quot;][/features]\n[call-to-action title=&quot;We are &lt;b&gt;Looking to&lt;/b&gt; &lt;br&gt; &lt;b&gt;Expand&lt;/b&gt; Our Team&quot; image=&quot;general/call-to-action-1.png&quot; primary_action_label=&quot;Explore Now&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot;][/call-to-action]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(7, 'Our Team v2', '[teams style=&quot;5&quot; title=&quot;Meet Our Team&quot; subtitle=&quot;OUR TEAM MEMBERS&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; team_ids=&quot;1,2,3,4,5,6&quot; quantity=&quot;1&quot; title_1=&quot;+1 (24) 567 890&quot; subtitle_1=&quot;CONTACT US&quot; url_1=&quot;tel:124567890&quot; icon_image_1=&quot;icons/contact.png&quot;][/teams]\n[features style=&quot;8&quot; title=&quot;Doing the successful thing, at &lt;br&gt;  the right time.&quot; subtitle=&quot;Recent work&quot; description=&quot;We strive to build long-lasting partnerships with our clients, understanding their unique challenges and opportunities, and providing tailored strategies that lead to measurable success.&quot; image=&quot;general/features-8.png&quot; floating_card_title=&quot;Years of Experience&quot; floating_card_data_count=&quot;25&quot; floating_card_data_count_unit=&quot;+&quot; quantity=&quot;2&quot; title_1=&quot;Research planning&quot; description_1=&quot;Separating your work from your home life can improve work-life balance.&quot; icon_image_1=&quot;icons/icon-14.png&quot; title_2=&quot;Investment&quot; description_2=&quot;A business consultant provides expert advice and guidance to businesses.&quot; icon_image_2=&quot;icons/icon-15.png&quot;][/features]\n[call-to-action style=&quot;2&quot; title=&quot;We are &lt;b&gt;Looking to&lt;/b&gt; &lt;br&gt; &lt;b&gt;Expand&lt;/b&gt; Our Team&quot; image=&quot;general/call-to-action-2.png&quot; primary_action_label=&quot;Explore Now&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot;][/call-to-action]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(8, 'Our Team v3', '[teams style=&quot;6&quot; title=&quot;Meet Our Team&quot; subtitle=&quot;OUR TEAM MEMBERS&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day. &lt;br&gt; Company forward every day.&quot; team_ids=&quot;1,2,3,4,5,6,7,8&quot; quantity=&quot;8&quot;][/teams]\n[testimonials style=&quot;3&quot; title=&quot;+500k Satisfied Customers&quot; subtitle=&quot;OUR FEATURES&quot; description=&quot;? Don&rsquo;t just take our words&quot; testimonial_ids=&quot;1,2,4,5,6,7,8,10,12,14,15&quot; background_image=&quot;backgrounds/team.png&quot;][/testimonials]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(9, 'Our Team v4', '[features style=&quot;10&quot; title=&quot;Stay &lt;b&gt;updated&lt;/b&gt; with &lt;br&gt; the &lt;b&gt;latest news&lt;/b&gt; &lt;br&gt; from &lt;b&gt;our team&lt;/b&gt;.&quot; description=&quot;Don&#039;t miss the trending&quot; image=&quot;general/features-10.png&quot;][/features]\n[teams style=&quot;4&quot; title=&quot;Meet Our Team&quot; subtitle=&quot;OUR TEAM MEMBERS&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; team_ids=&quot;1,2,3,4,5,6,7&quot;][/teams]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(10, 'Our Team v5', '[teams style=&quot;2&quot; title=&quot;Meet &lt;b&gt;everyone&lt;/b&gt; who &lt;br&gt; made this &lt;b&gt;possible&lt;/b&gt;.&quot; subtitle=&quot;OUR TEAM MEMBERS&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; team_ids=&quot;1,2,3,4,5,6,7,8&quot;][/teams]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(11, 'Our Team v6', '[teams style=&quot;3&quot; title=&quot;Meet Our Team&quot; subtitle=&quot;OUR TEAM MEMBERS&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; bottom_description=&quot;Easily Monitor, Control, and Enhance Your Personal and Business Finances. &lt;br&gt; Your All-In-One Solution.&quot; primary_action_label=&quot;Get a Free Quote&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-narrow-right&quot; team_ids=&quot;1,2,3,4,5,6,7,8&quot;][/teams]\n[testimonials style=&quot;3&quot; title=&quot;+500k Satisfied Customers&quot; subtitle=&quot;OUR FEATURES&quot; description=&quot;? Don&rsquo;t just take our words&quot; testimonial_ids=&quot;1,2,4,5,6,7,8,10,12,14,15&quot; background_image=&quot;backgrounds/team.png&quot;][/testimonials]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(12, 'Blog', '', 1, NULL, 'full-width', 'Explore the insights and trends shaping our industry', 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(13, 'Contact', '<shortcode>[features style=\"1\" quantity=\"4,4\" title_1=\"Help &amp; Support\" description_1=\"Email support@cabletech.co.id For help with a current product or refer to FAQs\" icon_image_1=\"icons/icon-12.png\" title_2=\"Call Us\" description_2=\"Call us (+62) 21 89902129\" icon_image_2=\"icons/icon-13.png\" title_3=\"Business Department\" description_3=\"Contact the marketing department (+62) 21 89902129\" icon_image_3=\"icons/icon-14.png\" title_4=\"Global branch\" description_4=\"Contact us to open our branches globally. (+62) 21 89902129\" icon_image_4=\"icons/icon-15.png\" background_color=\"transparent\"][/features]</shortcode><shortcode>[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" form_title=\"Get in touch\" form_description=\"Do you want to know more or contact our marketing department?\" title=\"Need control cable solutions? Contact PT Cable Tech today.\" subtitle=\"Contact Us\" description=\"Please let us know if you have a question, want to leave a comment, or would like further information about cable tech.\" quantity=\"4\" title_1=\"Visit the Knowledge Base\" description_1=\"Browse customer support articles and step-by-step instructions for specific features.\" icon_1=\"ti ti-search\" title_2=\"Watch Product Videos\" description_2=\"Watch our video tutorials for visual walkthroughes on how to use our features.\" icon_2=\"ti ti-video\" title_3=\"Visit the Knowledge Base\" description_3=\"Let us talk about how we can help your enterprise.\" icon_3=\"ti ti-headphones\" background_color=\"rgb(74, 134, 232)\"][/contact-form]</shortcode><shortcode>[google-map height=\"650\"]PT cable tech Komplek Delta Silicon, Blok L10 No 10,, JL. Meranti 3, Sukaresmi, Cikarang Selatan, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530[/google-map]</shortcode>', 1, NULL, 'full-width', '', 'published', '2025-02-25 19:09:09', '2025-03-03 03:35:59'),
(14, 'About Us', '[about-us-information title=&quot;Where your financial dreams become reality&quot; subtitle=&quot;Who we are&quot; description=&quot;Infinia is a digital company specializing in website creation. Enterprises of all sizes&mdash;from emerging startups to large corporations&mdash;utilize our theme to develop and manage their online presence.&quot; quantity=&quot;4&quot; title_1=&quot;Best For IT Consulting&quot; title_2=&quot;Innovative Approaches&quot; title_3=&quot;Save Money &amp; Time&quot; title_4=&quot;100% Satisfaction&quot; image=&quot;general/about-us-information-img.png&quot;][/about-us-information]\n[site-statistics title=&quot;See why we are &lt;br&gt; trusted the world over&quot; quantity=&quot;4&quot; title_1=&quot;New accounts&quot; data_1=&quot;496&quot; unit_1=&quot;k&quot; title_2=&quot;Finished projects&quot; data_2=&quot;92&quot; unit_2=&quot;+&quot; title_3=&quot;Skilled experts&quot; data_3=&quot;756&quot; unit_3=&quot;+&quot; title_4=&quot;Media posts&quot; data_4=&quot;25&quot; unit_4=&quot;k&quot;][/site-statistics]\n[our-mission title=&quot;Empowering Your Digital Success Through Innovative Solutions&quot; subtitle=&quot;Our Mission&quot; description=&quot;We believe in building strong relationships with our clients, based on trust, transparency, and mutual success.&quot; quantity=&quot;2&quot; title_1=&quot;Transaction &lt;br&gt; Completed&quot; data_1=&quot;25&quot; unit_1=&quot;M+&quot; text_color_1=&quot;rgb(0, 0, 0)&quot; background_color_1=&quot;rgb(100, 225, 176)&quot; title_2=&quot;Transaction &lt;br&gt; Completed&quot; data_2=&quot;12&quot; unit_2=&quot;k+&quot; text_color_2=&quot;rgb(255, 255, 255)&quot; background_color_2=&quot;rgb(109, 77, 242)&quot; image=&quot;general/our-mission-img.png&quot; image_1=&quot;general/our-mission-img-1.png&quot; image_2=&quot;general/our-mission-img-2.png&quot; testimonial_limit=&quot;2&quot;][/our-mission]\n[our-history title=&quot;A Journey of Innovation and Growth&quot; subtitle=&quot;Our History&quot; description=&quot;Loved By Developers Trusted By Enterprises&quot; main_content=&quot;&lt;strong&gt;Infinia&lt;/strong&gt; was founded with a passion for technology and a desire to make a difference in the digital world. From our humble beginnings, we have grown into a reputable and sought-after web development agency, serving a diverse range of clients across various industries. Over the years, &lt;strong&gt;we have successfully delivered countless projects&lt;/strong&gt;, each one a testament to our dedication, expertise, and innovative approach. Our journey has been marked by &lt;strong&gt;continuous growth, learning, and adaptation&lt;/strong&gt;, and we are proud of the milestones we have achieved along the way. &lt;br&gt;&lt;br&gt; Thank you for considering &lt;strong&gt;Infinia&lt;/strong&gt; as your web development partner. We look forward to helping you achieve your &lt;strong&gt;digital goals&lt;/strong&gt; and &lt;strong&gt;creating a lasting impact&lt;/strong&gt; on your business. &quot; author_name=&quot;Kensei&quot; author_title=&quot;CEO&quot; author_signature=&quot;general/author-signature.png&quot; author_avatar=&quot;general/author-avatar.png&quot; primary_action_label=&quot;Get Free Quote&quot; primary_action_url=&quot;/contact&quot; secondary_action_label=&quot;How We Work&quot; secondary_action_url=&quot;/contact&quot;][/our-history]\n[teams style=&quot;2&quot; title=&quot;Meet &lt;b&gt;everyone&lt;/b&gt; who &lt;br&gt; made this &lt;b&gt;possible&lt;/b&gt;.&quot; subtitle=&quot;OUR TEAM MEMBERS&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; team_ids=&quot;1,2,3,4,5,6,7,8&quot;][/teams]\n[contact-form display_fields=&quot;phone,email,subject,address&quot; mandatory_fields=&quot;email&quot; style=&quot;2&quot; form_title=&quot;Leave a message&quot; title=&quot;Thinking about a project? &lt;br&gt; Get in touch with us.&quot; subtitle=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; description=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; quantity=&quot;3&quot; title_1=&quot;Chat with us&quot; description_1=&quot;The support team is always available 24/7&quot; button_label_1_1=&quot;Chat via Whatsapp&quot; button_url_1_1=&quot;https://www.whatsapp.com&quot; button_icon_1_1=&quot;ti ti-brand-whatsapp&quot; button_label_2_1=&quot;Chat via Viber&quot; button_url_2_1=&quot;https://www.viber.com/&quot; button_icon_2_1=&quot;ti ti-phone-call&quot; button_label_3_1=&quot;Chat via Messager&quot; button_url_3_1=&quot;https://www.facebook.com/&quot; button_icon_3_1=&quot;ti ti-brand-messenger&quot; title_2=&quot;Send us an email&quot; description_2=&quot;Our team will respond promptly to your inquiries&quot; button_label_1_2=&quot;support@infinia.com&quot; button_url_1_2=&quot;mailto:support@infinia.com&quot; button_icon_1_2=&quot;ti ti-mail&quot; button_label_2_2=&quot;sale@infinia.com&quot; button_url_2_2=&quot;mailto:sale@infinia.com&quot; button_icon_2_2=&quot;ti ti-mail&quot; title_3=&quot;For more inquiry&quot; description_3=&quot;Reach out for immediate assistance&quot; button_label_1_3=&quot;+01 (24) 568 900&quot; button_url_1_3=&quot;tell:0124568900&quot; button_icon_1_3=&quot;ti ti-phone-call&quot; background_color=&quot;#fff7ee&quot;][/contact-form]\n[testimonials style=&quot;3&quot; title=&quot;+500k Satisfied Customers&quot; subtitle=&quot;OUR FEATURES&quot; description=&quot;? Don&rsquo;t just take our words&quot; testimonial_ids=&quot;1,2,4,5,6,7,8,10,12,14,15&quot; background_image=&quot;backgrounds/team.png&quot;][/testimonials]\n[information-block image=&quot;icons/icon-star.png&quot; title=&quot;Core values&quot; description=&quot;We break down barriers so teams can focus on what matters &ndash; working together to create products their customers love.&quot; quantity=&quot;8&quot; title_1=&quot;Genuine repeated &lt;br&gt; happy customers.&quot; data_1=&quot;98&quot; unit_1=&quot;%&quot; title_2=&quot;Genuine repeated &lt;br&gt; happy customers.&quot; data_2=&quot;98&quot; unit_2=&quot;%&quot; title_3=&quot;Customers First&quot; icon_image_3=&quot;icons/check.png&quot; description_3=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; title_4=&quot;Think Big&quot; icon_image_4=&quot;icons/check.png&quot; description_4=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; title_5=&quot;Make a Difference&quot; icon_image_5=&quot;icons/check.png&quot; description_5=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; title_6=&quot;Act With Integrity&quot; icon_image_6=&quot;icons/check.png&quot; description_6=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; title_7=&quot;Do the right thing&quot; icon_image_7=&quot;icons/check.png&quot; description_7=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; title_8=&quot;Stronger united&quot; icon_image_8=&quot;icons/check.png&quot; description_8=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; description_9=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; description_10=&quot;Our company exists to help merchants sell more. We make every decision and measure every outcome based on how well it serves our customers.&quot; background_color=&quot;#a38cff&quot;][/information-block]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(15, 'About Us v2', '<shortcode>[our-mission style=\"2\" title=\"Uncover Our &lt;b&gt; Journey: &lt;/b&gt; &lt;br&gt; Uniting Through &lt;b&gt; Creativity &lt;/b&gt;\" subtitle=\"About our company\" description=\"Our dedication to quality and excellence has made us a trusted partner for enterprises looking to enhance their online presence.\" quantity=\"4\" title_1=\"Projects Completed\" data_1=\"23\" unit_1=\"k+\" title_2=\"Users Activated\" data_2=\"38\" unit_2=\"k+\" title_3=\"Happy Clients\" data_3=\"98k+\" text_color_3=\"transparent\" background_color_3=\"transparent\" title_4=\"Operating countries\" data_4=\"150\" testimonial_box_title=\"Loved by over 4k &lt;br&gt; happy clients\" testimonial_limit=\"5\" image=\"general/our-mission-img-2-1.png\" image_1=\"general/our-mission-img-2-2.png\" background_image=\"backgrounds/team.png\"][/our-mission]</shortcode><shortcode>[partners style=\"3\" title=\"Trusted by great companies\" quantity=\"1\" name_1=\"Framer\" image_1=\"partners/1.png\" url_1=\"https://google.com\" open_in_new_tab_1=\"0,1\" name_2=\"Reddit\" image_2=\"partners/2.png\" url_2=\"https://google.com\" open_in_new_tab_2=\"0,1\" name_3=\"Netflix\" image_3=\"partners/3.png\" url_3=\"https://google.com\" open_in_new_tab_3=\"0,1\" name_4=\"Microsoft\" image_4=\"partners/4.png\" url_4=\"https://google.com\" open_in_new_tab_4=\"0,1\" name_5=\"Discover\" image_5=\"partners/5.png\" url_5=\"https://google.com\" open_in_new_tab_5=\"0,1\" name_6=\"Lemon Squeezy\" image_6=\"partners/6.png\" url_6=\"https://google.com\" open_in_new_tab_6=\"0,1\" name_7=\"Paypal\" image_7=\"partners/7.png\" url_7=\"https://google.com\" open_in_new_tab_7=\"0,1\" name_8=\"Youtube\" image_8=\"partners/8.png\" url_8=\"https://google.com\" open_in_new_tab_8=\"0,1\" name_9=\"Spotify\" image_9=\"partners/5.png\" url_9=\"https://google.com\" open_in_new_tab_9=\"0,1\" name_10=\"Google\" image_10=\"partners/5.png\" url_10=\"https://google.com\" open_in_new_tab_10=\"0,1\" name_11=\"Amazon\" image_11=\"partners/4.png\" url_11=\"https://google.com\" open_in_new_tab_11=\"0,1\" name_12=\"Apple\" image_12=\"partners/1.png\" url_12=\"https://google.com\" open_in_new_tab_12=\"0,1\" name_13=\"Facebook\" image_13=\"partners/3.png\" url_13=\"https://google.com\" open_in_new_tab_13=\"0,1\" name_14=\"Twitter\" image_14=\"partners/5.png\" url_14=\"https://google.com\" open_in_new_tab_14=\"0,1\" name_15=\"Instagram\" image_15=\"partners/5.png\" url_15=\"https://google.com\" open_in_new_tab_15=\"0,1\" name_16=\"Slack\" image_16=\"partners/3.png\" url_16=\"https://google.com\" open_in_new_tab_16=\"0,1\" name_17=\"Tiktok\" image_17=\"partners/8.png\" url_17=\"https://google.com\" open_in_new_tab_17=\"0,1\" name_18=\"Pinterest\" image_18=\"partners/6.png\" url_18=\"https://google.com\" open_in_new_tab_18=\"0,1\" name_19=\"Medium\" image_19=\"partners/1.png\" url_19=\"https://google.com\" open_in_new_tab_19=\"0,1\" name_20=\"Linkedin\" image_20=\"partners/3.png\" url_20=\"https://google.com\" open_in_new_tab_20=\"0,1\" background_color=\"transparent\"][/partners]</shortcode><shortcode>[teams style=\"3\" title=\"Meet Our Team\" subtitle=\"OUR TEAM MEMBERS\" description=\"Meet the talented and passionate team members who drive our company forward every day.\" bottom_description=\"Easily Monitor, Control, and Enhance Your Personal and Business Finances. &lt;br&gt; Your All-In-One Solution.\" primary_action_label=\"Get a Free Quote\" primary_action_url=\"/contact\" primary_action_icon=\"ti ti-arrow-narrow-right\" team_ids=\"1,2,3,4,5,6,7,8\"][/teams]</shortcode><shortcode>[services style=\"2\" service_ids=\"1,3,4,5\" background_color=\"#a38cff\" background_image=\"backgrounds/team.png\"][/services]</shortcode><shortcode>[features style=\"4\" title=\"Optimize Your &lt;br&gt; Finances with Ease.\" subtitle=\"OUR FEATURES\" image=\"general/features-4-1.png\" image_1=\"general/features-4-2.png\" quantity=\"3\" title_1=\"Our History\" description_1=\"A Journey of Innovation, Growth, and Technological Advancement\" icon_image_1=\"icons/icon-1.png\" title_2=\"Our Mission\" description_2=\"Empowering Your Digital Success Through Innovative Solutions\" icon_image_2=\"icons/icon-2.png\" title_3=\"Our Vision\" description_3=\"Leading the Future of Web Development with Excellence and Innovation\" icon_image_3=\"icons/icon-3.png\"][/features]</shortcode><shortcode>[projects style=\"2\" title=\"Recent work\" subtitle=\"Our feared projects\" description=\"⚡Don\'t miss any contact. Stay connected.\" project_ids=\"1,3,4,6\" limit=\"4\"][/projects]</shortcode><shortcode>[blog-posts style=\"2\" title=\"Reach out to &lt;br&gt; the world\'s most\" subtitle=\"Why us ?\" description=\"⚡Here are a few reasons why our customers choose Infinia.\" paginate=\"8\"][/blog-posts]</shortcode>', 1, NULL, 'full-width', '', 'published', '2025-02-25 19:09:09', '2025-06-13 01:42:14'),
(16, 'About Us v3', '[about-us-information style=&quot;2&quot; title=&quot;Together, We are &lt;b&gt;Shaping&lt;/b&gt; a &lt;br&gt; &lt;b&gt;Promising&lt;/b&gt; Future.&quot; subtitle=&quot;About us&quot; quantity=&quot;6&quot; image=&quot;general/about-us-information-2-1.jpeg&quot; display_social_links=&quot;0,1&quot; social_links_box_title=&quot;Follow Us:&quot;][/about-us-information]\n[services style=&quot;3&quot; title=&quot;Our Core Values&quot; description=&quot;We break down barriers so teams can focus on what matters &ndash; working together &lt;br&gt; to create products their customers love.&quot; service_ids=&quot;1,2,3,4&quot;][/services]\n[teams style=&quot;4&quot; title=&quot;Meet Our Team&quot; subtitle=&quot;OUR TEAM MEMBERS&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; team_ids=&quot;1,2,3,4,5,6,7&quot;][/teams]\n[contact-form display_fields=&quot;phone,email,subject,address&quot; mandatory_fields=&quot;email&quot; style=&quot;2&quot; form_title=&quot;Leave a message&quot; title=&quot;Thinking about a project? &lt;br&gt; Get in touch with us.&quot; subtitle=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; description=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; quantity=&quot;3&quot; title_1=&quot;Chat with us&quot; description_1=&quot;The support team is always available 24/7&quot; button_label_1_1=&quot;Chat via Whatsapp&quot; button_url_1_1=&quot;https://www.whatsapp.com&quot; button_icon_1_1=&quot;ti ti-brand-whatsapp&quot; button_label_2_1=&quot;Chat via Viber&quot; button_url_2_1=&quot;https://www.viber.com/&quot; button_icon_2_1=&quot;ti ti-phone-call&quot; button_label_3_1=&quot;Chat via Messager&quot; button_url_3_1=&quot;https://www.facebook.com/&quot; button_icon_3_1=&quot;ti ti-brand-messenger&quot; title_2=&quot;Send us an email&quot; description_2=&quot;Our team will respond promptly to your inquiries&quot; button_label_1_2=&quot;support@infinia.com&quot; button_url_1_2=&quot;mailto:support@infinia.com&quot; button_icon_1_2=&quot;ti ti-mail&quot; button_label_2_2=&quot;sale@infinia.com&quot; button_url_2_2=&quot;mailto:sale@infinia.com&quot; button_icon_2_2=&quot;ti ti-mail&quot; title_3=&quot;For more inquiry&quot; description_3=&quot;Reach out for immediate assistance&quot; button_label_1_3=&quot;+01 (24) 568 900&quot; button_url_1_3=&quot;tell:0124568900&quot; button_icon_1_3=&quot;ti ti-phone-call&quot; background_color=&quot;#ffffff&quot;][/contact-form]\n[blog-posts subtitle=&quot;FROM BLOG&quot; title=&quot;Our Latest Articles&quot; description=&quot;Explore the insights and trends shaping our industry&quot; paginate=&quot;3&quot; action_label=&quot;View All Articles&quot; action_url=&quot;/blog&quot;][/blog-posts]<br/><br/>', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(17, 'Pricing', '[pricing-plans style=&quot;3&quot; title=&quot;&lt;b&gt;Straightforward&lt;/b&gt;  Pricing &lt;br&gt; Custom &lt;b&gt;Integrations&lt;/b&gt;&quot; subtitle=&quot;Our Pricing&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; quantity=&quot;6&quot; package_ids=&quot;1,2,3&quot; background_images=&quot;backgrounds/bg-line-bottom.png&quot; primary_action_label=&quot;Get Free Quote&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-narrow-right&quot; secondary_action_label=&quot;How We Work&quot; secondary_action_url=&quot;/contact&quot;][/pricing-plans]\n[compare-plans title=&quot;Compare Features&quot; subtitle=&quot;Compare Plans&quot; description=&quot;A management platform to help you succeed&quot; package_name_1=&quot;Starter&quot; package_description_1=&quot;from $19/month&quot; package_name_2=&quot;Standard&quot; package_description_2=&quot;from $49/month&quot; package_name_3=&quot;Enterprise&quot; package_description_3=&quot;from $99/month&quot; quantity=&quot;10&quot; criteria_1=&quot;Docs/month&quot; description_1=&quot;Monthly Documentation Capacity&quot; value_1_1=&quot;yes&quot; value_2_1=&quot;yes&quot; value_3_1=&quot;yes&quot; criteria_2=&quot;Integration&quot; description_2=&quot;Seamless System Integration&quot; value_1_2=&quot;yes&quot; value_2_2=&quot;yes&quot; value_3_2=&quot;yes&quot; criteria_3=&quot;Workspaces&quot; description_3=&quot;Organized Work Environments&quot; value_1_3=&quot;yes&quot; value_2_3=&quot;yes&quot; value_3_3=&quot;yes&quot; criteria_4=&quot;Collaborators&quot; description_4=&quot;Team Collaboration Features&quot; value_1_4=&quot;no&quot; value_2_4=&quot;yes&quot; value_3_4=&quot;yes&quot; criteria_5=&quot;Real-time collaboration&quot; description_5=&quot;Instant Collaborative Editing&quot; value_1_5=&quot;no&quot; value_2_5=&quot;yes&quot; value_3_5=&quot;yes&quot; criteria_6=&quot;File uploads&quot; description_6=&quot;Effortless File Management&quot; value_1_6=&quot;yes&quot; value_2_6=&quot;yes&quot; value_3_6=&quot;yes&quot; criteria_7=&quot;Transcripts&quot; description_7=&quot;Accurate Meeting Transcripts&quot; value_1_7=&quot;2h / month&quot; value_2_7=&quot;Unlimited&quot; value_3_7=&quot;Unlimited&quot; criteria_8=&quot;Image uploads&quot; description_8=&quot;Simple Image Storage&quot; value_1_8=&quot;Up to 5 MB per file&quot; value_2_8=&quot;Unlimited&quot; value_3_8=&quot;Unlimited&quot; criteria_9=&quot;Email Campaigns&quot; description_9=&quot;Effective Email Marketing &quot; value_1_9=&quot;03 Campaigns&quot; value_2_9=&quot;Unlimited&quot; value_3_9=&quot;Unlimited&quot; criteria_10=&quot;Custom Branding&quot; description_10=&quot;Personalized Brand Experience&quot; value_1_10=&quot;01 Workspaces&quot; value_2_10=&quot;05 Workspaces&quot; value_3_10=&quot;Unlimited&quot; bottom_description=&quot;We also offer other customized services to fit your business.&quot; primary_action_label=&quot;Get a Free Quote&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-right&quot; secondary_action_label=&quot;Our Help Center&quot; secondary_action_url=&quot;/contact&quot; secondary_action_icon=&quot;ti ti-phone-call&quot;][/compare-plans]\n[instruction-steps style=&quot;2&quot; title=&quot;How It Works&quot; subtitle=&quot;working process&quot; description=&quot;Comprehensive Suite of Cutting-Edge IT Services.&quot; quantity=&quot;3&quot; title_1=&quot;Choose Services&quot; description_1=&quot;It is a long established fact that a reader will be distracted by the readable content of a page.&quot; icon_image_1=&quot;icons/icon-16.png&quot; title_2=&quot;Project Analysis&quot; description_2=&quot;It is a long established fact that a reader will be distracted by the readable content of a page.&quot; icon_image_2=&quot;icons/icon-14.png&quot; title_3=&quot;Got Final Result&quot; description_3=&quot;It is a long established fact that a reader will be distracted by the readable content of a page.&quot; icon_image_3=&quot;icons/icon-15.png&quot; bottom_description=&quot;Need more help? Go to our&quot; action_label=&quot;Support Center&quot; action_url=&quot;/contact&quot; background_image=&quot;backgrounds/team.png&quot;][/instruction-steps]\n[faqs style=&quot;2&quot; title=&quot;Frequently Asked  &lt;br&gt; Questions&quot; description=&quot;Find the answers to all of our most frequently asked questions&quot; image=&quot;general/faqs-img-2.png&quot; quantity=&quot;3&quot; title_1=&quot;Live chat support 24/7&quot; description_1=&quot;More than 300 employees are ready to help you&quot; icon_image_1=&quot;icons/icon-1.png&quot; title_2=&quot;Help desk support center&quot; description_2=&quot;Via ticket system. 24/7 available.&quot; icon_image_2=&quot;icons/icon-2.png&quot; title_3=&quot;Book a demo&quot; description_3=&quot;Live support via video call&quot; icon_image_3=&quot;icons/icon-15.png&quot; category_ids=&quot;1,2,3&quot; background_image=&quot;backgrounds/faqs.png&quot;][/faqs]\n[testimonials style=&quot;4&quot; title=&quot;What &lt;b&gt; People Say &lt;/b&gt; About &lt;br&gt; &lt;b&gt;Our Company&lt;/b&gt;&quot; subtitle=&quot;TESTIMONIALS&quot; description=&quot;Access top-tier group mentoring plans and exclusive professional &lt;br&gt; benefits for your team. ?&quot; testimonial_ids=&quot;1,2,3,4,5&quot; background_image=&quot;backgrounds/team.png&quot;][/testimonials]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(18, 'Pricing v2', '<br><br><br>[pricing-plans subtitle=&quot;OUR PLANS&quot; title=&quot;Pricing Plans&quot; description=&quot;⚡We&rsquo;ve got a pricing plan that&rsquo;s perfect for you&quot; package_ids=&quot;1,2,3,4&quot;][/pricing-plans]\n[compare-plans title=&quot;Compare Features&quot; subtitle=&quot;Compare Plans&quot; description=&quot;A management platform to help you succeed&quot; package_name_1=&quot;Starter&quot; package_description_1=&quot;from $19/month&quot; package_name_2=&quot;Standard&quot; package_description_2=&quot;from $49/month&quot; package_name_3=&quot;Enterprise&quot; package_description_3=&quot;from $99/month&quot; quantity=&quot;10&quot; criteria_1=&quot;Docs/month&quot; description_1=&quot;Monthly Documentation Capacity&quot; value_1_1=&quot;yes&quot; value_2_1=&quot;yes&quot; value_3_1=&quot;yes&quot; criteria_2=&quot;Integration&quot; description_2=&quot;Seamless System Integration&quot; value_1_2=&quot;yes&quot; value_2_2=&quot;yes&quot; value_3_2=&quot;yes&quot; criteria_3=&quot;Workspaces&quot; description_3=&quot;Organized Work Environments&quot; value_1_3=&quot;yes&quot; value_2_3=&quot;yes&quot; value_3_3=&quot;yes&quot; criteria_4=&quot;Collaborators&quot; description_4=&quot;Team Collaboration Features&quot; value_1_4=&quot;no&quot; value_2_4=&quot;yes&quot; value_3_4=&quot;yes&quot; criteria_5=&quot;Real-time collaboration&quot; description_5=&quot;Instant Collaborative Editing&quot; value_1_5=&quot;no&quot; value_2_5=&quot;yes&quot; value_3_5=&quot;yes&quot; criteria_6=&quot;File uploads&quot; description_6=&quot;Effortless File Management&quot; value_1_6=&quot;yes&quot; value_2_6=&quot;yes&quot; value_3_6=&quot;yes&quot; criteria_7=&quot;Transcripts&quot; description_7=&quot;Accurate Meeting Transcripts&quot; value_1_7=&quot;2h / month&quot; value_2_7=&quot;Unlimited&quot; value_3_7=&quot;Unlimited&quot; criteria_8=&quot;Image uploads&quot; description_8=&quot;Simple Image Storage&quot; value_1_8=&quot;Up to 5 MB per file&quot; value_2_8=&quot;Unlimited&quot; value_3_8=&quot;Unlimited&quot; criteria_9=&quot;Email Campaigns&quot; description_9=&quot;Effective Email Marketing &quot; value_1_9=&quot;03 Campaigns&quot; value_2_9=&quot;Unlimited&quot; value_3_9=&quot;Unlimited&quot; criteria_10=&quot;Custom Branding&quot; description_10=&quot;Personalized Brand Experience&quot; value_1_10=&quot;01 Workspaces&quot; value_2_10=&quot;05 Workspaces&quot; value_3_10=&quot;Unlimited&quot; bottom_description=&quot;We also offer other customized services to fit your business.&quot; primary_action_label=&quot;Get a Free Quote&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-right&quot; secondary_action_label=&quot;Our Help Center&quot; secondary_action_url=&quot;/contact&quot; secondary_action_icon=&quot;ti ti-phone-call&quot;][/compare-plans]\n[testimonials style=&quot;2&quot; title=&quot;&lt;b&gt; +100k users &lt;/b&gt; have loved &lt;br&gt; &lt;b&gt; Infinia Conference &lt;/b&gt; System&quot; description=&quot;Provide your team with top-tier group mentoring programs and exceptional professional benefits.&quot; testimonial_ids=&quot;1,2,3,4,5,6&quot; primary_action_label=&quot;View More Testimonials&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot; primary_action_url=&quot;/about-us&quot;][/testimonials]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(19, 'Pricing v3', '[pricing-plans style=&quot;2&quot; title=&quot;Pick Your Premium&quot; subtitle=&quot;OUR PLANS&quot; description=&quot;Upgrade to Spotify Premium and take your music journey to the next level. Enjoy uninterrupted music playback, even in offline mode&quot; features=&quot;Get 30 day free trial \\n You can cancel anytime \\n No any hidden fees pay \\n Monthly management&quot; bottom_title=&quot;Trusted by secure payment service&quot; quantity=&quot;4&quot; name_1=&quot;PayPal&quot; url_1=&quot;https://www.paypal.com/&quot; image_1=&quot;general/paypal.png&quot; name_2=&quot;Stripe&quot; url_2=&quot;https://www.stripe.com/&quot; image_2=&quot;general/stripe.png&quot; name_3=&quot;Mastercard&quot; url_3=&quot;https://www.mastercard.us/en-us.html&quot; image_3=&quot;general/mastercard.png&quot; name_4=&quot;Skrill&quot; url_4=&quot;https://www.skrill.com/&quot; image_4=&quot;general/skrill.png&quot; package_ids=&quot;1,2&quot;][/pricing-plans]\n[faqs style=&quot;3&quot; title=&quot;Ask us anything&quot; subtitle=&quot;Pricing FAQs&quot; description=&quot;Have any questions? We&#039;re here to assist you.&quot; quantity=&quot;6&quot; category_ids=&quot;1,2,3&quot; limit=&quot;10&quot;][/faqs]\n[faqs style=&quot;4&quot; title=&quot;Got questions? &lt;br&gt; We&#039;ve got answers&quot; subtitle=&quot;Frequently Asked questions&quot; description=&quot;Quick answers to questions you may have. Can&#039;t find what you&#039;re looking for? Get in touch with us. &quot; image=&quot;general/faqs-4-1.png&quot; image_1=&quot;general/faqs-4-2.png&quot; category_ids=&quot;1,2,3&quot; limit=&quot;5&quot; primary_action_label=&quot;Get in touch&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot; secondary_action_label=&quot;Help Center&quot; secondary_action_url=&quot;/contact&quot;][/faqs]\n[testimonials style=&quot;3&quot; title=&quot;+500k Satisfied Customers&quot; subtitle=&quot;OUR FEATURES&quot; description=&quot;? Don&rsquo;t just take our words&quot; testimonial_ids=&quot;1,2,4,5,6,7,8,10,12,14,15&quot; background_image=&quot;backgrounds/team.png&quot;][/testimonials]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(20, 'Coming Soon', '[newsletter title=&quot;Get Notified &lt;br&gt; When We Launch&quot; subtitle=&quot;Under Construction&quot; description=&quot;Our design projects are fresh and simple and will benefit your business greatly. Learn more about our work!&quot; button_label=&quot;Join now&quot; image=&quot;general/app-downloads-img.png&quot;][/newsletter]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(21, 'Features', '[features style=&quot;1&quot; title=&quot;Together, we are creating a &lt;span&gt;Bright Future&lt;/span&gt;&quot; subtitle=&quot;OUR FEATURES&quot; image=&quot;backgrounds/feature.png&quot; quantity=&quot;4&quot; title_1=&quot;Work organization&quot; description_1=&quot;A business consultant provides expert advice and guidance to businesses on various aspects.&quot; icon_image_1=&quot;icons/icon-1.png&quot; title_2=&quot;Strategy Development&quot; description_2=&quot;Business consultants play a crucial role by offering expert advice and guidance to companies&quot; icon_image_2=&quot;icons/icon-2.png&quot; title_3=&quot;Data analytics&quot; description_3=&quot;Consultants provide invaluable expertise to businesses, assisting them with strategic advice&quot; icon_image_3=&quot;icons/icon-3.png&quot; title_4=&quot;Business Intelligence&quot; description_4=&quot;Through their deep understanding of industry trends and best practices, consultants empower organizations&quot; icon_image_4=&quot;icons/icon-4.png&quot;][/features]\n[features style=&quot;3&quot; title=&quot;Powerful agency for corporate business.&quot; subtitle=&quot;Company&#039;s vision&quot; description=&quot;Provide your team with top-tier group mentoring programs and exceptional professional benefits.&quot; image=&quot;backgrounds/feature-3.png&quot; primary_action_label=&quot;Get Free Quote&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot; secondary_action_label=&quot;How We Work&quot; secondary_action_url=&quot;/contact&quot; floating_card_image=&quot;shapes/testimonial-star.png&quot; floating_card_title=&quot;Rate For Us&quot; floating_card_description=&quot;Loved by over 4k \\n happy clients&quot; quantity=&quot;2&quot; title_1=&quot;99%&quot; description_1=&quot;Genuine repeated happy customers.&quot; title_2=&quot;98%&quot; description_2=&quot;Trusted by companies.&quot;][/features]\n[projects style=&quot;3&quot; title=&quot;Proud projects &lt;b&gt;that make&lt;/b&gt; &lt;br&gt; &lt;b&gt;us stand&lt;/b&gt; out&quot; subtitle=&quot;Why We Are The Best&quot; description=&quot;Nunc bibendum augue sed mattis porta. Donec pharetra magna tortor, quis bibendum ligula faucibus vitae,&quot; data_count=&quot;50&quot; data_count_unit=&quot;k&quot; project_ids=&quot;1,2,3&quot; quantity=&quot;4&quot; title_1=&quot;Offshore Software Development&quot; description_1=&quot;Getting started is simple! Download the app from the App Store or Google Play Store, create an account using your email or social media login, and start making video calls instantly.&quot; title_2=&quot;Custom Software Development&quot; description_2=&quot;Getting started is simple! Download the app from the App Store or Google Play Store, create an account using your email or social media login, and start making video calls instantly.&quot; title_3=&quot;Software Outsourcing Services&quot; description_3=&quot;Getting started is simple! Download the app from the App Store or Google Play Store, create an account using your email or social media login, and start making video calls instantly.&quot; title_4=&quot;Software Product Development&quot; description_4=&quot;Getting started is simple! Download the app from the App Store or Google Play Store, create an account using your email or social media login, and start making video calls instantly.&quot;][/projects]\n[contact-form display_fields=&quot;phone,email,subject,address&quot; mandatory_fields=&quot;email&quot; style=&quot;2&quot; form_title=&quot;Leave a message&quot; title=&quot;Thinking about a project? &lt;br&gt; Get in touch with us.&quot; subtitle=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; description=&quot;Connect with Us Today through the Details Below or Fill Out the Form for a Prompt Response&quot; quantity=&quot;3&quot; title_1=&quot;Chat with us&quot; description_1=&quot;The support team is always available 24/7&quot; button_label_1_1=&quot;Chat via Whatsapp&quot; button_url_1_1=&quot;https://www.whatsapp.com&quot; button_icon_1_1=&quot;ti ti-brand-whatsapp&quot; button_label_2_1=&quot;Chat via Viber&quot; button_url_2_1=&quot;https://www.viber.com/&quot; button_icon_2_1=&quot;ti ti-phone-call&quot; button_label_3_1=&quot;Chat via Messager&quot; button_url_3_1=&quot;https://www.facebook.com/&quot; button_icon_3_1=&quot;ti ti-brand-messenger&quot; title_2=&quot;Send us an email&quot; description_2=&quot;Our team will respond promptly to your inquiries&quot; button_label_1_2=&quot;support@infinia.com&quot; button_url_1_2=&quot;mailto:support@infinia.com&quot; button_icon_1_2=&quot;ti ti-mail&quot; button_label_2_2=&quot;sale@infinia.com&quot; button_url_2_2=&quot;mailto:sale@infinia.com&quot; button_icon_2_2=&quot;ti ti-mail&quot; title_3=&quot;For more inquiry&quot; description_3=&quot;Reach out for immediate assistance&quot; button_label_1_3=&quot;+01 (24) 568 900&quot; button_url_1_3=&quot;tell:0124568900&quot; button_icon_1_3=&quot;ti ti-phone-call&quot; background_color=&quot;#ffffff&quot;][/contact-form]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(22, 'Features v2', '[features style=&quot;4&quot; title=&quot;Optimize Your &lt;br&gt; Finances with Ease.&quot; subtitle=&quot;OUR FEATURES&quot; image=&quot;general/features-4-1.png&quot; image_1=&quot;general/features-4-2.png&quot; quantity=&quot;3&quot; title_1=&quot;Our History&quot; description_1=&quot;A Journey of Innovation, Growth, and Technological Advancement&quot; icon_image_1=&quot;icons/icon-1.png&quot; title_2=&quot;Our Mission&quot; description_2=&quot;Empowering Your Digital Success Through Innovative Solutions&quot; icon_image_2=&quot;icons/icon-2.png&quot; title_3=&quot;Our Vision&quot; description_3=&quot;Leading the Future of Web Development with Excellence and Innovation&quot; icon_image_3=&quot;icons/icon-3.png&quot;][/features]\n[features style=&quot;9&quot; title=&quot;We bring a rich variety of &lt;br&gt; experience from multiple fields.&quot; subtitle=&quot;Meet Our Team&quot; description=&quot;Leveraging Extensive Experience: Comprehensive Solutions Crafted from Diverse Professional Backgrounds&quot; image=&quot;general/features-9-1.png&quot; image_1=&quot;general/features-9-2.png&quot;][/features]\n[faqs style=&quot;2&quot; title=&quot;Frequently Asked  &lt;br&gt; Questions&quot; description=&quot;Find the answers to all of our most frequently asked questions&quot; image=&quot;general/faqs-img-2.png&quot; quantity=&quot;3&quot; title_1=&quot;Live chat support 24/7&quot; description_1=&quot;More than 300 employees are ready to help you&quot; icon_image_1=&quot;icons/icon-1.png&quot; title_2=&quot;Help desk support center&quot; description_2=&quot;Via ticket system. 24/7 available.&quot; icon_image_2=&quot;icons/icon-2.png&quot; title_3=&quot;Book a demo&quot; description_3=&quot;Live support via video call&quot; icon_image_3=&quot;icons/icon-15.png&quot; category_ids=&quot;1,2,3&quot; background_image=&quot;backgrounds/faqs.png&quot;][/faqs]\n[services style=&quot;4&quot; title=&quot;Professional &lt;b&gt;UltraHD Video&lt;/b&gt; &lt;br&gt; &lt;b&gt;Conferencing&lt;/b&gt; Platform&quot; subtitle=&quot;WHAT WE OFFERS&quot; service_ids=&quot;1,3,4,6&quot; primary_action_label=&quot;Get Free Quote&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot; primary_action_url=&quot;/contact&quot; secondary_action_label=&quot;How We Work&quot; secondary_action_url=&quot;/contact&quot;][/services]\n[features style=&quot;2&quot; title=&quot;Scalable Business for &lt;span&gt;Startups&lt;/span&gt;&quot; subtitle=&quot;OUR FEATURES&quot; checklist=&quot;Success Accelerators\\nStarted politician Club\\nBusiness Intelligence\\nData analytics&quot; image=&quot;shapes/img-favicon.png&quot; floating_card_image=&quot;backgrounds/feature-2.png&quot; floating_card_title=&quot;Transform Your Business \\n Into Profession&quot; floating_card_description=&quot;Achieve Your a of Business&quot; floating_card_button_label=&quot;Free Update&quot; floating_card_button_url=&quot;/contact&quot; quantity=&quot;2&quot; title_1=&quot;Efficiency Experts&quot; description_1=&quot;A business consultant provides expert advice and guidance to businesses on various aspects.&quot; icon_image_1=&quot;icons/icon-5.png&quot; title_2=&quot;Strategic Solutions&quot; description_2=&quot;Discover why hundreds of millions people use Infinia to chat and call every day.&quot; icon_image_2=&quot;&quot;][/features]\n[services style=&quot;3&quot; title=&quot;Our Core Values&quot; description=&quot;We break down barriers so teams can focus on what matters &ndash; working together &lt;br&gt; to create products their customers love.&quot; service_ids=&quot;1,2,3,4&quot;][/services]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(23, 'Privacy Policy', '<br><br>[content-page title=\"Infinia System Privacy Policy\" subtitle=\"Privacy Policy\" description=\"At Infinia System, we value your privacy and are committed to protecting your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your data when you use our services.\"][/content-page]<div class=\"container\">\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Infinia System (\"we,\" \"our,\" or \"us\") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our website, platform, and services (collectively, \"Services\"). Please read this Privacy Policy carefully. If you do not agree with the terms of this Privacy Policy, please do not access the Services.\n    </p>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Information We Collect\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        We may collect personal information that you provide directly to us, including but not limited to:\n    </p>\n    <ul class=\"\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;padding-left:2rem;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        <li style=\"box-sizing:border-box;\">\n            Contact Information: Name, email address, phone number, and postal address.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Account Information: Username, password, and other login details.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Payment Information: Credit card details, billing address, and transaction history.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Communication Information: Feedback, messages, and other communications with us.\n        </li>\n    </ul>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Non-Personal Information\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        We may also collect non-personal information about your interactions with our Services, including but not limited to:\n    </p>\n    <ul class=\"\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;padding-left:2rem;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        <li style=\"box-sizing:border-box;\">\n            Usage Data: IP address, browser type, operating system, access times, and pages viewed.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Device Information: Device type, unique device identifiers, and mobile network information.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Location Data: General location information based on IP address or GPS data (with your consent).\n        </li>\n    </ul>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        How We Use Your Information\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        We may use the information we collect for various purposes, including but not limited to:\n    </p>\n    <ul class=\"\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;padding-left:2rem;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        <li style=\"box-sizing:border-box;\">\n            Providing, maintaining, and improving our Services.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Processing transactions and managing billing.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Communicating with you about your account and our Services.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Responding to your inquiries and providing customer support.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Analyzing usage patterns to enhance user experience.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Sending marketing and promotional communications (with your consent).\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Complying with legal obligations and protecting our legal rights.\n        </li>\n    </ul>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Overall, Infinia System\'s commitment to enhancing user engagement through personalized experiences, optimized design, and proactive support transformed their user base and positioned them for continued growth and success.\n    </p>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        How We Share Your Information\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        We may share your information in the following circumstances:\n    </p>\n    <ul class=\"\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;padding-left:2rem;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        <li style=\"box-sizing:border-box;\">\n            Service Providers: With third-party vendors, consultants, and service providers who perform services on our behalf.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Business Transfers: In connection with, or during negotiations of, any merger, sale of company assets, financing, or acquisition of all or a portion of our business.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Legal Requirements: To comply with legal obligations, enforce our terms of service, or protect our rights, privacy, safety, or property.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Consent: With your consent or at your direction.\n        </li>\n    </ul>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Data Security\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        We implement reasonable administrative, technical, and physical security measures to protect your information from unauthorized access, use, or disclosure. However, no method of transmission over the internet or method of electronic storage is 100% secure, and we cannot guarantee its absolute security.\n    </p>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Your Rights and Choices\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        You have the following rights regarding your personal information:\n    </p>\n    <ul class=\"\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;padding-left:2rem;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        <li style=\"box-sizing:border-box;\">\n            Access and Update: You can access and update your personal information through your account settings.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Opt-Out: You can opt out of receiving marketing communications by following the unsubscribe instructions in those communications.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Data Portability: You can request a copy of your personal information in a structured, machine-readable format.\n        </li>\n        <li style=\"box-sizing:border-box;\">\n            Deletion: You can request the deletion of your personal information, subject to certain exceptions prescribed by law.\n        </li>\n    </ul>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Children\'s Privacy\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Our Services are not intended for individuals under the age of 13. We do not knowingly collect personal information from children under 13. If we become aware that we have inadvertently received personal information from a child under 13, we will delete such information from our records.\n    </p>\n    <h5 class=\"mb-3 mt-4\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable;font-size:25px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-bold);letter-spacing:normal;line-height:var(--tc-heading-line-height);margin-bottom:1rem !important;margin-top:1.5rem !important;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        Changes to This Privacy Policy\n    </h5>\n    <p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:var(--tc-neutral-600);font-family:Satoshi-Variable;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:var(--tc-fw-medium);letter-spacing:normal;line-height:var(--tc-body-line-height);margin-bottom:15px;margin-top:0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">\n        We may update this Privacy Policy from time to time. If we make material changes, we will notify you by email (sent to the email address specified in your account) or by means of a notice on our Services prior to the change becoming effective. We encourage you to review this Privacy Policy periodically to stay informed about our information practices.\n    </p>\n</div>\n[content-page contact_section_title=\"Contact Us\" contact_section_description=\"If you have any questions or concerns about this Privacy Policy, please contact us at:\" contact_section_subtitle=\"Chat with us\" contact_section_sub_description=\"The support team is always available 24/7\" quantity=\"5\" action_label_1=\"Chat via Whatsapp\" action_url_1=\"https://www.whatsapp.com/\" action_icon_1=\"ti ti-brand-whatsapp\" action_label_2=\"Chat via Viber\" action_url_2=\"https://www.viber.com/\" action_icon_2=\"ti ti-phone-call\" action_label_3=\"Chat via Messager\" action_url_3=\"https://www.facebook.com/\" action_icon_3=\"ti ti-brand-messenger\" action_label_4=\"support@infinia.com\" action_url_4=\"mailto:support@infinia.com\" action_icon_4=\"ti ti-mail\" action_label_5=\"Send us an email\" action_url_5=\"mailto:sale@infinia.com\" action_icon_5=\"ti ti-mail\"][/content-page]<br><br>', 1, NULL, NULL, NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(24, 'Work Process', '[our-history style=&quot;4&quot; title=&quot;What are the &lt;b&gt;Steps Involved&lt;/b&gt; in &lt;br&gt; Our &lt;b&gt;Process&lt;/b&gt;?&quot; subtitle=&quot;How It Work&quot; image=&quot;general/our-history-4.png&quot; floating_action_label=&quot;Video Guide&quot; floating_action_url=&quot;https://www.youtube.com/watch?v=tRxGSHL8bI0&quot; floating_action_icon=&quot;ti ti-brand-youtube&quot; background_image=&quot;backgrounds/team.png&quot;][/our-history]\n[work-process style=&quot;1&quot; no=&quot;01&quot; title=&quot;Choose Services. &lt;br&gt; Initial Consultation.&quot; description=&quot;⚡Begin by exploring the range of services we offer.&quot; image=&quot;general/work-process-1.png&quot; quantity=&quot;4&quot; title_1=&quot;Explore our services. Personalized planning&quot; title_2=&quot;Assess your needs and goals.&quot; title_3=&quot;Select services that align with your objectives.&quot; title_4=&quot;Begin your journey with us by choosing the right services.&quot; background_color=&quot;rgb(242, 251, 249)&quot;][/work-process]\n[work-process style=&quot;2&quot; no=&quot;02&quot; title=&quot;Research &amp; Strategy&quot; description=&quot;We analyze market trends, evaluate your financial situation&quot; image=&quot;general/work-process-2.png&quot; quantity=&quot;4&quot; title_1=&quot;Conduct thorough research on market trends&quot; title_2=&quot;Valuate your current financial status and resources&quot; title_3=&quot;Develop a customized strategy tailored&quot; title_4=&quot;Outline clear steps and milestones&quot;][/work-process]\n[work-process style=&quot;1&quot; no=&quot;03&quot; title=&quot;Implementation Plan&quot; description=&quot;We analyze market trends, evaluate your financial situation&quot; image=&quot;general/work-process-3.png&quot; quantity=&quot;4&quot; title_1=&quot;Create a detailed action plan&quot; title_2=&quot;Assign responsibilities and roles for each phase&quot; title_3=&quot;Set realistic timelines and benchmarks for progress&quot; title_4=&quot;Ensure the plan aligns with your financial strategy&quot;][/work-process]\n[work-process style=&quot;2&quot; no=&quot;04&quot; title=&quot;Final Results&quot; description=&quot;We analyze market trends, evaluate your financial situation&quot; image=&quot;general/work-process-4.png&quot; quantity=&quot;4&quot; title_1=&quot;Implement the strategy and monitor progress.&quot; title_2=&quot;Receive updates on achieved outcomes.&quot; title_3=&quot;Ensure results meet your financial goals.&quot; title_4=&quot;Set a path to financial success.&quot;][/work-process]\n[contact-block title=&quot;Providing the &lt;br&gt; Ultimate Experience &lt;br&gt; in Financial Services&quot; contact_icon=&quot;icons/contact.png&quot; contact_title=&quot;Contact Us&quot; contact_label=&quot;+01 (24) 568 900&quot; contact_url=&quot;tel:0124568 900&quot; primary_action_label=&quot;Get 15 Days Free Trial&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-narrow-right&quot; background_image=&quot;general/contact-block.png&quot;][/contact-block]\n[pricing-plans subtitle=&quot;OUR PLANS&quot; title=&quot;Pricing Plans&quot; description=&quot;⚡We&rsquo;ve got a pricing plan that&rsquo;s perfect for you&quot; package_ids=&quot;1,2,3,4&quot;][/pricing-plans]\n[faqs style=&quot;3&quot; title=&quot;Ask us anything&quot; subtitle=&quot;Pricing FAQs&quot; description=&quot;Have any questions? We&#039;re here to assist you.&quot; quantity=&quot;6&quot; category_ids=&quot;1,2,3&quot; limit=&quot;10&quot;][/faqs]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(25, 'Page Integration', '[support-tools title=&quot;Access and integrate with 150+ of your preferred tools&quot; subtitle=&quot;WORKING PROCESS&quot; quantity=&quot;9&quot; name_1=&quot;Framer&quot; logo_1=&quot;partners/icon-1.png&quot; description_1=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_1=&quot;Install now&quot; action_url_1=&quot;https://www.framer.com/&quot; name_2=&quot;Reddit&quot; logo_2=&quot;partners/icon-2.png&quot; description_2=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_2=&quot;Install now&quot; action_url_2=&quot;https://www.reddit.com/&quot; name_3=&quot;Airbnb&quot; logo_3=&quot;partners/icon-3.png&quot; description_3=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_3=&quot;Install now&quot; action_url_3=&quot;https://airbnb.com&quot; name_4=&quot;Lemon Squeezy&quot; logo_4=&quot;partners/icon-4.png&quot; description_4=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_4=&quot;Install now&quot; action_url_4=&quot;https://www.lemonsqueezy.com/&quot; name_5=&quot;Netflix&quot; logo_5=&quot;partners/icon-5.png&quot; description_5=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_5=&quot;Install now&quot; action_url_5=&quot;https://www.netflix.com/&quot; name_6=&quot;Instagram&quot; logo_6=&quot;partners/icon-8.png&quot; description_6=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_6=&quot;Install now&quot; action_url_6=&quot;https://www.instagram.com/&quot; name_7=&quot;Mailchimp&quot; logo_7=&quot;partners/icon-6.png&quot; description_7=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_7=&quot;Install now&quot; action_url_7=&quot;https://mailchimp.com/&quot; name_8=&quot;Paypal&quot; logo_8=&quot;partners/icon-9.png&quot; description_8=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_8=&quot;Install now&quot; action_url_8=&quot;https://www.paypal.com/&quot; name_9=&quot;Example&quot; logo_9=&quot;partners/icon-7.png&quot; description_9=&quot;Separating your work from your home life can improve work-life balance and coworking spaces provide a dedicated place to work&quot; action_label_9=&quot;Install now&quot; action_url_9=&quot;https://google.com&quot;][/support-tools]\n[instruction-steps style=&quot;2&quot; title=&quot;How It Works&quot; subtitle=&quot;working process&quot; description=&quot;Comprehensive Suite of Cutting-Edge IT Services.&quot; quantity=&quot;3&quot; title_1=&quot;Choose Services&quot; description_1=&quot;It is a long established fact that a reader will be distracted by the readable content of a page.&quot; icon_image_1=&quot;icons/icon-16.png&quot; title_2=&quot;Project Analysis&quot; description_2=&quot;It is a long established fact that a reader will be distracted by the readable content of a page.&quot; icon_image_2=&quot;icons/icon-14.png&quot; title_3=&quot;Got Final Result&quot; description_3=&quot;It is a long established fact that a reader will be distracted by the readable content of a page.&quot; icon_image_3=&quot;icons/icon-15.png&quot; bottom_description=&quot;Need more help? Go to our&quot; action_label=&quot;Support Center&quot; action_url=&quot;/contact&quot; background_image=&quot;backgrounds/team.png&quot;][/instruction-steps]\n[testimonials style=&quot;2&quot; title=&quot;&lt;b&gt; +100k users &lt;/b&gt; have loved &lt;br&gt; &lt;b&gt; Infinia Conference &lt;/b&gt; System&quot; description=&quot;Provide your team with top-tier group mentoring programs and exceptional professional benefits.&quot; testimonial_ids=&quot;1,2,3,4,5,6&quot; primary_action_label=&quot;View More Testimonials&quot; primary_action_icon=&quot;ti ti-arrow-up-right&quot; primary_action_url=&quot;/about-us&quot;][/testimonials]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(26, 'Book a demo', '[contact-form display_fields=&quot;phone,email,subject,address&quot; mandatory_fields=&quot;email&quot; style=&quot;3&quot; form_title=&quot;Leave a message&quot; form_description=&quot;Need more help?&quot; title=&quot;Contact Our Team&quot; subtitle=&quot;Get in Tourch&quot; description=&quot;We are a comprehensive service agency with specialists prepared to assist. &lt;br&gt; We will contact you within 24 hours.&quot; quantity=&quot;3&quot; title_1=&quot;Chat with us&quot; description_1=&quot;The support team is always available 24/7&quot; button_label_1_1=&quot;Chat via Whatsapp&quot; button_url_1_1=&quot;https://www.whatsapp.com&quot; button_icon_1_1=&quot;ti ti-brand-whatsapp&quot; button_label_2_1=&quot;Chat via Viber&quot; button_url_2_1=&quot;https://www.viber.com/&quot; button_icon_2_1=&quot;ti ti-phone-call&quot; button_label_3_1=&quot;Chat via Messager&quot; button_url_3_1=&quot;https://www.facebook.com/&quot; button_icon_3_1=&quot;ti ti-brand-messenger&quot; title_2=&quot;Send us an email&quot; description_2=&quot;Our team will respond promptly to your inquiries&quot; button_label_1_2=&quot;support@infinia.com&quot; button_url_1_2=&quot;mailto:support@infinia.com&quot; button_icon_1_2=&quot;ti ti-mail&quot; button_label_2_2=&quot;sale@infinia.com&quot; button_url_2_2=&quot;mailto:sale@infinia.com&quot; button_icon_2_2=&quot;ti ti-mail&quot; title_3=&quot;For more inquiry&quot; description_3=&quot;Reach out for immediate assistance&quot; button_label_1_3=&quot;+01 (24) 568 900&quot; button_url_1_3=&quot;tell:0124568900&quot; button_icon_1_3=&quot;ti ti-phone-call&quot;][/contact-form]\n[site-statistics title=&quot;See why we are &lt;br&gt; trusted the world over&quot; quantity=&quot;4&quot; title_1=&quot;New accounts&quot; data_1=&quot;496&quot; unit_1=&quot;k&quot; title_2=&quot;Finished projects&quot; data_2=&quot;92&quot; unit_2=&quot;+&quot; title_3=&quot;Skilled experts&quot; data_3=&quot;756&quot; unit_3=&quot;+&quot; title_4=&quot;Media posts&quot; data_4=&quot;25&quot; unit_4=&quot;k&quot;][/site-statistics]\n[pricing-plans style=&quot;3&quot; title=&quot;&lt;b&gt;Straightforward&lt;/b&gt;  Pricing &lt;br&gt; Custom &lt;b&gt;Integrations&lt;/b&gt;&quot; subtitle=&quot;Our Pricing&quot; description=&quot;Meet the talented and passionate team members who drive our company forward every day.&quot; quantity=&quot;6&quot; package_ids=&quot;1,2,3&quot; background_images=&quot;backgrounds/bg-line-bottom.png&quot; primary_action_label=&quot;Get Free Quote&quot; primary_action_url=&quot;/contact&quot; primary_action_icon=&quot;ti ti-arrow-narrow-right&quot; secondary_action_label=&quot;How We Work&quot; secondary_action_url=&quot;/contact&quot;][/pricing-plans]', 1, NULL, 'full-width', NULL, 'published', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(27, 'About Us', '<h3 class=\"ds-3 my-3\" style=\"background-color:rgb(255,255,255);color:rgb(17,24,39);font-family:\'Satoshi-Variable\', sans-serif;font-size:38px;font-style:normal;line-height:1.2;margin-bottom:1rem;margin-top:1rem;text-align:center;word-spacing:0px;\">About Cable tech</h3><p style=\"text-align:center;\"><span style=\"font-size:20px;\"><strong>We are Your Trusted Cable Solutions Partner</strong></span><br><span style=\"font-size:20px;\"><strong>WITH 20+ YEARS OF EXCELLENCE</strong></span></p><p style=\"text-align:justify;\"><br>PT Cable Tech, a subsidiary of Tsen Yeou Spring Co., Ltd., has been a leader in manufacturing automotive control cables since expanding to Indonesia in <strong>2002</strong>. With <strong>ISO 14001:2015 Certification</strong> and decades of expertise, we are committed to delivering high-quality control cable solutions for various applications, ensuring safety and reliability in every product.<br>A company is known by its name, but a brand is known by its clients. With a strong presence in Indonesia and global markets, PT Cable Tech serves leading automotive manufacturers and industrial sectors. Our dedicated network ensures efficient service, reliable delivery, and customer satisfaction.<br>To meet growing demand, our second plant in Indonesia will commence operations in 2025, strengthening our production capacity. Today, we operate facilities in <strong>China, Vietnam, and Indonesia</strong>, continuously expanding our reach to provide world-class cable solutions.</p><p style=\"text-align:justify;\">At PT Cable Tech, innovation, safety and precision drive our mission to keep you moving, on and off the road.</p><shortcode>[projects style=\"1\" subtitle=\"Global Network\" project_ids=\"12,13,14,15\" quantity=\"6\" limit=\"5\" enable_lazy_loading=\"no\"][/projects]</shortcode><p>&nbsp;</p>', 1, NULL, 'default', '', 'published', '2025-02-28 01:57:16', '2025-06-17 01:56:11'),
(28, 'Company', NULL, 1, NULL, 'default', '', 'published', '2025-02-28 01:57:29', '2025-02-28 05:51:46');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(30, 'Products', '<shortcode>[services style=\"5\" title=\"High-Performance Reliable Control Cables\" subtitle=\"We manufacture and supply a wide range of reliable control cables.\" service_ids=\"10,11,12\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode><shortcode>[site-statistics style=\"1\" title=\"Driving Innovation &amp; Excellence\" quantity=\"3,3\" title_1=\"Years of Experience\" data_1=\"23\" unit_1=\"+\" title_2=\"Units Produced\" data_2=\"100\" unit_2=\"+\" title_3=\"Satisfied Clients\" data_3=\"15\" unit_3=\"+\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/site-statistics]</shortcode>', 1, NULL, 'full-width', '', 'published', '2025-02-28 01:57:55', '2025-06-09 02:54:14'),
(31, 'News', '<shortcode>[blog-posts style=\"1\" paginate=\"10\" category_ids=\"15\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/blog-posts]</shortcode>', 1, NULL, 'default', '', 'published', '2025-02-28 01:58:10', '2025-06-16 06:56:20'),
(32, 'Contact Us', '<shortcode>[features style=\"8\" title=\"Contact Us\" description=\"We are ready to assist you with our top-quality products and services. Contact us now through the available contact information.\" image=\"icons/kontak-removebg-preview.png\" quantity=\"2,2\" title_1=\"Email\" description_1=\"Email cabletech@cbn.net.id\" icon_1=\"ti ti-mail\" title_2=\"Call Us\" description_2=\"Phone (+62) 21 89902129&lt;br&gt;Fax (+62) 21 89902131\" icon_2=\"ti ti-phone-call\" background_color=\"transparent\"][/features]</shortcode><shortcode>[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" form_title=\"Get in touch\" form_description=\"Do you want to know more or contact our marketing department?\" title=\"Need control cable solutions? Contact PT Cable Tech today.\" subtitle=\"Contact Us\" description=\"Please let us know if you have a question, want to leave a comment, or would like further information about cable tech.\" quantity=\"4\" title_1=\"High-Quality Control Cables\" description_1=\"Discover durable and reliable control cables designed for various applications, ensuring optimal performance and safety.\" icon_1=\"ti ti-search\" title_2=\"Innovative Manufacturing Excellence\" description_2=\"With advanced technology and strict quality control, PT Cable Tech delivers precision-engineered cables for diverse industries.\" icon_2=\"ti ti-binoculars\" title_3=\"Trusted by Leading Industries\" description_3=\"Serving automotive, medical, and industrial sectors, PT Cable Tech is committed to providing top-tier cable solutions worldwide.\" icon_3=\"ti ti-trophy\" background_color=\"rgb(74, 134, 232)\"][/contact-form]</shortcode><shortcode>[google-map height=\"650\"]PT cable tech Komplek Delta Silicon, Blok L10 No 10,, JL. Meranti 3, Sukaresmi, Cikarang Selatan, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530[/google-map]</shortcode>', 1, NULL, 'full-width', '', 'published', '2025-02-28 01:58:21', '2025-07-28 06:27:09'),
(33, 'Certifications', NULL, 1, NULL, 'default', '', 'published', '2025-03-07 09:00:53', '2025-03-25 07:47:38'),
(35, 'International Certifications', '<h3 class=\"ds-3 my-3\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(17, 24, 39);font-family:Satoshi-Variable, sans-serif;font-size:38px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.2;margin-bottom:1rem;margin-top:1rem;orphans:2;text-align:center;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong>International Certifications</strong></h3><shortcode>[blog-posts style=\"1\" category_ids=\"17\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/blog-posts]</shortcode>', 1, NULL, 'default', '', 'published', '2025-03-25 07:50:20', '2025-06-13 03:57:20'),
(36, 'Customers Appreciation', '<h3 class=\"ds-3 my-3\" style=\"background-color:rgb(255,255,255);color:rgb(17,24,39);font-family:\'Satoshi-Variable\', sans-serif;font-size:38px;font-style:normal;line-height:1.2;margin-bottom:1rem;margin-top:1rem;text-align:center;word-spacing:0px;\"><strong style=\"color:rgb(31,41,55);font-weight:bolder;\">Customers Appreciation</strong></h3><shortcode>[blog-posts style=\"1\" category_ids=\"16\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/blog-posts]</shortcode>', 1, NULL, 'default', '', 'published', '2025-03-25 07:50:43', '2025-06-16 07:16:45'),
(37, 'Cable Front Door Lock', NULL, 1, 'products/cable-front-door-look.png', 'default', '', 'published', '2025-07-28 06:37:36', '2025-07-28 06:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('id_ID', 37, 'Cable Front Door Lock', '', NULL),
('ja', 37, 'Cable Front Door Lock', '', NULL),
('zh_TW', 37, 'Cable Front Door Lock', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_fields`
--

CREATE TABLE `pf_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(191) NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(60) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_fields_translations`
--

CREATE TABLE `pf_custom_fields_translations` (
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `pf_custom_fields_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_field_options`
--

CREATE TABLE `pf_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_field_options_translations`
--

CREATE TABLE `pf_custom_field_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `pf_custom_field_options_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_packages`
--

CREATE TABLE `pf_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` varchar(191) NOT NULL DEFAULT '0',
  `annual_price` varchar(191) DEFAULT NULL,
  `duration` varchar(191) NOT NULL DEFAULT 'monthly',
  `features` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_packages`
--

INSERT INTO `pf_packages` (`id`, `name`, `description`, `content`, `price`, `annual_price`, `duration`, `features`, `status`, `is_popular`, `action_label`, `action_url`, `created_at`, `updated_at`, `order`) VALUES
(1, 'Trial Plan', 'Protect for testing', '', '0', NULL, 'monthly', '+Single Team Member\n+Over 1200 UI Blocks\n+10 GB of Cloud Storage\n-Personal Email Account\n-Priority Support', 'published', 0, 'Get Started', '/contact', '2025-02-25 19:08:39', '2025-02-25 19:08:39', 0),
(2, 'Standard', 'Great for large teams', '', '$49', '$441', 'monthly', '+05 Team Member\n+All multimedia channels\n+All advanced CRM features\n+Up to 15,000 contacts\n+24/7 Support (Email, Chat)', 'published', 1, 'Get Started', '/contact', '2025-02-25 19:08:39', '2025-02-25 19:08:39', 0),
(3, 'Business', 'Advanced projects', '', '$69', '$621', 'monthly', '+50 Team Member\n+Over 1500 UI Blocks\n+100 GB of Cloud Storage\n+Personal Email Account\n+Priority Support', 'published', 0, 'Get Started', '/contact', '2025-02-25 19:08:39', '2025-02-25 19:08:39', 0),
(4, 'Enterprise', 'For big companies', '', '$99', '$891', 'monthly', '+Customized features\n+Scalability & security\n+Account manager\n+Unlimited chat history\n+50 Integrations', 'published', 0, 'Get Started', '/contact', '2025-02-25 19:08:39', '2025-02-25 19:08:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pf_packages_translations`
--

CREATE TABLE `pf_packages_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_packages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `annual_price` varchar(191) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_projects`
--

CREATE TABLE `pf_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_projects`
--

INSERT INTO `pf_projects` (`id`, `name`, `description`, `content`, `place`, `client`, `is_featured`, `image`, `images`, `views`, `status`, `created_at`, `updated_at`, `author`, `start_date`, `order`) VALUES
(8, 'Automotive', 'Our automotive control cables ensure precision, durability, and reliability for throttle, brake, clutch, and transmission systems. Made from high-quality materials, they deliver smooth performance for passenger and commercial vehicles.', '<shortcode>[services style=\"6\" title=\"Our Automotive Control Cable Solutions\" description=\"Reliable and durable OEM-grade control cables designed for smooth operation and enhanced safety in 4W vehicles.\" service_ids=\"8,9\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode>', NULL, NULL, 1, 'sliders/image-fx-2.jpg', NULL, 2096, 'published', '2025-02-25 19:08:39', '2025-03-10 07:21:20', NULL, NULL, 0),
(9, 'Motorcycle', 'Our motorcycle control cables are crafted for superior performance, durability, and safety. Designed for throttle, clutch, brake, and speedometer applications, they ensure smooth and responsive operation. Made from high-quality materials, our cables meet industry standards to deliver reliable performance for various motorcycle models.', '<shortcode>[services style=\"1\" service_ids=\"5,7\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode>', NULL, NULL, 0, 'sliders/image-fx-1.jpg', NULL, 0, 'published', '2025-03-05 03:50:00', '2025-03-05 08:22:24', NULL, NULL, 0),
(10, 'Industrial & Custom Solutions', 'We provide high-quality control cables tailored for industrial applications and custom solutions. Designed for precision and durability, our cables are used in machinery, medical equipment, and specialized systems. With flexible customization options, we ensure optimal performance to meet unique industry requirements.', '<shortcode>[services style=\"3\" service_ids=\"5,7\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode>', NULL, NULL, 0, 'sliders/automotive-control-cable.jpg', NULL, 0, 'published', '2025-03-05 03:51:55', '2025-03-05 08:21:20', NULL, NULL, 0),
(12, 'Tsen Yeou Spring Co., Ltd.', 'Founded in 1978 in Taiwan, Tsen Yeou Spring Co., Ltd. produces high-quality control cables and springs for major clients like Kymco and CK&K.', NULL, NULL, NULL, 0, 'branch/tsen-yeou-spring-co-ltd-1.jpg', NULL, 0, 'published', '2025-03-07 01:33:59', '2025-03-07 02:47:10', NULL, NULL, 0),
(13, 'Chang Zhou Tsen You', 'Established in 2005 in China, Chang Zhou Tsen You manufactures control cables and springs for major clients like Kymco and CK&K.', NULL, NULL, NULL, 0, 'branch/chang-zhou-tsen-you-1.jpg', NULL, 0, 'published', '2025-03-07 01:39:38', '2025-03-07 02:47:27', NULL, NULL, 0),
(14, 'Kakosi Co., Ltd.', 'Founded in 2005 in Vietnam, Kakosi Co., Ltd. specializes in manufacturing control cables for its main customer, Honda.', NULL, NULL, NULL, 0, 'branch/kakosi-coltd-1.jpg', NULL, 0, 'published', '2025-03-07 01:41:00', '2025-03-07 02:47:50', NULL, NULL, 0),
(15, 'PT. Cable Tech', 'Established in 2002 in Indonesia, PT. Cable Tech manufactures control cables for 2W and 4W vehicles, serving major clients like Yamaha, Suzuki, Kawasaki, Toyota, Daihatsu, and Mitsubishi.', NULL, NULL, NULL, 0, 'branch/cable-tech-1.jpg', NULL, 0, 'published', '2025-03-07 01:42:41', '2025-03-07 02:48:00', NULL, NULL, 0),
(17, 'International Certifications', NULL, NULL, NULL, NULL, 0, 'certification/iso2.jpg', NULL, 0, 'published', '2025-03-07 07:55:39', '2025-03-07 09:24:24', NULL, NULL, 0),
(18, 'Our Achievement', NULL, NULL, NULL, NULL, 0, 'certification/acv-1.jpg', NULL, 0, 'published', '2025-03-07 09:02:06', '2025-03-07 09:06:40', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pf_projects_translations`
--

CREATE TABLE `pf_projects_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_projects_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_quotes`
--

CREATE TABLE `pf_quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `message` text NOT NULL,
  `fields` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_services`
--

CREATE TABLE `pf_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_services`
--

INSERT INTO `pf_services` (`id`, `category_id`, `name`, `description`, `content`, `is_featured`, `image`, `images`, `views`, `status`, `created_at`, `updated_at`, `order`) VALUES
(7, 2, 'Seatlock Cable', 'The seatlock cable is a seat locking cable used in motorcycles to connect the seat release lever or key mechanism to the seat latch. When the lever is pulled or the key is turned, the cable pulls the latch mechanism to unlock and open the seat.', '<h4 class=\"mb-3\">Innovative <strong>Motorcycle </strong>Security Solutions</h4><p class=\"mb-0\">In the fast-evolving automotive industry, security and convenience are essential. At <strong>PT Cable Tech</strong>, we recognize the importance of advanced locking mechanisms for vehicle safety. Our premium product, the<strong> Seatlock Cable</strong>, is designed to provide smooth and secure seat locking, ensuring reliable performance and ease of use for riders.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \\n Smooth &amp; Secure Locking \\n Mechanism OEM-Grade Manufacturing \\n Compatibility with 2W Vehicles \\n Easy &amp; Reliable Operation \\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/wire-seat-lock-mrcly1-1.png', NULL, 0, 'published', '2025-03-04 05:48:48', '2025-12-10 03:19:11', 0),
(8, 1, 'Cable Assy Parking Front', 'A high-quality parking brake cable designed for 4W vehicles, ensuring secure and stable braking. Built with OEM-grade materials, it offers durability, easy installation, and reliable performance for enhanced vehicle safety.', '<h3><strong>Innovative Automotive Security Solutions</strong></h3><p>The Cable <strong>Assy Parking Front</strong> is a front parking brake cable assembly used to connect the parking brake lever to the front wheel braking system. The main function is to lock the front wheel when the parking brake is engaged, helping to keep the vehicle stationary and secure, especially when parked on an incline or for an extended period.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \\n Stable Parking Brake Mechanism \\n OEM-Grade Manufacturing \\n Compatibility with 4W Vehicles \\n Easy &amp; Reliable Operation \\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode><p>&nbsp;</p><p>&nbsp;</p>', 0, 'products/cable-assy-parking-front-atmv-5.png', NULL, 0, 'published', '2025-03-10 00:50:17', '2025-12-10 03:07:54', 0),
(9, 1, 'Throttle Cable', 'Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.', '<p><span><strong>Innovative Motorcycle Security Solutions</strong></span></p><p><span><strong>Throttle cable</strong> is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\r\n\\n Compatibility with 2W Vehicles\"][/content-checklist]</shortcode>', 0, 'products/throttle-cable-mrcly-1.png', NULL, 0, 'published', '2025-03-10 02:39:23', '2025-12-10 03:21:28', 0),
(10, 1, 'Automotive', 'Our automotive control cables ensure precise, durable, and reliable performance.', '<shortcode>[services style=\"1\" title=\"Our Automotive Control Cable Solutions\" service_ids=\"8,15,16,20,25,26\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode>', 0, NULL, NULL, 0, 'published', '2025-03-10 04:50:48', '2025-07-28 06:41:46', 0),
(11, 2, 'Motorcycle', 'Our control cables ensure smooth, durable, and safe performance for motorcycles, built to industry standards.', '<shortcode>[services style=\"1\" title=\"Our Motorcycle Control Cable Solutions\" service_ids=\"7,9,17,18,19,21\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode>', 0, NULL, NULL, 0, 'published', '2025-03-10 06:33:23', '2025-07-08 04:55:39', 0),
(12, 3, 'Industrial & Custom Solutions', 'We provide high-quality, customizable control cables for industrial and specialized applications.', '<shortcode>[services style=\"1\" title=\"Our Industrial &amp; Custom Solutions Control Cable Solutions\" background_color=\"transparent\" enable_lazy_loading=\"no\"][/services]</shortcode>', 0, NULL, NULL, 0, 'published', '2025-03-10 06:37:25', '2025-07-08 00:43:35', 0),
(13, 5, 'International Certifications', NULL, '<shortcode>[gallery limit=\"5\" gallery_ids=\"9\" enable_lazy_loading=\"no\"][/gallery]</shortcode>', 0, 'icons/icon-15-1.png', NULL, 0, 'published', '2025-03-13 05:48:56', '2025-03-18 08:31:57', 0),
(15, 1, 'Cable Comp Hood Latch Release', 'The Cable Comp Hood Latch Release is a complete cable assembly used to release the hood latch from inside the vehicle. It connects the hood release lever in the cabin to the latch mechanism under the hood. When the lever is pulled, the cable pulls the latch to unlock and open the hood.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>The <strong>Cable Comp Hood Latch Release</strong> is a complete cable assembly used to <strong>release the hood latch</strong> from inside the vehicle. It connects the hood release lever in the cabin to the latch mechanism under the hood. When the lever is pulled, the cable pulls the latch to unlock and open the hood.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \\n Smooth &amp; Secure Opening \\n Mechanism OEM-Grade Manufacturing \\n Compatibility with 4W Vehicles \\n Easy &amp; Reliable Operation \\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/cable-comphood-latch-release-atmv1-1.png', NULL, 0, 'published', '2025-06-09 03:05:05', '2025-12-10 03:15:07', 0),
(16, 1, 'Cable Comp Fuel Lid Opener', 'A high-performance fuel lid Opener designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A high-performance<strong> Fuel lid Opener</strong> designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening \r\n Mechanism OEM Grade \r\n\\n Manufacturing Compatibility with 4W \r\n Vehicles Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/cable-compfuel-lid-opener-atmv1-1.png', NULL, 0, 'published', '2025-06-09 03:06:43', '2025-12-10 03:11:53', 0),
(17, 2, 'Wire Pull', 'A cable wire pull is a pull-type cable used to transmit motion from one part of a machine to another, commonly found in motorcycles, bicycles, or mechanical equipment.', '<p><span><strong>Innovative </strong></span><strong>Motorcycle</strong><span><strong> Security Solutions</strong></span></p><p>A cable<strong> Wire pull</strong> is a pull-type cable used to transmit motion from one part of a machine to another, commonly found in motorcycles, bicycles, or mechanical equipment. It works by pulling or pushing a component such as a throttle, brake, or clutch when a lever or handle is operated. The cable is usually made of strong, flexible steel wire covered with a protective outer casing.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \\n Smooth &amp; Secure Opening \\n Mechanism OEM Grade Manufacturing \\n Easy &amp; Reliable Operation \\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/wirepull-mrcly1-1.png', NULL, 0, 'published', '2025-06-09 03:08:24', '2025-12-10 02:24:20', 0),
(18, 2, 'Cable Clutch', 'A clutch cable is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.', '<p><span><strong>Innovative Motorcycle Security Solutions</strong></span></p><p>A <strong>Clutch cable</strong> is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n\\n Smooth &amp; Secure Opening \r\n\\n Mechanism OEM-Grade Manufacturing &nbsp;\r\n\\n Compatibility with 2W Vehicles &nbsp; \r\n\\n Easy &amp; Reliable Operation \r\n\\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/cable-clutch-mrcly-1.png', NULL, 0, 'published', '2025-06-09 06:07:38', '2025-12-10 03:22:30', 0),
(19, 2, 'Speedo cable Assy', 'The Speedo Cable Assy (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.', '<p><span><strong>Innovative </strong></span><strong>Motorcycle</strong><span><strong> Security Solutions</strong></span></p><p>The <strong>Speedo Cable Assy</strong> (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Safe Opening \r\n Mechanism OEM Grade Manufacturing\r\n\\n Compatibility with 2W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/speedo-cable-assy-mrcly1-6.png', NULL, 0, 'published', '2025-06-09 06:12:34', '2025-12-10 03:20:24', 0),
(20, 1, 'Cable Window Regulator', 'A cable window regulator is a type of window mechanism used in vehicles that utilizes steel cables to raise and lower the window glass. This system is commonly used in modern vehicles due to its lightweight design, cost-effectiveness, and efficiency.', '<p>A cable <strong>Window regulator</strong> is a type of window mechanism used in vehicles that utilizes steel cables to raise and lower the window glass. This system is commonly used in modern vehicles due to its lightweight design, cost-effectiveness, and efficiency.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \\n Smooth &amp; Safe Opening Mechanism \\n OEM Grade Manufacturing \\n Compatibility with 4W Vehicles \\n Easy &amp; Reliable Operation \\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/window-regulaltor-1.png', NULL, 0, 'published', '2025-06-17 03:57:34', '2025-12-10 02:24:55', 0),
(21, 2, 'Wire Brake', 'Cable wire brake is a braking system that uses a steel cable to engage the brake mechanism. It is commonly used on bicycles, motorcycles, and car handbrakes. When the lever is pulled, the cable activates the brakes to stop the vehicle.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><strong>Cable wire brake</strong> is a braking system that uses a steel cable to engage the brake mechanism. It is commonly used on bicycles, motorcycles, and car handbrakes. When the lever is pulled, the cable activates the brakes to stop the vehicle. This system is simple, cost-effective, and easy to maintain, but the cable can wear out or become loose over time.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Safe Opening Mechanism \r\n\\n Compatibility with 2W Vehicles\r\n OEM Grade Manufacturing \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/wire-brake-4.png', NULL, 0, 'published', '2025-06-17 03:58:02', '2025-12-10 03:25:12', 0),
(22, 1, 'Cable Assy Hood Lock Control', NULL, NULL, 0, NULL, NULL, 0, 'published', '2025-06-17 03:58:25', '2025-07-08 03:16:05', 0),
(23, 1, 'Parking Brake Cable', NULL, NULL, 0, NULL, NULL, 0, 'published', '2025-06-17 03:58:51', '2025-07-08 03:14:23', 0),
(24, 1, 'Latch Cable', 'A door latch cable is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong>Latch Cable</strong> is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open. This system is commonly used in modern vehicles for its flexibility and efficiency.<br>&nbsp;</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength Smooth &amp; Secure Opening Mechanism OEM-Grade Manufacturing Compatibility with 4W Vehicles Easy &amp; Reliable Operation Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/cable-comphood-latch-release-atmv1-1.png', NULL, 0, 'published', '2025-07-08 06:13:08', '2025-12-10 02:19:52', 0),
(25, 1, 'Cable Tip Up RR Cush', 'A Cable Tip Up RR Cush is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong>Cable Tip Up RR Cush</strong> is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward. Its main purpose is to provide easier access to the rear passenger seats.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n\\n Smooth &amp; Secure Opening \r\n\\n Mechanism OEM Grade \r\n\\n Manufacturing Compatibility with 4W \r\n\\n Vehicles Easy &amp; Reliable Operation \r\n\\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/tipup-sheet-cable.png', NULL, 0, 'published', '2025-07-08 08:33:47', '2025-12-10 03:13:20', 0),
(26, 1, 'Cable Front Door Lock', 'A front door lock cable is a cable used to connect the front door locking system of a vehicle or building to its electronic or mechanical control system.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A<strong> front door lock cable</strong> is a cable used to connect the front door locking system of a vehicle or building to its electronic or mechanical control system. This cable functions to transmit signals or electrical power required to operate the door lock automatically, both for locking and unlocking the door.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \\n Smooth &amp; Secure Opening Mechanism \\n OEM-Grade Manufacturing \\n Compatibility with 4W Vehicles \\n Easy &amp; Reliable Operation \\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>', 0, 'products/cable-front-door-look-1.png', NULL, 0, 'published', '2025-07-28 06:40:56', '2025-12-10 02:18:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pf_services_translations`
--

CREATE TABLE `pf_services_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_services_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_services_translations`
--

INSERT INTO `pf_services_translations` (`lang_code`, `pf_services_id`, `name`, `description`, `content`) VALUES
('id_ID', 15, 'Cable Assy Hood Lock Control', 'A high-performance Cable Assy Hood Lock control designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('id_ID', 16, 'Cable Comp Fuel Lid Opener', 'A high-performance fuel lid Opener designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('id_ID', 17, 'Wire Pull', NULL, '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('id_ID', 18, 'Cable Clutch', 'A clutch cable is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong>C</strong><strong data-start=\"426\" data-end=\"442\">lutch cable</strong> is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('id_ID', 19, 'Speedo cable Assy', 'The Speedo Cable Assy (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>The <strong data-start=\"423\" data-end=\"444\">Speedo Cable Assy</strong> (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('id_ID', 20, 'Window Reguator', NULL, NULL),
('id_ID', 21, 'Door Look', NULL, NULL),
('id_ID', 22, 'Sheet Cable', NULL, NULL),
('id_ID', 23, 'Brake Cable', NULL, NULL),
('id_ID', 24, 'Door Latch Cable', 'A door latch cable is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong data-start=\"458\" data-end=\"478\">door latch cable</strong> is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open. This system is commonly used in modern vehicles for its flexibility and efficiency.<br>&nbsp;</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening \r\n Mechanism OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('id_ID', 25, 'Tip-up Sheet Cable', 'A tip-up cable is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward.', '<p>A <strong>T</strong><strong data-start=\"589\" data-end=\"605\">ip-up Sheet Cable</strong> is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward. Its main purpose is to provide easier access to the rear passenger seats.</p>'),
('id_ID', 26, 'Cable Front Door Lock', NULL, '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A<strong> front door lock cable</strong> is a cable used to connect the front door locking system of a vehicle or building to its electronic or mechanical control system. This cable functions to transmit signals or electrical power required to operate the door lock automatically, both for locking and unlocking the door.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n /n Smooth &amp; Secure Opening Mechanism \r\n /n OEM-Grade Manufacturing \r\n /n Compatibility with 4W Vehicles \r\n /n Easy &amp; Reliable Operation \r\n /n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('ja', 15, 'Cable Assy Hood Lock Control', 'A high-performance Cable Assy Hood Lock control designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('ja', 16, 'Cable Comp Fuel Lid Opener', 'A high-performance fuel lid Opener designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('ja', 17, 'Wire Pull', NULL, '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('ja', 18, 'Cable Clutch', 'A clutch cable is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong>C</strong><strong data-start=\"426\" data-end=\"442\">lutch cable</strong> is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('ja', 19, 'Speedo cable Assy', 'The Speedo Cable Assy (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>The <strong data-start=\"423\" data-end=\"444\">Speedo Cable Assy</strong> (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('ja', 20, 'Window Reguator', NULL, NULL),
('ja', 21, 'Door Look', NULL, NULL),
('ja', 22, 'Sheet Cable', NULL, NULL),
('ja', 23, 'Brake Cable', NULL, NULL),
('ja', 24, 'Door Latch Cable', 'A door latch cable is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong data-start=\"458\" data-end=\"478\">door latch cable</strong> is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open. This system is commonly used in modern vehicles for its flexibility and efficiency.<br>&nbsp;</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening \r\n Mechanism OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('ja', 25, 'Tip-up Sheet Cable', 'A tip-up cable is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward.', '<p>A <strong>T</strong><strong data-start=\"589\" data-end=\"605\">ip-up Sheet Cable</strong> is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward. Its main purpose is to provide easier access to the rear passenger seats.</p>'),
('ja', 26, 'Cable Front Door Lock', NULL, '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A<strong> front door lock cable</strong> is a cable used to connect the front door locking system of a vehicle or building to its electronic or mechanical control system. This cable functions to transmit signals or electrical power required to operate the door lock automatically, both for locking and unlocking the door.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n /n Smooth &amp; Secure Opening Mechanism \r\n /n OEM-Grade Manufacturing \r\n /n Compatibility with 4W Vehicles \r\n /n Easy &amp; Reliable Operation \r\n /n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('zh_TW', 15, 'Cable Assy Hood Lock Control', 'A high-performance Cable Assy Hood Lock control designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('zh_TW', 16, 'Cable Comp Fuel Lid Opener', 'A high-performance fuel lid Opener designed for 4W vehicles, ensuring smooth and secure operation. Manufactured with OEM-grade materials, it offers durability, easy installation, and reliable functionality for enhanced driver convenience.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('zh_TW', 17, 'Wire Pull', NULL, '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p><span>Throttle cable is a gas control cable on a motorcycle that connects the gas handle on the handlebars to the carburetor or throttle body. When the gas handle is turned, this cable pulls the gas valve open, so that air and fuel enter the engine and the motorbike can go faster. This cable plays an important role in regulating the speed of the motorbike according to the driver\'s wishes.</span></p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('zh_TW', 18, 'Cable Clutch', 'A clutch cable is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong>C</strong><strong data-start=\"426\" data-end=\"442\">lutch cable</strong> is a component used in motorcycles or manual transmission vehicles to connect the clutch lever on the handlebar to the clutch mechanism in the engine. When the rider pulls the clutch lever, the cable engages the clutch system, temporarily disconnecting the engine from the transmission.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('zh_TW', 19, 'Speedo cable Assy', 'The Speedo Cable Assy (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>The <strong data-start=\"423\" data-end=\"444\">Speedo Cable Assy</strong> (Speedometer Cable Assembly) is a complete set of cables used to connect the vehicle’s wheel or transmission to the speedometer. It transmits rotational movement from the wheel or gearbox to the speedometer, allowing the vehicle\'s speed to be displayed accurately on the dashboard.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening Mechanism \r\n OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('zh_TW', 20, 'Window Reguator', NULL, NULL),
('zh_TW', 21, 'Door Look', NULL, NULL),
('zh_TW', 22, 'Sheet Cable', NULL, NULL),
('zh_TW', 23, 'Brake Cable', NULL, NULL),
('zh_TW', 24, 'Door Latch Cable', 'A door latch cable is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open.', '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A <strong data-start=\"458\" data-end=\"478\">door latch cable</strong> is a cable that connects the door handle to the latch mechanism inside a vehicle door. When the handle is pulled, the cable activates the latch, allowing the door to open. This system is commonly used in modern vehicles for its flexibility and efficiency.<br>&nbsp;</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n Smooth &amp; Secure Opening \r\n Mechanism OEM-Grade Manufacturing \r\n Compatibility with 4W Vehicles \r\n Easy &amp; Reliable Operation \r\n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>'),
('zh_TW', 25, 'Tip-up Sheet Cable', 'A tip-up cable is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward.', '<p>A <strong>T</strong><strong data-start=\"589\" data-end=\"605\">ip-up Sheet Cable</strong> is a flexible steel cable used to connect the seat release lever to the seatback locking mechanism, typically found in front seats of two-door vehicles. When the lever is pulled, the cable activates the latch mechanism, allowing the seatback to tilt forward. Its main purpose is to provide easier access to the rear passenger seats.</p>'),
('zh_TW', 26, 'Cable Front Door Lock', NULL, '<p><span><strong>Innovative Automotive Security Solutions</strong></span></p><p>A<strong> front door lock cable</strong> is a cable used to connect the front door locking system of a vehicle or building to its electronic or mechanical control system. This cable functions to transmit signals or electrical power required to operate the door lock automatically, both for locking and unlocking the door.</p><shortcode>[content-checklist checklist=\"High Durability &amp; Strength \r\n /n Smooth &amp; Secure Opening Mechanism \r\n /n OEM-Grade Manufacturing \r\n /n Compatibility with 4W Vehicles \r\n /n Easy &amp; Reliable Operation \r\n /n Simple Installation &amp; Maintenance\"][/content-checklist]</shortcode>');

-- --------------------------------------------------------

--
-- Table structure for table `pf_service_categories`
--

CREATE TABLE `pf_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_service_categories`
--

INSERT INTO `pf_service_categories` (`id`, `parent_id`, `name`, `description`, `image`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Automotive', 'We provide high-quality control cables for four-wheeled vehicles, including passenger cars, trucks, and commercial vehicles. Our products ensure optimal performance, durability, and precision in every automotive application.', NULL, 0, 'published', '2025-02-25 19:08:39', '2025-03-04 01:00:15'),
(2, NULL, 'Motorcycle', 'Reliable and high-performance control cables for two-wheeled vehicles. From scooters to sport bikes, our cables are designed for durability, safety, and smooth operation.', NULL, 0, 'published', '2025-02-25 19:08:39', '2025-03-04 01:00:57'),
(3, NULL, 'Industrial & Custom Solutions', 'We offer customized control cable solutions for various industries, including household appliances, agriculture, medical, and manufacturing. Our flexible designs meet specific customer needs for optimal performance in diverse applications.', NULL, 0, 'published', '2025-02-25 19:08:39', '2025-03-04 01:01:25'),
(5, NULL, 'Certifications', NULL, NULL, 0, 'published', '2025-03-13 05:48:41', '2025-03-13 05:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `pf_service_categories_translations`
--

CREATE TABLE `pf_service_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_service_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(17, 'Together in Harmony: Iftar Gathering of the PT Cable Tech Family', 'PT Cable Tech held an iftar gathering on March 18, 2025, with the theme “Together in Harmony.” The event served as a special moment to strengthen the bond between employees and management. It featured opening remarks, an inspiring religious talk (tausiyah), and a warm, family-like atmosphere during the shared iftar meal.', '<p><strong>Together in Harmony: Iftar Gathering of the PT Cable Tech Family</strong></p><p>Cikarang, March 18, 2025 – PT Cable Tech once again held its annual iftar gathering as a special moment to strengthen the bond between employees and management. The event, hosted in the PT Cable Tech cafeteria, was attended by the board of directors, staff, and employees from various divisions.</p><p>This year’s iftar gathering carried the theme “Together in Harmony,” aimed at fostering a sense of unity in the workplace and reinforcing a collective spirit in achieving the company’s goals. From the late afternoon, employees began to gather and enjoy the warm, family-like atmosphere.</p><p><strong>A Series of Meaningful Moments</strong></p><p>The event opened with a speech from the President Director of PT Cable Tech, expressing appreciation for the dedication and hard work of all employees. In his remarks, he emphasized the importance of togetherness and teamwork in building a stronger future for the company.</p><p>A short religious sermon (tausiyah) followed, offering inspiration and motivation to all attendees. It highlighted values such as unity, compassion, and the importance of performing Ramadan worship with sincerity.</p><p><strong>A Shared Meal and Fellowship</strong></p><p>As the call to Maghrib prayer echoed, all participants broke their fast together with a variety of Ramadan dishes, including dates, sweet compotes, and traditional Indonesian foods that enriched the warmth of the evening. Laughter and shared stories around the table made the togetherness even more memorable.</p><p>After the meal, everyone joined in Maghrib prayer in congregation, reinforcing the spirit of solidarity and togetherness among PT Cable Tech’s family.</p><p><strong>Strengthening Unity for the Future</strong></p><p>This iftar event served not only as a communal meal but also as a meaningful opportunity to deepen the relationship between employees and management. Events like this are expected to strengthen the spirit of unity and the sense of belonging within the company.</p><p>PT Cable Tech remains committed to upholding values of family and harmony in the workplace, as a foundation for shared success. See you at next year’s iftar gathering!</p><p><strong>#IftarWithCableTech #TogetherInHarmony #Ramadan2025 #CableTechFamily</strong></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'gallery/bukber.jpg', 5, NULL, '2025-03-25 06:17:47', '2025-06-16 07:13:53'),
(19, 'PT YAMAHA INDONESIA MOTOR', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/c4.jpg', 0, NULL, '2025-06-09 02:19:28', '2025-06-09 02:19:28'),
(20, 'PT TOYOTA INDONESIA', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/c1.jpg', 0, NULL, '2025-06-09 02:19:51', '2025-06-09 02:19:51'),
(23, 'ISO', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/iso-14001-2027.png', 2, NULL, '2025-06-09 02:26:44', '2025-06-09 02:26:44'),
(24, 'IATF', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/iatf-2027.png', 2, NULL, '2025-06-09 02:27:02', '2025-06-09 02:27:02'),
(26, 'PT YAMAHA INDONESIA MOTOR', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/tyt-1-1.png', 0, NULL, '2025-06-10 01:04:10', '2025-12-10 03:39:50'),
(27, 'PT YAMAHA INDONESIA MOTOR', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/tyt-4.jpg', 0, NULL, '2025-06-10 01:04:49', '2025-12-10 03:39:24'),
(28, 'PT KAWASAKI MOTOR INDONESIA', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/tyt-6-1.png', 2, NULL, '2025-06-10 01:06:25', '2025-12-10 03:38:37'),
(29, 'PT ASTRA DAIHATSU MOTOR', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/tyt-7-1.png', 2, NULL, '2025-06-10 01:07:01', '2025-12-10 03:38:23'),
(30, 'Building the Future Together: Industrial Visit of SMK Muhammadiyah Klaten North to PT Cable Tech', 'PT Cable Tech hosted an industrial visit by SMK Muhammadiyah Klaten North. The students gained firsthand insight into the production processes and the industrial work environment. This activity was designed to enrich their knowledge, experience, and motivation as they prepare to enter the workforce.', '<p><strong>Building the Future Together: Industrial Visit of SMK Muhammadiyah Klaten North to PT Cable Tech</strong></p><p><i>Cikarang, June 13, 2025</i> – PT Cable Tech proudly welcomed an industrial visit from the students of SMK Muhammadiyah Klaten North as part of an effort to introduce the real-world industrial environment to the younger generation. This activity reflects PT Cable Tech’s ongoing commitment to supporting vocational education and fostering stronger collaboration with the education sector.</p><p>Dozens of students, accompanied by teachers and school representatives, attended the visit and were warmly welcomed by the HR team and PT Cable Tech management with great enthusiasm and a spirit of collaboration.</p><p><strong>Exploring the Real Industrial World</strong></p><p>The event began with an opening session and company introduction, where students were given an overview of PT Cable Tech’s history, production processes, and organizational structure. They were then guided through a facility tour to observe the company\'s operations firsthand, from cable assembly to product quality testing.</p><p>Wearing their signature green uniforms, the students eagerly took notes, asked questions, and documented their experiences throughout the visit. This activity not only broadened their knowledge but also provided motivation and inspiration to pursue their technical skills more seriously.</p><p><strong>Strengthening Educational and Industrial Collaboration</strong></p><p>This industrial visit benefited not only the students but also served as a meaningful opportunity for PT Cable Tech to reinforce the synergy between industry and education. In a speech delivered by a company representative, PT Cable Tech expressed its hope that this activity would serve as a bridge to help develop skilled and industry-ready workers in the future.</p><p><strong>A Moment of Learning and Togetherness</strong></p><p>A group photo in front of PT Cable Tech’s main building marked a memorable conclusion to the visit, reflecting the spirit of togetherness and the students’ enthusiasm for learning. It is hoped that this experience will serve as a valuable stepping stone for SMK Muhammadiyah Klaten North students in preparing for their future careers in the industrial sector.</p><p><strong>#IndustrialVisitCableTech #SMKMuhammadiyahKlatenNorth #EducationIndustrySynergy #FutureOfIndonesianTechnology</strong></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'gallery/smk-klaten.JPG', 4, NULL, '2025-06-13 02:15:52', '2025-12-10 03:29:02'),
(31, 'Gratitude in Togetherness: Thanksgiving &amp; Farewell-Welcome Gathering of PT Cable Tech Family', 'PT Cable Tech held a Thanksgiving event as an expression of gratitude for the achievements and togetherness of its employees. The event featured a joint prayer, remarks from management, and moments of warm fellowship. It aimed to strengthen bonds among employees and foster a positive spirit within the workplace.', '<p><strong>Gratitude in Togetherness: Thanksgiving &amp; Farewell-Welcome Gathering of PT Cable Tech Family</strong></p><p>Cikarang, June 13, 2025 – PT Cable Tech held a Thanksgiving and Farewell-Welcome event as an expression of gratitude, and to mark the transition of employees completing their service and those newly joining the company. The warm and heartfelt gathering took place at the PT Cable Tech office and was attended by staff, employees, and management.</p><p>With the theme “Prayers and Togetherness in Gratitude,” the event served as a moment of reflection on the achievements throughout the year, as well as a hopeful prayer for blessings and renewed spirit in the future. All participants wore white attire, symbolizing simplicity and unity.</p><p><strong>A Meaningful Moment of Appreciation</strong></p><p>The event began with a group prayer, followed by a speech from company management expressing appreciation for the dedication of all employees. Awards were also presented to the best production team as recognition and motivation for their hard work and meaningful contributions.</p><p><strong>Heartfelt Farewells and Warm Welcomes</strong></p><p>The farewell and welcoming of new employees took place in a family-like atmosphere. Laughter, stories, and enthusiasm filled the room, creating a warm and memorable experience. The event served as a reminder that behind every target and task lies a human connection that supports and grows together.</p><p><strong>Fostering a Spirit of Togetherness</strong></p><p>This Thanksgiving event not only marked an ending and a beginning but also symbolized PT Cable Tech’s commitment to nurturing a positive and harmonious work environment. May the spirit kindled through this gathering continue to shine in every step the company takes forward.</p><p><strong>#ThanksgivingCableTech #FarewellWelcome2025 #TogetherInGratitude #CableTechFamily</strong></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'gallery/tasyafur.JPG', 3, NULL, '2025-06-13 02:21:20', '2025-12-10 03:28:46'),
(32, 'Alert and Aware: APAR Usage Education at PT Cable Tech', 'PT Cable Tech conducted an APAR (fire extinguisher) usage training to raise employee awareness and preparedness in dealing with fire emergencies. The session included both theoretical explanations and hands-on practice led by professional instructors. It is expected that all employees will gain a proper understanding of how to use APAR correctly to ensure safety in the workplace.', '<p><strong>Alert and Aware: APAR Usage Education at PT Cable Tech</strong></p><p><i>Cikarang, June 16, 2025</i> – PT Cable Tech held an educational session on the use of portable fire extinguishers (APAR) for employees as part of its commitment to workplace safety. The activity aimed to enhance awareness and provide basic skills in handling fire emergencies in the workplace.</p><p>The event was led by a team of professional firefighters who explained the different types of APAR, how to use them properly, and conducted hands-on fire extinguishing simulations. Employees from various divisions, including security and production operators, participated enthusiastically in the training.</p><p><strong>Hands-On Learning for Emergency Preparedness</strong></p><p>This training served as a valuable hands-on learning experience. Participants not only received theoretical knowledge but also practiced using APAR directly. This approach ensures that every employee is prepared to respond quickly and accurately during fire emergencies.</p><p><strong>Safety Is a Top Priority</strong></p><p>PT Cable Tech remains committed to fostering a safe, orderly, and risk-aware work culture. Educational programs like this will continue to be conducted regularly as part of the company’s effort to uphold occupational health and safety (OHS) throughout its facilities.</p><p><strong>#SafetyFirstCableTech #APARTraining #SafeWorkCulture #OHS_Education</strong></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'gallery/apar-1.jpg', 3, NULL, '2025-06-16 04:51:32', '2025-12-10 03:28:20'),
(33, 'Focus and Awareness: KYT Training at PT Cable Tech', 'PT Cable Tech held KYT (Kiken Yochi Training) on October 16, 2024, to enhance employee awareness of potential hazards in the workplace. Through this training, employees were encouraged to identify risks, engage in discussions, and find preventive solutions to create a safer and more productive work environment.', '<p><strong>Focus and Awareness: KYT Training at PT Cable Tech</strong><br>Cikarang, October 16, 2024 – PT Cable Tech conducted KYT (Kiken Yochi Training), attended by employees from various divisions. The training aimed to raise awareness of potential hazards in the workplace and instill a culture of safety and early risk response.</p><p>Participants actively engaged in the sessions, which covered topics such as hazard identification and accident prevention. With interactive discussions and enthusiastic involvement, the training served as an important step in strengthening the shared commitment to workplace safety.</p><p><strong>Fostering a Strong Safety Culture</strong></p><p>Through this KYT program, PT Cable Tech hopes all employees will apply safe work principles in their daily activities. This initiative is part of the company’s ongoing efforts to build a healthy, safe, and productive work environment.</p><p><strong>#KYTTraining #SafetyCulture #CableTechSafety #KikenYochiTraining</strong><br><strong>&nbsp;</strong></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'gallery/bukber.jpg', 2, NULL, '2025-06-16 06:55:21', '2025-12-10 03:35:59'),
(34, 'Great Productivity Starts with TPM: TPM Training at PT Cable Tech', 'PT Cable Tech held a Total Productive Maintenance (TPM) training on May 15, 2024. The event was attended by employees from various divisions to enhance their understanding of comprehensive machine maintenance. Through this training, the company aims to build a more efficient, safe, and productive work culture.', '<p><strong>Great Productivity Starts with TPM: TPM Training at PT Cable Tech</strong></p><p><strong>Cikarang, May 15, 2024</strong> – PT Cable Tech conducted a Total Productive Maintenance (TPM) training as part of its commitment to improving work efficiency and comprehensive machine maintenance. This activity aimed to equip employees with an understanding of the vital role each individual plays in maintaining optimal equipment performance.</p><p><strong>Building a Reliable and Productive Work Culture</strong><br>The training was attended by employees from various departments and led by experienced internal instructors who delivered TPM materials ranging from basic concepts to practical implementation in the production environment. Interactive discussions, case studies, and Q&amp;A sessions helped deepen participants\' understanding.</p><p><strong>Concrete Steps to Improve Efficiency and Quality</strong><br>Through this training, participants are expected to apply TPM principles in their daily activities, helping prevent machine breakdowns, reduce downtime, and contribute to a safer, more organized, and productive work environment.</p><p><strong>Commitment to Continuous Improvement</strong><br>PT Cable Tech continues to promote TPM culture as part of its continuous improvement strategy. This training will become a regular agenda as an investment in human resource quality and overall production performance.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'gallery/smk-klaten.JPG', 1, NULL, '2025-06-16 07:04:31', '2025-12-10 03:36:17'),
(35, 'PT YAMAHA INDONESIA MOTOR', '', NULL, 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'certification/tyt-2-1.png', 0, NULL, '2025-07-08 02:28:34', '2025-12-10 03:37:59'),
(36, 'Independence Day Commemoration of PT Cable Tech Family', 'Cikarang, August 17, 2025 – PT Cable Tech commemorated Indonesia’s 80th Independence Day with a joyful and united celebration at the company office. With the theme “Spirit of Unity and National Pride,” employees and management came together in red-and-white attire to honor the nation’s history. The event featured a flag ceremony, inspiring remarks from company leaders, and traditional 17 August co', '<p data-start=\"176\" data-end=\"256\"><strong data-start=\"176\" data-end=\"256\">Unity in Celebration: Independence Day Commemoration of PT Cable Tech Family</strong></p><p data-start=\"258\" data-end=\"545\">Cikarang, August 17, 2025 – PT Cable Tech held a special event to commemorate Indonesia’s 80th Independence Day as a form of gratitude and appreciation for the nation’s journey. The vibrant celebration took place at the PT Cable Tech office, attended by staff, employees, and management.</p><p data-start=\"547\" data-end=\"859\">With the theme <strong data-start=\"562\" data-end=\"602\">“Spirit of Unity and National Pride”</strong>, the event became a moment to reflect on the struggles of the heroes, while igniting enthusiasm to continue contributing positively to the company and the country. All participants wore red-and-white attire, symbolizing courage, purity, and national unity.</p><p data-start=\"861\" data-end=\"898\"><strong data-start=\"861\" data-end=\"898\">A Celebration Filled With Meaning</strong></p><p data-start=\"900\" data-end=\"1210\">The event began with a ceremonial flag raising, followed by a speech from company management emphasizing the importance of preserving the values of independence—discipline, responsibility, and teamwork. Appreciation was also given to employees who consistently showed excellent performance throughout the year.</p><p data-start=\"1212\" data-end=\"1251\"><strong data-start=\"1212\" data-end=\"1251\">Festive Competitions and Shared Joy</strong></p><p data-start=\"1253\" data-end=\"1554\">Various traditional 17 August competitions brought laughter and excitement, creating a warm and joyful atmosphere. Tug of war, sack races, and other fun activities strengthened camaraderie among all participants, reminding everyone that togetherness plays a vital role in achieving collective success.</p><p data-start=\"1556\" data-end=\"1604\"><strong data-start=\"1556\" data-end=\"1604\">Strengthening National Spirit and Solidarity</strong></p><p data-start=\"1606\" data-end=\"1896\">This Independence Day commemoration was not only a celebration of history but also a symbol of PT Cable Tech’s commitment to fostering a positive, united, and high-spirited work environment. May the spirit of independence continue to inspire every step forward for the PT Cable Tech family.</p><p data-start=\"1898\" data-end=\"1983\"><strong>#IndependenceDay2025 #HUTRI80 #CableTechMerdeka #SemangatKebersamaan #CableTechFamily</strong></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'gallery/17-ags-2025.jpg', 0, NULL, '2025-12-10 03:34:55', '2025-12-10 03:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('id_ID', 25, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('id_ID', 26, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('id_ID', 27, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('id_ID', 28, 'PT KAWASAKI MOTOR INDONESIA', '', NULL),
('id_ID', 29, 'PT ASTRA DAIHATSU MOTOR', '', NULL),
('id_ID', 30, 'Kunjungan Industri SMK Muhammadiyah Klaten Utara', 'PT Cable Tech menerima kunjungan industri dari SMK Muhammadiyah Klaten Utara. Siswa mendapat wawasan langsung tentang proses produksi dan lingkungan kerja industri. Kegiatan ini bertujuan menambah pengetahuan, pengalaman, dan motivasi siswa dalam mempersiapkan diri menghadapi dunia kerja secara nyata.', '<p data-start=\"189\" data-end=\"288\"><strong data-start=\"189\" data-end=\"288\">Membangun Masa Depan Bersama: Kunjungan Industri SMK Muhammadiyah Klaten Utara ke PT Cable Tech</strong></p><p data-start=\"290\" data-end=\"666\"><em data-start=\"290\" data-end=\"314\"><i>Cikarang, 10 Oktober 2024</i></em> – PT Cable Tech dengan bangga menerima kunjungan industri dari siswa-siswi <strong data-start=\"390\" data-end=\"423\">SMK Muhammadiyah Klaten Utara</strong> dalam rangka memperkenalkan dunia industri secara langsung kepada para generasi muda. Kegiatan ini merupakan bagian dari komitmen PT Cable Tech dalam mendukung pendidikan vokasi serta menjalin hubungan yang lebih erat dengan dunia pendidikan.</p><p data-start=\"668\" data-end=\"882\">Sebanyak puluhan siswa didampingi guru pembimbing dan perwakilan sekolah hadir dalam kunjungan ini. Mereka disambut langsung oleh tim HR dan manajemen PT Cable Tech dengan penuh antusiasme dan semangat kolaboratif.</p><p data-start=\"884\" data-end=\"920\"><strong data-start=\"884\" data-end=\"920\">Menjelajahi Dunia Industri Nyata</strong></p><p data-start=\"922\" data-end=\"1305\">Kegiatan dimulai dengan sesi pembukaan dan pengenalan perusahaan, di mana siswa diberikan gambaran umum mengenai sejarah, proses produksi, dan struktur organisasi PT Cable Tech. Setelah itu, para peserta diajak berkeliling fasilitas produksi untuk melihat secara langsung proses kerja yang berlangsung di perusahaan, mulai dari tahap perakitan kabel hingga pengujian kualitas produk.</p><p data-start=\"1307\" data-end=\"1623\">Dengan mengenakan seragam khas berwarna hijau, para siswa tampak antusias mencatat, bertanya, dan mendokumentasikan pengalaman mereka selama kunjungan berlangsung. Tidak hanya memperluas wawasan, kegiatan ini juga memberikan inspirasi dan motivasi bagi siswa untuk lebih serius dalam menekuni bidang keahlian mereka.</p><p data-start=\"1625\" data-end=\"1672\"><strong data-start=\"1625\" data-end=\"1672\">Menjalin Kolaborasi Pendidikan dan Industri</strong></p><p data-start=\"1674\" data-end=\"2040\">Kunjungan industri ini tidak hanya bermanfaat bagi siswa, tetapi juga menjadi momen penting bagi PT Cable Tech dalam memperkuat sinergi antara dunia usaha dan dunia pendidikan. Dalam sambutannya, perwakilan manajemen PT Cable Tech menyampaikan harapannya agar kegiatan ini dapat menjadi jembatan untuk mencetak tenaga kerja terampil dan siap pakai di masa mendatang.</p><p data-start=\"2042\" data-end=\"2075\"><strong data-start=\"2042\" data-end=\"2075\">Momen Kebersamaan dan Edukasi</strong></p><p data-start=\"2077\" data-end=\"2400\">Foto bersama di depan gedung utama PT Cable Tech menjadi penutup yang berkesan dari kunjungan ini, mencerminkan kebersamaan dan semangat belajar yang tinggi dari para peserta. Diharapkan, pengalaman ini dapat menjadi bekal berharga bagi siswa SMK Muhammadiyah Klaten Utara dalam menatap masa depan mereka di dunia industri.</p>'),
('id_ID', 31, 'Bersyukur dalam Kebersamaan: Tasyakur & Pisah Sambut Keluarga Besar PT Cable Tech', 'PT Cable Tech mengadakan acara Tasyakur sebagai bentuk rasa syukur atas pencapaian dan kebersamaan karyawan. Kegiatan ini diisi dengan doa bersama, sambutan manajemen, serta momen kebersamaan yang hangat. Acara ini bertujuan mempererat tali silaturahmi antar karyawan dan membangun semangat positif di lingkungan kerja.', '<p data-start=\"177\" data-end=\"262\"><strong data-start=\"177\" data-end=\"262\">Bersyukur dalam Kebersamaan: Tasyakur &amp; Pisah Sambut Keluarga Besar PT Cable Tech</strong></p><p data-start=\"264\" data-end=\"629\"><em data-start=\"264\" data-end=\"288\"><i>Cikarang, 23 Desember2024</i></em> – PT Cable Tech menggelar acara <strong data-start=\"321\" data-end=\"350\">Tasyakur dan Pisah Sambut</strong> sebagai bentuk ungkapan rasa syukur serta momen perpisahan dan penyambutan bagi para karyawan yang telah menjalani masa kerja dan yang baru bergabung. Acara yang penuh kehangatan ini dilaksanakan di area kantor PT Cable Tech dan dihadiri oleh para staf, karyawan, dan manajemen.</p><p data-start=\"631\" data-end=\"910\">Dengan tema <em data-start=\"643\" data-end=\"692\"><i>\"Doa Bersama dan Kebersamaan dalam Rasa Syukur\"</i></em>, kegiatan ini menjadi refleksi atas pencapaian selama tahun berjalan serta harapan akan keberkahan dan semangat baru di masa depan. Semua peserta mengenakan busana putih yang mencerminkan kesederhanaan dan kekompakan.</p><p data-start=\"912\" data-end=\"947\"><strong data-start=\"912\" data-end=\"947\">Momen Penuh Makna dan Apresiasi</strong></p><p data-start=\"949\" data-end=\"1250\">Acara diawali dengan doa bersama, dilanjutkan sambutan dari perwakilan manajemen yang menyampaikan apresiasi atas dedikasi seluruh karyawan. Dalam kesempatan ini juga diberikan penghargaan kepada tim produksi terbaik, sebagai bentuk motivasi atas kerja keras dan kontribusi nyata yang telah diberikan.</p><p data-start=\"1252\" data-end=\"1284\"><strong data-start=\"1252\" data-end=\"1284\">Pisah Sambut Penuh Keakraban</strong></p><p data-start=\"1286\" data-end=\"1617\">Momen perpisahan dan penyambutan karyawan baru dilakukan dengan penuh kekeluargaan. Tawa, cerita, dan semangat terpancar dari setiap wajah, menciptakan suasana yang penuh kehangatan. Kegiatan ini menjadi pengingat bahwa di balik setiap target dan pekerjaan, terdapat hubungan antar manusia yang saling mendukung dan tumbuh bersama.</p><p data-start=\"1619\" data-end=\"1652\"><strong data-start=\"1619\" data-end=\"1652\">Kebersamaan yang Terus Dijaga</strong></p><p data-start=\"1654\" data-end=\"1942\">Acara Tasyakur ini bukan hanya sebagai penutup dan awal perjalanan, tetapi juga sebagai simbol komitmen PT Cable Tech untuk terus menumbuhkan lingkungan kerja yang positif dan harmonis. Semoga semangat yang terbangun dalam acara ini terus menyala dalam setiap langkah perusahaan ke depan.</p>'),
('id_ID', 32, 'Siaga dan Peduli: Edukasi Penggunaan APAR di PT Cable Tech', '', '<p data-start=\"143\" data-end=\"205\"><strong data-start=\"143\" data-end=\"205\">Siaga dan Peduli: Edukasi Penggunaan APAR di PT Cable Tech</strong></p><p data-start=\"207\" data-end=\"524\"><em data-start=\"207\" data-end=\"231\"><i>Cikarang, 22Desember 2021</i></em> – PT Cable Tech mengadakan kegiatan edukasi penggunaan Alat Pemadam Api Ringan (APAR) bagi karyawan sebagai bentuk komitmen terhadap keselamatan kerja. Kegiatan ini bertujuan untuk meningkatkan kesadaran serta keterampilan dasar dalam menghadapi kondisi darurat kebakaran di lingkungan kerja.</p><p data-start=\"526\" data-end=\"797\">Acara dipandu oleh tim pemadam profesional yang menjelaskan secara langsung jenis-jenis APAR, cara penggunaannya, hingga praktik simulasi pemadaman api. Karyawan dari berbagai divisi, termasuk security dan operator produksi, mengikuti pelatihan ini dengan penuh antusias.</p><p data-start=\"799\" data-end=\"841\"><strong data-start=\"799\" data-end=\"841\">Belajar Langsung, Siap Tanggap Darurat</strong></p><p data-start=\"843\" data-end=\"1147\">Kegiatan ini menjadi sarana pembelajaran langsung yang sangat bermanfaat, karena para peserta tidak hanya menerima teori, tetapi juga dilibatkan dalam praktik penggunaan APAR secara nyata. Dengan demikian, setiap karyawan diharapkan mampu bertindak cepat dan tepat saat terjadi situasi darurat kebakaran.</p><p data-start=\"1149\" data-end=\"1181\"><strong data-start=\"1149\" data-end=\"1181\">Keselamatan adalah Prioritas</strong></p><p data-start=\"1183\" data-end=\"1442\">PT Cable Tech terus berkomitmen membangun budaya kerja yang aman, tertib, dan responsif terhadap risiko. Edukasi seperti ini akan terus dilakukan secara berkala sebagai bagian dari upaya menjaga keselamatan dan kesehatan kerja (K3) di seluruh area perusahaan.</p><p data-start=\"1183\" data-end=\"1442\"><strong data-start=\"1449\" data-end=\"1474\">#SafetyFirstCableTech </strong><strong data-start=\"1477\" data-end=\"1495\">#PelatihanAPAR </strong><strong data-start=\"1498\" data-end=\"1518\">#BudayaKerjaAman </strong><strong data-start=\"1521\" data-end=\"1535\">#EdukasiK3</strong></p>'),
('id_ID', 33, 'Fokus dan Peduli: Training KYT di PT Cable Tech', 'PT Cable Tech mengadakan Training KYT (Kiken Yochi Training) pada 16 Oktober 2024 untuk meningkatkan kesadaran karyawan terhadap potensi bahaya di tempat kerja. Melalui pelatihan ini, karyawan diajak mengenali risiko, berdiskusi, dan mencari solusi pencegahan agar tercipta lingkungan kerja yang lebih aman dan produktif.', '<p data-start=\"88\" data-end=\"139\"><strong data-start=\"88\" data-end=\"139\">Fokus dan Peduli: Training KYT di PT Cable Tech</strong></p><p data-start=\"141\" data-end=\"447\"><em data-start=\"141\" data-end=\"168\"><i>Cikarang, 16 Oktober 2024</i></em> – PT Cable Tech melaksanakan pelatihan KYT (Kiken Yochi Training) yang diikuti oleh para karyawan dari berbagai divisi. Pelatihan ini bertujuan untuk meningkatkan kesadaran terhadap potensi bahaya di tempat kerja serta menanamkan budaya kerja aman dan tanggap risiko sejak dini.</p><p data-start=\"449\" data-end=\"750\">Peserta training terlihat antusias mengikuti materi yang disampaikan, mulai dari identifikasi potensi bahaya hingga cara pencegahan kecelakaan kerja. Dengan suasana diskusi yang aktif dan interaktif, kegiatan ini menjadi momen penting untuk memperkuat komitmen bersama dalam menjaga keselamatan kerja.</p><p data-start=\"752\" data-end=\"787\"><strong data-start=\"752\" data-end=\"787\">Menumbuhkan Budaya K3 yang Kuat</strong></p><p data-start=\"789\" data-end=\"1046\">Melalui program KYT ini, PT Cable Tech berharap seluruh karyawan mampu menerapkan prinsip kerja aman dalam aktivitas harian. Edukasi ini menjadi bagian dari upaya berkelanjutan perusahaan dalam mewujudkan lingkungan kerja yang sehat, selamat, dan produktif.</p><figure class=\"image image_resized\" style=\"width:38.07%;\"><img style=\"aspect-ratio:1373/735;\" src=\"http://192.168.18.121:8000/storage/materi-kyt.jpeg\" width=\"1373\" height=\"735\"></figure><p data-start=\"789\" data-end=\"1046\"><strong data-start=\"1053\" data-end=\"1069\">#TrainingKYT </strong><strong data-start=\"1072\" data-end=\"1092\">#BudayaKerjaAman </strong><strong data-start=\"1095\" data-end=\"1111\">#K3CableTech</strong><br>&nbsp;</p>'),
('id_ID', 34, 'Great Productivity Starts with TPM: TPM Training at PT Cable Tech', 'PT Cable Tech held a Total Productive Maintenance (TPM) training on May 15, 2024. The event was attended by employees from various divisions to enhance their understanding of comprehensive machine maintenance. Through this training, the company aims to build a more efficient, safe, and productive work culture.', '<p data-start=\"0\" data-end=\"69\"><strong data-start=\"0\" data-end=\"69\">Great Productivity Starts with TPM: TPM Training at PT Cable Tech</strong></p><p data-start=\"71\" data-end=\"410\"><strong data-start=\"71\" data-end=\"97\">Cikarang, May 15, 2024</strong> – PT Cable Tech conducted a Total Productive Maintenance (TPM) training as part of its commitment to improving work efficiency and comprehensive machine maintenance. This activity aimed to equip employees with an understanding of the vital role each individual plays in maintaining optimal equipment performance.</p><p data-start=\"412\" data-end=\"787\"><strong data-start=\"412\" data-end=\"463\">Building a Reliable and Productive Work Culture</strong><br>The training was attended by employees from various departments and led by experienced internal instructors who delivered TPM materials ranging from basic concepts to practical implementation in the production environment. Interactive discussions, case studies, and Q&amp;A sessions helped deepen participants\' understanding.</p><p data-start=\"789\" data-end=\"1072\"><strong data-start=\"789\" data-end=\"841\">Concrete Steps to Improve Efficiency and Quality</strong><br>Through this training, participants are expected to apply TPM principles in their daily activities, helping prevent machine breakdowns, reduce downtime, and contribute to a safer, more organized, and productive work environment.</p><p data-start=\"1074\" data-end=\"1333\"><strong data-start=\"1074\" data-end=\"1114\">Commitment to Continuous Improvement</strong><br>PT Cable Tech continues to promote TPM culture as part of its continuous improvement strategy. This training will become a regular agenda as an investment in human resource quality and overall production performance.</p>'),
('id_ID', 35, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('id_ID', 36, 'Independence Day Commemoration of PT Cable Tech Family', 'Cikarang, August 17, 2025 – PT Cable Tech commemorated Indonesia’s 80th Independence Day with a joyful and united celebration at the company office. With the theme “Spirit of Unity and National Pride,” employees and management came together in red-and-white attire to honor the nation’s history. The event featured a flag ceremony, inspiring remarks from company leaders, and traditional 17 August co', '<p data-start=\"176\" data-end=\"256\"><strong data-start=\"176\" data-end=\"256\">Unity in Celebration: Independence Day Commemoration of PT Cable Tech Family</strong></p><p data-start=\"258\" data-end=\"545\">Cikarang, August 17, 2025 – PT Cable Tech held a special event to commemorate Indonesia’s 80th Independence Day as a form of gratitude and appreciation for the nation’s journey. The vibrant celebration took place at the PT Cable Tech office, attended by staff, employees, and management.</p><p data-start=\"547\" data-end=\"859\">With the theme <strong data-start=\"562\" data-end=\"602\">“Spirit of Unity and National Pride”</strong>, the event became a moment to reflect on the struggles of the heroes, while igniting enthusiasm to continue contributing positively to the company and the country. All participants wore red-and-white attire, symbolizing courage, purity, and national unity.</p><p data-start=\"861\" data-end=\"898\"><strong data-start=\"861\" data-end=\"898\">A Celebration Filled With Meaning</strong></p><p data-start=\"900\" data-end=\"1210\">The event began with a ceremonial flag raising, followed by a speech from company management emphasizing the importance of preserving the values of independence—discipline, responsibility, and teamwork. Appreciation was also given to employees who consistently showed excellent performance throughout the year.</p><p data-start=\"1212\" data-end=\"1251\"><strong data-start=\"1212\" data-end=\"1251\">Festive Competitions and Shared Joy</strong></p><p data-start=\"1253\" data-end=\"1554\">Various traditional 17 August competitions brought laughter and excitement, creating a warm and joyful atmosphere. Tug of war, sack races, and other fun activities strengthened camaraderie among all participants, reminding everyone that togetherness plays a vital role in achieving collective success.</p><p data-start=\"1556\" data-end=\"1604\"><strong data-start=\"1556\" data-end=\"1604\">Strengthening National Spirit and Solidarity</strong></p><p data-start=\"1606\" data-end=\"1896\">This Independence Day commemoration was not only a celebration of history but also a symbol of PT Cable Tech’s commitment to fostering a positive, united, and high-spirited work environment. May the spirit of independence continue to inspire every step forward for the PT Cable Tech family.</p><p data-start=\"1898\" data-end=\"1983\"><strong>#IndependenceDay2025 #HUTRI80 #CableTechMerdeka #SemangatKebersamaan #CableTechFamily</strong></p>'),
('ja', 25, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('ja', 26, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('ja', 27, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('ja', 28, 'PT KAWASAKI MOTOR INDONESIA', '', NULL),
('ja', 29, 'PT ASTRA DAIHATSU MOTOR', '', NULL),
('ja', 30, 'Kunjungan Industri SMK Muhammadiyah Klaten Utara', 'PT Cable Tech menerima kunjungan industri dari SMK Muhammadiyah Klaten Utara. Siswa mendapat wawasan langsung tentang proses produksi dan lingkungan kerja industri. Kegiatan ini bertujuan menambah pengetahuan, pengalaman, dan motivasi siswa dalam mempersiapkan diri menghadapi dunia kerja secara nyata.', '<p data-start=\"189\" data-end=\"288\"><strong data-start=\"189\" data-end=\"288\">Membangun Masa Depan Bersama: Kunjungan Industri SMK Muhammadiyah Klaten Utara ke PT Cable Tech</strong></p><p data-start=\"290\" data-end=\"666\"><em data-start=\"290\" data-end=\"314\"><i>Cikarang, 10 Oktober 2024</i></em> – PT Cable Tech dengan bangga menerima kunjungan industri dari siswa-siswi <strong data-start=\"390\" data-end=\"423\">SMK Muhammadiyah Klaten Utara</strong> dalam rangka memperkenalkan dunia industri secara langsung kepada para generasi muda. Kegiatan ini merupakan bagian dari komitmen PT Cable Tech dalam mendukung pendidikan vokasi serta menjalin hubungan yang lebih erat dengan dunia pendidikan.</p><p data-start=\"668\" data-end=\"882\">Sebanyak puluhan siswa didampingi guru pembimbing dan perwakilan sekolah hadir dalam kunjungan ini. Mereka disambut langsung oleh tim HR dan manajemen PT Cable Tech dengan penuh antusiasme dan semangat kolaboratif.</p><p data-start=\"884\" data-end=\"920\"><strong data-start=\"884\" data-end=\"920\">Menjelajahi Dunia Industri Nyata</strong></p><p data-start=\"922\" data-end=\"1305\">Kegiatan dimulai dengan sesi pembukaan dan pengenalan perusahaan, di mana siswa diberikan gambaran umum mengenai sejarah, proses produksi, dan struktur organisasi PT Cable Tech. Setelah itu, para peserta diajak berkeliling fasilitas produksi untuk melihat secara langsung proses kerja yang berlangsung di perusahaan, mulai dari tahap perakitan kabel hingga pengujian kualitas produk.</p><p data-start=\"1307\" data-end=\"1623\">Dengan mengenakan seragam khas berwarna hijau, para siswa tampak antusias mencatat, bertanya, dan mendokumentasikan pengalaman mereka selama kunjungan berlangsung. Tidak hanya memperluas wawasan, kegiatan ini juga memberikan inspirasi dan motivasi bagi siswa untuk lebih serius dalam menekuni bidang keahlian mereka.</p><p data-start=\"1625\" data-end=\"1672\"><strong data-start=\"1625\" data-end=\"1672\">Menjalin Kolaborasi Pendidikan dan Industri</strong></p><p data-start=\"1674\" data-end=\"2040\">Kunjungan industri ini tidak hanya bermanfaat bagi siswa, tetapi juga menjadi momen penting bagi PT Cable Tech dalam memperkuat sinergi antara dunia usaha dan dunia pendidikan. Dalam sambutannya, perwakilan manajemen PT Cable Tech menyampaikan harapannya agar kegiatan ini dapat menjadi jembatan untuk mencetak tenaga kerja terampil dan siap pakai di masa mendatang.</p><p data-start=\"2042\" data-end=\"2075\"><strong data-start=\"2042\" data-end=\"2075\">Momen Kebersamaan dan Edukasi</strong></p><p data-start=\"2077\" data-end=\"2400\">Foto bersama di depan gedung utama PT Cable Tech menjadi penutup yang berkesan dari kunjungan ini, mencerminkan kebersamaan dan semangat belajar yang tinggi dari para peserta. Diharapkan, pengalaman ini dapat menjadi bekal berharga bagi siswa SMK Muhammadiyah Klaten Utara dalam menatap masa depan mereka di dunia industri.</p>'),
('ja', 31, 'Bersyukur dalam Kebersamaan: Tasyakur & Pisah Sambut Keluarga Besar PT Cable Tech', 'PT Cable Tech mengadakan acara Tasyakur sebagai bentuk rasa syukur atas pencapaian dan kebersamaan karyawan. Kegiatan ini diisi dengan doa bersama, sambutan manajemen, serta momen kebersamaan yang hangat. Acara ini bertujuan mempererat tali silaturahmi antar karyawan dan membangun semangat positif di lingkungan kerja.', '<p data-start=\"177\" data-end=\"262\"><strong data-start=\"177\" data-end=\"262\">Bersyukur dalam Kebersamaan: Tasyakur &amp; Pisah Sambut Keluarga Besar PT Cable Tech</strong></p><p data-start=\"264\" data-end=\"629\"><em data-start=\"264\" data-end=\"288\"><i>Cikarang, 23 Desember2024</i></em> – PT Cable Tech menggelar acara <strong data-start=\"321\" data-end=\"350\">Tasyakur dan Pisah Sambut</strong> sebagai bentuk ungkapan rasa syukur serta momen perpisahan dan penyambutan bagi para karyawan yang telah menjalani masa kerja dan yang baru bergabung. Acara yang penuh kehangatan ini dilaksanakan di area kantor PT Cable Tech dan dihadiri oleh para staf, karyawan, dan manajemen.</p><p data-start=\"631\" data-end=\"910\">Dengan tema <em data-start=\"643\" data-end=\"692\"><i>\"Doa Bersama dan Kebersamaan dalam Rasa Syukur\"</i></em>, kegiatan ini menjadi refleksi atas pencapaian selama tahun berjalan serta harapan akan keberkahan dan semangat baru di masa depan. Semua peserta mengenakan busana putih yang mencerminkan kesederhanaan dan kekompakan.</p><p data-start=\"912\" data-end=\"947\"><strong data-start=\"912\" data-end=\"947\">Momen Penuh Makna dan Apresiasi</strong></p><p data-start=\"949\" data-end=\"1250\">Acara diawali dengan doa bersama, dilanjutkan sambutan dari perwakilan manajemen yang menyampaikan apresiasi atas dedikasi seluruh karyawan. Dalam kesempatan ini juga diberikan penghargaan kepada tim produksi terbaik, sebagai bentuk motivasi atas kerja keras dan kontribusi nyata yang telah diberikan.</p><p data-start=\"1252\" data-end=\"1284\"><strong data-start=\"1252\" data-end=\"1284\">Pisah Sambut Penuh Keakraban</strong></p><p data-start=\"1286\" data-end=\"1617\">Momen perpisahan dan penyambutan karyawan baru dilakukan dengan penuh kekeluargaan. Tawa, cerita, dan semangat terpancar dari setiap wajah, menciptakan suasana yang penuh kehangatan. Kegiatan ini menjadi pengingat bahwa di balik setiap target dan pekerjaan, terdapat hubungan antar manusia yang saling mendukung dan tumbuh bersama.</p><p data-start=\"1619\" data-end=\"1652\"><strong data-start=\"1619\" data-end=\"1652\">Kebersamaan yang Terus Dijaga</strong></p><p data-start=\"1654\" data-end=\"1942\">Acara Tasyakur ini bukan hanya sebagai penutup dan awal perjalanan, tetapi juga sebagai simbol komitmen PT Cable Tech untuk terus menumbuhkan lingkungan kerja yang positif dan harmonis. Semoga semangat yang terbangun dalam acara ini terus menyala dalam setiap langkah perusahaan ke depan.</p>'),
('ja', 32, 'Siaga dan Peduli: Edukasi Penggunaan APAR di PT Cable Tech', '', '<p data-start=\"143\" data-end=\"205\"><strong data-start=\"143\" data-end=\"205\">Siaga dan Peduli: Edukasi Penggunaan APAR di PT Cable Tech</strong></p><p data-start=\"207\" data-end=\"524\"><em data-start=\"207\" data-end=\"231\"><i>Cikarang, 22Desember 2021</i></em> – PT Cable Tech mengadakan kegiatan edukasi penggunaan Alat Pemadam Api Ringan (APAR) bagi karyawan sebagai bentuk komitmen terhadap keselamatan kerja. Kegiatan ini bertujuan untuk meningkatkan kesadaran serta keterampilan dasar dalam menghadapi kondisi darurat kebakaran di lingkungan kerja.</p><p data-start=\"526\" data-end=\"797\">Acara dipandu oleh tim pemadam profesional yang menjelaskan secara langsung jenis-jenis APAR, cara penggunaannya, hingga praktik simulasi pemadaman api. Karyawan dari berbagai divisi, termasuk security dan operator produksi, mengikuti pelatihan ini dengan penuh antusias.</p><p data-start=\"799\" data-end=\"841\"><strong data-start=\"799\" data-end=\"841\">Belajar Langsung, Siap Tanggap Darurat</strong></p><p data-start=\"843\" data-end=\"1147\">Kegiatan ini menjadi sarana pembelajaran langsung yang sangat bermanfaat, karena para peserta tidak hanya menerima teori, tetapi juga dilibatkan dalam praktik penggunaan APAR secara nyata. Dengan demikian, setiap karyawan diharapkan mampu bertindak cepat dan tepat saat terjadi situasi darurat kebakaran.</p><p data-start=\"1149\" data-end=\"1181\"><strong data-start=\"1149\" data-end=\"1181\">Keselamatan adalah Prioritas</strong></p><p data-start=\"1183\" data-end=\"1442\">PT Cable Tech terus berkomitmen membangun budaya kerja yang aman, tertib, dan responsif terhadap risiko. Edukasi seperti ini akan terus dilakukan secara berkala sebagai bagian dari upaya menjaga keselamatan dan kesehatan kerja (K3) di seluruh area perusahaan.</p><p data-start=\"1183\" data-end=\"1442\"><strong data-start=\"1449\" data-end=\"1474\">#SafetyFirstCableTech </strong><strong data-start=\"1477\" data-end=\"1495\">#PelatihanAPAR </strong><strong data-start=\"1498\" data-end=\"1518\">#BudayaKerjaAman </strong><strong data-start=\"1521\" data-end=\"1535\">#EdukasiK3</strong></p>'),
('ja', 33, 'Fokus dan Peduli: Training KYT di PT Cable Tech', 'PT Cable Tech mengadakan Training KYT (Kiken Yochi Training) pada 16 Oktober 2024 untuk meningkatkan kesadaran karyawan terhadap potensi bahaya di tempat kerja. Melalui pelatihan ini, karyawan diajak mengenali risiko, berdiskusi, dan mencari solusi pencegahan agar tercipta lingkungan kerja yang lebih aman dan produktif.', '<p data-start=\"88\" data-end=\"139\"><strong data-start=\"88\" data-end=\"139\">Fokus dan Peduli: Training KYT di PT Cable Tech</strong></p><p data-start=\"141\" data-end=\"447\"><em data-start=\"141\" data-end=\"168\"><i>Cikarang, 16 Oktober 2024</i></em> – PT Cable Tech melaksanakan pelatihan KYT (Kiken Yochi Training) yang diikuti oleh para karyawan dari berbagai divisi. Pelatihan ini bertujuan untuk meningkatkan kesadaran terhadap potensi bahaya di tempat kerja serta menanamkan budaya kerja aman dan tanggap risiko sejak dini.</p><p data-start=\"449\" data-end=\"750\">Peserta training terlihat antusias mengikuti materi yang disampaikan, mulai dari identifikasi potensi bahaya hingga cara pencegahan kecelakaan kerja. Dengan suasana diskusi yang aktif dan interaktif, kegiatan ini menjadi momen penting untuk memperkuat komitmen bersama dalam menjaga keselamatan kerja.</p><p data-start=\"752\" data-end=\"787\"><strong data-start=\"752\" data-end=\"787\">Menumbuhkan Budaya K3 yang Kuat</strong></p><p data-start=\"789\" data-end=\"1046\">Melalui program KYT ini, PT Cable Tech berharap seluruh karyawan mampu menerapkan prinsip kerja aman dalam aktivitas harian. Edukasi ini menjadi bagian dari upaya berkelanjutan perusahaan dalam mewujudkan lingkungan kerja yang sehat, selamat, dan produktif.</p><figure class=\"image image_resized\" style=\"width:38.07%;\"><img style=\"aspect-ratio:1373/735;\" src=\"http://192.168.18.121:8000/storage/materi-kyt.jpeg\" width=\"1373\" height=\"735\"></figure><p data-start=\"789\" data-end=\"1046\"><strong data-start=\"1053\" data-end=\"1069\">#TrainingKYT </strong><strong data-start=\"1072\" data-end=\"1092\">#BudayaKerjaAman </strong><strong data-start=\"1095\" data-end=\"1111\">#K3CableTech</strong><br>&nbsp;</p>'),
('ja', 34, 'Great Productivity Starts with TPM: TPM Training at PT Cable Tech', 'PT Cable Tech held a Total Productive Maintenance (TPM) training on May 15, 2024. The event was attended by employees from various divisions to enhance their understanding of comprehensive machine maintenance. Through this training, the company aims to build a more efficient, safe, and productive work culture.', '<p data-start=\"0\" data-end=\"69\"><strong data-start=\"0\" data-end=\"69\">Great Productivity Starts with TPM: TPM Training at PT Cable Tech</strong></p><p data-start=\"71\" data-end=\"410\"><strong data-start=\"71\" data-end=\"97\">Cikarang, May 15, 2024</strong> – PT Cable Tech conducted a Total Productive Maintenance (TPM) training as part of its commitment to improving work efficiency and comprehensive machine maintenance. This activity aimed to equip employees with an understanding of the vital role each individual plays in maintaining optimal equipment performance.</p><p data-start=\"412\" data-end=\"787\"><strong data-start=\"412\" data-end=\"463\">Building a Reliable and Productive Work Culture</strong><br>The training was attended by employees from various departments and led by experienced internal instructors who delivered TPM materials ranging from basic concepts to practical implementation in the production environment. Interactive discussions, case studies, and Q&amp;A sessions helped deepen participants\' understanding.</p><p data-start=\"789\" data-end=\"1072\"><strong data-start=\"789\" data-end=\"841\">Concrete Steps to Improve Efficiency and Quality</strong><br>Through this training, participants are expected to apply TPM principles in their daily activities, helping prevent machine breakdowns, reduce downtime, and contribute to a safer, more organized, and productive work environment.</p><p data-start=\"1074\" data-end=\"1333\"><strong data-start=\"1074\" data-end=\"1114\">Commitment to Continuous Improvement</strong><br>PT Cable Tech continues to promote TPM culture as part of its continuous improvement strategy. This training will become a regular agenda as an investment in human resource quality and overall production performance.</p>'),
('ja', 35, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('ja', 36, 'Independence Day Commemoration of PT Cable Tech Family', 'Cikarang, August 17, 2025 – PT Cable Tech commemorated Indonesia’s 80th Independence Day with a joyful and united celebration at the company office. With the theme “Spirit of Unity and National Pride,” employees and management came together in red-and-white attire to honor the nation’s history. The event featured a flag ceremony, inspiring remarks from company leaders, and traditional 17 August co', '<p data-start=\"176\" data-end=\"256\"><strong data-start=\"176\" data-end=\"256\">Unity in Celebration: Independence Day Commemoration of PT Cable Tech Family</strong></p><p data-start=\"258\" data-end=\"545\">Cikarang, August 17, 2025 – PT Cable Tech held a special event to commemorate Indonesia’s 80th Independence Day as a form of gratitude and appreciation for the nation’s journey. The vibrant celebration took place at the PT Cable Tech office, attended by staff, employees, and management.</p><p data-start=\"547\" data-end=\"859\">With the theme <strong data-start=\"562\" data-end=\"602\">“Spirit of Unity and National Pride”</strong>, the event became a moment to reflect on the struggles of the heroes, while igniting enthusiasm to continue contributing positively to the company and the country. All participants wore red-and-white attire, symbolizing courage, purity, and national unity.</p><p data-start=\"861\" data-end=\"898\"><strong data-start=\"861\" data-end=\"898\">A Celebration Filled With Meaning</strong></p><p data-start=\"900\" data-end=\"1210\">The event began with a ceremonial flag raising, followed by a speech from company management emphasizing the importance of preserving the values of independence—discipline, responsibility, and teamwork. Appreciation was also given to employees who consistently showed excellent performance throughout the year.</p><p data-start=\"1212\" data-end=\"1251\"><strong data-start=\"1212\" data-end=\"1251\">Festive Competitions and Shared Joy</strong></p><p data-start=\"1253\" data-end=\"1554\">Various traditional 17 August competitions brought laughter and excitement, creating a warm and joyful atmosphere. Tug of war, sack races, and other fun activities strengthened camaraderie among all participants, reminding everyone that togetherness plays a vital role in achieving collective success.</p><p data-start=\"1556\" data-end=\"1604\"><strong data-start=\"1556\" data-end=\"1604\">Strengthening National Spirit and Solidarity</strong></p><p data-start=\"1606\" data-end=\"1896\">This Independence Day commemoration was not only a celebration of history but also a symbol of PT Cable Tech’s commitment to fostering a positive, united, and high-spirited work environment. May the spirit of independence continue to inspire every step forward for the PT Cable Tech family.</p><p data-start=\"1898\" data-end=\"1983\"><strong>#IndependenceDay2025 #HUTRI80 #CableTechMerdeka #SemangatKebersamaan #CableTechFamily</strong></p>'),
('zh_TW', 25, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('zh_TW', 26, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('zh_TW', 27, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('zh_TW', 28, 'PT KAWASAKI MOTOR INDONESIA', '', NULL),
('zh_TW', 29, 'PT ASTRA DAIHATSU MOTOR', '', NULL),
('zh_TW', 30, 'Kunjungan Industri SMK Muhammadiyah Klaten Utara', 'PT Cable Tech menerima kunjungan industri dari SMK Muhammadiyah Klaten Utara. Siswa mendapat wawasan langsung tentang proses produksi dan lingkungan kerja industri. Kegiatan ini bertujuan menambah pengetahuan, pengalaman, dan motivasi siswa dalam mempersiapkan diri menghadapi dunia kerja secara nyata.', '<p data-start=\"189\" data-end=\"288\"><strong data-start=\"189\" data-end=\"288\">Membangun Masa Depan Bersama: Kunjungan Industri SMK Muhammadiyah Klaten Utara ke PT Cable Tech</strong></p><p data-start=\"290\" data-end=\"666\"><em data-start=\"290\" data-end=\"314\"><i>Cikarang, 10 Oktober 2024</i></em> – PT Cable Tech dengan bangga menerima kunjungan industri dari siswa-siswi <strong data-start=\"390\" data-end=\"423\">SMK Muhammadiyah Klaten Utara</strong> dalam rangka memperkenalkan dunia industri secara langsung kepada para generasi muda. Kegiatan ini merupakan bagian dari komitmen PT Cable Tech dalam mendukung pendidikan vokasi serta menjalin hubungan yang lebih erat dengan dunia pendidikan.</p><p data-start=\"668\" data-end=\"882\">Sebanyak puluhan siswa didampingi guru pembimbing dan perwakilan sekolah hadir dalam kunjungan ini. Mereka disambut langsung oleh tim HR dan manajemen PT Cable Tech dengan penuh antusiasme dan semangat kolaboratif.</p><p data-start=\"884\" data-end=\"920\"><strong data-start=\"884\" data-end=\"920\">Menjelajahi Dunia Industri Nyata</strong></p><p data-start=\"922\" data-end=\"1305\">Kegiatan dimulai dengan sesi pembukaan dan pengenalan perusahaan, di mana siswa diberikan gambaran umum mengenai sejarah, proses produksi, dan struktur organisasi PT Cable Tech. Setelah itu, para peserta diajak berkeliling fasilitas produksi untuk melihat secara langsung proses kerja yang berlangsung di perusahaan, mulai dari tahap perakitan kabel hingga pengujian kualitas produk.</p><p data-start=\"1307\" data-end=\"1623\">Dengan mengenakan seragam khas berwarna hijau, para siswa tampak antusias mencatat, bertanya, dan mendokumentasikan pengalaman mereka selama kunjungan berlangsung. Tidak hanya memperluas wawasan, kegiatan ini juga memberikan inspirasi dan motivasi bagi siswa untuk lebih serius dalam menekuni bidang keahlian mereka.</p><p data-start=\"1625\" data-end=\"1672\"><strong data-start=\"1625\" data-end=\"1672\">Menjalin Kolaborasi Pendidikan dan Industri</strong></p><p data-start=\"1674\" data-end=\"2040\">Kunjungan industri ini tidak hanya bermanfaat bagi siswa, tetapi juga menjadi momen penting bagi PT Cable Tech dalam memperkuat sinergi antara dunia usaha dan dunia pendidikan. Dalam sambutannya, perwakilan manajemen PT Cable Tech menyampaikan harapannya agar kegiatan ini dapat menjadi jembatan untuk mencetak tenaga kerja terampil dan siap pakai di masa mendatang.</p><p data-start=\"2042\" data-end=\"2075\"><strong data-start=\"2042\" data-end=\"2075\">Momen Kebersamaan dan Edukasi</strong></p><p data-start=\"2077\" data-end=\"2400\">Foto bersama di depan gedung utama PT Cable Tech menjadi penutup yang berkesan dari kunjungan ini, mencerminkan kebersamaan dan semangat belajar yang tinggi dari para peserta. Diharapkan, pengalaman ini dapat menjadi bekal berharga bagi siswa SMK Muhammadiyah Klaten Utara dalam menatap masa depan mereka di dunia industri.</p>'),
('zh_TW', 31, 'Bersyukur dalam Kebersamaan: Tasyakur & Pisah Sambut Keluarga Besar PT Cable Tech', 'PT Cable Tech mengadakan acara Tasyakur sebagai bentuk rasa syukur atas pencapaian dan kebersamaan karyawan. Kegiatan ini diisi dengan doa bersama, sambutan manajemen, serta momen kebersamaan yang hangat. Acara ini bertujuan mempererat tali silaturahmi antar karyawan dan membangun semangat positif di lingkungan kerja.', '<p data-start=\"177\" data-end=\"262\"><strong data-start=\"177\" data-end=\"262\">Bersyukur dalam Kebersamaan: Tasyakur &amp; Pisah Sambut Keluarga Besar PT Cable Tech</strong></p><p data-start=\"264\" data-end=\"629\"><em data-start=\"264\" data-end=\"288\"><i>Cikarang, 23 Desember2024</i></em> – PT Cable Tech menggelar acara <strong data-start=\"321\" data-end=\"350\">Tasyakur dan Pisah Sambut</strong> sebagai bentuk ungkapan rasa syukur serta momen perpisahan dan penyambutan bagi para karyawan yang telah menjalani masa kerja dan yang baru bergabung. Acara yang penuh kehangatan ini dilaksanakan di area kantor PT Cable Tech dan dihadiri oleh para staf, karyawan, dan manajemen.</p><p data-start=\"631\" data-end=\"910\">Dengan tema <em data-start=\"643\" data-end=\"692\"><i>\"Doa Bersama dan Kebersamaan dalam Rasa Syukur\"</i></em>, kegiatan ini menjadi refleksi atas pencapaian selama tahun berjalan serta harapan akan keberkahan dan semangat baru di masa depan. Semua peserta mengenakan busana putih yang mencerminkan kesederhanaan dan kekompakan.</p><p data-start=\"912\" data-end=\"947\"><strong data-start=\"912\" data-end=\"947\">Momen Penuh Makna dan Apresiasi</strong></p><p data-start=\"949\" data-end=\"1250\">Acara diawali dengan doa bersama, dilanjutkan sambutan dari perwakilan manajemen yang menyampaikan apresiasi atas dedikasi seluruh karyawan. Dalam kesempatan ini juga diberikan penghargaan kepada tim produksi terbaik, sebagai bentuk motivasi atas kerja keras dan kontribusi nyata yang telah diberikan.</p><p data-start=\"1252\" data-end=\"1284\"><strong data-start=\"1252\" data-end=\"1284\">Pisah Sambut Penuh Keakraban</strong></p><p data-start=\"1286\" data-end=\"1617\">Momen perpisahan dan penyambutan karyawan baru dilakukan dengan penuh kekeluargaan. Tawa, cerita, dan semangat terpancar dari setiap wajah, menciptakan suasana yang penuh kehangatan. Kegiatan ini menjadi pengingat bahwa di balik setiap target dan pekerjaan, terdapat hubungan antar manusia yang saling mendukung dan tumbuh bersama.</p><p data-start=\"1619\" data-end=\"1652\"><strong data-start=\"1619\" data-end=\"1652\">Kebersamaan yang Terus Dijaga</strong></p><p data-start=\"1654\" data-end=\"1942\">Acara Tasyakur ini bukan hanya sebagai penutup dan awal perjalanan, tetapi juga sebagai simbol komitmen PT Cable Tech untuk terus menumbuhkan lingkungan kerja yang positif dan harmonis. Semoga semangat yang terbangun dalam acara ini terus menyala dalam setiap langkah perusahaan ke depan.</p>'),
('zh_TW', 32, 'Siaga dan Peduli: Edukasi Penggunaan APAR di PT Cable Tech', '', '<p data-start=\"143\" data-end=\"205\"><strong data-start=\"143\" data-end=\"205\">Siaga dan Peduli: Edukasi Penggunaan APAR di PT Cable Tech</strong></p><p data-start=\"207\" data-end=\"524\"><em data-start=\"207\" data-end=\"231\"><i>Cikarang, 22Desember 2021</i></em> – PT Cable Tech mengadakan kegiatan edukasi penggunaan Alat Pemadam Api Ringan (APAR) bagi karyawan sebagai bentuk komitmen terhadap keselamatan kerja. Kegiatan ini bertujuan untuk meningkatkan kesadaran serta keterampilan dasar dalam menghadapi kondisi darurat kebakaran di lingkungan kerja.</p><p data-start=\"526\" data-end=\"797\">Acara dipandu oleh tim pemadam profesional yang menjelaskan secara langsung jenis-jenis APAR, cara penggunaannya, hingga praktik simulasi pemadaman api. Karyawan dari berbagai divisi, termasuk security dan operator produksi, mengikuti pelatihan ini dengan penuh antusias.</p><p data-start=\"799\" data-end=\"841\"><strong data-start=\"799\" data-end=\"841\">Belajar Langsung, Siap Tanggap Darurat</strong></p><p data-start=\"843\" data-end=\"1147\">Kegiatan ini menjadi sarana pembelajaran langsung yang sangat bermanfaat, karena para peserta tidak hanya menerima teori, tetapi juga dilibatkan dalam praktik penggunaan APAR secara nyata. Dengan demikian, setiap karyawan diharapkan mampu bertindak cepat dan tepat saat terjadi situasi darurat kebakaran.</p><p data-start=\"1149\" data-end=\"1181\"><strong data-start=\"1149\" data-end=\"1181\">Keselamatan adalah Prioritas</strong></p><p data-start=\"1183\" data-end=\"1442\">PT Cable Tech terus berkomitmen membangun budaya kerja yang aman, tertib, dan responsif terhadap risiko. Edukasi seperti ini akan terus dilakukan secara berkala sebagai bagian dari upaya menjaga keselamatan dan kesehatan kerja (K3) di seluruh area perusahaan.</p><p data-start=\"1183\" data-end=\"1442\"><strong data-start=\"1449\" data-end=\"1474\">#SafetyFirstCableTech </strong><strong data-start=\"1477\" data-end=\"1495\">#PelatihanAPAR </strong><strong data-start=\"1498\" data-end=\"1518\">#BudayaKerjaAman </strong><strong data-start=\"1521\" data-end=\"1535\">#EdukasiK3</strong></p>'),
('zh_TW', 33, 'Fokus dan Peduli: Training KYT di PT Cable Tech', 'PT Cable Tech mengadakan Training KYT (Kiken Yochi Training) pada 16 Oktober 2024 untuk meningkatkan kesadaran karyawan terhadap potensi bahaya di tempat kerja. Melalui pelatihan ini, karyawan diajak mengenali risiko, berdiskusi, dan mencari solusi pencegahan agar tercipta lingkungan kerja yang lebih aman dan produktif.', '<p data-start=\"88\" data-end=\"139\"><strong data-start=\"88\" data-end=\"139\">Fokus dan Peduli: Training KYT di PT Cable Tech</strong></p><p data-start=\"141\" data-end=\"447\"><em data-start=\"141\" data-end=\"168\"><i>Cikarang, 16 Oktober 2024</i></em> – PT Cable Tech melaksanakan pelatihan KYT (Kiken Yochi Training) yang diikuti oleh para karyawan dari berbagai divisi. Pelatihan ini bertujuan untuk meningkatkan kesadaran terhadap potensi bahaya di tempat kerja serta menanamkan budaya kerja aman dan tanggap risiko sejak dini.</p><p data-start=\"449\" data-end=\"750\">Peserta training terlihat antusias mengikuti materi yang disampaikan, mulai dari identifikasi potensi bahaya hingga cara pencegahan kecelakaan kerja. Dengan suasana diskusi yang aktif dan interaktif, kegiatan ini menjadi momen penting untuk memperkuat komitmen bersama dalam menjaga keselamatan kerja.</p><p data-start=\"752\" data-end=\"787\"><strong data-start=\"752\" data-end=\"787\">Menumbuhkan Budaya K3 yang Kuat</strong></p><p data-start=\"789\" data-end=\"1046\">Melalui program KYT ini, PT Cable Tech berharap seluruh karyawan mampu menerapkan prinsip kerja aman dalam aktivitas harian. Edukasi ini menjadi bagian dari upaya berkelanjutan perusahaan dalam mewujudkan lingkungan kerja yang sehat, selamat, dan produktif.</p><figure class=\"image image_resized\" style=\"width:38.07%;\"><img style=\"aspect-ratio:1373/735;\" src=\"http://192.168.18.121:8000/storage/materi-kyt.jpeg\" width=\"1373\" height=\"735\"></figure><p data-start=\"789\" data-end=\"1046\"><strong data-start=\"1053\" data-end=\"1069\">#TrainingKYT </strong><strong data-start=\"1072\" data-end=\"1092\">#BudayaKerjaAman </strong><strong data-start=\"1095\" data-end=\"1111\">#K3CableTech</strong><br>&nbsp;</p>'),
('zh_TW', 34, 'Great Productivity Starts with TPM: TPM Training at PT Cable Tech', 'PT Cable Tech held a Total Productive Maintenance (TPM) training on May 15, 2024. The event was attended by employees from various divisions to enhance their understanding of comprehensive machine maintenance. Through this training, the company aims to build a more efficient, safe, and productive work culture.', '<p data-start=\"0\" data-end=\"69\"><strong data-start=\"0\" data-end=\"69\">Great Productivity Starts with TPM: TPM Training at PT Cable Tech</strong></p><p data-start=\"71\" data-end=\"410\"><strong data-start=\"71\" data-end=\"97\">Cikarang, May 15, 2024</strong> – PT Cable Tech conducted a Total Productive Maintenance (TPM) training as part of its commitment to improving work efficiency and comprehensive machine maintenance. This activity aimed to equip employees with an understanding of the vital role each individual plays in maintaining optimal equipment performance.</p><p data-start=\"412\" data-end=\"787\"><strong data-start=\"412\" data-end=\"463\">Building a Reliable and Productive Work Culture</strong><br>The training was attended by employees from various departments and led by experienced internal instructors who delivered TPM materials ranging from basic concepts to practical implementation in the production environment. Interactive discussions, case studies, and Q&amp;A sessions helped deepen participants\' understanding.</p><p data-start=\"789\" data-end=\"1072\"><strong data-start=\"789\" data-end=\"841\">Concrete Steps to Improve Efficiency and Quality</strong><br>Through this training, participants are expected to apply TPM principles in their daily activities, helping prevent machine breakdowns, reduce downtime, and contribute to a safer, more organized, and productive work environment.</p><p data-start=\"1074\" data-end=\"1333\"><strong data-start=\"1074\" data-end=\"1114\">Commitment to Continuous Improvement</strong><br>PT Cable Tech continues to promote TPM culture as part of its continuous improvement strategy. This training will become a regular agenda as an investment in human resource quality and overall production performance.</p>'),
('zh_TW', 35, 'PT YAMAHA INDONESIA MOTOR', '', NULL),
('zh_TW', 36, 'Independence Day Commemoration of PT Cable Tech Family', 'Cikarang, August 17, 2025 – PT Cable Tech commemorated Indonesia’s 80th Independence Day with a joyful and united celebration at the company office. With the theme “Spirit of Unity and National Pride,” employees and management came together in red-and-white attire to honor the nation’s history. The event featured a flag ceremony, inspiring remarks from company leaders, and traditional 17 August co', '<p data-start=\"176\" data-end=\"256\"><strong data-start=\"176\" data-end=\"256\">Unity in Celebration: Independence Day Commemoration of PT Cable Tech Family</strong></p><p data-start=\"258\" data-end=\"545\">Cikarang, August 17, 2025 – PT Cable Tech held a special event to commemorate Indonesia’s 80th Independence Day as a form of gratitude and appreciation for the nation’s journey. The vibrant celebration took place at the PT Cable Tech office, attended by staff, employees, and management.</p><p data-start=\"547\" data-end=\"859\">With the theme <strong data-start=\"562\" data-end=\"602\">“Spirit of Unity and National Pride”</strong>, the event became a moment to reflect on the struggles of the heroes, while igniting enthusiasm to continue contributing positively to the company and the country. All participants wore red-and-white attire, symbolizing courage, purity, and national unity.</p><p data-start=\"861\" data-end=\"898\"><strong data-start=\"861\" data-end=\"898\">A Celebration Filled With Meaning</strong></p><p data-start=\"900\" data-end=\"1210\">The event began with a ceremonial flag raising, followed by a speech from company management emphasizing the importance of preserving the values of independence—discipline, responsibility, and teamwork. Appreciation was also given to employees who consistently showed excellent performance throughout the year.</p><p data-start=\"1212\" data-end=\"1251\"><strong data-start=\"1212\" data-end=\"1251\">Festive Competitions and Shared Joy</strong></p><p data-start=\"1253\" data-end=\"1554\">Various traditional 17 August competitions brought laughter and excitement, creating a warm and joyful atmosphere. Tug of war, sack races, and other fun activities strengthened camaraderie among all participants, reminding everyone that togetherness plays a vital role in achieving collective success.</p><p data-start=\"1556\" data-end=\"1604\"><strong data-start=\"1556\" data-end=\"1604\">Strengthening National Spirit and Solidarity</strong></p><p data-start=\"1606\" data-end=\"1896\">This Independence Day commemoration was not only a celebration of history but also a symbol of PT Cable Tech’s commitment to fostering a positive, united, and high-spirited work environment. May the spirit of independence continue to inspire every step forward for the PT Cable Tech family.</p><p data-start=\"1898\" data-end=\"1983\"><strong>#IndependenceDay2025 #HUTRI80 #CableTechMerdeka #SemangatKebersamaan #CableTechFamily</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(11, 17),
(15, 17),
(16, 19),
(16, 20),
(17, 23),
(17, 24),
(16, 26),
(16, 27),
(16, 28),
(16, 29),
(11, 30),
(15, 30),
(11, 31),
(15, 31),
(11, 32),
(15, 32),
(16, 35),
(11, 36),
(15, 36);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 1, 1, 'description', NULL, '', '2025-02-26 08:09:11', '2025-02-26 08:09:11'),
(2, 'Botble\\Page\\Models\\Page', 32, 1, 'name', 'contactct', 'Contact Us', '2025-02-28 05:50:50', '2025-02-28 05:50:50'),
(3, 'Botble\\Page\\Models\\Page', 31, 1, 'name', 'newsct', 'News', '2025-02-28 05:50:56', '2025-02-28 05:50:56'),
(4, 'Botble\\Page\\Models\\Page', 30, 1, 'name', 'productct', 'Products', '2025-02-28 05:51:03', '2025-02-28 05:51:03'),
(5, 'Botble\\Page\\Models\\Page', 29, 1, 'name', 'certificatect', 'Certification', '2025-02-28 05:51:35', '2025-02-28 05:51:35'),
(6, 'Botble\\Page\\Models\\Page', 28, 1, 'name', 'companyct', 'Company', '2025-02-28 05:51:46', '2025-02-28 05:51:46'),
(7, 'Botble\\Page\\Models\\Page', 27, 1, 'name', 'aboutct', 'About Us', '2025-02-28 05:51:54', '2025-02-28 05:51:54'),
(8, 'Botble\\Page\\Models\\Page', 13, 1, 'description', NULL, '', '2025-03-03 00:51:57', '2025-03-03 00:51:57'),
(9, 'Botble\\Page\\Models\\Page', 32, 1, 'template', 'default', 'full-width', '2025-03-03 03:54:11', '2025-03-03 03:54:11'),
(10, 'Botble\\Page\\Models\\Page', 30, 1, 'template', 'default', 'full-width', '2025-03-04 07:21:05', '2025-03-04 07:21:05'),
(11, 'Botble\\Page\\Models\\Page', 29, 1, 'name', 'Certification', 'International Certifications', '2025-03-05 08:48:26', '2025-03-05 08:48:26'),
(12, 'Botble\\Page\\Models\\Page', 29, 1, 'template', 'default', 'full-width', '2025-03-05 08:48:26', '2025-03-05 08:48:26'),
(13, 'Botble\\Page\\Models\\Page', 29, 1, 'description', '', 'Cable Tech is committed to meeting global quality and safety standards. Our international certifications demonstrate compliance with industry regulations, ensuring our control cables meet the highest performance, durability, and reliability requirements. These certifications validate our dedication to excellence and continuous improvement in manufacturing.', '2025-03-05 08:48:26', '2025-03-05 08:48:26'),
(14, 'Botble\\Page\\Models\\Page', 29, 1, 'name', 'International Certifications', 'Certifications', '2025-03-05 08:50:41', '2025-03-05 08:50:41'),
(15, 'Botble\\Page\\Models\\Page', 29, 1, 'template', 'full-width', 'default', '2025-03-07 07:42:53', '2025-03-07 07:42:53'),
(16, 'Botble\\Page\\Models\\Page', 34, 1, 'name', 'tes', 'Automotive', '2025-03-10 03:54:50', '2025-03-10 03:54:50'),
(17, 'Botble\\Page\\Models\\Page', 34, 1, 'description', '', 'Our automotive control cables offer precision, durability, and reliability for throttle, brake, clutch, and transmission systems. Made from high-quality materials and engineered to industry standards, they ensure smooth performance in passenger and commercial vehicles.', '2025-03-10 03:54:50', '2025-03-10 03:54:50'),
(18, 'Botble\\Blog\\Models\\Post', 17, 1, 'image', NULL, 'gallery/bukber.jpg', '2025-03-25 07:31:09', '2025-03-25 07:31:09'),
(19, 'Botble\\Page\\Models\\Page', 36, 1, 'name', 'Achievements', 'customer appreciation', '2025-06-12 07:45:03', '2025-06-12 07:45:03'),
(20, 'Botble\\Page\\Models\\Page', 15, 1, 'description', NULL, '', '2025-06-13 01:42:14', '2025-06-13 01:42:14'),
(21, 'Botble\\Page\\Models\\Page', 3, 1, 'description', NULL, '', '2025-06-13 01:45:55', '2025-06-13 01:45:55'),
(22, 'Botble\\Blog\\Models\\Post', 30, 1, 'name', 'Kunjungan Industri SMK Muhammadiyah Klaten Utara', 'Membangun Masa Depan Bersama: Kunjungan Industri SMK Muhammadiyah Klaten Utara ke PT Cable Tech', '2025-06-13 02:19:27', '2025-06-13 02:19:27'),
(23, 'Botble\\Page\\Models\\Page', 36, 1, 'name', 'customer appreciation', 'Customer Appreciation', '2025-06-13 03:58:24', '2025-06-13 03:58:24'),
(24, 'Botble\\Blog\\Models\\Post', 32, 1, 'description', '', 'PT Cable Tech mengadakan edukasi penggunaan APAR untuk meningkatkan kesadaran dan kesiapsiagaan karyawan dalam menghadapi kebakaran. Kegiatan ini diisi dengan penjelasan teori dan praktik langsung oleh instruktur profesional. Diharapkan seluruh karyawan dapat memahami cara penggunaan APAR dengan benar demi menjaga keselamatan di lingkungan kerja.', '2025-06-16 04:52:13', '2025-06-16 04:52:13'),
(25, 'Botble\\Blog\\Models\\Post', 33, 1, 'description', 'PT Cable Tech mengadakan Training KYT (Kiken Yochi Training) pada 16 Oktober 2024 untuk meningkatkan kesadaran karyawan terhadap potensi bahaya di tempat kerja. Melalui pelatihan ini, karyawan diajak mengenali risiko, berdiskusi, dan mencari solusi pencegahan agar tercipta lingkungan kerja yang lebih aman dan produktif.', 'PT Cable Tech held KYT (Kiken Yochi Training) on October 16, 2024, to enhance employee awareness of potential hazards in the workplace. Through this training, employees were encouraged to identify risks, engage in discussions, and find preventive solutions to create a safer and more productive work environment.', '2025-06-16 07:06:32', '2025-06-16 07:06:32'),
(26, 'Botble\\Blog\\Models\\Post', 33, 1, 'name', 'Fokus dan Peduli: Training KYT di PT Cable Tech', 'Focus and Awareness: KYT Training at PT Cable Tech', '2025-06-16 07:06:48', '2025-06-16 07:06:48'),
(27, 'Botble\\Blog\\Models\\Post', 32, 1, 'name', 'Siaga dan Peduli: Edukasi Penggunaan APAR di PT Cable Tech', 'Alert and Aware: APAR Usage Education at PT Cable Tech', '2025-06-16 07:08:28', '2025-06-16 07:08:28'),
(28, 'Botble\\Blog\\Models\\Post', 32, 1, 'description', 'PT Cable Tech mengadakan edukasi penggunaan APAR untuk meningkatkan kesadaran dan kesiapsiagaan karyawan dalam menghadapi kebakaran. Kegiatan ini diisi dengan penjelasan teori dan praktik langsung oleh instruktur profesional. Diharapkan seluruh karyawan dapat memahami cara penggunaan APAR dengan benar demi menjaga keselamatan di lingkungan kerja.', 'PT Cable Tech conducted an APAR (fire extinguisher) usage training to raise employee awareness and preparedness in dealing with fire emergencies. The session included both theoretical explanations and hands-on practice led by professional instructors. It is expected that all employees will gain a proper understanding of how to use APAR correctly to ensure safety in the workplace.', '2025-06-16 07:08:28', '2025-06-16 07:08:28'),
(29, 'Botble\\Blog\\Models\\Post', 30, 1, 'name', 'Membangun Masa Depan Bersama: Kunjungan Industri SMK Muhammadiyah Klaten Utara ke PT Cable Tech', 'Building the Future Together: Industrial Visit of SMK Muhammadiyah Klaten Utara to PT Cable Tech', '2025-06-16 07:10:12', '2025-06-16 07:10:12'),
(30, 'Botble\\Blog\\Models\\Post', 30, 1, 'description', 'PT Cable Tech menerima kunjungan industri dari SMK Muhammadiyah Klaten Utara. Siswa mendapat wawasan langsung tentang proses produksi dan lingkungan kerja industri. Kegiatan ini bertujuan menambah pengetahuan, pengalaman, dan motivasi siswa dalam mempersiapkan diri menghadapi dunia kerja secara nyata.', 'PT Cable Tech hosted an industrial visit by SMK Muhammadiyah Klaten Utara. The students gained firsthand insight into the production processes and the industrial work environment. This activity was designed to enrich their knowledge, experience, and motivation as they prepare to enter the workforce.', '2025-06-16 07:10:12', '2025-06-16 07:10:12'),
(31, 'Botble\\Blog\\Models\\Post', 30, 1, 'name', 'Building the Future Together: Industrial Visit of SMK Muhammadiyah Klaten Utara to PT Cable Tech', 'Building the Future Together: Industrial Visit of SMK Muhammadiyah Klaten north to PT Cable Tech', '2025-06-16 07:10:53', '2025-06-16 07:10:53'),
(32, 'Botble\\Blog\\Models\\Post', 30, 1, 'description', 'PT Cable Tech hosted an industrial visit by SMK Muhammadiyah Klaten Utara. The students gained firsthand insight into the production processes and the industrial work environment. This activity was designed to enrich their knowledge, experience, and motivation as they prepare to enter the workforce.', 'PT Cable Tech hosted an industrial visit by SMK Muhammadiyah Klaten north. The students gained firsthand insight into the production processes and the industrial work environment. This activity was designed to enrich their knowledge, experience, and motivation as they prepare to enter the workforce.', '2025-06-16 07:10:53', '2025-06-16 07:10:53'),
(33, 'Botble\\Blog\\Models\\Post', 31, 1, 'name', 'Bersyukur dalam Kebersamaan: Tasyakur &amp; Pisah Sambut Keluarga Besar PT Cable Tech', 'Gratitude in Togetherness: Thanksgiving &amp; Farewell-Welcome Gathering of PT Cable Tech Family', '2025-06-16 07:12:31', '2025-06-16 07:12:31'),
(34, 'Botble\\Blog\\Models\\Post', 31, 1, 'description', 'PT Cable Tech mengadakan acara Tasyakur sebagai bentuk rasa syukur atas pencapaian dan kebersamaan karyawan. Kegiatan ini diisi dengan doa bersama, sambutan manajemen, serta momen kebersamaan yang hangat. Acara ini bertujuan mempererat tali silaturahmi antar karyawan dan membangun semangat positif di lingkungan kerja.', 'PT Cable Tech held a Thanksgiving event as an expression of gratitude for the achievements and togetherness of its employees. The event featured a joint prayer, remarks from management, and moments of warm fellowship. It aimed to strengthen bonds among employees and foster a positive spirit within the workplace.', '2025-06-16 07:12:31', '2025-06-16 07:12:31'),
(35, 'Botble\\Blog\\Models\\Post', 17, 1, 'name', 'Kebersamaan dalam Harmoni: Buka Bersama Keluarga Besar PT Cable Tech', 'Together in Harmony: Iftar Gathering of the PT Cable Tech Family', '2025-06-16 07:13:53', '2025-06-16 07:13:53'),
(36, 'Botble\\Blog\\Models\\Post', 17, 1, 'description', 'PT Cable Tech menggelar acara buka puasa bersama pada 18 Maret 2025 dengan tema \"Kebersamaan dalam Harmoni\". Acara ini menjadi momen spesial untuk mempererat silaturahmi antar karyawan dan manajemen, diisi dengan sambutan, tausiyah inspiratif, serta berbuka puasa bersama dalam suasana kekeluargaan yang hangat.', 'PT Cable Tech held an iftar gathering on March 18, 2025, with the theme “Together in Harmony.” The event served as a special moment to strengthen the bond between employees and management. It featured opening remarks, an inspiring religious talk (tausiyah), and a warm, family-like atmosphere during the shared iftar meal.', '2025-06-16 07:13:53', '2025-06-16 07:13:53'),
(37, 'Botble\\Page\\Models\\Page', 36, 1, 'name', 'Customer Appreciation', 'Customers Appreciation', '2025-06-16 07:16:45', '2025-06-16 07:16:45'),
(38, 'Botble\\Blog\\Models\\Post', 30, 1, 'name', 'Building the Future Together: Industrial Visit of SMK Muhammadiyah Klaten north to PT Cable Tech', 'Building the Future Together: Industrial Visit of SMK Muhammadiyah Klaten North to PT Cable Tech', '2025-06-17 01:44:18', '2025-06-17 01:44:18'),
(39, 'Botble\\Blog\\Models\\Post', 30, 1, 'description', 'PT Cable Tech hosted an industrial visit by SMK Muhammadiyah Klaten north. The students gained firsthand insight into the production processes and the industrial work environment. This activity was designed to enrich their knowledge, experience, and motivation as they prepare to enter the workforce.', 'PT Cable Tech hosted an industrial visit by SMK Muhammadiyah Klaten North. The students gained firsthand insight into the production processes and the industrial work environment. This activity was designed to enrich their knowledge, experience, and motivation as they prepare to enter the workforce.', '2025-06-17 01:44:18', '2025-06-17 01:44:18'),
(40, 'Botble\\Blog\\Models\\Post', 32, 1, 'image', 'gallery/apar.jpg', 'gallery/apar-1.jpg', '2025-12-10 03:28:20', '2025-12-10 03:28:20'),
(41, 'Botble\\Blog\\Models\\Post', 31, 1, 'image', 'gallery/tasyakur.jpeg', 'gallery/tasyafur.JPG', '2025-12-10 03:28:46', '2025-12-10 03:28:46'),
(42, 'Botble\\Blog\\Models\\Post', 30, 1, 'image', 'gallery/kunjungan-smk-klaten.jpeg', 'gallery/smk-klaten.JPG', '2025-12-10 03:29:02', '2025-12-10 03:29:02'),
(43, 'Botble\\Blog\\Models\\Post', 33, 1, 'image', 'gallery/training-kyt.jpeg', 'gallery/bukber.jpg', '2025-12-10 03:35:59', '2025-12-10 03:35:59'),
(44, 'Botble\\Blog\\Models\\Post', 34, 1, 'image', 'gallery/training-tpm.jpeg', 'gallery/smk-klaten.JPG', '2025-12-10 03:36:17', '2025-12-10 03:36:17'),
(45, 'Botble\\Blog\\Models\\Post', 35, 1, 'image', 'certification/tyt-1.png', 'certification/tyt-2-1.png', '2025-12-10 03:37:59', '2025-12-10 03:37:59'),
(46, 'Botble\\Blog\\Models\\Post', 29, 1, 'image', 'certification/tyt-7.png', 'certification/tyt-7-1.png', '2025-12-10 03:38:23', '2025-12-10 03:38:23'),
(47, 'Botble\\Blog\\Models\\Post', 28, 1, 'image', 'certification/tyt-6.png', 'certification/tyt-6-1.png', '2025-12-10 03:38:37', '2025-12-10 03:38:37'),
(48, 'Botble\\Blog\\Models\\Post', 27, 1, 'image', 'certification/tyt-3.png', 'certification/tyt-4.jpg', '2025-12-10 03:39:25', '2025-12-10 03:39:25'),
(49, 'Botble\\Blog\\Models\\Post', 26, 1, 'image', 'certification/tyt-2.png', 'certification/tyt-1-1.png', '2025-12-10 03:39:50', '2025-12-10 03:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"careers.index\":true,\"careers.create\":true,\"careers.edit\":true,\"careers.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"plugins.portfolio\":true,\"portfolio.projects.index\":true,\"portfolio.projects.create\":true,\"portfolio.projects.edit\":true,\"portfolio.projects.destroy\":true,\"portfolio.service-categories.index\":true,\"portfolio.service-categories.create\":true,\"portfolio.service-categories.edit\":true,\"portfolio.service-categories.destroy\":true,\"portfolio.services.index\":true,\"portfolio.services.create\":true,\"portfolio.services.edit\":true,\"portfolio.services.destroy\":true,\"portfolio.packages.index\":true,\"portfolio.packages.create\":true,\"portfolio.packages.edit\":true,\"portfolio.packages.destroy\":true,\"portfolio.quotation-requests.index\":true,\"portfolio.quotation-requests.create\":true,\"portfolio.quotation-requests.edit\":true,\"portfolio.quotation-requests.destroy\":true,\"portfolio.custom-fields.index\":true,\"portfolio.custom-fields.create\":true,\"portfolio.custom-fields.edit\":true,\"portfolio.custom-fields.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}', 'Admin users role', 1, 1, 1, '2025-02-25 19:08:34', '2025-02-25 19:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', 'ade449c4b944fff6299edc245b77a5db', NULL, '2025-06-16 03:02:58'),
(2, 'api_enabled', '0', NULL, '2025-06-16 03:02:58'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"faq\",\"gallery\",\"newsletter\",\"portfolio\",\"simple-slider\",\"team\",\"testimonial\",\"translation\"]', NULL, '2025-06-16 03:02:58'),
(4, 'theme', 'infinia', NULL, '2025-06-16 03:02:58'),
(5, 'show_admin_bar', '1', NULL, '2025-06-16 03:02:58'),
(6, 'language_hide_default', '0', NULL, '2025-06-16 03:02:58'),
(7, 'language_switcher_display', 'dropdown', NULL, '2025-06-16 03:02:58'),
(8, 'language_display', 'all', NULL, '2025-06-16 03:02:58'),
(9, 'language_hide_languages', '[]', NULL, '2025-06-16 03:02:58'),
(37, 'simple_slider_using_assets', '0', NULL, '2025-06-16 03:02:58'),
(38, 'admin_favicon', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy.png', NULL, '2025-06-16 03:02:58'),
(39, 'admin_logo', 'white-logo.png', NULL, '2025-06-16 03:02:58'),
(40, 'theme-infinia-favicon', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy.png', NULL, '2025-06-16 03:02:58'),
(41, 'theme-infinia-logo', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png', NULL, '2025-06-16 03:02:58'),
(42, 'theme-infinia-logo_dark', 'white-logo.png', NULL, '2025-06-16 03:02:58'),
(43, 'theme-infinia-site_title', 'PT CABLE TECH', NULL, '2025-06-16 03:02:58'),
(44, 'theme-infinia-seo_description', 'PT Cable Tech is a leading manufacturer of high-quality vehicle control cables, providing innovative and reliable solutions for the automotive industry. With a commitment to excellence, we deliver durable and precision-engineered cables to meet global standards. Explore our products and global network today', NULL, '2025-06-16 03:02:58'),
(45, 'theme-infinia-copyright', 'Copyright © %Y PT. CABLE TECH. All Rights Reserved', NULL, '2025-06-16 03:02:58'),
(46, 'theme-infinia-404_image', 'general/404.png', NULL, '2025-06-16 03:02:58'),
(47, 'theme-infinia-breadcrumb_background_image', 'products/automotive-control-cable.jpg', NULL, '2025-06-16 03:02:58'),
(48, 'theme-infinia-social_links', '[]', NULL, '2025-06-16 03:02:58'),
(49, 'theme-infinia-primary_color', 'rgb(7, 55, 99)', NULL, '2025-06-16 03:02:58'),
(50, 'theme-infinia-tp_primary_font', 'Satoshi-Variable', NULL, '2025-06-16 03:02:58'),
(51, 'theme-infinia-homepage_id', '1', NULL, '2025-06-16 03:02:58'),
(52, 'theme-infinia-blog_page_id', '12', NULL, '2025-06-16 03:02:58'),
(53, 'theme-infinia-default_theme_mode', 'light', NULL, '2025-06-16 03:02:58'),
(54, 'theme-infinia-newsletter_popup_enable', '0', NULL, '2025-06-16 03:02:58'),
(55, 'theme-infinia-newsletter_popup_image', 'general/features-6.png', NULL, '2025-06-16 03:02:58'),
(56, 'theme-infinia-newsletter_popup_title', 'Stay Updated with Infinia', NULL, '2025-06-16 03:02:58'),
(57, 'theme-infinia-newsletter_popup_subtitle', 'Newsletter', NULL, '2025-06-16 03:02:58'),
(58, 'theme-infinia-newsletter_popup_description', 'Join our newsletter and discover how Infinia\'s multipurpose business startup solution can transform your digital presence with modern, responsive design and powerful features.', NULL, '2025-06-16 03:02:58'),
(59, 'theme-infinia-footer_background_image', '', NULL, '2025-06-16 03:02:58'),
(60, 'theme-infinia-suggest_keywords', 'Startup, Agency, Creative, Consulting, IT services, Pricing', NULL, '2025-06-16 03:02:58'),
(61, 'theme-infinia-footer_text_color', '#ffffff', NULL, '2025-06-16 03:02:58'),
(62, 'theme-infinia-footer_background_color', 'rgb(0, 15, 39)', NULL, '2025-06-16 03:02:58'),
(63, 'theme-infinia-footer_heading_color', '#ffffff', NULL, '2025-06-16 03:02:58'),
(64, 'theme-infinia-footer_border_color', 'rgb(0, 18, 36)', NULL, '2025-06-16 03:02:58'),
(65, 'theme-infinia-display_header_top', '1', NULL, '2025-06-16 03:02:58'),
(66, 'theme-infinia-header_top_background_color', 'rgb(7, 55, 99)', NULL, '2025-06-16 03:02:58'),
(67, 'theme-infinia-header_top_text_color', '#ffffff', NULL, '2025-06-16 03:02:58'),
(68, 'theme-infinia-header_layout', 'full-width', NULL, '2025-06-16 03:02:58'),
(69, 'theme-infinia-admin_logo', 'general/logo-white.png', NULL, '2025-06-16 03:02:58'),
(70, 'theme-infinia-admin_favicon', 'general/favicon.png', NULL, '2025-06-16 03:02:58'),
(71, 'is_completed_get_started', '1', NULL, '2025-06-16 03:02:58'),
(72, 'admin_email', '[\"sales@cabletech.co.id\"]', NULL, '2025-06-16 03:02:58'),
(73, 'time_zone', 'Asia/Jakarta', NULL, '2025-06-16 03:02:58'),
(74, 'locale_direction', 'ltr', NULL, '2025-06-16 03:02:58'),
(75, 'enable_send_error_reporting_via_email', '0', NULL, '2025-06-16 03:02:58'),
(76, 'redirect_404_to_homepage', '0', NULL, '2025-06-16 03:02:58'),
(77, 'audit_log_data_retention_period', '30', NULL, '2025-06-16 03:02:58'),
(78, 'locale', 'en', NULL, '2025-06-16 03:02:58'),
(79, 'admin_logo_max_height', '32', NULL, '2025-06-16 03:02:58'),
(80, 'login_screen_backgrounds', '[]', NULL, '2025-06-16 03:02:58'),
(81, 'admin_title', 'PT CABLE TECH', NULL, '2025-06-16 03:02:58'),
(82, 'admin_appearance_locale', 'en', NULL, '2025-06-16 03:02:58'),
(83, 'rich_editor', 'ckeditor', NULL, '2025-06-16 03:02:58'),
(84, 'admin_appearance_layout', 'vertical', NULL, '2025-06-16 03:02:58'),
(85, 'admin_appearance_show_menu_item_icon', '1', NULL, '2025-06-16 03:02:58'),
(86, 'admin_appearance_container_width', 'container-xl', NULL, '2025-06-16 03:02:58'),
(87, 'admin_primary_font', 'Inter', NULL, '2025-06-16 03:02:58'),
(88, 'admin_primary_color', '#206bc4', NULL, '2025-06-16 03:02:58'),
(89, 'admin_secondary_color', '#6c7a91', NULL, '2025-06-16 03:02:58'),
(90, 'admin_heading_color', 'inherit', NULL, '2025-06-16 03:02:58'),
(91, 'admin_text_color', '#182433', NULL, '2025-06-16 03:02:58'),
(92, 'admin_link_color', '#206bc4', NULL, '2025-06-16 03:02:58'),
(93, 'admin_link_hover_color', '#1a569d', NULL, '2025-06-16 03:02:58'),
(94, 'admin_appearance_custom_css', '', NULL, '2025-06-16 03:02:58'),
(95, 'admin_appearance_custom_header_js', '', NULL, '2025-06-16 03:02:58'),
(96, 'admin_appearance_custom_body_js', '', NULL, '2025-06-16 03:02:58'),
(97, 'admin_appearance_custom_footer_js', '', NULL, '2025-06-16 03:02:58'),
(98, 'show_theme_guideline_link', '0', NULL, '2025-06-16 03:02:58'),
(99, 'admin_appearance_locale_direction', 'ltr', NULL, '2025-06-16 03:02:58'),
(100, 'theme-infinia-logo_height', '30', NULL, '2025-06-16 03:02:58'),
(101, 'theme-infinia-sticky_header_enabled', '1', NULL, '2025-06-16 03:02:58'),
(102, 'theme-infinia-hide_theme_mode_switcher', 'yes', NULL, '2025-06-16 03:02:58'),
(103, 'theme-infinia-animation_enabled', '1', NULL, '2025-06-16 03:02:58'),
(104, 'theme-infinia-primary_color_dark', 'rgb(7, 55, 99)', NULL, '2025-06-16 03:02:58'),
(105, 'theme-infinia-primary_gradient_from', 'rgb(28, 69, 135)', NULL, '2025-06-16 03:02:58'),
(106, 'theme-infinia-primary_gradient_to', 'rgb(11, 83, 148)', NULL, '2025-06-16 03:02:58'),
(107, 'theme-infinia-select_text_color', '#ffffff', NULL, '2025-06-16 03:02:58'),
(108, 'theme-infinia-back_to_top_enabled', '1', NULL, '2025-06-16 03:02:58'),
(109, 'theme-infinia-newsletter_popup_delay', '5', NULL, '2025-06-16 03:02:58'),
(110, 'theme-infinia-newsletter_popup_display_pages', '[\"public.index\"]', NULL, '2025-06-16 03:02:58'),
(225, 'language_auto_detect_user_language', '1', NULL, '2025-06-16 03:02:58'),
(226, 'theme-infinia-show_site_name', '0', NULL, '2025-06-16 03:02:58'),
(227, 'theme-infinia-site_title_separator', '-', NULL, '2025-06-16 03:02:58'),
(228, 'theme-infinia-seo_title', 'PT Cable Tech | Trusted Manufacturer of Control Cables', NULL, '2025-06-16 03:02:58'),
(229, 'theme-infinia-seo_index', '1', NULL, '2025-06-16 03:02:58'),
(230, 'theme-infinia-seo_og_image', '', NULL, '2025-06-16 03:02:58'),
(231, 'theme-infinia-term_and_privacy_policy_url', '', NULL, '2025-06-16 03:02:58'),
(232, 'theme-infinia-preloader_enabled', 'no', NULL, '2025-06-16 03:02:58'),
(233, 'theme-infinia-preloader_version', 'v1', NULL, '2025-06-16 03:02:58'),
(234, 'theme-infinia-lazy_load_images', '0', NULL, '2025-06-16 03:02:58'),
(235, 'theme-infinia-lazy_load_placeholder_image', '', NULL, '2025-06-16 03:02:58'),
(236, 'theme-infinia-preloader_image', '', NULL, '2025-06-16 03:02:58'),
(237, 'theme-infinia-number_of_posts_in_a_category', '12', NULL, '2025-06-16 03:02:58'),
(238, 'theme-infinia-number_of_posts_in_a_tag', '12', NULL, '2025-06-16 03:02:58'),
(239, 'theme-infinia-blog_list_style', 'style-1', NULL, '2025-06-16 03:02:58'),
(240, 'theme-infinia-id_ID-favicon', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy.png', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(241, 'theme-infinia-id_ID-logo', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(242, 'theme-infinia-id_ID-logo_dark', 'white-logo.png', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(243, 'theme-infinia-id_ID-site_title', 'PT CABLE TECH', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(244, 'theme-infinia-id_ID-seo_description', 'PT Cable Tech is a leading manufacturer of high-quality vehicle control cables, providing innovative and reliable solutions for the automotive industry. With a commitment to excellence, we deliver durable and precision-engineered cables to meet global standards. Explore our products and global network today', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(245, 'theme-infinia-id_ID-copyright', 'Copyright © %Y PT. CABLE TECH. All Rights Reserved', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(246, 'theme-infinia-id_ID-404_image', 'general/404.png', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(247, 'theme-infinia-id_ID-breadcrumb_background_image', 'backgrounds/breadcrumb.png', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(248, 'theme-infinia-id_ID-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(249, 'theme-infinia-id_ID-primary_color', 'rgb(7, 55, 99)', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(250, 'theme-infinia-id_ID-tp_primary_font', 'Satoshi-Variable', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(251, 'theme-infinia-id_ID-homepage_id', '1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(252, 'theme-infinia-id_ID-default_theme_mode', 'light', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(253, 'theme-infinia-id_ID-newsletter_popup_enable', '0', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(254, 'theme-infinia-id_ID-newsletter_popup_image', 'general/features-6.png', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(255, 'theme-infinia-id_ID-newsletter_popup_title', 'Stay Updated with Infinia', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(256, 'theme-infinia-id_ID-newsletter_popup_subtitle', 'Newsletter', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(257, 'theme-infinia-id_ID-newsletter_popup_description', 'Join our newsletter and discover how Infinia\'s multipurpose business startup solution can transform your digital presence with modern, responsive design and powerful features.', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(258, 'theme-infinia-id_ID-footer_background_image', '', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(259, 'theme-infinia-id_ID-suggest_keywords', 'Startup, Agency, Creative, Consulting, IT services, Pricing', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(260, 'theme-infinia-id_ID-footer_text_color', '#ffffff', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(261, 'theme-infinia-id_ID-footer_background_color', 'rgb(0, 15, 39)', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(262, 'theme-infinia-id_ID-footer_heading_color', '#ffffff', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(263, 'theme-infinia-id_ID-footer_border_color', 'rgb(0, 18, 36)', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(264, 'theme-infinia-id_ID-display_header_top', '1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(265, 'theme-infinia-id_ID-header_top_background_color', 'rgb(7, 55, 99)', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(266, 'theme-infinia-id_ID-header_top_text_color', '#ffffff', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(267, 'theme-infinia-id_ID-header_layout', 'full-width', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(268, 'theme-infinia-id_ID-logo_height', '30', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(269, 'theme-infinia-id_ID-sticky_header_enabled', '1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(270, 'theme-infinia-id_ID-hide_theme_mode_switcher', 'yes', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(271, 'theme-infinia-id_ID-animation_enabled', '1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(272, 'theme-infinia-id_ID-primary_color_dark', 'rgb(7, 55, 99)', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(273, 'theme-infinia-id_ID-primary_gradient_from', 'rgb(28, 69, 135)', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(274, 'theme-infinia-id_ID-primary_gradient_to', 'rgb(11, 83, 148)', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(275, 'theme-infinia-id_ID-select_text_color', '#ffffff', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(276, 'theme-infinia-id_ID-back_to_top_enabled', '1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(277, 'theme-infinia-id_ID-newsletter_popup_delay', '5', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(278, 'theme-infinia-id_ID-show_site_name', '0', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(279, 'theme-infinia-id_ID-site_title_separator', '-', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(280, 'theme-infinia-id_ID-seo_title', 'PT Cable Tech | Trusted Manufacturer of Control Cables', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(281, 'theme-infinia-id_ID-seo_index', '1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(282, 'theme-infinia-id_ID-seo_og_image', '', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(283, 'theme-infinia-id_ID-term_and_privacy_policy_url', '', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(284, 'theme-infinia-id_ID-preloader_enabled', 'no', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(285, 'theme-infinia-id_ID-preloader_version', 'v1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(286, 'theme-infinia-id_ID-lazy_load_images', '0', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(287, 'theme-infinia-id_ID-lazy_load_placeholder_image', '', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(288, 'theme-infinia-id_ID-preloader_image', '', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(289, 'theme-infinia-id_ID-blog_list_style', 'style-1', '2025-06-09 02:50:58', '2025-06-16 03:02:58'),
(290, 'theme-infinia-zh_TW-favicon', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy.png', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(291, 'theme-infinia-zh_TW-logo', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(292, 'theme-infinia-zh_TW-logo_dark', 'white-logo.png', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(293, 'theme-infinia-zh_TW-site_title', 'PT CABLE TECH', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(294, 'theme-infinia-zh_TW-seo_description', 'PT Cable Tech is a leading manufacturer of high-quality vehicle control cables, providing innovative and reliable solutions for the automotive industry. With a commitment to excellence, we deliver durable and precision-engineered cables to meet global standards. Explore our products and global network today', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(295, 'theme-infinia-zh_TW-copyright', 'Copyright © %Y PT. CABLE TECH. All Rights Reserved', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(296, 'theme-infinia-zh_TW-404_image', 'general/404.png', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(297, 'theme-infinia-zh_TW-breadcrumb_background_image', 'backgrounds/breadcrumb.png', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(298, 'theme-infinia-zh_TW-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(299, 'theme-infinia-zh_TW-primary_color', 'rgb(7, 55, 99)', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(300, 'theme-infinia-zh_TW-tp_primary_font', 'Satoshi-Variable', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(301, 'theme-infinia-zh_TW-homepage_id', '1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(302, 'theme-infinia-zh_TW-default_theme_mode', 'light', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(303, 'theme-infinia-zh_TW-newsletter_popup_enable', '0', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(304, 'theme-infinia-zh_TW-newsletter_popup_image', 'general/features-6.png', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(305, 'theme-infinia-zh_TW-newsletter_popup_title', 'Stay Updated with Infinia', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(306, 'theme-infinia-zh_TW-newsletter_popup_subtitle', 'Newsletter', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(307, 'theme-infinia-zh_TW-newsletter_popup_description', 'Join our newsletter and discover how Infinia\'s multipurpose business startup solution can transform your digital presence with modern, responsive design and powerful features.', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(308, 'theme-infinia-zh_TW-footer_background_image', '', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(309, 'theme-infinia-zh_TW-suggest_keywords', 'Startup, Agency, Creative, Consulting, IT services, Pricing', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(310, 'theme-infinia-zh_TW-footer_text_color', '#ffffff', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(311, 'theme-infinia-zh_TW-footer_background_color', 'rgb(0, 15, 39)', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(312, 'theme-infinia-zh_TW-footer_heading_color', '#ffffff', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(313, 'theme-infinia-zh_TW-footer_border_color', 'rgb(0, 18, 36)', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(314, 'theme-infinia-zh_TW-display_header_top', '1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(315, 'theme-infinia-zh_TW-header_top_background_color', 'rgb(7, 55, 99)', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(316, 'theme-infinia-zh_TW-header_top_text_color', '#ffffff', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(317, 'theme-infinia-zh_TW-header_layout', 'full-width', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(318, 'theme-infinia-zh_TW-logo_height', '30', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(319, 'theme-infinia-zh_TW-sticky_header_enabled', '1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(320, 'theme-infinia-zh_TW-hide_theme_mode_switcher', 'yes', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(321, 'theme-infinia-zh_TW-animation_enabled', '1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(322, 'theme-infinia-zh_TW-primary_color_dark', 'rgb(7, 55, 99)', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(323, 'theme-infinia-zh_TW-primary_gradient_from', 'rgb(28, 69, 135)', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(324, 'theme-infinia-zh_TW-primary_gradient_to', 'rgb(11, 83, 148)', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(325, 'theme-infinia-zh_TW-select_text_color', '#ffffff', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(326, 'theme-infinia-zh_TW-back_to_top_enabled', '1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(327, 'theme-infinia-zh_TW-newsletter_popup_delay', '5', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(328, 'theme-infinia-zh_TW-show_site_name', '0', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(329, 'theme-infinia-zh_TW-site_title_separator', '-', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(330, 'theme-infinia-zh_TW-seo_title', 'PT Cable Tech | Trusted Manufacturer of Control Cables', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(331, 'theme-infinia-zh_TW-seo_index', '1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(332, 'theme-infinia-zh_TW-seo_og_image', '', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(333, 'theme-infinia-zh_TW-term_and_privacy_policy_url', '', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(334, 'theme-infinia-zh_TW-preloader_enabled', 'no', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(335, 'theme-infinia-zh_TW-preloader_version', 'v1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(336, 'theme-infinia-zh_TW-lazy_load_images', '0', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(337, 'theme-infinia-zh_TW-lazy_load_placeholder_image', '', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(338, 'theme-infinia-zh_TW-preloader_image', '', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(339, 'theme-infinia-zh_TW-blog_list_style', 'style-1', '2025-06-09 02:51:25', '2025-06-16 03:02:58'),
(340, 'theme-infinia-ja-favicon', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy.png', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(341, 'theme-infinia-ja-logo', 'logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(342, 'theme-infinia-ja-logo_dark', 'white-logo.png', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(343, 'theme-infinia-ja-site_title', 'PT CABLE TECH', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(344, 'theme-infinia-ja-seo_description', 'PT Cable Tech is a leading manufacturer of high-quality vehicle control cables, providing innovative and reliable solutions for the automotive industry. With a commitment to excellence, we deliver durable and precision-engineered cables to meet global standards. Explore our products and global network today', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(345, 'theme-infinia-ja-copyright', 'Copyright © %Y PT. CABLE TECH. All Rights Reserved', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(346, 'theme-infinia-ja-404_image', 'general/404.png', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(347, 'theme-infinia-ja-breadcrumb_background_image', 'backgrounds/breadcrumb.png', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(348, 'theme-infinia-ja-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(349, 'theme-infinia-ja-primary_color', 'rgb(7, 55, 99)', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(350, 'theme-infinia-ja-tp_primary_font', 'Satoshi-Variable', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(351, 'theme-infinia-ja-homepage_id', '1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(352, 'theme-infinia-ja-default_theme_mode', 'light', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(353, 'theme-infinia-ja-newsletter_popup_enable', '0', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(354, 'theme-infinia-ja-newsletter_popup_image', 'general/features-6.png', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(355, 'theme-infinia-ja-newsletter_popup_title', 'Stay Updated with Infinia', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(356, 'theme-infinia-ja-newsletter_popup_subtitle', 'Newsletter', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(357, 'theme-infinia-ja-newsletter_popup_description', 'Join our newsletter and discover how Infinia\'s multipurpose business startup solution can transform your digital presence with modern, responsive design and powerful features.', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(358, 'theme-infinia-ja-footer_background_image', '', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(359, 'theme-infinia-ja-suggest_keywords', 'Startup, Agency, Creative, Consulting, IT services, Pricing', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(360, 'theme-infinia-ja-footer_text_color', '#ffffff', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(361, 'theme-infinia-ja-footer_background_color', 'rgb(0, 15, 39)', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(362, 'theme-infinia-ja-footer_heading_color', '#ffffff', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(363, 'theme-infinia-ja-footer_border_color', 'rgb(0, 18, 36)', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(364, 'theme-infinia-ja-display_header_top', '1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(365, 'theme-infinia-ja-header_top_background_color', 'rgb(7, 55, 99)', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(366, 'theme-infinia-ja-header_top_text_color', '#ffffff', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(367, 'theme-infinia-ja-header_layout', 'full-width', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(368, 'theme-infinia-ja-logo_height', '30', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(369, 'theme-infinia-ja-sticky_header_enabled', '1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(370, 'theme-infinia-ja-hide_theme_mode_switcher', 'yes', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(371, 'theme-infinia-ja-animation_enabled', '1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(372, 'theme-infinia-ja-primary_color_dark', 'rgb(7, 55, 99)', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(373, 'theme-infinia-ja-primary_gradient_from', 'rgb(28, 69, 135)', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(374, 'theme-infinia-ja-primary_gradient_to', 'rgb(11, 83, 148)', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(375, 'theme-infinia-ja-select_text_color', '#ffffff', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(376, 'theme-infinia-ja-back_to_top_enabled', '1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(377, 'theme-infinia-ja-newsletter_popup_delay', '5', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(378, 'theme-infinia-ja-show_site_name', '0', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(379, 'theme-infinia-ja-site_title_separator', '-', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(380, 'theme-infinia-ja-seo_title', 'PT Cable Tech | Trusted Manufacturer of Control Cables', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(381, 'theme-infinia-ja-seo_index', '1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(382, 'theme-infinia-ja-seo_og_image', '', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(383, 'theme-infinia-ja-term_and_privacy_policy_url', '', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(384, 'theme-infinia-ja-preloader_enabled', 'no', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(385, 'theme-infinia-ja-preloader_version', 'v1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(386, 'theme-infinia-ja-lazy_load_images', '0', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(387, 'theme-infinia-ja-lazy_load_placeholder_image', '', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(388, 'theme-infinia-ja-preloader_image', '', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(389, 'theme-infinia-ja-blog_list_style', 'style-1', '2025-06-09 02:51:32', '2025-06-16 03:02:58'),
(390, 'theme-infinia-service_style', 'style-1', NULL, '2025-06-16 03:02:58'),
(391, 'theme-infinia-theme_breadcrumb_enabled', '0', NULL, '2025-06-16 03:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2025-02-25 19:08:56', '2025-06-09 02:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '<b>Precision &amp; Innovation</b> in <b>Control Cables</b>', 'sliders/image-fx-1.jpg', '', 'PT Cable Tech is a leading manufacturer of high-quality control cables for various industries.', 0, '2025-02-25 19:08:56', '2025-02-27 04:16:28'),
(2, 1, '<b>Reliable Control Cables</b> for <b>Every Industry</b>', 'sliders/slide2-1.jpg', '', 'We delivers precision-engineered control cables for superior performance and durability.', 1, '2025-02-25 19:08:56', '2025-02-28 03:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(14, 'automotive', 8, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-02-25 19:08:39', '2025-03-05 02:17:47'),
(24, 'botble-cms', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(25, 'javascript', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(26, 'open-source', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(27, 'web-design', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(28, 'api-development', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(29, 'full-stack-development', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(30, 'vietnam-developer', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(31, 'github-projects', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(47, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(48, 'projects', 2, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(49, 'services', 3, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(50, 'services-v2', 4, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(51, 'services-v3', 5, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(52, 'our-team', 6, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(53, 'our-team-v2', 7, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(54, 'our-team-v3', 8, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(55, 'our-team-v4', 9, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(56, 'our-team-v5', 10, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(57, 'our-team-v6', 11, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(58, 'blog', 12, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(59, 'contact', 13, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(60, 'about-us', 14, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(61, 'about-us-v2', 15, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(62, 'about-us-v3', 16, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(63, 'pricing', 17, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(64, 'pricing-v2', 18, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(65, 'pricing-v3', 19, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(66, 'coming-soon', 20, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(67, 'features', 21, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(68, 'features-v2', 22, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(69, 'privacy-policy', 23, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(70, 'work-process', 24, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(71, 'page-integration', 25, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(72, 'book-a-demo', 26, 'Botble\\Page\\Models\\Page', '', '2025-02-25 19:08:55', '2025-02-25 19:08:55'),
(81, 'awards-certifications', 9, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-02-25 19:08:56', '2025-03-05 08:41:29'),
(82, 'international-certifications', 10, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2025-02-25 19:08:56', '2025-03-05 08:50:26'),
(83, 'senior-full-stack-engineer', 1, 'ArchiElite\\Career\\Models\\Career', 'careers', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(84, 'lead-backend-developer', 2, 'ArchiElite\\Career\\Models\\Career', 'careers', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(85, 'uiux-designer', 3, 'ArchiElite\\Career\\Models\\Career', 'careers', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(86, 'product-manager', 4, 'ArchiElite\\Career\\Models\\Career', 'careers', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(87, 'data-scientist', 5, 'ArchiElite\\Career\\Models\\Career', 'careers', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(88, 'devops-engineer', 6, 'ArchiElite\\Career\\Models\\Career', 'careers', '2025-02-25 19:08:57', '2025-02-25 19:08:57'),
(89, 'automotive', 1, 'Botble\\Portfolio\\Models\\ServiceCategory', 'service-categories', '2025-02-25 19:09:09', '2025-03-04 01:00:15'),
(90, 'motorcycle', 2, 'Botble\\Portfolio\\Models\\ServiceCategory', 'service-categories', '2025-02-25 19:09:09', '2025-03-04 01:00:57'),
(91, 'industrial-custom-solutions', 3, 'Botble\\Portfolio\\Models\\ServiceCategory', 'service-categories', '2025-02-25 19:09:09', '2025-03-04 01:01:25'),
(93, 'trial-plan', 1, 'Botble\\Portfolio\\Models\\Package', 'packages', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(94, 'standard', 2, 'Botble\\Portfolio\\Models\\Package', 'packages', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(95, 'business', 3, 'Botble\\Portfolio\\Models\\Package', 'packages', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(96, 'enterprise', 4, 'Botble\\Portfolio\\Models\\Package', 'packages', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(97, 'michael-anderson', 1, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(98, 'jennifer-brown', 2, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(99, 'sarah-brown', 3, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(100, 'david-clark', 4, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(101, 'jessica-carter', 5, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(102, 'lauren-graham', 6, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(103, 'james-bennett', 7, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(104, 'william-foster', 8, 'Botble\\Team\\Models\\Team', 'teams', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(105, 'about', 27, 'Botble\\Page\\Models\\Page', '', '2025-02-28 01:57:16', '2025-03-19 00:21:29'),
(106, 'companyct', 28, 'Botble\\Page\\Models\\Page', '', '2025-02-28 01:57:29', '2025-02-28 01:57:29'),
(108, 'products', 30, 'Botble\\Page\\Models\\Page', '', '2025-02-28 01:57:55', '2025-03-05 07:52:32'),
(109, 'newsct', 31, 'Botble\\Page\\Models\\Page', '', '2025-02-28 01:58:10', '2025-02-28 01:58:10'),
(110, 'contact-us', 32, 'Botble\\Page\\Models\\Page', '', '2025-02-28 01:58:21', '2025-03-17 09:02:01'),
(111, 'seatlock-cable', 7, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-03-04 05:48:48', '2025-03-04 05:48:48'),
(112, 'motorcycle', 9, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-05 03:50:00', '2025-03-05 03:50:00'),
(113, 'industrial-custom-solutions', 10, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-05 03:51:55', '2025-03-05 03:51:55'),
(115, 'tsen-yeou-spring-coltd', 12, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-07 01:33:59', '2025-03-07 01:33:59'),
(116, 'plant-name-chang-zhou-tsen-you', 13, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-07 01:39:38', '2025-03-07 01:39:38'),
(117, 'kakosi-co-ltd', 14, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-07 01:41:00', '2025-03-07 01:41:00'),
(118, 'pt-cable-tech', 15, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-07 01:42:41', '2025-03-07 01:42:41'),
(120, 'international-certifications', 17, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-07 07:55:39', '2025-03-07 07:55:39'),
(121, 'certifications', 33, 'Botble\\Page\\Models\\Page', '', '2025-03-07 09:00:53', '2025-03-07 09:00:53'),
(122, 'our-achievement', 18, 'Botble\\Portfolio\\Models\\Project', 'projects', '2025-03-07 09:02:06', '2025-03-07 09:02:06'),
(123, 'cable-parking-brake-lr', 8, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-03-10 00:50:17', '2025-03-10 00:50:17'),
(124, 'lever-comp-fuel-lid-opener', 9, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-03-10 02:39:23', '2025-03-10 02:39:23'),
(126, 'automotive', 10, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-03-10 04:50:48', '2025-03-10 04:50:48'),
(127, 'motorcycle', 11, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-03-10 06:33:23', '2025-03-10 06:33:23'),
(128, 'industrial-custom-solutions', 12, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-03-10 06:37:25', '2025-03-10 06:37:25'),
(129, 'certifications', 5, 'Botble\\Portfolio\\Models\\ServiceCategory', 'service-categories', '2025-03-13 05:48:41', '2025-03-13 05:48:41'),
(130, 'international-certifications', 13, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-03-13 05:48:56', '2025-03-13 05:48:56'),
(134, 'kebersamaan-dalam-harmoni-buka-bersama-keluarga-besar-pt-cable-tech', 17, 'Botble\\Blog\\Models\\Post', '', '2025-03-25 06:17:47', '2025-03-25 06:17:47'),
(135, 'company-news', 10, 'Botble\\Blog\\Models\\Category', '', '2025-03-25 07:34:54', '2025-03-25 07:34:54'),
(136, 'events-activities', 11, 'Botble\\Blog\\Models\\Category', '', '2025-03-25 07:35:10', '2025-03-25 07:35:10'),
(137, 'product-updates', 12, 'Botble\\Blog\\Models\\Category', '', '2025-03-25 07:35:21', '2025-03-25 07:35:21'),
(138, 'industry-insights', 13, 'Botble\\Blog\\Models\\Category', '', '2025-03-25 07:35:31', '2025-03-25 07:35:31'),
(139, 'employee-spotlight', 14, 'Botble\\Blog\\Models\\Category', '', '2025-03-25 07:35:43', '2025-03-25 07:35:43'),
(140, 'csr-sustainability', 15, 'Botble\\Blog\\Models\\Category', '', '2025-03-25 07:35:57', '2025-03-25 07:35:57'),
(141, 'inter', 35, 'Botble\\Page\\Models\\Page', '', '2025-03-25 07:50:20', '2025-03-25 07:50:20'),
(142, 'customer-appreciation', 36, 'Botble\\Page\\Models\\Page', '', '2025-03-25 07:50:44', '2025-06-12 07:45:03'),
(143, 'certifications-1', 16, 'Botble\\Blog\\Models\\Category', '', '2025-06-09 02:18:13', '2025-06-09 02:18:13'),
(144, 'international-certifications', 17, 'Botble\\Blog\\Models\\Category', '', '2025-06-09 02:18:26', '2025-06-09 02:18:26'),
(146, 'pt-yamaha-indonesia-motor-1', 19, 'Botble\\Blog\\Models\\Post', '', '2025-06-09 02:19:28', '2025-06-09 02:19:28'),
(147, 'pt-toyota-indonesia', 20, 'Botble\\Blog\\Models\\Post', '', '2025-06-09 02:19:51', '2025-06-09 02:19:51'),
(150, 'iso', 23, 'Botble\\Blog\\Models\\Post', '', '2025-06-09 02:26:44', '2025-06-09 02:26:44'),
(151, 'iatf', 24, 'Botble\\Blog\\Models\\Post', '', '2025-06-09 02:27:02', '2025-06-09 02:27:02'),
(152, 'cable-assy-hood-lock-control', 15, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-09 03:05:05', '2025-06-09 03:05:05'),
(153, 'cable-comp-fuel-lid-opener', 16, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-09 03:06:43', '2025-06-09 03:06:43'),
(154, 'wire-pull', 17, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-09 03:08:24', '2025-06-09 03:08:24'),
(155, 'cable-clutch', 18, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-09 06:07:38', '2025-06-09 06:07:38'),
(156, 'speedo-cable-assy', 19, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-09 06:12:34', '2025-06-09 06:12:34'),
(158, 'pt-yamaha-indonesia-motor', 26, 'Botble\\Blog\\Models\\Post', '', '2025-06-10 01:04:10', '2025-06-10 01:04:10'),
(159, 'pt-yamaha-indonesia-motor-2', 27, 'Botble\\Blog\\Models\\Post', '', '2025-06-10 01:04:49', '2025-06-10 01:04:49'),
(160, 'pt-kawa', 28, 'Botble\\Blog\\Models\\Post', '', '2025-06-10 01:06:25', '2025-06-10 01:06:25'),
(161, 'pt-astra-daihatsu-motor', 29, 'Botble\\Blog\\Models\\Post', '', '2025-06-10 01:07:01', '2025-06-10 01:07:01'),
(162, 'kunjungan', 30, 'Botble\\Blog\\Models\\Post', '', '2025-06-13 02:15:53', '2025-06-13 02:15:53'),
(163, 'bersyukur-dalam-kebersamaan-tasyakur-pisah-sambut-keluarga-besar-pt-cable-tech', 31, 'Botble\\Blog\\Models\\Post', '', '2025-06-13 02:21:20', '2025-06-13 02:21:20'),
(164, 'siaga-dan-peduli-edukasi-penggunaan-apar-di-pt-cable-tech', 32, 'Botble\\Blog\\Models\\Post', '', '2025-06-16 04:51:32', '2025-06-16 04:51:32'),
(165, 'fokus-dan-peduli-training-kyt-di-pt-cable-tech', 33, 'Botble\\Blog\\Models\\Post', '', '2025-06-16 06:55:22', '2025-06-16 06:55:22'),
(166, 'produktivitas-hebat-dimulai-dari-tpm-training-tpm-di-pt-cable-tech', 34, 'Botble\\Blog\\Models\\Post', '', '2025-06-16 07:04:31', '2025-06-16 07:04:31'),
(167, 'window-reguator', 20, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-17 03:57:34', '2025-06-17 03:57:34'),
(168, 'door-look', 21, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-17 03:58:02', '2025-06-17 03:58:02'),
(169, 'sheet-cable', 22, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-17 03:58:25', '2025-06-17 03:58:25'),
(170, 'brake-cable', 23, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-06-17 03:58:51', '2025-06-17 03:58:51'),
(171, 'pt-yamaha-indonesia-motor-3', 35, 'Botble\\Blog\\Models\\Post', '', '2025-07-08 02:28:35', '2025-07-08 02:28:35'),
(172, 'door-latch-cable', 24, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-07-08 06:13:08', '2025-07-08 06:13:08'),
(173, 'tipup-sheet-cable', 25, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-07-08 08:33:47', '2025-07-08 08:33:47'),
(174, 'cable-front-door-lock', 37, 'Botble\\Page\\Models\\Page', '', '2025-07-28 06:37:36', '2025-07-28 06:37:36'),
(175, 'cable-front-door-lock', 26, 'Botble\\Portfolio\\Models\\Service', 'services', '2025-07-28 06:40:56', '2025-07-28 06:40:56'),
(176, 'independence-day-commemoration-of-pt-cable-tech-family', 36, 'Botble\\Blog\\Models\\Post', '', '2025-12-10 03:34:56', '2025-12-10 03:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Botble CMS', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(2, 'JavaScript', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(3, 'Open Source', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(4, 'Web Design', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(5, 'API Development', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(6, 'Full Stack Development', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(7, 'Vietnam Developer', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43'),
(8, 'GitHub Projects', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-02-25 19:08:43', '2025-02-25 19:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `socials` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES
(1, 'Michael Anderson', 'teams/1.png', 'Co-Founder', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+15515291277', 'wgreenfelder@hotmail.com', '415 Lukas Mall\nBlockbury, WA 92149-3618', NULL, 'Aut consequatur expedita quidem rerum et eveniet accusantium. Beatae tenetur culpa libero ullam esse. Consequatur dolorem debitis autem in aut nisi est. Necessitatibus velit eos qui veritatis corrupti et hic. Facilis consequatur et autem nisi non ut et doloremque. Sit sit qui eum enim.'),
(2, 'Jennifer Brown', 'teams/2.png', 'CEO &amp; Founder', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+15123982334', 'brakus.ashlee@hotmail.com', '191 Prosacco Mission\nPort Fabianbury, IA 98586-8167', NULL, 'Quia saepe totam adipisci quo id libero. Est ut impedit accusamus deleniti velit et. Perferendis rerum animi voluptas et quo ut. Sed natus ipsa accusantium voluptatibus corrupti.'),
(3, 'Sarah Brown', 'teams/3.png', 'Product Manager', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+18723495872', 'euna96@gmail.com', '46404 Morgan Key\nGrimesville, TN 21010', NULL, 'Commodi id nesciunt tempore quia corrupti voluptas error. Repellendus et nihil voluptatem a. Non ipsa repellendus odit ut dignissimos ea.'),
(4, 'David Clark', 'teams/4.png', 'UX/UI Designer', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+14452633391', 'francesco.reilly@gmail.com', '770 Jaskolski Court Suite 334\nAndrewside, NC 09562', NULL, 'Beatae eum voluptatum id. Earum deleniti eaque autem et vel. Enim earum assumenda quis corrupti. Dolorem ipsam voluptatem laboriosam et dolorem ut nemo. Eligendi omnis ut ducimus suscipit necessitatibus. Explicabo dicta optio nihil ex omnis facere assumenda ipsum.'),
(5, 'Jessica Carter', 'teams/5.png', 'DevOps Engineer', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+16142729878', 'vern.schumm@gmail.com', '175 Stehr Mission Suite 625\nMarcoside, MD 92210', NULL, 'Est nemo repellat repellendus reiciendis recusandae. Aperiam vel sint est et. Magnam quo assumenda rerum aliquid quos molestiae. Iste vel architecto quo vel optio. Neque ea recusandae nisi recusandae est.'),
(6, 'Lauren Graham', 'teams/6.png', 'Data Analyst', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+18567295931', 'jules.koepp@flatley.com', '489 Harber Crest\nNorth Allene, CO 56393', NULL, 'Inventore enim ea qui rem excepturi aliquid sapiente. Animi numquam reprehenderit doloremque eius. Deleniti voluptas dicta reiciendis est iusto et quae.'),
(7, 'James Bennett', 'teams/7.png', 'Sales Executive', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+16418644197', 'cwunsch@yahoo.com', '2174 Orn Dam\nKolbyfort, DC 65762-6108', NULL, 'Assumenda sit aut et eos ut officia repellendus. Ut qui quidem aut exercitationem quia adipisci iusto. Vitae eius rerum ut. Minus quam aliquid nisi. Minima vel nisi quis quas fugiat harum.'),
(8, 'William Foster', 'teams/8.png', 'Marketing Specialist', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', 'published', '2025-02-25 19:08:40', '2025-02-25 19:08:40', '<p>\n    As Co-Founder of Infinia Agency, Daniel Martinez brings a wealth of knowledge, experience, and visionary leadership to the team. With a career spanning over two decades in the industry,\n    <span>Daniel</span> has been instrumental in driving the strategic direction and growth of Infinia. His passion for innovation and excellence is evident in every project and initiative he undertakes.\n</p>\n<h5>Educational Qualifications</h5>\n<p>Daniel\'s strong educational foundation has equipped his with the strategic acumen and marketing expertise necessary to lead Infinia Agency to success.</p>\n<ul>\n    <li>\n        <p>\n            MBA in Business Administration\n            <span>- Harvard Business School</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Bachelor’s Degree in Marketing\n            <span> - University of California, Berkeley</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Certified Digital Marketing Professional (CDMP)\n            <span> - Digital Marketing Institute</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Executive Leadership Program\n            <span> - Stanford Graduate School of Business</span>\n        </p>\n    </li>\n    <li>\n        <p>\n            Advanced Certificate in Strategic Management\n            <span> - MIT Sloan School of Management</span>\n        </p>\n    </li>\n</ul>\n<h5>Awards</h5>\n<p>Daniel\'s contributions to the industry have been recognized through numerous awards, underscoring his impact and dedication.</p>\n<ul>\n    <li>\n        <p>Top 50 in Marketing (2022)</p>\n    </li>\n    <li>\n        <p>Innovative Leader of the Year (2021)</p>\n    </li>\n    <li>\n        <p>Excellence in Business Strategy Award (2020)</p>\n    </li>\n    <li>\n        <p>Marketing Excellence Award (2019)</p>\n    </li>\n    <li>\n        <p>Businessman of the Year (2018)</p>\n    </li>\n    <li>\n        <p>Leadership in Innovation Award (2017)</p>\n    </li>\n</ul>\n<h5>Latest Projects</h5>\n<p>\n    Digital Transformation Initiative for Global Retailer:\n    <span>Led a comprehensive digital overhaul for a major retail chain, enhancing their online presence and optimizing their e-commerce platform.</span>\n</p>\n<p>Sustainability Strategy Development for a Fortune 500 Company: <span>Designed and implemented a sustainability strategy that reduced the</span></p>\n', '+13322842276', 'ilynch@friesen.info', '8345 Kirlin Falls\nSouth Sydneytown, DE 60375-7165', NULL, 'Similique enim ad mollitia velit iusto. Fuga enim saepe aliquid. Fugiat aliquam voluptatem temporibus reprehenderit quos. Earum voluptas unde rerum laborum est dolores harum aut. Quo velit ipsam quis aut.');

-- --------------------------------------------------------

--
-- Table structure for table `teams_translations`
--

CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) NOT NULL,
  `teams_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'James Dopli', 'The team\'s dedication and expertise have transformed our business. Their innovative solutions and outstanding support have significantly boosted our productivity and client satisfaction. Allowing us to streamline our processes and focus on what matters most.', 'testimonials/avatar-10.png', 'CEO of Tech Innovators Inc', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(2, 'Theodore Handle', 'Our collaboration with the team has been instrumental in optimizing our project management processes. The extensive selection of over 1200 UI blocks has allowed us to customize our project interfaces to meet specific client needs effectively. The generous 10 GB of cloud storage has provided ample space for storing project files securely, enabling seamless collaboration across distributed teams.', 'testimonials/avatar-2.png', 'Software Engineer', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(3, 'Shahnewaz Sakil', 'The individual email account feature has improved internal communication clarity and professionalism. Moreover, the premium support team\'s responsiveness and expertise have ensured minimal disruptions and quick resolutions to any technical challenges we\'ve faced. I highly recommend their services for any enterprise seeking robust SaaS solutions.', 'testimonials/avatar-1.png', 'Marketing Director', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(4, 'Albert Flores', 'Our experience with this team has surpassed our expectations on every front. The comprehensive suite of over 1200 UI blocks has enabled us to craft highly functional and aesthetically pleasing user interfaces that resonate with our target audience. Equally impressive is the premium support team\'s proactive approach.', 'testimonials/avatar-7.png', 'Software Engineer', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(5, 'James Dopli', 'The team\'s dedication and expertise have transformed our business. Their innovative solutions and outstanding support have significantly boosted our productivity and client satisfaction. Allowing us to streamline our processes and focus on what matters most.', 'testimonials/avatar-5.png', 'CEO of Tech Innovators Inc', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(6, 'Theodore Handle', 'Our collaboration with the team has been instrumental in optimizing our project management processes. The extensive selection of over 1200 UI blocks has allowed us to customize our project interfaces to meet specific client needs effectively. The generous 10 GB of cloud storage has provided ample space for storing project files securely, enabling seamless collaboration across distributed teams.', 'testimonials/avatar-13.png', 'Software Engineer', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(7, 'Dr. Everette Pollich', 'Assumenda ut necessitatibus est. At totam in porro officia laborum aut tempora tenetur. Et iusto velit ratione commodi. Dolorem et cumque eligendi quis reprehenderit.', 'testimonials/avatar-14.png', 'Reichel LLC', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(8, 'Dewitt Turcotte', 'Autem reiciendis sit dolor rerum qui eos. Quisquam pariatur asperiores reprehenderit dolores aut. Perspiciatis quia delectus ea ipsa et eligendi. Enim doloribus fugiat voluptates atque.', 'testimonials/avatar-18.png', 'Prosacco LLC', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(9, 'Toni Reinger MD', 'Cumque odio modi in provident consequuntur et laborum quis. Sint velit ut sint sit perferendis quia maiores quaerat. Enim unde delectus qui nobis provident.', 'testimonials/avatar-19.png', 'Witting, Gorczany and Blick', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(10, 'Madisyn McCullough', 'Nihil at molestiae modi assumenda illo officia error necessitatibus. Nemo voluptate quaerat incidunt cupiditate iste necessitatibus. Vitae est aut dignissimos dolor consectetur labore debitis. Blanditiis mollitia voluptatem itaque nemo.', 'testimonials/avatar-10.png', 'Reinger-Reinger', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(11, 'Daniella Kovacek', 'Vel et qui consectetur distinctio voluptas veniam dolorem ut. In aut velit odit quos dolores voluptatum quibusdam. Et blanditiis vel repellendus eos libero quisquam cumque. Tenetur sequi deleniti sequi molestiae accusamus. Aut temporibus non sequi.', 'testimonials/avatar-12.png', 'Labadie-Hayes', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(12, 'Christophe Morissette', 'Ex est molestias minus sit nisi qui. Accusantium rerum quia reprehenderit harum animi ab atque. In ea corrupti quo sed. Eum aut laborum commodi tempore ducimus.', 'testimonials/avatar-4.png', 'Ledner, Parisian and Heaney', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(13, 'Annabell Hartmann', 'Nemo quidem dolorem corporis vel. Nisi nulla autem quidem reiciendis vel assumenda. Sunt sit excepturi reiciendis est similique.', 'testimonials/avatar-15.png', 'Gutmann, Schultz and Kling', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(14, 'Mrs. Clemmie Metz', 'Explicabo et facere natus ratione facilis. Voluptas nulla excepturi harum. Earum vero unde veniam ullam et. Eveniet optio ipsa in corporis.', 'testimonials/avatar-9.png', 'Kling, Raynor and Berge', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(15, 'Mavis Little PhD', 'Voluptates labore non ratione non. Error saepe quaerat labore est molestiae corrupti. Est ut non fuga nam rerum fuga.', 'testimonials/avatar-7.png', 'Smith, Greenholt and Olson', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41'),
(16, 'Gisselle Ebert', 'Expedita cumque voluptates quo unde aliquam. Dolor quia ipsum magnam ipsum iste similique. Provident dicta doloribus aut unde rerum harum. Nihil et iusto culpa laudantium accusamus libero.', 'testimonials/avatar-5.png', 'Cassin-Abbott', 'published', '2025-02-25 19:08:41', '2025-02-25 19:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_translations`
--

CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) NOT NULL,
  `testimonials_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@cabletech.co.id', NULL, '$2y$12$ClYIip3Qlxcm2n37gePz1.GfhbTeJz0OKrjvr4kAOpFaPI8PmP6Qq', 'O9bdGMDEZZw9elQWAU3s7lsQjZtUtEDxHX9R9Ct87oPnhU6EHbtttUFBukVs', '2025-02-26 00:17:34', '2026-02-25 08:28:52', 'Administrator', 'Cable Tech', 'administrator', 354, 1, 1, NULL, '2026-02-25 08:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'minimal_sidebar', 'no', 1, '2025-02-26 07:50:12', '2026-02-25 07:58:35'),
(2, 'theme_mode', 'light', 1, '2025-06-13 07:51:54', '2025-06-13 07:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(14, 'SiteCopyrightWidget', 'footer_bottom_sidebar', 'infinia', 1, '[]', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(17, 'BlogPostsWidget', 'blog_top_sidebar', 'infinia', 1, '{\"style\":1,\"title\":\"Our Latest Articles\",\"subtitle\":\"FROM BLOG\",\"description\":\"Explore the insights and trends shaping our industry.\"}', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(18, 'CallToActionWidget', 'blog_top_sidebar', 'infinia', 2, '{\"title\":\"We are <b>Looking to<\\/b> <br> <b>Expand<\\/b> Our Team\",\"image\":\"general\\/call-to-action-1.png\",\"button_label\":\"Explore Now\",\"button_url\":\"\\/contact\",\"button_icon\":\"ti ti-arrow-up-right\"}', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(19, 'FeaturesWidget', 'team_sidebar', 'infinia', 1, '{\"title\":\"Skills & Experience\",\"items\":[[{\"key\":\"title\",\"value\":\"Market Analysis and Insights\"},{\"key\":\"description\",\"value\":\"Gain a deep understanding of your industry and competitors with our comprehensive market analysis.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-1.png\"}],[{\"key\":\"title\",\"value\":\"Business Model Innovation\"},{\"key\":\"description\",\"value\":\"We assist in redefining your business modelto align with current market trends andfuture demands.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-12.png\"}],[{\"key\":\"title\",\"value\":\"Change Management\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-13.png\"}],[{\"key\":\"title\",\"value\":\"Marketing Support\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-14.png\"}],[{\"key\":\"title\",\"value\":\"HR Consultant\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-15.png\"}]]}', '2025-02-25 19:09:09', '2025-02-25 19:09:09'),
(141, 'SiteContactWidget', 'header_top_end_sidebar', 'infinia', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"(62) 21 89902129\"},{\"key\":\"action_url\",\"value\":\"tel:+622189902129\"},{\"key\":\"action_icon\",\"value\":\"ti ti-phone-call\"}],[{\"key\":\"action_label\",\"value\":\"+628128300818\"},{\"key\":\"action_url\",\"value\":\"wa.me\\/628128300818\"},{\"key\":\"action_icon\",\"value\":\"ti ti-brand-whatsapp\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-03-04 01:34:13', '2025-03-04 01:34:13'),
(159, 'SiteLogoWidget', 'header_sidebar', 'infinia', 0, '{\"id\":\"SiteLogoWidget\"}', '2025-06-09 02:43:30', '2025-06-09 02:43:30'),
(160, 'MainMenuWidget', 'header_sidebar', 'infinia', 1, '{\"id\":\"MainMenuWidget\"}', '2025-06-09 02:43:30', '2025-06-09 02:43:30'),
(161, 'HeaderControlsWidget', 'header_sidebar', 'infinia', 2, '{\"id\":\"HeaderControlsWidget\",\"show_search_button\":\"0\",\"show_theme_switcher\":\"1\",\"action_label\":\"Contact Us\",\"action_url\":\"\\/contact-us\"}', '2025-06-09 02:43:30', '2025-06-09 02:43:30'),
(167, 'SiteCopyrightWidget', 'footer_bottom_sidebar', 'infinia-id_ID', 1, '[]', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(168, 'BlogPostsWidget', 'blog_top_sidebar', 'infinia-id_ID', 1, '{\"style\":1,\"title\":\"Our Latest Articles\",\"subtitle\":\"FROM BLOG\",\"description\":\"Explore the insights and trends shaping our industry.\"}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(169, 'CallToActionWidget', 'blog_top_sidebar', 'infinia-id_ID', 2, '{\"title\":\"We are <b>Looking to<\\/b> <br> <b>Expand<\\/b> Our Team\",\"image\":\"general\\/call-to-action-1.png\",\"button_label\":\"Explore Now\",\"button_url\":\"\\/contact\",\"button_icon\":\"ti ti-arrow-up-right\"}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(170, 'FeaturesWidget', 'team_sidebar', 'infinia-id_ID', 1, '{\"title\":\"Skills & Experience\",\"items\":[[{\"key\":\"title\",\"value\":\"Market Analysis and Insights\"},{\"key\":\"description\",\"value\":\"Gain a deep understanding of your industry and competitors with our comprehensive market analysis.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-1.png\"}],[{\"key\":\"title\",\"value\":\"Business Model Innovation\"},{\"key\":\"description\",\"value\":\"We assist in redefining your business modelto align with current market trends andfuture demands.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-12.png\"}],[{\"key\":\"title\",\"value\":\"Change Management\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-13.png\"}],[{\"key\":\"title\",\"value\":\"Marketing Support\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-14.png\"}],[{\"key\":\"title\",\"value\":\"HR Consultant\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-15.png\"}]]}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(171, 'SiteContactWidget', 'header_top_end_sidebar', 'infinia-id_ID', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"(62) 21 89902129\"},{\"key\":\"action_url\",\"value\":\"tel:+622189902129\"},{\"key\":\"action_icon\",\"value\":\"ti ti-phone-call\"}],[{\"key\":\"action_label\",\"value\":\"+628128300818\"},{\"key\":\"action_url\",\"value\":\"wa.me\\/628128300818\"},{\"key\":\"action_icon\",\"value\":\"ti ti-brand-whatsapp\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-03-03 18:34:13', '2025-03-03 18:34:13'),
(172, 'SiteLogoWidget', 'header_sidebar', 'infinia-id_ID', 0, '{\"id\":\"SiteLogoWidget\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(173, 'MainMenuWidget', 'header_sidebar', 'infinia-id_ID', 1, '{\"id\":\"MainMenuWidget\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(174, 'HeaderControlsWidget', 'header_sidebar', 'infinia-id_ID', 2, '{\"id\":\"HeaderControlsWidget\",\"show_search_button\":\"0\",\"show_theme_switcher\":\"1\",\"action_label\":\"Contact Us\",\"action_url\":\"\\/contact-us\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(175, 'SiteInformationWidget', 'footer_primary_sidebar', 'infinia-id_ID', 0, '{\"id\":\"SiteInformationWidget\",\"show_logo\":\"1\",\"logo\":\"logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png\",\"logo_dark\":\"white-logo.png\",\"logo_height\":\"30\",\"about\":\"Founded in 2002, PT Cable Tech is a leading manufacturer of high-quality control cables for various industries, including automotive, home appliances, medical equipment, and agriculture. Committed to innovation and precision, we provide reliable solutions to meet both domestic and future global demands.\",\"show_social_links\":\"1\"}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(176, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia-id_ID', 1, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Company\",\"items\":[[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/example\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Achievements\"},{\"key\":\"url\",\"value\":\"\\/achievements\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(177, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia-id_ID', 2, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Product Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Automotive\"},{\"key\":\"url\",\"value\":\"\\/services\\/automotive\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Motorcycle\"},{\"key\":\"url\",\"value\":\"\\/services\\/motorcycle\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(178, 'AppDownloadsWidget', 'footer_primary_sidebar', 'infinia-id_ID', 3, '{\"id\":\"AppDownloadsWidget\",\"title\":\"Certification\",\"description\":\"Our plants are IATF 16949 and ISO 14001 certified, ensuring excellence and compliance with industry standards.\",\"platforms\":[[{\"key\":\"name\",\"value\":\"IATF 16949\"},{\"key\":\"image\",\"value\":\"certification\\/iatf.png\"},{\"key\":\"url\",\"value\":\"\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(179, 'SiteContactWidget', 'header_top_start_sidebar', 'infinia-id_ID', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"cabletech@cbn.net.id\"},{\"key\":\"action_url\",\"value\":\"mailto:cabletech@cbn.net.id\"},{\"key\":\"action_icon\",\"value\":\"ti ti-mail\"}],[{\"key\":\"action_label\",\"value\":\"Cikarang, Bekasi, West Java, Indonesia 17530\"},{\"key\":\"action_url\",\"value\":\"https:\\/\\/g.co\\/kgs\\/xmKPWYB\"},{\"key\":\"action_icon\",\"value\":\"ti ti-map-pin\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-06-08 19:45:47', '2025-06-08 19:45:47'),
(180, 'SiteCopyrightWidget', 'footer_bottom_sidebar', 'infinia-zh_TW', 1, '[]', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(181, 'BlogPostsWidget', 'blog_top_sidebar', 'infinia-zh_TW', 1, '{\"style\":1,\"title\":\"Our Latest Articles\",\"subtitle\":\"FROM BLOG\",\"description\":\"Explore the insights and trends shaping our industry.\"}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(182, 'CallToActionWidget', 'blog_top_sidebar', 'infinia-zh_TW', 2, '{\"title\":\"We are <b>Looking to<\\/b> <br> <b>Expand<\\/b> Our Team\",\"image\":\"general\\/call-to-action-1.png\",\"button_label\":\"Explore Now\",\"button_url\":\"\\/contact\",\"button_icon\":\"ti ti-arrow-up-right\"}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(183, 'FeaturesWidget', 'team_sidebar', 'infinia-zh_TW', 1, '{\"title\":\"Skills & Experience\",\"items\":[[{\"key\":\"title\",\"value\":\"Market Analysis and Insights\"},{\"key\":\"description\",\"value\":\"Gain a deep understanding of your industry and competitors with our comprehensive market analysis.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-1.png\"}],[{\"key\":\"title\",\"value\":\"Business Model Innovation\"},{\"key\":\"description\",\"value\":\"We assist in redefining your business modelto align with current market trends andfuture demands.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-12.png\"}],[{\"key\":\"title\",\"value\":\"Change Management\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-13.png\"}],[{\"key\":\"title\",\"value\":\"Marketing Support\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-14.png\"}],[{\"key\":\"title\",\"value\":\"HR Consultant\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-15.png\"}]]}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(184, 'SiteContactWidget', 'header_top_end_sidebar', 'infinia-zh_TW', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"(62) 21 89902129\"},{\"key\":\"action_url\",\"value\":\"tel:+622189902129\"},{\"key\":\"action_icon\",\"value\":\"ti ti-phone-call\"}],[{\"key\":\"action_label\",\"value\":\"+628128300818\"},{\"key\":\"action_url\",\"value\":\"wa.me\\/628128300818\"},{\"key\":\"action_icon\",\"value\":\"ti ti-brand-whatsapp\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-03-03 18:34:13', '2025-03-03 18:34:13'),
(185, 'SiteLogoWidget', 'header_sidebar', 'infinia-zh_TW', 0, '{\"id\":\"SiteLogoWidget\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(186, 'MainMenuWidget', 'header_sidebar', 'infinia-zh_TW', 1, '{\"id\":\"MainMenuWidget\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(187, 'HeaderControlsWidget', 'header_sidebar', 'infinia-zh_TW', 2, '{\"id\":\"HeaderControlsWidget\",\"show_search_button\":\"0\",\"show_theme_switcher\":\"1\",\"action_label\":\"Contact Us\",\"action_url\":\"\\/contact-us\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(188, 'SiteInformationWidget', 'footer_primary_sidebar', 'infinia-zh_TW', 0, '{\"id\":\"SiteInformationWidget\",\"show_logo\":\"1\",\"logo\":\"logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png\",\"logo_dark\":\"white-logo.png\",\"logo_height\":\"30\",\"about\":\"Founded in 2002, PT Cable Tech is a leading manufacturer of high-quality control cables for various industries, including automotive, home appliances, medical equipment, and agriculture. Committed to innovation and precision, we provide reliable solutions to meet both domestic and future global demands.\",\"show_social_links\":\"1\"}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(189, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia-zh_TW', 1, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Company\",\"items\":[[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/example\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Achievements\"},{\"key\":\"url\",\"value\":\"\\/achievements\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(190, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia-zh_TW', 2, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Product Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Automotive\"},{\"key\":\"url\",\"value\":\"\\/services\\/automotive\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Motorcycle\"},{\"key\":\"url\",\"value\":\"\\/services\\/motorcycle\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(191, 'AppDownloadsWidget', 'footer_primary_sidebar', 'infinia-zh_TW', 3, '{\"id\":\"AppDownloadsWidget\",\"title\":\"Certification\",\"description\":\"Our plants are IATF 16949 and ISO 14001 certified, ensuring excellence and compliance with industry standards.\",\"platforms\":[[{\"key\":\"name\",\"value\":\"IATF 16949\"},{\"key\":\"image\",\"value\":\"certification\\/iatf.png\"},{\"key\":\"url\",\"value\":\"\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(192, 'SiteContactWidget', 'header_top_start_sidebar', 'infinia-zh_TW', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"cabletech@cbn.net.id\"},{\"key\":\"action_url\",\"value\":\"mailto:cabletech@cbn.net.id\"},{\"key\":\"action_icon\",\"value\":\"ti ti-mail\"}],[{\"key\":\"action_label\",\"value\":\"Cikarang, Bekasi, West Java, Indonesia 17530\"},{\"key\":\"action_url\",\"value\":\"https:\\/\\/g.co\\/kgs\\/xmKPWYB\"},{\"key\":\"action_icon\",\"value\":\"ti ti-map-pin\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-06-08 19:45:47', '2025-06-08 19:45:47'),
(193, 'SiteCopyrightWidget', 'footer_bottom_sidebar', 'infinia-ja', 1, '[]', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(194, 'BlogPostsWidget', 'blog_top_sidebar', 'infinia-ja', 1, '{\"style\":1,\"title\":\"Our Latest Articles\",\"subtitle\":\"FROM BLOG\",\"description\":\"Explore the insights and trends shaping our industry.\"}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(195, 'CallToActionWidget', 'blog_top_sidebar', 'infinia-ja', 2, '{\"title\":\"We are <b>Looking to<\\/b> <br> <b>Expand<\\/b> Our Team\",\"image\":\"general\\/call-to-action-1.png\",\"button_label\":\"Explore Now\",\"button_url\":\"\\/contact\",\"button_icon\":\"ti ti-arrow-up-right\"}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(196, 'FeaturesWidget', 'team_sidebar', 'infinia-ja', 1, '{\"title\":\"Skills & Experience\",\"items\":[[{\"key\":\"title\",\"value\":\"Market Analysis and Insights\"},{\"key\":\"description\",\"value\":\"Gain a deep understanding of your industry and competitors with our comprehensive market analysis.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-1.png\"}],[{\"key\":\"title\",\"value\":\"Business Model Innovation\"},{\"key\":\"description\",\"value\":\"We assist in redefining your business modelto align with current market trends andfuture demands.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-12.png\"}],[{\"key\":\"title\",\"value\":\"Change Management\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-13.png\"}],[{\"key\":\"title\",\"value\":\"Marketing Support\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-14.png\"}],[{\"key\":\"title\",\"value\":\"HR Consultant\"},{\"key\":\"description\",\"value\":\"Successfully manage organizational change withour expert guidance. We help you navigatetransitions smoothly.\"},{\"key\":\"icon\",\"value\":null},{\"key\":\"icon_image\",\"value\":\"icons\\/icon-15.png\"}]]}', '2025-02-25 12:09:09', '2025-02-25 12:09:09'),
(197, 'SiteContactWidget', 'header_top_end_sidebar', 'infinia-ja', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"(62) 21 89902129\"},{\"key\":\"action_url\",\"value\":\"tel:+622189902129\"},{\"key\":\"action_icon\",\"value\":\"ti ti-phone-call\"}],[{\"key\":\"action_label\",\"value\":\"+628128300818\"},{\"key\":\"action_url\",\"value\":\"wa.me\\/628128300818\"},{\"key\":\"action_icon\",\"value\":\"ti ti-brand-whatsapp\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-03-03 18:34:13', '2025-03-03 18:34:13'),
(198, 'SiteLogoWidget', 'header_sidebar', 'infinia-ja', 0, '{\"id\":\"SiteLogoWidget\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(199, 'MainMenuWidget', 'header_sidebar', 'infinia-ja', 1, '{\"id\":\"MainMenuWidget\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(200, 'HeaderControlsWidget', 'header_sidebar', 'infinia-ja', 2, '{\"id\":\"HeaderControlsWidget\",\"show_search_button\":\"0\",\"show_theme_switcher\":\"1\",\"action_label\":\"Contact Us\",\"action_url\":\"\\/contact-us\"}', '2025-06-08 19:43:30', '2025-06-08 19:43:30'),
(201, 'SiteInformationWidget', 'footer_primary_sidebar', 'infinia-ja', 0, '{\"id\":\"SiteInformationWidget\",\"show_logo\":\"1\",\"logo\":\"logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png\",\"logo_dark\":\"white-logo.png\",\"logo_height\":\"30\",\"about\":\"Founded in 2002, PT Cable Tech is a leading manufacturer of high-quality control cables for various industries, including automotive, home appliances, medical equipment, and agriculture. Committed to innovation and precision, we provide reliable solutions to meet both domestic and future global demands.\",\"show_social_links\":\"1\"}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(202, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia-ja', 1, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Company\",\"items\":[[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/example\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Achievements\"},{\"key\":\"url\",\"value\":\"\\/achievements\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(203, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia-ja', 2, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Product Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Automotive\"},{\"key\":\"url\",\"value\":\"\\/services\\/automotive\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Motorcycle\"},{\"key\":\"url\",\"value\":\"\\/services\\/motorcycle\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(204, 'AppDownloadsWidget', 'footer_primary_sidebar', 'infinia-ja', 3, '{\"id\":\"AppDownloadsWidget\",\"title\":\"Certification\",\"description\":\"Our plants are IATF 16949 and ISO 14001 certified, ensuring excellence and compliance with industry standards.\",\"platforms\":[[{\"key\":\"name\",\"value\":\"IATF 16949\"},{\"key\":\"image\",\"value\":\"certification\\/iatf.png\"},{\"key\":\"url\",\"value\":\"\"}]]}', '2025-06-08 19:44:48', '2025-06-08 19:44:48'),
(205, 'SiteContactWidget', 'header_top_start_sidebar', 'infinia-ja', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"cabletech@cbn.net.id\"},{\"key\":\"action_url\",\"value\":\"mailto:cabletech@cbn.net.id\"},{\"key\":\"action_icon\",\"value\":\"ti ti-mail\"}],[{\"key\":\"action_label\",\"value\":\"Cikarang, Bekasi, West Java, Indonesia 17530\"},{\"key\":\"action_url\",\"value\":\"https:\\/\\/g.co\\/kgs\\/xmKPWYB\"},{\"key\":\"action_icon\",\"value\":\"ti ti-map-pin\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-06-08 19:45:47', '2025-06-08 19:45:47'),
(224, 'SiteContactWidget', 'header_top_start_sidebar', 'infinia', 0, '{\"id\":\"SiteContactWidget\",\"style\":\"2\",\"items\":[[{\"key\":\"action_label\",\"value\":\"cabletech@cbn.net.id\"},{\"key\":\"action_url\",\"value\":\"mailto:cabletech@cbn.net.id\"},{\"key\":\"action_icon\",\"value\":\"ti ti-mail\"}],[{\"key\":\"action_label\",\"value\":\"Cikarang, Bekasi, West Java, Indonesia 17530\"},{\"key\":\"action_url\",\"value\":\"https:\\/\\/maps.app.goo.gl\\/je9LD1qoEXYo7TZMA\"},{\"key\":\"action_icon\",\"value\":\"ti ti-map-pin\"}]],\"description\":\"Display site contact information\",\"action_label\":\"\",\"action_url\":\"\"}', '2025-06-10 02:14:48', '2025-06-10 02:14:48'),
(253, 'SiteInformationWidget', 'footer_primary_sidebar', 'infinia', 0, '{\"id\":\"SiteInformationWidget\",\"show_logo\":\"1\",\"logo\":\"logo-cable-tech-upscayl-4x-upscayl-standard-4x-copy2.png\",\"logo_dark\":\"white-logo.png\",\"logo_height\":\"30\",\"about\":\"Founded in 2002, PT Cable Tech is a leading manufacturer of high-quality control cables for various industries, including automotive and agriculture. Committed to innovation and precision, we provide reliable solutions to meet domestic needs and future global demand.\",\"show_social_links\":\"1\"}', '2025-06-13 09:35:19', '2025-06-13 09:35:19'),
(254, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia', 1, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Achievements\",\"items\":[[{\"key\":\"label\",\"value\":\"International\"},{\"key\":\"url\",\"value\":\"\\/inter\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Customers\"},{\"key\":\"url\",\"value\":\"\\/customer-appreciation\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-13 09:35:19', '2025-06-13 09:35:19'),
(255, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_primary_sidebar', 'infinia', 2, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Product Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Automotive\"},{\"key\":\"url\",\"value\":\"\\/services\\/automotive\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Motorcycle\"},{\"key\":\"url\",\"value\":\"\\/services\\/motorcycle\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Industrial Solutions\"},{\"key\":\"url\",\"value\":\"\\/industrial-custom-solutions\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2025-06-13 09:35:19', '2025-06-13 09:35:19'),
(256, 'AppDownloadsWidget', 'footer_primary_sidebar', 'infinia', 3, '{\"id\":\"AppDownloadsWidget\",\"title\":\"Certification\",\"description\":\"Our plants are IATF 16949 and ISO 14001 certified, ensuring excellence and compliance with industry standards.\",\"platforms\":[[{\"key\":\"name\",\"value\":\"IATF 16949\"},{\"key\":\"image\",\"value\":\"certification\\/iatf.png\"},{\"key\":\"url\",\"value\":\"\"}]]}', '2025-06-13 09:35:19', '2025-06-13 09:35:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements_translations`
--
ALTER TABLE `announcements_translations`
  ADD PRIMARY KEY (`lang_code`,`announcements_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

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
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers_translations`
--
ALTER TABLE `careers_translations`
  ADD PRIMARY KEY (`lang_code`,`careers_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `gallery_meta_translations`
--
ALTER TABLE `gallery_meta_translations`
  ADD PRIMARY KEY (`lang_code`,`gallery_meta_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

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
-- Indexes for table `pf_custom_fields`
--
ALTER TABLE `pf_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_custom_fields_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `pf_custom_fields_translations`
--
ALTER TABLE `pf_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_custom_fields_id`);

--
-- Indexes for table `pf_custom_field_options`
--
ALTER TABLE `pf_custom_field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_custom_field_options_custom_field_id_index` (`custom_field_id`);

--
-- Indexes for table `pf_custom_field_options_translations`
--
ALTER TABLE `pf_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_custom_field_options_id`);

--
-- Indexes for table `pf_packages`
--
ALTER TABLE `pf_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pf_packages_translations`
--
ALTER TABLE `pf_packages_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_packages_id`);

--
-- Indexes for table `pf_projects`
--
ALTER TABLE `pf_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pf_quotes`
--
ALTER TABLE `pf_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pf_services`
--
ALTER TABLE `pf_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_services_category_id_index` (`category_id`);

--
-- Indexes for table `pf_services_translations`
--
ALTER TABLE `pf_services_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_services_id`);

--
-- Indexes for table `pf_service_categories`
--
ALTER TABLE `pf_service_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_service_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `pf_service_categories_translations`
--
ALTER TABLE `pf_service_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_service_categories_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams_translations`
--
ALTER TABLE `teams_translations`
  ADD PRIMARY KEY (`lang_code`,`teams_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD PRIMARY KEY (`lang_code`,`testimonials_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1305;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_custom_fields`
--
ALTER TABLE `pf_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_custom_field_options`
--
ALTER TABLE `pf_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_packages`
--
ALTER TABLE `pf_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pf_projects`
--
ALTER TABLE `pf_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pf_quotes`
--
ALTER TABLE `pf_quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_services`
--
ALTER TABLE `pf_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pf_service_categories`
--
ALTER TABLE `pf_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
