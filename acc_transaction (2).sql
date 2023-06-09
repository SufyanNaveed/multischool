-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 11:08 PM
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
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `account_no` varchar(30) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `paytype` int(11) NOT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `VNo`, `VDate`, `school_id`, `account_id`, `account_no`, `Narration`, `paytype`, `Debit`, `Credit`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
(17, 'BM-1', '2023-06-10', 1, 3, '12345', 'adasdasd', 2, '500.00', '0.00', '1', '2023-06-10 01:42:09', NULL, NULL),
(18, 'BM-1', '2023-06-10', 1, 1, '12345678', 'adasdasd', 2, '0.00', '500.00', '1', '2023-06-10 01:42:09', NULL, NULL),
(19, 'BM-1', '2023-06-10', 1, 3, '12345', 'adasd', 2, '500.00', '0.00', '1', '2023-06-10 01:43:45', NULL, NULL),
(20, 'BM-1', '2023-06-10', 1, 1, '12345678', 'adasd', 2, '0.00', '500.00', '1', '2023-06-10 01:43:45', NULL, NULL),
(21, 'BR-1', '2023-06-10', 1, 3, '12345', '', 2, '300.00', '0.00', '1', '2023-06-10 01:53:56', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
