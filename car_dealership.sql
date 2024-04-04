-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 03:55 PM
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
-- Table structure for table `dscar`
--

CREATE TABLE `dscar` (
  `regNo` varchar(7) NOT NULL,
  `make` varchar(15) NOT NULL,
  `brand` varchar(15) NOT NULL,
  `yearMade` int(4) NOT NULL,
  `price` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dscar`
--

INSERT INTO `dscar` (`regNo`, `make`, `brand`, `yearMade`, `price`) VALUES
('CS04ZBY', 'Benz', 'Motorwagen', 1885, 1000),
('DC09YZQ', 'Toyota', 'Corolla', 2015, 10350),
('DR08XOQ', 'Seat', 'Ateca', 2020, 13200),
('FO22FDY', 'Honda', 'Civic', 2013, 6280),
('LO44REJ', 'Lexus', 'RX', 2011, 2650),
('NB59JCT', 'Porsche', 'Boxster', 2020, 10170),
('NX19YMD', 'Subaru', 'Impreza', 2020, 17200),
('OD03CUK', 'Volkswagen', 'Tiguan', 2008, 10170),
('SP65YUQ', 'BMW', 'XM', 2015, 10170),
('VB02RQL', 'Mitsubishi', 'Mirage', 2013, 5620),
('VG06DEO', 'Citroen', 'C5', 2003, 10170),
('VN06BYE', 'Toyota', 'RAV4', 2027, 10170),
('VV23VDR', 'Toyota', 'GR86', 2015, 10170),
('VV48LHM', 'Mitsubishi', 'Outlander', 2022, 21240),
('WH04KML', 'BMW', 'Z4', 2009, 10170),
('WN38CML', 'Mitsubishi', 'Eclipse', 2022, 10170),
('YF05DQR', 'Toyota', 'Venza', 2018, 14120),
('YG11VOA', 'BMW', '8', 2016, 9270),
('YL31NLA', 'Citroen', 'C5', 2008, 8540),
('YL73YSK', 'Seat', 'Ibiza', 2017, 10170),
('YM04PFI', 'Toyota', 'GR86', 2015, 10170);

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
(6, 'FO22FDY', '4 Romulus Court', 'HP112XA', 'Thomas', 'Castellano', 1872545189),
(7, 'YF05DQR', '7 Mill Close', 'ME87FD', 'Thomas', 'Castellano', 2147483647),
(8, 'YL31NLA', '31 Oaklands Crescent', 'CO153LL', 'Thomas', 'Castellano', 2147483647),
(9, 'DR08XOQ', '7 Havenvale Court', 'DL117JY', 'Thomas', 'Castellano', 2147483647),
(10, 'NX19YMD', '6 Mabel Cottages', 'LE191YG', 'Thomas', 'Castellano', 1292122052),
(11, 'VV48LHM', '5 Queens Close', 'LS83TH', 'Thomas', 'Castellano', 2147483647),
(12, 'YG11VOA', 'Roselands Lodge', 'BN228PT', 'Thomas', 'Castellano', 2147483647);

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
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsemployee`
--

INSERT INTO `dsemployee` (`empID`, `firstname`, `lastname`, `dateofbirth`, `gender`, `salary`) VALUES
(1, 'Morgan', 'Christophers', '1984-12-01', 'M', 25600),
(5, 'Quintina', 'Joly', '1935-08-01', 'M', 25600),
(6, 'Thorvald', 'Kis', '1954-08-15', 'M', 34500),
(7, 'Delilah', 'Irving', '1966-02-11', 'F', 27800),
(8, 'Mario', 'Hassani', '2001-08-03', 'M', 1000000),
(9, 'Carl', 'Sharma', '1971-09-03', 'M', 35000),
(10, 'Claudia', 'Grünberg', '1987-06-22', 'F', 10600),
(11, 'Godfrey', 'Lam', '1644-06-13', 'M', 3),
(12, 'Ana', 'Christophers', '1975-04-10', 'F', 44000),
(13, 'Anton', 'Chigurh', '1997-09-22', 'M', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `dsmanager`
--

CREATE TABLE `dsmanager` (
  `empID` int(6) NOT NULL,
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
  `empID` int(6) NOT NULL,
  `regNo` varchar(7) DEFAULT NULL,
  `totalPrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsorder`
--

INSERT INTO `dsorder` (`orderID`, `customerID`, `empID`, `regNo`, `totalPrice`) VALUES
(1, 2, 1, 'LO44REJ', 2650),
(2, 6, 5, 'FO22FDY', 6280),
(3, 8, 10, 'YL31NLA', 8540),
(4, 10, 11, 'NX19YM', 17200),
(5, 7, 8, 'YF05DQ', 14120),
(6, 1, 8, 'DC09YZ', 10350);

-- --------------------------------------------------------

--
-- Table structure for table `dsservice`
--

CREATE TABLE `dsservice` (
  `serviceID` int(6) UNSIGNED NOT NULL,
  `empID` int(6) NOT NULL,
  `regNo` varchar(7) NOT NULL,
  `dateLastServiced` date NOT NULL,
  `nextService` date NOT NULL,
  `problemdesc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dsservice`
--

INSERT INTO `dsservice` (`serviceID`, `empID`, `regNo`, `dateLastServiced`, `nextService`, `problemdesc`) VALUES
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
  ADD PRIMARY KEY (`regNo`);

--
-- Indexes for table `dscustomer`
--
ALTER TABLE `dscustomer`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `regNo` (`regNo`);

--
-- Indexes for table `dsemployee`
--
ALTER TABLE `dsemployee`
  ADD PRIMARY KEY (`empID`);

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
  MODIFY `customerID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dsemployee`
--
ALTER TABLE `dsemployee`
  MODIFY `empID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
