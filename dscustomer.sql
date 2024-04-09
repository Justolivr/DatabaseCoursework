-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 01:53 PM
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
-- Table structure for table `dscustomer`
--

CREATE TABLE `dscustomer` (
  `customerID` int(6) NOT NULL,
  `regNo` varchar(7) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postcode` varchar(7) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) NOT NULL,
  `phoneNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dscustomer`
--

INSERT INTO `dscustomer` (`customerID`, `regNo`, `address`, `postcode`, `firstname`, `surname`, `phoneNo`) VALUES
(1, 'DC09YZQ', '4 Boot Hill Drive', 'ME87FD', 'Teresa', 'Wilkins', 217920370),
(2, 'LO44REJ', '8 Tennyson Road', 'HP112XA', 'Merle', 'Herchs', 993099700),
(3, 'VB02RQL', '5 Forest Lodge', 'TN3 9JP', 'Thomas', 'Castellano', 1317836167),
(6, 'FO22FDY', '4 Romulus Court', 'HP112XA', 'Damian', 'Summerfield', 1872545189),
(7, 'YF05DQR', '7 Mill Close', 'ME87FD', 'Isa', 'Durante', 2147483647),
(8, 'YL31NLA', '31 Oaklands Crescent', 'CO153LL', 'Cyrus', 'Innes', 2147483647),
(9, 'DR08XOQ', '7 Havenvale Court', 'DL117JY', 'Elly', 'Favreau', 2147483647),
(10, 'NX19YMD', '6 Mabel Cottages', 'LE191YG', 'Louie', 'Paulsen', 1292122052),
(11, 'VV48LHM', '5 Queens Close', 'LS83TH', 'Lukas', 'Kidd', 2147483647),
(12, 'YG11VOA', 'Roselands Lodge', 'BN228PT', 'Sharon', 'Leighton', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dscustomer`
--
ALTER TABLE `dscustomer`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `regNo` (`regNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dscustomer`
--
ALTER TABLE `dscustomer`
  MODIFY `customerID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
