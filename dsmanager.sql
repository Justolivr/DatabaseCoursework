-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 05:03 PM
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
-- Database: `car dealership`
--

-- --------------------------------------------------------

--
-- Table structure for table `dsmanager`
--

CREATE TABLE `dsmanager` (
  `managedemployee` int(6) UNSIGNED NOT NULL,
  `manID` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsmanager`
--

INSERT INTO `dsmanager` (`managedemployee`, `manID`) VALUES
(1, 5),
(8, 1),
(11, 2),
(12, 4),
(13, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dsmanager`
--
ALTER TABLE `dsmanager`
  ADD PRIMARY KEY (`manID`),
  ADD KEY `empID` (`managedemployee`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dsmanager`
--
ALTER TABLE `dsmanager`
  MODIFY `manID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dsmanager`
--
ALTER TABLE `dsmanager`
  ADD CONSTRAINT `managed employee` FOREIGN KEY (`managedemployee`) REFERENCES `dsemployee` (`empID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
