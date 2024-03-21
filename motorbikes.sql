-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 132.145.18.222
-- Generation Time: Mar 21, 2024 at 02:34 PM
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
-- Table structure for table `motorbikes`
--

CREATE TABLE `motorbikes` (
  `Brand` text NOT NULL,
  `Model` text NOT NULL,
  `CC` int(11) NOT NULL,
  `Torque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `motorbikes`
--

INSERT INTO `motorbikes` (`Brand`, `Model`, `CC`, `Torque`) VALUES
('KTM', 'RC390', 373, 37),
('Honda', 'Grom', 125, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
