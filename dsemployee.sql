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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dsemployee`
--
ALTER TABLE `dsemployee`
  ADD PRIMARY KEY (`empID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dsemployee`
--
ALTER TABLE `dsemployee`
  MODIFY `empID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
