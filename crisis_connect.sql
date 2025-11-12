-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2025 at 02:30 PM
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
-- Database: `crisis_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `disasters`
--

CREATE TABLE `disasters` (
  `disaster_id` varchar(36) NOT NULL,
  `disaster_name` varchar(100) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `severity_level` int(11) DEFAULT NULL,
  `ended` tinyint(1) NOT NULL DEFAULT 0,
  `started_at` date DEFAULT NULL,
  `ended_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(36) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(36) DEFAULT NULL,
  `affected_people` int(11) DEFAULT 0,
  `affected_house` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disasters`
--

INSERT INTO `disasters` (`disaster_id`, `disaster_name`, `type_id`, `severity_level`, `ended`, `started_at`, `ended_at`, `created_at`, `created_by`, `updated_at`, `updated_by`, `affected_people`, `affected_house`) VALUES
('aebab68b-ab6e-11f0-8e16-1c70c9d2b757', 'Mirpur Fire', 4, 4, 1, '2025-10-14', NULL, '2025-10-17 15:33:51', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-18 02:49:31', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 4, 10),
('d2533b3e-ad6d-11f0-93f7-1c70c9d2b757', 'Airport Fire', 4, 4, 0, '2025-10-20', NULL, '2025-10-20 04:32:44', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-20 04:34:05', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 6, 1),
('e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 'Dhaka Flood', 1, 2, 0, '2025-10-10', NULL, '2025-10-17 15:35:16', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-17 15:35:16', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `disaster_areas`
--

CREATE TABLE `disaster_areas` (
  `disaster_area_id` varchar(36) NOT NULL,
  `disaster_id` varchar(36) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upazila_id` int(11) NOT NULL,
  `union_id` int(11) NOT NULL,
  `active_status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disaster_areas`
--

INSERT INTO `disaster_areas` (`disaster_area_id`, `disaster_id`, `division_id`, `district_id`, `upazila_id`, `union_id`, `active_status`) VALUES
('3413a743-ab7f-11f0-8e16-1c70c9d2b757', 'aebab68b-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 5, 31, 1),
('5edf9571-abcb-11f0-b36f-1c70c9d2b757', 'aebab68b-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 5, 28, 1),
('5ee0ae28-abcb-11f0-b36f-1c70c9d2b757', 'aebab68b-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 5, 29, 1),
('5ee1725c-abcb-11f0-b36f-1c70c9d2b757', 'aebab68b-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 5, 30, 1),
('b7a6d999-abcd-11f0-b36f-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 1, 1, 1),
('b7acba8d-abcd-11f0-b36f-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 1, 3, 1),
('b7ad2e39-abcd-11f0-b36f-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 1, 4, 1),
('b7ae2008-abcd-11f0-b36f-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 1, 7, 1),
('b7ae84e2-abcd-11f0-b36f-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 1, 8, 1),
('dae2e748-abcb-11f0-b36f-1c70c9d2b757', 'aebab68b-ab6e-11f0-8e16-1c70c9d2b757', 9, 1, 1, 7, 1),
('ecefb2b3-ad6d-11f0-93f7-1c70c9d2b757', 'd2533b3e-ad6d-11f0-93f7-1c70c9d2b757', 9, 1, 5, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disaster_type`
--

CREATE TABLE `disaster_type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disaster_type`
--

INSERT INTO `disaster_type` (`type_id`, `type`) VALUES
(1, 'FLOOD'),
(2, 'CYCLONE'),
(3, 'EARTHQUAKE'),
(4, 'FIRE'),
(5, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(64) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `division_id`) VALUES
(1, 'DHAKA', 9),
(2, 'FARIDPUR', 9),
(3, 'GAZIPUR', 9),
(4, 'GOPALGANJ', 9),
(5, 'KISHOREGANJ', 9),
(6, 'MADARIPUR', 9),
(7, 'MANIKGANJ', 9),
(8, 'MUNSHIGANJ', 9),
(9, 'NARSINGDI', 9),
(10, 'NARAYANGANJ', 9),
(11, 'RAJBARI', 9),
(12, 'SHARIATPUR', 9),
(13, 'TANGAIL', 9);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `division_id` int(11) NOT NULL,
  `division_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`division_id`, `division_name`) VALUES
(9, 'DHAKA'),
(10, 'CHITTAGONG'),
(11, 'BARISHAL'),
(12, 'KHULNA'),
(13, 'MYMENSINGH'),
(14, 'RAJSHAHI'),
(15, 'RANGPUR'),
(16, 'SYLHET');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` varchar(36) NOT NULL,
  `donor_id` varchar(36) DEFAULT NULL,
  `disaster_id` varchar(36) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `donation_date` datetime DEFAULT current_timestamp(),
  `is_varified` tinyint(1) DEFAULT 0,
  `varified_by` varchar(36) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TrxID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `donor_id`, `disaster_id`, `amount`, `donation_date`, `is_varified`, `varified_by`, `created_at`, `updated_at`, `TrxID`) VALUES
('387db937-ad35-11f0-bac7-1c70c9d2b757', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 3000.00, '2025-10-20 03:47:34', 1, NULL, '2025-10-19 21:47:34', '2025-10-19 22:16:38', '342'),
('4ecfcaa4-ad27-11f0-bac7-1c70c9d2b757', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 2000.00, '2025-10-20 02:07:58', 1, NULL, '2025-10-19 20:07:58', '2025-10-19 20:32:06', '33'),
('9152c3d1-ad3a-11f0-bac7-1c70c9d2b757', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 3400.00, '2025-10-20 04:25:50', 1, 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-19 22:25:50', '2025-10-19 22:26:34', '34jj23'),
('91d2d946-ad3a-11f0-bac7-1c70c9d2b757', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 3400.00, '2025-10-20 04:25:51', 1, 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-19 22:25:51', '2025-10-19 22:26:35', '34jj23'),
('99074e82-ad6a-11f0-93f7-1c70c9d2b757', '5da317f2-ab65-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 34983.00, '2025-10-20 10:09:39', 1, 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-20 04:09:39', '2025-10-20 04:10:17', 'sdfljsdjkl'),
('9dbf39b9-ad39-11f0-bac7-1c70c9d2b757', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 4000.00, '2025-10-20 04:19:01', 1, NULL, '2025-10-19 22:19:01', '2025-10-19 22:23:42', '5xwlws'),
('a15897dd-ad37-11f0-bac7-1c70c9d2b757', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 22324.00, '2025-10-20 04:04:49', 1, NULL, '2025-10-19 22:04:49', '2025-10-19 22:16:41', '332032'),
('b8af6205-ad3a-11f0-bac7-1c70c9d2b757', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 5000.00, '2025-10-20 04:26:56', 1, 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-19 22:26:56', '2025-10-19 22:27:02', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `help_posts`
--

CREATE TABLE `help_posts` (
  `help_post_id` varchar(36) NOT NULL,
  `disaster_id` varchar(36) DEFAULT NULL,
  `titel` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `help_type_id` int(11) DEFAULT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_phoneORemail` varchar(100) DEFAULT NULL,
  `union_id` int(11) DEFAULT NULL,
  `help_status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help_posts`
--

INSERT INTO `help_posts` (`help_post_id`, `disaster_id`, `titel`, `description`, `help_type_id`, `contact_name`, `contact_phoneORemail`, `union_id`, `help_status`, `created_at`, `deleted_at`, `latitude`, `longitude`) VALUES
('37e80c12-abd1-11f0-b36f-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 'kdslf', 'sfdklsd', 2, 'fdklsdkl', 'sdfksds', 3, 1, '2025-10-18 03:19:12', NULL, NULL, NULL),
('d0c929ba-ad29-11f0-bac7-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 'Help me', 'i need help so much', 3, 'Tanveer', '123456', 1, 1, '2025-10-19 20:25:55', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `help_types`
--

CREATE TABLE `help_types` (
  `help_type_id` int(11) NOT NULL,
  `help_type` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help_types`
--

INSERT INTO `help_types` (`help_type_id`, `help_type`) VALUES
(1, 'Food Supply'),
(2, 'Medical Assistance'),
(3, 'Shelter & Housing'),
(4, 'Rescue Operation'),
(5, 'Transportation'),
(6, 'Clothing & Essentials'),
(7, 'Donation (Cash/Materials)'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` varchar(36) NOT NULL,
  `content` text NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(36) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(36) DEFAULT NULL,
  `soft_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `content`, `img_url`, `created_at`, `created_by`, `deleted_at`, `deleted_by`, `soft_delete`) VALUES
('18b88994-ab77-11f0-8e16-1c70c9d2b757', 'Fire', 'image/posts/1760718845_104891321-RTX3OCDD.jpg', '2025-10-17 16:34:05', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', NULL, NULL, 0),
('32c15c8c-ab77-11f0-8e16-1c70c9d2b757', 'Tsunami', 'image/posts/1760718888_caglar-oskay-mmLtohu4qmE-unsplash-scaled.jpg', '2025-10-17 16:34:48', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', NULL, NULL, 0),
('4f6bad05-ab77-11f0-8e16-1c70c9d2b757', 'Tsunami', 'image/posts/1760718937_70109256_605.jpg', '2025-10-17 16:35:37', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', NULL, NULL, 0),
('9da81f76-abd1-11f0-b36f-1c70c9d2b757', 'lkfjsdlkfds', 'noImage', '2025-10-18 03:22:03', '5da317f2-ab65-11f0-8e16-1c70c9d2b757', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `severity_levels`
--

CREATE TABLE `severity_levels` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `severity_levels`
--

INSERT INTO `severity_levels` (`level_id`, `level_name`) VALUES
(1, 'MINOR'),
(2, 'MODERATE'),
(3, 'SEVERE'),
(4, 'CRITICAL');

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `union_id` int(11) NOT NULL,
  `union_name` varchar(64) DEFAULT NULL,
  `upazila_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`union_id`, `union_name`, `upazila_id`) VALUES
(1, 'DHAMRAI', 1),
(2, 'DHARMAPUR', 1),
(3, 'JANGALIA', 1),
(4, 'KANCHAN', 1),
(5, 'MADAIPUR', 1),
(6, 'MASUNDI', 1),
(7, 'RAMDIA', 1),
(8, 'SUTARPARA', 1),
(9, 'DOHAR', 2),
(10, 'BERAID', 2),
(11, 'NIMTOLI', 2),
(12, 'SUTRAPUR', 2),
(13, 'KARATIA', 2),
(14, 'BALIAKANDI', 2),
(15, 'KERANIGANJ', 3),
(16, 'NAWABGANJ', 3),
(17, 'SHUBHARAM', 3),
(18, 'MADANPUR', 3),
(19, 'NABGRAM', 3),
(20, 'JANGALIA', 3),
(21, 'BALIAKANDI', 3),
(22, 'NAWABGANJ SADAR', 4),
(23, 'DHAMSANA', 4),
(24, 'KHILKHET', 4),
(25, 'DHAKA CANTONMENT', 4),
(26, 'DHAMRAI PARTIAL', 4),
(27, 'SAVAR SADAR', 5),
(28, 'ASHULIA', 5),
(29, 'TONGI', 5),
(30, 'DHAMRAI PARTIAL', 5),
(31, 'SHEWRAPARA', 5);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `upazila_id` int(11) NOT NULL,
  `upazila_name` varchar(64) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`upazila_id`, `upazila_name`, `district_id`) VALUES
(1, 'DHAMRAI', 1),
(2, 'DOHAR', 1),
(3, 'KERANIGANJ', 1),
(4, 'NAWABGANJ', 1),
(5, 'SAVAR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(36) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(36) DEFAULT NULL,
  `soft_delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `role` varchar(20) DEFAULT 'Guser'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `name`, `phone`, `email`, `dob`, `created_at`, `created_by`, `updated_at`, `updated_by`, `soft_delete`, `deleted_at`, `bloodGroup`, `role`) VALUES
('0528c676-ab69-11f0-8e16-1c70c9d2b757', '$2y$10$yjYtPTWq8HXK/8TUSzRNLOUZzWfv6W9hH0fb89nyhBnpZFdAGAf.6', 'A. I. Fuad', '01700000010', 'fuad@gmail.com', '2025-08-14', '2025-10-17 14:53:19', '0528c676-ab69-11f0-8e16-1c70c9d2b757', '2025-10-17 14:53:19', '0528c676-ab69-11f0-8e16-1c70c9d2b757', 0, NULL, 'O+', 'Guser'),
('0adece2c-ab66-11f0-8e16-1c70c9d2b757', '$2y$10$lRo0DasIPqSiOtbtRRJ5b.Kww7bh7lHE5rkWdKHCQo35/6.BU3Si.', 'Body Fardeen', '01700000008', 'body@gmail.com', '2025-08-13', '2025-10-17 14:32:00', '0adece2c-ab66-11f0-8e16-1c70c9d2b757', '2025-10-17 14:32:00', '0adece2c-ab66-11f0-8e16-1c70c9d2b757', 0, NULL, 'B+', 'Guser'),
('21bf17a0-ab65-11f0-8e16-1c70c9d2b757', '$2y$10$XMW840VQcQooa4H6A2aDa.NyLfrjB1bhpWjDTkBba/9q1VTLOiQr2', 'Gazi Rafat Al Kafi', '01700000001', 'grakafi22@gmail.com', '2000-11-13', '2025-10-17 14:25:29', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 14:25:29', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', 0, NULL, 'A+', 'Guser'),
('2d00be58-ab66-11f0-8e16-1c70c9d2b757', '$2y$10$gDgn7Jn8Cuhm1o00VeJDbeEt9UbG8yCDf..hyxcXCJ8QZBXXUub6C', 'bhuri Jubayeer', '01700000009', 'bhuri@gmail.com', '2025-08-27', '2025-10-17 14:32:57', '2d00be58-ab66-11f0-8e16-1c70c9d2b757', '2025-10-17 14:32:57', '2d00be58-ab66-11f0-8e16-1c70c9d2b757', 0, NULL, 'A-', 'Guser'),
('3cbeb26a-ab65-11f0-8e16-1c70c9d2b757', '$2y$10$Ili0znJzhh1Psq73lNSGiua.mDD73UJ/YWPEo1vghQ1FAhzC8PN8i', 'Mohammed Afnan', '01700000002', 'afnan@gmail.com', '2025-10-30', '2025-10-17 14:26:14', '3cbeb26a-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 14:26:14', '3cbeb26a-ab65-11f0-8e16-1c70c9d2b757', 0, NULL, 'O+', 'Guser'),
('5da317f2-ab65-11f0-8e16-1c70c9d2b757', '$2y$10$JPUZxoM8LBiI.lzTs52kMeHHcLh.L3SsSJZ9R0I8ohcLW9ITN5dTu', 'Tamim Uddin', '01700000003', 'tamim@gmail.com', '2025-09-09', '2025-10-17 14:27:09', '5da317f2-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 14:27:09', '5da317f2-ab65-11f0-8e16-1c70c9d2b757', 0, NULL, 'AB-', 'Guser'),
('62601c22-abd0-11f0-b36f-1c70c9d2b757', '$2y$10$QNUm8KGiUloRnXhFZ1E1Ou0sWApHptHJzYNousPDpuLm/zG4kXjhu', 'Yusuf', '01700000011', 'usuf@gmail.com', '2025-10-07', '2025-10-18 03:13:14', '62601c22-abd0-11f0-b36f-1c70c9d2b757', '2025-10-18 03:13:14', '62601c22-abd0-11f0-b36f-1c70c9d2b757', 0, NULL, 'B-', 'Guser'),
('7a9c7c3c-ab65-11f0-8e16-1c70c9d2b757', '$2y$10$6dnqpjZN4kc3dQJhuo/jLeX0VPTMd.N4a4bgTXX3KlZMuf5.iU1uO', 'borhan Uddin', '01700000004', 'borhan@gmail.com', '2025-10-01', '2025-10-17 14:27:58', '7a9c7c3c-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 14:27:58', '7a9c7c3c-ab65-11f0-8e16-1c70c9d2b757', 0, NULL, 'B+', 'Guser'),
('b124a12b-ab64-11f0-8e16-1c70c9d2b757', '$2y$10$a89LCmYqnSSKM5f14TJfheQw6zfIgdQeESh7.rOLYonhbW2SDlRV2', 'Md. Tasnim Islam Tanveer', '01640405400', 'tanveerislam2994@gmail.com', '2002-12-29', '2025-10-17 14:22:20', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', '2025-10-17 15:05:50', 'b124a12b-ab64-11f0-8e16-1c70c9d2b757', 0, NULL, 'O+', 'Admin'),
('ba4a0535-ab65-11f0-8e16-1c70c9d2b757', '$2y$10$Q.n6AR2zrKhGp9etmIE/Yu62hlYHxeSbm31.cpX639cM9EbZq4d.a', 'Kazi Nazrul', '01700000005', 'nazrul@gmail.com', '2025-08-26', '2025-10-17 14:29:45', 'ba4a0535-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 14:29:45', 'ba4a0535-ab65-11f0-8e16-1c70c9d2b757', 0, NULL, 'A-', 'Guser'),
('d7428b26-ab65-11f0-8e16-1c70c9d2b757', '$2y$10$fZ55PsJXRY1rk8Dj988lU.lZoguN.ltzzltLutDbTUHvf3NGnFAkm', 'Nahid hossin', '01700000006', 'nahid@gmail.com', '2025-09-13', '2025-10-17 14:30:33', 'd7428b26-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 14:30:34', 'd7428b26-ab65-11f0-8e16-1c70c9d2b757', 0, NULL, 'AB+', 'Guser'),
('dd1cffde-ad28-11f0-bac7-1c70c9d2b757', '$2y$10$sLw7Dz7cusL2BdqnQ3CfyuJ.CyM2aWbMHMVuK4S3n.6eKq9qM.O3m', 'asif karim', '01700000012', 'asif@gmail.com', '2025-10-20', '2025-10-19 20:19:06', 'dd1cffde-ad28-11f0-bac7-1c70c9d2b757', '2025-10-19 20:19:06', 'dd1cffde-ad28-11f0-bac7-1c70c9d2b757', 0, NULL, 'AB+', 'Guser'),
('f2d0e302-ab65-11f0-8e16-1c70c9d2b757', '$2y$10$4b1C3G0ZVX3A7sdtbMs/LehVL7JdS6NViowkW7rQ5R2KLFiuavADu', 'Rakib Raz', '01700000007', 'raz@gmail.com', '2025-09-23', '2025-10-17 14:31:20', 'f2d0e302-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 14:31:20', 'f2d0e302-ab65-11f0-8e16-1c70c9d2b757', 0, NULL, 'O-', 'Guser');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `volunteer_id` varchar(36) NOT NULL,
  `volunteer_info` text DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(36) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(36) DEFAULT NULL,
  `disaster_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`volunteer_id`, `volunteer_info`, `is_available`, `created_at`, `created_by`, `updated_at`, `updated_by`, `disaster_id`) VALUES
('0adece2c-ab66-11f0-8e16-1c70c9d2b757', 'I have pre Experience', 0, '2025-10-20 04:36:56', '0adece2c-ab66-11f0-8e16-1c70c9d2b757', '2025-10-20 06:01:00', '0adece2c-ab66-11f0-8e16-1c70c9d2b757', 'd2533b3e-ad6d-11f0-93f7-1c70c9d2b757'),
('3cbeb26a-ab65-11f0-8e16-1c70c9d2b757', 'I have so much working exp.', 0, '2025-10-17 20:14:15', '3cbeb26a-ab65-11f0-8e16-1c70c9d2b757', '2025-10-18 02:34:03', '3cbeb26a-ab65-11f0-8e16-1c70c9d2b757', 'aebab68b-ab6e-11f0-8e16-1c70c9d2b757'),
('5da317f2-ab65-11f0-8e16-1c70c9d2b757', 'i have ', 0, '2025-10-18 03:32:36', '5da317f2-ab65-11f0-8e16-1c70c9d2b757', '2025-10-18 03:37:13', '5da317f2-ab65-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757'),
('d7428b26-ab65-11f0-8e16-1c70c9d2b757', 'I have so many skilles', 0, '2025-10-18 02:55:06', 'd7428b26-ab65-11f0-8e16-1c70c9d2b757', '2025-10-18 03:40:31', 'd7428b26-ab65-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_roles`
--

CREATE TABLE `volunteer_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_roles`
--

INSERT INTO `volunteer_roles` (`role_id`, `role_name`) VALUES
(2, 'general member'),
(1, 'leader');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_status`
--

CREATE TABLE `volunteer_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_status`
--

INSERT INTO `volunteer_status` (`status_id`, `status_name`) VALUES
(1, 'Active'),
(3, 'Assigned'),
(2, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_teams`
--

CREATE TABLE `volunteer_teams` (
  `team_id` varchar(36) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `leader_id` varchar(36) NOT NULL,
  `disaster_id` varchar(36) NOT NULL,
  `active_status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(36) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(36) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_teams`
--

INSERT INTO `volunteer_teams` (`team_id`, `team_name`, `leader_id`, `disaster_id`, `active_status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `capacity`) VALUES
('3b51b616-ad6e-11f0-93f7-1c70c9d2b757', 'Team abc', 'f2d0e302-ab65-11f0-8e16-1c70c9d2b757', 'd2533b3e-ad6d-11f0-93f7-1c70c9d2b757', 1, '2025-10-20 04:35:40', 'f2d0e302-ab65-11f0-8e16-1c70c9d2b757', '2025-10-20 04:35:40', 'f2d0e302-ab65-11f0-8e16-1c70c9d2b757', 0),
('99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'Theam X', 'ba4a0535-ab65-11f0-8e16-1c70c9d2b757', 'e1b04000-ab6e-11f0-8e16-1c70c9d2b757', 1, '2025-10-18 02:53:18', 'ba4a0535-ab65-11f0-8e16-1c70c9d2b757', '2025-10-18 02:53:18', 'ba4a0535-ab65-11f0-8e16-1c70c9d2b757', 0),
('c6ce957d-ab92-11f0-8e16-1c70c9d2b757', 'TeamA', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', 'aebab68b-ab6e-11f0-8e16-1c70c9d2b757', 1, '2025-10-17 19:52:20', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', '2025-10-17 19:52:20', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', 0);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_team_members`
--

CREATE TABLE `volunteer_team_members` (
  `team_id` varchar(36) NOT NULL,
  `volunteer_id` varchar(36) NOT NULL,
  `role_id` int(11) NOT NULL,
  `join_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_team_members`
--

INSERT INTO `volunteer_team_members` (`team_id`, `volunteer_id`, `role_id`, `join_date`) VALUES
('3b51b616-ad6e-11f0-93f7-1c70c9d2b757', 'f2d0e302-ab65-11f0-8e16-1c70c9d2b757', 1, '2025-10-20 10:35:40'),
('99d606a3-abcd-11f0-b36f-1c70c9d2b757', '0adece2c-ab66-11f0-8e16-1c70c9d2b757', 2, '2025-10-20 12:01:00'),
('99d606a3-abcd-11f0-b36f-1c70c9d2b757', '5da317f2-ab65-11f0-8e16-1c70c9d2b757', 2, '2025-10-18 09:37:13'),
('99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'ba4a0535-ab65-11f0-8e16-1c70c9d2b757', 1, '2025-10-18 08:53:18'),
('99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'd7428b26-ab65-11f0-8e16-1c70c9d2b757', 2, '2025-10-18 09:40:31'),
('c6ce957d-ab92-11f0-8e16-1c70c9d2b757', '21bf17a0-ab65-11f0-8e16-1c70c9d2b757', 1, '2025-10-18 01:52:20'),
('c6ce957d-ab92-11f0-8e16-1c70c9d2b757', '3cbeb26a-ab65-11f0-8e16-1c70c9d2b757', 2, '2025-10-18 08:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_team_tasks`
--

CREATE TABLE `volunteer_team_tasks` (
  `task_id` varchar(36) NOT NULL,
  `team_id` varchar(36) DEFAULT NULL,
  `task_title` varchar(100) NOT NULL,
  `task_description` text DEFAULT NULL,
  `assigned_date` date DEFAULT curdate(),
  `due_date` date DEFAULT NULL,
  `is_panding` tinyint(1) DEFAULT 1,
  `completed_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_team_tasks`
--

INSERT INTO `volunteer_team_tasks` (`task_id`, `team_id`, `task_title`, `task_description`, `assigned_date`, `due_date`, `is_panding`, `completed_date`) VALUES
('0b3f6b12-abce-11f0-b36f-1c70c9d2b757', '99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'wark Fast', 'do something', '2025-10-18', '2025-10-29', 0, NULL),
('1e23f23c-ad7a-11f0-93f7-1c70c9d2b757', '99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'dfkld', 'dsksd', '2025-10-20', '2025-10-20', 1, NULL),
('8e9ce169-abce-11f0-b36f-1c70c9d2b757', '99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'emergency food', 'we need more food', '2025-10-18', '2025-10-18', 0, NULL),
('bd0bb982-abd4-11f0-b36f-1c70c9d2b757', '99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'sss', 'asdjksdjkfasa', '2025-10-18', '2025-10-01', 0, NULL),
('c897030c-abd3-11f0-b36f-1c70c9d2b757', '99d606a3-abcd-11f0-b36f-1c70c9d2b757', 'jklrwesdfkjlsflk', 'dsfkjlsd', '2025-10-18', '2025-10-16', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disasters`
--
ALTER TABLE `disasters`
  ADD PRIMARY KEY (`disaster_id`),
  ADD UNIQUE KEY `disaster_name` (`disaster_name`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `severity_level` (`severity_level`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `disaster_areas`
--
ALTER TABLE `disaster_areas`
  ADD PRIMARY KEY (`disaster_area_id`),
  ADD KEY `disaster_id` (`disaster_id`),
  ADD KEY `division_id` (`division_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `upazila_id` (`upazila_id`),
  ADD KEY `union_id` (`union_id`);

--
-- Indexes for table `disaster_type`
--
ALTER TABLE `disaster_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `disaster_id` (`disaster_id`),
  ADD KEY `varified_by` (`varified_by`);

--
-- Indexes for table `help_posts`
--
ALTER TABLE `help_posts`
  ADD PRIMARY KEY (`help_post_id`),
  ADD KEY `disaster_id` (`disaster_id`),
  ADD KEY `help_type_id` (`help_type_id`),
  ADD KEY `union_id` (`union_id`);

--
-- Indexes for table `help_types`
--
ALTER TABLE `help_types`
  ADD PRIMARY KEY (`help_type_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `severity_levels`
--
ALTER TABLE `severity_levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`union_id`),
  ADD KEY `upazila_id` (`upazila_id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`upazila_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_2` (`phone`),
  ADD KEY `idx_phone` (`phone`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`volunteer_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `disaster_id` (`disaster_id`);

--
-- Indexes for table `volunteer_roles`
--
ALTER TABLE `volunteer_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `volunteer_status`
--
ALTER TABLE `volunteer_status`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `volunteer_teams`
--
ALTER TABLE `volunteer_teams`
  ADD PRIMARY KEY (`team_id`),
  ADD UNIQUE KEY `team_name` (`team_name`),
  ADD KEY `leader_id` (`leader_id`),
  ADD KEY `disaster_id` (`disaster_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `volunteer_team_members`
--
ALTER TABLE `volunteer_team_members`
  ADD PRIMARY KEY (`team_id`,`volunteer_id`),
  ADD KEY `volunteer_id` (`volunteer_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `volunteer_team_tasks`
--
ALTER TABLE `volunteer_team_tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `team_id` (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disaster_type`
--
ALTER TABLE `disaster_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `division_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `help_types`
--
ALTER TABLE `help_types`
  MODIFY `help_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `severity_levels`
--
ALTER TABLE `severity_levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unions`
--
ALTER TABLE `unions`
  MODIFY `union_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `upazila_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `volunteer_roles`
--
ALTER TABLE `volunteer_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `volunteer_status`
--
ALTER TABLE `volunteer_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disasters`
--
ALTER TABLE `disasters`
  ADD CONSTRAINT `disasters_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `disaster_type` (`type_id`),
  ADD CONSTRAINT `disasters_ibfk_2` FOREIGN KEY (`severity_level`) REFERENCES `severity_levels` (`level_id`),
  ADD CONSTRAINT `disasters_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `disasters_ibfk_4` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `disaster_areas`
--
ALTER TABLE `disaster_areas`
  ADD CONSTRAINT `disaster_areas_ibfk_1` FOREIGN KEY (`disaster_id`) REFERENCES `disasters` (`disaster_id`),
  ADD CONSTRAINT `disaster_areas_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`division_id`),
  ADD CONSTRAINT `disaster_areas_ibfk_3` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`),
  ADD CONSTRAINT `disaster_areas_ibfk_4` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`upazila_id`),
  ADD CONSTRAINT `disaster_areas_ibfk_5` FOREIGN KEY (`union_id`) REFERENCES `unions` (`union_id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`division_id`);

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `donations_ibfk_2` FOREIGN KEY (`disaster_id`) REFERENCES `disasters` (`disaster_id`),
  ADD CONSTRAINT `donations_ibfk_3` FOREIGN KEY (`varified_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `help_posts`
--
ALTER TABLE `help_posts`
  ADD CONSTRAINT `help_posts_ibfk_1` FOREIGN KEY (`disaster_id`) REFERENCES `disasters` (`disaster_id`),
  ADD CONSTRAINT `help_posts_ibfk_2` FOREIGN KEY (`help_type_id`) REFERENCES `help_types` (`help_type_id`),
  ADD CONSTRAINT `help_posts_ibfk_3` FOREIGN KEY (`union_id`) REFERENCES `unions` (`union_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `unions`
--
ALTER TABLE `unions`
  ADD CONSTRAINT `unions_ibfk_1` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`upazila_id`);

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`);

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `volunteers_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `volunteers_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `volunteers_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `volunteers_ibfk_4` FOREIGN KEY (`disaster_id`) REFERENCES `disasters` (`disaster_id`);

--
-- Constraints for table `volunteer_teams`
--
ALTER TABLE `volunteer_teams`
  ADD CONSTRAINT `volunteer_teams_ibfk_1` FOREIGN KEY (`leader_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `volunteer_teams_ibfk_2` FOREIGN KEY (`disaster_id`) REFERENCES `disasters` (`disaster_id`),
  ADD CONSTRAINT `volunteer_teams_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `volunteer_teams_ibfk_4` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `volunteer_team_members`
--
ALTER TABLE `volunteer_team_members`
  ADD CONSTRAINT `volunteer_team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `volunteer_teams` (`team_id`),
  ADD CONSTRAINT `volunteer_team_members_ibfk_2` FOREIGN KEY (`volunteer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `volunteer_team_members_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `volunteer_roles` (`role_id`);

--
-- Constraints for table `volunteer_team_tasks`
--
ALTER TABLE `volunteer_team_tasks`
  ADD CONSTRAINT `volunteer_team_tasks_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `volunteer_teams` (`team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
