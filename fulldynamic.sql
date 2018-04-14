-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2018 at 07:14 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fulldynamic`
--

-- --------------------------------------------------------

--
-- Table structure for table `interfacedata`
--

CREATE TABLE `interfacedata` (
  `iid` int(12) UNSIGNED NOT NULL,
  `for1` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `placeholder` varchar(25) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interfacedata`
--

INSERT INTO `interfacedata` (`iid`, `for1`, `name`, `placeholder`, `type`) VALUES
(1, 'username', 'UserName', 'User Name', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user02`
--

CREATE TABLE `user02` (
  `uid` int(10) NOT NULL,
  `for1` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user02`
--

INSERT INTO `user02` (`uid`, `for1`, `name`, `type`) VALUES
(1, 'username', 'User Name', 'select'),
(2, 'addreass', 'Address', 'textarea'),
(3, 'phone', 'Phone', 'input'),
(4, 'company', 'Company', 'input');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interfacedata`
--
ALTER TABLE `interfacedata`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `user02`
--
ALTER TABLE `user02`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interfacedata`
--
ALTER TABLE `interfacedata`
  MODIFY `iid` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user02`
--
ALTER TABLE `user02`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
