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
