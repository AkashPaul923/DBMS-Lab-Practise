-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 07:14 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--
CREATE DATABASE library;
CREATE TABLE `books` (
  `isbn` varchar(20) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `title`, `author`, `publisher`) VALUES
('102dg', 'ognibina', 'kaji vai', 'kajol bros'),
('120Adb', 'exam kit', 'jani na', 'gyan bitan'),
('250da', 'gaji', 'robi thakur', 'panjeri'),
('25df', 'linear algebra', 'ma majid', 'ist'),
('456de', 'soinik', 'kaji vai', 'kaji bros');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_no` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `office` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_no`, `name`, `office`, `age`) VALUES
(101, 'maruf', 'shankar', 23),
(102, 'sujon', 'dhanmondi 15', 23),
(103, 'onu', 'lake', 23),
(104, 'usama', 'uttara', 23),
(105, 'mominur', 'shankar', 25);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `emp_no` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`emp_no`, `isbn`, `date`) VALUES
(101, '120Adb', '2023-12-16'),
(102, '102dg', '2024-01-21'),
(103, '25df', '2023-02-25'),
(104, '250da', '2023-02-21'),
(105, '456de', '2023-04-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_no`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`emp_no`,`isbn`),
  ADD KEY `isbn` (`isbn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employee` (`emp_no`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `books` (`isbn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
