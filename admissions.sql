-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 07:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims-52`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `next_follow_up_date` date DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `caste` varchar(100) DEFAULT NULL,
  `health_condition` varchar(255) DEFAULT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `photo` varchar(120) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `is_guardian` varchar(50) DEFAULT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `gud_relation` varchar(100) DEFAULT NULL,
  `gud_name` varchar(100) DEFAULT NULL,
  `gud_phone` varchar(50) DEFAULT NULL,
  `gud_email` varchar(50) DEFAULT NULL,
  `gud_national_id` varchar(50) DEFAULT NULL,
  `gud_present_address` varchar(255) DEFAULT NULL,
  `gud_permanent_address` varchar(255) DEFAULT NULL,
  `gud_profession` varchar(100) DEFAULT NULL,
  `gud_religion` varchar(100) DEFAULT NULL,
  `gud_other_info` varchar(255) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(50) DEFAULT NULL,
  `father_education` varchar(100) DEFAULT NULL,
  `father_profession` varchar(100) DEFAULT NULL,
  `father_designation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(50) DEFAULT NULL,
  `mother_education` varchar(100) DEFAULT NULL,
  `mother_profession` varchar(100) DEFAULT NULL,
  `mother_designation` varchar(100) DEFAULT NULL,
  `previous_school` varchar(255) DEFAULT NULL,
  `previous_class` varchar(100) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `prospectus` varchar(255) DEFAULT NULL,
  `prospectus_number` varchar(255) DEFAULT NULL,
  `second_language` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = New, 1 = Waiting, 2 = Decline, 3 = Approved',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `school_id`, `name`, `dob`, `gender`, `class_id`, `type_id`, `group`, `section`, `next_follow_up_date`, `blood_group`, `phone`, `email`, `religion`, `caste`, `health_condition`, `national_id`, `photo`, `present_address`, `permanent_address`, `is_guardian`, `guardian_id`, `gud_relation`, `gud_name`, `gud_phone`, `gud_email`, `gud_national_id`, `gud_present_address`, `gud_permanent_address`, `gud_profession`, `gud_religion`, `gud_other_info`, `father_name`, `father_phone`, `father_education`, `father_profession`, `father_designation`, `mother_name`, `mother_phone`, `mother_education`, `mother_profession`, `mother_designation`, `previous_school`, `previous_class`, `reference`, `source`, `prospectus`, `prospectus_number`, `second_language`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'Arsalan Khan', '2014-02-05', 'male', 2, 0, 'science', NULL, NULL, 'b_positive', '03174923348', 'engr.ali007@outlook.com', '', '', '', '', NULL, 'Islamabad, Pakistan', '', 'father', 0, 'Father', 'Ali', '03174923348', 'engr.ali007@outlook.com', '', 'Islamabad, Pakistan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 0, '2021-07-19 11:24:56', '0000-00-00 00:00:00', 2, 0),
(2, 1, 'Khalid', '2012-07-04', 'male', 3, 0, 'arts', NULL, NULL, 'b_positive', '0321465646', '', '', '', '', '', NULL, '', '', 'father', 0, 'Father', 'Ikram', '0315497496', 'ikram@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 3, '2021-07-19 12:13:46', '2021-07-19 15:16:50', 2, 0),
(3, 1, 'Sufyan Naveed', '1993-10-10', 'male', 1, 0, '', NULL, NULL, '', '03040944647', '', '', '', '', '', NULL, '', '', 'other', 0, 'Other', 'Sufyan Naveed', '03040944647', 'sufyannaveed28@gmail.com', '', 'I8 Markaz\r\nTest', 'I8 Markaz\r\nTest', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 0, '2023-03-06 22:39:26', '0000-00-00 00:00:00', 1, 0),
(4, 1, 'Sufyan Naveed', '1993-10-10', 'male', 2, 0, '', NULL, NULL, '', '03040944647', '', '', '', '', '', NULL, '', '', 'other', 0, 'Other', 'Sufyan Naveed', '03040944647', 'sufyanaveed28@gmail.com', '', 'I8 Markaz\r\nTest', 'I8 Markaz\r\nTest', '', '', '', '', '', '', '', '', '', '', '', '', '', 'abc', 'teast', 'zero', 'nothing', 'English', 'A-123', '', 0, '2023-03-06 22:54:15', '0000-00-00 00:00:00', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
