-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2018 at 07:16 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practisedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cal`
--

CREATE TABLE `cal` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `salary` int(20) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cal`
--

INSERT INTO `cal` (`id`, `name`, `salary`, `gender`) VALUES
(1, 'sam', 400, 'male'),
(2, 'pam', 5400, 'female'),
(3, 'john', 300, 'male'),
(4, 'sara', 8000, 'female'),
(5, 'todd', 5800, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `empid` int(10) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `salary` int(20) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empid`, `ename`, `salary`, `gender`) VALUES
(1, 'ramesh', 10000, 'm'),
(2, 'soni', 120000, 'f'),
(3, 'arun', 120000, 'm'),
(4, 'kavita', 10000, 'f');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `r` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `employeeid` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `managerid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`employeeid`, `name`, `managerid`) VALUES
(1, 'Mike', 3),
(2, 'Rob', 1),
(3, 'Todd', NULL),
(4, 'Ben', 1),
(5, 'Sam', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cal`
--
ALTER TABLE `cal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cal`
--
ALTER TABLE `cal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `employeeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
