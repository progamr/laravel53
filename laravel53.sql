-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2016 at 06:39 AM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel53`
--

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Nulla et impedit totam voluptas aliquid maiores nisi.', 'Qui eum dolores voluptatem nesciunt non doloremque reiciendis. Assumenda voluptas culpa assumenda magnam. Aspernatur architecto natus incidunt aut unde odio. Dolores eum fugiat aut.', '2016-08-27 01:56:51', '2016-08-27 01:56:51'),
(2, 'Omnis ut fuga sed provident iure consequatur eveniet maiores.', 'Quibusdam est sequi amet ex et. Magni voluptate possimus voluptates doloribus tempora sunt. Harum harum quos corrupti est beatae excepturi saepe. Et quo aut a architecto adipisci.', '2016-08-27 01:56:52', '2016-08-27 01:56:52'),
(3, 'Est beatae voluptatem est totam.', 'Vel fugit beatae maxime enim voluptatem. Rerum accusamus velit eaque est illum. Amet non voluptas in non quia praesentium animi. Quod similique ut omnis consequatur et ut nihil.', '2016-08-27 01:56:52', '2016-08-27 01:56:52'),
(4, 'Aspernatur possimus rerum occaecati aut.', 'Consequatur totam laudantium voluptate qui adipisci ullam necessitatibus. Earum quia quidem aut omnis qui quaerat perspiciatis. Dolores enim commodi adipisci suscipit soluta dolor doloremque.', '2016-08-27 01:56:52', '2016-08-27 01:56:52'),
(5, 'Tempora assumenda voluptatum impedit quis quis.', 'Itaque voluptatibus voluptatem omnis quaerat. Numquam magni sunt delectus nemo sed provident et. Soluta quas sint corporis dolor id ad provident doloribus. Harum quod quo occaecati. Ex tempore quia quas et atque.', '2016-08-27 01:56:52', '2016-08-27 01:56:52'),
(6, 'Facere et vel temporibus quibusdam.', 'Sapiente eos sed quos quia. Saepe dolorem ipsam id sunt sit totam. Est tempore ipsa amet consequatur ut ut. Sed ut natus neque et expedita voluptatem aspernatur.', '2016-08-30 07:27:20', '2016-08-30 07:27:20'),
(7, 'Incidunt nesciunt dolores ut quos culpa.', 'Tempore qui et consequatur quas asperiores cumque. Accusamus et sint quaerat. Aut excepturi debitis nam in voluptatem praesentium.', '2016-08-30 07:27:20', '2016-08-30 07:27:20'),
(8, 'Rerum enim deleniti nisi tempora.', 'Quam expedita numquam qui cumque. Vel voluptatem deleniti est cumque quia. Optio voluptatum et vero repellat temporibus. Ad iusto tempore et a. Eligendi quas accusamus esse.', '2016-08-30 07:27:20', '2016-08-30 07:27:20'),
(9, 'Nostrum omnis quam ipsam in numquam voluptatem soluta.', 'Quae consequatur optio facilis architecto odit omnis ab. Optio at ea temporibus quidem. Nobis non aliquam dolorem quis et et possimus.', '2016-08-30 07:27:20', '2016-08-30 07:27:20'),
(10, 'Suscipit nostrum maxime ipsam aut.', 'Harum in reiciendis et voluptate. Rerum suscipit in sed maiores veniam non et.', '2016-08-30 07:27:21', '2016-08-30 07:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_27_034548_create_lessons_table', 2),
('2016_08_27_053117_create_notifications_table', 3),
('2016_08_30_092008_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2be5f907-8802-42d4-a5b7-8358930a9c8e', 'App\\Notifications\\SubscriptionCanceled', 1, 'App\\User', '{"subscription_ended":{"date":"2016-08-27 05:42:04.000000","timezone_type":3,"timezone":"UTC"}}', NULL, '2016-08-27 03:42:04', '2016-08-27 03:42:04'),
('d49f60c6-a72e-4db0-9d9b-097d06d35db6', 'App\\Notifications\\LessonUpdated', 1, 'App\\User', '{"id":1,"title":"Nulla et impedit totam voluptas aliquid maiores nisi.","description":"Qui eum dolores voluptatem nesciunt non doloremque reiciendis. Assumenda voluptas culpa assumenda magnam. Aspernatur architecto natus incidunt aut unde odio. Dolores eum fugiat aut.","created_at":"2016-08-27 03:56:51","updated_at":"2016-08-27 03:56:51"}', NULL, '2016-08-27 04:16:54', '2016-08-27 04:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Lorine Howe Sr.', 'boyd.wintheiser@example.com', '$2y$10$gpkI9cKnslnDc3uxgElDIenMq8JtNX.moKq3ditgSH9C51qyAPy5O', '4H1beNrPUY', '2016-08-26 07:16:47', '2016-08-26 07:16:47'),
(2, 'Fae Nitzsche', 'vbreitenberg@example.org', '$2y$10$gpkI9cKnslnDc3uxgElDIenMq8JtNX.moKq3ditgSH9C51qyAPy5O', 'MV6Djp51RT', '2016-08-26 07:16:47', '2016-08-26 07:16:47'),
(3, 'Mr. Justyn Leffler', 'klein.sienna@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'MmmGeoLoiv', '2016-08-26 13:22:14', '2016-08-26 13:22:14'),
(4, 'Rickey Ondricka', 'jbayer@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'cBAnjugl9l', '2016-08-26 13:22:14', '2016-08-26 13:22:14'),
(5, 'Duane Johnston', 'roderick.carroll@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'FFesaCAtSD', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(6, 'Deron Krajcik', 'wtrantow@example.net', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', '59CBMkIi82', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(7, 'Miss Norma Schoen', 'ebechtelar@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'impUGTMwDz', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(8, 'Alaina Barrows PhD', 'iwest@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'paif75QkYR', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(9, 'Prof. Friedrich Boyer', 'xwilderman@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'equSU8NCPj', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(10, 'Dr. Gregorio Zulauf', 'thiel.mable@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', '5jNW3G5C8g', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(11, 'Rosie Russel', 'efadel@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'NAeRZywG8E', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(12, 'Eldridge Koch', 'kira02@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'TikImY4sPA', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(13, 'Marcelo Weimann Sr.', 'wkihn@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'Z3EO9P1jpm', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(14, 'Dr. Mathilde Wiza', 'kkrajcik@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', '12wEjE5pjE', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(15, 'Prof. Lea Shanahan', 'howell.eliezer@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', '9IOy7nuufu', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(16, 'Dorothy Heaney Sr.', 'karlee.kautzer@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'NOQb7Cf35m', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(17, 'Dakota Quitzon', 'archibald38@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'vTgq31Bjrt', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(18, 'Lexus Krajcik', 'bo57@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', '64CCTUCOTC', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(19, 'Nelda Bashirian', 'margarita19@example.com', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'kh1f2rrYCS', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(20, 'Mr. Elroy Sporer IV', 'rhianna27@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'l0PU8zzsyE', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(21, 'Gayle Kub', 'zulauf.marcella@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'PwaLcwtjVf', '2016-08-26 13:22:15', '2016-08-26 13:22:15'),
(22, 'Durward Stehr', 'gluettgen@example.org', '$2y$10$xGkBmHXmJMkhUlsC6gZxH.0vfT0oPjn5QRnbpm3qfBbVz4JKW2BpG', 'e4KlPkr4xJ', '2016-08-26 13:22:15', '2016-08-26 13:22:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
