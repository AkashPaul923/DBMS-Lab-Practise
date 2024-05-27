-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 07:26 PM
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
-- Database: `car_insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `report_number` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
-- Error reading data for table car_insurance.accident: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `car_insurance`.`accident`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `license` varchar(20) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
-- Error reading data for table car_insurance.car: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `car_insurance`.`car`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `driver_id` int(11) NOT NULL,
  `license` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
-- Error reading data for table car_insurance.owns: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `car_insurance`.`owns`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `participate`
--

CREATE TABLE `participate` (
  `driver_id` int(11) NOT NULL,
  `license` varchar(20) NOT NULL,
  `report_number` varchar(20) NOT NULL,
  `damage_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
-- Error reading data for table car_insurance.participate: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `car_insurance`.`participate`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `driver_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
-- Error reading data for table car_insurance.person: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `car_insurance`.`person`&#039; at line 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`report_number`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`license`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`driver_id`,`license`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `participate`
--
ALTER TABLE `participate`
  ADD PRIMARY KEY (`driver_id`,`license`,`report_number`),
  ADD KEY `license` (`license`),
  ADD KEY `report_number` (`report_number`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`driver_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `owns`
--
ALTER TABLE `owns`
  ADD CONSTRAINT `owns_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `person` (`driver_id`),
  ADD CONSTRAINT `owns_ibfk_2` FOREIGN KEY (`license`) REFERENCES `car` (`license`);

--
-- Constraints for table `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `person` (`driver_id`),
  ADD CONSTRAINT `participate_ibfk_2` FOREIGN KEY (`license`) REFERENCES `car` (`license`),
  ADD CONSTRAINT `participate_ibfk_3` FOREIGN KEY (`report_number`) REFERENCES `accident` (`report_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
