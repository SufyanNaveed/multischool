-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 01:38 AM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(5) NOT NULL,
  `school_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `account_no` varchar(35) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adate` datetime NOT NULL,
  `balance` double DEFAULT NULL,
  `note` text DEFAULT NULL,
  `account_type` enum('Assets','Expenses','Income','Liabilities','Equity','Basic') NOT NULL DEFAULT 'Basic',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `school_id`, `level_id`, `account_no`, `name`, `adate`, `balance`, `note`, `account_type`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 1, 4, '12345678', 'Testing', '2023-06-05 00:00:00', 0, 'new test', 'Expenses', 1, '2023-06-05 02:54:46', 1, '2023-06-04 22:03:19'),
(3, 1, 4, '12345', 'Testing Second', '2023-06-05 00:00:00', 0, 'asdasdas asdasd', 'Assets', 1, '2023-06-05 03:03:38', 0, '2023-06-04 22:03:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acn` (`account_no`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
