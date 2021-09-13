-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 13, 2021 at 11:21 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shopwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '7UcjD4feKXymKLr60lBj1wShh1EsyuiI', 1, '2021-05-03 02:01:13', '2021-05-03 02:01:13', '2021-05-03 02:01:13'),
(2, 1, 'QzJAXlvGpo4tx37tMxpoXY6fOamqFolp', 1, '2021-07-02 20:17:18', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(3, 1, 'tenKNEKgNNpixls9zjhWiP7yEQh7y42z', 1, '2021-07-02 20:21:11', '2021-07-02 20:21:11', '2021-07-02 20:21:11'),
(4, 1, 'AEWRmiHmQC91TrsxcGlZCRMuCihlHbJd', 1, '2021-07-02 20:47:01', '2021-07-02 20:47:01', '2021-07-02 20:47:01'),
(5, 1, 'qmDtNslvquK6wmvIWg3MRUQLa3gWa0Pz', 1, '2021-07-02 21:03:29', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(6, 1, '8jaWtYBetJtUPJIdKZ3LwzBS2vY9ihhh', 1, '2021-08-03 20:54:04', '2021-08-03 20:54:04', '2021-08-03 20:54:04'),
(7, 1, 'pSKObXKrCsiNiSl8BSAuLo1oJAU4DHMD', 1, '2021-08-03 20:57:32', '2021-08-03 20:57:32', '2021-08-03 20:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-09-03 15:45:35', '2021-09-03 15:45:35'),
(2, 1, 'user', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"first_name\":\"Abdulquddus\",\"last_name\":\"Balogun\",\"username\":\"balex\",\"email\":\"babusunnah@gmail.com\",\"submit\":\"submit\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Abdulquddus Balogun', 'primary', '2021-09-03 15:46:23', '2021-09-03 15:46:23'),
(3, 1, 'user', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"password\":\"balex1234\",\"password_confirmation\":\"balex1234\",\"submit\":\"submit\"}', 'updated profile', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Abdulquddus Balogun', 'info', '2021-09-03 15:46:47', '2021-09-03 15:46:47'),
(4, 1, 'user', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"password\":\"balex1234\",\"password_confirmation\":\"balex1234\",\"submit\":\"submit\"}', 'changed password', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Abdulquddus Balogun', 'danger', '2021-09-03 15:46:47', '2021-09-03 15:46:47'),
(5, 1, 'simple-slider-item', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"simple_slider_id\":\"1\",\"title\":\"Android phones\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":\"Get up to 50% off Today Only!\",\"order\":\"1\",\"image\":\"techbros\\/banner-search.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Android phones', 'primary', '2021-09-03 16:10:24', '2021-09-03 16:10:24'),
(6, 1, 'simple-slider-item', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"simple_slider_id\":\"1\",\"title\":\"iPhones\",\"link\":\"\\/products\",\"button_text\":\"Discover now\",\"description\":\"50% off in all products\",\"order\":\"2\",\"image\":\"techbros\\/banner-reset-password.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 2, 'iPhones', 'primary', '2021-09-03 16:11:04', '2021-09-03 16:11:04'),
(7, 1, 'simple-slider-item', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"simple_slider_id\":\"1\",\"title\":\"Computer and Laptops\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":\"Taking your Viewing Experience to Next Level\",\"order\":\"3\",\"image\":\"techbros\\/product-featured-149037761369.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Computer and Laptops', 'primary', '2021-09-03 16:11:36', '2021-09-03 16:11:36'),
(8, 1, 'simple-slider', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Home slider\",\"key\":\"home-slider\",\"description\":\"The main slider on homepage\",\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Home slider', 'primary', '2021-09-03 16:11:47', '2021-09-03 16:11:47'),
(9, 1, 'ecommerce-tax', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"VAT\",\"percentage\":\"5\",\"priority\":\"1\",\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'VAT', 'primary', '2021-09-03 16:19:14', '2021-09-03 16:19:14'),
(10, 1, 'ecommerce-tax', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"VAT\",\"percentage\":\"5\",\"priority\":\"1\",\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'VAT', 'primary', '2021-09-03 16:19:27', '2021-09-03 16:19:27'),
(11, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 11, 'Prof. Laurel VonRueden DVM', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(12, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 10, 'Ms. Rosalyn Schiller III', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(13, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 9, 'Judson Ledner', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(14, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 8, 'Gardner Hamill MD', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(15, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 7, 'Lottie Lehner', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(16, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 6, 'Dr. Roberta Schaden MD', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(17, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 5, 'Celia Harber I', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(18, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 4, 'Green Goodwin', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(19, 1, 'customer', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Dr. Rodrigo Sipes', 'danger', '2021-09-03 16:20:08', '2021-09-03 16:20:08'),
(20, 1, 'customer', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Raji Rasheed\",\"email\":\"rajrash@gmail.com\",\"is_change_password\":\"1\",\"password\":\"raj1234\",\"password_confirmation\":\"raj1234\",\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Raji Rasheed', 'primary', '2021-09-03 16:20:58', '2021-09-03 16:20:58'),
(21, 1, 'customer', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Abdulsalam Shakirah\",\"email\":\"divaspenzy@gmail.com\",\"is_change_password\":\"1\",\"password\":\"diva1234\",\"password_confirmation\":\"diva1234\",\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 2, 'Abdulsalam Shakirah', 'primary', '2021-09-03 16:21:28', '2021-09-03 16:21:28'),
(22, 1, 'brand', '{\"ids\":[\"7\",\"6\",\"5\",\"4\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 7, 'Automotive', 'danger', '2021-09-03 16:23:06', '2021-09-03 16:23:06'),
(23, 1, 'brand', '{\"ids\":[\"7\",\"6\",\"5\",\"4\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 6, 'Anfold', 'danger', '2021-09-03 16:23:06', '2021-09-03 16:23:06'),
(24, 1, 'brand', '{\"ids\":[\"7\",\"6\",\"5\",\"4\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 5, 'Pure', 'danger', '2021-09-03 16:23:06', '2021-09-03 16:23:06'),
(25, 1, 'brand', '{\"ids\":[\"7\",\"6\",\"5\",\"4\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 4, 'Sunshine', 'danger', '2021-09-03 16:23:06', '2021-09-03 16:23:06'),
(26, 1, 'brand', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Samsung\",\"slug\":\"samsung\",\"slug_id\":\"668\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Brand\",\"description\":\"<figure class=\\\"image image_resized\\\" style=\\\"width:36.34%;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/techbros\\/brand171154724.jpg\\\" alt=\\\"Brand171154724\\\"><\\/figure><p>&nbsp;<\\/p><p>Conveniently create error-free paradigms with empowered relationships. Distinctively network client-centered users without accurate markets. Continually formulate superior opportunities via integrated metrics. Continually supply economically sound core competencies vis-a-vis frictionless e-commerce. Completely revolutionize distinctive supply chains vis-a-vis performance based solutions.<\\/p><p>Distinctively innovate premier services before parallel intellectual capital. Objectively synergize professional sources before enterprise partnerships. Proactively expedite economically sound content and emerging solutions. Progressively strategize accurate e-tailers via cross.<br>&nbsp;<\\/p>\",\"website\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"logo\":\"brands\\/1.png\",\"is_featured\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Samsung', 'primary', '2021-09-03 16:26:32', '2021-09-03 16:26:32'),
(27, 1, 'brand', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Samsung\",\"slug\":\"samsung\",\"slug_id\":\"668\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Brand\",\"description\":\"<figure class=\\\"image image_resized\\\" style=\\\"width:36.34%;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/techbros\\/brand171154724.jpg\\\" alt=\\\"Brand171154724\\\"><\\/figure><p>&nbsp;<\\/p><p>Conveniently create error-free paradigms with empowered relationships. Distinctively network client-centered users without accurate markets. Continually formulate superior opportunities via integrated metrics. Continually supply economically sound core competencies vis-a-vis frictionless e-commerce. Completely revolutionize distinctive supply chains vis-a-vis performance based solutions.<\\/p><p>Distinctively innovate premier services before parallel intellectual capital. Objectively synergize professional sources before enterprise partnerships. Proactively expedite economically sound content and emerging solutions. Progressively strategize accurate e-tailers via cross.<br>&nbsp;<\\/p>\",\"website\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"logo\":\"techbros\\/brand171154724.jpg\",\"is_featured\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Samsung', 'primary', '2021-09-03 16:27:05', '2021-09-03 16:27:05'),
(28, 1, 'brand', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"iPhone\",\"slug\":\"iphone\",\"slug_id\":\"669\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Brand\",\"description\":\"<p>Assertively impact goal-oriented methodologies before empowered initiatives. Authoritatively customize functionalized deliverables with intuitive results. Distinctively deploy business bandwidth via go forward platforms. Seamlessly mesh client-focused web-readiness and accurate portals. Rapidiously parallel task high-quality leadership skills via standardized expertise.<\\/p><p>Interactively predominate extensible strategic theme areas through reliable core competencies. Dynamically predominate backend innovation rather than resource-leveling models. Competently.<\\/p>\",\"website\":null,\"order\":\"1\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"logo\":\"techbros\\/brand1634422079.jpg\",\"is_featured\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 2, 'iPhone', 'primary', '2021-09-03 16:27:50', '2021-09-03 16:27:50'),
(29, 1, 'brand', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Hp\",\"slug\":\"hp\",\"slug_id\":\"670\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Brand\",\"description\":\"<p>Rapidiously promote quality data whereas integrated collaboration and idea-sharing. Competently synergize integrated e-commerce after emerging results. Holisticly pontificate clicks-and-mortar value after 2.0 best practices. Proactively exploit optimal products.<\\/p>\",\"website\":null,\"order\":\"2\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"published\",\"logo\":\"techbros\\/brand711832412.jpg\",\"is_featured\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Hp', 'primary', '2021-09-03 16:28:36', '2021-09-03 16:28:36'),
(30, 1, 'brand', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Hp\",\"slug\":\"hp\",\"slug_id\":\"670\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Brand\",\"description\":\"<p>Rapidiously promote quality data whereas integrated collaboration and idea-sharing. Competently synergize integrated e-commerce after emerging results. Holisticly pontificate clicks-and-mortar value after 2.0 best practices. Proactively exploit optimal products.<\\/p>\",\"website\":null,\"order\":\"2\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"logo\":\"techbros\\/brand711832412.jpg\",\"is_featured\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Hp', 'primary', '2021-09-03 16:28:49', '2021-09-03 16:28:49'),
(31, 1, 'product-attribute-sets', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Storage\",\"slug\":\"storage\",\"attributes\":\"[]\",\"deleted_attributes\":\"[0]\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"dropdown\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"3\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Storage', 'info', '2021-09-03 16:30:04', '2021-09-03 16:30:04'),
(32, 1, 'product-attribute-sets', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Storage\",\"slug\":\"storage\",\"attributes\":\"[]\",\"deleted_attributes\":\"[]\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"dropdown\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"3\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Storage', 'primary', '2021-09-03 16:30:25', '2021-09-03 16:30:25'),
(33, 1, 'product-attribute-sets', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Size\",\"slug\":\"size\",\"attributes\":\"[{\\\"id\\\":6,\\\"is_default\\\":0,\\\"order\\\":0,\\\"title\\\":\\\"S\\\",\\\"slug\\\":\\\"s\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":7,\\\"is_default\\\":0,\\\"order\\\":1,\\\"title\\\":\\\"M\\\",\\\"slug\\\":\\\"m\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":8,\\\"is_default\\\":0,\\\"order\\\":2,\\\"title\\\":\\\"L\\\",\\\"slug\\\":\\\"l\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":9,\\\"is_default\\\":0,\\\"order\\\":3,\\\"title\\\":\\\"XL\\\",\\\"slug\\\":\\\"xl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":10,\\\"is_default\\\":1,\\\"order\\\":4,\\\"title\\\":\\\"XXL\\\",\\\"slug\\\":\\\"xxl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1}]\",\"deleted_attributes\":\"[]\",\"related_attribute_is_default\":\"5\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"text\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 2, 'Size', 'primary', '2021-09-03 16:30:48', '2021-09-03 16:30:48'),
(34, 1, 'product-attributes', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Size\",\"slug\":\"size\",\"attributes\":\"[{\\\"id\\\":6,\\\"is_default\\\":0,\\\"order\\\":0,\\\"title\\\":\\\"S\\\",\\\"slug\\\":\\\"s\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":7,\\\"is_default\\\":0,\\\"order\\\":1,\\\"title\\\":\\\"M\\\",\\\"slug\\\":\\\"m\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":8,\\\"is_default\\\":0,\\\"order\\\":2,\\\"title\\\":\\\"L\\\",\\\"slug\\\":\\\"l\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":9,\\\"is_default\\\":0,\\\"order\\\":3,\\\"title\\\":\\\"XL\\\",\\\"slug\\\":\\\"xl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":10,\\\"is_default\\\":1,\\\"order\\\":4,\\\"title\\\":\\\"XXL\\\",\\\"slug\\\":\\\"xxl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1}]\",\"deleted_attributes\":\"[]\",\"related_attribute_is_default\":\"5\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"text\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 6, 'S', 'primary', '2021-09-03 16:30:48', '2021-09-03 16:30:48'),
(35, 1, 'product-attributes', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Size\",\"slug\":\"size\",\"attributes\":\"[{\\\"id\\\":6,\\\"is_default\\\":0,\\\"order\\\":0,\\\"title\\\":\\\"S\\\",\\\"slug\\\":\\\"s\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":7,\\\"is_default\\\":0,\\\"order\\\":1,\\\"title\\\":\\\"M\\\",\\\"slug\\\":\\\"m\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":8,\\\"is_default\\\":0,\\\"order\\\":2,\\\"title\\\":\\\"L\\\",\\\"slug\\\":\\\"l\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":9,\\\"is_default\\\":0,\\\"order\\\":3,\\\"title\\\":\\\"XL\\\",\\\"slug\\\":\\\"xl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":10,\\\"is_default\\\":1,\\\"order\\\":4,\\\"title\\\":\\\"XXL\\\",\\\"slug\\\":\\\"xxl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1}]\",\"deleted_attributes\":\"[]\",\"related_attribute_is_default\":\"5\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"text\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 7, 'M', 'primary', '2021-09-03 16:30:48', '2021-09-03 16:30:48'),
(36, 1, 'product-attributes', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Size\",\"slug\":\"size\",\"attributes\":\"[{\\\"id\\\":6,\\\"is_default\\\":0,\\\"order\\\":0,\\\"title\\\":\\\"S\\\",\\\"slug\\\":\\\"s\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":7,\\\"is_default\\\":0,\\\"order\\\":1,\\\"title\\\":\\\"M\\\",\\\"slug\\\":\\\"m\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":8,\\\"is_default\\\":0,\\\"order\\\":2,\\\"title\\\":\\\"L\\\",\\\"slug\\\":\\\"l\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":9,\\\"is_default\\\":0,\\\"order\\\":3,\\\"title\\\":\\\"XL\\\",\\\"slug\\\":\\\"xl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":10,\\\"is_default\\\":1,\\\"order\\\":4,\\\"title\\\":\\\"XXL\\\",\\\"slug\\\":\\\"xxl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1}]\",\"deleted_attributes\":\"[]\",\"related_attribute_is_default\":\"5\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"text\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 8, 'L', 'primary', '2021-09-03 16:30:48', '2021-09-03 16:30:48'),
(37, 1, 'product-attributes', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Size\",\"slug\":\"size\",\"attributes\":\"[{\\\"id\\\":6,\\\"is_default\\\":0,\\\"order\\\":0,\\\"title\\\":\\\"S\\\",\\\"slug\\\":\\\"s\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":7,\\\"is_default\\\":0,\\\"order\\\":1,\\\"title\\\":\\\"M\\\",\\\"slug\\\":\\\"m\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":8,\\\"is_default\\\":0,\\\"order\\\":2,\\\"title\\\":\\\"L\\\",\\\"slug\\\":\\\"l\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":9,\\\"is_default\\\":0,\\\"order\\\":3,\\\"title\\\":\\\"XL\\\",\\\"slug\\\":\\\"xl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":10,\\\"is_default\\\":1,\\\"order\\\":4,\\\"title\\\":\\\"XXL\\\",\\\"slug\\\":\\\"xxl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1}]\",\"deleted_attributes\":\"[]\",\"related_attribute_is_default\":\"5\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"text\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 9, 'XL', 'primary', '2021-09-03 16:30:48', '2021-09-03 16:30:48'),
(38, 1, 'product-attributes', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"Size\",\"slug\":\"size\",\"attributes\":\"[{\\\"id\\\":6,\\\"is_default\\\":0,\\\"order\\\":0,\\\"title\\\":\\\"S\\\",\\\"slug\\\":\\\"s\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":7,\\\"is_default\\\":0,\\\"order\\\":1,\\\"title\\\":\\\"M\\\",\\\"slug\\\":\\\"m\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":8,\\\"is_default\\\":0,\\\"order\\\":2,\\\"title\\\":\\\"L\\\",\\\"slug\\\":\\\"l\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":9,\\\"is_default\\\":0,\\\"order\\\":3,\\\"title\\\":\\\"XL\\\",\\\"slug\\\":\\\"xl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1},{\\\"id\\\":10,\\\"is_default\\\":1,\\\"order\\\":4,\\\"title\\\":\\\"XXL\\\",\\\"slug\\\":\\\"xxl\\\",\\\"color\\\":\\\"\\\",\\\"image\\\":\\\"\\\"},{\\\"is_default\\\":0,\\\"order\\\":0},{\\\"is_default\\\":0,\\\"order\\\":1}]\",\"deleted_attributes\":\"[]\",\"related_attribute_is_default\":\"5\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"text\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 10, 'XXL', 'primary', '2021-09-03 16:30:48', '2021-09-03 16:30:48'),
(39, 1, 'product-attribute-sets', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"title\":\"RAM\",\"slug\":\"ram\",\"attributes\":\"[]\",\"deleted_attributes\":\"[]\",\"submit\":\"save\",\"status\":\"published\",\"display_layout\":\"dropdown\",\"is_searchable\":\"1\",\"is_comparable\":\"1\",\"is_use_in_product_listing\":\"1\",\"order\":\"4\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 4, 'RAM', 'info', '2021-09-03 16:31:24', '2021-09-03 16:31:24'),
(40, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 94, 'Gaming Keyboard', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(41, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 95, 'Gaming Keyboard', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(42, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 24, 'Gaming Keyboard', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(43, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 92, 'Phillips Mouse', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(44, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 93, 'Phillips Mouse', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(45, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 23, 'Phillips Mouse', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(46, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 90, 'Black Glasses', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(47, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 91, 'Black Glasses', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(48, 1, 'product', '{\"ids\":[\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 22, 'Black Glasses', 'danger', '2021-09-03 16:32:54', '2021-09-03 16:32:54'),
(49, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 115, 'Samsung Smart TV', 'danger', '2021-09-03 16:34:40', '2021-09-03 16:34:40'),
(50, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 115, 'Samsung Smart TV', 'danger', '2021-09-03 16:34:40', '2021-09-03 16:34:40'),
(51, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 116, 'Samsung Smart TV', 'danger', '2021-09-03 16:34:44', '2021-09-03 16:34:44'),
(52, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 116, 'Samsung Smart TV', 'danger', '2021-09-03 16:34:44', '2021-09-03 16:34:44'),
(53, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 117, 'Samsung Smart TV', 'danger', '2021-09-03 16:34:48', '2021-09-03 16:34:48'),
(54, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 117, 'Samsung Smart TV', 'danger', '2021-09-03 16:34:48', '2021-09-03 16:34:48'),
(55, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Hp 360 laptop\",\"slug\":\"hp-360-laptop\",\"slug_id\":\"740\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-149037761369.jpg\",\"techbros\\/product-featured-149037761369.jpg\"],\"sale_type\":\"1\",\"sku\":\"HS-193-A0-A2\",\"price\":\"300000\",\"sale_price\":\"250000\",\"start_date\":\"2021-09-03 18:35:14\",\"end_date\":\"2021-09-10 18:35:19\",\"with_storehouse_management\":\"1\",\"quantity\":\"15\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"663\",\"length\":\"11\",\"wide\":\"10\",\"height\":\"13\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":\"2\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"5\",\"8\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Iphone\\\"},{\\\"value\\\":\\\"Office\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 31, 'Hp 360 laptop', 'primary', '2021-09-03 16:36:43', '2021-09-03 16:36:43'),
(56, 1, 'product', '{\"ids\":[\"30\",\"29\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 113, 'Smart Televisions', 'danger', '2021-09-03 16:36:58', '2021-09-03 16:36:58'),
(57, 1, 'product', '{\"ids\":[\"30\",\"29\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 114, 'Smart Televisions', 'danger', '2021-09-03 16:36:58', '2021-09-03 16:36:58'),
(58, 1, 'product', '{\"ids\":[\"30\",\"29\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 30, 'Smart Televisions', 'danger', '2021-09-03 16:36:58', '2021-09-03 16:36:58'),
(59, 1, 'product', '{\"ids\":[\"30\",\"29\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 110, 'Audio Equipment', 'danger', '2021-09-03 16:36:58', '2021-09-03 16:36:58'),
(60, 1, 'product', '{\"ids\":[\"30\",\"29\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 111, 'Audio Equipment', 'danger', '2021-09-03 16:36:58', '2021-09-03 16:36:58'),
(61, 1, 'product', '{\"ids\":[\"30\",\"29\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 112, 'Audio Equipment', 'danger', '2021-09-03 16:36:58', '2021-09-03 16:36:58'),
(62, 1, 'product', '{\"ids\":[\"30\",\"29\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 29, 'Audio Equipment', 'danger', '2021-09-03 16:36:58', '2021-09-03 16:36:58'),
(63, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 105, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:45', '2021-09-03 16:37:45'),
(64, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 105, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:45', '2021-09-03 16:37:45'),
(65, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 106, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:48', '2021-09-03 16:37:48'),
(66, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 106, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:48', '2021-09-03 16:37:48'),
(67, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 107, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:51', '2021-09-03 16:37:51'),
(68, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 107, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:51', '2021-09-03 16:37:51'),
(69, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 108, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:55', '2021-09-03 16:37:55'),
(70, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 108, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:55', '2021-09-03 16:37:55'),
(71, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 109, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:58', '2021-09-03 16:37:58'),
(72, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 109, 'Red & Black Headphone', 'danger', '2021-09-03 16:37:58', '2021-09-03 16:37:58'),
(73, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Red & Black Headphone\",\"slug\":\"red-black-headphone\",\"slug_id\":\"737\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-77378457551.jpg\",\"techbros\\/product-featured-77378457551.jpg\"],\"sale_type\":\"0\",\"sku\":\"HS-178-A0-A4\",\"price\":\"15000\",\"sale_price\":\"14000\",\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"10\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"728\",\"length\":\"12\",\"wide\":\"14\",\"height\":\"18\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":\"30,31\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"5\",\"8\",\"9\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Mobile\\\"},{\\\"value\\\":\\\"Iphone\\\"},{\\\"value\\\":\\\"Printer\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 28, 'Red & Black Headphone', 'primary', '2021-09-03 16:38:25', '2021-09-03 16:38:25'),
(74, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 102, 'Beat Headphone', 'danger', '2021-09-03 16:38:45', '2021-09-03 16:38:45'),
(75, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 103, 'Beat Headphone', 'danger', '2021-09-03 16:38:45', '2021-09-03 16:38:45'),
(76, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 104, 'Beat Headphone', 'danger', '2021-09-03 16:38:45', '2021-09-03 16:38:45'),
(77, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 27, 'Beat Headphone', 'danger', '2021-09-03 16:38:45', '2021-09-03 16:38:45'),
(78, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Smart Watches\",\"slug\":\"smart-watches\",\"slug_id\":\"735\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-841592953.jpg\",\"techbros\\/product-featured-22889006262.jpg\",null,\"techbros\\/product-featured-22889006262.jpg\"],\"variation_default_id\":\"69\",\"attribute_sets\":[\"1\",\"5\",\"8\"],\"sale_type\":\"0\",\"sku\":\"HS-140-A0-A1\",\"price\":\"25000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"19\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"541\",\"length\":\"16\",\"wide\":\"18\",\"height\":\"13\",\"related_products\":null,\"cross_sale_products\":\"23,27\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"5\",\"7\",\"11\"],\"brand_id\":\"0\",\"product_collections\":[\"2\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Electronic\\\"},{\\\"value\\\":\\\"Iphone\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 26, 'Smart Watches', 'primary', '2021-09-03 16:41:02', '2021-09-03 16:41:02'),
(79, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 96, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:46', '2021-09-03 16:41:46'),
(80, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 96, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:46', '2021-09-03 16:41:46'),
(81, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 97, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:50', '2021-09-03 16:41:50'),
(82, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 97, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:50', '2021-09-03 16:41:50'),
(83, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 98, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:53', '2021-09-03 16:41:53'),
(84, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 98, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:53', '2021-09-03 16:41:53');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(85, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 99, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:57', '2021-09-03 16:41:57'),
(86, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 99, 'Dual Camera 20MP', 'danger', '2021-09-03 16:41:57', '2021-09-03 16:41:57'),
(87, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Dual Camera 20MP\",\"slug\":\"dual-camera-20mp\",\"slug_id\":\"734\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-71849530567.jpg\"],\"sale_type\":\"0\",\"sku\":\"HS-197-A0-A3\",\"price\":\"150000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"624\",\"length\":\"17\",\"wide\":\"16\",\"height\":\"20\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":\"31,24,23\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"2\",\"8\",\"11\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Office\\\"},{\\\"value\\\":\\\"IT\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 25, 'Dual Camera 20MP', 'primary', '2021-09-03 16:42:35', '2021-09-03 16:42:35'),
(88, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 88, 'Historic Alarm Clock', 'danger', '2021-09-03 16:42:49', '2021-09-03 16:42:49'),
(89, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 89, 'Historic Alarm Clock', 'danger', '2021-09-03 16:42:49', '2021-09-03 16:42:49'),
(90, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 21, 'Historic Alarm Clock', 'danger', '2021-09-03 16:42:49', '2021-09-03 16:42:49'),
(91, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 87, 'Macbook Pro 2015 13 inch', 'danger', '2021-09-03 16:42:57', '2021-09-03 16:42:57'),
(92, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 20, 'Macbook Pro 2015 13 inch', 'danger', '2021-09-03 16:42:57', '2021-09-03 16:42:57'),
(93, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 84, 'Leather Watch Band Serial 3', 'danger', '2021-09-03 16:43:04', '2021-09-03 16:43:04'),
(94, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 85, 'Leather Watch Band Serial 3', 'danger', '2021-09-03 16:43:04', '2021-09-03 16:43:04'),
(95, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 86, 'Leather Watch Band Serial 3', 'danger', '2021-09-03 16:43:04', '2021-09-03 16:43:04'),
(96, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 19, 'Leather Watch Band Serial 3', 'danger', '2021-09-03 16:43:04', '2021-09-03 16:43:04'),
(97, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 78, 'Cool Smart Watches', 'danger', '2021-09-03 16:43:09', '2021-09-03 16:43:09'),
(98, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 79, 'Cool Smart Watches', 'danger', '2021-09-03 16:43:09', '2021-09-03 16:43:09'),
(99, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 80, 'Cool Smart Watches', 'danger', '2021-09-03 16:43:09', '2021-09-03 16:43:09'),
(100, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 17, 'Cool Smart Watches', 'danger', '2021-09-03 16:43:09', '2021-09-03 16:43:09'),
(101, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 74, 'Apple Airpods Serial 3', 'danger', '2021-09-03 16:43:14', '2021-09-03 16:43:14'),
(102, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 75, 'Apple Airpods Serial 3', 'danger', '2021-09-03 16:43:14', '2021-09-03 16:43:14'),
(103, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 76, 'Apple Airpods Serial 3', 'danger', '2021-09-03 16:43:14', '2021-09-03 16:43:14'),
(104, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 77, 'Apple Airpods Serial 3', 'danger', '2021-09-03 16:43:14', '2021-09-03 16:43:14'),
(105, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 16, 'Apple Airpods Serial 3', 'danger', '2021-09-03 16:43:14', '2021-09-03 16:43:14'),
(106, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 81, 'Black Smart Watches', 'danger', '2021-09-03 16:43:17', '2021-09-03 16:43:17'),
(107, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 82, 'Black Smart Watches', 'danger', '2021-09-03 16:43:17', '2021-09-03 16:43:17'),
(108, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 83, 'Black Smart Watches', 'danger', '2021-09-03 16:43:17', '2021-09-03 16:43:17'),
(109, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 18, 'Black Smart Watches', 'danger', '2021-09-03 16:43:17', '2021-09-03 16:43:17'),
(110, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 71, 'Hand playstation', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(111, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 72, 'Hand playstation', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(112, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 73, 'Hand playstation', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(113, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 15, 'Hand playstation', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(114, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 68, 'MacSafe 80W', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(115, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 69, 'MacSafe 80W', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(116, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 70, 'MacSafe 80W', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(117, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 14, 'MacSafe 80W', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(118, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 67, 'Apple Keyboard', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(119, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 13, 'Apple Keyboard', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(120, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 65, 'Macbook Pro 13 inch', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(121, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 66, 'Macbook Pro 13 inch', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(122, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 12, 'Macbook Pro 13 inch', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(123, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 63, 'Apple Watch Serial 7', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(124, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 64, 'Apple Watch Serial 7', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(125, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 11, 'Apple Watch Serial 7', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(126, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 62, 'Macbook Air 12 inch', 'danger', '2021-09-03 16:43:33', '2021-09-03 16:43:33'),
(127, 1, 'product', '{\"ids\":[\"15\",\"14\",\"13\",\"12\",\"11\",\"10\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 10, 'Macbook Air 12 inch', 'danger', '2021-09-03 16:43:34', '2021-09-03 16:43:34'),
(128, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 59, 'Macbook Pro 2015', 'danger', '2021-09-03 16:43:44', '2021-09-03 16:43:44'),
(129, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 60, 'Macbook Pro 2015', 'danger', '2021-09-03 16:43:44', '2021-09-03 16:43:44'),
(130, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 61, 'Macbook Pro 2015', 'danger', '2021-09-03 16:43:44', '2021-09-03 16:43:44'),
(131, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 9, 'Macbook Pro 2015', 'danger', '2021-09-03 16:43:44', '2021-09-03 16:43:44'),
(132, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 53, 'Leather Watch Band', 'danger', '2021-09-03 16:43:51', '2021-09-03 16:43:51'),
(133, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 54, 'Leather Watch Band', 'danger', '2021-09-03 16:43:51', '2021-09-03 16:43:51'),
(134, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 55, 'Leather Watch Band', 'danger', '2021-09-03 16:43:51', '2021-09-03 16:43:51'),
(135, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 7, 'Leather Watch Band', 'danger', '2021-09-03 16:43:51', '2021-09-03 16:43:51'),
(136, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 47, 'Camera Hikvision HK-35VS8', 'danger', '2021-09-03 16:43:57', '2021-09-03 16:43:57'),
(137, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 48, 'Camera Hikvision HK-35VS8', 'danger', '2021-09-03 16:43:57', '2021-09-03 16:43:57'),
(138, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 49, 'Camera Hikvision HK-35VS8', 'danger', '2021-09-03 16:43:57', '2021-09-03 16:43:57'),
(139, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 5, 'Camera Hikvision HK-35VS8', 'danger', '2021-09-03 16:43:57', '2021-09-03 16:43:57'),
(140, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 57, 'Apple iPhone 13 Plus', 'danger', '2021-09-03 16:44:41', '2021-09-03 16:44:41'),
(141, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 57, 'Apple iPhone 13 Plus', 'danger', '2021-09-03 16:44:41', '2021-09-03 16:44:41'),
(142, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 58, 'Apple iPhone 13 Plus', 'danger', '2021-09-03 16:44:44', '2021-09-03 16:44:44'),
(143, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 58, 'Apple iPhone 13 Plus', 'danger', '2021-09-03 16:44:44', '2021-09-03 16:44:44'),
(144, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Apple iPhone 13 Plus\",\"slug\":\"apple-iphone-13-plus\",\"slug_id\":\"717\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/banner-reset-password.jpg\",\"techbros\\/banner-registration.jpg\",null,\"techbros\\/banner-reset-password.jpg\"],\"variation_default_id\":\"25\",\"attribute_sets\":[\"1\",\"4\",\"7\"],\"sale_type\":\"0\",\"sku\":\"HS-121-A0\",\"price\":\"350000\",\"sale_price\":\"300000\",\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"16\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"862\",\"length\":\"10\",\"wide\":\"13\",\"height\":\"14\",\"related_products\":null,\"cross_sale_products\":\"16,20,10,4\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"6\",\"7\",\"13\"],\"brand_id\":\"0\",\"product_collections\":[\"2\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Printer\\\"},{\\\"value\\\":\\\"Office\\\"},{\\\"value\\\":\\\"IT\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 8, 'Apple iPhone 13 Plus', 'primary', '2021-09-03 16:45:31', '2021-09-03 16:45:31'),
(145, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 52, 'Camera Samsung SS-24', 'danger', '2021-09-03 16:46:14', '2021-09-03 16:46:14'),
(146, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 52, 'Camera Samsung SS-24', 'danger', '2021-09-03 16:46:14', '2021-09-03 16:46:14'),
(147, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 50, 'Camera Samsung SS-24', 'danger', '2021-09-03 16:46:17', '2021-09-03 16:46:17'),
(148, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 50, 'Camera Samsung SS-24', 'danger', '2021-09-03 16:46:17', '2021-09-03 16:46:17'),
(149, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 51, 'Camera Samsung SS-24', 'danger', '2021-09-03 16:46:20', '2021-09-03 16:46:20'),
(150, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 51, 'Camera Samsung SS-24', 'danger', '2021-09-03 16:46:21', '2021-09-03 16:46:21'),
(151, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Camera Samsung SS-24\",\"slug\":\"camera-samsung-ss-24\",\"slug_id\":\"715\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-134529887970.jpg\"],\"sale_type\":\"0\",\"sku\":\"HS-128-A0-A1\",\"price\":\"500000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"20\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"574\",\"length\":\"11\",\"wide\":\"19\",\"height\":\"12\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":\"31,23,27\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"2\",\"3\",\"12\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"2\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Electronic\\\"},{\\\"value\\\":\\\"Printer\\\"},{\\\"value\\\":\\\"IT\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 6, 'Camera Samsung SS-24', 'primary', '2021-09-03 16:46:41', '2021-09-03 16:46:41'),
(152, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 44, 'Chikie - Bluetooth Speaker', 'danger', '2021-09-03 16:47:11', '2021-09-03 16:47:11'),
(153, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 44, 'Chikie - Bluetooth Speaker', 'danger', '2021-09-03 16:47:11', '2021-09-03 16:47:11'),
(154, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 45, 'Chikie - Bluetooth Speaker', 'danger', '2021-09-03 16:47:14', '2021-09-03 16:47:14'),
(155, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 45, 'Chikie - Bluetooth Speaker', 'danger', '2021-09-03 16:47:14', '2021-09-03 16:47:14'),
(156, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 46, 'Chikie - Bluetooth Speaker', 'danger', '2021-09-03 16:47:17', '2021-09-03 16:47:17'),
(157, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 46, 'Chikie - Bluetooth Speaker', 'danger', '2021-09-03 16:47:17', '2021-09-03 16:47:17'),
(158, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Chikie - Bluetooth Speaker\",\"slug\":\"chikie-bluetooth-speaker\",\"slug_id\":\"713\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-129780983264.jpg\"],\"sale_type\":\"0\",\"sku\":\"HS-179-A0-A2\",\"price\":\"75000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"18\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"669\",\"length\":\"10\",\"wide\":\"17\",\"height\":\"11\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":\"20,17,23\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"7\",\"8\",\"11\"],\"brand_id\":\"0\",\"product_collections\":[\"2\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Mobile\\\"},{\\\"value\\\":\\\"Office\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 4, 'Chikie - Bluetooth Speaker', 'primary', '2021-09-03 16:47:42', '2021-09-03 16:47:42'),
(159, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 40, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:36', '2021-09-03 16:48:36'),
(160, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 40, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:36', '2021-09-03 16:48:36'),
(161, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 41, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:39', '2021-09-03 16:48:39'),
(162, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 41, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:39', '2021-09-03 16:48:39'),
(163, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 42, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:42', '2021-09-03 16:48:42'),
(164, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 42, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:42', '2021-09-03 16:48:42'),
(165, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 43, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:46', '2021-09-03 16:48:46'),
(166, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 43, 'Boxed - Bluetooth Headphone', 'danger', '2021-09-03 16:48:46', '2021-09-03 16:48:46'),
(167, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Boxed - Bluetooth Earphone\",\"slug\":\"boxed-bluetooth-earphone\",\"slug_id\":\"712\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-14479938258.jpg\"],\"sale_type\":\"0\",\"sku\":\"HS-126-A0-A3\",\"price\":\"261\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"14\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"710\",\"length\":\"19\",\"wide\":\"10\",\"height\":\"17\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":\"15,2,13,24\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"1\",\"4\",\"10\"],\"brand_id\":\"1\",\"product_collections\":[\"1\"],\"product_labels\":[\"3\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Iphone\\\"},{\\\"value\\\":\\\"Office\\\"},{\\\"value\\\":\\\"IT\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Boxed - Bluetooth Earphone', 'primary', '2021-09-03 16:48:59', '2021-09-03 16:48:59'),
(168, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 35, 'Headphone Ultra Bass', 'danger', '2021-09-03 16:49:11', '2021-09-03 16:49:11'),
(169, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 36, 'Headphone Ultra Bass', 'danger', '2021-09-03 16:49:11', '2021-09-03 16:49:11'),
(170, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 37, 'Headphone Ultra Bass', 'danger', '2021-09-03 16:49:11', '2021-09-03 16:49:11'),
(171, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 38, 'Headphone Ultra Bass', 'danger', '2021-09-03 16:49:11', '2021-09-03 16:49:11'),
(172, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 39, 'Headphone Ultra Bass', 'danger', '2021-09-03 16:49:11', '2021-09-03 16:49:11'),
(173, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 2, 'Headphone Ultra Bass', 'danger', '2021-09-03 16:49:11', '2021-09-03 16:49:11'),
(174, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 32, 'Smart Home Speaker', 'danger', '2021-09-03 16:50:05', '2021-09-03 16:50:05'),
(175, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 32, 'Smart Home Speaker', 'danger', '2021-09-03 16:50:06', '2021-09-03 16:50:06'),
(176, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 33, 'Smart Home Speaker', 'danger', '2021-09-03 16:50:08', '2021-09-03 16:50:08'),
(177, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 33, 'Smart Home Speaker', 'danger', '2021-09-03 16:50:08', '2021-09-03 16:50:08'),
(178, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 34, 'Smart Home Speaker', 'danger', '2021-09-03 16:50:11', '2021-09-03 16:50:11'),
(179, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 34, 'Smart Home Speaker', 'danger', '2021-09-03 16:50:11', '2021-09-03 16:50:11'),
(180, 1, 'product', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Samsung Note 20\",\"slug\":\"smart-note-20\",\"slug_id\":\"710\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"techbros\\/product-featured-75.jpg\",\"techbros\\/banner-search.jpg\"],\"sale_type\":\"0\",\"sku\":\"HS-171-A0-A2\",\"price\":\"258\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"18\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"652\",\"length\":\"15\",\"wide\":\"18\",\"height\":\"14\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":\"26,17,24,10\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"6\",\"7\",\"9\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Printer\\\"},{\\\"value\\\":\\\"Office\\\"},{\\\"value\\\":\\\"IT\\\"}]\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Samsung Note 20', 'primary', '2021-09-03 16:50:17', '2021-09-03 16:50:17'),
(181, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 20, 'ID: 20', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(182, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 19, 'ID: 19', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(183, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 18, 'ID: 18', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(184, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 17, 'ID: 17', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(185, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 16, 'ID: 16', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(186, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 15, 'ID: 15', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(187, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 14, 'ID: 14', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(188, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 13, 'ID: 13', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(189, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 12, 'ID: 12', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(190, 1, 'plugin-order', '{\"ids\":[\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\OrderTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 11, 'ID: 11', 'danger', '2021-09-03 16:50:48', '2021-09-03 16:50:48'),
(191, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 10, 'ID: 10', 'danger', '2021-09-03 16:51:22', '2021-09-03 16:51:22'),
(192, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 8, 'ID: 8', 'danger', '2021-09-03 16:51:31', '2021-09-03 16:51:31'),
(193, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 7, 'ID: 7', 'danger', '2021-09-03 16:51:35', '2021-09-03 16:51:35'),
(194, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 6, 'ID: 6', 'danger', '2021-09-03 16:51:41', '2021-09-03 16:51:41'),
(195, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 4, 'ID: 4', 'danger', '2021-09-03 16:51:45', '2021-09-03 16:51:45'),
(196, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'ID: 3', 'danger', '2021-09-03 16:51:50', '2021-09-03 16:51:50'),
(197, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 2, 'ID: 2', 'danger', '2021-09-03 16:51:55', '2021-09-03 16:51:55'),
(198, 1, 'plugin-order', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'danger', '2021-09-03 16:51:58', '2021-09-03 16:51:58');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(199, 1, 'flash-sale', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Winter Sale 1\",\"products\":\"4\",\"products_extra\":[{\"price\":\"50000\",\"quantity\":\"9\"}],\"submit\":\"save\",\"status\":\"published\",\"end_date\":\"2021\\/08\\/23\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Winter Sale 1', 'primary', '2021-09-03 16:52:21', '2021-09-03 16:52:21'),
(200, 1, 'flash-sale', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Winter Sale 2\",\"products\":\"31\",\"products_extra\":[{\"price\":\"300000\",\"quantity\":\"12\"}],\"submit\":\"save\",\"status\":\"published\",\"end_date\":\"2021\\/09\\/17\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 2, 'Winter Sale 2', 'primary', '2021-09-03 16:52:36', '2021-09-03 16:52:36'),
(201, 1, 'flash-sale', '{\"_token\":\"8W9O5365oZ71qzGMjVoGBTJONfMC2Ea8YwBJCNsT\",\"name\":\"Winter Sale 3\",\"products\":\"31 ,1\",\"products_extra\":[{\"price\":\"299990\",\"quantity\":\"10\"},{\"price\":\"300000\",\"quantity\":\"5\"}],\"submit\":\"save\",\"status\":\"published\",\"end_date\":\"2021\\/09\\/20\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 3, 'Winter Sale 3', 'primary', '2021-09-03 16:53:12', '2021-09-03 16:53:12'),
(202, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Abdulquddus Balogun', 'info', '2021-09-03 16:55:39', '2021-09-03 16:55:39'),
(203, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 0, 1, 'Abdulquddus Balogun', 'info', '2021-09-03 17:00:33', '2021-09-03 17:00:33'),
(204, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '127.0.0.1', 1, 1, 'Abdulquddus Balogun', 'info', '2021-09-03 17:02:26', '2021-09-03 17:02:26'),
(205, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 0, 1, 'Abdulquddus Balogun', 'info', '2021-09-07 17:39:58', '2021-09-07 17:39:58'),
(206, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 0, 1, 'Abdulquddus Balogun', 'info', '2021-09-09 10:33:11', '2021-09-09 10:33:11'),
(207, 1, 'brand', '{\"_token\":\"vI6sUqnP7rkkf2A4kj6lQyFlFleMbiUIAMjQKXVa\",\"name\":\"LG\",\"slug\":\"lg\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Brand\",\"description\":\"<p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/brand1569532743.jpg\\\" alt=\\\"Brand1569532743\\\"><br>&nbsp;<\\/p>\",\"website\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"logo\":\"techbros\\/brand1569532743.jpg\",\"is_featured\":\"1\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 4, 'LG', 'info', '2021-09-09 10:36:27', '2021-09-09 10:36:27'),
(208, 1, 'page', '{\"_token\":\"vI6sUqnP7rkkf2A4kj6lQyFlFleMbiUIAMjQKXVa\",\"name\":\"Analytics\",\"slug\":\"analytics\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Integrate with Google Analytics\",\"is_featured\":\"0\",\"content\":\"<h3>Getting credentials<\\/h3><ol><li>Go to <a href=\\\"https:\\/\\/console.developers.google.com\\/apis\\/dashboard\\\">https:\\/\\/console.developers.google.com\\/apis\\/dashboard<\\/a> and create a new project.<\\/li><\\/ol><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step1.png\\\" alt=\\\"step1\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step2-1.png\\\" alt=\\\"step2-1\\\"><\\/p><ol><li>Select your project and click on \\\"ENABLE APIS AND SERVICES\\\":<\\/li><\\/ol><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step3.png\\\" alt=\\\"step3\\\"><br>&nbsp;<\\/p><ol><li>Enable API:<\\/li><\\/ol><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step4.png\\\" alt=\\\"step4\\\"><br>&nbsp;<\\/p><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step5.png\\\" alt=\\\"step5\\\"><br>&nbsp;<\\/p><ol><li>Generate service account key and select role Viewer<\\/li><li><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step6.png\\\" alt=\\\"step6\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step7.png\\\" alt=\\\"step7\\\"><br>Open JSON file and copy its content, then go to Admin -&gt; Settings -&gt; General (\\/admin\\/settings\\/general) and update field \\\"Service Account Credentials\\\" in Analytics plugin settings by the content from JSON file:<\\/li><\\/ol><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step8.png\\\" alt=\\\"step8\\\"><br>&nbsp;<\\/p><ol><li><span style=\\\"background-color:rgb(255,255,255);color:rgb(82,82,82);\\\">It will look like this:<\\/span><\\/li><\\/ol><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step81.jpeg\\\" alt=\\\"step8.1\\\"><br>&nbsp;<\\/p><ol><li>Go to Google Analytics account: <a href=\\\"https:\\/\\/analytics.google.com\\/analytics\\/web\\/\\\">https:\\/\\/analytics.google.com\\/analytics\\/web\\/<\\/a>. Click on \\\"Admin\\\" =&gt; \\\"View Settings\\\" and copy \\\"View ID\\\" number, then go to \\/admin\\/settings\\/general and tab \\\"Google Analytics\\\" and paste to field View ID.<\\/li><\\/ol><p style=\\\"margin-left:0px;\\\">Note: Change in Google Analytics 4 property.<\\/p><p style=\\\"margin-left:0px;\\\">When creating a new property, you need to check the \\\"Create a Universal Analytics Property\\\" checkbox.<\\/p><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step9.png\\\" alt=\\\"step9\\\"><br>&nbsp;<\\/p><ol><li><span style=\\\"background-color:rgb(255,255,255);color:rgb(82,82,82);\\\">Then you will have view settings tab and View ID.<\\/span><\\/li><\\/ol><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step10.png\\\" alt=\\\"step10\\\"><br>&nbsp;<\\/p><ol><li>Open JSON credentials file and copy client email. Then click on \\\"User management\\\" and add that email to list account. Just need view only permission.<\\/li><\\/ol><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step11.png\\\" alt=\\\"step11\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step12.png\\\" alt=\\\"step12\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step13.png\\\" alt=\\\"step13\\\"><br>&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\">Consult Your developer if you got any problem.<\\/p><p style=\\\"margin-left:0px;\\\">Good luck!<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 10, 'Analytics', 'info', '2021-09-09 11:43:24', '2021-09-09 11:43:24'),
(209, 1, 'page', '{\"_token\":\"vI6sUqnP7rkkf2A4kj6lQyFlFleMbiUIAMjQKXVa\",\"name\":\"Analytics\",\"slug\":\"analytics\",\"slug_id\":\"772\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Integrate with Google Analytics\",\"is_featured\":\"0\",\"content\":\"<h3>Getting credentials<\\/h3><ul><li>Go to <a href=\\\"https:\\/\\/console.developers.google.com\\/apis\\/dashboard\\\">https:\\/\\/console.developers.google.com\\/apis\\/dashboard<\\/a> and create a new project.<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step1.png\\\" alt=\\\"step1\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step2-1.png\\\" alt=\\\"step2-1\\\"><\\/p><ul><li>&nbsp;<\\/li><li>Select your project and click on \\\"ENABLE APIS AND SERVICES\\\":<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step3.png\\\" alt=\\\"step3\\\"><br>&nbsp;<\\/p><ul><li>Enable API:<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step4.png\\\" alt=\\\"step4\\\"><br>&nbsp;<\\/p><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step5.png\\\" alt=\\\"step5\\\"><br>&nbsp;<\\/p><ul><li>Generate service account key and select role Viewer<\\/li><li>&nbsp;<\\/li><li><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step6.png\\\" alt=\\\"step6\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step7.png\\\" alt=\\\"step7\\\"><br>&nbsp;<\\/li><li>Open JSON file and copy its content, then go to Admin -&gt; Settings -&gt; General (\\/admin\\/settings\\/general) and update field \\\"Service Account Credentials\\\" in Analytics plugin settings by the content from JSON file:<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step8.png\\\" alt=\\\"step8\\\"><br>&nbsp;<\\/p><ul><li><span style=\\\"background-color:rgb(255,255,255);color:rgb(82,82,82);\\\">It will look like this:<\\/span><\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step81.jpeg\\\" alt=\\\"step8.1\\\"><br>&nbsp;<\\/p><ul><li>Go to Google Analytics account: <a href=\\\"https:\\/\\/analytics.google.com\\/analytics\\/web\\/\\\">https:\\/\\/analytics.google.com\\/analytics\\/web\\/<\\/a>. Click on \\\"Admin\\\" =&gt; \\\"View Settings\\\" and copy \\\"View ID\\\" number, then go to \\/admin\\/settings\\/general and tab \\\"Google Analytics\\\" and paste to field View ID.<\\/li><\\/ul><p style=\\\"margin-left:0px;\\\">Note: Change in Google Analytics 4 property.<\\/p><p style=\\\"margin-left:0px;\\\">When creating a new property, you need to check the \\\"Create a Universal Analytics Property\\\" checkbox.<\\/p><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step9.png\\\" alt=\\\"step9\\\"><br>&nbsp;<\\/p><ul><li>&nbsp;<\\/li><li><span style=\\\"background-color:rgb(255,255,255);color:rgb(82,82,82);\\\">Then you will have view settings tab and View ID.<\\/span><\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step10.png\\\" alt=\\\"step10\\\"><br>&nbsp;<\\/p><ul><li>&nbsp;<\\/li><li>Open JSON credentials file and copy client email. Then click on \\\"User management\\\" and add that email to list account. Just need view only permission.<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step11.png\\\" alt=\\\"step11\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step12.png\\\" alt=\\\"step12\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step13.png\\\" alt=\\\"step13\\\"><br>&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\">Consult Your developer if you got any problem.<\\/p><p style=\\\"margin-left:0px;\\\">Good luck!<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 10, 'Analytics', 'primary', '2021-09-09 13:08:50', '2021-09-09 13:08:50'),
(210, 1, 'page', '{\"_token\":\"vI6sUqnP7rkkf2A4kj6lQyFlFleMbiUIAMjQKXVa\",\"name\":\"Analytics\",\"slug\":\"analytics\",\"slug_id\":\"772\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Integrate with Google Analytics\",\"is_featured\":\"0\",\"content\":\"<h3>Getting credentials<\\/h3><ul><li>Go to <a href=\\\"https:\\/\\/console.developers.google.com\\/apis\\/dashboard\\\">https:\\/\\/console.developers.google.com\\/apis\\/dashboard<\\/a> and create a new project.<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step1.png\\\" alt=\\\"step1\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step2-1.png\\\" alt=\\\"step2-1\\\"><\\/p><ul><li>&nbsp;<\\/li><li>Select your project and click on \\\"ENABLE APIS AND SERVICES\\\":<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step3.png\\\" alt=\\\"step3\\\"><br>&nbsp;<\\/p><ul><li>Enable API:<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step4.png\\\" alt=\\\"step4\\\"><br>&nbsp;<\\/p><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step5.png\\\" alt=\\\"step5\\\"><br>&nbsp;<\\/p><ul><li>Generate service account key and select role Viewer<\\/li><li>&nbsp;<\\/li><li><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step6.png\\\" alt=\\\"step6\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step7.png\\\" alt=\\\"step7\\\"><br>&nbsp;<\\/li><li>Open JSON file and copy its content, then go to Admin -&gt; Settings -&gt; General (\\/admin\\/settings\\/general) and update field \\\"Service Account Credentials\\\" in Analytics plugin settings by the content from JSON file:<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step8.png\\\" alt=\\\"step8\\\"><br>&nbsp;<\\/p><ul><li><span style=\\\"background-color:rgb(255,255,255);color:rgb(82,82,82);\\\">It will look like this:<\\/span><\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step81.jpeg\\\" alt=\\\"step8.1\\\"><br>&nbsp;<\\/p><ul><li>Go to Google Analytics account: <a href=\\\"https:\\/\\/analytics.google.com\\/analytics\\/web\\/\\\">https:\\/\\/analytics.google.com\\/analytics\\/web\\/<\\/a>. Click on \\\"Admin\\\" =&gt; \\\"View Settings\\\" and copy \\\"View ID\\\" number, then go to \\/admin\\/settings\\/general and tab \\\"Google Analytics\\\" and paste to field View ID.<\\/li><\\/ul><p style=\\\"margin-left:0px;\\\">Note: Change in Google Analytics 4 property.<\\/p><p style=\\\"margin-left:0px;\\\">When creating a new property, you need to check the \\\"Create a Universal Analytics Property\\\" checkbox.<\\/p><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step9.png\\\" alt=\\\"step9\\\"><br>&nbsp;<\\/p><ul><li>&nbsp;<\\/li><li><span style=\\\"background-color:rgb(255,255,255);color:rgb(82,82,82);\\\">Then you will have view settings tab and View ID.<\\/span><\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step10.png\\\" alt=\\\"step10\\\"><br>&nbsp;<\\/p><ul><li>&nbsp;<\\/li><li>Open JSON credentials file and copy client email. Then click on \\\"User management\\\" and add that email to list account. Just need view only permission.<\\/li><li>&nbsp;<\\/li><\\/ul><p><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step11.png\\\" alt=\\\"step11\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step12.png\\\" alt=\\\"step12\\\"><br><img src=\\\"http:\\/\\/shopwise:8888\\/storage\\/techbros\\/step13.png\\\" alt=\\\"step13\\\"><br>&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\">Consult Your developer if you got any problem.<\\/p><p style=\\\"margin-left:0px;\\\">Good luck!<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 10, 'Analytics', 'primary', '2021-09-09 13:09:29', '2021-09-09 13:09:29'),
(211, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 0, 1, 'Abdulquddus Balogun', 'info', '2021-09-09 21:38:31', '2021-09-09 21:38:31'),
(212, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 16, 'Eos fugiat ipsum ad a.', 'danger', '2021-09-09 21:41:23', '2021-09-09 21:41:23'),
(213, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 17, 'Quae et tempora tempora.', 'danger', '2021-09-09 21:41:30', '2021-09-09 21:41:30'),
(214, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 18, 'Et sunt est eius.', 'danger', '2021-09-09 21:41:37', '2021-09-09 21:41:37'),
(215, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 19, 'At perferendis aut eius.', 'danger', '2021-09-09 21:41:45', '2021-09-09 21:41:45'),
(216, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 20, 'Qui tempora dolorem eos.', 'danger', '2021-09-09 21:41:53', '2021-09-09 21:41:53'),
(217, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 21, 'Vel in ipsum quis.', 'danger', '2021-09-09 21:42:03', '2021-09-09 21:42:03'),
(218, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 22, 'Ut libero sunt eos et.', 'danger', '2021-09-09 21:42:11', '2021-09-09 21:42:11'),
(219, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 23, 'Sed et qui sequi dolor.', 'danger', '2021-09-09 21:42:21', '2021-09-09 21:42:21'),
(220, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 24, 'Ex ea esse rerum id.', 'danger', '2021-09-09 21:42:32', '2021-09-09 21:42:32'),
(221, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 25, 'Animi iure esse at sunt.', 'danger', '2021-09-09 21:42:42', '2021-09-09 21:42:42'),
(222, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 26, 'Iure vel illo et.', 'danger', '2021-09-09 21:42:53', '2021-09-09 21:42:53'),
(223, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 27, 'Totam est dolore amet.', 'danger', '2021-09-09 21:43:12', '2021-09-09 21:43:12'),
(224, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 28, 'Qui et est non.', 'danger', '2021-09-09 21:43:22', '2021-09-09 21:43:22'),
(225, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 29, 'Sint ut quos qui beatae.', 'danger', '2021-09-09 21:43:31', '2021-09-09 21:43:31'),
(226, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 30, 'Qui et magni mollitia.', 'danger', '2021-09-09 21:43:41', '2021-09-09 21:43:41'),
(227, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 31, 'Veniam ea culpa aut eum.', 'danger', '2021-09-09 21:43:54', '2021-09-09 21:43:54'),
(228, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 32, 'Ut quos nihil ipsa qui.', 'danger', '2021-09-09 21:44:05', '2021-09-09 21:44:05'),
(229, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 33, 'Quas commodi qui esse.', 'danger', '2021-09-09 21:44:19', '2021-09-09 21:44:19'),
(230, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 34, 'Quas ut optio a.', 'danger', '2021-09-09 21:44:31', '2021-09-09 21:44:31'),
(231, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '::1', 1, 35, 'Voluptas est et et.', 'danger', '2021-09-09 21:44:45', '2021-09-09 21:44:45'),
(232, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '::1', 0, 1, 'Abdulquddus Balogun', 'info', '2021-09-13 21:19:51', '2021-09-13 21:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(2, 'Fashion', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(3, 'Electronic', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(4, 'Commercial', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-08-03 20:57:30', '2021-08-03 20:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2021-06-26 20:36:21', '2021-06-26 20:36:21'),
(2, 'widget_total_2', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(3, 'widget_total_themes', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(4, 'widget_total_3', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(5, 'widget_total_4', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(6, 'widget_total_users', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(7, 'widget_total_pages', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(8, 'widget_total_plugins', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(9, 'widget_analytics_general', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(10, 'widget_analytics_page', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(11, 'widget_analytics_browser', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(12, 'widget_posts_recent', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(13, 'widget_analytics_referrer', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(14, 'widget_audit_logs', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(15, 'widget_ecommerce_report_general', '2021-06-26 20:36:23', '2021-06-26 20:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 0, 1, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(2, NULL, 1, 2, 0, 1, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(3, NULL, 1, 3, 102, 0, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(4, NULL, 1, 4, 0, 1, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(5, NULL, 1, 5, 0, 1, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(6, NULL, 1, 6, 105, 0, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(7, NULL, 1, 7, 106, 0, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(8, NULL, 1, 8, 107, 0, '2021-09-09 12:17:43', '2021-09-09 12:17:43'),
(9, NULL, 1, 9, 0, 1, '2021-09-09 12:17:43', '2021-09-09 14:17:29'),
(10, NULL, 1, 10, 1, 1, '2021-09-09 12:17:43', '2021-09-09 14:17:29'),
(11, NULL, 1, 11, 2, 1, '2021-09-09 12:17:43', '2021-09-09 14:17:29'),
(12, NULL, 1, 12, 3, 1, '2021-09-09 12:17:43', '2021-09-09 14:17:29'),
(13, NULL, 1, 13, 4, 1, '2021-09-09 12:17:43', '2021-09-09 14:17:29'),
(14, NULL, 1, 14, 5, 1, '2021-09-09 12:17:43', '2021-09-09 14:17:29'),
(15, NULL, 1, 15, 6, 1, '2021-09-09 12:17:43', '2021-09-09 14:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', '<figure class=\"image image_resized\" style=\"width:36.34%;\"><img src=\"http://127.0.0.1:8000/storage/techbros/brand171154724.jpg\" alt=\"Brand171154724\"></figure><p>&nbsp;</p><p>Conveniently create error-free paradigms with empowered relationships. Distinctively network client-centered users without accurate markets. Continually formulate superior opportunities via integrated metrics. Continually supply economically sound core competencies vis-a-vis frictionless e-commerce. Completely revolutionize distinctive supply chains vis-a-vis performance based solutions.</p><p>Distinctively innovate premier services before parallel intellectual capital. Objectively synergize professional sources before enterprise partnerships. Proactively expedite economically sound content and emerging solutions. Progressively strategize accurate e-tailers via cross.<br>&nbsp;</p>', NULL, 'techbros/brand171154724.jpg', 'published', 0, 1, '2021-08-03 20:56:38', '2021-09-03 16:27:05'),
(2, 'iPhone', '<p>Assertively impact goal-oriented methodologies before empowered initiatives. Authoritatively customize functionalized deliverables with intuitive results. Distinctively deploy business bandwidth via go forward platforms. Seamlessly mesh client-focused web-readiness and accurate portals. Rapidiously parallel task high-quality leadership skills via standardized expertise.</p><p>Interactively predominate extensible strategic theme areas through reliable core competencies. Dynamically predominate backend innovation rather than resource-leveling models. Competently.</p>', NULL, 'techbros/brand1634422079.jpg', 'published', 1, 1, '2021-08-03 20:56:38', '2021-09-03 16:27:50'),
(3, 'Hp', '<p>Rapidiously promote quality data whereas integrated collaboration and idea-sharing. Competently synergize integrated e-commerce after emerging results. Holisticly pontificate clicks-and-mortar value after 2.0 best practices. Proactively exploit optimal products.</p>', NULL, 'techbros/brand711832412.jpg', 'published', 2, 1, '2021-08-03 20:56:38', '2021-09-03 16:28:36'),
(4, 'LG', '<p><img src=\"http://shopwise:8888/storage/techbros/brand1569532743.jpg\" alt=\"Brand1569532743\"><br>&nbsp;</p>', NULL, 'techbros/brand1569532743.jpg', 'published', 0, 1, '2021-09-09 10:36:27', '2021-09-09 10:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED DEFAULT '0',
  `order` int(10) UNSIGNED DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 0, 1, '2021-08-03 20:56:38', '2021-09-03 16:18:41'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2021-08-03 20:56:38', '2021-08-03 20:56:38'),
(3, 'VND', '₫', 0, 0, 2, 0, 23203, '2021-08-03 20:56:38', '2021-08-03 20:56:38'),
(4, 'NGN', '₦', 1, 0, 3, 1, 450, '2021-09-03 16:18:41', '2021-09-03 16:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`) VALUES
(1, 'Raji Rasheed', 'rajrash@gmail.com', '$2y$10$AHUM9YaVv291gmSEMrjLpOD/yyVzAVWiXaj.WGsyMLfKQaoGiI21.', 'customers/1.jpg', NULL, '+18700893153', NULL, '2021-08-03 20:56:41', '2021-09-03 16:20:58', '2021-08-04 03:56:41', NULL),
(2, 'Abdulsalam Shakirah', 'divaspenzy@gmail.com', '$2y$10$qbiNWfxLiyG0OR0ZmcuE/uP2fekJwIVzMDY4HiRuNofJqDSJfrDBS', 'customers/1.jpg', NULL, '+12622180015', NULL, '2021-08-03 20:56:42', '2021-09-03 16:21:28', '2021-08-04 03:56:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '+18143013087', 'NL', 'Nebraska', 'Kesslerchester', '325 Lacy Shoals', 1, 1, '2021-08-03 20:56:41', '2021-08-03 20:56:41', '86299-9672'),
(2, 'John Smith', 'john.smith@botble.com', '+12481073840', 'ML', 'Alaska', 'Alanchester', '20270 Bella Cape', 1, 0, '2021-08-03 20:56:41', '2021-08-03 20:56:41', '21330'),
(3, 'Chelsea Emmerich', 'flatley.emilie@example.net', '+19100037503', 'MC', 'Oklahoma', 'Kautzerbury', '6202 Linnea Parks', 2, 1, '2021-08-03 20:56:42', '2021-08-03 20:56:42', '10662'),
(4, 'Dr. Rodrigo Sipes', 'maryjane42@example.net', '+15749076641', 'FO', 'New Mexico', 'Gorczanyfort', '271 Dietrich Square', 3, 1, '2021-08-03 20:56:42', '2021-08-03 20:56:42', '17892'),
(5, 'Green Goodwin', 'juwan68@example.net', '+13056457310', 'AX', 'Michigan', 'Lake Edgardo', '81970 Savion Field Apt. 897', 4, 1, '2021-08-03 20:56:42', '2021-08-03 20:56:42', '31223'),
(6, 'Celia Harber I', 'werner04@example.org', '+17579970560', 'JM', 'Vermont', 'Port Orrin', '803 Trantow Shores Suite 249', 5, 1, '2021-08-03 20:56:42', '2021-08-03 20:56:42', '78984'),
(7, 'Dr. Roberta Schaden MD', 'kgraham@example.com', '+14424449897', 'BJ', 'Montana', 'Ernsershire', '80584 Pollich Knoll', 6, 1, '2021-08-03 20:56:43', '2021-08-03 20:56:43', '43429'),
(8, 'Lottie Lehner', 'johnpaul.braun@example.com', '+18312812585', 'TN', 'Illinois', 'Lake Marisa', '440 Buckridge Cape Apt. 054', 7, 1, '2021-08-03 20:56:43', '2021-08-03 20:56:43', '03766'),
(9, 'Gardner Hamill MD', 'deshaun82@example.org', '+15634922077', 'UY', 'Hawaii', 'Kennethport', '759 Upton Circle', 8, 1, '2021-08-03 20:56:43', '2021-08-03 20:56:43', '92385-9344'),
(10, 'Judson Ledner', 'ziemann.regan@example.net', '+17817752471', 'MP', 'Mississippi', 'East Faustino', '425 Kassulke Stravenue', 9, 1, '2021-08-03 20:56:44', '2021-08-03 20:56:44', '47615'),
(11, 'Ms. Rosalyn Schiller III', 'kutch.nikko@example.com', '+19256853950', 'SK', 'New Hampshire', 'Kossfort', '44174 Rosie Underpass Apt. 273', 10, 1, '2021-08-03 20:56:44', '2021-08-03 20:56:44', '22497'),
(12, 'Prof. Laurel VonRueden DVM', 'jconsidine@example.org', '+14780670502', 'PY', 'Alaska', 'South Bereniceborough', '81063 Stan Parkways Suite 600', 11, 1, '2021-08-03 20:56:44', '2021-08-03 20:56:44', '79494-1443');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Winter Sale 1', '2021-08-23 00:00:00', 'published', '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(2, 'Winter Sale 2', '2021-09-17 00:00:00', 'published', '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(3, 'Winter Sale 3', '2021-09-20 00:00:00', 'published', '2021-08-03 20:57:29', '2021-08-03 20:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 4, 50000, 9, 3),
(2, 31, 300000, 12, 5),
(3, 31, 299990, 10, 3),
(3, 1, 300000, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`) VALUES
(5, 2, '1', 'default', 'completed', '510.20', '24.20', '0.00', NULL, NULL, '0.00', '486.00', 1, NULL, 1, 'N4k8dEp6FF5NBLmqgKdhc4UBiRf8q', 5, '2021-07-26 20:57:29', '2021-08-03 20:57:29'),
(9, 1, '1', 'default', 'completed', '1871.90', '77.90', '0.00', NULL, NULL, '0.00', '1794.00', 1, NULL, 1, 's4FhWg6kEHdNIazStERB05vGmoXQS', 9, '2021-08-02 20:57:29', '2021-08-03 20:57:29'),
(21, 0, '1', 'default', 'pending', '14700.00', '700.00', '0.00', 'Uniquely predominate standards compliant channels with alternative e-services. Proactively parallel task.', NULL, '0.00', '14000.00', 0, NULL, 1, '2990c10ea19127ce5798b005ee81c3a0', NULL, '2021-09-03 16:56:42', '2021-09-03 16:57:20'),
(22, 0, '1', 'default', 'pending', '157500.00', '7500.00', '0.00', NULL, NULL, '0.00', '150000.00', 0, NULL, 1, 'd08ff3d4e4951e86cfe11d8eddc0c133', NULL, '2021-09-07 17:57:18', '2021-09-07 17:57:51'),
(23, 0, '1', 'default', 'pending', '14700.00', '700.00', '0.00', NULL, NULL, '0.00', '14000.00', 0, NULL, 1, 'cbdcbd4cef3a4a787ed4a5ff746c8f2e', NULL, '2021-09-09 14:18:04', '2021-09-09 14:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(5, 'Chelsea Emmerich', '+19100037503', 'flatley.emilie@example.net', 'MC', 'Oklahoma', 'Kautzerbury', '6202 Linnea Parks', 5, '10662'),
(9, 'John Smith', '+18143013087', 'john.smith@botble.com', 'NL', 'Nebraska', 'Kesslerchester', '325 Lacy Shoals', 9, '86299-9672'),
(21, 'Balogun Abdulquddus', '08085744967', 'babusunnah@gmail.com', 'NG', 'Lagos', 'Alimosho', 'babusunnah@gmail.com', 21, NULL),
(22, 'Balogun Abdulquddus', '08085744967', 'babusunnah@gmail.com', 'NG', 'Lagos', 'Alimosho', '16 Aminu Ajibode Avenue, Unity Estate, Abule-odu, Egbeda, Lagos Nigeria', 22, NULL),
(23, 'Balogun Abdulquddus', '08085744967', 'babusunnah@gmail.com', 'NG', 'Lagos', 'Alimosho', '16 Aminu Ajibode Avenue, Unity Estate, Abule-odu, Egbeda, Lagos Nigeria', 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(19, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2021-07-26 20:57:29', '2021-07-26 20:57:29'),
(20, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2021-07-26 20:57:29', '2021-07-26 20:57:29'),
(21, 'confirm_payment', 'Payment was confirmed (amount $510.20) by %user_name%', 0, 5, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(22, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(23, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(37, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2021-08-02 20:57:29', '2021-08-02 20:57:29'),
(38, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2021-08-02 20:57:29', '2021-08-02 20:57:29'),
(39, 'confirm_payment', 'Payment was confirmed (amount $1,871.90) by %user_name%', 0, 9, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(40, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(41, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(91, 'update_status', 'Order confirmed by %user_name%', 0, 5, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(93, 'update_status', 'Order confirmed by %user_name%', 0, 9, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(98, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 21, NULL, '2021-09-03 16:57:20', '2021-09-03 16:57:20'),
(99, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 22, NULL, '2021-09-07 17:57:51', '2021-09-07 17:57:51'),
(100, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 23, NULL, '2021-09-09 14:18:20', '2021-09-09 14:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(14, 5, 1, '120.00', '12.00', '[]', 64, 'Apple Watch Serial 7', 525.00, 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(15, 5, 3, '122.00', '12.20', '[]', 95, 'Gaming Keyboard', 1641.00, 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(27, 9, 3, '447.00', '44.70', '[]', 35, 'Headphone Ultra Bass', 2025.00, 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(28, 9, 1, '90.00', '9.00', '[]', 46, 'Chikie - Bluetooth Speaker', 669.00, 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(29, 9, 1, '121.00', '12.10', '[]', 68, 'MacSafe 80W', 718.00, 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(30, 9, 2, '121.00', '12.10', '[]', 70, 'MacSafe 80W', 1436.00, 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(65, 21, 1, '14000.00', '700.00', '[]', 28, 'Red & Black Headphone', 728.00, 0, '2021-09-03 16:57:20', '2021-09-03 16:57:20'),
(67, 22, 1, '150000.00', '7500.00', '[]', 25, 'Dual Camera 20MP', 624.00, 0, '2021-09-07 17:57:51', '2021-09-07 17:57:51'),
(69, 23, 1, '14000.00', '700.00', '[]', 28, 'Red & Black Headphone', 728.00, 0, '2021-09-09 14:18:20', '2021-09-09 14:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT '0',
  `is_searchable` tinyint(4) NOT NULL DEFAULT '0',
  `is_show_on_list` tinyint(4) NOT NULL DEFAULT '0',
  `sale_type` tinyint(4) NOT NULL DEFAULT '0',
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(1, 'Samsung Note 20', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-75.jpg\",\"techbros\\/banner-search.jpg\"]', 'HS-171-A0-A2', 0, 18, 0, 1, 1, NULL, NULL, 0, 0, 0, 0, 0, 258, NULL, NULL, NULL, 15.00, 18.00, 14.00, 652.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:27', '2021-09-03 16:50:17', 1, 50914, 'in_stock'),
(3, 'Boxed - Bluetooth Earphone', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-14479938258.jpg\"]', 'HS-126-A0-A3', 0, 14, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 261, NULL, NULL, NULL, 19.00, 10.00, 17.00, 710.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:27', '2021-09-03 16:48:59', 1, 183193, 'in_stock'),
(4, 'Chikie - Bluetooth Speaker', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-129780983264.jpg\"]', 'HS-179-A0-A2', 0, 18, 0, 1, 1, NULL, NULL, 0, 0, 0, 0, 0, 75000, NULL, NULL, NULL, 10.00, 17.00, 11.00, 669.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:27', '2021-09-09 21:45:28', 1, 122882, 'in_stock'),
(6, 'Camera Samsung SS-24', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-134529887970.jpg\"]', 'HS-128-A0-A1', 0, 20, 0, 1, 1, NULL, NULL, 0, 0, 0, 0, 0, 500000, NULL, NULL, NULL, 11.00, 19.00, 12.00, 574.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-03 16:46:41', 1, 46039, 'in_stock'),
(8, 'Apple iPhone 13 Plus', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/banner-reset-password.jpg\",\"techbros\\/banner-registration.jpg\",\"techbros\\/banner-reset-password.jpg\"]', 'HS-121-A0', 0, 16, 0, 1, 1, NULL, NULL, 0, 0, 0, 0, 0, 350000, 300000, NULL, NULL, 10.00, 13.00, 14.00, 862.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-03 16:45:31', 1, 113820, 'in_stock'),
(25, 'Dual Camera 20MP', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-71849530567.jpg\"]', 'HS-197-A0-A3', 0, 10, 0, 1, 1, NULL, NULL, 0, 0, 0, 0, 0, 150000, NULL, NULL, NULL, 17.00, 16.00, 20.00, 624.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-07 17:57:51', 1, 12495, 'in_stock'),
(26, 'Smart Watches', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-841592953.jpg\",\"techbros\\/product-featured-22889006262.jpg\",\"techbros\\/product-featured-22889006262.jpg\"]', 'HS-140-A0', 0, 19, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 30000, NULL, NULL, NULL, 16.00, 18.00, 13.00, 541.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-03 16:41:02', 1, 67071, 'in_stock'),
(28, 'Red & Black Headphone', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-77378457551.jpg\",\"techbros\\/product-featured-77378457551.jpg\"]', 'HS-178-A0-A4', 0, 8, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 15000, 14000, NULL, NULL, 12.00, 14.00, 18.00, 728.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-09 14:18:20', 1, 82949, 'in_stock'),
(31, 'Hp 360 laptop', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p><p>- Casual unisex fit</p><p>- 64% polyester, 36% polyurethane</p><p>- Water column pressure: 4000 mm</p><p>- Model is 187cm tall and wearing a size S / M</p><p>- Unisex fit</p><p>- Drawstring hood with built-in cap</p><p>- Front placket with snap buttons</p><p>- Ventilation under armpit</p><p>- Adjustable cuffs</p><p>- Double welted front pockets</p><p>- Adjustable elastic string at hempen</p><p>- Ultrasonically welded seams</p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"techbros\\/product-featured-149037761369.jpg\",\"techbros\\/product-featured-149037761369.jpg\"]', 'HS-193-A0-A2', 0, 15, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 1, 300000, 250000, '2021-09-03 17:35:14', '2021-09-10 17:35:19', 11.00, 10.00, 13.00, 663.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-03 16:36:43', 1, 15768, 'in_stock'),
(56, 'Apple iPhone 13 Plus', NULL, NULL, 'published', '[null,\"techbros\\/banner-reset-password.jpg\"]', 'HS-121-A0', 0, 16, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 350000, 300000, NULL, NULL, 10.00, 13.00, 14.00, 862.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-03 16:45:31', NULL, 0, 'in_stock'),
(100, 'Smart Watches', NULL, NULL, 'published', '[null,\"techbros\\/product-featured-841592953.jpg\"]', 'HS-140-A0', 0, 19, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 30000, NULL, NULL, NULL, 16.00, 18.00, 13.00, 541.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-03 16:41:02', NULL, 0, 'in_stock'),
(101, 'Smart Watches', NULL, NULL, 'published', '[null,\"techbros\\/product-featured-22889006262.jpg\"]', 'HS-140-A0-A1', 0, 19, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 25000, NULL, NULL, NULL, 16.00, 18.00, 13.00, 541.00, NULL, NULL, NULL, NULL, NULL, '2021-08-03 20:57:28', '2021-09-03 16:41:02', NULL, 0, 'in_stock');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(6, 2, 'S', 's', '', '', 0, 0, 'published', '2021-08-03 20:56:40', '2021-09-03 16:30:48'),
(7, 2, 'M', 'm', '', '', 0, 1, 'published', '2021-08-03 20:56:40', '2021-09-03 16:30:48'),
(8, 2, 'L', 'l', '', '', 0, 2, 'published', '2021-08-03 20:56:40', '2021-09-03 16:30:48'),
(9, 2, 'XL', 'xl', '', '', 0, 3, 'published', '2021-08-03 20:56:40', '2021-09-03 16:30:48'),
(10, 2, 'XXL', 'xxl', '', '', 1, 4, 'published', '2021-08-03 20:56:40', '2021-09-03 16:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(3, 'Storage', 'storage', 'dropdown', 1, 1, 1, 'published', 3, '2021-09-03 16:30:04', '2021-09-03 16:30:04'),
(4, 'RAM', 'ram', 'dropdown', 1, 1, 1, 'published', 4, '2021-09-03 16:31:24', '2021-09-03 16:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Television', 0, NULL, 'published', 0, 'product-categories/p-1.png', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(2, 'Mobile', 0, NULL, 'published', 1, 'product-categories/p-2.png', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(3, 'Headphone', 0, NULL, 'published', 2, 'product-categories/p-3.png', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(4, 'Watches', 0, NULL, 'published', 3, 'product-categories/p-4.png', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(5, 'Game', 0, NULL, 'published', 4, 'product-categories/p-5.png', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(6, 'Camera', 0, NULL, 'published', 5, 'product-categories/p-6.png', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(7, 'Audio', 0, NULL, 'published', 6, 'product-categories/p-7.png', 1, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(8, 'Mobile & Tablet', 0, NULL, 'published', 7, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(9, 'Accessories', 0, NULL, 'published', 8, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(10, 'Home Audio & Theater', 0, NULL, 'published', 9, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(11, 'Tv & Smart Box', 0, NULL, 'published', 10, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(12, 'Printer', 0, NULL, 'published', 11, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(13, 'Computer', 0, NULL, 'published', 12, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(14, 'Fax Machine', 0, NULL, 'published', 13, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(15, 'Mouse', 0, NULL, 'published', 14, NULL, 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 7, 1),
(2, 6, 1),
(3, 9, 1),
(7, 10, 3),
(8, 4, 3),
(9, 1, 3),
(10, 8, 4),
(11, 11, 4),
(12, 7, 4),
(16, 3, 6),
(17, 2, 6),
(18, 12, 6),
(21, 6, 8),
(22, 13, 8),
(23, 7, 8),
(67, 8, 25),
(68, 11, 25),
(69, 2, 25),
(70, 5, 26),
(71, 11, 26),
(72, 7, 26),
(76, 8, 28),
(77, 5, 28),
(78, 9, 28),
(85, 1, 31),
(86, 5, 31),
(87, 8, 31);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`id`, `product_collection_id`, `product_id`) VALUES
(1, 1, 1),
(3, 1, 3),
(4, 2, 4),
(6, 1, 6),
(8, 2, 8),
(25, 1, 25),
(26, 2, 26),
(28, 1, 28),
(31, 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`id`, `from_product_id`, `to_product_id`) VALUES
(791, 31, 2),
(792, 28, 30),
(793, 28, 31),
(794, 26, 23),
(795, 26, 27),
(796, 25, 31),
(797, 25, 24),
(798, 25, 23),
(799, 8, 16),
(800, 8, 20),
(801, 8, 10),
(802, 8, 4),
(803, 6, 31),
(804, 6, 23),
(805, 6, 27),
(806, 4, 20),
(807, 4, 17),
(808, 4, 23),
(809, 3, 15),
(810, 3, 2),
(811, 3, 13),
(812, 3, 24),
(813, 1, 26),
(814, 1, 17),
(815, 1, 24),
(816, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(2, 'New', '#00c9a7', 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(3, 'Sale', '#fe9931', 'published', '2021-08-03 20:56:40', '2021-08-03 20:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 12),
(1, 15),
(1, 24),
(1, 25),
(2, 6),
(2, 21),
(2, 30),
(3, 3),
(3, 9),
(3, 18),
(3, 27);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', NULL, 'published', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(2, 'Mobile', NULL, 'published', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(3, 'Iphone', NULL, 'published', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(4, 'Printer', NULL, 'published', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(5, 'Office', NULL, 'published', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(6, 'IT', NULL, 'published', '2021-08-03 20:57:28', '2021-08-03 20:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 4),
(1, 5),
(1, 6),
(2, 3),
(2, 4),
(2, 6),
(3, 3),
(3, 5),
(3, 6),
(4, 2),
(4, 5),
(5, 4),
(5, 6),
(6, 1),
(6, 4),
(6, 6),
(7, 3),
(7, 4),
(8, 4),
(8, 5),
(8, 6),
(9, 3),
(9, 5),
(10, 4),
(10, 5),
(11, 1),
(11, 4),
(11, 6),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 2),
(15, 4),
(15, 5),
(16, 2),
(16, 4),
(16, 5),
(17, 1),
(17, 4),
(18, 1),
(18, 4),
(18, 5),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(20, 4),
(20, 5),
(21, 3),
(21, 5),
(21, 6),
(22, 4),
(22, 5),
(23, 2),
(23, 5),
(23, 6),
(24, 3),
(24, 4),
(24, 6),
(25, 5),
(25, 6),
(26, 1),
(26, 3),
(27, 1),
(27, 5),
(27, 6),
(28, 2),
(28, 3),
(28, 4),
(29, 2),
(29, 3),
(29, 6),
(30, 3),
(30, 5),
(31, 3),
(31, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(25, 56, 8, 1),
(69, 100, 26, 1),
(70, 101, 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(49, 4, 25),
(50, 7, 25),
(138, 6, 69),
(140, 8, 70),
(175, 2, 69),
(178, 5, 70);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute`
--

INSERT INTO `ec_product_with_attribute` (`id`, `attribute_id`, `product_id`) VALUES
(15, 3, 8),
(16, 9, 8),
(51, 3, 26),
(52, 9, 26);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`id`, `attribute_set_id`, `product_id`, `order`) VALUES
(15, 1, 8, 0),
(16, 2, 8, 0),
(51, 1, 26, 0),
(52, 2, 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`) VALUES
(5, 5, NULL, 2166.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(9, 9, NULL, 4848.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(12, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2021-07-26 20:57:29', '2021-07-26 20:57:29'),
(13, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2021-08-02 12:57:29', '2021-08-03 20:57:29'),
(14, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, 5, '2021-08-03 20:57:29', '2021-08-03 20:57:29'),
(22, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2021-08-02 20:57:29', '2021-08-02 20:57:29'),
(23, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2021-08-02 20:57:29', '2021-08-03 20:57:29'),
(24, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, 9, '2021-08-03 20:57:29', '2021-08-03 20:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Delivery', 1, 'base_on_price', '0.00', NULL, '0.00', '2021-08-03 20:57:29', '2021-08-03 20:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'techbros', 'sales@techbros.com', '08085744967', '16 Aminu Ajibode Avenue, Unity Estate, Abule-odu, Egbeda, Lagos Nigeria', 'NG', 'Lagos', 'Alimosho', 1, 1, '2021-08-03 20:57:32', '2021-09-03 16:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 5.000000, 1, 'published', '2021-08-03 20:57:28', '2021-09-03 16:19:14'),
(2, 'None', 0.000000, 2, 'published', '2021-08-03 20:57:28', '2021-08-03 20:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(901, 0, '1', 55, 'image/png', 3509, 'brands/1.png', '[]', '2021-08-03 20:56:36', '2021-08-03 20:56:36', NULL),
(902, 0, '2', 55, 'image/png', 3505, 'brands/2.png', '[]', '2021-08-03 20:56:37', '2021-08-03 20:56:37', NULL),
(903, 0, '3', 55, 'image/png', 2585, 'brands/3.png', '[]', '2021-08-03 20:56:37', '2021-08-03 20:56:37', NULL),
(904, 0, '4', 55, 'image/png', 6427, 'brands/4.png', '[]', '2021-08-03 20:56:37', '2021-08-03 20:56:37', NULL),
(905, 0, '5', 55, 'image/png', 3246, 'brands/5.png', '[]', '2021-08-03 20:56:37', '2021-08-03 20:56:37', NULL),
(906, 0, '6', 55, 'image/png', 3276, 'brands/6.png', '[]', '2021-08-03 20:56:37', '2021-08-03 20:56:37', NULL),
(907, 0, '7', 55, 'image/png', 3120, 'brands/7.png', '[]', '2021-08-03 20:56:38', '2021-08-03 20:56:38', NULL),
(908, 0, 'p-1', 56, 'image/png', 9577, 'product-categories/p-1.png', '[]', '2021-08-03 20:56:38', '2021-08-03 20:56:38', NULL),
(909, 0, 'p-2', 56, 'image/png', 5510, 'product-categories/p-2.png', '[]', '2021-08-03 20:56:38', '2021-08-03 20:56:38', NULL),
(910, 0, 'p-3', 56, 'image/png', 16215, 'product-categories/p-3.png', '[]', '2021-08-03 20:56:38', '2021-08-03 20:56:38', NULL),
(911, 0, 'p-4', 56, 'image/png', 7394, 'product-categories/p-4.png', '[]', '2021-08-03 20:56:39', '2021-08-03 20:56:39', NULL),
(912, 0, 'p-5', 56, 'image/png', 6714, 'product-categories/p-5.png', '[]', '2021-08-03 20:56:39', '2021-08-03 20:56:39', NULL),
(913, 0, 'p-6', 56, 'image/png', 9541, 'product-categories/p-6.png', '[]', '2021-08-03 20:56:39', '2021-08-03 20:56:39', NULL),
(914, 0, 'p-7', 56, 'image/png', 13677, 'product-categories/p-7.png', '[]', '2021-08-03 20:56:39', '2021-08-03 20:56:39', NULL),
(915, 0, '1', 57, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-08-03 20:56:40', '2021-08-03 20:56:40', NULL),
(916, 0, '10', 57, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-08-03 20:56:40', '2021-08-03 20:56:40', NULL),
(917, 0, '2', 57, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-08-03 20:56:40', '2021-08-03 20:56:40', NULL),
(918, 0, '3', 57, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-08-03 20:56:40', '2021-08-03 20:56:40', NULL),
(919, 0, '4', 57, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-08-03 20:56:40', '2021-08-03 20:56:40', NULL),
(920, 0, '5', 57, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-08-03 20:56:41', '2021-08-03 20:56:41', NULL),
(921, 0, '6', 57, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-08-03 20:56:41', '2021-08-03 20:56:41', NULL),
(922, 0, '7', 57, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-08-03 20:56:41', '2021-08-03 20:56:41', NULL),
(923, 0, '8', 57, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-08-03 20:56:41', '2021-08-03 20:56:41', NULL),
(924, 0, '9', 57, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-08-03 20:56:41', '2021-08-03 20:56:41', NULL),
(925, 0, '1-1', 58, 'image/jpeg', 88437, 'products/1-1.jpg', '[]', '2021-08-03 20:56:44', '2021-08-03 20:56:44', NULL),
(926, 0, '1-2', 58, 'image/jpeg', 122690, 'products/1-2.jpg', '[]', '2021-08-03 20:56:45', '2021-08-03 20:56:45', NULL),
(927, 0, '1-3', 58, 'image/jpeg', 117296, 'products/1-3.jpg', '[]', '2021-08-03 20:56:45', '2021-08-03 20:56:45', NULL),
(928, 0, '1', 58, 'image/jpeg', 139025, 'products/1.jpg', '[]', '2021-08-03 20:56:46', '2021-08-03 20:56:46', NULL),
(929, 0, '10-1', 58, 'image/jpeg', 183491, 'products/10-1.jpg', '[]', '2021-08-03 20:56:46', '2021-08-03 20:56:46', NULL),
(930, 0, '10', 58, 'image/jpeg', 150956, 'products/10.jpg', '[]', '2021-08-03 20:56:47', '2021-08-03 20:56:47', NULL),
(931, 0, '11-1', 58, 'image/jpeg', 246200, 'products/11-1.jpg', '[]', '2021-08-03 20:56:47', '2021-08-03 20:56:47', NULL),
(932, 0, '11', 58, 'image/jpeg', 279390, 'products/11.jpg', '[]', '2021-08-03 20:56:48', '2021-08-03 20:56:48', NULL),
(933, 0, '12-1', 58, 'image/jpeg', 249712, 'products/12-1.jpg', '[]', '2021-08-03 20:56:48', '2021-08-03 20:56:48', NULL),
(934, 0, '12', 58, 'image/jpeg', 172221, 'products/12.jpg', '[]', '2021-08-03 20:56:49', '2021-08-03 20:56:49', NULL),
(935, 0, '13-1', 58, 'image/jpeg', 257021, 'products/13-1.jpg', '[]', '2021-08-03 20:56:50', '2021-08-03 20:56:50', NULL),
(936, 0, '13', 58, 'image/jpeg', 232917, 'products/13.jpg', '[]', '2021-08-03 20:56:50', '2021-08-03 20:56:50', NULL),
(937, 0, '14-1', 58, 'image/jpeg', 201773, 'products/14-1.jpg', '[]', '2021-08-03 20:56:51', '2021-08-03 20:56:51', NULL),
(938, 0, '14', 58, 'image/jpeg', 287194, 'products/14.jpg', '[]', '2021-08-03 20:56:51', '2021-08-03 20:56:51', NULL),
(939, 0, '15-1', 58, 'image/jpeg', 273720, 'products/15-1.jpg', '[]', '2021-08-03 20:56:52', '2021-08-03 20:56:52', NULL),
(940, 0, '15', 58, 'image/jpeg', 114265, 'products/15.jpg', '[]', '2021-08-03 20:56:52', '2021-08-03 20:56:52', NULL),
(941, 0, '16', 58, 'image/jpeg', 97174, 'products/16.jpg', '[]', '2021-08-03 20:56:53', '2021-08-03 20:56:53', NULL),
(942, 0, '17', 58, 'image/jpeg', 70179, 'products/17.jpg', '[]', '2021-08-03 20:56:54', '2021-08-03 20:56:54', NULL),
(943, 0, '18-1', 58, 'image/jpeg', 287835, 'products/18-1.jpg', '[]', '2021-08-03 20:56:55', '2021-08-03 20:56:55', NULL),
(944, 0, '18-2', 58, 'image/jpeg', 454869, 'products/18-2.jpg', '[]', '2021-08-03 20:56:57', '2021-08-03 20:56:57', NULL),
(945, 0, '18', 58, 'image/jpeg', 257331, 'products/18.jpg', '[]', '2021-08-03 20:56:59', '2021-08-03 20:56:59', NULL),
(946, 0, '19-1', 58, 'image/jpeg', 144008, 'products/19-1.jpg', '[]', '2021-08-03 20:57:00', '2021-08-03 20:57:00', NULL),
(947, 0, '19', 58, 'image/jpeg', 188821, 'products/19.jpg', '[]', '2021-08-03 20:57:01', '2021-08-03 20:57:01', NULL),
(948, 0, '2-1', 58, 'image/jpeg', 138167, 'products/2-1.jpg', '[]', '2021-08-03 20:57:01', '2021-08-03 20:57:01', NULL),
(949, 0, '2-2', 58, 'image/jpeg', 230552, 'products/2-2.jpg', '[]', '2021-08-03 20:57:02', '2021-08-03 20:57:02', NULL),
(950, 0, '2-3', 58, 'image/jpeg', 179301, 'products/2-3.jpg', '[]', '2021-08-03 20:57:02', '2021-08-03 20:57:02', NULL),
(951, 0, '2', 58, 'image/jpeg', 130048, 'products/2.jpg', '[]', '2021-08-03 20:57:03', '2021-08-03 20:57:03', NULL),
(952, 0, '20-1', 58, 'image/jpeg', 249712, 'products/20-1.jpg', '[]', '2021-08-03 20:57:03', '2021-08-03 20:57:03', NULL),
(953, 0, '20', 58, 'image/jpeg', 172221, 'products/20.jpg', '[]', '2021-08-03 20:57:04', '2021-08-03 20:57:04', NULL),
(954, 0, '21-1', 58, 'image/jpeg', 260746, 'products/21-1.jpg', '[]', '2021-08-03 20:57:04', '2021-08-03 20:57:04', NULL),
(955, 0, '21', 58, 'image/jpeg', 124244, 'products/21.jpg', '[]', '2021-08-03 20:57:06', '2021-08-03 20:57:06', NULL),
(956, 0, '22-1', 58, 'image/jpeg', 268620, 'products/22-1.jpg', '[]', '2021-08-03 20:57:07', '2021-08-03 20:57:07', NULL),
(957, 0, '22', 58, 'image/jpeg', 128692, 'products/22.jpg', '[]', '2021-08-03 20:57:08', '2021-08-03 20:57:08', NULL),
(958, 0, '23-1', 58, 'image/jpeg', 105560, 'products/23-1.jpg', '[]', '2021-08-03 20:57:09', '2021-08-03 20:57:09', NULL),
(959, 0, '23', 58, 'image/jpeg', 177362, 'products/23.jpg', '[]', '2021-08-03 20:57:11', '2021-08-03 20:57:11', NULL),
(960, 0, '24-1', 58, 'image/jpeg', 239311, 'products/24-1.jpg', '[]', '2021-08-03 20:57:12', '2021-08-03 20:57:12', NULL),
(961, 0, '24', 58, 'image/jpeg', 363853, 'products/24.jpg', '[]', '2021-08-03 20:57:12', '2021-08-03 20:57:12', NULL),
(962, 0, '25-1', 58, 'image/jpeg', 17089, 'products/25-1.jpg', '[]', '2021-08-03 20:57:14', '2021-08-03 20:57:14', NULL),
(963, 0, '25', 58, 'image/jpeg', 18069, 'products/25.jpg', '[]', '2021-08-03 20:57:14', '2021-08-03 20:57:14', NULL),
(964, 0, '26-1', 58, 'image/jpeg', 13085, 'products/26-1.jpg', '[]', '2021-08-03 20:57:14', '2021-08-03 20:57:14', NULL),
(965, 0, '26-2', 58, 'image/jpeg', 22667, 'products/26-2.jpg', '[]', '2021-08-03 20:57:14', '2021-08-03 20:57:14', NULL),
(966, 0, '26', 58, 'image/jpeg', 13611, 'products/26.jpg', '[]', '2021-08-03 20:57:14', '2021-08-03 20:57:14', NULL),
(967, 0, '27-1', 58, 'image/jpeg', 10286, 'products/27-1.jpg', '[]', '2021-08-03 20:57:14', '2021-08-03 20:57:14', NULL),
(968, 0, '27', 58, 'image/jpeg', 12569, 'products/27.jpg', '[]', '2021-08-03 20:57:15', '2021-08-03 20:57:15', NULL),
(969, 0, '28-1', 58, 'image/jpeg', 15654, 'products/28-1.jpg', '[]', '2021-08-03 20:57:15', '2021-08-03 20:57:15', NULL),
(970, 0, '28', 58, 'image/jpeg', 18243, 'products/28.jpg', '[]', '2021-08-03 20:57:15', '2021-08-03 20:57:15', NULL),
(971, 0, '29-1', 58, 'image/jpeg', 27890, 'products/29-1.jpg', '[]', '2021-08-03 20:57:15', '2021-08-03 20:57:15', NULL),
(972, 0, '29', 58, 'image/jpeg', 27961, 'products/29.jpg', '[]', '2021-08-03 20:57:15', '2021-08-03 20:57:15', NULL),
(973, 0, '3-1', 58, 'image/jpeg', 135741, 'products/3-1.jpg', '[]', '2021-08-03 20:57:15', '2021-08-03 20:57:15', NULL),
(974, 0, '3-2', 58, 'image/jpeg', 123069, 'products/3-2.jpg', '[]', '2021-08-03 20:57:16', '2021-08-03 20:57:16', NULL),
(975, 0, '3-3', 58, 'image/jpeg', 98645, 'products/3-3.jpg', '[]', '2021-08-03 20:57:17', '2021-08-03 20:57:17', NULL),
(976, 0, '3', 58, 'image/jpeg', 201722, 'products/3.jpg', '[]', '2021-08-03 20:57:17', '2021-08-03 20:57:17', NULL),
(977, 0, '30-1', 58, 'image/jpeg', 26283, 'products/30-1.jpg', '[]', '2021-08-03 20:57:18', '2021-08-03 20:57:18', NULL),
(978, 0, '30', 58, 'image/jpeg', 27107, 'products/30.jpg', '[]', '2021-08-03 20:57:18', '2021-08-03 20:57:18', NULL),
(979, 0, '31-1', 58, 'image/jpeg', 25924, 'products/31-1.jpg', '[]', '2021-08-03 20:57:18', '2021-08-03 20:57:18', NULL),
(980, 0, '31', 58, 'image/jpeg', 18634, 'products/31.jpg', '[]', '2021-08-03 20:57:18', '2021-08-03 20:57:18', NULL),
(981, 0, '4-1', 58, 'image/jpeg', 205312, 'products/4-1.jpg', '[]', '2021-08-03 20:57:18', '2021-08-03 20:57:18', NULL),
(982, 0, '4-2', 58, 'image/jpeg', 223903, 'products/4-2.jpg', '[]', '2021-08-03 20:57:19', '2021-08-03 20:57:19', NULL),
(983, 0, '4-3', 58, 'image/jpeg', 106593, 'products/4-3.jpg', '[]', '2021-08-03 20:57:20', '2021-08-03 20:57:20', NULL),
(984, 0, '4', 58, 'image/jpeg', 456134, 'products/4.jpg', '[]', '2021-08-03 20:57:20', '2021-08-03 20:57:20', NULL),
(985, 0, '5-1', 58, 'image/jpeg', 110014, 'products/5-1.jpg', '[]', '2021-08-03 20:57:21', '2021-08-03 20:57:21', NULL),
(986, 0, '5-2', 58, 'image/jpeg', 104934, 'products/5-2.jpg', '[]', '2021-08-03 20:57:22', '2021-08-03 20:57:22', NULL),
(987, 0, '5-3', 58, 'image/jpeg', 131628, 'products/5-3.jpg', '[]', '2021-08-03 20:57:22', '2021-08-03 20:57:22', NULL),
(988, 0, '5', 58, 'image/jpeg', 214767, 'products/5.jpg', '[]', '2021-08-03 20:57:23', '2021-08-03 20:57:23', NULL),
(989, 0, '6-1', 58, 'image/jpeg', 128041, 'products/6-1.jpg', '[]', '2021-08-03 20:57:23', '2021-08-03 20:57:23', NULL),
(990, 0, '6', 58, 'image/jpeg', 148485, 'products/6.jpg', '[]', '2021-08-03 20:57:24', '2021-08-03 20:57:24', NULL),
(991, 0, '7-1', 58, 'image/jpeg', 144008, 'products/7-1.jpg', '[]', '2021-08-03 20:57:24', '2021-08-03 20:57:24', NULL),
(992, 0, '7', 58, 'image/jpeg', 188821, 'products/7.jpg', '[]', '2021-08-03 20:57:25', '2021-08-03 20:57:25', NULL),
(993, 0, '8-1', 58, 'image/jpeg', 274272, 'products/8-1.jpg', '[]', '2021-08-03 20:57:25', '2021-08-03 20:57:25', NULL),
(994, 0, '8', 58, 'image/jpeg', 217862, 'products/8.jpg', '[]', '2021-08-03 20:57:26', '2021-08-03 20:57:26', NULL),
(995, 0, '9-1', 58, 'image/jpeg', 65624, 'products/9-1.jpg', '[]', '2021-08-03 20:57:26', '2021-08-03 20:57:26', NULL),
(996, 0, '9', 58, 'image/jpeg', 159636, 'products/9.jpg', '[]', '2021-08-03 20:57:27', '2021-08-03 20:57:27', NULL),
(997, 0, '1', 59, 'image/jpeg', 82629, 'news/1.jpg', '[]', '2021-08-03 20:57:29', '2021-08-03 20:57:29', NULL),
(998, 0, '2', 59, 'image/jpeg', 119904, 'news/2.jpg', '[]', '2021-08-03 20:57:29', '2021-08-03 20:57:29', NULL),
(999, 0, '3', 59, 'image/jpeg', 89543, 'news/3.jpg', '[]', '2021-08-03 20:57:30', '2021-08-03 20:57:30', NULL),
(1000, 0, '4', 59, 'image/jpeg', 51573, 'news/4.jpg', '[]', '2021-08-03 20:57:30', '2021-08-03 20:57:30', NULL),
(1001, 0, '5', 59, 'image/jpeg', 41164, 'news/5.jpg', '[]', '2021-08-03 20:57:30', '2021-08-03 20:57:30', NULL),
(1002, 0, '6', 59, 'image/jpeg', 80696, 'news/6.jpg', '[]', '2021-08-03 20:57:30', '2021-08-03 20:57:30', NULL),
(1003, 0, '1', 60, 'image/jpeg', 2733, 'testimonials/1.jpg', '[]', '2021-08-03 20:57:30', '2021-08-03 20:57:30', NULL),
(1004, 0, '2', 60, 'image/jpeg', 2840, 'testimonials/2.jpg', '[]', '2021-08-03 20:57:30', '2021-08-03 20:57:30', NULL),
(1005, 0, '3', 60, 'image/jpeg', 3065, 'testimonials/3.jpg', '[]', '2021-08-03 20:57:31', '2021-08-03 20:57:31', NULL),
(1006, 0, '4', 60, 'image/jpeg', 2559, 'testimonials/4.jpg', '[]', '2021-08-03 20:57:31', '2021-08-03 20:57:31', NULL),
(1007, 0, '1', 61, 'image/jpeg', 98636, 'sliders/1.jpg', '[]', '2021-08-03 20:57:31', '2021-08-03 20:57:31', NULL),
(1008, 0, '2', 61, 'image/jpeg', 22560, 'sliders/2.jpg', '[]', '2021-08-03 20:57:31', '2021-08-03 20:57:31', NULL),
(1009, 0, '3', 61, 'image/jpeg', 21630, 'sliders/3.jpg', '[]', '2021-08-03 20:57:31', '2021-08-03 20:57:31', NULL),
(1010, 0, 'american-express', 62, 'image/png', 3209, 'general/american-express.png', '[]', '2021-08-03 20:57:32', '2021-08-03 20:57:32', NULL),
(1011, 0, 'b-1', 62, 'image/jpeg', 20539, 'general/b-1.jpg', '[]', '2021-08-03 20:57:32', '2021-08-03 20:57:32', NULL),
(1012, 0, 'b-2', 62, 'image/jpeg', 18320, 'general/b-2.jpg', '[]', '2021-08-03 20:57:32', '2021-08-03 20:57:32', NULL),
(1013, 0, 'b-3', 62, 'image/jpeg', 42872, 'general/b-3.jpg', '[]', '2021-08-03 20:57:32', '2021-08-03 20:57:32', NULL),
(1014, 0, 'discover', 62, 'image/png', 2494, 'general/discover.png', '[]', '2021-08-03 20:57:32', '2021-08-03 20:57:32', NULL),
(1015, 0, 'favicon', 62, 'image/png', 1803, 'general/favicon.png', '[]', '2021-08-03 20:57:33', '2021-08-03 20:57:33', NULL),
(1016, 0, 'logo-light', 62, 'image/png', 3736, 'general/logo-light.png', '[]', '2021-08-03 20:57:33', '2021-08-03 20:57:33', NULL),
(1017, 0, 'logo', 62, 'image/png', 3927, 'general/logo.png', '[]', '2021-08-03 20:57:33', '2021-08-03 20:57:33', NULL),
(1018, 0, 'master-card', 62, 'image/png', 3407, 'general/master-card.png', '[]', '2021-08-03 20:57:33', '2021-08-03 20:57:33', NULL),
(1019, 0, 'newsletter', 62, 'image/jpeg', 48929, 'general/newsletter.jpg', '[]', '2021-08-03 20:57:33', '2021-08-03 20:57:33', NULL),
(1020, 0, 'paypal', 62, 'image/png', 2670, 'general/paypal.png', '[]', '2021-08-03 20:57:33', '2021-08-03 20:57:33', NULL),
(1021, 0, 'visa', 62, 'image/png', 2841, 'general/visa.png', '[]', '2021-08-03 20:57:34', '2021-08-03 20:57:34', NULL),
(1022, 1, 'banner_registration', 63, 'image/jpeg', 147662, 'techbros/banner-registration.jpg', '[]', '2021-09-03 15:58:08', '2021-09-03 15:58:08', NULL),
(1023, 1, 'banner_reset_password', 63, 'image/jpeg', 42300, 'techbros/banner-reset-password.jpg', '[]', '2021-09-03 15:58:09', '2021-09-03 15:58:09', NULL),
(1024, 1, 'banner_search', 63, 'image/jpeg', 49200, 'techbros/banner-search.jpg', '[]', '2021-09-03 15:58:10', '2021-09-03 15:58:10', NULL),
(1025, 1, 'banner', 63, 'image/jpeg', 19254, 'techbros/banner.jpg', '[]', '2021-09-03 15:58:10', '2021-09-03 15:58:10', NULL),
(1026, 1, 'blog-banner', 63, 'image/jpeg', 21636, 'techbros/blog-banner.jpg', '[]', '2021-09-03 15:58:11', '2021-09-03 15:58:11', NULL),
(1027, 1, 'contact-banner', 63, 'image/jpeg', 21636, 'techbros/contact-banner.jpg', '[]', '2021-09-03 15:58:12', '2021-09-03 15:58:12', NULL),
(1028, 1, 'cta', 63, 'image/jpeg', 23621, 'techbros/cta.jpg', '[]', '2021-09-03 15:58:12', '2021-09-03 15:58:12', NULL),
(1029, 1, 'faq-banner', 63, 'image/jpeg', 21636, 'techbros/faq-banner.jpg', '[]', '2021-09-03 15:58:13', '2021-09-03 15:58:13', NULL),
(1030, 1, 'favicon', 63, 'image/jpeg', 36090, 'techbros/favicon.jpg', '[]', '2021-09-03 15:58:14', '2021-09-03 15:58:14', NULL),
(1031, 1, 'logo', 63, 'image/jpeg', 44954, 'techbros/logo.jpg', '[]', '2021-09-03 15:58:15', '2021-09-03 15:58:15', NULL),
(1032, 1, 'product-featured-75', 63, 'image/jpeg', 49200, 'techbros/product-featured-75.jpg', '[]', '2021-09-03 15:59:05', '2021-09-03 15:59:05', NULL),
(1033, 1, 'product-featured-841592953', 63, 'image/jpeg', 14848, 'techbros/product-featured-841592953.jpg', '[]', '2021-09-03 15:59:06', '2021-09-03 15:59:06', NULL),
(1034, 1, 'product-featured-3662020044', 63, 'image/jpeg', 5048, 'techbros/product-featured-3662020044.jpg', '[]', '2021-09-03 15:59:06', '2021-09-03 15:59:06', NULL),
(1035, 1, 'product-featured-4432749445', 63, 'image/jpeg', 11144, 'techbros/product-featured-4432749445.jpg', '[]', '2021-09-03 15:59:07', '2021-09-03 15:59:07', NULL),
(1036, 1, 'product-featured-14479938258', 63, 'image/jpeg', 6134, 'techbros/product-featured-14479938258.jpg', '[]', '2021-09-03 15:59:08', '2021-09-03 15:59:08', NULL),
(1037, 1, 'product-featured-22889006262', 63, 'image/jpeg', 49590, 'techbros/product-featured-22889006262.jpg', '[]', '2021-09-03 15:59:08', '2021-09-03 15:59:08', NULL),
(1038, 1, 'product-featured-24898732148', 63, 'image/jpeg', 6033, 'techbros/product-featured-24898732148.jpg', '[]', '2021-09-03 15:59:09', '2021-09-03 15:59:09', NULL),
(1039, 1, 'product-featured-26750533246', 63, 'image/jpeg', 13545, 'techbros/product-featured-26750533246.jpg', '[]', '2021-09-03 15:59:10', '2021-09-03 15:59:10', NULL),
(1040, 1, 'product-featured-27867157156', 63, 'image/jpeg', 59172, 'techbros/product-featured-27867157156.jpg', '[]', '2021-09-03 15:59:10', '2021-09-03 15:59:10', NULL),
(1041, 1, 'product-featured-28488139940', 63, 'image/jpeg', 4910, 'techbros/product-featured-28488139940.jpg', '[]', '2021-09-03 15:59:11', '2021-09-03 15:59:11', NULL),
(1042, 1, 'product-featured-33820736659', 63, 'image/jpeg', 6596, 'techbros/product-featured-33820736659.jpg', '[]', '2021-09-03 15:59:11', '2021-09-03 15:59:11', NULL),
(1043, 1, 'product-featured-37872680072', 63, 'image/jpeg', 87293, 'techbros/product-featured-37872680072.jpg', '[]', '2021-09-03 15:59:12', '2021-09-03 15:59:12', NULL),
(1044, 1, 'product-featured-51521059066', 63, 'image/jpeg', 55406, 'techbros/product-featured-51521059066.jpg', '[]', '2021-09-03 15:59:13', '2021-09-03 15:59:13', NULL),
(1045, 1, 'product-featured-51918271857', 63, 'image/jpeg', 199540, 'techbros/product-featured-51918271857.jpg', '[]', '2021-09-03 15:59:13', '2021-09-03 15:59:13', NULL),
(1046, 1, 'product-featured-55150159168', 63, 'image/jpeg', 32969, 'techbros/product-featured-55150159168.jpg', '[]', '2021-09-03 15:59:14', '2021-09-03 15:59:14', NULL),
(1047, 1, 'product-featured-71849530567', 63, 'image/jpeg', 37036, 'techbros/product-featured-71849530567.jpg', '[]', '2021-09-03 15:59:15', '2021-09-03 15:59:15', NULL),
(1048, 1, 'product-featured-72799485273', 63, 'image/jpeg', 31924, 'techbros/product-featured-72799485273.jpg', '[]', '2021-09-03 15:59:16', '2021-09-03 15:59:16', NULL),
(1049, 1, 'product-featured-77378457551', 63, 'image/jpeg', 12328, 'techbros/product-featured-77378457551.jpg', '[]', '2021-09-03 15:59:16', '2021-09-03 15:59:16', NULL),
(1050, 1, 'product-featured-83861361347', 63, 'image/jpeg', 7562, 'techbros/product-featured-83861361347.jpg', '[]', '2021-09-03 15:59:17', '2021-09-03 15:59:17', NULL),
(1051, 1, 'product-featured-87471681054', 63, 'image/jpeg', 34723, 'techbros/product-featured-87471681054.jpg', '[]', '2021-09-03 15:59:18', '2021-09-03 15:59:18', NULL),
(1052, 1, 'product-featured-101984034855', 63, 'image/jpeg', 45430, 'techbros/product-featured-101984034855.jpg', '[]', '2021-09-03 15:59:18', '2021-09-03 15:59:18', NULL),
(1053, 1, 'product-featured-104088715161', 63, 'image/jpeg', 134784, 'techbros/product-featured-104088715161.jpg', '[]', '2021-09-03 15:59:19', '2021-09-03 15:59:19', NULL),
(1054, 1, 'product-featured-104807385665', 63, 'image/jpeg', 108360, 'techbros/product-featured-104807385665.jpg', '[]', '2021-09-03 15:59:20', '2021-09-03 15:59:20', NULL),
(1055, 1, 'product-featured-129780983264', 63, 'image/jpeg', 44068, 'techbros/product-featured-129780983264.jpg', '[]', '2021-09-03 15:59:21', '2021-09-03 15:59:21', NULL),
(1056, 1, 'product-featured-132109325163', 63, 'image/jpeg', 29621, 'techbros/product-featured-132109325163.jpg', '[]', '2021-09-03 15:59:21', '2021-09-03 15:59:21', NULL),
(1057, 1, 'product-featured-134529887970', 63, 'image/jpeg', 60992, 'techbros/product-featured-134529887970.jpg', '[]', '2021-09-03 15:59:22', '2021-09-03 15:59:22', NULL),
(1058, 1, 'product-featured-142590163543', 63, 'image/jpeg', 26396, 'techbros/product-featured-142590163543.jpg', '[]', '2021-09-03 15:59:23', '2021-09-03 15:59:23', NULL),
(1059, 1, 'product-featured-149037761369', 63, 'image/jpeg', 35869, 'techbros/product-featured-149037761369.jpg', '[]', '2021-09-03 15:59:23', '2021-09-03 15:59:23', NULL),
(1060, 1, 'product-featured-159319355849', 63, 'image/jpeg', 40443, 'techbros/product-featured-159319355849.jpg', '[]', '2021-09-03 15:59:24', '2021-09-03 15:59:24', NULL),
(1061, 1, 'product-featured-168033090660', 63, 'image/jpeg', 9167, 'techbros/product-featured-168033090660.jpg', '[]', '2021-09-03 15:59:25', '2021-09-03 15:59:25', NULL),
(1062, 1, 'product-featured-180572765942', 63, 'image/jpeg', 21600, 'techbros/product-featured-180572765942.jpg', '[]', '2021-09-03 15:59:25', '2021-09-03 15:59:25', NULL),
(1063, 1, 'product-featured-181053217150', 63, 'image/jpeg', 21146, 'techbros/product-featured-181053217150.jpg', '[]', '2021-09-03 15:59:26', '2021-09-03 15:59:26', NULL),
(1064, 1, 'product-featured-193108786552', 63, 'image/jpeg', 25983, 'techbros/product-featured-193108786552.jpg', '[]', '2021-09-03 15:59:26', '2021-09-03 15:59:26', NULL),
(1065, 1, 'product-featured-202082242371', 63, 'image/jpeg', 57977, 'techbros/product-featured-202082242371.jpg', '[]', '2021-09-03 15:59:27', '2021-09-03 15:59:27', NULL),
(1066, 1, 'product-featured-207871471241', 63, 'image/jpeg', 9441, 'techbros/product-featured-207871471241.jpg', '[]', '2021-09-03 15:59:28', '2021-09-03 15:59:28', NULL),
(1067, 1, 'service-5', 63, 'image/png', 2520, 'techbros/service-5.png', '[]', '2021-09-03 15:59:28', '2021-09-03 15:59:28', NULL),
(1068, 1, 'service-7', 63, 'image/png', 3689, 'techbros/service-7.png', '[]', '2021-09-03 15:59:29', '2021-09-03 15:59:29', NULL),
(1069, 1, 'service-8', 63, 'image/png', 2605, 'techbros/service-8.png', '[]', '2021-09-03 15:59:29', '2021-09-03 15:59:29', NULL),
(1070, 1, 'slider-1', 63, 'image/jpeg', 11758, 'techbros/slider-1.jpg', '[]', '2021-09-03 15:59:30', '2021-09-03 15:59:30', NULL),
(1074, 1, 'Brand', 63, 'image/jpeg', 1833, 'techbros/brand.jpg', '[]', '2021-09-03 16:25:27', '2021-09-03 16:25:27', NULL),
(1075, 1, 'Brand72723243', 63, 'image/png', 2140, 'techbros/brand72723243.png', '[]', '2021-09-03 16:25:27', '2021-09-03 16:25:27', NULL),
(1076, 1, 'Brand93927215', 63, 'image/png', 596487, 'techbros/brand93927215.png', '[]', '2021-09-03 16:25:28', '2021-09-03 16:25:28', NULL),
(1077, 1, 'Brand171154724', 63, 'image/jpeg', 7127, 'techbros/brand171154724.jpg', '[]', '2021-09-03 16:25:29', '2021-09-03 16:25:29', NULL),
(1078, 1, 'Brand299846326', 63, 'image/jpeg', 3595, 'techbros/brand299846326.jpg', '[]', '2021-09-03 16:25:30', '2021-09-03 16:25:30', NULL),
(1079, 1, 'Brand427173518', 63, 'image/png', 3548, 'techbros/brand427173518.png', '[]', '2021-09-03 16:25:31', '2021-09-03 16:25:31', NULL),
(1080, 1, 'Brand490801135', 63, 'image/png', 3994, 'techbros/brand490801135.png', '[]', '2021-09-03 16:25:31', '2021-09-03 16:25:31', NULL),
(1081, 1, 'Brand569205491', 63, 'image/png', 4521, 'techbros/brand569205491.png', '[]', '2021-09-03 16:25:32', '2021-09-03 16:25:32', NULL),
(1082, 1, 'Brand711832412', 63, 'image/jpeg', 2569, 'techbros/brand711832412.jpg', '[]', '2021-09-03 16:25:33', '2021-09-03 16:25:33', NULL),
(1083, 1, 'Brand866018424', 63, 'image/png', 4035, 'techbros/brand866018424.png', '[]', '2021-09-03 16:25:33', '2021-09-03 16:25:33', NULL),
(1084, 1, 'Brand1211204547', 63, 'image/jpeg', 949, 'techbros/brand1211204547.jpg', '[]', '2021-09-03 16:25:34', '2021-09-03 16:25:34', NULL),
(1085, 1, 'Brand1482082819', 63, 'image/jpeg', 1238, 'techbros/brand1482082819.jpg', '[]', '2021-09-03 16:25:35', '2021-09-03 16:25:35', NULL),
(1086, 1, 'Brand1569532743', 63, 'image/jpeg', 1633, 'techbros/brand1569532743.jpg', '[]', '2021-09-03 16:25:35', '2021-09-03 16:25:35', NULL),
(1087, 1, 'Brand1634422079', 63, 'image/jpeg', 1431, 'techbros/brand1634422079.jpg', '[]', '2021-09-03 16:25:36', '2021-09-03 16:25:36', NULL),
(1088, 1, 'Brand1712727612', 63, 'image/png', 4307, 'techbros/brand1712727612.png', '[]', '2021-09-03 16:25:36', '2021-09-03 16:25:36', NULL),
(1089, 1, 'Brand1717420545', 63, 'image/jpeg', 4849, 'techbros/brand1717420545.jpg', '[]', '2021-09-03 16:25:37', '2021-09-03 16:25:37', NULL),
(1090, 1, 'Brand1789756500', 63, 'image/png', 4660, 'techbros/brand1789756500.png', '[]', '2021-09-03 16:25:38', '2021-09-03 16:25:38', NULL),
(1091, 1, 'Brand1906161773', 63, 'image/jpeg', 15416, 'techbros/brand1906161773.jpg', '[]', '2021-09-03 16:25:38', '2021-09-03 16:25:38', NULL),
(1092, 1, 'Brand1915708450', 63, 'image/png', 3770, 'techbros/brand1915708450.png', '[]', '2021-09-03 16:25:39', '2021-09-03 16:25:39', NULL),
(1093, 1, 'Brand2007060994', 63, 'image/jpeg', 1833, 'techbros/brand2007060994.jpg', '[]', '2021-09-03 16:25:39', '2021-09-03 16:25:39', NULL),
(1094, 1, 'Brand2023256193', 63, 'image/png', 2060, 'techbros/brand2023256193.png', '[]', '2021-09-03 16:25:40', '2021-09-03 16:25:40', NULL),
(1095, 1, 'Brand2031115263', 63, 'image/jpeg', 2046, 'techbros/brand2031115263.jpg', '[]', '2021-09-03 16:25:41', '2021-09-03 16:25:41', NULL),
(1096, 1, 'Brand2041627695', 63, 'image/png', 3777, 'techbros/brand2041627695.png', '[]', '2021-09-03 16:25:41', '2021-09-03 16:25:41', NULL),
(1097, 1, 'Brand2065761315', 63, 'image/jpeg', 6273, 'techbros/brand2065761315.jpg', '[]', '2021-09-03 16:25:42', '2021-09-03 16:25:42', NULL),
(1098, 1, 'step1', 63, 'image/png', 504970, 'techbros/step1.png', '[]', '2021-09-09 11:30:11', '2021-09-09 11:30:11', NULL),
(1099, 1, 'step2', 63, 'image/png', 166449, 'techbros/step2.png', '[]', '2021-09-09 11:30:14', '2021-09-09 11:30:14', NULL),
(1100, 1, 'step3', 63, 'image/png', 293340, 'techbros/step3.png', '[]', '2021-09-09 11:30:15', '2021-09-09 11:30:15', NULL),
(1101, 1, 'step4', 63, 'image/png', 282148, 'techbros/step4.png', '[]', '2021-09-09 11:30:17', '2021-09-09 11:30:17', NULL),
(1102, 1, 'step5', 63, 'image/png', 347471, 'techbros/step5.png', '[]', '2021-09-09 11:30:18', '2021-09-09 11:30:18', NULL),
(1103, 1, 'step6', 63, 'image/png', 380552, 'techbros/step6.png', '[]', '2021-09-09 11:30:20', '2021-09-09 11:30:20', NULL),
(1104, 1, 'step7', 63, 'image/png', 320953, 'techbros/step7.png', '[]', '2021-09-09 11:30:22', '2021-09-09 11:30:22', NULL),
(1105, 1, 'step8.1', 63, 'image/jpeg', 28612, 'techbros/step81.jpeg', '[]', '2021-09-09 11:30:24', '2021-09-09 11:30:24', NULL),
(1106, 1, 'step8', 63, 'image/png', 462647, 'techbros/step8.png', '[]', '2021-09-09 11:30:25', '2021-09-09 11:30:25', NULL),
(1107, 1, 'step9', 63, 'image/png', 281764, 'techbros/step9.png', '[]', '2021-09-09 11:30:27', '2021-09-09 11:30:27', NULL),
(1108, 1, 'step10', 63, 'image/png', 335069, 'techbros/step10.png', '[]', '2021-09-09 11:30:29', '2021-09-09 11:30:29', NULL),
(1109, 1, 'step11', 63, 'image/png', 227792, 'techbros/step11.png', '[]', '2021-09-09 11:30:31', '2021-09-09 11:30:31', NULL),
(1110, 1, 'step12', 63, 'image/png', 410753, 'techbros/step12.png', '[]', '2021-09-09 11:30:33', '2021-09-09 11:30:33', NULL),
(1111, 1, 'step13', 63, 'image/png', 238385, 'techbros/step13.png', '[]', '2021-09-09 11:30:35', '2021-09-09 11:30:35', NULL),
(1112, 1, 'step2-1', 63, 'image/png', 166449, 'techbros/step2-1.png', '[]', '2021-09-09 11:31:13', '2021-09-09 11:31:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, 0, 'brands', 'brands', 0, '2021-08-03 20:56:36', '2021-08-03 20:56:36', NULL),
(56, 0, 'product-categories', 'product-categories', 0, '2021-08-03 20:56:38', '2021-08-03 20:56:38', NULL),
(57, 0, 'customers', 'customers', 0, '2021-08-03 20:56:40', '2021-08-03 20:56:40', NULL),
(58, 0, 'products', 'products', 0, '2021-08-03 20:56:44', '2021-08-03 20:56:44', NULL),
(59, 0, 'news', 'news', 0, '2021-08-03 20:57:29', '2021-08-03 20:57:29', NULL),
(60, 0, 'testimonials', 'testimonials', 0, '2021-08-03 20:57:30', '2021-08-03 20:57:30', NULL),
(61, 0, 'sliders', 'sliders', 0, '2021-08-03 20:57:31', '2021-08-03 20:57:31', NULL),
(62, 0, 'general', 'general', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32', NULL),
(63, 1, 'techbros', 'techbros', 0, '2021-09-03 15:56:47', '2021-09-03 15:56:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(2, 'Useful Links', 'useful-links', 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(3, 'Categories', 'categories', 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(4, 'My Account', 'my-account', 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-08-03 20:57:32', '2021-08-03 20:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(2, 1, 0, NULL, NULL, '/products', NULL, 0, 'Products', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(3, 1, 0, NULL, NULL, '#', NULL, 0, 'Shop', NULL, '_self', 1, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(4, 1, 3, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Product Category', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(5, 1, 3, 1, 'Botble\\Ecommerce\\Models\\Brand', '/brands/samsung', NULL, 0, 'Brand', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-09-03 16:26:32'),
(6, 1, 3, 1, 'Botble\\Ecommerce\\Models\\ProductTag', '/product-tags/electronic', NULL, 0, 'Product Tag', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(7, 1, 3, NULL, NULL, 'products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(8, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 1, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(9, 1, 8, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(10, 1, 8, 1, 'Botble\\Blog\\Models\\Category', '/news/ecommerce', NULL, 0, 'Blog Category', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(11, 1, 8, 1, 'Botble\\Blog\\Models\\Tag', '/tags/general', NULL, 0, 'Blog Tag', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(12, 1, 8, NULL, NULL, 'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Blog Single', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(13, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(14, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About Us', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(15, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(16, 2, 0, 6, 'Botble\\Page\\Models\\Page', '/location', NULL, 0, 'Location', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(17, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/affiliates', NULL, 0, 'Affiliates', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(18, 2, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(19, 3, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Television', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(20, 3, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/mobile', NULL, 0, 'Mobile', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(21, 3, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/headphone', NULL, 0, 'Headphone', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(22, 3, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/watches', NULL, 0, 'Watches', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(23, 3, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/game', NULL, 0, 'Game', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(24, 4, 0, NULL, NULL, '/customer/overview', NULL, 0, 'My profile', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(25, 4, 0, NULL, NULL, '/wishlist', NULL, 0, 'Wishlist', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(26, 4, 0, NULL, NULL, 'customer/orders', NULL, 0, 'Orders', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(27, 4, 0, NULL, NULL, '/orders/tracking', NULL, 0, 'Order tracking', NULL, '_self', 0, '2021-08-03 20:57:32', '2021-08-03 20:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"flaticon-tv\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(2, 'icon', '[\"flaticon-responsive\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(3, 'icon', '[\"flaticon-headphones\"]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(4, 'icon', '[\"flaticon-watch\"]', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(5, 'icon', '[\"flaticon-console\"]', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(6, 'icon', '[\"flaticon-camera\"]', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(7, 'icon', '[\"flaticon-music-system\"]', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(8, 'icon', '[\"flaticon-responsive\"]', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(9, 'icon', '[\"flaticon-plugins\"]', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(10, 'icon', '[\"flaticon-music-system\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(11, 'icon', '[\"flaticon-monitor\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(12, 'icon', '[\"flaticon-printer\"]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(13, 'icon', '[\"flaticon-tv\"]', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(14, 'icon', '[\"flaticon-fax\"]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(15, 'icon', '[\"flaticon-mouse\"]', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(16, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(17, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(18, 'button_text', '[\"Shop now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_06_10_230148_create_acl_tables', 1),
(8, '2016_06_14_230857_create_menus_table', 1),
(9, '2016_06_17_091537_create_contacts_table', 1),
(10, '2016_06_28_221418_create_pages_table', 1),
(11, '2016_10_05_074239_create_setting_table', 1),
(12, '2016_10_07_193005_create_translations_table', 1),
(13, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(14, '2016_12_16_084601_create_widgets_table', 1),
(15, '2017_05_09_070343_create_media_tables', 1),
(16, '2017_05_18_080441_create_payment_tables', 1),
(17, '2017_07_11_140018_create_simple_slider_table', 1),
(18, '2017_10_24_154832_create_newsletter_table', 1),
(19, '2017_11_03_070450_create_slug_table', 1),
(20, '2018_07_09_214610_create_testimonial_table', 1),
(21, '2019_01_05_053554_create_jobs_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2020_03_05_041139_create_ecommerce_tables', 1),
(24, '2020_09_22_135635_update_taxes_table', 1),
(25, '2020_09_29_101006_add_views_into_ec_products_table', 1),
(26, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 1),
(27, '2020_10_06_073439_improve_ecommerce_database', 1),
(28, '2020_11_01_040415_update_table_ec_order_addresses', 1),
(29, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 1),
(30, '2020_11_30_015801_update_table_ec_product_categories', 1),
(31, '2021_01_01_044147_ecommerce_create_flash_sale_table', 1),
(32, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 1),
(33, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 1),
(34, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(35, '2021_02_18_073505_update_table_ec_reviews', 1),
(36, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 1),
(37, '2021_03_10_025153_change_column_tax_amount', 1),
(38, '2021_03_20_033103_add_column_availability_to_table_ec_products', 1),
(39, '2021_03_27_144913_add_customer_type_into_table_payments', 1),
(40, '2021_04_28_074008_ecommerce_create_product_label_table', 1),
(41, '2021_05_24_034720_make_column_currency_nullable', 2),
(42, '2021_06_28_153141_correct_slugs_data', 3),
(43, '2021_07_18_101839_fix_old_theme_options', 4),
(44, '2021_05_31_173037_ecommerce_create_ec_products_translations', 5),
(45, '2021_08_09_161302_add_metadata_column_to_payments_table', 6),
(46, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 6);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[banners image1=\"general/b-1.jpg\" url1=\"/product-categories/headphone\" image2=\"general/b-2.jpg\" url2=\"/product-categories/camera\" image3=\"general/b-3.jpg\" url3=\"/product-categories/watches\"][/banners]</div><div>[trending-products title=\"Trending Products\"][[/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(2, 'Contact us', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(3, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(4, 'About us', '<p>Alice had not the smallest notice of her hedgehog. The hedgehog was engaged in a great many more than that, if you hold it too long; and that you had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very hard indeed to make out at the bottom of a well?\' The Dormouse shook itself, and was immediately suppressed by the little dears came jumping.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(5, 'FAQ', '<p>Alice said nothing; she had never forgotten that, if you drink much from a bottle marked \'poison,\' it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might tell her something worth hearing. For some minutes the whole party at once set to partners--\' \'--change lobsters, and retire in same order,\' continued the King. \'When did you begin?\' The Hatter shook his head mournfully. \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' She had.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(6, 'Location', '<p>These were the cook, to see that the Mouse was bristling all over, and she felt sure she would keep, through all her fancy, that: he hasn\'t got no business of MINE.\' The Queen had only one who had spoken first. \'That\'s none of my life.\' \'You are old,\' said the Gryphon. \'Well, I can\'t see you?\' She was moving them about as it was written to nobody, which isn\'t usual, you know.\' Alice had never done such a puzzled expression that she tipped over the list, feeling very glad she had somehow fallen.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(7, 'Affiliates', '<p>Alice\'s side as she leant against a buttercup to rest herself, and once again the tiny hands were clasped upon her knee, and looking at them with large round eyes, and feebly stretching out one paw, trying to touch her. \'Poor little thing!\' said Alice, who was peeping anxiously into her eyes--and still as she was shrinking rapidly; so she went on. \'Or would you like the look of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh!.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(8, 'Brands', '<p>[all-brands][/all-brands]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(10, 'Analytics', '<h3>Getting credentials</h3><ul><li>Go to <a href=\"https://console.developers.google.com/apis/dashboard\">https://console.developers.google.com/apis/dashboard</a> and create a new project.</li><li>&nbsp;</li></ul><p><img src=\"http://shopwise:8888/storage/techbros/step1.png\" alt=\"step1\"><br><img src=\"http://shopwise:8888/storage/techbros/step2-1.png\" alt=\"step2-1\"></p><ul><li>&nbsp;</li><li>Select your project and click on \"ENABLE APIS AND SERVICES\":</li><li>&nbsp;</li></ul><p><img src=\"http://shopwise:8888/storage/techbros/step3.png\" alt=\"step3\"><br>&nbsp;</p><ul><li>Enable API:</li><li>&nbsp;</li></ul><p><img src=\"http://shopwise:8888/storage/techbros/step4.png\" alt=\"step4\"><br>&nbsp;</p><p><img src=\"http://shopwise:8888/storage/techbros/step5.png\" alt=\"step5\"><br>&nbsp;</p><ul><li>Generate service account key and select role Viewer</li><li>&nbsp;</li><li><img src=\"http://shopwise:8888/storage/techbros/step6.png\" alt=\"step6\"><br><img src=\"http://shopwise:8888/storage/techbros/step7.png\" alt=\"step7\"><br>&nbsp;</li><li>Open JSON file and copy its content, then go to Admin -&gt; Settings -&gt; General (/admin/settings/general) and update field \"Service Account Credentials\" in Analytics plugin settings by the content from JSON file:</li><li>&nbsp;</li></ul><p><img src=\"http://shopwise:8888/storage/techbros/step8.png\" alt=\"step8\"><br>&nbsp;</p><ul><li><span style=\"background-color:rgb(255,255,255);color:rgb(82,82,82);\">It will look like this:</span></li><li>&nbsp;</li></ul><p><img src=\"http://shopwise:8888/storage/techbros/step81.jpeg\" alt=\"step8.1\"><br>&nbsp;</p><ul><li>Go to Google Analytics account: <a href=\"https://analytics.google.com/analytics/web/\">https://analytics.google.com/analytics/web/</a>. Click on \"Admin\" =&gt; \"View Settings\" and copy \"View ID\" number, then go to /admin/settings/general and tab \"Google Analytics\" and paste to field View ID.</li></ul><p style=\"margin-left:0px;\">Note: Change in Google Analytics 4 property.</p><p style=\"margin-left:0px;\">When creating a new property, you need to check the \"Create a Universal Analytics Property\" checkbox.</p><p style=\"margin-left:0px;\">&nbsp;</p><p><img src=\"http://shopwise:8888/storage/techbros/step9.png\" alt=\"step9\"><br>&nbsp;</p><ul><li>&nbsp;</li><li><span style=\"background-color:rgb(255,255,255);color:rgb(82,82,82);\">Then you will have view settings tab and View ID.</span></li><li>&nbsp;</li></ul><p><img src=\"http://shopwise:8888/storage/techbros/step10.png\" alt=\"step10\"><br>&nbsp;</p><ul><li>&nbsp;</li><li>Open JSON credentials file and copy client email. Then click on \"User management\" and add that email to list account. Just need view only permission.</li><li>&nbsp;</li></ul><p><img src=\"http://shopwise:8888/storage/techbros/step11.png\" alt=\"step11\"><br><img src=\"http://shopwise:8888/storage/techbros/step12.png\" alt=\"step12\"><br><img src=\"http://shopwise:8888/storage/techbros/step13.png\" alt=\"step13\"><br>&nbsp;</p><p style=\"margin-left:0px;\">Consult Your developer if you got any problem.</p><p style=\"margin-left:0px;\">Good luck!</p>', 1, NULL, 'default', 0, 'Integrate with Google Analytics', 'published', '2021-09-09 11:43:24', '2021-09-09 13:08:50');

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
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(5, 'USD', 0, 'TIITPSHXLA', 'stripe', NULL, '510.20', 5, 'completed', 'confirm', 2, NULL, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(9, 'USD', 0, 'BBBV5ZQCLG', 'stripe', NULL, '1871.90', 9, 'completed', 'confirm', 1, NULL, NULL, '2021-08-03 20:57:29', '2021-08-03 20:57:29', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1164, NULL, '2021-08-03 20:57:30', '2021-09-03 16:59:51'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'There isn’t much a girl can’t handle with the right accessories. That’s why the perfect women’s clutch bag is a wardrobe essential for first dates and spring weddings.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 2297, NULL, '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(3, 'The Top 2020 Handbag Trends to Know', 'For the handbag obsessives, let\'s dive into the latter a little more. This year will bring a fresh array of bag designs, and already we\'ve gotten a sneak peek of what both spring and fall 2020 collections have to offer/', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2334, NULL, '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'To match your multi-colored purses with your favorite outfits, simply select a complementary handbag hue that will make your outfit pop for work or the weekend.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 762, NULL, '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(5, 'How to Care for Leather Bags', 'A leather bag is a special, near-universally beloved object, appreciated in equal measure by bon-vivants of both sexes, who cherish the supple hand, understated burnish and heady smell that can only emanate from premium quality skin.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1419, NULL, '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'Summer is just around the corner, and there\'s no easier way to amp up your new-season look than with a chic, new handbag. Whether you\'re wearing basic sweat shorts and a tank top or a pretty floral maxi dress, a bag is an effortless way to add interest to all your summer ensembles.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1267, NULL, '2021-08-03 20:57:30', '2021-08-03 20:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(22, 1, 5),
(28, 4, 1),
(29, 4, 2),
(30, 2, 3),
(31, 1, 4),
(32, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'activated_plugins', '[\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\"]', NULL, NULL),
(5, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(6, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(7, 'permalink-botble-blog-models-tag', 'tags', NULL, NULL),
(8, 'payment_cod_status', '1', NULL, NULL),
(9, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(10, 'payment_bank_transfer_status', '1', NULL, NULL),
(11, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(12, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(13, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(14, 'ecommerce_store_name', 'Shopwise', NULL, NULL),
(15, 'ecommerce_store_phone', '08085744967', NULL, NULL),
(16, 'ecommerce_store_address', '16 Aminu Ajibode Avenue, Unity Estate, Abule-odu, Egbeda, Lagos Nigeria', NULL, NULL),
(17, 'New York', 'Singapore', NULL, NULL),
(18, 'ecommerce_store_country', 'NG', NULL, NULL),
(20, 'theme', 'shopwise', NULL, NULL),
(40, 'social_login_enable', '1', NULL, NULL),
(41, 'social_login_facebook_enable', '1', NULL, NULL),
(42, 'social_login_facebook_app_id', '1752152358341085', NULL, NULL),
(43, 'social_login_facebook_app_secret', '39a9c04311e0da0956298c6dcee7d5e6', NULL, NULL),
(44, 'social_login_google_enable', '1', NULL, NULL),
(47, 'social_login_github_enable', '1', NULL, NULL),
(50, 'social_login_linkedin_enable', '1', NULL, NULL),
(241, 'theme-shopwise-site_title', 'Techbros -Your sure plug for all gadgets', NULL, NULL),
(242, 'theme-shopwise-copyright', '© 2021 Techbros Inc. All Rights Reserved.', NULL, NULL),
(243, 'theme-shopwise-favicon', 'techbros/favicon.jpg', NULL, NULL),
(244, 'theme-shopwise-logo', 'techbros/logo.jpg', NULL, NULL),
(245, 'theme-shopwise-logo_footer', 'techbros/logo.jpg', NULL, NULL),
(246, 'theme-shopwise-address', '123 Street, Old Trafford, NewYork, USA', NULL, NULL),
(247, 'theme-shopwise-hotline', '123-456-7890', NULL, NULL),
(248, 'theme-shopwise-email', 'info@sitename.com', NULL, NULL),
(249, 'theme-shopwise-facebook', 'https://facebook.com', NULL, NULL),
(250, 'theme-shopwise-twitter', 'https://twitter.com', NULL, NULL),
(251, 'theme-shopwise-youtube', 'https://youtube.com', NULL, NULL),
(252, 'theme-shopwise-instagram', 'https://instagram.com', NULL, NULL),
(253, 'theme-shopwise-payment_methods', '[null,\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]', NULL, NULL),
(254, 'theme-shopwise-newsletter_image', 'general/newsletter.jpg', NULL, NULL),
(255, 'theme-shopwise-homepage_id', '1', NULL, NULL),
(256, 'theme-shopwise-blog_page_id', '3', NULL, NULL),
(257, 'theme-shopwise-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, NULL),
(258, 'theme-shopwise-cookie_consent_learn_more_url', 'http://shopwise.local/cookie-policy', NULL, NULL),
(259, 'theme-shopwise-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(261, 'theme-shopwise-show_site_name', '0', NULL, NULL),
(262, 'theme-shopwise-seo_title', 'Techbros -Your sure plug for all gadgets', NULL, NULL),
(263, 'theme-shopwise-seo_description', 'Uniquely innovate resource maximizing core competencies through viral human capital. Synergistically redefine robust internal or \"organic\" sources without backward-compatible total linkage. Intrinsicly engage cross functional methods of empowerment through.', NULL, NULL),
(264, 'theme-shopwise-seo_og_image', '', NULL, NULL),
(265, 'theme-shopwise-preloader_enabled', 'yes', NULL, NULL),
(266, 'theme-shopwise-about-us', 'Energistically re-engineer next-generation methodologies vis-a-vis covalent action items. Enthusiastically seize cross-media intellectual capital without user friendly e-business. Efficiently restore professional information with orthogonal outsourcing. Professionally seize cooperative internal or \"organic\" sources rather than seamless innovation. Dynamically revolutionize B2C internal or \"organic\" sources through visionary best practices.\n\nDistinctively evisculate long-term high-impact testing procedures whereas tactical value. Energistically aggregate reliable services and innovative applications. Energistically orchestrate real-time methods of empowerment via quality synergy. Dynamically parallel task worldwide schemas without cross functional functionalities. Globally orchestrate cross functional metrics via highly efficient value.\n\nUniquely coordinate synergistic innovation for next-generation convergence. Seamlessly actualize highly efficient human capital with.', NULL, NULL),
(267, 'theme-shopwise-primary_font', 'Poppins', NULL, NULL),
(268, 'theme-shopwise-primary_color', '#5A880D', NULL, NULL),
(269, 'theme-shopwise-secondary_color', '#1D2224', NULL, NULL),
(270, 'theme-shopwise-enable_newsletter_popup', 'yes', NULL, NULL),
(271, 'theme-shopwise-newsletter_show_after_seconds', '10', NULL, NULL),
(272, 'theme-shopwise-facebook_comment_enabled_in_product', 'no', NULL, NULL),
(273, 'theme-shopwise-enable_sticky_header', 'yes', NULL, NULL),
(274, 'theme-shopwise-collapsing_product_categories_on_homepage', 'no', NULL, NULL),
(275, 'theme-shopwise-facebook_chat_enabled', 'no', NULL, NULL),
(276, 'theme-shopwise-facebook_page_id', '', NULL, NULL),
(277, 'theme-shopwise-facebook_comment_enabled_in_post', 'no', NULL, NULL),
(278, 'theme-shopwise-facebook_app_id', '', NULL, NULL),
(279, 'theme-shopwise-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL),
(280, 'theme-shopwise-number_of_posts_in_a_category', '10', NULL, NULL),
(281, 'theme-shopwise-number_of_posts_in_a_tag', '10', NULL, NULL),
(282, 'theme-shopwise-number_of_products_per_page', '12', NULL, NULL),
(283, 'theme-shopwise-number_of_cross_sale_product', '4', NULL, NULL),
(284, 'theme-shopwise-max_filter_price', '100000', NULL, NULL),
(287, 'theme-shopwise-cookie_consent_enable', 'yes', NULL, NULL),
(288, 'theme-shopwise-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(289, 'theme-shopwise-cookie_consent_background_color', '#000000', NULL, NULL),
(290, 'theme-shopwise-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(291, 'theme-shopwise-cookie_consent_max_width', '1170', NULL, NULL),
(294, 'payment_paystack_name', 'Online payment via Paystack', NULL, NULL),
(295, 'payment_paystack_description', 'Payment with Paystack', NULL, NULL),
(296, 'payment_paystack_public', 'pk_test_ff29c8dce7c4655bbb275c78afb2e7c0ad6d315f', NULL, NULL),
(297, 'payment_paystack_secret', 'sk_test_c9625d836ad35e5b6093b9687f645106be13417e', NULL, NULL),
(298, 'payment_paystack_merchant_email', 'babusunnah@gmail.com', NULL, NULL),
(299, 'payment_paystack_status', '1', NULL, NULL),
(300, 'ecommerce_store_state', 'Lagos', NULL, NULL),
(301, 'ecommerce_store_city', 'Alimosho', NULL, NULL),
(302, 'ecommerce_store_order_prefix', 'TC', NULL, NULL),
(303, 'ecommerce_store_order_suffix', 'BROS', NULL, NULL),
(304, 'ecommerce_store_weight_unit', 'g', NULL, NULL),
(305, 'ecommerce_store_width_height_unit', 'cm', NULL, NULL),
(306, 'ecommerce_thousands_separator', ',', NULL, NULL),
(307, 'ecommerce_decimal_separator', '.', NULL, NULL),
(308, 'ecommerce_currencies_is_default', '3', NULL, NULL),
(309, 'ecommerce_shopping_cart_enabled', '1', NULL, NULL),
(310, 'ecommerce_ecommerce_tax_enabled', '1', NULL, NULL),
(311, 'ecommerce_display_product_price_including_taxes', '0', NULL, NULL),
(312, 'ecommerce_review_enabled', '1', NULL, NULL),
(313, 'ecommerce_enable_quick_buy_button', '1', NULL, NULL),
(314, 'ecommerce_quick_buy_target_page', 'checkout', NULL, NULL),
(315, 'ecommerce_zip_code_enabled', '0', NULL, NULL),
(316, 'ecommerce_verify_customer_email', '0', NULL, NULL),
(317, 'ecommerce_enable_guest_checkout', '1', NULL, NULL),
(318, 'ecommerce_minimum_order_amount', '0', NULL, NULL),
(319, 'ecommerce_available_countries', '[\"AF\",\"AX\",\"AL\",\"DZ\",\"AS\",\"AD\",\"AO\",\"AI\",\"AQ\",\"AG\",\"AR\",\"AM\",\"AW\",\"AU\",\"AT\",\"AZ\",\"BS\",\"BH\",\"BD\",\"BB\",\"BY\",\"BE\",\"PW\",\"BZ\",\"BJ\",\"BM\",\"BT\",\"BO\",\"BQ\",\"BA\",\"BW\",\"BV\",\"BR\",\"IO\",\"BN\",\"BG\",\"BF\",\"BI\",\"KH\",\"CM\",\"CA\",\"CV\",\"KY\",\"CF\",\"TD\",\"CL\",\"CN\",\"CX\",\"CC\",\"CO\",\"KM\",\"CG\",\"CD\",\"CK\",\"CR\",\"HR\",\"CU\",\"CW\",\"CY\",\"CZ\",\"DK\",\"DJ\",\"DM\",\"DO\",\"EC\",\"EG\",\"SV\",\"GQ\",\"ER\",\"EE\",\"ET\",\"FK\",\"FO\",\"FJ\",\"FI\",\"FR\",\"GF\",\"PF\",\"TF\",\"GA\",\"GM\",\"GE\",\"DE\",\"GH\",\"GI\",\"GR\",\"GL\",\"GD\",\"GP\",\"GU\",\"GT\",\"GG\",\"GN\",\"GW\",\"GY\",\"HT\",\"HM\",\"HN\",\"HK\",\"HU\",\"IS\",\"IN\",\"ID\",\"IR\",\"IQ\",\"IE\",\"IM\",\"IL\",\"IT\",\"CI\",\"JM\",\"JP\",\"JE\",\"JO\",\"KZ\",\"KE\",\"KI\",\"KW\",\"XK\",\"KG\",\"LA\",\"LV\",\"LB\",\"LS\",\"LR\",\"LY\",\"LI\",\"LT\",\"LU\",\"MO\",\"MK\",\"MG\",\"MW\",\"MY\",\"MV\",\"ML\",\"MT\",\"MH\",\"MQ\",\"MR\",\"MU\",\"YT\",\"MX\",\"FM\",\"MD\",\"MC\",\"MN\",\"ME\",\"MS\",\"MA\",\"MZ\",\"MM\",\"NA\",\"NR\",\"NP\",\"NL\",\"NC\",\"NZ\",\"NI\",\"NE\",\"NG\",\"NU\",\"NF\",\"MP\",\"KP\",\"NO\",\"OM\",\"PK\",\"PS\",\"PA\",\"PG\",\"PY\",\"PE\",\"PH\",\"PN\",\"PL\",\"PT\",\"PR\",\"QA\",\"RE\",\"RO\",\"RU\",\"RW\",\"BL\",\"SH\",\"KN\",\"LC\",\"MF\",\"SX\",\"PM\",\"VC\",\"SM\",\"ST\",\"SA\",\"SN\",\"RS\",\"SC\",\"SL\",\"SG\",\"SK\",\"SI\",\"SB\",\"SO\",\"ZA\",\"GS\",\"KR\",\"SS\",\"ES\",\"LK\",\"SD\",\"SR\",\"SJ\",\"SZ\",\"SE\",\"CH\",\"SY\",\"TW\",\"TJ\",\"TZ\",\"TH\",\"TL\",\"TG\",\"TK\",\"TO\",\"TT\",\"TN\",\"TR\",\"TM\",\"TC\",\"TV\",\"UG\",\"UA\",\"AE\",\"GB\",\"US\",\"UM\",\"UY\",\"UZ\",\"VU\",\"VA\",\"VE\",\"VN\",\"VG\",\"VI\",\"WF\",\"EH\",\"WS\",\"YE\",\"ZM\",\"ZW\"]', NULL, NULL),
(321, 'time_zone', 'UTC', NULL, NULL),
(322, 'locale_direction', 'ltr', NULL, NULL),
(323, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(324, 'admin_logo', 'techbros/logo.jpg', NULL, NULL),
(325, 'admin_favicon', 'techbros/favicon.jpg', NULL, NULL),
(327, 'login_screen_backgrounds.1', 'techbros/product-featured-149037761369.jpg', NULL, NULL),
(328, 'admin_title', 'Techbros Inc', NULL, NULL),
(329, 'rich_editor', 'ckeditor', NULL, NULL),
(330, 'enable_change_admin_theme', '1', NULL, NULL),
(331, 'enable_cache', '0', NULL, NULL),
(332, 'cache_time', '10', NULL, NULL),
(333, 'cache_admin_menu_enable', '0', NULL, NULL),
(335, 'cache_time_site_map', '3600', NULL, NULL),
(336, 'show_admin_bar', '0', NULL, NULL),
(344, 'enable_captcha', '0', NULL, NULL),
(345, 'captcha_type', 'v2', NULL, NULL),
(346, 'captcha_hide_badge', '0', NULL, NULL),
(349, 'simple_slider_using_assets', '1', NULL, NULL),
(350, 'locale', 'en', NULL, NULL),
(363, 'default_admin_theme', 'light', NULL, NULL),
(364, 'admin_locale_direction', 'ltr', NULL, NULL),
(365, 'email_driver', 'smtp', NULL, NULL),
(366, 'email_port', '587', NULL, NULL),
(367, 'email_host', 'smtp.mailgun.org', NULL, NULL),
(370, 'email_encryption', 'tls', NULL, NULL),
(373, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, NULL),
(376, 'email_ses_region', 'us-east-1', NULL, NULL),
(378, 'email_sendmail_path', '/usr/sbin/sendmail -bs', NULL, NULL),
(380, 'email_from_name', 'Example', NULL, NULL),
(381, 'email_from_address', 'hello@example.com', NULL, NULL),
(382, 'using_queue_to_send_mail', '0', NULL, NULL),
(383, 'plugins_contact_notice_status', '1', NULL, NULL),
(384, 'plugins_ecommerce_welcome_status', '0', NULL, NULL),
(385, 'plugins_ecommerce_customer_cancel_order_status', '1', NULL, NULL),
(386, 'plugins_ecommerce_customer_delivery_order_status', '1', NULL, NULL),
(387, 'plugins_ecommerce_order_confirm_status', '1', NULL, NULL),
(388, 'plugins_ecommerce_order_confirm_payment_status', '1', NULL, NULL),
(389, 'plugins_ecommerce_order_recover_status', '1', NULL, NULL),
(390, 'plugins_newsletter_subscriber_email_status', '1', NULL, NULL),
(391, 'plugins_newsletter_admin_email_status', '1', NULL, NULL),
(392, 'media_driver', 'public', NULL, NULL),
(403, 'media_do_spaces_cdn_enabled', '0', NULL, NULL),
(409, 'media_wasabi_root', '/', NULL, NULL),
(410, 'media_turn_off_automatic_url_translation_into_latin', '0', NULL, NULL),
(411, 'media_default_placeholder_image', 'techbros/favicon.jpg', NULL, NULL),
(412, 'media_chunk_enabled', '0', NULL, NULL),
(413, 'media_chunk_size', '1048576', NULL, NULL),
(414, 'media_max_file_size', '1048576', NULL, NULL),
(415, 'media_watermark_enabled', '0', NULL, NULL),
(417, 'media_watermark_size', '10', NULL, NULL),
(418, 'watermark_opacity', '70', NULL, NULL),
(419, 'media_watermark_position', 'bottom-right', NULL, NULL),
(420, 'watermark_position_x', '10', NULL, NULL),
(421, 'watermark_position_y', '10', NULL, NULL),
(422, 'default_payment_method', 'paystack', NULL, NULL),
(423, 'membership_authorization_at', '2021-09-09 11:33:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2021-08-03 20:57:31', '2021-08-03 20:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Android phones', 'techbros/banner-search.jpg', '/products', 'Get up to 50% off Today Only!', 1, '2021-08-03 20:57:31', '2021-09-03 16:10:24'),
(2, 1, 'iPhones', 'techbros/banner-reset-password.jpg', '/products', '50% off in all products', 2, '2021-08-03 20:57:31', '2021-09-03 16:11:04'),
(3, 1, 'Computer and Laptops', 'techbros/product-featured-149037761369.jpg', '/products', 'Taking your Viewing Experience to Next Level', 3, '2021-08-03 20:57:31', '2021-09-03 16:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(668, 'samsung', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-03 20:56:38', '2021-09-03 16:26:32'),
(669, 'iphone', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-03 20:56:38', '2021-09-03 16:27:50'),
(670, 'hp', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-03 20:56:38', '2021-09-03 16:28:36'),
(675, 'television', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(676, 'mobile', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(677, 'headphone', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(678, 'watches', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(679, 'game', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(680, 'camera', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(681, 'audio', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(682, 'mobile-tablet', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(683, 'accessories', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(684, 'home-audio-theater', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(685, 'tv-smart-box', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(686, 'printer', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(687, 'computer', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(688, 'fax-machine', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(689, 'mouse', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-03 20:56:40', '2021-08-03 20:56:40'),
(710, 'smart-note-20', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:27', '2021-09-03 16:50:17'),
(712, 'boxed-bluetooth-earphone', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:27', '2021-09-03 16:48:59'),
(713, 'chikie-bluetooth-speaker', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:27', '2021-08-03 20:57:27'),
(715, 'camera-samsung-ss-24', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(717, 'apple-iphone-13-plus', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(734, 'dual-camera-20mp', 25, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(735, 'smart-watches', 26, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(737, 'red-black-headphone', 28, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(740, 'hp-360-laptop', 31, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-03 20:57:28', '2021-09-03 16:36:43'),
(741, 'electronic', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(742, 'mobile', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(743, 'iphone', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(744, 'printer', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(745, 'office', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(746, 'it', 6, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-03 20:57:28', '2021-08-03 20:57:28'),
(747, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(748, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(749, 'jquery', 3, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(750, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(751, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(752, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(753, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(754, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(755, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(756, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(757, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(758, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(759, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(760, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(761, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'news', '2021-08-03 20:57:30', '2021-08-03 20:57:32'),
(762, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(763, 'contact-us', 2, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(764, 'blog', 3, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(765, 'about-us', 4, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(766, 'faq', 5, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(767, 'location', 6, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(768, 'affiliates', 7, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(769, 'brands', 8, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(770, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2021-08-03 20:57:32', '2021-08-03 20:57:32'),
(771, 'lg', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-09 10:36:27', '2021-09-09 10:36:27'),
(772, 'analytics', 10, 'Botble\\Page\\Models\\Page', '', '2021-09-09 11:43:24', '2021-09-09 11:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(3, 'Jquery', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-03 20:57:30', '2021-08-03 20:57:30'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-03 20:57:30', '2021-08-03 20:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Donald H. Hilixer', 'I will prosecute YOU.--Come, I\'ll take no.', 'testimonials/1.jpg', 'Founder, Hilix', 'published', '2021-08-03 20:57:31', '2021-08-03 20:57:31'),
(2, 'Rosalina D. William', 'I think?\' he said to herself, \'because of his.', 'testimonials/2.jpg', 'Founder, qux co.', 'published', '2021-08-03 20:57:31', '2021-08-03 20:57:31'),
(3, 'John Becker', 'Dormouse indignantly. However, he consented to.', 'testimonials/3.jpg', 'CEO, Highlands coffee', 'published', '2021-08-03 20:57:31', '2021-08-03 20:57:31'),
(4, 'Browfish Dumble', 'The Knave of Hearts, who only bowed and smiled.', 'testimonials/4.jpg', 'Founder, Condo', 'published', '2021-08-03 20:57:31', '2021-08-03 20:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(12, 0, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(13, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(14, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(15, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(16, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(17, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(18, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(19, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(20, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(21, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(22, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(23, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(24, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(25, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(26, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(27, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(28, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(29, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(30, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(31, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(32, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(33, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(34, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(35, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(36, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(37, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(38, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(39, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(40, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(41, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(42, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(43, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(44, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(45, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(46, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(47, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(48, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(49, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(50, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(51, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(52, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(53, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(54, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(55, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(56, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(57, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(58, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(59, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(60, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(61, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(62, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(63, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(64, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(65, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(66, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(67, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(68, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(69, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(70, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(71, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(72, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(73, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(74, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(75, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(76, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(77, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(78, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(79, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(80, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(81, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(82, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(83, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(84, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(85, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(86, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(87, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(88, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(89, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(90, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(91, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(92, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(93, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(94, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(95, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(96, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(97, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(98, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(99, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(100, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(101, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(102, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(103, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(104, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(105, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-08-18 04:42:48', '2021-08-18 04:43:16'),
(106, 0, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(107, 0, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(108, 0, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(109, 0, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(110, 0, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(111, 0, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(112, 0, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(113, 0, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(114, 0, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(115, 0, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(116, 0, 'en', 'core/acl/api', 'name', 'Name', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(117, 0, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(118, 0, 'en', 'core/acl/api', 'save', 'Save', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(119, 0, 'en', 'core/acl/api', 'edit', 'Edit', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(120, 0, 'en', 'core/acl/api', 'delete', 'Delete', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(121, 0, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(122, 0, 'en', 'core/acl/api', 'secret', 'Secret', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(123, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(124, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(125, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(126, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(127, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(128, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(129, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(130, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(131, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(132, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(133, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(134, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(135, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(136, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(137, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(138, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(139, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(140, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(141, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(142, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(143, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(144, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(145, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(146, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(147, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(148, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(149, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(150, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(151, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(152, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(153, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(154, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(155, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(156, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(157, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(158, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(159, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(160, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(161, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(162, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(163, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(164, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(165, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(166, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(167, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(168, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(169, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(170, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(171, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(172, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(173, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(174, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(175, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(176, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(177, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(178, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(179, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(180, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(181, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(182, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(183, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(184, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(185, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(186, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(187, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(188, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(189, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(190, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(191, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(192, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(193, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(194, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(195, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(196, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(197, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(198, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(199, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(200, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(201, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(202, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(203, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(204, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(205, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(206, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(207, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(208, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(209, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(210, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(211, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(212, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(213, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(214, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(215, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(216, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(217, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(218, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(219, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(220, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(221, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(222, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(223, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(224, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(225, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(226, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(227, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(228, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(229, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(230, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(231, 0, 'en', 'core/acl/users', 'email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(232, 0, 'en', 'core/acl/users', 'role', 'Role', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(233, 0, 'en', 'core/acl/users', 'username', 'Username', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(234, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(235, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(236, 0, 'en', 'core/acl/users', 'message', 'Message', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(237, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(238, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(239, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(240, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(241, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(242, 0, 'en', 'core/acl/users', 'password', 'Password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(243, 0, 'en', 'core/acl/users', 'save', 'Save', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(244, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(245, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(246, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(247, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(248, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(249, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(250, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(251, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(252, 0, 'en', 'core/acl/users', 'close', 'Close', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(253, 0, 'en', 'core/acl/users', 'update', 'Update', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(254, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(255, 0, 'en', 'core/acl/users', 'users', 'Users', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(256, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(257, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(258, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(259, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(260, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(261, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(262, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(263, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(264, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(265, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(266, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(267, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(268, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(269, 0, 'en', 'core/acl/users', 'info.about', 'About', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(270, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(271, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(272, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(273, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(274, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(275, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(276, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(277, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(278, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(279, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(280, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(281, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(282, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(283, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(284, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(285, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(286, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(287, 0, 'vi', 'core/acl/auth', 'login.username', 'Tên truy cập', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(288, 0, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(289, 0, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(290, 0, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(291, 0, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(292, 0, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(293, 0, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(294, 0, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(295, 0, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(296, 0, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(297, 0, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(298, 0, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(299, 0, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(300, 0, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(301, 0, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(302, 0, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(303, 0, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(304, 0, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(305, 0, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(306, 0, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(307, 0, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(308, 0, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(309, 0, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(310, 0, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(311, 0, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(312, 0, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(313, 0, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(314, 0, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(315, 0, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(316, 0, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(317, 0, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(318, 0, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(319, 0, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(320, 0, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(321, 0, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(322, 0, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(323, 0, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(324, 0, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(325, 0, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(326, 0, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(327, 0, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(328, 0, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(329, 0, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(330, 0, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(331, 0, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(332, 0, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(333, 0, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(334, 0, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(335, 0, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(336, 0, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(337, 0, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(338, 0, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(339, 0, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(340, 0, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(341, 0, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(342, 0, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(343, 0, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(344, 0, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(345, 0, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(346, 0, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(347, 0, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(348, 0, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(349, 0, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(350, 0, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(351, 0, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(352, 0, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(353, 0, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(354, 0, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(355, 0, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(356, 0, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(357, 0, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(358, 0, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(359, 0, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(360, 0, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(361, 0, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(362, 0, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(363, 0, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(364, 0, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(365, 0, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(366, 0, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(367, 0, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(368, 0, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(369, 0, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(370, 0, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(371, 0, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(372, 0, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(373, 0, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(374, 0, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(375, 0, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(376, 0, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(377, 0, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(378, 0, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(379, 0, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(380, 0, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(381, 0, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-08-18 04:42:48', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 0, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(383, 0, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(384, 0, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(385, 0, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(386, 0, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(387, 0, 'vi', 'core/acl/users', 'email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(388, 0, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(389, 0, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(390, 0, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(391, 0, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(392, 0, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(393, 0, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(394, 0, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(395, 0, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(396, 0, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(397, 0, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(398, 0, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(399, 0, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(400, 0, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(401, 0, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(402, 0, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(403, 0, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(404, 0, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(405, 0, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(406, 0, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(407, 0, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(408, 0, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(409, 0, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(410, 0, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(411, 0, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(412, 0, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(413, 0, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(414, 0, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(415, 0, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(416, 0, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(417, 0, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(418, 0, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(419, 0, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(420, 0, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(421, 0, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(422, 0, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(423, 0, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(424, 0, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(425, 0, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(426, 0, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(427, 0, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(428, 0, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(429, 0, 'en', 'core/base/base', 'yes', 'Yes', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(430, 0, 'en', 'core/base/base', 'no', 'No', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(431, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(432, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(433, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(434, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(435, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(436, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(437, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(438, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(439, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(440, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(441, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(442, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(443, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(444, 0, 'en', 'core/base/base', 'image', 'Image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(445, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(446, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2021-08-18 04:42:48', '2021-08-18 04:43:17'),
(447, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(448, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(449, 0, 'en', 'core/base/base', 'tools', 'Tools', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(450, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(451, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(452, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(453, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(454, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(455, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(456, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(457, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(458, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(459, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(460, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(461, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(464, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(465, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(466, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(467, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(468, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(469, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(470, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(471, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(472, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(473, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(474, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(475, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(476, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(477, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://shopwise.local/admin\">clicking here</a>.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(478, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(479, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(480, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(481, 0, 'en', 'core/base/forms', 'save', 'Save', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(482, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(483, 0, 'en', 'core/base/forms', 'image', 'Image', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(484, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(485, 0, 'en', 'core/base/forms', 'create', 'Create', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(486, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(487, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(488, 0, 'en', 'core/base/forms', 'ok', 'OK', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(489, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(490, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(491, 0, 'en', 'core/base/forms', 'template', 'Template', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(492, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(493, 0, 'en', 'core/base/forms', 'file', 'File', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(494, 0, 'en', 'core/base/forms', 'content', 'Content', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(495, 0, 'en', 'core/base/forms', 'description', 'Description', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(496, 0, 'en', 'core/base/forms', 'name', 'Name', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(497, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(498, 0, 'en', 'core/base/forms', 'title', 'Title', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(499, 0, 'en', 'core/base/forms', 'value', 'Value', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(500, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(501, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(502, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(503, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(504, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(505, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(506, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(507, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(508, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(509, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(510, 0, 'en', 'core/base/forms', 'update', 'Update', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(511, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(512, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(513, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(514, 0, 'en', 'core/base/forms', 'order', 'Order', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(515, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(516, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(517, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(518, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(519, 0, 'en', 'core/base/forms', 'add', 'Add', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(520, 0, 'en', 'core/base/forms', 'link', 'Link', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(521, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(522, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(523, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(524, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(525, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(526, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(527, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(528, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(529, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(530, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(531, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(532, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(533, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(534, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(535, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(536, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(537, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(538, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(539, 0, 'en', 'core/base/layouts', 'home', 'Home', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(540, 0, 'en', 'core/base/layouts', 'search', 'Search', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(541, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(542, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(543, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(544, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(545, 0, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(546, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(547, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(548, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(549, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(550, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(551, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(552, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(553, 0, 'en', 'core/base/notices', 'error', 'Error!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(554, 0, 'en', 'core/base/notices', 'success', 'Success!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(555, 0, 'en', 'core/base/notices', 'info', 'Info!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(556, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(557, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(558, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(559, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(560, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(561, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(562, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(563, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(564, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(565, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(566, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(567, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(568, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(569, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(570, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(571, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(572, 0, 'en', 'core/base/system', 'user.email', 'Email', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(573, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(574, 0, 'en', 'core/base/system', 'user.username', 'Username', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(575, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(576, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(577, 0, 'en', 'core/base/system', 'user.create', 'Create', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(578, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(579, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(580, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(581, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(582, 0, 'en', 'core/base/system', 'options.info', 'System information', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(583, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(584, 0, 'en', 'core/base/system', 'info.title', 'System information', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(585, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(586, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(587, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(588, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(589, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(590, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(591, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(592, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(593, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(594, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(595, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(596, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(597, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(598, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(599, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(600, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(601, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(602, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(603, 0, 'en', 'core/base/system', 'database', 'Database', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(604, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(605, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(606, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(607, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(608, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(609, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(610, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(611, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(612, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(613, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(614, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(615, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(616, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(617, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(618, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(619, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(620, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(621, 0, 'en', 'core/base/system', 'version', 'Version', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(622, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(623, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(624, 0, 'en', 'core/base/tables', 'id', 'ID', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(625, 0, 'en', 'core/base/tables', 'name', 'Name', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(626, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(627, 0, 'en', 'core/base/tables', 'title', 'Title', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(628, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(629, 0, 'en', 'core/base/tables', 'order', 'Order', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(630, 0, 'en', 'core/base/tables', 'status', 'Status', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(631, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(632, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(633, 0, 'en', 'core/base/tables', 'description', 'Description', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(634, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(635, 0, 'en', 'core/base/tables', 'url', 'URL', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(636, 0, 'en', 'core/base/tables', 'author', 'Author', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(637, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(638, 0, 'en', 'core/base/tables', 'column', 'Column', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(639, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(640, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(641, 0, 'en', 'core/base/tables', 'views', 'Views', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(642, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(643, 0, 'en', 'core/base/tables', 'session', 'Session', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(644, 0, 'en', 'core/base/tables', 'activated', 'activated', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(645, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(646, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(647, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(648, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(649, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(650, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(651, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(652, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(653, 0, 'en', 'core/base/tables', 'export', 'Export', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(654, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(655, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(656, 0, 'en', 'core/base/tables', 'print', 'Print', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(657, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(658, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(659, 0, 'en', 'core/base/tables', 'display', 'Display', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(660, 0, 'en', 'core/base/tables', 'all', 'All', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(661, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(662, 0, 'en', 'core/base/tables', 'action', 'Actions', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(663, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(664, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(665, 0, 'en', 'core/base/tables', 'save', 'Save', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(666, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(667, 0, 'en', 'core/base/tables', 'to', 'to', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(668, 0, 'en', 'core/base/tables', 'in', 'in', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(669, 0, 'en', 'core/base/tables', 'records', 'records', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(670, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(671, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(672, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(673, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(674, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(675, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(676, 0, 'en', 'core/base/tables', 'template', 'Template', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(677, 0, 'en', 'core/base/tables', 'email', 'Email', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(678, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(679, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(680, 0, 'en', 'core/base/tables', 'image', 'Image', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(681, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(682, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(683, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(684, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(685, 0, 'en', 'core/base/tabs', 'file', 'Files', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(686, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(687, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(688, 0, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(689, 0, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(690, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(691, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(692, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(693, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(694, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(695, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(696, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(697, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(698, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(699, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(700, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(701, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(702, 0, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(703, 0, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(704, 0, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(705, 0, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(706, 0, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(707, 0, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(708, 0, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(709, 0, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(710, 0, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(711, 0, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(712, 0, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(713, 0, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(714, 0, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(715, 0, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(716, 0, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(717, 0, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(718, 0, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(719, 0, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(720, 0, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(721, 0, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(722, 0, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(723, 0, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(724, 0, 'vi', 'core/base/forms', 'ok', 'OK', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(725, 0, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(726, 0, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(727, 0, 'vi', 'core/base/forms', 'template', 'Template', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(728, 0, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(729, 0, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(730, 0, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(731, 0, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(732, 0, 'vi', 'core/base/forms', 'name', 'Tên', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(733, 0, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(734, 0, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(735, 0, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(736, 0, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(737, 0, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(738, 0, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(739, 0, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(740, 0, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(741, 0, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(742, 0, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(743, 0, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(744, 0, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(745, 0, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(746, 0, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(747, 0, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(748, 0, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(749, 0, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(750, 0, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(751, 0, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(752, 0, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(753, 0, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(754, 0, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(755, 0, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(756, 0, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(757, 0, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(758, 0, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(759, 0, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(760, 0, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(761, 0, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(762, 0, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(763, 0, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(764, 0, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(765, 0, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(766, 0, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(767, 0, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(768, 0, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(769, 0, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(770, 0, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(771, 0, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(772, 0, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(773, 0, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(774, 0, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(775, 0, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(776, 0, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(777, 0, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(778, 0, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(779, 0, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(780, 0, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(781, 0, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(782, 0, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(783, 0, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(784, 0, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(785, 0, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(786, 0, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(787, 0, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(788, 0, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-08-18 04:42:49', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(789, 0, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(790, 0, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(791, 0, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(792, 0, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(793, 0, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(794, 0, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(795, 0, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(796, 0, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(797, 0, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(798, 0, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(799, 0, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(800, 0, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(801, 0, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(802, 0, 'vi', 'core/base/system', 'user.email', 'Email', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(803, 0, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(804, 0, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(805, 0, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(806, 0, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(807, 0, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(808, 0, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(809, 0, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(810, 0, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(811, 0, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(812, 0, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(813, 0, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(814, 0, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(815, 0, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(816, 0, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(817, 0, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(818, 0, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(819, 0, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(820, 0, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(821, 0, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(822, 0, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(823, 0, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(824, 0, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(825, 0, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(826, 0, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(827, 0, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(828, 0, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(829, 0, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(830, 0, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(831, 0, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(832, 0, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(833, 0, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(834, 0, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(835, 0, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(836, 0, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(837, 0, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(838, 0, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(839, 0, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(840, 0, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(841, 0, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(842, 0, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(843, 0, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(844, 0, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(845, 0, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(846, 0, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(847, 0, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(848, 0, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(849, 0, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(850, 0, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(851, 0, 'vi', 'core/base/tables', 'id', 'ID', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(852, 0, 'vi', 'core/base/tables', 'name', 'Tên', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(853, 0, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(854, 0, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(855, 0, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(856, 0, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(857, 0, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(858, 0, 'vi', 'core/base/tables', 'url', 'URL', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(859, 0, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(860, 0, 'vi', 'core/base/tables', 'column', 'Cột', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(861, 0, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(862, 0, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(863, 0, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(864, 0, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(865, 0, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(866, 0, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(867, 0, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(868, 0, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(869, 0, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(870, 0, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(871, 0, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(872, 0, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(873, 0, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(874, 0, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(875, 0, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(876, 0, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(877, 0, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(878, 0, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(879, 0, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(880, 0, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(881, 0, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(882, 0, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(883, 0, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(884, 0, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(885, 0, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(886, 0, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(887, 0, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(888, 0, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(889, 0, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(890, 0, 'vi', 'core/base/tables', 'print', 'In', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(891, 0, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(892, 0, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(893, 0, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(894, 0, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(895, 0, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(896, 0, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(897, 0, 'vi', 'core/base/tables', 'to', 'đến', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(898, 0, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(899, 0, 'vi', 'core/base/tables', 'email', 'Email', '2021-08-18 04:42:49', '2021-08-18 04:43:17'),
(900, 0, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(901, 0, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(902, 0, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(903, 0, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(904, 0, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(905, 0, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(906, 0, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(907, 0, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(908, 0, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(909, 0, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(910, 0, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(911, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(912, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(913, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(914, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(915, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(916, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(917, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(918, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(919, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(920, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(921, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(922, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(923, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(924, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(925, 0, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(926, 0, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(927, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(928, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(929, 0, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(930, 0, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(931, 0, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(932, 0, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(933, 0, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(934, 0, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(935, 0, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(936, 0, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(937, 0, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(938, 0, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(939, 0, 'en', 'core/media/media', 'filter', 'Filter', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(940, 0, 'en', 'core/media/media', 'everything', 'Everything', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(941, 0, 'en', 'core/media/media', 'image', 'Image', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(942, 0, 'en', 'core/media/media', 'video', 'Video', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(943, 0, 'en', 'core/media/media', 'document', 'Document', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(944, 0, 'en', 'core/media/media', 'view_in', 'View in', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(945, 0, 'en', 'core/media/media', 'all_media', 'All media', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(946, 0, 'en', 'core/media/media', 'trash', 'Trash', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(947, 0, 'en', 'core/media/media', 'recent', 'Recent', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(948, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(949, 0, 'en', 'core/media/media', 'upload', 'Upload', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(950, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(951, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(952, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(953, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(954, 0, 'en', 'core/media/media', 'sort', 'Sort', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(955, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(956, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(957, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(958, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(959, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(960, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(961, 0, 'en', 'core/media/media', 'actions', 'Actions', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(962, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(963, 0, 'en', 'core/media/media', 'insert', 'Insert', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(964, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(965, 0, 'en', 'core/media/media', 'create', 'Create', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(966, 0, 'en', 'core/media/media', 'rename', 'Rename', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(967, 0, 'en', 'core/media/media', 'close', 'Close', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(968, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(969, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(970, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(971, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(972, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(973, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(974, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(975, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(976, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(977, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(978, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(979, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(980, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(981, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(982, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(983, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(984, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(985, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(986, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(987, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(988, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(989, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(990, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(991, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(992, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(993, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(994, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(995, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(996, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(997, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(998, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(999, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1000, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1001, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1002, 0, 'en', 'core/media/media', 'add', 'Add media', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1003, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1004, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1005, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1006, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1007, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1008, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1009, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1010, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1011, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1012, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1013, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1014, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1015, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1016, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1017, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1018, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1019, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1020, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1021, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1022, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1023, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1024, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1025, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1026, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1027, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1028, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1029, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1030, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1031, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1032, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1033, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1034, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1035, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1036, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1037, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1038, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1039, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1040, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1041, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1042, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1043, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1044, 0, 'en', 'core/media/media', 'download_link', 'Download', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1045, 0, 'en', 'core/media/media', 'url', 'URL', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1046, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1047, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1048, 0, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1049, 0, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1050, 0, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1051, 0, 'vi', 'core/media/media', 'video', 'Phim', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1052, 0, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1053, 0, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1054, 0, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1055, 0, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1056, 0, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1057, 0, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1058, 0, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1059, 0, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1060, 0, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1061, 0, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1062, 0, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1063, 0, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1064, 0, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1065, 0, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1066, 0, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1067, 0, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1068, 0, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1069, 0, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1070, 0, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1071, 0, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1072, 0, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1073, 0, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1074, 0, 'vi', 'core/media/media', 'create', 'Tạo', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1075, 0, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1076, 0, 'vi', 'core/media/media', 'close', 'Đóng', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1077, 0, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1078, 0, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1079, 0, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1080, 0, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1081, 0, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1082, 0, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1083, 0, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1084, 0, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1085, 0, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1086, 0, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1087, 0, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1088, 0, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1089, 0, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1090, 0, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1091, 0, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1092, 0, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1093, 0, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1094, 0, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1095, 0, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1096, 0, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1097, 0, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1098, 0, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1099, 0, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1100, 0, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1101, 0, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1102, 0, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1103, 0, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1104, 0, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1105, 0, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1106, 0, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1107, 0, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1108, 0, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1109, 0, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1110, 0, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1111, 0, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1112, 0, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1113, 0, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1114, 0, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1115, 0, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1116, 0, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1117, 0, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1118, 0, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1119, 0, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1120, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1121, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1122, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1123, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1124, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1125, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1126, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1127, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1128, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1129, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1130, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1131, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1132, 0, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1133, 0, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1134, 0, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1135, 0, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1136, 0, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1137, 0, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1138, 0, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1139, 0, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1140, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1141, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1142, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1143, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1144, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1145, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1146, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1147, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1148, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1149, 0, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1150, 0, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1151, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1152, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1153, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1154, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1155, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1156, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1157, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1158, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1159, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1160, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1161, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1162, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1163, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1164, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1165, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1166, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1167, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1168, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1169, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1170, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1171, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1172, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1173, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1174, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1175, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1176, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1177, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1178, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1179, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1180, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1181, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1182, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1183, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1184, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1185, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-08-18 04:42:50', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1186, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1187, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1188, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1189, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1190, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1191, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1192, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1193, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1194, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1195, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1196, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1197, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1198, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1199, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1200, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1201, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1202, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1203, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1204, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1205, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1206, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1207, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1208, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1209, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1210, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1211, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1212, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1213, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1214, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1215, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1216, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1217, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1218, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1219, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1220, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1221, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1222, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1223, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1224, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1225, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1226, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1227, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1228, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1229, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1230, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1231, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1232, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1233, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1234, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1235, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1236, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1237, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1238, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1239, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1240, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1241, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1242, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1243, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1244, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1245, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1246, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1247, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1248, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1249, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1250, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1251, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1252, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1253, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1254, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1255, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1256, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1257, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1258, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1259, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1260, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1261, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1262, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1263, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1264, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1265, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1266, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1267, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1268, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1269, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1270, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1271, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1272, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1273, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1274, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1275, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1276, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1277, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1278, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1279, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-08-18 04:42:50', '2021-08-18 04:43:17'),
(1280, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1281, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1282, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1283, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1284, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1285, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1286, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1287, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1288, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1289, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1290, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1291, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1292, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1293, 0, 'en', 'core/setting/setting', 'template', 'Template', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1294, 0, 'en', 'core/setting/setting', 'description', 'Description', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1295, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1296, 0, 'en', 'core/setting/setting', 'send', 'Send', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1297, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1298, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1299, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1300, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1301, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1302, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1303, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1304, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1305, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1306, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1307, 0, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1308, 0, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1309, 0, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1310, 0, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1311, 0, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1312, 0, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1313, 0, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1314, 0, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1315, 0, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1316, 0, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1317, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1318, 0, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1319, 0, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1320, 0, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1321, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1322, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1323, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1324, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1325, 0, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1326, 0, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1327, 0, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1328, 0, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1329, 0, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1330, 0, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1331, 0, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1332, 0, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1333, 0, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1334, 0, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1335, 0, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1336, 0, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1337, 0, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1338, 0, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1339, 0, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1340, 0, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1341, 0, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1342, 0, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1343, 0, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1344, 0, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1345, 0, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1346, 0, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1347, 0, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1348, 0, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1349, 0, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1350, 0, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1351, 0, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1352, 0, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1353, 0, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1354, 0, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1355, 0, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1356, 0, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1357, 0, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1358, 0, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1359, 0, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1360, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1361, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1362, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1363, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1364, 0, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1365, 0, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1366, 0, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1367, 0, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1368, 0, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1369, 0, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1370, 0, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1371, 0, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1372, 0, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1373, 0, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1374, 0, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1375, 0, 'en', 'core/table/general', 'operations', 'Operations', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1376, 0, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1377, 0, 'en', 'core/table/general', 'display', 'Display', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1378, 0, 'en', 'core/table/general', 'all', 'All', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1379, 0, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1380, 0, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1381, 0, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1382, 0, 'en', 'core/table/general', 'to', 'to', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1383, 0, 'en', 'core/table/general', 'in', 'in', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1384, 0, 'en', 'core/table/general', 'records', 'records', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1385, 0, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1386, 0, 'en', 'core/table/general', 'no_record', 'No record', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1387, 0, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1388, 0, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1389, 0, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1390, 0, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1391, 0, 'en', 'core/table/general', 'delete', 'Delete', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1392, 0, 'en', 'core/table/general', 'close', 'Close', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1393, 0, 'en', 'core/table/general', 'contains', 'Contains', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1394, 0, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1395, 0, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1396, 0, 'en', 'core/table/general', 'less_than', 'Less than', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1397, 0, 'en', 'core/table/general', 'value', 'Value', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1398, 0, 'en', 'core/table/general', 'select_field', 'Select field', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1399, 0, 'en', 'core/table/general', 'reset', 'Reset', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1400, 0, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1401, 0, 'en', 'core/table/general', 'apply', 'Apply', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1402, 0, 'en', 'core/table/general', 'filters', 'Filters', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1403, 0, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1404, 0, 'en', 'core/table/general', 'select_option', 'Select option', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1405, 0, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1406, 0, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1407, 0, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1408, 0, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1409, 0, 'en', 'core/table/general', 'search', 'Search...', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1410, 0, 'en', 'core/table/table', 'operations', 'Operations', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1411, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1412, 0, 'en', 'core/table/table', 'display', 'Display', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1413, 0, 'en', 'core/table/table', 'all', 'All', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1414, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1415, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1416, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1417, 0, 'en', 'core/table/table', 'to', 'to', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1418, 0, 'en', 'core/table/table', 'in', 'in', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1419, 0, 'en', 'core/table/table', 'records', 'records', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1420, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1421, 0, 'en', 'core/table/table', 'no_record', 'No record', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1422, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1423, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1424, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1425, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1426, 0, 'en', 'core/table/table', 'delete', 'Delete', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1427, 0, 'en', 'core/table/table', 'close', 'Close', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1428, 0, 'en', 'core/table/table', 'contains', 'Contains', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1429, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1430, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1431, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1432, 0, 'en', 'core/table/table', 'value', 'Value', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1433, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1434, 0, 'en', 'core/table/table', 'reset', 'Reset', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1435, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1436, 0, 'en', 'core/table/table', 'apply', 'Apply', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1437, 0, 'en', 'core/table/table', 'filters', 'Filters', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1438, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1439, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1440, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1441, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1442, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1443, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1444, 0, 'en', 'core/table/table', 'search', 'Search...', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1445, 0, 'vi', 'core/table/general', 'operations', 'Hành động', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1446, 0, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1447, 0, 'vi', 'core/table/general', 'display', 'Hiển thị', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1448, 0, 'vi', 'core/table/general', 'all', 'Tất cả', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1449, 0, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1450, 0, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1451, 0, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1452, 0, 'vi', 'core/table/general', 'to', 'đến', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1453, 0, 'vi', 'core/table/general', 'in', 'trong tổng số', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1454, 0, 'vi', 'core/table/general', 'records', 'bản ghi', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1455, 0, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1456, 0, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1457, 0, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1458, 0, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1459, 0, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1460, 0, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1461, 0, 'vi', 'core/table/general', 'delete', 'Xoá', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1462, 0, 'vi', 'core/table/general', 'close', 'Đóng', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1463, 0, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1464, 0, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1465, 0, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1466, 0, 'vi', 'core/table/general', 'value', 'Giá trị', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1467, 0, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1468, 0, 'vi', 'core/table/general', 'reset', 'Làm mới', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1469, 0, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1470, 0, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1471, 0, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1472, 0, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1473, 0, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1474, 0, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1475, 0, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1476, 0, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1477, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1478, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1479, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1480, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1481, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1482, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1483, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1484, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1485, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1486, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1487, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1488, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1489, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1490, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1491, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1492, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1493, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1494, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1495, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1496, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1497, 0, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1498, 0, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1499, 0, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1500, 0, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1501, 0, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1502, 0, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1503, 0, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1504, 0, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1505, 0, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1506, 0, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1507, 0, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1508, 0, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1509, 0, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1510, 0, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1511, 0, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1512, 0, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1513, 0, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1514, 0, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1515, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1516, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1517, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1518, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1519, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1520, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1521, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1522, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1523, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1524, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1525, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1526, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1527, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1528, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1529, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1530, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1531, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1532, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1533, 0, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1534, 0, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1535, 0, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1536, 0, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1537, 0, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1538, 0, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1539, 0, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1540, 0, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1541, 0, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1542, 0, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1543, 0, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1544, 0, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1545, 0, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1546, 0, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1547, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1548, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1549, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1550, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1551, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1552, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1553, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1554, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1555, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1556, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1557, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1558, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1559, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1560, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1561, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1562, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1563, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1564, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1565, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1566, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1567, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1568, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1569, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1570, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1571, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1572, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1573, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1574, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1575, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1576, 0, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1577, 0, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1578, 0, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1579, 0, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1580, 0, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1581, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-08-18 04:42:51', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1582, 0, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1583, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1584, 0, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1585, 0, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1586, 0, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Tiện ích mở rộng', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1587, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1588, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1589, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1590, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1591, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1592, 0, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1593, 0, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1594, 0, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1595, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1596, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1597, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1598, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1599, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1600, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1601, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1602, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1603, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1604, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1605, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1606, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1607, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1608, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1609, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1610, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1611, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1612, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1613, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1614, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1615, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1616, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1617, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1618, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1619, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1620, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1621, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1622, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1623, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1624, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-08-18 04:42:51', '2021-08-18 04:43:17'),
(1625, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1626, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1627, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1628, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1629, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1630, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1631, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1632, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1633, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1634, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1635, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1636, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1637, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1638, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1639, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1640, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1641, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1642, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1643, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1644, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1645, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1646, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1647, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1648, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1649, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1650, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1651, 0, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1652, 0, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1653, 0, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1654, 0, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1655, 0, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1656, 0, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1657, 0, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1658, 0, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1659, 0, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1660, 0, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1661, 0, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1662, 0, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1663, 0, 'en', 'packages/widget/global', 'create', 'New widget', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1664, 0, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1665, 0, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1666, 0, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1667, 0, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1668, 0, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1669, 0, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1670, 0, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1671, 0, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1672, 0, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1673, 0, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1674, 0, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1675, 0, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1676, 0, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1677, 0, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1678, 0, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1679, 0, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1680, 0, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1681, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1682, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1683, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1684, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1685, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1686, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1687, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1688, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1689, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1690, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1691, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1692, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1693, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1694, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1695, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1696, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1697, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1698, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1699, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1700, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1701, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1702, 0, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1703, 0, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1704, 0, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1705, 0, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1706, 0, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1707, 0, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1708, 0, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1709, 0, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1710, 0, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1711, 0, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1712, 0, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1713, 0, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1714, 0, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1715, 0, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1716, 0, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1717, 0, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1718, 0, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1719, 0, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1720, 0, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1721, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1722, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1723, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1724, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1725, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1726, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1727, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1728, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1729, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1730, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1731, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1732, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1733, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1734, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1735, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1736, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1737, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1738, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1739, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1740, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1741, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1742, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1743, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1744, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1745, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1746, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1747, 0, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1748, 0, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1749, 0, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1750, 0, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1751, 0, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1752, 0, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1753, 0, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1754, 0, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1755, 0, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1756, 0, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1757, 0, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1758, 0, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1759, 0, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1760, 0, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1761, 0, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1762, 0, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1763, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1764, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1765, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1766, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1767, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1768, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1769, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1770, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1771, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1772, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1773, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1774, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1775, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1776, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1777, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1778, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1779, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1780, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1781, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1782, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1783, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1784, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1785, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1786, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1787, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1788, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1789, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1790, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1791, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1792, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1793, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1794, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1795, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1796, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1797, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1798, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1799, 0, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1800, 0, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1801, 0, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1802, 0, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1803, 0, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1804, 0, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1805, 0, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1806, 0, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1807, 0, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1808, 0, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1809, 0, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1810, 0, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1811, 0, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1812, 0, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1813, 0, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1814, 0, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1815, 0, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1816, 0, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1817, 0, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1818, 0, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1819, 0, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1820, 0, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1821, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1822, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1823, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1824, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1825, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1826, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1827, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1828, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1829, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1830, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1831, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1832, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1833, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1834, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1835, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1836, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1837, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1838, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1839, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1840, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1841, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1842, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1843, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1844, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1845, 0, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1846, 0, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1847, 0, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1848, 0, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1849, 0, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1850, 0, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1851, 0, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1852, 0, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1853, 0, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1854, 0, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1855, 0, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1856, 0, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1857, 0, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1858, 0, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1859, 0, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1860, 0, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1861, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1862, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1863, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1864, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1865, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1866, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1867, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1868, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1869, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1870, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1871, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1872, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1873, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1874, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1875, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1876, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1877, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1878, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1879, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1880, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1881, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1882, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1883, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1884, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1885, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1886, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1887, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1888, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1889, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1890, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1891, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1892, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1893, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1894, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1895, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1896, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1897, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1898, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1899, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1900, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1901, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1902, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1903, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1904, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1905, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1906, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1907, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1908, 0, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1909, 0, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1910, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1911, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1912, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1913, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1914, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1915, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1916, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1917, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1918, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1919, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1920, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1921, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1922, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1923, 0, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1924, 0, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1925, 0, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1926, 0, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1927, 0, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1928, 0, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1929, 0, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1930, 0, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1931, 0, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1932, 0, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1933, 0, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1934, 0, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1935, 0, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1936, 0, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1937, 0, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1938, 0, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1939, 0, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1940, 0, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1941, 0, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1942, 0, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1943, 0, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-08-18 04:42:52', '2021-08-18 04:43:17'),
(1944, 0, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1945, 0, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1946, 0, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1947, 0, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1948, 0, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1949, 0, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1950, 0, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1951, 0, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1952, 0, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1953, 0, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1954, 0, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1955, 0, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-08-18 04:42:53', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1956, 0, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1957, 0, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1958, 0, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1959, 0, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1960, 0, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1961, 0, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1962, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1963, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1964, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1965, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1966, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1967, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1968, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1969, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1970, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1971, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1972, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1973, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1974, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1975, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1976, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1977, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1978, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1979, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1980, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1981, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1982, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1983, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1984, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1985, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1986, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1987, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1988, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1989, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1990, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1991, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1992, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1993, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1994, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1995, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1996, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1997, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1998, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(1999, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2000, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2001, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2002, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2003, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2004, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2005, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2006, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2007, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2008, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2009, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2010, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2011, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2012, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2013, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2014, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2015, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2016, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2017, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2018, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2019, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2020, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2021, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2022, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2023, 0, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2024, 0, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2025, 0, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2026, 0, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2027, 0, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2028, 0, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2029, 0, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2030, 0, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2031, 0, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2032, 0, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2033, 0, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2034, 0, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2035, 0, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2036, 0, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2037, 0, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2038, 0, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2039, 0, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2040, 0, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2041, 0, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2042, 0, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2043, 0, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2044, 0, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2045, 0, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2046, 0, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2047, 0, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2048, 0, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2049, 0, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2050, 0, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2051, 0, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2052, 0, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2053, 0, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2054, 0, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2055, 0, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2056, 0, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2057, 0, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2058, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2059, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2060, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2061, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2062, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2063, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2064, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2065, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2066, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2067, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2068, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2069, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2070, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2071, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2072, 0, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2073, 0, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2074, 0, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2075, 0, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2076, 0, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2077, 0, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2078, 0, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2079, 0, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2080, 0, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2081, 0, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2082, 0, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2083, 0, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2084, 0, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2085, 0, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2086, 0, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2087, 0, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2088, 0, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2089, 0, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2090, 0, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2091, 0, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2092, 0, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2093, 0, 'en', 'plugins/ecommerce/bulk-import', 'name', 'Bulk Import', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2094, 0, 'en', 'plugins/ecommerce/bulk-import', 'loading_text', 'Importing', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2095, 0, 'en', 'plugins/ecommerce/bulk-import', 'imported_successfully', 'Imported successfully.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2096, 0, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2097, 0, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file', 'Please choose the file', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2098, 0, 'en', 'plugins/ecommerce/bulk-import', 'start_import', 'Start Import', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2099, 0, 'en', 'plugins/ecommerce/bulk-import', 'note', 'Note!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2100, 0, 'en', 'plugins/ecommerce/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2101, 0, 'en', 'plugins/ecommerce/bulk-import', 'results', 'Result: :success successes, :failed failures', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2102, 0, 'en', 'plugins/ecommerce/bulk-import', 'failures', 'Failures', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2103, 0, 'en', 'plugins/ecommerce/bulk-import', 'tables.import', 'Import', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2104, 0, 'en', 'plugins/ecommerce/bulk-import', 'template', 'Template', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2105, 0, 'en', 'plugins/ecommerce/bulk-import', 'rules', 'Rules', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2106, 0, 'en', 'plugins/ecommerce/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2107, 0, 'en', 'plugins/ecommerce/bulk-import', 'choose_file', 'Choose file', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2108, 0, 'en', 'plugins/ecommerce/bulk-import', 'menu', 'Import products', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2109, 0, 'en', 'plugins/ecommerce/bulk-import', 'download-csv-file', 'Download CSV template', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2110, 0, 'en', 'plugins/ecommerce/bulk-import', 'download-excel-file', 'Download Excel template', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2111, 0, 'en', 'plugins/ecommerce/bulk-import', 'downloading', 'Downloading...', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2112, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.input_error', 'Input error', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2113, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2114, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.allowed_input', 'Allowed input', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2115, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2116, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2117, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2118, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2119, 0, 'en', 'plugins/ecommerce/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2120, 0, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2121, 0, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2122, 0, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2123, 0, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2124, 0, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2125, 0, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2126, 0, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2127, 0, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2128, 0, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2129, 0, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2130, 0, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2131, 0, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2132, 0, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2133, 0, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2134, 0, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2135, 0, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2136, 0, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2137, 0, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2138, 0, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2139, 0, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2140, 0, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2141, 0, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2142, 0, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2143, 0, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2144, 0, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2145, 0, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2146, 0, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2147, 0, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2148, 0, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2149, 0, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2150, 0, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2151, 0, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2152, 0, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2153, 0, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2154, 0, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2155, 0, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2156, 0, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2157, 0, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2158, 0, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2159, 0, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2160, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2161, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2162, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2163, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2164, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2165, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2166, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2167, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2168, 0, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2169, 0, 'en', 'plugins/ecommerce/discount', 'create_coupon_code', 'Create coupon code', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2170, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_promotion', 'Create discount promotion', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2171, 0, 'en', 'plugins/ecommerce/discount', 'generate_coupon_code', 'Generate coupon code', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2172, 0, 'en', 'plugins/ecommerce/discount', 'customers_will_enter_this_coupon_code_when_they_checkout', 'Customers will enter this coupon code when they checkout', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2173, 0, 'en', 'plugins/ecommerce/discount', 'select_type_of_discount', 'Select type of discount', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2174, 0, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2175, 0, 'en', 'plugins/ecommerce/discount', 'promotion', 'Promotion', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2176, 0, 'en', 'plugins/ecommerce/discount', 'can_be_used_with_promotion', 'Can be used with promotion', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2177, 0, 'en', 'plugins/ecommerce/discount', 'unlimited_coupon', 'Unlimited coupon', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2178, 0, 'en', 'plugins/ecommerce/discount', 'enter_number', 'Enter number', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2179, 0, 'en', 'plugins/ecommerce/discount', 'coupon_type', 'Coupon type', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2180, 0, 'en', 'plugins/ecommerce/discount', 'percentage_discount', 'Percentage discount (%)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2181, 0, 'en', 'plugins/ecommerce/discount', 'free_shipping', 'Free shipping', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2182, 0, 'en', 'plugins/ecommerce/discount', 'same_price', 'Same price', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2183, 0, 'en', 'plugins/ecommerce/discount', 'apply_for', 'apply for', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2184, 0, 'en', 'plugins/ecommerce/discount', 'all_orders', 'All orders', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2185, 0, 'en', 'plugins/ecommerce/discount', 'order_amount_from', 'Order amount from', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2186, 0, 'en', 'plugins/ecommerce/discount', 'product_collection', 'Product collection', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2187, 0, 'en', 'plugins/ecommerce/discount', 'product', 'Product', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2188, 0, 'en', 'plugins/ecommerce/discount', 'customer', 'Customer', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2189, 0, 'en', 'plugins/ecommerce/discount', 'variant', 'Variant', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2190, 0, 'en', 'plugins/ecommerce/discount', 'search_product', 'Search product', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2191, 0, 'en', 'plugins/ecommerce/discount', 'no_products_found', 'No products found!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2192, 0, 'en', 'plugins/ecommerce/discount', 'search_customer', 'Search customer', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2193, 0, 'en', 'plugins/ecommerce/discount', 'no_customer_found', 'No customer found!', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2194, 0, 'en', 'plugins/ecommerce/discount', 'one_time_per_order', 'One time per order', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2195, 0, 'en', 'plugins/ecommerce/discount', 'one_time_per_product_in_cart', 'One time per product in cart', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2196, 0, 'en', 'plugins/ecommerce/discount', 'number_of_products', 'Number of products', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2197, 0, 'en', 'plugins/ecommerce/discount', 'selected_products', 'Selected products', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2198, 0, 'en', 'plugins/ecommerce/discount', 'selected_customers', 'Selected customers', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2199, 0, 'en', 'plugins/ecommerce/discount', 'time', 'Time', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2200, 0, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2201, 0, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2202, 0, 'en', 'plugins/ecommerce/discount', 'never_expired', 'Never expired', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2203, 0, 'en', 'plugins/ecommerce/discount', 'save', 'Save', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2204, 0, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2205, 0, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2206, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2207, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2208, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2209, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2210, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2211, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2212, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2213, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2214, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2215, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2216, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2217, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2218, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2219, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2220, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2221, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2222, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2223, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2224, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2225, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2226, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2227, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2228, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2229, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2230, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2231, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2232, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2233, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2234, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2235, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-08-18 04:42:53', '2021-08-18 04:43:17'),
(2236, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2237, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2238, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2239, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2240, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2241, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2242, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2243, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2244, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2245, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2246, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2247, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2248, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2249, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2250, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2251, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2252, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2253, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2254, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2255, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2256, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2257, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2258, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2259, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2260, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2261, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2262, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2263, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2264, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2265, 0, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2266, 0, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2267, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2268, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2269, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2270, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2271, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2272, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2273, 0, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2274, 0, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2275, 0, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2276, 0, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2277, 0, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2278, 0, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2279, 0, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2280, 0, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2281, 0, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2282, 0, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2283, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2284, 0, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2285, 0, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2286, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2287, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2288, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2289, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2290, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2291, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2292, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2293, 0, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2294, 0, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2295, 0, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2296, 0, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2297, 0, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2298, 0, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2299, 0, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2300, 0, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2301, 0, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2302, 0, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2303, 0, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2304, 0, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2305, 0, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2306, 0, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2307, 0, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2308, 0, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2309, 0, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2310, 0, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2311, 0, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2312, 0, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2313, 0, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2314, 0, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2315, 0, 'en', 'plugins/ecommerce/messages', 'cart.add_product_success', 'Add product :product to cart successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2316, 0, 'en', 'plugins/ecommerce/messages', 'cart.update_cart_success', 'Update cart successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2317, 0, 'en', 'plugins/ecommerce/messages', 'cart.remove_cart_success', 'Remove item from cart successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2318, 0, 'en', 'plugins/ecommerce/messages', 'cart.empty_cart_success', 'Empty cart successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2319, 0, 'en', 'plugins/ecommerce/messages', 'cart.product_not_found', 'This product is out of stock or not exists!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2320, 0, 'en', 'plugins/ecommerce/messages', 'cart.product_is_out_of_stock', 'Product :product is out of stock!', '2021-08-18 04:42:54', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2321, 0, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_error', 'The order is delivering or completed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2322, 0, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_success', 'You do cancel the order successful', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2323, 0, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2324, 0, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2325, 0, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2326, 0, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2327, 0, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2328, 0, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2329, 0, 'en', 'plugins/ecommerce/order', 'menu', 'Orders', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2330, 0, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2331, 0, 'en', 'plugins/ecommerce/order', 'cancel_error', 'The order is delivering or completed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2332, 0, 'en', 'plugins/ecommerce/order', 'cancel_success', 'You do cancel the order successful', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2333, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2334, 0, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2335, 0, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2336, 0, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2337, 0, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2338, 0, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2339, 0, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2340, 0, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2341, 0, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2342, 0, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2343, 0, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2344, 0, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2345, 0, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2346, 0, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2347, 0, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2348, 0, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2349, 0, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2350, 0, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2351, 0, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2352, 0, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2353, 0, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2354, 0, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2355, 0, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2356, 0, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2357, 0, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2358, 0, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2359, 0, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2360, 0, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2361, 0, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2362, 0, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2363, 0, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2364, 0, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2365, 0, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2366, 0, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2367, 0, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2368, 0, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2369, 0, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2370, 0, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2371, 0, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2372, 0, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2373, 0, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2374, 0, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2375, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2376, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2377, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2378, 0, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2379, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2380, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2381, 0, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2382, 0, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2383, 0, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2384, 0, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2385, 0, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2386, 0, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2387, 0, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2388, 0, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2389, 0, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2390, 0, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2391, 0, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2392, 0, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2393, 0, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2394, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2395, 0, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2396, 0, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2397, 0, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2398, 0, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2399, 0, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2400, 0, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2401, 0, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2402, 0, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2403, 0, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2404, 0, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2405, 0, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2406, 0, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2407, 0, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2408, 0, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2409, 0, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2410, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2411, 0, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2412, 0, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2413, 0, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2414, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2415, 0, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2416, 0, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2417, 0, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2418, 0, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2419, 0, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2420, 0, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2421, 0, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2422, 0, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2423, 0, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2424, 0, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2425, 0, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2426, 0, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2427, 0, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2428, 0, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2429, 0, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2430, 0, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2431, 0, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2432, 0, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2433, 0, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2434, 0, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2435, 0, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2436, 0, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2437, 0, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2438, 0, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2439, 0, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2440, 0, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2441, 0, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2442, 0, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2443, 0, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2444, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2445, 0, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2446, 0, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2447, 0, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2448, 0, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2449, 0, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2450, 0, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2451, 0, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2452, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2453, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2454, 0, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2455, 0, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2456, 0, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2457, 0, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2458, 0, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2459, 0, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2460, 0, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2461, 0, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2462, 0, 'en', 'plugins/ecommerce/order', 'create_a_new_product', 'Create a new product', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2463, 0, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2464, 0, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2465, 0, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2466, 0, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2467, 0, 'en', 'plugins/ecommerce/order', 'note_for_order', 'Note for order...', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2468, 0, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2469, 0, 'en', 'plugins/ecommerce/order', 'add_discount', 'Add discount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2470, 0, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2471, 0, 'en', 'plugins/ecommerce/order', 'add_shipping_fee', 'Add shipping fee', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2472, 0, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2473, 0, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2474, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_and_create_order', 'Confirm payment and create order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2475, 0, 'en', 'plugins/ecommerce/order', 'paid', 'Paid', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2476, 0, 'en', 'plugins/ecommerce/order', 'pay_later', 'Pay later', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2477, 0, 'en', 'plugins/ecommerce/order', 'customer_information', 'Customer information', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2478, 0, 'en', 'plugins/ecommerce/order', 'create_new_customer', 'Create new customer', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2479, 0, 'en', 'plugins/ecommerce/order', 'no_customer_found', 'No customer found!', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2480, 0, 'en', 'plugins/ecommerce/order', 'customer', 'Customer', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2481, 0, 'en', 'plugins/ecommerce/order', 'orders', 'order(s)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2482, 0, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping Address', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2483, 0, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2484, 0, 'en', 'plugins/ecommerce/order', 'name', 'Name', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2485, 0, 'en', 'plugins/ecommerce/order', 'price', 'Price', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2486, 0, 'en', 'plugins/ecommerce/order', 'sku_optional', 'SKU (optional)', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2487, 0, 'en', 'plugins/ecommerce/order', 'with_storehouse_management', 'With storehouse management?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2488, 0, 'en', 'plugins/ecommerce/order', 'quantity', 'Quantity', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2489, 0, 'en', 'plugins/ecommerce/order', 'allow_customer_checkout_when_this_product_out_of_stock', 'Allow customer checkout when this product out of stock?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2490, 0, 'en', 'plugins/ecommerce/order', 'address', 'Address', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2491, 0, 'en', 'plugins/ecommerce/order', 'phone', 'Phone', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2492, 0, 'en', 'plugins/ecommerce/order', 'country', 'Country', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2493, 0, 'en', 'plugins/ecommerce/order', 'state', 'State', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2494, 0, 'en', 'plugins/ecommerce/order', 'city', 'City', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2495, 0, 'en', 'plugins/ecommerce/order', 'zip_code', 'Zip code', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2496, 0, 'en', 'plugins/ecommerce/order', 'discount_based_on', 'Discount based on', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2497, 0, 'en', 'plugins/ecommerce/order', 'or_coupon_code', 'Or coupon code', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2498, 0, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2499, 0, 'en', 'plugins/ecommerce/order', 'how_to_select_configured_shipping', 'How to select configured shipping?', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2500, 0, 'en', 'plugins/ecommerce/order', 'please_add_customer_information_with_the_complete_shipping_address_to_see_the_configured_shipping_rates', 'Please add customer information with the complete shipping address to see the configured shipping rates', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2501, 0, 'en', 'plugins/ecommerce/order', 'free_shipping', 'Free shipping', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2502, 0, 'en', 'plugins/ecommerce/order', 'custom', 'Custom', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2503, 0, 'en', 'plugins/ecommerce/order', 'email', 'Email', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2504, 0, 'en', 'plugins/ecommerce/order', 'create_order', 'Create order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2505, 0, 'en', 'plugins/ecommerce/order', 'close', 'Close', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2506, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_is_paid_for_this_order', 'Confirm payment is paid for this order', '2021-08-18 04:42:54', '2021-08-18 04:43:17'),
(2507, 0, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_paid_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Paid. Once the order has been created, you cannot change the payment method or status', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2508, 0, 'en', 'plugins/ecommerce/order', 'select_payment_method', 'Select payment method', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2509, 0, 'en', 'plugins/ecommerce/order', 'cash_on_delivery_cod', 'Cash on delivery (COD)', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2510, 0, 'en', 'plugins/ecommerce/order', 'bank_transfer', 'Bank transfer', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2511, 0, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2512, 0, 'en', 'plugins/ecommerce/order', 'confirm_that_payment_for_this_order_will_be_paid_later', 'Confirm that payment for this order will be paid later', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2513, 0, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_pending_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Pending. Once the order has been created, you cannot change the payment method or status', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2514, 0, 'en', 'plugins/ecommerce/order', 'pending_amount', 'Pending amount', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2515, 0, 'en', 'plugins/ecommerce/order', 'update_email', 'Update email', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2516, 0, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2517, 0, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2518, 0, 'en', 'plugins/ecommerce/order', 'create_a_new_order', 'Create a new order', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2519, 0, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2520, 0, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2521, 0, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2522, 0, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2523, 0, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2524, 0, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2525, 0, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2526, 0, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2527, 0, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2528, 0, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2529, 0, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2530, 0, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2531, 0, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2532, 0, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2533, 0, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2534, 0, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2535, 0, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2536, 0, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2537, 0, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2538, 0, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2539, 0, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2540, 0, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2541, 0, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2542, 0, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2543, 0, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2544, 0, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2545, 0, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2546, 0, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2547, 0, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2548, 0, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2549, 0, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2550, 0, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2551, 0, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2552, 0, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2553, 0, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2554, 0, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2555, 0, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2556, 0, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2557, 0, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2558, 0, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2559, 0, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2560, 0, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2561, 0, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2562, 0, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2563, 0, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2564, 0, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2565, 0, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2566, 0, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2567, 0, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2568, 0, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2569, 0, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2570, 0, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2571, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2572, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2573, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2574, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2575, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2576, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2577, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2578, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2579, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2580, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2581, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2582, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2583, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2584, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2585, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2586, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2587, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2588, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2589, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2590, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2591, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2592, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2593, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2594, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2595, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2596, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2597, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2598, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2599, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2600, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2601, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2602, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2603, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2604, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2605, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2606, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2607, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2608, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2609, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2610, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2611, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2612, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2613, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2614, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2615, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2616, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2617, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2618, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2619, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2620, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2621, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2622, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2623, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2624, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2625, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2626, 0, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2627, 0, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2628, 0, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2629, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2630, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2631, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2632, 0, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2633, 0, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2634, 0, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2635, 0, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2636, 0, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2637, 0, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2638, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2639, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2640, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2641, 0, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2642, 0, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2643, 0, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2644, 0, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2645, 0, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2646, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2647, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2648, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2649, 0, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2650, 0, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2651, 0, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2652, 0, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2653, 0, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2654, 0, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2655, 0, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2656, 0, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2657, 0, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2658, 0, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2659, 0, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2660, 0, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2661, 0, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2662, 0, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2663, 0, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2664, 0, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2665, 0, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2666, 0, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2667, 0, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2668, 0, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2669, 0, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2670, 0, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2671, 0, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2672, 0, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2673, 0, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2674, 0, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2675, 0, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2676, 0, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2677, 0, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2678, 0, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2679, 0, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2680, 0, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2681, 0, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2682, 0, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2683, 0, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2684, 0, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2685, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2686, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2687, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2688, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2689, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2690, 0, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-08-18 04:42:55', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2691, 0, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2692, 0, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2693, 0, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2694, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2695, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2696, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2697, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2698, 0, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2699, 0, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2700, 0, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2701, 0, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2702, 0, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2703, 0, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2704, 0, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2705, 0, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2706, 0, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2707, 0, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2708, 0, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2709, 0, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2710, 0, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2711, 0, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2712, 0, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2713, 0, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2714, 0, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2715, 0, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2716, 0, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2717, 0, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2718, 0, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2719, 0, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2720, 0, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2721, 0, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2722, 0, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2723, 0, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2724, 0, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2725, 0, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2726, 0, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2727, 0, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2728, 0, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2729, 0, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2730, 0, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2731, 0, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2732, 0, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2733, 0, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2734, 0, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2735, 0, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2736, 0, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2737, 0, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2738, 0, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2739, 0, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2740, 0, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2741, 0, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2742, 0, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2743, 0, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2744, 0, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2745, 0, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2746, 0, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2747, 0, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2748, 0, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2749, 0, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2750, 0, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2751, 0, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2752, 0, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2753, 0, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2754, 0, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2755, 0, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-08-18 04:42:55', '2021-08-18 04:43:17'),
(2756, 0, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2757, 0, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2758, 0, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2759, 0, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2760, 0, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2761, 0, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2762, 0, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2763, 0, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2764, 0, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2765, 0, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2766, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2767, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2768, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2769, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2770, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2771, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2772, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2773, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2774, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2775, 0, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2776, 0, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2777, 0, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2778, 0, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2779, 0, 'en', 'plugins/ecommerce/products', 'category', 'Category', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2780, 0, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2781, 0, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2782, 0, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2783, 0, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2784, 0, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2785, 0, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2786, 0, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2787, 0, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2788, 0, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2789, 0, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top Selling Products', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2790, 0, 'en', 'plugins/ecommerce/reports', 'ranges.today', 'Today', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2791, 0, 'en', 'plugins/ecommerce/reports', 'ranges.this_week', 'This week', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2792, 0, 'en', 'plugins/ecommerce/reports', 'ranges.last_7_days', 'Last 7 days', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2793, 0, 'en', 'plugins/ecommerce/reports', 'ranges.this_month', 'This month', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2794, 0, 'en', 'plugins/ecommerce/reports', 'ranges.this_year', 'This year', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2795, 0, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2796, 0, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2797, 0, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2798, 0, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2799, 0, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2800, 0, 'en', 'plugins/ecommerce/reports', 'sales_reports', 'Sales Reports', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2801, 0, 'en', 'plugins/ecommerce/reports', 'total_eanrnings', 'Total Earnings', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2802, 0, 'en', 'plugins/ecommerce/reports', 'recent_orders', 'Recent Orders', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2803, 0, 'en', 'plugins/ecommerce/reports', 'statistics', 'Statistics', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2804, 0, 'en', 'plugins/ecommerce/reports', 'items_earning_sales', 'Items Earning Sales: :value', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2805, 0, 'en', 'plugins/ecommerce/reports', 'revenue', 'Revenue', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2806, 0, 'en', 'plugins/ecommerce/reports', 'orders', 'Orders', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2807, 0, 'en', 'plugins/ecommerce/reports', 'products', 'Products', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2808, 0, 'en', 'plugins/ecommerce/reports', 'customers', 'Customers', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2809, 0, 'en', 'plugins/ecommerce/reports', 'choose_a_time_period', 'Choose a time period', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2810, 0, 'en', 'plugins/ecommerce/reports', 'earnings', 'Earnings', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2811, 0, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2812, 0, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2813, 0, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2814, 0, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2815, 0, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2816, 0, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2817, 0, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2818, 0, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2819, 0, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2820, 0, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2821, 0, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2822, 0, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2823, 0, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2824, 0, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2825, 0, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2826, 0, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2827, 0, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2828, 0, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2829, 0, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2830, 0, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2831, 0, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2832, 0, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2833, 0, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2834, 0, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2835, 0, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2836, 0, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2837, 0, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2838, 0, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2839, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2840, 0, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2841, 0, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2842, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2843, 0, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2844, 0, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2845, 0, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2846, 0, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2847, 0, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2848, 0, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2849, 0, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2850, 0, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2851, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2852, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2853, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2854, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2855, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2856, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2857, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2858, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2859, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2860, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2861, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2862, 0, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2863, 0, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2864, 0, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2865, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2866, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2867, 0, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2868, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2869, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2870, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2871, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2872, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2873, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2874, 0, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2875, 0, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2876, 0, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2877, 0, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2878, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2879, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2880, 0, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2881, 0, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2882, 0, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2883, 0, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2884, 0, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2885, 0, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2886, 0, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2887, 0, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2888, 0, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2889, 0, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2890, 0, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2891, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2892, 0, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2893, 0, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2894, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2895, 0, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2896, 0, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2897, 0, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2898, 0, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2899, 0, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2900, 0, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2901, 0, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2902, 0, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2903, 0, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2904, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2905, 0, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2906, 0, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2907, 0, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2908, 0, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2909, 0, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2910, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2911, 0, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2912, 0, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2913, 0, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2914, 0, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2915, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2916, 0, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2917, 0, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2918, 0, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2919, 0, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2920, 0, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2921, 0, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2922, 0, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2923, 0, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2924, 0, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2925, 0, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2926, 0, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2927, 0, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2928, 0, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2929, 0, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2930, 0, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2931, 0, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2932, 0, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2933, 0, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2934, 0, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2935, 0, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2936, 0, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2937, 0, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2938, 0, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2939, 0, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2940, 0, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2941, 0, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2942, 0, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2943, 0, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2944, 0, 'vi', 'plugins/ecommerce/brands', 'name', 'Thương hiệu', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2945, 0, 'vi', 'plugins/ecommerce/brands', 'create', 'Thêm thương hiệu mới', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2946, 0, 'vi', 'plugins/ecommerce/brands', 'edit', 'Sửa thương hiệu', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2947, 0, 'vi', 'plugins/ecommerce/brands', 'form.name', 'Tên', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2948, 0, 'vi', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Tên thương hiệu (tối đa 255 kí tự)', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2949, 0, 'vi', 'plugins/ecommerce/brands', 'form.description', 'Mô tả', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2950, 0, 'vi', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Mô tả ngắn cho thương hiệu này (tối đa 400 kí tự)', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2951, 0, 'vi', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2952, 0, 'vi', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2953, 0, 'vi', 'plugins/ecommerce/brands', 'form.is_featured', 'Nổi bật?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2954, 0, 'vi', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2955, 0, 'vi', 'plugins/ecommerce/brands', 'website', 'Website', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2956, 0, 'vi', 'plugins/ecommerce/brands', 'notices.no_select', 'Không có bản ghi nào được chọn!', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2957, 0, 'vi', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Cập nhật thành công', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2958, 0, 'vi', 'plugins/ecommerce/brands', 'cannot_delete', 'Xoá không thành công', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2959, 0, 'vi', 'plugins/ecommerce/brands', 'brand_deleted', 'Xoá thương hiệu thành công', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2960, 0, 'vi', 'plugins/ecommerce/brands', 'menu', 'Thương hiệu', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2961, 0, 'vi', 'plugins/ecommerce/brands', 'intro.title', 'Quản lý danh sách thương hiệu', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2962, 0, 'vi', 'plugins/ecommerce/brands', 'intro.description', 'Các thương hiệu của sản phẩm như Nike, Adidas, Bitis ...', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2963, 0, 'vi', 'plugins/ecommerce/brands', 'intro.button_text', 'Tạo thương hiệu', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2985, 0, 'vi', 'plugins/ecommerce/currency', 'currencies', 'Tiền tệ', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2986, 0, 'vi', 'plugins/ecommerce/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2987, 0, 'vi', 'plugins/ecommerce/currency', 'name', 'Tên', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2988, 0, 'vi', 'plugins/ecommerce/currency', 'symbol', 'Ký hiệu', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2989, 0, 'vi', 'plugins/ecommerce/currency', 'number_of_decimals', 'Số thập phân', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2990, 0, 'vi', 'plugins/ecommerce/currency', 'exchange_rate', 'Tỷ giá', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2991, 0, 'vi', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2992, 0, 'vi', 'plugins/ecommerce/currency', 'is_default', 'Mặc định?', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2993, 0, 'vi', 'plugins/ecommerce/currency', 'remove', 'Xoá', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2994, 0, 'vi', 'plugins/ecommerce/currency', 'new_currency', 'Thêm tiền tệ mới', '2021-08-18 04:42:56', '2021-08-18 04:43:17'),
(2995, 0, 'vi', 'plugins/ecommerce/currency', 'save_settings', 'Lưu cài đặt', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(2996, 0, 'vi', 'plugins/ecommerce/currency', 'before_number', 'Trước số', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(2997, 0, 'vi', 'plugins/ecommerce/currency', 'after_number', 'Sau số', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(2998, 0, 'vi', 'plugins/ecommerce/customer', 'name', 'Khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(2999, 0, 'vi', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3000, 0, 'vi', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3001, 0, 'vi', 'plugins/ecommerce/customer', 'email', 'Email', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3002, 0, 'vi', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3003, 0, 'vi', 'plugins/ecommerce/customer', 'password', 'Password', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3004, 0, 'vi', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3005, 0, 'vi', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3006, 0, 'vi', 'plugins/ecommerce/customer', 'intro.title', 'Quản lý danh sách khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3007, 0, 'vi', 'plugins/ecommerce/customer', 'intro.description', 'Khi khách hàng đặt hàng, bạn sẽ biết được thông tin và lịch sử mua hàng của khách hàng.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3008, 0, 'vi', 'plugins/ecommerce/customer', 'intro.button_text', 'Tạo khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3009, 0, 'vi', 'plugins/ecommerce/discount', 'name', 'Khuyến mãi', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3010, 0, 'vi', 'plugins/ecommerce/discount', 'invalid_coupon', 'Mã khuyến mãi không hợp lệ hoặc đã hết hạn!', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3011, 0, 'vi', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Mã khuyến mãi này không thể sử dụng chung với chương trình khuyến mãi!', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3012, 0, 'vi', 'plugins/ecommerce/discount', 'not_used', 'Chưa sử dụng mã giảm giá này', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3013, 0, 'vi', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3014, 0, 'vi', 'plugins/ecommerce/discount', 'used', 'Used', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3015, 0, 'vi', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3016, 0, 'vi', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3017, 0, 'vi', 'plugins/ecommerce/discount', 'intro.title', 'Chương trình khuyến mãi', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3018, 0, 'vi', 'plugins/ecommerce/discount', 'intro.description', 'Tạo ra các mã coupon, cài đặt một sản phẩm, hoặc một nhóm sản phẩm khuyến mãi dành cho các khách hàng thân thiết của bạn.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3019, 0, 'vi', 'plugins/ecommerce/discount', 'intro.button_text', 'Tạo khuyến mãi', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3020, 0, 'vi', 'plugins/ecommerce/ecommerce', 'settings', 'Cài đặt', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3021, 0, 'vi', 'plugins/ecommerce/ecommerce', 'name', 'Thương mại điện tử', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3022, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3023, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3024, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3025, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3026, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3027, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3028, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3029, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3030, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3031, 0, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3032, 0, 'vi', 'plugins/ecommerce/ecommerce', 'store_address', 'Địa chỉ cửa hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3033, 0, 'vi', 'plugins/ecommerce/ecommerce', 'store_phone', 'Số điện thoại cửa hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3034, 0, 'vi', 'plugins/ecommerce/ecommerce', 'order_id', 'Mã đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3035, 0, 'vi', 'plugins/ecommerce/ecommerce', 'order_token', 'Chuỗi mã hoá đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3036, 0, 'vi', 'plugins/ecommerce/ecommerce', 'customer_name', 'Tên khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3037, 0, 'vi', 'plugins/ecommerce/ecommerce', 'customer_email', 'Email khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3038, 0, 'vi', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Số điện thoại khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3039, 0, 'vi', 'plugins/ecommerce/ecommerce', 'customer_address', 'Địa chỉ khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3040, 0, 'vi', 'plugins/ecommerce/ecommerce', 'product_list', 'Danh sách sản phẩm trong đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3041, 0, 'vi', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Chi tiết thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3042, 0, 'vi', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Phương thức vận chuyển', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3043, 0, 'vi', 'plugins/ecommerce/ecommerce', 'payment_method', 'Phương thức thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3044, 0, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Tiêu chuẩn & Định dạng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3045, 0, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Các tiêu chuẩn và các định dạng được sử dụng để tính toán những thứ như giá cả sản phẩm, trọng lượng vận chuyển và thời gian đơn hàng được đặt.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3046, 0, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Chỉnh sửa định dạng mã đơn hàng (tùy chọn)', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3047, 0, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'Mã đơn hàng mặc định bắt đầu từ :number. Bạn có thể thay đổi chuỗi bắt đầu hoặc kết thúc để tạo mã đơn hàng theo ý bạn, ví dụ \"DH-:number\" hoặc \":number-A\"', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3048, 0, 'vi', 'plugins/ecommerce/ecommerce', 'start_with', 'Bắt đầu bằng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3049, 0, 'vi', 'plugins/ecommerce/ecommerce', 'end_with', 'Kết thúc bằng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3050, 0, 'vi', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Mã đơn hàng của bạn sẽ hiển thị theo mẫu', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3051, 0, 'vi', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Đơn vị cân nặng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3052, 0, 'vi', 'plugins/ecommerce/ecommerce', 'height_unit', 'Đơn vị chiều dài/chiều cao', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3053, 0, 'vi', 'plugins/ecommerce/email', 'customer_new_order_title', 'Xác nhận đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3054, 0, 'vi', 'plugins/ecommerce/email', 'customer_new_order_description', 'Được gửi khi khách hàng tạo đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3055, 0, 'vi', 'plugins/ecommerce/email', 'order_cancellation_title', 'Hủy đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3056, 0, 'vi', 'plugins/ecommerce/email', 'order_cancellation_description', 'Được gửi khi khách hàng hủy đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3057, 0, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Xác nhận giao hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3058, 0, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Được gửi đến khách hàng khi bắt đầu giao hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3059, 0, 'vi', 'plugins/ecommerce/email', 'admin_new_order_title', 'Thông báo có đơn hàng mới', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3060, 0, 'vi', 'plugins/ecommerce/email', 'admin_new_order_description', 'Được gửi cho quản trị viên khi có khách mua hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3061, 0, 'vi', 'plugins/ecommerce/email', 'order_confirmation_title', 'Xác nhận đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3062, 0, 'vi', 'plugins/ecommerce/email', 'order_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3063, 0, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Xác nhận thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3064, 0, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3065, 0, 'vi', 'plugins/ecommerce/email', 'order_recover_title', 'Đơn hàng đang chờ hoàn tất', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3066, 0, 'vi', 'plugins/ecommerce/email', 'order_recover_description', 'Email nhắc nhở khách hàng hoàn tất đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3067, 0, 'vi', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'hoặc <a href=\":link\">Truy cập website</a>', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3068, 0, 'vi', 'plugins/ecommerce/email', 'order_information', 'Thông tin đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3069, 0, 'vi', 'plugins/ecommerce/email', 'order_number', 'Mã đơn hàng: <strong>:order_id</strong>', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3070, 0, 'vi', 'plugins/ecommerce/email', 'view_order', 'Xem đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3071, 0, 'vi', 'plugins/ecommerce/order', 'statuses.pending', 'Chưa xử lý', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3072, 0, 'vi', 'plugins/ecommerce/order', 'statuses.processing', 'Đang xử lý', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3073, 0, 'vi', 'plugins/ecommerce/order', 'statuses.delivering', 'Đang giao hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3074, 0, 'vi', 'plugins/ecommerce/order', 'statuses.delivered', 'Đã giao hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3075, 0, 'vi', 'plugins/ecommerce/order', 'statuses.completed', 'Hoàn thành', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3076, 0, 'vi', 'plugins/ecommerce/order', 'statuses.canceled', 'Bị huỷ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3077, 0, 'vi', 'plugins/ecommerce/order', 'name', 'Đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3080, 0, 'vi', 'plugins/ecommerce/order', 'incomplete_order', 'Đơn hàng chưa hoàn tất', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3081, 0, 'vi', 'plugins/ecommerce/order', 'order_id', 'Mã đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3082, 0, 'vi', 'plugins/ecommerce/order', 'customer_label', 'Khách hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3083, 0, 'vi', 'plugins/ecommerce/order', 'amount', 'Tổng cộng', '2021-08-18 04:42:57', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3084, 0, 'vi', 'plugins/ecommerce/order', 'shipping_amount', 'Phí vận chuyển', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3085, 0, 'vi', 'plugins/ecommerce/order', 'payment_method', 'Phương thức thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3086, 0, 'vi', 'plugins/ecommerce/order', 'payment_status_label', 'Trạng thái thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3087, 0, 'vi', 'plugins/ecommerce/order', 'manage_orders', 'Quản lý đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3088, 0, 'vi', 'plugins/ecommerce/order', 'order_intro_description', 'Một khi cửa hàng của bạn có đơn đặt hàng, đây sẽ là nơi bạn xử lý và theo dõi những đơn đặt hàng đó.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3089, 0, 'vi', 'plugins/ecommerce/order', 'create_new_order', 'Tạo đơn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3090, 0, 'vi', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Quản lý đơn hàng chưa hoàn tất', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3091, 0, 'vi', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Đơn hàng chưa hoàn tất là đơn hàng được tạo khi khách hàng thêm sản phẩm vào giỏ hàng, tiến hành điền thông tin mua hàng nhưng không hoàn tất quá trình thanh toán.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3092, 0, 'vi', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'Không tìm thấy email nên không thể gửi email khôi phục cho khách hàng.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3093, 0, 'vi', 'plugins/ecommerce/payment', 'name', 'Thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3094, 0, 'vi', 'plugins/ecommerce/payment', 'payment_method', 'Phương thức thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3095, 0, 'vi', 'plugins/ecommerce/payment', 'view_payment', 'Xem thanh toán #', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3096, 0, 'vi', 'plugins/ecommerce/payment', 'charge_id', 'Mã giao dịch', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3097, 0, 'vi', 'plugins/ecommerce/payment', 'amount', 'Số tiền', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3098, 0, 'vi', 'plugins/ecommerce/payment', 'currency', 'Đơn vị tiền tệ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3099, 0, 'vi', 'plugins/ecommerce/payment', 'user', 'Người dùng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3100, 0, 'vi', 'plugins/ecommerce/payment', 'paypal_name_required', 'Tên của phương thức PayPal là bắt buộc!', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3101, 0, 'vi', 'plugins/ecommerce/payment', 'paypal_name_max', 'Tên của phương thức PayPal quá dài!', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3102, 0, 'vi', 'plugins/ecommerce/payment', 'stripe_name_required', 'Tên của phương thức Stripe là bắt buộc!', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3103, 0, 'vi', 'plugins/ecommerce/payment', 'stripe_name_max', 'Tên của phương thức Stripe quá dài!', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3104, 0, 'vi', 'plugins/ecommerce/payment', 'status', 'Trạng thái', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3105, 0, 'vi', 'plugins/ecommerce/payment', 'enabled', 'Bật', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3106, 0, 'vi', 'plugins/ecommerce/payment', 'disabled', 'Tắt', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3107, 0, 'vi', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3108, 0, 'vi', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3109, 0, 'vi', 'plugins/ecommerce/payment', 'mode', 'Chế độ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3110, 0, 'vi', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3111, 0, 'vi', 'plugins/ecommerce/payment', 'live', 'Live', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3112, 0, 'vi', 'plugins/ecommerce/payment', 'enable_payment_log', 'Bật lưu nhật ký thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3113, 0, 'vi', 'plugins/ecommerce/payment', 'yes', 'Có', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3114, 0, 'vi', 'plugins/ecommerce/payment', 'no', 'Không', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3115, 0, 'vi', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3116, 0, 'vi', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3117, 0, 'vi', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3118, 0, 'vi', 'plugins/ecommerce/payment', 'action', 'Hành động', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3119, 0, 'vi', 'plugins/ecommerce/payment', 'go_back', 'Quay lại', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3120, 0, 'vi', 'plugins/ecommerce/payment', 'view', 'Xem', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3121, 0, 'vi', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Thanh toán khi nhận hàng (COD)', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3122, 0, 'vi', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Thông qua chuyển khoản ngân hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3123, 0, 'vi', 'plugins/ecommerce/payment', 'payment_via_cart', 'Thanh toán bằng thẻ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3124, 0, 'vi', 'plugins/ecommerce/payment', 'card_number', 'Số thẻ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3125, 0, 'vi', 'plugins/ecommerce/payment', 'full_name', 'Tên trên thẻ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3126, 0, 'vi', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Thanh toán thông qua PayPal', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3127, 0, 'vi', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3128, 0, 'vi', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3129, 0, 'vi', 'plugins/ecommerce/payment', 'details', 'Chi tiết', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3130, 0, 'vi', 'plugins/ecommerce/payment', 'payer_name', 'Người thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3131, 0, 'vi', 'plugins/ecommerce/payment', 'email', 'Địa chỉ email', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3132, 0, 'vi', 'plugins/ecommerce/payment', 'phone', 'Điện thoại', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3133, 0, 'vi', 'plugins/ecommerce/payment', 'country', 'Quốc gia', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3134, 0, 'vi', 'plugins/ecommerce/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3135, 0, 'vi', 'plugins/ecommerce/payment', 'payment_details', 'Chi tiết giao dịch', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3136, 0, 'vi', 'plugins/ecommerce/payment', 'card', 'Thẻ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3137, 0, 'vi', 'plugins/ecommerce/payment', 'address', 'Địa chỉ', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3138, 0, 'vi', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3139, 0, 'vi', 'plugins/ecommerce/payment', 'new_payment', 'Thanh toán cho đơn hàng :id', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3140, 0, 'vi', 'plugins/ecommerce/payment', 'payment_id', 'Mã thanh toán', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3141, 0, 'vi', 'plugins/ecommerce/prices', 'name', 'Price', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3142, 0, 'vi', 'plugins/ecommerce/prices', 'create', 'New price', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3143, 0, 'vi', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3144, 0, 'vi', 'plugins/ecommerce/prices', 'list', 'List price', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3145, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3146, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3147, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3148, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3149, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3150, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3151, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3152, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3153, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3154, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3155, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3156, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3157, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3158, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3159, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3160, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3161, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3162, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3163, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3164, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3165, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3166, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3167, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3168, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3169, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3170, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3171, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3172, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3173, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3174, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3175, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3176, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3177, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3178, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3179, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3180, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3181, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3182, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3183, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3184, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3185, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3186, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3187, 0, 'vi', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3188, 0, 'vi', 'plugins/ecommerce/product-attributes', 'name', 'Thuộc tính sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3189, 0, 'vi', 'plugins/ecommerce/product-attributes', 'create', 'Tạo', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3190, 0, 'vi', 'plugins/ecommerce/product-attributes', 'edit', 'Sửa', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3191, 0, 'vi', 'plugins/ecommerce/product-attributes', 'intro.title', 'Quản lý danh sách thuộc tính sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3192, 0, 'vi', 'plugins/ecommerce/product-attributes', 'intro.description', 'Các thuộc tính của sản phẩm như màu sắc, kích thước ...', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3193, 0, 'vi', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Tạo thuộc tính sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3194, 0, 'vi', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3195, 0, 'vi', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3196, 0, 'vi', 'plugins/ecommerce/product-categories', 'name', 'Danh mục sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3197, 0, 'vi', 'plugins/ecommerce/product-categories', 'none', 'Không có', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3198, 0, 'vi', 'plugins/ecommerce/product-categories', 'menu', 'Danh mục sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3199, 0, 'vi', 'plugins/ecommerce/product-categories', 'intro.title', 'Quản lý danh sách danh mục sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3200, 0, 'vi', 'plugins/ecommerce/product-categories', 'intro.description', 'Danh mục sản phẩm như quần áo, giày dép, linh kiện điện tử ...', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3201, 0, 'vi', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Tạo danh mục sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3202, 0, 'vi', 'plugins/ecommerce/product-categories', 'total_products', 'Tổng sản phẩm: :total', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3203, 0, 'vi', 'plugins/ecommerce/product-collections', 'name', 'Nhóm sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3204, 0, 'vi', 'plugins/ecommerce/product-collections', 'create', 'Thêm nhóm sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3205, 0, 'vi', 'plugins/ecommerce/product-collections', 'edit', 'Sửa nhóm sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3206, 0, 'vi', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3207, 0, 'vi', 'plugins/ecommerce/product-collections', 'intro.title', 'Quản lý nhóm sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3208, 0, 'vi', 'plugins/ecommerce/product-collections', 'intro.description', 'Nhóm sản phẩm giúp quản lý sản phẩm và khách hàng tìm kiếm sản phẩm một cách dễ dàng.', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3209, 0, 'vi', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Tạo nhóm sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3210, 0, 'vi', 'plugins/ecommerce/products', 'name', 'Sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3211, 0, 'vi', 'plugins/ecommerce/products', 'create', 'Thêm sản phẩm mới', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3212, 0, 'vi', 'plugins/ecommerce/products', 'edit', 'Sửa sản phẩm - :name', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3213, 0, 'vi', 'plugins/ecommerce/products', 'form.name', 'Tên sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3214, 0, 'vi', 'plugins/ecommerce/products', 'form.name_placeholder', 'Tên sản phẩm (Tối đa 120 chữ cái)', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3215, 0, 'vi', 'plugins/ecommerce/products', 'form.description', 'Mô tả ngắn', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3216, 0, 'vi', 'plugins/ecommerce/products', 'form.description_placeholder', 'Mô tả ngắn gọn cho sản phẩm (Tối đa 400 chữ cái)', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3217, 0, 'vi', 'plugins/ecommerce/products', 'form.categories', 'Danh mục', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3218, 0, 'vi', 'plugins/ecommerce/products', 'form.content', 'Chi tiết sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3219, 0, 'vi', 'plugins/ecommerce/products', 'form.price', 'Giá cơ bản', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3220, 0, 'vi', 'plugins/ecommerce/products', 'form.price_sale', 'Giá giảm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3221, 0, 'vi', 'plugins/ecommerce/products', 'form.quantity', 'Số lượng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3222, 0, 'vi', 'plugins/ecommerce/products', 'form.brand', 'Thương hiệu', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3223, 0, 'vi', 'plugins/ecommerce/products', 'form.width', 'Rộng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3224, 0, 'vi', 'plugins/ecommerce/products', 'form.height', 'Cao', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3225, 0, 'vi', 'plugins/ecommerce/products', 'form.weight', 'Cân nặng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3226, 0, 'vi', 'plugins/ecommerce/products', 'form.image', 'Hình ảnh', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3227, 0, 'vi', 'plugins/ecommerce/products', 'form.product_type.title', 'Loại sản phẩm', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3228, 0, 'vi', 'plugins/ecommerce/products', 'form.stock.title', 'Tình trạng kho', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3229, 0, 'vi', 'plugins/ecommerce/products', 'form.stock.in_stock', 'Còn hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3230, 0, 'vi', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Hết hàng', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3231, 0, 'vi', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Cho phép đặt hàng khi hết', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3232, 0, 'vi', 'plugins/ecommerce/products', 'form.storehouse.title', 'Quản lý kho', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3233, 0, 'vi', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'Không quản lý kho', '2021-08-18 04:42:57', '2021-08-18 04:43:17'),
(3234, 0, 'vi', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'Quản lý kho', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3235, 0, 'vi', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Số lượng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3236, 0, 'vi', 'plugins/ecommerce/products', 'form.shipping.title', 'Giao hàng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3237, 0, 'vi', 'plugins/ecommerce/products', 'form.shipping.length', 'Chiều dài', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3238, 0, 'vi', 'plugins/ecommerce/products', 'form.shipping.wide', 'Chiều rộng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3239, 0, 'vi', 'plugins/ecommerce/products', 'form.shipping.height', 'Chiều cao', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3240, 0, 'vi', 'plugins/ecommerce/products', 'form.shipping.weight', 'Cân nặng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3241, 0, 'vi', 'plugins/ecommerce/products', 'form.date.start', 'Ngày bắt đầu', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3242, 0, 'vi', 'plugins/ecommerce/products', 'form.date.end', 'Ngày kết thúc', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3243, 0, 'vi', 'plugins/ecommerce/products', 'form.tags', 'Nhãn', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3244, 0, 'vi', 'plugins/ecommerce/products', 'form.tax', 'Thuế', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3245, 0, 'vi', 'plugins/ecommerce/products', 'price', 'Giá cơ bản', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3246, 0, 'vi', 'plugins/ecommerce/products', 'price_sale', 'Giá giảm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3247, 0, 'vi', 'plugins/ecommerce/products', 'quantity', 'Số lượng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3248, 0, 'vi', 'plugins/ecommerce/products', 'type', 'Loại sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3249, 0, 'vi', 'plugins/ecommerce/products', 'image', 'Ảnh', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3250, 0, 'vi', 'plugins/ecommerce/products', 'sku', 'Mã sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3251, 0, 'vi', 'plugins/ecommerce/products', 'brand', 'Thương hiệu', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3252, 0, 'vi', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3253, 0, 'vi', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3254, 0, 'vi', 'plugins/ecommerce/products', 'products', 'Sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3255, 0, 'vi', 'plugins/ecommerce/products', 'menu', 'Sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3256, 0, 'vi', 'plugins/ecommerce/products', 'control.button_add_image', 'Thêm hình ảnh', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3257, 0, 'vi', 'plugins/ecommerce/products', 'overview', 'Tổng quan', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3258, 0, 'vi', 'plugins/ecommerce/products', 'attributes', 'Thuộc tính', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3259, 0, 'vi', 'plugins/ecommerce/products', 'product_has_variations', 'Sản phẩm có nhiều phiên bản', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3260, 0, 'vi', 'plugins/ecommerce/products', 'manage_products', 'Quản lý danh sách sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3261, 0, 'vi', 'plugins/ecommerce/products', 'add_new_product', 'Tạo sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3262, 0, 'vi', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Bắt đầu bán hàng bằng việc thêm sản phẩm.', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3263, 0, 'vi', 'plugins/ecommerce/reports', 'name', 'Báo cáo', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3264, 0, 'vi', 'plugins/ecommerce/reports', 'widget.order.title', 'Đơn hàng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3265, 0, 'vi', 'plugins/ecommerce/reports', 'count.revenue', 'Doanh thu hôm nay', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3266, 0, 'vi', 'plugins/ecommerce/reports', 'count.orders', 'Đơn hàng hôm nay', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3267, 0, 'vi', 'plugins/ecommerce/reports', 'count.products', 'Sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3268, 0, 'vi', 'plugins/ecommerce/reports', 'count.customers', 'Khách hàng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3269, 0, 'vi', 'plugins/ecommerce/reports', 'product_name', 'Tên sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3270, 0, 'vi', 'plugins/ecommerce/reports', 'quantity', 'Số lượng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3271, 0, 'vi', 'plugins/ecommerce/reports', 'revenue_statistics', 'Thống kê doanh thu', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3272, 0, 'vi', 'plugins/ecommerce/reports', 'top_selling_products', 'Sản phẩm bán chạy trong tháng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3273, 0, 'vi', 'plugins/ecommerce/review', 'name', 'Đánh giá', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3274, 0, 'vi', 'plugins/ecommerce/review', 'list_review', 'Khách hàng đánh giá', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3275, 0, 'vi', 'plugins/ecommerce/review', 'add_review', 'Thêm đánh giá', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3276, 0, 'vi', 'plugins/ecommerce/review', 'delete_review', 'Xóa đánh giá', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3277, 0, 'vi', 'plugins/ecommerce/review', 'create_review', 'Tạo đánh giá', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3278, 0, 'vi', 'plugins/ecommerce/review', 'please_select_rating', 'Chọn đánh giá', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3279, 0, 'vi', 'plugins/ecommerce/review', 'comment', 'Bình luận', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3280, 0, 'vi', 'plugins/ecommerce/review', 'approve', 'Chấp thuận', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3281, 0, 'vi', 'plugins/ecommerce/review', 'approved', 'Đã chấp thuận', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3282, 0, 'vi', 'plugins/ecommerce/review', 'disapprove', 'Không chấp thuận', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3283, 0, 'vi', 'plugins/ecommerce/review', 'disapproved', 'Đã không chấp thuận', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3284, 0, 'vi', 'plugins/ecommerce/review', 'product', 'Sản phẩm', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3285, 0, 'vi', 'plugins/ecommerce/review', 'user', 'Người dùng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3286, 0, 'vi', 'plugins/ecommerce/review', 'star', 'Sao', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3287, 0, 'vi', 'plugins/ecommerce/review', 'status', 'Trạng thái', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3288, 0, 'vi', 'plugins/ecommerce/review', 'intro.title', 'Quản lý danh sách nhận xét của khách hàng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3289, 0, 'vi', 'plugins/ecommerce/review', 'intro.description', 'Lưu trữ các nhận xét, đánh giá của khách hàng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3290, 0, 'vi', 'plugins/ecommerce/shipping', 'name', 'Phí vận chuyển', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3291, 0, 'vi', 'plugins/ecommerce/shipping', 'shipping', 'Vận chuyển', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3292, 0, 'vi', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3293, 0, 'vi', 'plugins/ecommerce/shipping', 'country', 'Quốc gia', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3294, 0, 'vi', 'plugins/ecommerce/shipping', 'state', 'State', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3295, 0, 'vi', 'plugins/ecommerce/shipping', 'city', 'City', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3296, 0, 'vi', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3298, 0, 'vi', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3299, 0, 'vi', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3300, 0, 'vi', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3301, 0, 'vi', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3302, 0, 'vi', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3303, 0, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping #', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3304, 0, 'vi', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3305, 0, 'vi', 'plugins/ecommerce/shipping', 'shipping_methods', 'Phương thức vận chuyển', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3306, 0, 'vi', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Tạo phương thức vận chuyển', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3307, 0, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Sửa phương thức vận chuyển', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3308, 0, 'vi', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Thêm khu vực vận chuyển', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3309, 0, 'vi', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3310, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3311, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3312, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3313, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3314, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3315, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3316, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3317, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3318, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3319, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3320, 0, 'vi', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3321, 0, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3322, 0, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3323, 0, 'vi', 'plugins/ecommerce/store-locator', 'name', 'Địa chỉ cửa hàng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3324, 0, 'vi', 'plugins/ecommerce/store-locator', 'description', 'Địa chỉ này sẽ xuất hiện trên hoá đơn của bạn và sẽ được sử dụng để tính toán mức giá vận chuyển của bạn.', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3325, 0, 'vi', 'plugins/ecommerce/store-locator', 'shop_name', 'Tên cửa hàng', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3326, 0, 'vi', 'plugins/ecommerce/store-locator', 'phone', 'Điện thoại', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3327, 0, 'vi', 'plugins/ecommerce/store-locator', 'address', 'Địa chỉ', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3328, 0, 'vi', 'plugins/ecommerce/tax', 'name', 'Thuế', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3329, 0, 'vi', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3330, 0, 'vi', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3331, 0, 'vi', 'plugins/ecommerce/tax', 'title', 'Title', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3332, 0, 'vi', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3333, 0, 'vi', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3334, 0, 'vi', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3335, 0, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3336, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3337, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3338, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3339, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3340, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3341, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3342, 0, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3343, 0, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3344, 0, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3345, 0, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3346, 0, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3347, 0, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3348, 0, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3349, 0, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3350, 0, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3351, 0, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3352, 0, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3353, 0, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3354, 0, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3355, 0, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3356, 0, 'en', 'plugins/payment/payment', 'user', 'User', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3357, 0, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3358, 0, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3359, 0, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3360, 0, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3361, 0, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3362, 0, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3363, 0, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3364, 0, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3365, 0, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3366, 0, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3367, 0, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3368, 0, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3369, 0, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3370, 0, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3371, 0, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3372, 0, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3373, 0, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3374, 0, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3375, 0, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3376, 0, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3377, 0, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3378, 0, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3379, 0, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3380, 0, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3381, 0, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3382, 0, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3383, 0, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3384, 0, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3385, 0, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3386, 0, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3387, 0, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3388, 0, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3389, 0, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3390, 0, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3391, 0, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3392, 0, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3393, 0, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3394, 0, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3395, 0, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3396, 0, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3397, 0, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3398, 0, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3399, 0, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3400, 0, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3401, 0, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3402, 0, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3403, 0, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3404, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3405, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3406, 0, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3407, 0, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3408, 0, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3409, 0, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3410, 0, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3411, 0, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3412, 0, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3413, 0, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3414, 0, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3415, 0, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3416, 0, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3417, 0, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3418, 0, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3419, 0, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3420, 0, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3421, 0, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3422, 0, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3423, 0, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3424, 0, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3425, 0, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3426, 0, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3427, 0, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3428, 0, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3429, 0, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3430, 0, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3431, 0, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3432, 0, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3433, 0, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3434, 0, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3435, 0, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3436, 0, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3437, 0, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3438, 0, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3439, 0, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3440, 0, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3441, 0, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3442, 0, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3443, 0, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3444, 0, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3445, 0, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3446, 0, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3447, 0, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3448, 0, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3449, 0, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3450, 0, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3451, 0, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3452, 0, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3453, 0, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-08-18 04:42:58', '2021-08-18 04:43:17'),
(3454, 0, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3455, 0, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3456, 0, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3457, 0, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3458, 0, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3459, 0, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3460, 0, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3461, 0, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3462, 0, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3463, 0, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3464, 0, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3465, 0, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3466, 0, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3467, 0, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3468, 0, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2021-08-18 04:42:59', '2021-08-18 04:43:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3469, 0, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3470, 0, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3471, 0, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3472, 0, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3473, 0, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3474, 0, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3475, 0, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3476, 0, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3477, 0, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3478, 0, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3479, 0, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3480, 0, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3481, 0, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3482, 0, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3483, 0, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3484, 0, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3485, 0, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3486, 0, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3487, 0, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3488, 0, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3489, 0, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3490, 0, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3491, 0, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3492, 0, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3493, 0, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3494, 0, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3495, 0, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3496, 0, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3497, 0, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3498, 0, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3499, 0, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3500, 0, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3501, 0, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3502, 0, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3503, 0, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3504, 0, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3505, 0, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3506, 0, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3507, 0, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3508, 0, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3509, 0, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3510, 0, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3511, 0, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3512, 0, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3513, 0, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3514, 0, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3515, 0, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3516, 0, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3517, 0, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3518, 0, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3519, 0, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3520, 0, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3521, 0, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3522, 0, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3523, 0, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3524, 0, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3525, 0, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3526, 0, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3527, 0, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3528, 0, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3529, 0, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3530, 0, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3531, 0, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3532, 0, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3533, 0, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3534, 0, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3535, 0, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3536, 0, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3537, 0, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3538, 0, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3539, 0, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3540, 0, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3541, 0, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3542, 0, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3543, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3544, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3545, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3546, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3547, 0, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3548, 0, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3549, 0, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3550, 0, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3551, 0, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3552, 0, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3553, 0, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3554, 0, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3555, 0, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3556, 0, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3557, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3558, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3559, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3560, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3561, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3562, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3563, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3564, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3565, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3566, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3567, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3568, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3569, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3570, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3571, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3572, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3573, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3574, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3575, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3576, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3577, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3578, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3579, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3580, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3581, 0, 'en', 'plugins/testimonial/testimonial', 'name', 'Testimonials', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3582, 0, 'en', 'plugins/testimonial/testimonial', 'create', 'New testimonial', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3583, 0, 'en', 'plugins/testimonial/testimonial', 'edit', 'Edit testimonial', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3584, 0, 'en', 'plugins/testimonial/testimonial', 'company', 'Position/Company', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3585, 0, 'vi', 'plugins/testimonial/testimonial', 'name', 'Nhận xét của khách hàng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3586, 0, 'vi', 'plugins/testimonial/testimonial', 'create', 'Thêm nhận xét mới', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3587, 0, 'vi', 'plugins/testimonial/testimonial', 'edit', 'Sửa nhận xét', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3588, 0, 'vi', 'plugins/testimonial/testimonial', 'company', 'Chức vụ/Công ty', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3589, 0, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3590, 0, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3591, 0, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3592, 0, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3593, 0, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3594, 0, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3595, 0, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3596, 0, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3597, 0, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3598, 0, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3599, 0, 'vi', 'plugins/testimonials/forms', 'name', 'Tên khách hàng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3600, 0, 'vi', 'plugins/testimonials/forms', 'company', 'Công ty/Nơi làm việc', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3601, 0, 'vi', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3602, 0, 'vi', 'plugins/testimonials/forms', 'title', 'Tiêu đề', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3603, 0, 'vi', 'plugins/testimonials/forms', 'content', 'Nội dung', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3604, 0, 'vi', 'plugins/testimonials/forms', 'publish', 'Xuất bản', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3605, 0, 'vi', 'plugins/testimonials/forms', 'unpublish', 'Không xuất bản', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3606, 0, 'vi', 'plugins/testimonials/testimonials', 'name', 'Nhận xét khách hàng', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3607, 0, 'vi', 'plugins/testimonials/testimonials', 'create', 'Tạo mới', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3608, 0, 'vi', 'plugins/testimonials/testimonials', 'edit', 'Sửa nhận xét', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3609, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3610, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3611, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3612, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3613, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3614, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3615, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3616, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3617, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3618, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3619, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3620, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3621, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3622, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3623, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3624, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3625, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3626, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3627, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3628, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3629, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3630, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3631, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3632, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3633, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3634, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3635, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3636, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3637, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3638, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3639, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3640, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3641, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3642, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3643, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3644, 0, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2021-08-18 04:42:59', '2021-08-18 04:43:17'),
(3645, 0, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3646, 0, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3647, 0, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3648, 0, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3649, 0, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3650, 0, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3651, 0, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3652, 0, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3653, 0, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3654, 0, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3655, 0, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3656, 0, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3657, 0, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3658, 0, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3659, 0, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3660, 0, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3661, 0, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3662, 0, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3663, 0, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3664, 0, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3665, 0, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3666, 0, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3667, 0, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3668, 0, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-08-18 04:42:59', '2021-08-18 04:43:16'),
(3669, 0, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3670, 0, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3671, 0, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3672, 0, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3673, 0, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3674, 0, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3675, 0, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3676, 0, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3677, 0, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3678, 0, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3679, 0, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3680, 0, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3681, 0, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3682, 0, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3683, 0, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3684, 0, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3685, 0, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3686, 0, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3687, 0, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3688, 0, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3689, 0, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3690, 0, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3691, 0, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3692, 0, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3693, 0, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3694, 0, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3695, 0, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3696, 0, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3697, 0, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3698, 0, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3699, 0, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3700, 0, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3701, 0, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3702, 0, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3703, 0, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3704, 0, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3705, 0, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3706, 0, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3707, 0, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3708, 0, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3709, 0, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3710, 0, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3711, 0, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3712, 0, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3713, 0, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3714, 0, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3715, 0, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3716, 0, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3717, 0, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3718, 0, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3719, 0, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3720, 0, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3721, 0, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3722, 0, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3723, 0, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3724, 0, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3725, 0, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3726, 0, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3727, 0, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3728, 0, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3729, 0, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3730, 0, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3731, 0, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3732, 0, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3733, 0, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3734, 0, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3735, 0, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3736, 0, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3737, 0, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3738, 0, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3739, 0, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3740, 0, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3741, 0, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3742, 0, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3743, 0, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3744, 0, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3745, 0, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2021-08-18 04:43:00', '2021-08-18 04:43:16'),
(3746, 0, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-08-18 04:43:00', '2021-08-18 04:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'babusunnah@gmail.com', NULL, '$2y$10$AH.DM2PPe5YrPeZKE9r1auC5TVGBqldLOQpY1a87rsWWPMASA6kD6', 'YMSAML9gJVMF8io7wzAkEbebEYAjImN7qSp3tXh770mqtAzSS6QSDkN6mCXt', '2021-08-03 20:57:32', '2021-09-07 17:39:58', 'Abdulquddus', 'Balogun', 'balex', NULL, 1, 1, NULL, '2021-09-07 17:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-theme', 'darkblue', 1, '2021-09-07 17:44:24', '2021-09-07 17:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(16, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}', '2021-09-09 10:50:58', '2021-09-09 10:50:58'),
(17, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}', '2021-09-09 10:50:58', '2021-09-09 10:50:58'),
(18, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}', '2021-09-09 10:50:58', '2021-09-09 10:50:58');

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
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
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
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=817;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3747;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
