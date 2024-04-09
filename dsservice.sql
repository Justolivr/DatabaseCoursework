-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 05:02 PM
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
-- Table structure for table `dsservice`
--

CREATE TABLE `dsservice` (
  `serviceID` int(6) UNSIGNED NOT NULL,
  `servicingemployee` int(6) UNSIGNED NOT NULL,
  `servicedvehicle` varchar(7) NOT NULL,
  `dateLastServiced` date NOT NULL,
  `nextService` date NOT NULL,
  `problemdesc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsservice`
--

INSERT INTO `dsservice` (`serviceID`, `servicingemployee`, `servicedvehicle`, `dateLastServiced`, `nextService`, `problemdesc`) VALUES
(1, 11, 'FO22FDY', '2023-04-11', '2024-04-11', 'car broken'),
(7, 8, 'FO22FDY', '0000-00-00', '0000-00-00', 'headlight broken'),
(8, 11, 'NB59JCT', '2023-07-30', '2024-07-30', 'noise when engine turned on'),
(9, 9, 'VB02RQL', '2023-01-04', '2024-01-04', 'car won\'t turn on'),
(10, 12, 'LO44REJ', '2022-03-15', '2024-03-15', 'no catalytic converter'),
(11, 5, 'WH04KML', '2023-08-09', '2024-08-09', 'car blew up'),
(12, 11, 'SP65YUQ', '2020-11-11', '2024-11-11', 'car missing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dsservice`
--
ALTER TABLE `dsservice`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `empID` (`servicingemployee`),
  ADD KEY `regNo` (`servicedvehicle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dsservice`
--
ALTER TABLE `dsservice`
  MODIFY `serviceID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dsservice`
--
ALTER TABLE `dsservice`
  ADD CONSTRAINT `service vehicle registration` FOREIGN KEY (`servicedvehicle`) REFERENCES `dscar` (`regNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicing employee` FOREIGN KEY (`servicingemployee`) REFERENCES `dsemployee` (`empID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
