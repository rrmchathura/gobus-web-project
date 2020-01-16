-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 07:23 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gobus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `busNo` varchar(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `busNo`, `name`, `type`) VALUES
(20, 'NA-6002', '', 'Luxury'),
(7, 'NA-8563', '', 'Luxury'),
(10, 'NB-1931', '', 'Luxury'),
(11, 'NB-8771', '', 'Luxury'),
(3, 'NB-9377', '', 'Luxury'),
(4, 'NB-9788', '', 'Luxury'),
(1, 'NC-1306', '', 'Luxury'),
(2, 'NC-1471', '', 'Luxury'),
(14, 'NC-1828', '', 'Luxury'),
(6, 'NC-3555', '', 'Luxury'),
(16, 'NC-4627', '', 'Luxury'),
(12, 'NC-6513', '', 'Luxury'),
(8, 'ND-1990', '', 'Luxury'),
(15, 'ND-2031', '', 'Luxury'),
(18, 'ND-6728', '', 'Luxury'),
(13, 'ND-7117', '', 'Luxury'),
(9, 'NE-1720', '', 'Luxury'),
(17, 'NE-5341', '', 'Luxury'),
(19, 'NG-2117', '', 'Luxury'),
(5, 'NG-4177', '', 'Luxury');

-- --------------------------------------------------------

--
-- Table structure for table `bus_time`
--

CREATE TABLE `bus_time` (
  `id` int(11) NOT NULL,
  `bus` varchar(11) NOT NULL,
  `dLoc` varchar(30) NOT NULL,
  `dTime` decimal(4,2) NOT NULL,
  `aLoc` varchar(30) NOT NULL,
  `aTime` decimal(4,2) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_time`
--

INSERT INTO `bus_time` (`id`, `bus`, `dLoc`, `dTime`, `aLoc`, `aTime`, `price`) VALUES
(7, 'NA-8563', 'Colombo', '17.30', 'Katunayake', '18.20', 220),
(11, 'NB-8771', 'Maharagama', '13.10', 'Aluthgama', '14.05', 270),
(3, 'NB-9377', 'Colombo', '7.00', 'Matara', '10.00', 600),
(4, 'NB-9788', 'Colombo', '8.45', 'Matara', '11.45', 600),
(1, 'NC-1306', 'Makumbura', '6.30', 'Matara', '8.30', 530),
(2, 'NC-1471', 'Makumbura', '6.00', 'Galle', '7.30', 420),
(14, 'NC-1828', 'Colombo', '14.20', 'Elpitiya', '15.10', 0),
(6, 'NC-3555', 'Colombo', '14.20', 'Katunayake', '15.10', 220),
(12, 'NC-6513', 'Maharagama', '15.25', 'Kaduwela', '15.45', 130),
(10, 'ND-1931', 'Galle', '9.35', 'Makumbura', '11.00', 420),
(8, 'ND-1980', 'Colombo', '16.10', 'Negombo', '17.00', 200),
(13, 'ND-7117', 'Maharagama', '5.30', 'Matugama', '6.15', 200),
(9, 'NE-1720', 'Colombo', '11.15', 'Kataragama', '15.20', 720),
(5, 'NG-4177', 'Maharagama', '9.00', 'Kadawatha', '9.30', 170);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`busNo`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `bus_time`
--
ALTER TABLE `bus_time`
  ADD PRIMARY KEY (`bus`,`dTime`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bus_time`
--
ALTER TABLE `bus_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
