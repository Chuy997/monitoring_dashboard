-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2024 at 11:58 PM
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
-- Database: `monitor_humedad_temperatura`
--

-- --------------------------------------------------------

--
-- Table structure for table `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `humedad` float DEFAULT NULL,
  `temperatura` float DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datos`
--

INSERT INTO `datos` (`id`, `humedad`, `temperatura`, `timestamp`) VALUES
(1, 46, 30.6, '2024-07-16 18:18:51'),
(2, 50, 25, '2024-07-16 18:19:10'),
(3, 46.1, 30.8, '2024-07-16 18:19:51'),
(4, 46.8, 30.8, '2024-07-16 18:20:51'),
(5, 46.2, 30.8, '2024-07-16 18:21:51'),
(6, 46.2, 30.8, '2024-07-16 18:22:51'),
(7, 46.1, 30.7, '2024-07-16 18:23:51'),
(8, 46, 30.6, '2024-07-16 18:24:51'),
(9, 46.2, 30.5, '2024-07-16 18:25:51'),
(10, 45.9, 30.5, '2024-07-16 18:26:51'),
(11, 46.5, 30.5, '2024-07-16 18:27:51'),
(12, 46.2, 30.6, '2024-07-16 18:28:51'),
(13, 46.7, 30.5, '2024-07-16 18:29:51'),
(14, 46.2, 30.6, '2024-07-16 18:30:51'),
(15, 46.2, 30.6, '2024-07-16 18:31:52'),
(16, 46.7, 30.6, '2024-07-16 18:32:52'),
(17, 46.8, 30.6, '2024-07-16 18:33:52'),
(18, 46.8, 30.5, '2024-07-16 18:34:52'),
(19, 46.9, 30.6, '2024-07-16 18:35:52'),
(20, 47.5, 30.7, '2024-07-16 18:36:52'),
(21, 46.9, 30.7, '2024-07-16 18:37:54'),
(22, 47.2, 30.8, '2024-07-16 18:38:54'),
(23, 46.5, 30.7, '2024-07-16 18:39:54'),
(24, 46.7, 30.7, '2024-07-16 18:40:54'),
(25, 46.8, 30.8, '2024-07-16 18:41:54'),
(26, 46.8, 30.8, '2024-07-16 18:42:54'),
(27, 47.5, 30.7, '2024-07-16 18:43:54'),
(28, 46.9, 30.7, '2024-07-16 18:44:54'),
(29, 47.3, 30.6, '2024-07-16 18:45:54'),
(30, 47, 30.6, '2024-07-16 18:46:54'),
(31, 46.9, 30.7, '2024-07-16 18:47:54'),
(32, 47, 30.7, '2024-07-16 18:48:54'),
(33, 47.3, 30.8, '2024-07-16 18:49:54'),
(34, 46.8, 30.7, '2024-07-16 18:50:54'),
(35, 46.9, 30.7, '2024-07-16 18:51:54'),
(36, 46.9, 30.6, '2024-07-16 18:52:54'),
(37, 46.9, 30.6, '2024-07-16 18:53:54'),
(38, 46.9, 30.6, '2024-07-16 18:54:54'),
(39, 46.9, 30.7, '2024-07-16 18:55:55'),
(40, 46.8, 30.7, '2024-07-16 18:56:55'),
(41, 46.8, 30.8, '2024-07-16 18:57:55'),
(42, 46.8, 30.8, '2024-07-16 18:58:55'),
(43, 46.9, 30.8, '2024-07-16 18:59:55'),
(44, 46.9, 30.9, '2024-07-16 19:00:55'),
(45, 46.6, 30.9, '2024-07-16 19:01:55'),
(46, 46.6, 30.9, '2024-07-16 19:02:55'),
(47, 46.5, 30.9, '2024-07-16 19:03:55'),
(48, 46.8, 31, '2024-07-16 19:04:55'),
(49, 46.3, 31, '2024-07-16 19:05:55'),
(50, 46.4, 30.9, '2024-07-16 19:06:55'),
(51, 46.6, 31, '2024-07-16 19:07:55'),
(52, 46.5, 31, '2024-07-16 19:08:55'),
(53, 46.5, 30.9, '2024-07-16 19:09:55'),
(54, 46.7, 30.9, '2024-07-16 19:10:55'),
(55, 46.6, 30.9, '2024-07-16 19:11:55'),
(56, 46.6, 30.9, '2024-07-16 19:12:55'),
(57, 46.4, 30.9, '2024-07-16 19:13:56'),
(58, 46.4, 30.9, '2024-07-16 19:14:56'),
(59, 46.4, 30.9, '2024-07-16 19:15:56'),
(60, 46.4, 30.9, '2024-07-16 19:16:56'),
(61, 47, 30.9, '2024-07-16 19:17:56'),
(62, 46.9, 30.8, '2024-07-16 19:18:56'),
(63, 46.9, 30.8, '2024-07-16 19:19:56'),
(64, 47.2, 30.7, '2024-07-16 19:20:56'),
(65, 47.1, 30.7, '2024-07-16 19:21:56'),
(66, 47.4, 30.7, '2024-07-16 19:22:56'),
(67, 47.2, 30.7, '2024-07-16 19:23:56'),
(68, 47.3, 30.7, '2024-07-16 19:24:56'),
(69, 47.4, 30.7, '2024-07-16 19:25:56'),
(70, 47.6, 30.7, '2024-07-16 19:26:56'),
(71, 47.4, 30.7, '2024-07-16 19:27:56'),
(72, 47.6, 30.6, '2024-07-16 19:28:56'),
(73, 47.8, 30.6, '2024-07-16 19:29:56'),
(74, 47.8, 30.6, '2024-07-16 19:30:56'),
(75, 47.8, 30.6, '2024-07-16 19:31:57'),
(76, 48, 30.6, '2024-07-16 19:32:57'),
(77, 47.7, 30.6, '2024-07-16 19:33:57'),
(78, 47.5, 30.7, '2024-07-16 19:34:57'),
(79, 47.9, 30.7, '2024-07-16 19:35:58'),
(80, 47.6, 30.7, '2024-07-16 19:36:58'),
(81, 47.3, 30.7, '2024-07-16 19:38:00'),
(82, 47.4, 30.7, '2024-07-16 19:39:00'),
(83, 47.5, 30.7, '2024-07-16 19:40:00'),
(84, 47.5, 30.7, '2024-07-16 19:41:00'),
(85, 47.7, 30.6, '2024-07-16 19:42:00'),
(86, 47.8, 30.6, '2024-07-16 19:43:00'),
(87, 47.9, 30.6, '2024-07-16 19:44:00'),
(88, 47.9, 30.6, '2024-07-16 19:45:00'),
(89, 47.7, 30.7, '2024-07-16 19:46:00'),
(90, 47.2, 30.7, '2024-07-16 19:47:00'),
(91, 47.4, 30.7, '2024-07-16 19:48:00'),
(92, 47.2, 30.8, '2024-07-16 19:49:00'),
(93, 47.2, 30.7, '2024-07-16 19:50:01'),
(94, 47.4, 30.8, '2024-07-16 19:52:06'),
(95, 47.2, 30.9, '2024-07-16 19:53:06'),
(96, 47, 30.9, '2024-07-16 19:54:06'),
(97, 46.8, 31, '2024-07-16 19:55:06'),
(98, 46.8, 30.9, '2024-07-16 19:56:06'),
(99, 47.3, 30.9, '2024-07-16 19:57:06'),
(100, 46.9, 31, '2024-07-16 19:58:06'),
(101, 46.9, 31, '2024-07-16 19:59:07'),
(102, 46.6, 31.2, '2024-07-16 20:01:12'),
(103, 46.7, 31.2, '2024-07-16 20:02:12'),
(104, 48.1, 31.2, '2024-07-16 20:03:12'),
(105, 47.4, 31.3, '2024-07-16 20:04:12'),
(106, 47.2, 31.4, '2024-07-16 20:05:15'),
(107, 46.4, 31.4, '2024-07-16 20:06:15'),
(108, 47, 31.4, '2024-07-16 20:07:15'),
(109, 46.6, 31.4, '2024-07-16 20:08:15'),
(110, 46.6, 31.4, '2024-07-16 20:09:15'),
(111, 46.7, 31.4, '2024-07-16 20:10:15'),
(112, 46.8, 31.4, '2024-07-16 20:11:15'),
(113, 47.1, 31.5, '2024-07-16 20:12:15'),
(114, 46.3, 31.4, '2024-07-16 20:13:15'),
(115, 46.6, 31.3, '2024-07-16 20:13:45'),
(116, 47.4, 31.3, '2024-07-16 20:14:46'),
(117, 46.8, 31.3, '2024-07-16 20:15:46'),
(118, 46.4, 31.4, '2024-07-16 20:16:46'),
(119, 46.6, 31.4, '2024-07-16 20:17:46'),
(120, 46.4, 31.4, '2024-07-16 20:18:04'),
(121, 46.7, 31.4, '2024-07-16 20:19:04'),
(122, 46.7, 31.6, '2024-07-16 20:20:04'),
(123, 46.3, 31.6, '2024-07-16 20:21:07'),
(124, 46, 31.7, '2024-07-16 20:25:58'),
(125, 46.2, 31.7, '2024-07-16 20:26:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
