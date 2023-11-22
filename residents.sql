-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Nov 22, 2023 at 10:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `under_water_homes`
--

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `R_id` int(1) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `phone number` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'verified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`R_id`, `name`, `age`, `phone number`, `status`) VALUES
(1, 'sai', 23, 404879478, 'verified'),
(2, 'ram', 36, 548412684, 'verified'),
(3, 'alices', 28, 875189415, 'verified'),
(4, 'jim', 45, 45767899, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`R_id`),
  ADD UNIQUE KEY `phone number` (`phone number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
