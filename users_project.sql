-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2018 at 12:16 AM
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
-- Database: `users_project`
--
CREATE DATABASE IF NOT EXISTS `users_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `users_project`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2018_08_23_004758_add_role_to_users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `username`) VALUES
(1, 'MohammadAltal', 'eng.hamodaaltal@gmail.com', '$2y$10$ssy05TsucWEfsksg07goleMWbcUl4o523ndU3afedEL7/FT3XKjxK', 'QGpPhilHouz7WnmtMJrP8cyduqvf2QDfQQ6pcIEE8x3S1z4WXnC5mbhwZrB4', '2018-08-22 08:00:31', '2018-08-23 17:54:20', 1, 'mohammad'),
(2, 'AhmadDoghoz', 'ahmad@gmail.com', '$2y$10$FDKWL3bpgM8jHHshfUykIu7llnt9hdoz65YmudXr6u0tVrNAq/BIW', '0M3I8ZtMLDulBuFzsnrjgqsopURvCLq52qa5NI1vaTR4lIuUYijlRwNuN16B', '2018-08-23 08:42:09', '2018-08-23 10:00:55', 3, ''),
(3, 'Tom', 'tom@gmail.com', '$2y$10$vhxBSWtTKDfB69vVPzCwFOO6rt6tjv6DoPvhOyLcJddWbbZImF24O', NULL, '2018-08-23 10:21:49', '2018-08-23 10:21:49', 3, ''),
(4, 'New', 'new@gmail.com', '$2y$10$o9iZsVWc1/35vcEFXMt5qOf8V5Cq4Gm65yDbP7nD2JPfJ5XIAjSl2', 'LaUhqemKpKfKmz5NqsjEpjrfUL3KZ7ATtsS8DQQsJMtWMwASTmevRpAIzAEd', '2018-08-23 17:55:04', '2018-08-23 17:56:16', 3, 'new');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
