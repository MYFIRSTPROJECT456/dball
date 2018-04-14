-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2018 at 07:15 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dytest`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `registerid` int(30) NOT NULL,
  `col1` varchar(200) NOT NULL,
  `col2` varchar(200) NOT NULL,
  `col3` varchar(200) NOT NULL,
  `col4` varchar(200) NOT NULL,
  `col5` varchar(200) NOT NULL,
  `col6` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`registerid`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`) VALUES
(1, 'username', 'User Name', 'User Name', '1', '1', '1'),
(2, 'email', 'email', 'Email', '1', '4', '3'),
(3, 'mobileno.', 'mobile no.', 'mobile no.', '1', '3', '4'),
(4, 'description', 'discription', 'Desicription', '2', '1', '3'),
(5, 'password', 'password', 'password', '1', '5', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dynamic`
--

CREATE TABLE `tbl_dynamic` (
  `dynamicid` int(30) NOT NULL,
  `label` varchar(50) NOT NULL,
  `for_label` varchar(50) NOT NULL,
  `input_id` varchar(50) NOT NULL,
  `formname` varchar(50) NOT NULL,
  `placeholder` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `form_default` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dynamic`
--

INSERT INTO `tbl_dynamic` (`dynamicid`, `label`, `for_label`, `input_id`, `formname`, `placeholder`, `type`, `subtype`, `form_default`) VALUES
(1, 'User Name', 'username', 'username', 'uname', 'User Name', 'text', 'readonly', ''),
(2, 'Email', 'email', 'email', 'Email', 'Email Id', 'email', 'null', ''),
(3, 'Mobile No.', 'mobileno', 'mobileno', 'mobile', 'Mobile Number', 'number', 'null', ''),
(4, 'Message', 'message', 'message', 'message', 'Message', 'textarea', 'null', ''),
(5, 'Password', 'pass', 'pass', 'password', '', 'password', 'null', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menuid` int(30) NOT NULL,
  `Menuname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menuid`, `Menuname`) VALUES
(1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menumapping`
--

CREATE TABLE `tbl_menumapping` (
  `menumappingid` int(30) NOT NULL,
  `menuid` int(30) NOT NULL,
  `parameter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menumapping`
--

INSERT INTO `tbl_menumapping` (`menumappingid`, `menuid`, `parameter`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 1, '3'),
(4, 1, '4'),
(5, 1, '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`registerid`);

--
-- Indexes for table `tbl_dynamic`
--
ALTER TABLE `tbl_dynamic`
  ADD PRIMARY KEY (`dynamicid`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `tbl_menumapping`
--
ALTER TABLE `tbl_menumapping`
  ADD PRIMARY KEY (`menumappingid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `registerid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_dynamic`
--
ALTER TABLE `tbl_dynamic`
  MODIFY `dynamicid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menuid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_menumapping`
--
ALTER TABLE `tbl_menumapping`
  MODIFY `menumappingid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
