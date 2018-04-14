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
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignsubject`
--

CREATE TABLE `assignsubject` (
  `asid` int(10) UNSIGNED NOT NULL,
  `cid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `subjectid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `bid` int(10) UNSIGNED NOT NULL,
  `cid` int(10) NOT NULL,
  `batchname` varchar(20) NOT NULL,
  `startdate` int(12) NOT NULL,
  `enddate` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE `contactdetails` (
  `cdid` int(11) UNSIGNED NOT NULL,
  `parmanentaddress` varchar(200) NOT NULL,
  `presentaddress` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pin` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `phoneno` int(12) NOT NULL,
  `mobileno` int(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `uploadimg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `coursename` varchar(20) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `code` int(10) NOT NULL,
  `minattpercentage` int(5) NOT NULL,
  `attendencetype` enum('Daily','Subject Wise') DEFAULT NULL,
  `totalworkingdays` varchar(20) NOT NULL,
  `syllabusname` enum('GPA','CCA') DEFAULT NULL,
  `courseid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`coursename`, `discription`, `code`, `minattpercentage`, `attendencetype`, `totalworkingdays`, `syllabusname`, `courseid`) VALUES
('deepak', 'hjkasdkhf', 123, 5, 'Daily', '5', 'GPA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `electivesubjectallocation`
--

CREATE TABLE `electivesubjectallocation` (
  `esaid` int(11) UNSIGNED NOT NULL,
  `cid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `subjectid` int(10) NOT NULL,
  `student` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fatherdetails`
--

CREATE TABLE `fatherdetails` (
  `fdid` int(11) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `mobileno` int(12) NOT NULL,
  `job` varchar(30) NOT NULL,
  `aadharno` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lessionplanning`
--

CREATE TABLE `lessionplanning` (
  `lpid` int(10) UNSIGNED NOT NULL,
  `cid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `subjectid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `officialdetails`
--

CREATE TABLE `officialdetails` (
  `odid` int(11) UNSIGNED NOT NULL,
  `academicyear` varchar(15) NOT NULL,
  `registerno` int(12) NOT NULL,
  `joindate` int(15) NOT NULL,
  `course` varchar(20) NOT NULL,
  `batch` int(14) NOT NULL,
  `rollno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `oid` int(11) UNSIGNED NOT NULL,
  `subcategoryid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parentdetails`
--

CREATE TABLE `parentdetails` (
  `pdid` int(11) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `education` varchar(15) NOT NULL,
  `occupation` varchar(25) NOT NULL,
  `income` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(15) NOT NULL,
  `countryid` int(11) NOT NULL,
  `phoneno` int(12) NOT NULL,
  `mobileno` int(12) NOT NULL,
  `emailid` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personaldetails`
--

CREATE TABLE `personaldetails` (
  `pdid` int(11) UNSIGNED NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` int(15) NOT NULL,
  `genderid` int(10) NOT NULL,
  `bloodgroupid` int(10) NOT NULL,
  `birthplace` varchar(35) NOT NULL,
  `nationalityid` int(11) NOT NULL,
  `mothertongue` varchar(20) NOT NULL,
  `scid` int(11) NOT NULL,
  `religionid` int(10) NOT NULL,
  `casteid` int(10) NOT NULL,
  `aadharno` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `previousqulificationdetails`
--

CREATE TABLE `previousqulificationdetails` (
  `pqdid` int(11) UNSIGNED NOT NULL,
  `schoolname` varchar(25) NOT NULL,
  `address` varchar(150) NOT NULL,
  `qulification` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(10) UNSIGNED NOT NULL,
  `roomno` int(10) NOT NULL,
  `roomname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scategory`
--

CREATE TABLE `scategory` (
  `scid` int(11) UNSIGNED NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentlist`
--

CREATE TABLE `studentlist` (
  `slid` int(11) UNSIGNED NOT NULL,
  `courseid` int(11) NOT NULL,
  `batchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjectid` int(10) UNSIGNED NOT NULL,
  `subjectname` varchar(25) NOT NULL,
  `subjectcoded` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjectallocation`
--

CREATE TABLE `subjectallocation` (
  `said` int(10) UNSIGNED NOT NULL,
  `departmentid` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `subjectid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjectallocationimport`
--

CREATE TABLE `subjectallocationimport` (
  `saiid` int(10) UNSIGNED NOT NULL,
  `uploadimg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacherallocation`
--

CREATE TABLE `teacherallocation` (
  `taid` int(11) UNSIGNED NOT NULL,
  `cid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `tid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignsubject`
--
ALTER TABLE `assignsubject`
  ADD PRIMARY KEY (`asid`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`cdid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `electivesubjectallocation`
--
ALTER TABLE `electivesubjectallocation`
  ADD PRIMARY KEY (`esaid`);

--
-- Indexes for table `fatherdetails`
--
ALTER TABLE `fatherdetails`
  ADD PRIMARY KEY (`fdid`);

--
-- Indexes for table `lessionplanning`
--
ALTER TABLE `lessionplanning`
  ADD PRIMARY KEY (`lpid`);

--
-- Indexes for table `officialdetails`
--
ALTER TABLE `officialdetails`
  ADD PRIMARY KEY (`odid`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `parentdetails`
--
ALTER TABLE `parentdetails`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `personaldetails`
--
ALTER TABLE `personaldetails`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `previousqulificationdetails`
--
ALTER TABLE `previousqulificationdetails`
  ADD PRIMARY KEY (`pqdid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `scategory`
--
ALTER TABLE `scategory`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `studentlist`
--
ALTER TABLE `studentlist`
  ADD PRIMARY KEY (`slid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectid`);

--
-- Indexes for table `subjectallocation`
--
ALTER TABLE `subjectallocation`
  ADD PRIMARY KEY (`said`);

--
-- Indexes for table `subjectallocationimport`
--
ALTER TABLE `subjectallocationimport`
  ADD PRIMARY KEY (`saiid`);

--
-- Indexes for table `teacherallocation`
--
ALTER TABLE `teacherallocation`
  ADD PRIMARY KEY (`taid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignsubject`
--
ALTER TABLE `assignsubject`
  MODIFY `asid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `cdid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `electivesubjectallocation`
--
ALTER TABLE `electivesubjectallocation`
  MODIFY `esaid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fatherdetails`
--
ALTER TABLE `fatherdetails`
  MODIFY `fdid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lessionplanning`
--
ALTER TABLE `lessionplanning`
  MODIFY `lpid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `officialdetails`
--
ALTER TABLE `officialdetails`
  MODIFY `odid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `others`
--
ALTER TABLE `others`
  MODIFY `oid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parentdetails`
--
ALTER TABLE `parentdetails`
  MODIFY `pdid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `personaldetails`
--
ALTER TABLE `personaldetails`
  MODIFY `pdid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `previousqulificationdetails`
--
ALTER TABLE `previousqulificationdetails`
  MODIFY `pqdid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scategory`
--
ALTER TABLE `scategory`
  MODIFY `scid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentlist`
--
ALTER TABLE `studentlist`
  MODIFY `slid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjectallocation`
--
ALTER TABLE `subjectallocation`
  MODIFY `said` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjectallocationimport`
--
ALTER TABLE `subjectallocationimport`
  MODIFY `saiid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacherallocation`
--
ALTER TABLE `teacherallocation`
  MODIFY `taid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
