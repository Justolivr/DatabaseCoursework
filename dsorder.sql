-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 04:58 PM
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
-- Table structure for table `dsorder`
--

CREATE TABLE `dsorder` (
  `orderID` int(6) UNSIGNED NOT NULL,
  `purchasingcustomer` int(6) NOT NULL,
  `transactionemployee` int(6) UNSIGNED NOT NULL,
  `vehiclepurchased` varchar(7) NOT NULL,
  `totalPrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsorder`
--

INSERT INTO `dsorder` (`orderID`, `purchasingcustomer`, `transactionemployee`, `vehiclepurchased`, `totalPrice`) VALUES
(1, 2, 1, 'LO44REJ', 2650),
(2, 6, 5, 'FO22FDY', 6280),
(3, 8, 10, 'YL31NLA', 8540),
(4, 10, 11, 'NX19YMD', 17200),
(5, 7, 8, 'YF05DQR', 14120),
(6, 1, 8, 'DC09YZQ', 10350);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dsorder`
--
ALTER TABLE `dsorder`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `regNo` (`vehiclepurchased`),
  ADD KEY `empID` (`transactionemployee`),
  ADD KEY `customerID` (`purchasingcustomer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dsorder`
--
ALTER TABLE `dsorder`
  MODIFY `orderID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dsorder`
--
ALTER TABLE `dsorder`
  ADD CONSTRAINT `purchasing customer` FOREIGN KEY (`purchasingcustomer`) REFERENCES `dscustomer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction employee` FOREIGN KEY (`transactionemployee`) REFERENCES `dsemployee` (`empID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle purchased` FOREIGN KEY (`vehiclepurchased`) REFERENCES `dscar` (`regNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
