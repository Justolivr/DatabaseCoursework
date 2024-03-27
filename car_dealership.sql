-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 11:44 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `dscustomer`
--

CREATE TABLE `dscustomer` (
  `customerID` int(6) NOT NULL,
  `regNo` int(7) NOT NULL,
  `phoneNo` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `lastName` varchar(12) NOT NULL,
  `firstName` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dsemployee`
--

CREATE TABLE `dsemployee` (
  `empID` int(6) NOT NULL,
  `firstname` varchar(12) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` enum('M','F') NOT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dsmanager`
--

CREATE TABLE `dsmanager` (
  `empID` int(6) NOT NULL,
  `manID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dsorder`
--

CREATE TABLE `dsorder` (
  `orderID` int(6) NOT NULL,
  `customerID` int(6) NOT NULL,
  `empID` int(6) NOT NULL,
  `regNo` int(7) NOT NULL,
  `totalPrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dsservice`
--

CREATE TABLE `dsservice` (
  `serviceID` int(6) NOT NULL,
  `empID` int(6) NOT NULL,
  `regNo` int(7) NOT NULL,
  `dateLastServiced` date NOT NULL,
  `nextService` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `regNo` (`regNo`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
