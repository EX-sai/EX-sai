-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Nov 22, 2023 at 10:18 AM
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
-- Table structure for table `security system`
--

CREATE TABLE `security system` (
  `id Security Systems` int(2) NOT NULL,
  `SystemType` varchar(10) NOT NULL,
  `Activation_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security system`
--

INSERT INTO `security system` (`id Security Systems`, `SystemType`, `Activation_Date`) VALUES
(1, 'Biometric ', '2023-03-01'),
(2, 'Surveillan', '2023-08-17'),
(3, 'Smart Lock', '2023-09-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `security system`
--
ALTER TABLE `security system`
  ADD PRIMARY KEY (`id Security Systems`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
