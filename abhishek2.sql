-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2022 at 09:42 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abhishek2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(23, 'FunScience12', '1668942819.webp', '2022-09-21 00:13:19', '2022-11-20 05:43:39'),
(24, 'Monuments', '1663739010.png', '2022-09-21 00:13:30', '2022-09-21 00:13:30'),
(25, 'Test Your Knowledge', '1663739025.png', '2022-09-21 00:13:45', '2022-09-21 00:13:45'),
(26, 'Vocabulary', '1663739051.png', '2022-09-21 00:14:11', '2022-09-21 00:14:11'),
(27, 'Check data', '1663739974.png', '2022-09-21 00:29:34', '2022-09-21 00:29:34'),
(29, 'Funny', '1665400161.png', '2022-10-10 05:39:21', '2022-10-10 05:39:21'),
(30, 'Testing', '1665413492.jpg', '2022-10-10 09:21:32', '2022-10-10 09:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featuredquestion`
--

CREATE TABLE `featuredquestion` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featuredquestion`
--

INSERT INTO `featuredquestion` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct`, `created_at`, `updated_at`) VALUES
(1, '111Nesciunt inventore totam qui et id harum molestiae sunt exercitationem.', '1ewfdwe', '1Volupta', '1Nam temporibus', '1Eius ea', 'C', '2022-11-25 02:44:04', '2022-11-25 04:09:00'),
(3, 'Anderson', 'Enim est voluptates quam nihil ut corporis.', 'Totam assumenda maxime vel nemo illum quia.', 'Consequatur eos ea.', 'Fuga dolores quasi.', 'C', '2022-11-25 02:55:43', '2022-11-25 02:55:43'),
(4, 'Friesen', 'Et nam animi et possimus aut mollitia quia dicta.', 'Minima saepe voluptatem unde.', 'Sint alias quia et nesciunt eos unde ut maxime ducimus.', 'Fuga et sed mollitia deleniti.', 'B', '2022-11-25 03:21:23', '2022-11-25 03:21:23'),
(5, 'Ut aperiam eaque voluptas distinctio quo.', 'Ut aperiam', 'Molestiae', 'Neque', 'Exercitati', 'B', '2022-11-25 03:27:58', '2022-11-25 03:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_19_060021_create_categories_table', 1),
(6, '2022_09_20_044346_create_quiz_table', 2),
(7, '2022_09_20_044653_create_quiz_table', 3),
(8, '2022_09_20_083035_create_ques_table', 4),
(9, '2022_09_22_050435_create_players_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `player_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `player_id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(185, 165, 3, 'Pending', '2022-11-17 10:15:36', '2022-11-17 11:39:27'),
(186, 166, 3, 'Pending', '2022-11-17 10:52:48', '2022-11-17 10:52:48'),
(187, 186, 7, 'Pending', '2022-11-23 06:29:34', '2022-11-23 06:29:34'),
(188, 184, 3, 'Pending', '2022-11-23 08:31:40', '2022-11-23 08:31:40'),
(189, 184, 10, 'Pending', '2022-11-23 08:31:49', '2022-11-23 08:31:49'),
(190, 228, 3, 'Pending', '2022-11-23 08:56:35', '2022-11-23 08:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playedquiz`
--

CREATE TABLE `playedquiz` (
  `id` bigint UNSIGNED NOT NULL,
  `player_id` bigint UNSIGNED NOT NULL,
  `quiz_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playedquiz`
--

INSERT INTO `playedquiz` (`id`, `player_id`, `quiz_id`, `created_at`, `updated_at`) VALUES
(120, 165, 17, '2022-11-17 10:15:25', '2022-11-17 10:15:25'),
(121, 164, 17, '2022-11-17 11:40:16', '2022-11-17 11:40:16'),
(122, 164, 18, '2022-11-20 08:09:26', '2022-11-20 08:09:26'),
(124, 164, 26, '2022-11-20 09:54:44', '2022-11-20 09:54:44'),
(125, 164, 25, '2022-11-20 09:54:51', '2022-11-20 09:54:51'),
(126, 186, 17, '2022-11-23 07:04:09', '2022-11-23 07:04:09'),
(127, 184, 17, '2022-11-23 08:31:34', '2022-11-23 08:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coins` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `email`, `profile_pic`, `phone_number`, `coins`, `created_at`, `updated_at`) VALUES
(164, 'Darshan Mistry', 'mistrydarshan445@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu08__7BRj-mnYDqibn7xgfQ0lITRBjzhAFN-Plq=s96-c', NULL, NULL, '2022-11-17 10:14:25', '2022-11-17 11:44:38'),
(165, 'Vivek patel', 'vivek.patel.yt75@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu20UAqRn3PVEdDhGcVafXyRuCzDHcLZA83JMUF0=s96-c', NULL, '70', '2022-11-17 10:15:17', '2022-11-17 10:15:36'),
(166, 'valo gaming', 'valogaming7519@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu2ncELLBh4W61A5y5sgCwqLlLrL05dWXai05_rm=s96-c', NULL, '140', '2022-11-17 10:52:35', '2022-11-23 07:00:41'),
(169, 'ravi jani', 'rjoza7519@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu1K2Dw7VubIvf9pjrJitX0Egss-a1biqbXFphOe=s96-c', NULL, '0', '2022-11-20 05:31:07', '2022-11-20 05:31:07'),
(174, 'warrior 7519', 'warriors7519@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu1d8LF10ANWoV9rJR7ZR3z4vKCenHOJZWRCjV-H=s96-c', NULL, '200', '2022-11-22 01:03:08', '2022-11-22 01:04:26'),
(184, 'Darshan Mistry', 'mistrydarshan222@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu3Mjlk_AqDE55ETMKKCSENihD2Z6BoyZdh9S3dmL88=s96-c', NULL, '3800', '2022-11-22 04:41:04', '2022-11-24 04:04:39'),
(186, 'John Hdkskxgf', 'johnthanwick534@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu3SBhzCVoHR5i9t-rj65Gc-qC9rQkzmv-8E67zf=s96-c', NULL, '98', '2022-11-22 04:42:19', '2022-11-23 07:04:10'),
(192, 'Jonas finn', 'jonasfinn420@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu1gXeRZgReydAUECuLIPZEYwVNl8yX-H7gqxk8Z=s96-c', NULL, '0', '2022-11-23 02:05:26', '2022-11-23 02:05:26'),
(207, 'theinfo hub', 'theinfohub7519@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu2V9E8y5ANEweWPkX8pksrFBxnoBrfWvutdSOMH=s96-c', NULL, '140', '2022-11-23 07:05:16', '2022-11-23 07:05:16'),
(218, NULL, NULL, NULL, NULL, '0', '2022-11-23 08:35:00', '2022-11-23 08:35:00'),
(219, NULL, NULL, NULL, NULL, '0', '2022-11-23 08:35:42', '2022-11-23 08:35:42'),
(220, NULL, NULL, NULL, NULL, '0', '2022-11-23 08:35:51', '2022-11-23 08:35:51'),
(221, NULL, NULL, NULL, NULL, '0', '2022-11-23 08:37:33', '2022-11-23 08:37:33'),
(222, NULL, NULL, NULL, NULL, '0', '2022-11-23 08:38:09', '2022-11-23 08:38:09'),
(223, NULL, NULL, NULL, NULL, '0', '2022-11-23 08:38:16', '2022-11-23 08:38:16'),
(228, 'jasmin patel', 'pateljas7519@gmail.com', 'https://lh3.googleusercontent.com/a/ALm5wu1eH9XzWzE1WjvTa0beA8GvMFli6DVBD3Mv2dIw=s96-c', NULL, '125', '2022-11-23 08:56:28', '2022-11-23 08:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coins` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `coins`, `created_at`, `updated_at`) VALUES
(3, 'GOLD CARD', '1667288768.png', 'Win Amazon Pay  Cash up to ₹ 10', 100, '2022-10-08 07:06:13', '2022-11-01 02:16:08'),
(4, 'PLATINUM CARD', '1667289078.png', 'Win Amazon Pay Cash up to ₹ 10', 1000, '2022-10-08 09:35:50', '2022-11-01 02:21:18'),
(7, 'Jameson Dibbert', '1668699976.jpg', 'Autem omnis aut', 92, '2022-11-17 10:16:16', '2022-11-17 10:40:43'),
(8, 'Elna Lynch', '1668700058.jpg', 'Officiis consequatur est.', 212, '2022-11-17 10:17:38', '2022-11-17 10:17:38'),
(9, 'Edmund Cummerata', '1668700476.png', 'Quis quia unde quis ut autem sint earum quis.', 557, '2022-11-17 10:24:36', '2022-11-17 10:24:36'),
(10, 'Jayda Renner', '1668700480.png', 'Consequuntur rerum explicabo fugiat veritatis temporibus asperiores excepturi facilis.', 428, '2022-11-17 10:24:40', '2022-11-17 10:24:40'),
(11, 'Myrtle Harris', '1668700488.png', 'Incidunt occaecati et distinctio et.', 107, '2022-11-17 10:24:48', '2022-11-17 10:24:48'),
(12, 'Eryn McClure', '1668702027.png', 'Ea nulla quibusdam quo dolores nostrum eligendi quam.', 650, '2022-11-17 10:50:27', '2022-11-17 10:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `ques`
--

CREATE TABLE `ques` (
  `id` bigint UNSIGNED NOT NULL,
  `que` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ques`
--

INSERT INTO `ques` (`id`, `que`, `option1`, `option2`, `option3`, `option4`, `correct`, `quiz_id`, `created_at`, `updated_at`) VALUES
(31, 'What will be the masculine form of the noun \'vixen\'?', 'Ant', 'Elephant', 'Fox', 'Lamb', 'C', 'Noun Pronoun', '2022-09-21 00:16:07', '2022-09-21 00:16:07'),
(32, 'Pick the odd one out', 'Venus', 'Earth', 'Neptune', 'Marsh', 'B', 'Noun Pronoun', '2022-09-21 00:16:54', '2022-09-21 00:16:54'),
(33, 'Which of the following is not a noun?', 'Quias', 'facing', 'Train', 'Horse', 'C', 'Noun Pronoun', '2022-09-21 00:17:12', '2022-09-21 00:17:12'),
(34, 'Identify the odd one out', 'Walk', 'Listen', 'jUmp', 'Swim', 'B', 'Noun Pronoun', '2022-09-21 00:17:31', '2022-09-21 00:17:31'),
(35, 'Who founded the Indian National Congress?', 'A.O Hume', 'Annie Besant', 'Gandhi', 'Rahul', 'B', 'History Maker', '2022-09-21 00:19:00', '2022-09-21 00:19:00'),
(36, 'Yogi Adityanath is serving as a Chief Minister of which state?', 'Goa', 'Gujrat', 'MP', 'UP', 'A', 'History Maker', '2022-09-21 00:19:14', '2022-11-25 03:15:02'),
(37, 'Who among these have never been the Prime minister of India?', 'Bajpayee', 'Mota BHai', 'Indira', 'Modi', 'A', 'History Maker', '2022-09-21 00:19:39', '2022-09-21 00:19:39'),
(38, 'Who is known as the \'Missile Man\' of India?', 'Adbul', 'Kalam', 'Manmohan', 'Amit Shah', 'A', 'History Maker', '2022-09-21 00:20:01', '2022-09-21 00:20:01'),
(39, 'Which of the following planets have no moons?', 'Earth', 'march', 'Venus', 'all', 'B', 'Fun Science  |  Space Exploration', '2022-09-21 00:21:36', '2022-09-21 00:21:36'),
(40, 'How many planets are there between the Earth and the Sun?', '1', '2', '5', '8', 'A', 'Fun Science  |  Space Exploration', '2022-09-21 00:21:49', '2022-09-21 00:21:49'),
(41, 'How many U.S astronauts have walked on the Moon?', '0', '12', '58', '32', 'A', 'Fun Science  |  Space Exploration', '2022-09-21 00:21:59', '2022-09-21 00:21:59'),
(42, 'Which planet lies in the outermost orbit of the solar system?', 'Saturn', 'mars', 'earth', 'all', 'A', 'Fun Science  |  Space Exploration', '2022-09-21 00:22:18', '2022-09-21 00:22:18'),
(43, 'Nihil sint ut voluptates nihil libero.', 'Excepturi', 'Nihil', 'Error o', 'Est pe', 'D', 'Funny', '2022-10-10 05:41:03', '2022-10-10 05:50:01'),
(44, 'Voluptatem autem dolor deleniti dolorem ipsa officiis voluptatum sed labore.', 'Et et dolorem.', 'Voluptatem', 'Neque', 'Saepe', 'D', 'Funny', '2022-10-10 05:42:08', '2022-10-10 05:50:12'),
(45, 'TorphyAliquam quis ea et eligendi laboriosam sed aut.', 'Facere expedita quibusdam.', 'dddd', 'Similique q', 'Ut optio', 'B', 'Funny', '2022-10-10 05:42:11', '2022-10-10 05:50:31'),
(46, 'Deserunt ut id ut amet dignissimos saepe sint officia mollitia.', '111', 'Consequatur', 'Reiciendis saepe neque.', 'Vero', 'B', 'Funny', '2022-10-10 05:42:16', '2022-10-10 05:50:45'),
(47, 'Autem dolor nobis ut hic occaecati non laboriosam numquam.', 'Fadel', 'Dolorum', 'Quia', 'Eligendi', 'C', 'Funny', '2022-10-10 05:42:20', '2022-10-10 05:51:03'),
(48, 'Quis omnis quia dolorum perspiciatis dolores.', 'Subway', 'Aspernatur', 'Porro', 'Sint', 'D', 'Janick Hackett', '2022-10-10 05:43:06', '2022-10-10 05:51:24'),
(49, 'Consequatur sit eos et perferendis incidunt harum fugiat vero.', 'Et reprehenderit', 'Ut iste enim', 'eos ducimus.', 'Quia architecto', 'D', 'Janick Hackett', '2022-10-10 05:43:09', '2022-10-10 05:57:04'),
(50, 'Perspiciatis consequatur delectus non expedita sint hic in.', 'Quaerat ut', 'molestiae est.', 'Minima aut', 'Optio', 'B', 'Janick Hackett', '2022-10-10 05:43:13', '2022-10-10 05:57:17'),
(51, 'Similique maxime consectetur similique ea corporis.', 'Veniam', 'Nemo rem', 'Minima', 'expedita', 'D', 'Janick Hackett', '2022-10-10 05:43:18', '2022-10-10 05:57:30'),
(52, 'Autem repudiandae hic aperiam fugiat.', 'quo', 'Voluptatem', 'Ipsa', 'Est mollitia', 'D', 'National', '2022-10-10 05:57:52', '2022-10-10 05:57:52'),
(53, 'Est aut incidunt maxime voluptatibus dolorem.', 'Voluptates', 'Illo', 'Eos', 'Haag', 'C', 'National', '2022-10-10 05:58:03', '2022-10-10 05:58:12'),
(54, 'reiciendis autem nisi vero architecto a saepe.', 'Perspiciatis', 'Et veniam', 'Odit eligendi', 'Est animi', 'D', 'National', '2022-10-10 05:58:24', '2022-10-10 05:58:24'),
(55, 'Quibusdam dignissimos magni quasi ea commodi.', 'Fadel', 'Iste cumqu', 'Totam ut', 'Dicta vel non.', 'C', 'National', '2022-10-10 05:58:34', '2022-10-10 05:58:34'),
(56, 'enim et consectetur sed pariatur facilis quia delectus.', 'DeckowAccusantium', 'Et ea quibusdam.', 'Voluptatibus', 'Dicta', 'D', 'History Maker', '2022-10-10 23:33:27', '2022-10-10 23:33:27'),
(57, 'Connelly magnam officia esse voluptatem saepe fugiat ut quia.', 'Aut', 'Dolores', 'Pariatur', 'Laudantium', 'C', 'Jillian Boehm', '2022-10-11 04:29:09', '2022-10-11 04:29:09'),
(58, 'Gerlach quia quia incidunt et eligendi dolores qui.', 'Reprehenderit placeat ut est.', 'Ut esse', 'Expedita', 'Animi', 'B', 'Jillian Boehm', '2022-10-11 04:29:46', '2022-10-11 04:29:46'),
(59, 'Voluptatibus perspiciatis quisquam sit ut quos dignissimos aut.', 'Aut c', 'Maiores', 'Quia ab', 'Voluptatibus', 'C', 'Fun Science', '2022-10-15 01:27:12', '2022-10-15 01:27:12'),
(60, 'Wiegand nostrum optio omnis voluptas dicta sed atque quidem.', 'Non a', 'Vitae', 'Blanditiis', 'Minima', 'B', 'Fun Science', '2022-10-15 01:27:28', '2022-10-15 01:27:28'),
(61, 'Turcotte Consectetur odio iste qui qui expedita occaecati numquam consequuntur.', 'Tempore', 'Debitis quia quas.', 'Sint in', 'unde', 'C', 'Testing', '2022-10-15 01:28:34', '2022-10-15 01:28:34'),
(62, 'Padberg Non sunt odio consequatur recusandae quis dolor voluptas.', 'Doloribus', 'Quasi', 'aliquam', 'Sint pr', 'B', 'Testing', '2022-10-15 01:28:47', '2022-10-15 01:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coins` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charges` int NOT NULL DEFAULT '100',
  `category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `image`, `instruction`, `coins`, `charges`, `category`, `created_at`, `updated_at`) VALUES
(17, 'History Maker', '1663739313.png', '* You\'ve got 90 - 150 seconds to answer all questions\r\n* Answer as many questions as you can\r\n* For Every Correct answer you will get +50 points and will loose -25 points on every Incorrect answer\r\n* You can take help by using the lifelines present in the contest.\r\n* Lifelines can be used for free or by using a given amount of coins for each lifeline.\r\n*** History Maker**', '100', 10, 'Food Brand', '2022-09-21 00:18:33', '2022-11-20 04:54:54'),
(18, 'Fun Science', '1663739471.jpg', '* You\'ve got 90 - 150 seconds to answer all questions\r\n* Answer as many questions as you can\r\n* For Every Correct answer you will get +50 points and will loose -25 points on every Incorrect answer\r\n* You can take help by using the lifelines present in the contest.\r\n* Lifelines can be used for free or by using a given amount of coins for each lifeline\r\n**Fun Science  |  Space-Exploration**', '100', 10, 'Fun Science', '2022-09-21 00:21:11', '2022-09-21 00:21:11'),
(23, 'National', '1665400062.jpg', '* You\'ve got 90 - 150 seconds to answer all questions\r\n* Answer as many questions as you can\r\n* For Every Correct answer you will get +50 points and will loose -25 points on every Incorrect answer\r\n* You can take help by using the lifelines present in the contest.\r\n* Lifelines can be used for free or by using a given amount of coins for each lifeline.', '100', 10, 'Monuments', '2022-10-10 05:37:42', '2022-10-10 05:37:42'),
(24, 'Funny', '1665400200.png', '* You\'ve got 90 - 150 seconds to answer all questions\r\n* Answer as many questions as you can\r\n* For Every Correct answer you will get +50 points and will loose -25 points on every Incorrect answer\r\n* You can take help by using the lifelines present in the contest.\r\n* Lifelines can be used for free or by using a given amount of coins for each lifeline.', '100', 10, 'Food Brand', '2022-10-10 05:40:00', '2022-10-10 05:40:00'),
(25, 'Janick Hackett', '1665400373.jpg', '* You\'ve got 90 - 150 seconds to answer all questions\r\n* Answer as many questions as you can\r\n* For Every Correct answer you will get +50 points and will loose -25 points on every Incorrect answer\r\n* You can take help by using the lifelines present in the contest.\r\n* Lifelines can be used for free or by using a given amount of coins for each lifeline. ***', '500', 50, 'Vocabulary', '2022-10-10 05:42:53', '2022-10-10 05:42:53'),
(26, 'Testing', '1665413473.jpg', '* You\'ve got 90 - 150 seconds to answer all questions\r\n* Answer as many questions as you can\r\n* For Every Correct answer you will get +50 points and will loose -25 points on every Incorrect answer\r\n* You can take help by using the lifelines present in the contest.\r\n* Lifelines can be used for free or by using a given amount of coins for each lifeline. *** * Testing', '500', 50, 'Check data', '2022-10-10 09:21:13', '2022-10-10 09:21:13'),
(27, 'Jillian Boehm', '1665482327.jpg', '* You\'ve got 90 - 150 seconds to answer all questions\r\n* Answer as many questions as you can\r\n* For Every Correct answer you will get +50 points and will loose -25 points on every Incorrect answer\r\n* You can take help by using the lifelines present in the contest.\r\n* Lifelines can be used for free or by using a given amount of coins for each lifeline.\r\n*** History Maker**', '100', 50, 'Check data', '2022-10-11 04:28:47', '2022-10-11 04:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favicon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metakeywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaogdescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headerScript` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footerScript` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `publisherid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Firstpageinstructions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LoginPageinstructions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quizrules` text COLLATE utf8mb4_unicode_ci,
  `privacypolicy` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `metadescription`, `metakeywords`, `metaogdescription`, `headerScript`, `footerScript`, `publisherid`, `Firstpageinstructions`, `LoginPageinstructions`, `quizrules`, `privacypolicy`, `created_at`, `updated_at`) VALUES
(1, '1668945176.png', '16685308611668530861.png', 'Play and win111', 'Superbquiz, earn coins', 'Superbquiz,Play and win', 'Superbquiz, earn coins', '<p>demo</p>', '<p>demo</p>', 'ca-pub-2839576897921974', '**Play Quiz and Win Coins!**\r\n* Play Quizzes in 25+ categories like GK, Sports, Bollywood, Business, Cricket & more!\r\n* Compete with lakhs of other players!\r\n* Win coins for every game\r\n* Trusted by millions of other quiz enthusiasts like YOU!', '**Play Quiz and Win Coins!**\r\n* Play Quizzes in 25+ categories like GK, Sports, Bollywood, Business, Cricket & more!\r\n* Compete with lakhs of other players!\r\n* Win coins for every game\r\n* Trusted by millions of other quiz enthusiasts like YOU!', '**Play Quiz and Win Coins!**\r\n* Play Quizzes in 25+ categories like GK, Sports, Bollywood, Business, Cricket & more!\r\n* Compete with lakhs of other players!\r\n* Win coins for every game\r\n* Trusted by millions of other quiz enthusiasts like YOU!', '**contact-us**\r\n* Play Quizzes in 25+ categories like GK, Sports, Bollywood, Business, Cricket & more!\r\n* Compete with lakhs of other players!\r\n* Win coins for every game\r\n* Trusted by millions of other quiz enthusiasts like YOU!', NULL, '2022-11-20 06:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Goyette, Schuster and Jacobson', 'iam@darshanmistry.in', NULL, '$2y$10$VxkfVz0bZY5zGzHPiOPreOXTcobZfse1hUuNfb5n.cV9VPODKq3j.', NULL, '2022-09-29 23:21:43', '2022-11-17 11:28:04'),
(2, 'Ratke - Morar', 'n.ick.bh.a.i.s.mi.th@gmail.com', NULL, '$2y$10$E8t69DE3uw1i5Cxo4F2wSeQqt6rjk9o4UwljY08qMnjtbmvPEKNeC', NULL, '2022-09-29 23:22:04', '2022-09-29 23:22:04'),
(3, 'Hagenes Inc', 'ni.c.k.b.h.aism.it.h@gmail.com', NULL, '$2y$10$fHdCxKgfo2IlW24mAIKHVengF/l7Gw2r867R.6BsCDOlvMOxf7fPy', NULL, '2022-09-29 23:24:18', '2022-09-29 23:24:18'),
(4, 'Orn, Kutch and Conn', 'nic.kb.ha.is.mi.th@gmail.com', NULL, '$2y$10$7treMCLKUw8Vtotjz.oOB.m4SXmKZo8R3IGjWJtOVlJvQdEwiGrdi', NULL, '2022-09-29 23:25:05', '2022-09-29 23:25:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featuredquestion`
--
ALTER TABLE `featuredquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_id` (`player_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `playedquiz`
--
ALTER TABLE `playedquiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playedquiz_quiz_id_foreign` (`quiz_id`),
  ADD KEY `playedquiz_player_id_foreign` (`player_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ques`
--
ALTER TABLE `ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `featuredquestion`
--
ALTER TABLE `featuredquestion`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `playedquiz`
--
ALTER TABLE `playedquiz`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ques`
--
ALTER TABLE `ques`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `players_id` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `playedquiz`
--
ALTER TABLE `playedquiz`
  ADD CONSTRAINT `playedquiz_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `playedquiz_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
