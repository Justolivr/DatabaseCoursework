-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 132.145.18.222
-- Generation Time: Mar 21, 2024 at 03:00 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gl2028`
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
('YB35RED', 'Honda', 'Civic', 2024, 32000),
('YL74CNQ', 'Ford', 'Fiesta', 2020, 25000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dscar`
--
ALTER TABLE `dscar`
  ADD PRIMARY KEY (`regNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
