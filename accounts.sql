-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 03:05 PM
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
-- Database: `accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id_code`, `user_id`, `code`, `created_at`, `expiration`) VALUES
(32, 0, 'qm3t5u', '2021-04-28 16:20:20', '2021-04-28 16:25:20'),
(33, 0, 'zjphx2', '2021-05-11 20:13:39', '2021-05-11 20:18:39'),
(34, 0, 'v824qr', '2021-05-11 20:26:56', '2021-05-11 20:31:56'),
(35, 0, 'v9x8no', '2021-05-11 20:46:45', '2021-05-11 20:51:45'),
(36, 0, 'qscdu8', '2021-05-11 21:03:17', '2021-05-11 21:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `username`, `event`, `date_time`) VALUES
(65, 'ADMIN', 'Login', '2021-05-11 20:25:54'),
(66, 'ADMIN', 'Logout', '2021-05-11 20:30:04'),
(67, 'ADMIN', 'Change Password', '2021-05-11 20:34:06'),
(68, 'ADMIN', 'Login', '2021-05-11 20:34:58'),
(69, 'ADMIN', 'Login', '2021-05-11 20:46:37'),
(70, 'ADMIN', 'Logout', '2021-05-11 20:47:08'),
(71, 'ADMIN', 'Change Password', '2021-05-11 20:48:18'),
(72, 'ADMIN', 'Login', '2021-05-11 20:48:47'),
(73, 'ADMIN', 'Login', '2021-05-11 20:49:45'),
(74, 'ADMIN', 'Logout', '2021-05-11 20:50:06'),
(75, 'ADMIN', 'Change Password', '2021-05-11 20:50:44'),
(76, 'ADMIN', 'Login', '2021-05-11 21:03:14'),
(77, 'ADMIN', 'Logout', '2021-05-11 21:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `question`, `answer`) VALUES
(1, 'ADMIN', '6bfc500738d8e9d168cd0a2024c94f5a', '2021-03-21 14:07:36', 'Who is your first Pet?', 'Jaco'),
(2, 'ADMIN2', '93d9398ce7e599f9088c4d90fbc3560e', '2021-04-28 02:45:30', 'What is your childhood nickname?', 'PJ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
