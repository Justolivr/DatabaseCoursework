-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 01:39 PM
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
-- Database: `car_dealership`
--

-- --------------------------------------------------------

--
-- Table structure for table `dscar`
--

CREATE TABLE `dscar` (
  `regNo` varchar(7) NOT NULL,
  `make` varchar(15) NOT NULL,
  `brand` varchar(15) NOT NULL,
  `yearMade` int(4) NOT NULL,
  `price` int(7) NOT NULL,
  `customerID` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dscar`
--

INSERT INTO `dscar` (`regNo`, `make`, `brand`, `yearMade`, `price`, `customerID`) VALUES
('CS04ZBY', 'Benz', 'Motorwagen', 1885, 1000, 13),
('DC09YZQ', 'Toyota', 'Corolla', 2015, 10350, 1),
('DR08XOQ', 'Seat', 'Ateca', 2020, 13200, 9),
('FO22FDY', 'Honda', 'Civic', 2013, 6280, 6),
('LO44REJ', 'Lexus', 'RX', 2011, 2650, 2),
('NB59JCT', 'Porsche', 'Boxster', 2020, 10170, NULL),
('NX19YMD', 'Subaru', 'Impreza', 2020, 17200, 10),
('OD03CUK', 'Volkswagen', 'Tiguan', 2008, 10170, NULL),
('SP65YUQ', 'BMW', 'XM', 2015, 10170, NULL),
('VB02RQL', 'Mitsubishi', 'Mirage', 2013, 5620, 3),
('VG06DEO', 'Citroen', 'C5', 2003, 10170, NULL),
('VN06BYE', 'Toyota', 'RAV4', 2027, 10170, NULL),
('VV23VDR', 'Toyota', 'GR86', 2015, 10170, NULL),
('VV48LHM', 'Mitsubishi', 'Outlander', 2022, 21240, 11),
('WH04KML', 'BMW', 'Z4', 2009, 10170, NULL),
('WN38CML', 'Mitsubishi', 'Eclipse', 2022, 10170, NULL),
('YF05DQR', 'Toyota', 'Venza', 2018, 14120, 7),
('YG11VOA', 'BMW', '8', 2016, 9270, 12),
('YL31NLA', 'Citroen', 'C5', 2008, 8540, 8),
('YL73YSK', 'Seat', 'Ibiza', 2017, 10170, NULL),
('YM04PFI', 'Toyota', 'GR86', 2015, 10170, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dscustomer`
--

CREATE TABLE `dscustomer` (
  `customerID` int(6) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postcode` varchar(7) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) NOT NULL,
  `phoneNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dscustomer`
--

INSERT INTO `dscustomer` (`customerID`, `address`, `postcode`, `firstname`, `surname`, `phoneNo`) VALUES
(1, '4 Boot Hill Drive', 'ME87FD', 'Teresa', 'Wilkins', 217920370),
(2, '8 Tennyson Road', 'HP112XA', 'Merle', 'Herchs', 993099700),
(3, '5 Forest Lodge', 'TN3 9JP', 'Thomas', 'Castellano', 1317836167),
(6, '4 Romulus Court', 'HP112XA', 'Damian', 'Summerfield', 1872545189),
(7, '7 Mill Close', 'ME87FD', 'Isa', 'Durante', 2147483647),
(8, '31 Oaklands Crescent', 'CO153LL', 'Cyrus', 'Innes', 2147483647),
(9, '7 Havenvale Court', 'DL117JY', 'Elly', 'Favreau', 2147483647),
(10, '6 Mabel Cottages', 'LE191YG', 'Louie', 'Paulsen', 1292122052),
(11, '5 Queens Close', 'LS83TH', 'Lukas', 'Kidd', 2147483647),
(12, 'Roselands Lodge', 'BN228PT', 'Sharon', 'Leighton', 2147483647),
(13, '12 Cock-a-poo', 'W4N K3R', 'JOHNNY', 'SACK', 9);

-- --------------------------------------------------------

--
-- Table structure for table `dsemployee`
--

CREATE TABLE `dsemployee` (
  `empID` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(12) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` enum('M','F') NOT NULL,
  `salary` int(11) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `manID` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsemployee`
--

INSERT INTO `dsemployee` (`empID`, `firstname`, `lastname`, `dateofbirth`, `gender`, `salary`, `password`, `manID`) VALUES
(1, 'Morgan', 'Christophers', '1984-12-01', 'M', 25600, 'Rf8U8ehMqeTA2cC', NULL),
(5, 'Quintina', 'Joly', '1935-08-01', 'M', 25600, 'lsYt5YfCjsjQXP4', 3),
(6, 'Thorvald', 'Kis', '1954-08-15', 'M', 34500, 'kZMzSCgpVXPi3zG', 4),
(7, 'Delilah', 'Irving', '1966-02-11', 'F', 27800, 'Bx1ayJjVkKZdE4A', 1),
(8, 'Mario', 'Hassani', '2001-08-03', 'M', 1000000, 'JZHD2rnkIAJdham', NULL),
(9, 'Carl', 'Sharma', '1971-09-03', 'M', 35000, '5yhkiTHNrOAOsTn', 2),
(10, 'Claudia', 'Grünberg', '1987-06-22', 'F', 10600, 'mc013cgagFLTwv9', 5),
(11, 'Godfrey', 'Lam', '1644-06-13', 'M', 3, 'pmMG25bdRbdxzc1', NULL),
(12, 'Ana', 'Christophers', '1975-04-10', 'F', 44000, 'CUrYDG3lSOE3PFQ', NULL),
(13, 'Anton', 'Chigurh', '1997-09-22', 'M', 500000, 'tQCZPZLz3hUMouq', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dsmanager`
--

CREATE TABLE `dsmanager` (
  `empID` int(6) UNSIGNED NOT NULL,
  `manID` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsmanager`
--

INSERT INTO `dsmanager` (`empID`, `manID`) VALUES
(1, 5),
(8, 1),
(11, 2),
(12, 4),
(13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dsorder`
--

CREATE TABLE `dsorder` (
  `orderID` int(6) UNSIGNED NOT NULL,
  `customerID` int(6) NOT NULL,
  `empID` int(6) UNSIGNED NOT NULL,
  `regNo` varchar(7) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsorder`
--

INSERT INTO `dsorder` (`orderID`, `customerID`, `empID`, `regNo`, `price`) VALUES
(1, 2, 1, 'LO44REJ', 2650),
(2, 6, 5, 'FO22FDY', 6280),
(3, 8, 10, 'YL31NLA', 8540),
(4, 10, 11, 'NX19YMD', 17200),
(5, 7, 8, 'YF05DQR', 14120),
(6, 1, 8, 'DC09YZQ', 10350);

-- --------------------------------------------------------

--
-- Table structure for table `dsservice`
--

CREATE TABLE `dsservice` (
  `serviceID` int(6) UNSIGNED NOT NULL,
  `empID` int(6) UNSIGNED NOT NULL,
  `regNo` varchar(7) NOT NULL,
  `dateLastServiced` date NOT NULL,
  `nextService` date NOT NULL,
  `problemDesc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsservice`
--

INSERT INTO `dsservice` (`serviceID`, `empID`, `regNo`, `dateLastServiced`, `nextService`, `problemDesc`) VALUES
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
-- Indexes for table `dscar`
--
ALTER TABLE `dscar`
  ADD PRIMARY KEY (`regNo`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `dscustomer`
--
ALTER TABLE `dscustomer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `dsemployee`
--
ALTER TABLE `dsemployee`
  ADD PRIMARY KEY (`empID`),
  ADD KEY `managerID` (`manID`);

--
-- Indexes for table `dsmanager`
--
ALTER TABLE `dsmanager`
  ADD PRIMARY KEY (`manID`),
  ADD KEY `empID` (`empID`);

--
-- Indexes for table `dsorder`
--
ALTER TABLE `dsorder`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `regNo` (`regNo`),
  ADD KEY `empID` (`empID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `dsservice`
--
ALTER TABLE `dsservice`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `empID` (`empID`),
  ADD KEY `regNo` (`regNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dscustomer`
--
ALTER TABLE `dscustomer`
  MODIFY `customerID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dsemployee`
--
ALTER TABLE `dsemployee`
  MODIFY `empID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dsmanager`
--
ALTER TABLE `dsmanager`
  MODIFY `manID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dsorder`
--
ALTER TABLE `dsorder`
  MODIFY `orderID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dsservice`
--
ALTER TABLE `dsservice`
  MODIFY `serviceID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dscar`
--
ALTER TABLE `dscar`
  ADD CONSTRAINT `dscar_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `dscustomer` (`customerID`);

--
-- Constraints for table `dsemployee`
--
ALTER TABLE `dsemployee`
  ADD CONSTRAINT `manager` FOREIGN KEY (`manID`) REFERENCES `dsmanager` (`manID`);

--
-- Constraints for table `dsmanager`
--
ALTER TABLE `dsmanager`
  ADD CONSTRAINT `managed employee` FOREIGN KEY (`empID`) REFERENCES `dsemployee` (`empID`);

--
-- Constraints for table `dsorder`
--
ALTER TABLE `dsorder`
  ADD CONSTRAINT `purchasing customer` FOREIGN KEY (`customerID`) REFERENCES `dscustomer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction employee` FOREIGN KEY (`empID`) REFERENCES `dsemployee` (`empID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle purchased` FOREIGN KEY (`regNo`) REFERENCES `dscar` (`regNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dsservice`
--
ALTER TABLE `dsservice`
  ADD CONSTRAINT `service vehicle registration` FOREIGN KEY (`regNo`) REFERENCES `dscar` (`regNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicing employee` FOREIGN KEY (`empID`) REFERENCES `dsemployee` (`empID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
