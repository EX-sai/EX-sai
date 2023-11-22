-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Nov 22, 2023 at 10:16 AM
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
-- Table structure for table `marine life`
--

CREATE TABLE `marine life` (
  `Species` varchar(10) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `size` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marine life`
--

INSERT INTO `marine life` (`Species`, `Color`, `size`) VALUES
('Clownfish', 'orange', 3.5),
('Octopus', 'red', 6),
('Sea Turtle', 'Green', 4.5);

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

-- --------------------------------------------------------

--
-- Table structure for table `under_water`
--

CREATE TABLE `under_water` (
  `Home id` int(1) NOT NULL,
  `location` varchar(50) NOT NULL,
  `depath` float DEFAULT NULL,
  `Residents id` int(1) DEFAULT NULL,
  `bokking_status` enum('confrimed','pending','cancelled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `under_water`
--

INSERT INTO `under_water` (`Home id`, `location`, `depath`, `Residents id`, `bokking_status`) VALUES
(1, 'Coral Reef Villa', 15.5, 0, 'confrimed'),
(2, 'Atlantis Manor', 25.3, 1, 'confrimed'),
(3, 'seahorse reterat', 10.2, 2, 'confrimed'),
(4, 'The Maldives)', 16, 3, 'confrimed'),
(5, 'santa fe', 20, 4, 'confrimed');

-- --------------------------------------------------------

--
-- Table structure for table `utilites`
--

CREATE TABLE `utilites` (
  `WaterSupply` varchar(10) NOT NULL,
  `Electricity` tinyint(1) NOT NULL,
  `SewageSystem` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilites`
--

INSERT INTO `utilites` (`WaterSupply`, `Electricity`, `SewageSystem`) VALUES
('Desalinati', 1, 'Biological'),
('Solar Pane', 0, 'Municipal '),
('Tidal Turb', 1, 'Septic Tan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marine life`
--
ALTER TABLE `marine life`
  ADD UNIQUE KEY `Species` (`Species`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`R_id`),
  ADD UNIQUE KEY `phone number` (`phone number`);

--
-- Indexes for table `security system`
--
ALTER TABLE `security system`
  ADD PRIMARY KEY (`id Security Systems`);

--
-- Indexes for table `under_water`
--
ALTER TABLE `under_water`
  ADD PRIMARY KEY (`Home id`),
  ADD UNIQUE KEY `Residents id` (`Residents id`);

--
-- Indexes for table `utilites`
--
ALTER TABLE `utilites`
  ADD UNIQUE KEY `WaterSupply` (`WaterSupply`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
