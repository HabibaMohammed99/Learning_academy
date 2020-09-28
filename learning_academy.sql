-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 01:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Habiba Muhammad', 'habiba@outlook.com', '$2y$10$hUPAketLTFdfUUAdyd1YSeR1OQJ5EuQh6Bg6zw3OWkKpdZLZYwI7G', '2020-09-27 16:49:48', '2020-09-27 16:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'programming', '2020-09-26 17:52:50', '2020-09-26 17:52:50'),
(2, 'medical', '2020-09-26 17:53:34', '2020-09-26 17:53:34'),
(3, 'english', '2020-09-26 17:54:08', '2020-09-26 17:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cat_id`, `trainer_id`, `name`, `small_desc`, `desc`, `price`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'course num 1 cat num 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 3424, '11.png', '2020-09-26 18:54:39', '2020-09-26 18:54:39'),
(2, 1, 4, 'course num 2 cat num 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 3399, '12.png', '2020-09-26 18:54:39', '2020-09-26 18:54:39'),
(3, 1, 4, 'course num 3 cat num 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 3130, '13.png', '2020-09-26 18:54:39', '2020-09-26 18:54:39'),
(4, 1, 3, 'course num 4 cat num 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 3336, '14.png', '2020-09-26 18:54:39', '2020-09-26 18:54:39'),
(5, 1, 2, 'course num 5 cat num 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 3425, '15.png', '2020-09-26 18:54:39', '2020-09-26 18:54:39'),
(6, 1, 3, 'course num 6 cat num 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 1858, '16.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(7, 2, 4, 'course num 1 cat num 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 4381, '21.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(8, 2, 4, 'course num 2 cat num 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 3989, '22.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(9, 2, 1, 'course num 3 cat num 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 1154, '23.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(10, 2, 3, 'course num 4 cat num 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 2760, '24.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(11, 2, 5, 'course num 5 cat num 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 1413, '25.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(12, 2, 4, 'course num 6 cat num 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 1616, '26.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(13, 3, 1, 'course num 1 cat num 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 2654, '31.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(14, 3, 1, 'course num 2 cat num 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 4820, '32.png', '2020-09-26 18:54:40', '2020-09-26 18:54:40'),
(15, 3, 5, 'course num 3 cat num 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 2063, '33.png', '2020-09-26 18:54:41', '2020-09-26 18:54:41'),
(16, 3, 1, 'course num 4 cat num 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 4435, '34.png', '2020-09-26 18:54:41', '2020-09-26 18:54:41'),
(17, 3, 4, 'course num 5 cat num 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor', 4028, '35.png', '2020-09-26 18:54:41', '2020-09-26 18:54:41'),
(18, 1, 1, 'course num 6 cat num 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', 'value=\"Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor\"', 1195, '36.png', '2020-09-26 18:54:41', '2020-09-28 17:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approve','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 49, 'pending', '2020-09-26 19:50:26', '2020-09-26 19:50:26'),
(2, 12, 38, 'pending', '2020-09-26 19:50:26', '2020-09-26 19:50:26'),
(3, 12, 38, 'pending', '2020-09-26 19:50:27', '2020-09-26 19:50:27'),
(4, 18, 4, 'pending', '2020-09-26 19:50:27', '2020-09-26 19:50:27'),
(5, 9, 24, 'pending', '2020-09-26 19:50:27', '2020-09-26 19:50:27'),
(6, 3, 39, 'pending', '2020-09-26 19:50:27', '2020-09-26 19:50:27'),
(7, 8, 17, 'pending', '2020-09-26 19:50:27', '2020-09-26 19:50:27'),
(8, 6, 38, 'pending', '2020-09-26 19:50:27', '2020-09-26 19:50:27'),
(9, 7, 27, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(10, 4, 7, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(11, 15, 18, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(12, 18, 32, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(13, 7, 20, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(14, 8, 44, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(15, 12, 30, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(16, 14, 24, 'pending', '2020-09-26 19:50:28', '2020-09-26 19:50:28'),
(17, 18, 37, 'pending', '2020-09-26 19:50:29', '2020-09-26 19:50:29'),
(18, 17, 40, 'pending', '2020-09-26 19:50:29', '2020-09-26 19:50:29'),
(19, 5, 13, 'pending', '2020-09-26 19:50:29', '2020-09-26 19:50:29'),
(20, 17, 4, 'pending', '2020-09-26 19:50:29', '2020-09-26 19:50:29'),
(21, 3, 51, 'reject', '2020-09-27 14:30:07', '2020-09-27 14:30:07'),
(22, 3, 51, 'reject', '2020-09-28 18:08:33', '2020-09-28 18:08:33'),
(23, 8, 51, 'approve', '2020-09-28 18:16:22', '2020-09-28 18:16:22'),
(24, 2, 51, 'approve', NULL, NULL),
(25, 11, 51, 'reject', NULL, NULL),
(26, 7, 3, 'approve', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Habiba Mohammed', 'habiba_mohammed99@outlook.com', NULL, 'this is new message', '2020-09-27 13:38:12', '2020-09-27 13:38:12'),
(2, 'fatma saad', 'fatma_saad@outlook.com', 'this is new subject 2', 'this is new message 2', '2020-09-27 13:39:37', '2020-09-27 13:39:37');

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
(1, '2020_09_26_165637_create_cats_table', 1),
(2, '2020_09_26_165722_create_trainers_table', 1),
(3, '2020_09_26_165726_create_courses_table', 1),
(4, '2020_09_26_165819_create_students_table', 1),
(5, '2020_09_26_165838_create_admins_table', 1),
(8, '2020_09_26_173441_create_course_student_table', 2),
(9, '2020_09_26_230407_create_tests_table', 3),
(10, '2020_09_27_032513_create_settings_table', 4),
(11, '2020_09_27_125137_create_site_contents_table', 5),
(12, '2020_09_27_142623_create_news_letters_table', 6),
(13, '2020_09_27_142818_create_messages_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_letters`
--

INSERT INTO `news_letters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'habiba_mohammed99@outlook.com', '2020-09-27 13:11:09', '2020-09-27 13:11:09'),
(2, 'habiba_mohammed99@outlook.com', '2020-09-27 13:11:17', '2020-09-27 13:11:17'),
(3, 'habiba_mohammed99@outlook.com', '2020-09-27 13:11:27', '2020-09-27 13:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `city`, `address`, `phone`, `work_hours`, `email`, `map`, `fb`, `twitter`, `insta`, `created_at`, `updated_at`) VALUES
(1, 'learning academy', 'logo.png', 'favicon.png', 'Cairo Egypt', '50 naserCity', '01048808375', 'Sun to Thuras\r\n10am to 6pm', 'contact@learningacademy.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d13689.572467274867!2d31.7081343!3d30.9315834!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1601179277853!5m2!1sen!2seg\" width=\"1000\" height=\"400\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'banner', '{\"title\":\"EVERY CHILD YEARNS TO LEARN\",\"subtitle\":\"Making Your Childs World Better\",\"desc\":\"Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales his void unto last session for bite. Set have great you\'ll male grass yielding yielding man\"}', '2020-09-27 11:03:16', '2020-09-27 11:03:16'),
(2, 'course', '{\"title\":\"Awesome Feature\",\"desc\":\"Set have great you male grass yielding an yielding first their you\'re have called the abundantly fruit were man\"}', '2020-09-27 11:24:50', '2020-09-27 11:24:50'),
(3, 'qualified', '{\"title\":\"Qualified Trainers\",\"desc\":\"Set have great you male grass yielding an yielding first their you\'re have called the abundantly fruit were man\"}', '2020-09-27 11:24:50', '2020-09-27 11:24:50'),
(4, 'oppurtunity', '{\"title\":\"Job Oppurtunity\",\"desc\":\"Set have great you male grass yielding an yielding first their you\'re have called the abundantly fruit were man\"}', '2020-09-27 11:24:50', '2020-09-27 11:24:50'),
(5, 'better', '{\"title\":\"Better Future\",\"desc\":\"Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male\"}', '2020-09-27 11:24:50', '2020-09-27 11:24:50'),
(6, 'popularcourses', '{\"title\":\"POPULAR COURSES\",\"subtitle\":\"Special Courses\"}', '2020-09-27 11:44:05', '2020-09-27 11:44:05'),
(7, 'test', '{\"title\":\"TESIMONIALS\",\"subtitle\":\" Happy Students\"}', '2020-09-27 11:44:05', '2020-09-27 11:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `spec`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Bernadette Kassulke V', 'grant.kurt@kirlin.com', NULL, '2020-09-26 19:21:55', '2020-09-26 19:21:55'),
(2, 'Kenny Jakubowski', 'cody.glover@shields.org', NULL, '2020-09-26 19:21:55', '2020-09-26 19:21:55'),
(3, 'Prof. Vicenta Marvin', 'ondricka.kaitlyn@hotmail.com', NULL, '2020-09-26 19:21:55', '2020-09-26 19:21:55'),
(4, 'Winnifred Effertz PhD', 'vidal.windler@hotmail.com', NULL, '2020-09-26 19:21:56', '2020-09-26 19:21:56'),
(5, 'Jedediah Auer', 'zlowe@crona.info', NULL, '2020-09-26 19:21:56', '2020-09-26 19:21:56'),
(6, 'Prof. Carleton Pollich I', 'kutch.gerhard@gmail.com', NULL, '2020-09-26 19:21:56', '2020-09-26 19:21:56'),
(7, 'Torrance Reynolds', 'wterry@hotmail.com', NULL, '2020-09-26 19:21:56', '2020-09-26 19:21:56'),
(8, 'Felix Ratke', 'vhintz@gmail.com', NULL, '2020-09-26 19:21:56', '2020-09-26 19:21:56'),
(9, 'Hank Harber', 'abdiel77@cronin.net', NULL, '2020-09-26 19:21:56', '2020-09-26 19:21:56'),
(10, 'Prof. Jerrell Padberg V', 'ynolan@yahoo.com', NULL, '2020-09-26 19:21:56', '2020-09-26 19:21:56'),
(11, 'Esmeralda Muller Sr.', 'lera51@senger.com', NULL, '2020-09-26 19:33:02', '2020-09-26 19:33:02'),
(12, 'Elmo Kihn DDS', 'wdonnelly@yahoo.com', NULL, '2020-09-26 19:33:02', '2020-09-26 19:33:02'),
(13, 'Ardella Hermann', 'abbey.walsh@hotmail.com', NULL, '2020-09-26 19:33:02', '2020-09-26 19:33:02'),
(14, 'Darwin Cormier', 'dalton.ferry@gmail.com', NULL, '2020-09-26 19:33:03', '2020-09-26 19:33:03'),
(15, 'Jonatan Murazik II', 'stracke.giuseppe@hotmail.com', NULL, '2020-09-26 19:33:03', '2020-09-26 19:33:03'),
(16, 'Mr. Jerrold Morissette I', 'flavio.feest@herman.com', NULL, '2020-09-26 19:33:03', '2020-09-26 19:33:03'),
(17, 'Jeanne Kuhn', 'annalise70@fisher.com', NULL, '2020-09-26 19:33:03', '2020-09-26 19:33:03'),
(18, 'Hubert Lakin', 'sawayn.eladio@yahoo.com', NULL, '2020-09-26 19:33:03', '2020-09-26 19:33:03'),
(19, 'Mr. Gillian Bergnaum PhD', 'cwatsica@reinger.net', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(20, 'Shawn Murphy', 'harvey.marvin@prosacco.com', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(21, 'Dr. Kelsi Harvey', 'ledner.haleigh@klocko.com', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(22, 'Violette O\'Keefe', 'eernser@yahoo.com', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(23, 'Vincenzo Kessler', 'anahi.gleason@hotmail.com', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(24, 'Miss Idella Feest MD', 'okon.meta@armstrong.com', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(25, 'Mr. Richmond Schuppe', 'jackson.quitzon@kilback.biz', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(26, 'Elwin Koepp', 'dooley.oda@mayert.org', NULL, '2020-09-26 19:33:04', '2020-09-26 19:33:04'),
(27, 'Miss Eliza Kuhn IV', 'walsh.verlie@yahoo.com', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(28, 'Arielle Jakubowski', 'tressa.roberts@johns.com', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(29, 'Prof. Crystal Lind MD', 'katherine.powlowski@hane.biz', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(30, 'Nya Hickle', 'demond.berge@yahoo.com', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(31, 'Bart Boehm', 'kohler.eudora@rutherford.com', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(32, 'Boris Berge PhD', 'laurel.rohan@gmail.com', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(33, 'Adolf Marks', 'lillian12@hartmann.com', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(34, 'Lionel Langosh', 'veda.lemke@gmail.com', NULL, '2020-09-26 19:33:05', '2020-09-26 19:33:05'),
(35, 'Tremaine Hamill II', 'tremblay.blaise@yahoo.com', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(36, 'Leopold Brekke', 'pfranecki@hotmail.com', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(37, 'Mrs. Alanis Schmidt I', 'evan.renner@hotmail.com', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(38, 'Amani Hirthe PhD', 'konopelski.frederik@hotmail.com', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(39, 'Hal Cummings', 'koss.eulah@kling.biz', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(40, 'Mr. Elian Langworth MD', 'ardith.rempel@yahoo.com', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(41, 'Sydney Botsford', 'rveum@stiedemann.info', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(42, 'Miss Ozella Padberg', 'adriel47@hotmail.com', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(43, 'Watson Koepp', 'madeline.kassulke@gmail.com', NULL, '2020-09-26 19:33:06', '2020-09-26 19:33:06'),
(44, 'Dayana Goodwin', 'retta84@yahoo.com', NULL, '2020-09-26 19:33:07', '2020-09-26 19:33:07'),
(45, 'Prof. Krystal Kassulke', 'corwin.maria@hotmail.com', NULL, '2020-09-26 19:33:07', '2020-09-26 19:33:07'),
(46, 'Margarete Prosacco', 'raven37@koss.com', NULL, '2020-09-26 19:33:07', '2020-09-26 19:33:07'),
(47, 'Esta Koepp', 'swift.vivianne@beahan.com', NULL, '2020-09-26 19:33:07', '2020-09-26 19:33:07'),
(48, 'Junius Steuber', 'kyra70@kub.com', NULL, '2020-09-26 19:33:07', '2020-09-26 19:33:07'),
(49, 'Brayan Mueller', 'ggrant@schimmel.com', NULL, '2020-09-26 19:33:07', '2020-09-26 19:33:07'),
(50, 'Jonathan Hamill', 'marilou42@will.com', NULL, '2020-09-26 19:33:07', '2020-09-26 19:33:07'),
(51, 'Habiba', 'habiba_mohammed99@outlook.com', 'medicin', '2020-09-27 14:30:07', '2020-09-28 18:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `spec`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Kenny Jakubowski', 'frontEnd Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', '1.png', '2020-09-26 21:15:26', '2020-09-26 21:15:26'),
(2, 'Torrance Reynolds', 'backend Devloper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', '2.png', '2020-09-26 21:15:26', '2020-09-26 21:15:26'),
(3, 'Hank Harber', 'designer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus', '3.png', '2020-09-26 21:15:26', '2020-09-26 21:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `phone`, `spec`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Habiba Muhammad', NULL, 'web development', '1.png', '2020-09-26 18:07:29', '2020-09-26 18:07:29'),
(2, 'Fatma Saad', NULL, 'programming', '2.png', '2020-09-26 18:07:29', '2020-09-26 18:07:29'),
(3, 'Aya Mamdouh', '011445837', 'english', '3.png', '2020-09-26 18:07:30', '2020-09-26 18:07:30'),
(4, 'Ahmed Ali', NULL, 'doctor', '4.png', '2020-09-26 18:07:30', '2020-09-26 18:07:30'),
(5, 'Muhammad Ahmed', '01023010438', 'web design', '5.png', '2020-09-26 18:07:30', '2020-09-26 18:07:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_cat_id_foreign` (`cat_id`),
  ADD KEY `courses_trainer_id_foreign` (`trainer_id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

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
-- Indexes for table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`),
  ADD CONSTRAINT `courses_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
