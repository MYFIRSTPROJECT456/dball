-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2018 at 11:30 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.3-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accesscontrol`
--

CREATE TABLE `tbl_accesscontrol` (
  `coid` int(32) NOT NULL,
  `roleid` int(32) NOT NULL,
  `menuid` varchar(5000) NOT NULL,
  `copy_flg` tinyint(1) NOT NULL DEFAULT '0',
  `csv_flg` tinyint(1) NOT NULL DEFAULT '0',
  `exl_flg` tinyint(1) NOT NULL DEFAULT '0',
  `pdf_flg` tinyint(1) NOT NULL DEFAULT '0',
  `prt_flg` tinyint(1) NOT NULL DEFAULT '0',
  `edt_flg` tinyint(4) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `date_gen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accesscontrol`
--

INSERT INTO `tbl_accesscontrol` (`coid`, `roleid`, `menuid`, `copy_flg`, `csv_flg`, `exl_flg`, `pdf_flg`, `prt_flg`, `edt_flg`, `status`, `date_gen`) VALUES
(14, 37, '2,3,4,5,6,7,9,10', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 38, '2,3,4,5,6,7,9,10', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 39, '2,3,4,5,6,7,9,10', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 40, '', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 41, '2,4,6,9', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 42, '2,3,4,5,6,9', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 43, '2,4', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 44, '2,4', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00'),
(14, 45, '2,4', 0, 0, 0, 0, 0, 0, 0, '2017-03-17 14:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codemaster`
--

CREATE TABLE `tbl_codemaster` (
  `code` int(32) NOT NULL,
  `codename` varchar(500) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `parentcode` int(32) NOT NULL DEFAULT '0',
  `usradd` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(2) DEFAULT '0',
  `crdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_codemaster`
--

INSERT INTO `tbl_codemaster` (`code`, `codename`, `Description`, `parentcode`, `usradd`, `status`, `crdate`) VALUES
(1, 'Documents', 'List of Documents', 0, 0, 0, '2017-11-22 19:53:20'),
(2, 'Task Status', 'Task Satus', 0, 0, 0, '2025-07-17 15:15:00'),
(3, 'Task Group', 'Group of tasks', 0, 0, 0, '2017-11-22 19:53:20'),
(7, 'Role', 'Role', 0, 0, 0, '2025-07-17 15:15:00'),
(10, 'DocumentList', 'Document List', 0, 0, 0, '2025-07-17 15:15:00'),
(11, 'Intervals', 'task intervals', 0, 0, 0, '2017-09-20 12:24:21'),
(14, 'Lead Stage', 'Lead Stage', 0, 0, 0, '2017-12-14 13:34:55'),
(15, 'Products', 'Products', 0, 0, 0, '2017-12-14 13:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codevalue`
--

CREATE TABLE `tbl_codevalue` (
  `cvid` int(32) NOT NULL,
  `cvmasterid` int(32) NOT NULL,
  `cvvalule` varchar(500) NOT NULL,
  `parentid` int(32) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `date_gen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_codevalue`
--

INSERT INTO `tbl_codevalue` (`cvid`, `cvmasterid`, `cvvalule`, `parentid`, `status`, `date_gen`) VALUES
(3, 2, 'Raised', 0, 0, '2007-09-17 12:10:00'),
(4, 2, 'Assigned', 0, 0, '2007-09-17 12:10:00'),
(5, 2, 'WIP', 0, 0, '2007-09-17 12:10:00'),
(6, 2, 'Completed', 0, 0, '2007-09-17 12:10:00'),
(7, 2, 'Force Closed\r\n', 0, 0, '2007-09-17 12:10:00'),
(37, 7, 'Director', 0, 0, '2007-09-17 12:10:00'),
(38, 7, 'Admin', 0, 0, '2007-09-17 12:10:00'),
(39, 7, 'CEO', 0, 0, '2007-09-17 12:10:00'),
(41, 7, 'Account Manager', 0, 0, '2007-09-17 12:10:00'),
(42, 7, 'Project Manager', 0, 0, '2007-09-17 12:10:00'),
(43, 7, 'Project Executive', 0, 0, '2007-09-17 12:10:00'),
(81, 15, 'Company Formation - Pvt LTD', 0, 0, '2017-10-05 13:34:44'),
(83, 15, 'Company Formation - Public LTD', 0, 0, '2017-10-05 13:34:44'),
(179, 10, 'Document 1', 0, 0, '2007-09-17 12:10:00'),
(180, 10, 'Document 2', 0, 0, '2007-09-17 12:10:00'),
(181, 10, 'Document 3', 0, 0, '2007-09-17 12:10:00'),
(182, 10, 'Document 4', 0, 0, '2007-09-17 12:10:00'),
(183, 10, 'Document 5', 0, 0, '2007-09-17 12:10:00'),
(191, 11, 'Daily', 0, 0, '2017-10-02 17:52:02'),
(192, 11, 'Weekly', 0, 0, '2017-10-02 17:52:02'),
(193, 11, 'Fortnightly', 0, 0, '2017-10-02 17:52:02'),
(194, 11, 'Monthly', 0, 0, '2017-10-02 17:52:02'),
(195, 11, 'Quaterly', 0, 0, '2017-10-02 17:52:02'),
(196, 11, 'Half yearly', 0, 0, '2017-10-02 17:52:02'),
(197, 11, 'Yearly', 0, 0, '2017-10-02 17:52:02'),
(198, 11, 'Adhoc', 0, 0, '2017-10-02 17:52:02'),
(205, 14, 'New', 0, 0, '2017-12-14 13:37:55'),
(206, 14, 'Open', 0, 0, '2017-12-14 13:37:55'),
(207, 14, 'Close ', 0, 0, '2017-12-14 13:38:12'),
(208, 14, 'Drop', 0, 0, '2017-12-14 13:38:12'),
(219, 3, 'Task- Company Formation - Pvt LTD', 81, 0, '2017-12-19 04:45:44'),
(220, 3, 'Task- Company Formation - Public LTD', 83, 0, '2017-12-19 04:45:44'),
(241, 3, 'Other-Task', 0, 0, '2017-12-19 04:45:44'),
(245, 10, 'sample doc 6', 0, 0, '2017-12-23 21:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `coid` int(32) NOT NULL,
  `coname` varchar(500) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `guid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`coid`, `coname`, `emailid`, `logo`, `guid`) VALUES
(1, 'SR Consultants', 'support@sfe.com', 'http://steelofab.net/img/logo.jpg', '');

--
-- Triggers `tbl_company`
--
DELIMITER $$
CREATE TRIGGER `company_guid` BEFORE INSERT ON `tbl_company` FOR EACH ROW BEGIN
    IF NEW.guid ='' THEN
  SET NEW.guid = UUID();
    END IF;
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comsetup`
--

CREATE TABLE `tbl_comsetup` (
  `coid` int(5) NOT NULL,
  `coname` varchar(500) NOT NULL,
  `coabbrvation` varchar(5) NOT NULL,
  `coaddress` varchar(500) DEFAULT NULL,
  `cocontactperson` varchar(500) DEFAULT NULL,
  `cologo` varchar(500) DEFAULT NULL,
  `OpenIds` varchar(500) NOT NULL,
  `Closeids` varchar(500) NOT NULL,
  `wipids` varchar(500) NOT NULL,
  `defaultassignto` varchar(500) NOT NULL,
  `notifyto` varchar(500) NOT NULL,
  `flg1` varchar(100) DEFAULT '0',
  `LeadCloseid` varchar(500) DEFAULT '0',
  `flg3` varchar(500) DEFAULT '0',
  `flg4` varchar(500) DEFAULT '0',
  `flg5` varchar(100) DEFAULT '0',
  `flg6` varchar(100) DEFAULT '0',
  `flg7` varchar(100) DEFAULT '0',
  `flg8` varchar(100) DEFAULT '0',
  `flg9` varchar(100) DEFAULT '0',
  `flg10` varchar(100) DEFAULT '0',
  `flg11` varchar(100) DEFAULT '0',
  `flg12` varchar(100) DEFAULT '0',
  `flg13` varchar(100) DEFAULT '0',
  `flg14` varchar(100) DEFAULT '0',
  `flg15` varchar(100) DEFAULT '0',
  `flg16` varchar(100) DEFAULT '0',
  `flg17` varchar(100) DEFAULT '0',
  `flg18` varchar(100) DEFAULT '0',
  `flg19` varchar(100) DEFAULT '0',
  `flg20` varchar(100) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comsetup`
--

INSERT INTO `tbl_comsetup` (`coid`, `coname`, `coabbrvation`, `coaddress`, `cocontactperson`, `cologo`, `OpenIds`, `Closeids`, `wipids`, `defaultassignto`, `notifyto`, `flg1`, `LeadCloseid`, `flg3`, `flg4`, `flg5`, `flg6`, `flg7`, `flg8`, `flg9`, `flg10`, `flg11`, `flg12`, `flg13`, `flg14`, `flg15`, `flg16`, `flg17`, `flg18`, `flg19`, `flg20`, `status`) VALUES
(14, 'SR Consultants', 'SRC', 'Lalit Bafna', 'Bhavin', NULL, '3,4,5', '6,7,112', '2', '40', '1,2,3', '1,2,3,4,5', '14', '207', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '60', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `coid` int(32) NOT NULL,
  `custid` int(32) NOT NULL,
  `sapid` varchar(500) DEFAULT NULL,
  `custname` varchar(5000) NOT NULL,
  `custaddress` varchar(5000) NOT NULL,
  `cp_name` varchar(5000) NOT NULL,
  `cp_email` varchar(5000) NOT NULL,
  `cp_number` varchar(5000) NOT NULL,
  `pwd` varchar(500) NOT NULL,
  `custsts` int(32) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_customers`
--
DELIMITER $$
CREATE TRIGGER `trg_gen_login` AFTER INSERT ON `tbl_customers` FOR EACH ROW INSERT INTO `tbl_login`(`coid`, `enname`, `loginid`, `pwd`, `roleid`, `contact_email`, `contact_mobileno`) VALUES (NEW.coid,NEW.custname,NEW.cp_email,NEW.pwd,40,NEW.cp_email,NEW.cp_number)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_docnumbers`
--

CREATE TABLE `tbl_docnumbers` (
  `refid` int(32) NOT NULL,
  `scrnno` int(32) NOT NULL,
  `fldno` int(32) NOT NULL,
  `pfix` varchar(500) NOT NULL,
  `sep1` varchar(500) NOT NULL,
  `number` int(32) NOT NULL,
  `sep2` varchar(500) NOT NULL,
  `sufix` varchar(500) NOT NULL,
  `entryno` int(32) NOT NULL,
  `reset` tinyint(1) NOT NULL DEFAULT '1',
  `resetfrq` tinyint(1) NOT NULL DEFAULT '1',
  `maxdocnumber` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leads`
--

CREATE TABLE `tbl_leads` (
  `leadid` int(32) NOT NULL,
  `leadname` varchar(500) NOT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `contactno` varchar(500) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `stage` int(32) NOT NULL,
  `allocto` int(32) NOT NULL,
  `products` varchar(500) DEFAULT NULL,
  `nmd` varchar(100) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `refname` varchar(500) DEFAULT NULL,
  `refnumber` varchar(500) DEFAULT NULL,
  `userid` int(32) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `date_gen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_leads`
--
DELIMITER $$
CREATE TRIGGER `buildleadsch` AFTER INSERT ON `tbl_leads` FOR EACH ROW BEGIN
INSERT INTO `tbl_leadsch`
SET  `leadid` = NEW.leadid,
     `stage`  =new.stage , 
	 `allocto` = new.allocto,
	 `products` =new.products,
	  `nmd` = new.nmd,
	   `notes` = new.notes,
	     `refname` = new.refname,
		  `refnumber` = new.refnumber,
		   `userid` = new.userid;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leadsch`
--

CREATE TABLE `tbl_leadsch` (
  `txnid` int(32) NOT NULL,
  `leadid` int(32) NOT NULL,
  `stage` int(32) NOT NULL,
  `allocto` int(32) NOT NULL,
  `products` varchar(500) DEFAULT NULL,
  `nmd` varchar(500) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `refname` varchar(500) DEFAULT NULL,
  `refnumber` varchar(500) DEFAULT NULL,
  `userid` int(32) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `date_gen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_leadsch`
--
DELIMITER $$
CREATE TRIGGER `buildsanc` AFTER INSERT ON `tbl_leadsch` FOR EACH ROW IF(NEW.stage = 207) THEN
    INSERT
INTO
    tbl_sanctions
SET
    txnrefno = NEW.leadid,
    txntype = "LC",
    txndate = NOW(), 
    senderid = NEW.allocto,
    receiverid = "34,38",      
    sanctionremarks = "Request for Review";
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `coid` int(5) NOT NULL,
  `enid` int(32) NOT NULL,
  `enname` varchar(500) NOT NULL,
  `loginid` varchar(500) NOT NULL,
  `pwd` varchar(800) NOT NULL,
  `roleid` varchar(32) NOT NULL,
  `photo_url` varchar(5000) DEFAULT NULL,
  `contact_email` varchar(5000) DEFAULT NULL,
  `contact_mobileno` varchar(5000) DEFAULT NULL,
  `fcmid` varchar(5000) DEFAULT NULL,
  `mgrid` varchar(5000) DEFAULT NULL,
  `plocid` varchar(5000) DEFAULT NULL,
  `date_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`coid`, `enid`, `enname`, `loginid`, `pwd`, `roleid`, `photo_url`, `contact_email`, `contact_mobileno`, `fcmid`, `mgrid`, `plocid`, `date_gen`) VALUES
(14, 35, 'CEO', 'ceo@gmail.com', 'pass@123', '39', NULL, 'ceo@gmail.com', '9769966098', NULL, '0', NULL, '2017-12-21 06:21:47'),
(14, 36, 'Director', 'director@gmail.com', 'pass@123', '37', NULL, 'director@gmail.com', '9769966099', NULL, '0', NULL, '2017-12-21 06:21:47'),
(14, 39, 'Account Manager 1', 'accmgr1@gmail.com', 'pass@123', '41', NULL, 'accmgr1@gmail.com', '9769966102', NULL, '35', NULL, '2017-12-21 06:21:47'),
(14, 40, 'Project Manager 1', 'projectmgr1@gmail.com', 'pass@123', '42', NULL, 'projectmgr1@gmail.com', '9769966103', NULL, '36', NULL, '2017-12-21 06:21:48'),
(14, 46, 'Porject Executive 1', 'projectexe1@gmail.com', 'pass@123', '43', NULL, 'projectexe1@gmail.com', '9769966109', NULL, '39', NULL, '2017-12-21 06:21:48'),
(14, 47, 'Porject Executive 2', 'projectexe2@gmail.com', 'pass@123', '43', NULL, 'projectexe2@gmail.com', '9769966110', NULL, '39', NULL, '2017-12-21 06:21:48'),
(14, 48, 'Porject Executive 3', 'projectexc3@gmail.com', 'pass@123', '43', NULL, 'projectexc3@gmail.com', '9769966111', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 49, 'Porject Executive 4', 'projectexe4@gmail.com', 'pass@123', '43', NULL, 'projectexe4@gmail.com', '9769966112', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 50, 'Porject Executive 5', 'projectexe5@gmail.com', 'pass@123', '43', NULL, 'projectexe5@gmail.com', '9769966113', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 51, 'Project Executive 6', 'projectexe6@gmail.com', 'pass@123', '43', NULL, 'projectexe6@gmail.com', '9769966114', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 52, 'Porject Executive 7', 'projectexe7@gmail.com', 'pass@123', '43', NULL, 'projectexe7@gmail.com', '9769966115', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 53, 'Porject Executive 8', 'projectexe8@gmail.com', 'pass@123', '43', NULL, 'projectexe8@gmail.com', '9769966116', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 54, 'Porject Executive 9', 'projectexe9@gmail.com', 'pass@123', '43', NULL, 'projectexe9@gmail.com', '9769966117', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 55, 'Porject Executive 10', 'projectexe10@gmail.com', 'pass@123', '43', NULL, 'projectexe10@gmail.com', '9769966118', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 56, 'Porject Executive 11', 'projectexe11@gmail.com', 'pass@123', '43', NULL, 'projectexe11@gmail.com', '9769966119', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 57, 'Porject Executive 12', 'projectexe12@gmail.com', 'pass@123', '43', NULL, 'projectexe12@gmail.com', '9769966120', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 58, 'Porject Executive 13', 'projectexe13@gmail.com', 'pass@123', '43', NULL, 'projectexe13@gmail.com', '9769966121', NULL, '40', NULL, '2017-12-21 06:21:48'),
(14, 59, 'Porject Executive 14', 'projectexe14@gmail.com', 'pass@123', '43', NULL, 'projectexe14@gmail.com', '9769966122', NULL, '0', NULL, '2017-12-21 06:21:48'),
(14, 60, 'Porject Executive 15', 'projectexe15@gmail.com', 'pass@123', '43', NULL, 'projectexe15@gmail.com', '9769966123', NULL, '0', NULL, '2017-12-21 06:21:48'),
(14, 61, 'Porject Executive 16', 'projectexe16@gmail.com', 'pass@123', '43', NULL, 'projectexe16@gmail.com', '9769966124', NULL, '0', NULL, '2017-12-21 06:21:48'),
(14, 62, 'admin', 'admin@gmail.com', 'pass@123', '38', NULL, 'admin@gmail.com', '9769966097', NULL, '0', NULL, '2017-12-21 06:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menuid` int(32) NOT NULL,
  `terminal` tinyint(1) NOT NULL DEFAULT '0',
  `menuname` varchar(80) NOT NULL,
  `object` varchar(500) DEFAULT NULL,
  `pmenuid` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `fld_faicon` varchar(100) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `date_gen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menuid`, `terminal`, `menuname`, `object`, `pmenuid`, `seq`, `fld_faicon`, `status`, `date_gen`) VALUES
(2, 0, 'Dashboard', 'calendar', 1, 1, 'fa fa-dashboard', 0, '2017-09-02 17:25:04'),
(3, 0, 'Project List', 'project_list', 3, 3, 'fa fa-tasks', 0, '2017-09-02 17:25:04'),
(4, 0, 'Task List', 'task_list', 4, 4, 'fa fa-list-alt', 0, '2017-09-02 17:25:04'),
(5, 0, 'Task Allocation', 'task_allocation', 5, 5, 'fa fa-tasks', 0, '2017-09-02 17:25:04'),
(6, 0, 'Project Type', 'task_definition', 2, 2, 'fa fa-building-o', 0, '2017-09-02 17:25:04'),
(7, 0, 'User Management', 'usermanagement', 7, 7, 'fa fa-group', 0, '2017-09-02 17:25:04'),
(8, 0, 'Lead List', 'leadlist', 8, 6, 'fa fa-list-ol', 0, '2017-09-02 17:25:04'),
(9, 0, 'Force closure', 'force_closure', 9, 8, 'fa fa-times', 0, '2017-09-02 17:25:04'),
(10, 0, 'Document Generation', 'docgen', 9, 9, 'fa fa-file', 0, '2017-09-02 17:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `coid` int(32) NOT NULL,
  `notify_id` int(32) NOT NULL,
  `senderid` int(32) NOT NULL,
  `receiverid` varchar(500) DEFAULT NULL,
  `fcmid` varchar(5000) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `notify_type` varchar(500) DEFAULT NULL,
  `notify_url` varchar(500) DEFAULT NULL,
  `click_action` varchar(500) DEFAULT NULL,
  `msg` varchar(5000) NOT NULL,
  `data` varchar(5000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projdtls`
--

CREATE TABLE `tbl_projdtls` (
  `coid` int(32) NOT NULL,
  `prjid` int(32) NOT NULL,
  `tskid` int(32) NOT NULL,
  `tskname` varchar(500) NOT NULL,
  `tskdesc` varchar(5000) NOT NULL,
  `tskesthrs` int(32) NOT NULL DEFAULT '1',
  `tskdepid` int(32) DEFAULT NULL,
  `tskdoclist` varchar(500) DEFAULT NULL,
  `assignto` varchar(320) NOT NULL,
  `tsk_curr_status` int(32) NOT NULL,
  `tsk_due_date` varchar(500) DEFAULT NULL,
  `sts` int(32) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_projdtls`
--

INSERT INTO `tbl_projdtls` (`coid`, `prjid`, `tskid`, `tskname`, `tskdesc`, `tskesthrs`, `tskdepid`, `tskdoclist`, `assignto`, `tsk_curr_status`, `tsk_due_date`, `sts`) VALUES
(14, 70, 226, 'Forming this comp', '1st step', 1, NULL, '179', '40', 3, '01/06/2018', 0),
(14, 70, 227, 'now legal documents', 'this requires the doc of the compnay', 1, NULL, '180', '40', 3, '01/06/2018', 0),
(14, 70, 228, 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', 1, NULL, NULL, '40', 3, '01/06/2018', 0),
(14, 71, 229, 'Forming this comp', '1st step', 1, NULL, '179', '40', 3, '01/02/2018', 0),
(14, 71, 230, 'now legal documents', 'this requires the doc of the compnay', 1, NULL, '180', '40', 3, '01/02/2018', 0),
(14, 71, 231, 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', 1, NULL, NULL, '40', 3, '01/02/2018', 0),
(14, 71, 232, 'FInal task', 'FInal task', 1, NULL, '183', '40', 3, '01/02/2018', 0),
(14, 72, 233, 'Compay Formation', 'Forming a Private Limited Company', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 234, 'Name Search', 'Name Search', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 235, 'File Name Registaion', 'File Name Registaion', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 236, 'Collect Documents', 'Collect Documents', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 237, 'File Dirctror Paper', 'File Dirctror Paper', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 238, 'Make Leagal Deed', 'Make Leagal Deed', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 239, 'Open Current Account', 'Open Current Account', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 240, 'Transfer Invenstment Amount', 'Transfer Invenstment Amount', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 241, 'Register Company', 'Register Company', 1, NULL, '', '40', 3, '01/16/2018', 0),
(14, 72, 242, 'FInal', 'FInal task', 1, NULL, '180,183', '40', 3, '01/16/2018', 0),
(14, 1, 248, 'jkhk', 'jhkj', 5, NULL, '', '39', 4, '01/09/2018', 0);

--
-- Triggers `tbl_projdtls`
--
DELIMITER $$
CREATE TRIGGER `trg_gen_tasksch` AFTER INSERT ON `tbl_projdtls` FOR EACH ROW INSERT INTO tbl_task_sch (`coid`, `prjid`, `taskdefid`, `taskname`, `taskDescription`, `assignto`, `assignby`, `estimatehr`, `taskduedate`, `taskstatus`, `task_docs`, `task_depid`) VALUES (NEW.coid,NEW.prjid,NEW.tskid,NEW.tskname,NEW.TskDesc,New.Assignto,1,New.tskesthrs,NEW.tsk_due_date,NEW.tsk_Curr_status,NEW.tskdoclist,NEW.tskdepid)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `coid` int(32) NOT NULL,
  `prjid` int(32) NOT NULL,
  `prjname` varchar(500) NOT NULL,
  `prjdesc` varchar(5000) NOT NULL,
  `startdate` varchar(500) NOT NULL,
  `prjduedate` varchar(100) NOT NULL,
  `sts` tinyint(1) NOT NULL DEFAULT '0',
  `dategen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`coid`, `prjid`, `prjname`, `prjdesc`, `startdate`, `prjduedate`, `sts`, `dategen`) VALUES
(14, 1, 'ADHOC Project ', 'personal tasks', '', '', 0, '2017-12-22 04:47:17'),
(14, 69, 'TestProject', 'AB To try', '01/01/2018', '02/10/2018', 0, '2017-12-26 12:09:31'),
(14, 70, 'Trail Projet', 'Project Train', '12/26/2017', '01/06/2018', 0, '2017-12-26 12:13:25'),
(14, 71, 'sample project 23', 'project desc', '12/29/2017', '01/02/2018', 0, '2017-12-28 08:21:52'),
(14, 72, 'apical', 'new apical innovation', '01/08/2018', '01/16/2018', 0, '2018-01-08 09:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanctions`
--

CREATE TABLE `tbl_sanctions` (
  `sanctionid` int(32) NOT NULL,
  `txnrefno` varchar(500) NOT NULL,
  `txntype` varchar(5000) NOT NULL,
  `txndate` varchar(50) DEFAULT NULL,
  `senderid` int(32) NOT NULL,
  `receiverid` varchar(500) DEFAULT NULL,
  `sanctionstatus` int(2) NOT NULL DEFAULT '0',
  `tat` varchar(100) NOT NULL DEFAULT '0',
  `sanctionremarks` varchar(5000) NOT NULL DEFAULT 'NA',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `dategen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statecity`
--

CREATE TABLE `tbl_statecity` (
  `scid` int(5) NOT NULL,
  `city` varchar(500) DEFAULT NULL,
  `state` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_statecity`
--

INSERT INTO `tbl_statecity` (`scid`, `city`, `state`) VALUES
(1, 'Port Blair', 'Andaman and Nicobar Islands'),
(2, 'Adoni', 'Andhra Pradesh'),
(3, 'Amalapuram', 'Andhra Pradesh'),
(4, 'Anakapalle', 'Andhra Pradesh'),
(5, 'Anantapur', 'Andhra Pradesh'),
(6, 'Bapatla', 'Andhra Pradesh'),
(7, 'Bheemunipatnam', 'Andhra Pradesh'),
(8, 'Bhimavaram', 'Andhra Pradesh'),
(9, 'Bobbili', 'Andhra Pradesh'),
(10, 'Chilakaluripet', 'Andhra Pradesh'),
(11, 'Chirala', 'Andhra Pradesh'),
(12, 'Chittoor', 'Andhra Pradesh'),
(13, 'Dharmavaram', 'Andhra Pradesh'),
(14, 'Eluru', 'Andhra Pradesh'),
(15, 'Gooty', 'Andhra Pradesh'),
(16, 'Gudivada', 'Andhra Pradesh'),
(17, 'Gudur', 'Andhra Pradesh'),
(18, 'Guntakal', 'Andhra Pradesh'),
(19, 'Guntur', 'Andhra Pradesh'),
(20, 'Hindupur', 'Andhra Pradesh'),
(21, 'Jaggaiahpet', 'Andhra Pradesh'),
(22, 'Jammalamadugu', 'Andhra Pradesh'),
(23, 'Kadapa', 'Andhra Pradesh'),
(24, 'Kadiri', 'Andhra Pradesh'),
(25, 'Kakinada', 'Andhra Pradesh'),
(26, 'Kandukur', 'Andhra Pradesh'),
(27, 'Kavali', 'Andhra Pradesh'),
(28, 'Kovvur', 'Andhra Pradesh'),
(29, 'Kurnool', 'Andhra Pradesh'),
(30, 'Macherla', 'Andhra Pradesh'),
(31, 'Machilipatnam', 'Andhra Pradesh'),
(32, 'Madanapalle', 'Andhra Pradesh'),
(33, 'Mandapeta', 'Andhra Pradesh'),
(34, 'Markapur', 'Andhra Pradesh'),
(35, 'Nagari', 'Andhra Pradesh'),
(36, 'Naidupet', 'Andhra Pradesh'),
(37, 'Nandyal', 'Andhra Pradesh'),
(38, 'Narasapuram', 'Andhra Pradesh'),
(39, 'Narasaraopet', 'Andhra Pradesh'),
(40, 'Narsipatnam', 'Andhra Pradesh'),
(41, 'Nellore', 'Andhra Pradesh'),
(42, 'Nidadavole', 'Andhra Pradesh'),
(43, 'Nuzvid', 'Andhra Pradesh'),
(44, 'Ongole', 'Andhra Pradesh'),
(45, 'Palacole', 'Andhra Pradesh'),
(46, 'Palasa Kasibugga', 'Andhra Pradesh'),
(47, 'Parvathipuram', 'Andhra Pradesh'),
(48, 'Pedana', 'Andhra Pradesh'),
(49, 'Peddapuram', 'Andhra Pradesh'),
(50, 'Pithapuram', 'Andhra Pradesh'),
(51, 'Ponnur', 'Andhra Pradesh'),
(52, 'Proddatur', 'Andhra Pradesh'),
(53, 'Punganur', 'Andhra Pradesh'),
(54, 'Puttur', 'Andhra Pradesh'),
(55, 'Rajahmundry', 'Andhra Pradesh'),
(56, 'Rajam', 'Andhra Pradesh'),
(57, 'Rajampet', 'Andhra Pradesh'),
(58, 'Ramachandrapuram', 'Andhra Pradesh'),
(59, 'Rayachoti', 'Andhra Pradesh'),
(60, 'Rayadurg', 'Andhra Pradesh'),
(61, 'Renigunta', 'Andhra Pradesh'),
(62, 'Repalle', 'Andhra Pradesh'),
(63, 'Salur', 'Andhra Pradesh'),
(64, 'Samalkot', 'Andhra Pradesh'),
(65, 'Sattenapalle', 'Andhra Pradesh'),
(66, 'Srikakulam', 'Andhra Pradesh'),
(67, 'Srikalahasti', 'Andhra Pradesh'),
(68, 'Srisailam Project (Right Flank Colony) Township', 'Andhra Pradesh'),
(69, 'Sullurpeta', 'Andhra Pradesh'),
(70, 'Tadepalligudem', 'Andhra Pradesh'),
(71, 'Tadpatri', 'Andhra Pradesh'),
(72, 'Tanuku', 'Andhra Pradesh'),
(73, 'Tenali', 'Andhra Pradesh'),
(74, 'Tirupati', 'Andhra Pradesh'),
(75, 'Tiruvuru', 'Andhra Pradesh'),
(76, 'Tuni', 'Andhra Pradesh'),
(77, 'Uravakonda', 'Andhra Pradesh'),
(78, 'Venkatagiri', 'Andhra Pradesh'),
(79, 'Vijayawada', 'Andhra Pradesh'),
(80, 'Vinukonda', 'Andhra Pradesh'),
(81, 'Visakhapatnam', 'Andhra Pradesh'),
(82, 'Vizianagaram', 'Andhra Pradesh'),
(83, 'Yemmiganur', 'Andhra Pradesh'),
(84, 'Yerraguntla', 'Andhra Pradesh'),
(85, 'Naharlagun', 'Arunachal Pradesh'),
(86, 'Pasighat', 'Arunachal Pradesh'),
(87, 'Barpeta', 'Assam'),
(88, 'Bongaigaon City', 'Assam'),
(89, 'Dhubri', 'Assam'),
(90, 'Dibrugarh', 'Assam'),
(91, 'Diphu', 'Assam'),
(92, 'Goalpara', 'Assam'),
(93, 'Guwahati', 'Assam'),
(94, 'Jorhat', 'Assam'),
(95, 'Karimganj', 'Assam'),
(96, 'Lanka', 'Assam'),
(97, 'Lumding', 'Assam'),
(98, 'Mangaldoi', 'Assam'),
(99, 'Mankachar', 'Assam'),
(100, 'Margherita', 'Assam'),
(101, 'Mariani', 'Assam'),
(102, 'Marigaon', 'Assam'),
(103, 'Nagaon', 'Assam'),
(104, 'Nalbari', 'Assam'),
(105, 'North Lakhimpur', 'Assam'),
(106, 'Rangia', 'Assam'),
(107, 'Sibsagar', 'Assam'),
(108, 'Silapathar', 'Assam'),
(109, 'Silchar', 'Assam'),
(110, 'Tezpur', 'Assam'),
(111, 'Tinsukia', 'Assam'),
(112, 'Araria', 'Bihar'),
(113, 'Arrah', 'Bihar'),
(114, 'Arwal', 'Bihar'),
(115, 'Asarganj', 'Bihar'),
(116, 'Aurangabad', 'Bihar'),
(117, 'Bagaha', 'Bihar'),
(118, 'Barh', 'Bihar'),
(119, 'Begusarai', 'Bihar'),
(120, 'Bettiah', 'Bihar'),
(121, 'BhabUrban Agglomeration', 'Bihar'),
(122, 'Bhagalpur', 'Bihar'),
(123, 'Buxar', 'Bihar'),
(124, 'Chhapra', 'Bihar'),
(125, 'Darbhanga', 'Bihar'),
(126, 'Dehri-on-Sone', 'Bihar'),
(127, 'Dumraon', 'Bihar'),
(128, 'Forbesganj', 'Bihar'),
(129, 'Gaya', 'Bihar'),
(130, 'Gopalganj', 'Bihar'),
(131, 'Hajipur', 'Bihar'),
(132, 'Jamalpur', 'Bihar'),
(133, 'Jamui', 'Bihar'),
(134, 'Jehanabad', 'Bihar'),
(135, 'Katihar', 'Bihar'),
(136, 'Kishanganj', 'Bihar'),
(137, 'Lakhisarai', 'Bihar'),
(138, 'Lalganj', 'Bihar'),
(139, 'Madhepura', 'Bihar'),
(140, 'Madhubani', 'Bihar'),
(141, 'Maharajganj', 'Bihar'),
(142, 'Mahnar Bazar', 'Bihar'),
(143, 'Makhdumpur', 'Bihar'),
(144, 'Maner', 'Bihar'),
(145, 'Manihari', 'Bihar'),
(146, 'Marhaura', 'Bihar'),
(147, 'Masaurhi', 'Bihar'),
(148, 'Mirganj', 'Bihar'),
(149, 'Mokameh', 'Bihar'),
(150, 'Motihari', 'Bihar'),
(151, 'Motipur', 'Bihar'),
(152, 'Munger', 'Bihar'),
(153, 'Murliganj', 'Bihar'),
(154, 'Muzaffarpur', 'Bihar'),
(155, 'Narkatiaganj', 'Bihar'),
(156, 'Naugachhia', 'Bihar'),
(157, 'Nawada', 'Bihar'),
(158, 'Nokha', 'Bihar'),
(159, 'Patna', 'Bihar'),
(160, 'Piro', 'Bihar'),
(161, 'Purnia', 'Bihar'),
(162, 'Rafiganj', 'Bihar'),
(163, 'Rajgir', 'Bihar'),
(164, 'Ramnagar', 'Bihar'),
(165, 'Raxaul Bazar', 'Bihar'),
(166, 'Revelganj', 'Bihar'),
(167, 'Rosera', 'Bihar'),
(168, 'Saharsa', 'Bihar'),
(169, 'Samastipur', 'Bihar'),
(170, 'Sasaram', 'Bihar'),
(171, 'Sheikhpura', 'Bihar'),
(172, 'Sheohar', 'Bihar'),
(173, 'Sherghati', 'Bihar'),
(174, 'Silao', 'Bihar'),
(175, 'Sitamarhi', 'Bihar'),
(176, 'Siwan', 'Bihar'),
(177, 'Sonepur', 'Bihar'),
(178, 'Sugauli', 'Bihar'),
(179, 'Sultanganj', 'Bihar'),
(180, 'Supaul', 'Bihar'),
(181, 'Warisaliganj', 'Bihar'),
(182, 'Chandigarh', 'Chandigarh'),
(183, 'Ambikapur', 'Chhattisgarh'),
(184, 'Bhatapara', 'Chhattisgarh'),
(185, 'Bhilai Nagar', 'Chhattisgarh'),
(186, 'Bilaspur', 'Chhattisgarh'),
(187, 'Chirmiri', 'Chhattisgarh'),
(188, 'Dalli-Rajhara', 'Chhattisgarh'),
(189, 'Dhamtari', 'Chhattisgarh'),
(190, 'Durg', 'Chhattisgarh'),
(191, 'Jagdalpur', 'Chhattisgarh'),
(192, 'Korba', 'Chhattisgarh'),
(193, 'Mahasamund', 'Chhattisgarh'),
(194, 'Manendragarh', 'Chhattisgarh'),
(195, 'Mungeli', 'Chhattisgarh'),
(196, 'Naila Janjgir', 'Chhattisgarh'),
(197, 'Raigarh', 'Chhattisgarh'),
(198, 'Raipur', 'Chhattisgarh'),
(199, 'Rajnandgaon', 'Chhattisgarh'),
(200, 'Sakti', 'Chhattisgarh'),
(201, 'Tilda Newra', 'Chhattisgarh'),
(202, 'Silvassa', 'Dadra and Nagar Haveli'),
(203, 'Delhi', 'Delhi'),
(204, 'New Delhi', 'Delhi'),
(205, 'Mapusa', 'Goa'),
(206, 'Margao', 'Goa'),
(207, 'Marmagao', 'Goa'),
(208, 'Panaji', 'Goa'),
(209, 'Adalaj', 'Gujarat'),
(210, 'Ahmedabad', 'Gujarat'),
(211, 'Amreli', 'Gujarat'),
(212, 'Anand', 'Gujarat'),
(213, 'Anjar', 'Gujarat'),
(214, 'Ankleshwar', 'Gujarat'),
(215, 'Bharuch', 'Gujarat'),
(216, 'Bhavnagar', 'Gujarat'),
(217, 'Bhuj', 'Gujarat'),
(218, 'Chhapra', 'Gujarat'),
(219, 'Deesa', 'Gujarat'),
(220, 'Dhoraji', 'Gujarat'),
(221, 'Godhra', 'Gujarat'),
(222, 'Jamnagar', 'Gujarat'),
(223, 'Kadi', 'Gujarat'),
(224, 'Kapadvanj', 'Gujarat'),
(225, 'Keshod', 'Gujarat'),
(226, 'Khambhat', 'Gujarat'),
(227, 'Lathi', 'Gujarat'),
(228, 'Limbdi', 'Gujarat'),
(229, 'Lunawada', 'Gujarat'),
(230, 'Mahemdabad', 'Gujarat'),
(231, 'Mahesana', 'Gujarat'),
(232, 'Mahuva', 'Gujarat'),
(233, 'Manavadar', 'Gujarat'),
(234, 'Mandvi', 'Gujarat'),
(235, 'Mangrol', 'Gujarat'),
(236, 'Mansa', 'Gujarat'),
(237, 'Modasa', 'Gujarat'),
(238, 'Morvi', 'Gujarat'),
(239, 'Nadiad', 'Gujarat'),
(240, 'Navsari', 'Gujarat'),
(241, 'Padra', 'Gujarat'),
(242, 'Palanpur', 'Gujarat'),
(243, 'Palitana', 'Gujarat'),
(244, 'Pardi', 'Gujarat'),
(245, 'Patan', 'Gujarat'),
(246, 'Petlad', 'Gujarat'),
(247, 'Porbandar', 'Gujarat'),
(248, 'Radhanpur', 'Gujarat'),
(249, 'Rajkot', 'Gujarat'),
(250, 'Rajpipla', 'Gujarat'),
(251, 'Rajula', 'Gujarat'),
(252, 'Ranavav', 'Gujarat'),
(253, 'Rapar', 'Gujarat'),
(254, 'Salaya', 'Gujarat'),
(255, 'Sanand', 'Gujarat'),
(256, 'Savarkundla', 'Gujarat'),
(257, 'Sidhpur', 'Gujarat'),
(258, 'Sihor', 'Gujarat'),
(259, 'Songadh', 'Gujarat'),
(260, 'Surat', 'Gujarat'),
(261, 'Talaja', 'Gujarat'),
(262, 'Thangadh', 'Gujarat'),
(263, 'Tharad', 'Gujarat'),
(264, 'Umbergaon', 'Gujarat'),
(265, 'Umreth', 'Gujarat'),
(266, 'Una', 'Gujarat'),
(267, 'Unjha', 'Gujarat'),
(268, 'Upleta', 'Gujarat'),
(269, 'Vadnagar', 'Gujarat'),
(270, 'Vadodara', 'Gujarat'),
(271, 'Valsad', 'Gujarat'),
(272, 'Vapi', 'Gujarat'),
(273, 'Vapi', 'Gujarat'),
(274, 'Veraval', 'Gujarat'),
(275, 'Vijapur', 'Gujarat'),
(276, 'Viramgam', 'Gujarat'),
(277, 'Visnagar', 'Gujarat'),
(278, 'Vyara', 'Gujarat'),
(279, 'Wadhwan', 'Gujarat'),
(280, 'Wankaner', 'Gujarat'),
(281, 'Bahadurgarh', 'Haryana'),
(282, 'Bhiwani', 'Haryana'),
(283, 'Charkhi Dadri', 'Haryana'),
(284, 'Faridabad', 'Haryana'),
(285, 'Fatehabad', 'Haryana'),
(286, 'Gohana', 'Haryana'),
(287, 'Gurgaon', 'Haryana'),
(288, 'Hansi', 'Haryana'),
(289, 'Hisar', 'Haryana'),
(290, 'Jind', 'Haryana'),
(291, 'Kaithal', 'Haryana'),
(292, 'Karnal', 'Haryana'),
(293, 'Ladwa', 'Haryana'),
(294, 'Mahendragarh', 'Haryana'),
(295, 'Mandi Dabwali', 'Haryana'),
(296, 'Narnaul', 'Haryana'),
(297, 'Narwana', 'Haryana'),
(298, 'Palwal', 'Haryana'),
(299, 'Panchkula', 'Haryana'),
(300, 'Panipat', 'Haryana'),
(301, 'Pehowa', 'Haryana'),
(302, 'Pinjore', 'Haryana'),
(303, 'Rania', 'Haryana'),
(304, 'Ratia', 'Haryana'),
(305, 'Rewari', 'Haryana'),
(306, 'Rohtak', 'Haryana'),
(307, 'Safidon', 'Haryana'),
(308, 'Samalkha', 'Haryana'),
(309, 'Sarsod', 'Haryana'),
(310, 'Shahbad', 'Haryana'),
(311, 'Sirsa', 'Haryana'),
(312, 'Sohna', 'Haryana'),
(313, 'Sonipat', 'Haryana'),
(314, 'Taraori', 'Haryana'),
(315, 'Thanesar', 'Haryana'),
(316, 'Tohana', 'Haryana'),
(317, 'Yamunanagar', 'Haryana'),
(318, 'Mandi', 'Himachal Pradesh'),
(319, 'Nahan', 'Himachal Pradesh'),
(320, 'Palampur', 'Himachal Pradesh'),
(321, 'Shimla', 'Himachal Pradesh'),
(322, 'Solan', 'Himachal Pradesh'),
(323, 'Sundarnagar', 'Himachal Pradesh'),
(324, 'Anantnag', 'Jammu and Kashmir'),
(325, 'Baramula', 'Jammu and Kashmir'),
(326, 'Jammu', 'Jammu and Kashmir'),
(327, 'KathUrban Agglomeration', 'Jammu and Kashmir'),
(328, 'Punch', 'Jammu and Kashmir'),
(329, 'Rajauri', 'Jammu and Kashmir'),
(330, 'Sopore', 'Jammu and Kashmir'),
(331, 'Srinagar', 'Jammu and Kashmir'),
(332, 'Udhampur', 'Jammu and Kashmir'),
(333, 'Adityapur', 'Jharkhand'),
(334, 'Bokaro Steel City', 'Jharkhand'),
(335, 'Chaibasa', 'Jharkhand'),
(336, 'Chatra', 'Jharkhand'),
(337, 'Chirkunda', 'Jharkhand'),
(338, 'Deoghar', 'Jharkhand'),
(339, 'Dhanbad', 'Jharkhand'),
(340, 'Dumka', 'Jharkhand'),
(341, 'Giridih', 'Jharkhand'),
(342, 'Gumia', 'Jharkhand'),
(343, 'Hazaribag', 'Jharkhand'),
(344, 'Jamshedpur', 'Jharkhand'),
(345, 'Jhumri Tilaiya', 'Jharkhand'),
(346, 'Lohardaga', 'Jharkhand'),
(347, 'Madhupur', 'Jharkhand'),
(348, 'Medininagar (Daltonganj)', 'Jharkhand'),
(349, 'Mihijam', 'Jharkhand'),
(350, 'Musabani', 'Jharkhand'),
(351, 'Pakaur', 'Jharkhand'),
(352, 'Patratu', 'Jharkhand'),
(353, 'Phusro', 'Jharkhand'),
(354, 'Ramgarh', 'Jharkhand'),
(355, 'Ranchi', 'Jharkhand'),
(356, 'Sahibganj', 'Jharkhand'),
(357, 'Saunda', 'Jharkhand'),
(358, 'Simdega', 'Jharkhand'),
(359, 'Tenu dam-cum-Kathhara', 'Jharkhand'),
(360, 'Adyar', 'Karnataka'),
(361, 'Afzalpur', 'Karnataka'),
(362, 'Arsikere', 'Karnataka'),
(363, 'Athni', 'Karnataka'),
(364, 'Ballari', 'Karnataka'),
(365, 'Belagavi', 'Karnataka'),
(366, 'Bengaluru', 'Karnataka'),
(367, 'Chikkamagaluru', 'Karnataka'),
(368, 'Davanagere', 'Karnataka'),
(369, 'Gokak', 'Karnataka'),
(370, 'Hubli-Dharwad', 'Karnataka'),
(371, 'Karwar', 'Karnataka'),
(372, 'Kolar', 'Karnataka'),
(373, 'Lakshmeshwar', 'Karnataka'),
(374, 'Lingsugur', 'Karnataka'),
(375, 'Maddur', 'Karnataka'),
(376, 'Madhugiri', 'Karnataka'),
(377, 'Madikeri', 'Karnataka'),
(378, 'Magadi', 'Karnataka'),
(379, 'Mahalingapura', 'Karnataka'),
(380, 'Malavalli', 'Karnataka'),
(381, 'Malur', 'Karnataka'),
(382, 'Mandya', 'Karnataka'),
(383, 'Mangaluru', 'Karnataka'),
(384, 'Manvi', 'Karnataka'),
(385, 'Mudabidri', 'Karnataka'),
(386, 'Mudalagi', 'Karnataka'),
(387, 'Muddebihal', 'Karnataka'),
(388, 'Mudhol', 'Karnataka'),
(389, 'Mulbagal', 'Karnataka'),
(390, 'Mundargi', 'Karnataka'),
(391, 'Nanjangud', 'Karnataka'),
(392, 'Nargund', 'Karnataka'),
(393, 'Navalgund', 'Karnataka'),
(394, 'Nelamangala', 'Karnataka'),
(395, 'Pavagada', 'Karnataka'),
(396, 'Piriyapatna', 'Karnataka'),
(397, 'Puttur', 'Karnataka'),
(398, 'Raayachuru', 'Karnataka'),
(399, 'Rabkavi Banhatti', 'Karnataka'),
(400, 'Ramanagaram', 'Karnataka'),
(401, 'Ramdurg', 'Karnataka'),
(402, 'Ranebennuru', 'Karnataka'),
(403, 'Ranibennur', 'Karnataka'),
(404, 'Robertson Pet', 'Karnataka'),
(405, 'Ron', 'Karnataka'),
(406, 'Sadalagi', 'Karnataka'),
(407, 'Sagara', 'Karnataka'),
(408, 'Sakaleshapura', 'Karnataka'),
(409, 'Sanduru', 'Karnataka'),
(410, 'Sankeshwara', 'Karnataka'),
(411, 'Saundatti-Yellamma', 'Karnataka'),
(412, 'Savanur', 'Karnataka'),
(413, 'Sedam', 'Karnataka'),
(414, 'Shahabad', 'Karnataka'),
(415, 'Shahpur', 'Karnataka'),
(416, 'Shiggaon', 'Karnataka'),
(417, 'Shikaripur', 'Karnataka'),
(418, 'Shivamogga', 'Karnataka'),
(419, 'Shrirangapattana', 'Karnataka'),
(420, 'Sidlaghatta', 'Karnataka'),
(421, 'Sindagi', 'Karnataka'),
(422, 'Sindhagi', 'Karnataka'),
(423, 'Sindhnur', 'Karnataka'),
(424, 'Sira', 'Karnataka'),
(425, 'Sirsi', 'Karnataka'),
(426, 'Siruguppa', 'Karnataka'),
(427, 'Srinivaspur', 'Karnataka'),
(428, 'Surapura', 'Karnataka'),
(429, 'Talikota', 'Karnataka'),
(430, 'Tarikere', 'Karnataka'),
(431, 'Tekkalakote', 'Karnataka'),
(432, 'Terdal', 'Karnataka'),
(433, 'Tiptur', 'Karnataka'),
(434, 'Tumkur', 'Karnataka'),
(435, 'Udupi', 'Karnataka'),
(436, 'Vijayapura', 'Karnataka'),
(437, 'Wadi', 'Karnataka'),
(438, 'Yadgir', 'Karnataka'),
(439, 'Mysore', 'Karnatka'),
(440, 'Adoor', 'Kerala'),
(441, 'Alappuzha', 'Kerala'),
(442, 'Attingal', 'Kerala'),
(443, 'Chalakudy', 'Kerala'),
(444, 'Changanassery', 'Kerala'),
(445, 'Cherthala', 'Kerala'),
(446, 'Chittur-Thathamangalam', 'Kerala'),
(447, 'Guruvayoor', 'Kerala'),
(448, 'Kanhangad', 'Kerala'),
(449, 'Kannur', 'Kerala'),
(450, 'Kasaragod', 'Kerala'),
(451, 'Kayamkulam', 'Kerala'),
(452, 'Kochi', 'Kerala'),
(453, 'Kodungallur', 'Kerala'),
(454, 'Kollam', 'Kerala'),
(455, 'Kottayam', 'Kerala'),
(456, 'Koyilandy', 'Kerala'),
(457, 'Kozhikode', 'Kerala'),
(458, 'Kunnamkulam', 'Kerala'),
(459, 'Malappuram', 'Kerala'),
(460, 'Mattannur', 'Kerala'),
(461, 'Mavelikkara', 'Kerala'),
(462, 'Mavoor', 'Kerala'),
(463, 'Muvattupuzha', 'Kerala'),
(464, 'Nedumangad', 'Kerala'),
(465, 'Neyyattinkara', 'Kerala'),
(466, 'Nilambur', 'Kerala'),
(467, 'Ottappalam', 'Kerala'),
(468, 'Palai', 'Kerala'),
(469, 'Palakkad', 'Kerala'),
(470, 'Panamattom', 'Kerala'),
(471, 'Panniyannur', 'Kerala'),
(472, 'Pappinisseri', 'Kerala'),
(473, 'Paravoor', 'Kerala'),
(474, 'Pathanamthitta', 'Kerala'),
(475, 'Peringathur', 'Kerala'),
(476, 'Perinthalmanna', 'Kerala'),
(477, 'Perumbavoor', 'Kerala'),
(478, 'Ponnani', 'Kerala'),
(479, 'Punalur', 'Kerala'),
(480, 'Puthuppally', 'Kerala'),
(481, 'Shoranur', 'Kerala'),
(482, 'Taliparamba', 'Kerala'),
(483, 'Thiruvalla', 'Kerala'),
(484, 'Thiruvananthapuram', 'Kerala'),
(485, 'Thodupuzha', 'Kerala'),
(486, 'Thrissur', 'Kerala'),
(487, 'Tirur', 'Kerala'),
(488, 'Vaikom', 'Kerala'),
(489, 'Varkala', 'Kerala'),
(490, 'Vatakara', 'Kerala'),
(491, 'Alirajpur', 'Madhya Pradesh'),
(492, 'Ashok Nagar', 'Madhya Pradesh'),
(493, 'Balaghat', 'Madhya Pradesh'),
(494, 'Bhopal', 'Madhya Pradesh'),
(495, 'Ganjbasoda', 'Madhya Pradesh'),
(496, 'Gwalior', 'Madhya Pradesh'),
(497, 'Indore', 'Madhya Pradesh'),
(498, 'Itarsi', 'Madhya Pradesh'),
(499, 'Jabalpur', 'Madhya Pradesh'),
(500, 'Lahar', 'Madhya Pradesh'),
(501, 'Maharajpur', 'Madhya Pradesh'),
(502, 'Mahidpur', 'Madhya Pradesh'),
(503, 'Maihar', 'Madhya Pradesh'),
(504, 'Malaj Khand', 'Madhya Pradesh'),
(505, 'Manasa', 'Madhya Pradesh'),
(506, 'Manawar', 'Madhya Pradesh'),
(507, 'Mandideep', 'Madhya Pradesh'),
(508, 'Mandla', 'Madhya Pradesh'),
(509, 'Mandsaur', 'Madhya Pradesh'),
(510, 'Mauganj', 'Madhya Pradesh'),
(511, 'Mhow Cantonment', 'Madhya Pradesh'),
(512, 'Mhowgaon', 'Madhya Pradesh'),
(513, 'Morena', 'Madhya Pradesh'),
(514, 'Multai', 'Madhya Pradesh'),
(515, 'Mundi', 'Madhya Pradesh'),
(516, 'Murwara (Katni)', 'Madhya Pradesh'),
(517, 'Nagda', 'Madhya Pradesh'),
(518, 'Nainpur', 'Madhya Pradesh'),
(519, 'Narsinghgarh', 'Madhya Pradesh'),
(520, 'Narsinghgarh', 'Madhya Pradesh'),
(521, 'Neemuch', 'Madhya Pradesh'),
(522, 'Nepanagar', 'Madhya Pradesh'),
(523, 'Niwari', 'Madhya Pradesh'),
(524, 'Nowgong', 'Madhya Pradesh'),
(525, 'Nowrozabad (Khodargama)', 'Madhya Pradesh'),
(526, 'Pachore', 'Madhya Pradesh'),
(527, 'Pali', 'Madhya Pradesh'),
(528, 'Panagar', 'Madhya Pradesh'),
(529, 'Pandhurna', 'Madhya Pradesh'),
(530, 'Panna', 'Madhya Pradesh'),
(531, 'Pasan', 'Madhya Pradesh'),
(532, 'Pipariya', 'Madhya Pradesh'),
(533, 'Pithampur', 'Madhya Pradesh'),
(534, 'Porsa', 'Madhya Pradesh'),
(535, 'Prithvipur', 'Madhya Pradesh'),
(536, 'Raghogarh-Vijaypur', 'Madhya Pradesh'),
(537, 'Rahatgarh', 'Madhya Pradesh'),
(538, 'Raisen', 'Madhya Pradesh'),
(539, 'Rajgarh', 'Madhya Pradesh'),
(540, 'Ratlam', 'Madhya Pradesh'),
(541, 'Rau', 'Madhya Pradesh'),
(542, 'Rehli', 'Madhya Pradesh'),
(543, 'Rewa', 'Madhya Pradesh'),
(544, 'Sabalgarh', 'Madhya Pradesh'),
(545, 'Sagar', 'Madhya Pradesh'),
(546, 'Sanawad', 'Madhya Pradesh'),
(547, 'Sarangpur', 'Madhya Pradesh'),
(548, 'Sarni', 'Madhya Pradesh'),
(549, 'Satna', 'Madhya Pradesh'),
(550, 'Sausar', 'Madhya Pradesh'),
(551, 'Sehore', 'Madhya Pradesh'),
(552, 'Sendhwa', 'Madhya Pradesh'),
(553, 'Seoni', 'Madhya Pradesh'),
(554, 'Seoni-Malwa', 'Madhya Pradesh'),
(555, 'Shahdol', 'Madhya Pradesh'),
(556, 'Shajapur', 'Madhya Pradesh'),
(557, 'Shamgarh', 'Madhya Pradesh'),
(558, 'Sheopur', 'Madhya Pradesh'),
(559, 'Shivpuri', 'Madhya Pradesh'),
(560, 'Shujalpur', 'Madhya Pradesh'),
(561, 'Sidhi', 'Madhya Pradesh'),
(562, 'Sihora', 'Madhya Pradesh'),
(563, 'Singrauli', 'Madhya Pradesh'),
(564, 'Sironj', 'Madhya Pradesh'),
(565, 'Sohagpur', 'Madhya Pradesh'),
(566, 'Tarana', 'Madhya Pradesh'),
(567, 'Tikamgarh', 'Madhya Pradesh'),
(568, 'Ujjain', 'Madhya Pradesh'),
(569, 'Umaria', 'Madhya Pradesh'),
(570, 'Vidisha', 'Madhya Pradesh'),
(571, 'Vijaypur', 'Madhya Pradesh'),
(572, 'Wara Seoni', 'Madhya Pradesh'),
(573, 'Achalpur', 'Maharashtra'),
(574, 'Ahmednagar', 'Maharashtra'),
(575, 'Akola', 'Maharashtra'),
(576, 'Akot', 'Maharashtra'),
(577, 'Amalner', 'Maharashtra'),
(578, 'Ambejogai', 'Maharashtra'),
(579, 'Amravati', 'Maharashtra'),
(580, 'Anjangaon', 'Maharashtra'),
(581, 'Arvi', 'Maharashtra'),
(582, 'Aurangabad', 'Maharashtra'),
(583, 'Bhiwandi', 'Maharashtra'),
(584, 'Dhule', 'Maharashtra'),
(585, 'Ichalkaranji', 'Maharashtra'),
(586, 'Kalyan-Dombivali', 'Maharashtra'),
(587, 'Karjat', 'Maharashtra'),
(588, 'Latur', 'Maharashtra'),
(589, 'Loha', 'Maharashtra'),
(590, 'Lonar', 'Maharashtra'),
(591, 'Lonavla', 'Maharashtra'),
(592, 'Mahad', 'Maharashtra'),
(593, 'Malegaon', 'Maharashtra'),
(594, 'Malkapur', 'Maharashtra'),
(595, 'Mangalvedhe', 'Maharashtra'),
(596, 'Mangrulpir', 'Maharashtra'),
(597, 'Manjlegaon', 'Maharashtra'),
(598, 'Manmad', 'Maharashtra'),
(599, 'Manwath', 'Maharashtra'),
(600, 'Mehkar', 'Maharashtra'),
(601, 'Mhaswad', 'Maharashtra'),
(602, 'Mira-Bhayandar', 'Maharashtra'),
(603, 'Morshi', 'Maharashtra'),
(604, 'Mukhed', 'Maharashtra'),
(605, 'Mul', 'Maharashtra'),
(606, 'Mumbai', 'Maharashtra'),
(607, 'Murtijapur', 'Maharashtra'),
(608, 'Nagpur', 'Maharashtra'),
(609, 'Nanded-Waghala', 'Maharashtra'),
(610, 'Nandgaon', 'Maharashtra'),
(611, 'Nandura', 'Maharashtra'),
(612, 'Nandurbar', 'Maharashtra'),
(613, 'Narkhed', 'Maharashtra'),
(614, 'Nashik', 'Maharashtra'),
(615, 'Nawapur', 'Maharashtra'),
(616, 'Nilanga', 'Maharashtra'),
(617, 'Osmanabad', 'Maharashtra'),
(618, 'Ozar', 'Maharashtra'),
(619, 'Pachora', 'Maharashtra'),
(620, 'Paithan', 'Maharashtra'),
(621, 'Palghar', 'Maharashtra'),
(622, 'Pandharkaoda', 'Maharashtra'),
(623, 'Pandharpur', 'Maharashtra'),
(624, 'Panvel', 'Maharashtra'),
(625, 'Parbhani', 'Maharashtra'),
(626, 'Parli', 'Maharashtra'),
(627, 'Partur', 'Maharashtra'),
(628, 'Pathardi', 'Maharashtra'),
(629, 'Pathri', 'Maharashtra'),
(630, 'Patur', 'Maharashtra'),
(631, 'Pauni', 'Maharashtra'),
(632, 'Pen', 'Maharashtra'),
(633, 'Phaltan', 'Maharashtra'),
(634, 'Pulgaon', 'Maharashtra'),
(635, 'Pune', 'Maharashtra'),
(636, 'Purna', 'Maharashtra'),
(637, 'Pusad', 'Maharashtra'),
(638, 'Rahuri', 'Maharashtra'),
(639, 'Rajura', 'Maharashtra'),
(640, 'Ramtek', 'Maharashtra'),
(641, 'Ratnagiri', 'Maharashtra'),
(642, 'Raver', 'Maharashtra'),
(643, 'Risod', 'Maharashtra'),
(644, 'Sailu', 'Maharashtra'),
(645, 'Sangamner', 'Maharashtra'),
(646, 'Sangli', 'Maharashtra'),
(647, 'Sangole', 'Maharashtra'),
(648, 'Sasvad', 'Maharashtra'),
(649, 'Satana', 'Maharashtra'),
(650, 'Satara', 'Maharashtra'),
(651, 'Savner', 'Maharashtra'),
(652, 'Sawantwadi', 'Maharashtra'),
(653, 'Shahade', 'Maharashtra'),
(654, 'Shegaon', 'Maharashtra'),
(655, 'Shendurjana', 'Maharashtra'),
(656, 'Shirdi', 'Maharashtra'),
(657, 'Shirpur-Warwade', 'Maharashtra'),
(658, 'Shirur', 'Maharashtra'),
(659, 'Shrigonda', 'Maharashtra'),
(660, 'Shrirampur', 'Maharashtra'),
(661, 'Sillod', 'Maharashtra'),
(662, 'Sinnar', 'Maharashtra'),
(663, 'Solapur', 'Maharashtra'),
(664, 'Soyagaon', 'Maharashtra'),
(665, 'Talegaon Dabhade', 'Maharashtra'),
(666, 'Talode', 'Maharashtra'),
(667, 'Tasgaon', 'Maharashtra'),
(668, 'Thane', 'Maharashtra'),
(669, 'Tirora', 'Maharashtra'),
(670, 'Tuljapur', 'Maharashtra'),
(671, 'Tumsar', 'Maharashtra'),
(672, 'Uchgaon', 'Maharashtra'),
(673, 'Udgir', 'Maharashtra'),
(674, 'Umarga', 'Maharashtra'),
(675, 'Umarkhed', 'Maharashtra'),
(676, 'Umred', 'Maharashtra'),
(677, 'Uran', 'Maharashtra'),
(678, 'Uran Islampur', 'Maharashtra'),
(679, 'Vadgaon Kasba', 'Maharashtra'),
(680, 'Vaijapur', 'Maharashtra'),
(681, 'Vasai-Virar', 'Maharashtra'),
(682, 'Vita', 'Maharashtra'),
(683, 'Wadgaon Road', 'Maharashtra'),
(684, 'Wai', 'Maharashtra'),
(685, 'Wani', 'Maharashtra'),
(686, 'Wardha', 'Maharashtra'),
(687, 'Warora', 'Maharashtra'),
(688, 'Warud', 'Maharashtra'),
(689, 'Washim', 'Maharashtra'),
(690, 'Yavatmal', 'Maharashtra'),
(691, 'Yawal', 'Maharashtra'),
(692, 'Yevla', 'Maharashtra'),
(693, 'Imphal', 'Manipur'),
(694, 'Lilong', 'Manipur'),
(695, 'Mayang Imphal', 'Manipur'),
(696, 'Thoubal', 'Manipur'),
(697, 'Nongstoin', 'Meghalaya'),
(698, 'Shillong', 'Meghalaya'),
(699, 'Tura', 'Meghalaya'),
(700, 'Aizawl', 'Mizoram'),
(701, 'Lunglei', 'Mizoram'),
(702, 'Saiha', 'Mizoram'),
(703, 'Dimapur', 'Nagaland'),
(704, 'Kohima', 'Nagaland'),
(705, 'Mokokchung', 'Nagaland'),
(706, 'Tuensang', 'Nagaland'),
(707, 'Wokha', 'Nagaland'),
(708, 'Zunheboto', 'Nagaland'),
(709, 'Balangir', 'Odisha'),
(710, 'Baleshwar Town', 'Odisha'),
(711, 'Barbil', 'Odisha'),
(712, 'Bargarh', 'Odisha'),
(713, 'Baripada Town', 'Odisha'),
(714, 'Bhadrak', 'Odisha'),
(715, 'Bhawanipatna', 'Odisha'),
(716, 'Bhubaneswar', 'Odisha'),
(717, 'Brahmapur', 'Odisha'),
(718, 'Byasanagar', 'Odisha'),
(719, 'Cuttack', 'Odisha'),
(720, 'Dhenkanal', 'Odisha'),
(721, 'Jatani', 'Odisha'),
(722, 'Jharsuguda', 'Odisha'),
(723, 'Kendrapara', 'Odisha'),
(724, 'Kendujhar', 'Odisha'),
(725, 'Malkangiri', 'Odisha'),
(726, 'Nabarangapur', 'Odisha'),
(727, 'Paradip', 'Odisha'),
(728, 'Parlakhemundi', 'Odisha'),
(729, 'Pattamundai', 'Odisha'),
(730, 'Phulabani', 'Odisha'),
(731, 'Puri', 'Odisha'),
(732, 'Rairangpur', 'Odisha'),
(733, 'Rajagangapur', 'Odisha'),
(734, 'Raurkela', 'Odisha'),
(735, 'Rayagada', 'Odisha'),
(736, 'Sambalpur', 'Odisha'),
(737, 'Soro', 'Odisha'),
(738, 'Sunabeda', 'Odisha'),
(739, 'Sundargarh', 'Odisha'),
(740, 'Talcher', 'Odisha'),
(741, 'Tarbha', 'Odisha'),
(742, 'Titlagarh', 'Odisha'),
(743, 'Karaikal', 'Puducherry'),
(744, 'Mahe', 'Puducherry'),
(745, 'Pondicherry', 'Puducherry'),
(746, 'Yanam', 'Puducherry'),
(747, 'Amritsar', 'Punjab'),
(748, 'Barnala', 'Punjab'),
(749, 'Batala', 'Punjab'),
(750, 'Bathinda', 'Punjab'),
(751, 'Dhuri', 'Punjab'),
(752, 'Faridkot', 'Punjab'),
(753, 'Fazilka', 'Punjab'),
(754, 'Firozpur', 'Punjab'),
(755, 'Firozpur Cantt.', 'Punjab'),
(756, 'Gobindgarh', 'Punjab'),
(757, 'Gurdaspur', 'Punjab'),
(758, 'Hoshiarpur', 'Punjab'),
(759, 'Jagraon', 'Punjab'),
(760, 'Jalandhar', 'Punjab'),
(761, 'Jalandhar Cantt.', 'Punjab'),
(762, 'Kapurthala', 'Punjab'),
(763, 'Khanna', 'Punjab'),
(764, 'Kharar', 'Punjab'),
(765, 'Kot Kapura', 'Punjab'),
(766, 'Longowal', 'Punjab'),
(767, 'Ludhiana', 'Punjab'),
(768, 'Malerkotla', 'Punjab'),
(769, 'Malout', 'Punjab'),
(770, 'Mansa', 'Punjab'),
(771, 'Moga', 'Punjab'),
(772, 'Mohali', 'Punjab'),
(773, 'Morinda, India', 'Punjab'),
(774, 'Mukerian', 'Punjab'),
(775, 'Muktsar', 'Punjab'),
(776, 'Nabha', 'Punjab'),
(777, 'Nakodar', 'Punjab'),
(778, 'Nangal', 'Punjab'),
(779, 'Nawanshahr', 'Punjab'),
(780, 'Pathankot', 'Punjab'),
(781, 'Patiala', 'Punjab'),
(782, 'Patti', 'Punjab'),
(783, 'Pattran', 'Punjab'),
(784, 'Phagwara', 'Punjab'),
(785, 'Phillaur', 'Punjab'),
(786, 'Qadian', 'Punjab'),
(787, 'Raikot', 'Punjab'),
(788, 'Rajpura', 'Punjab'),
(789, 'Rampura Phul', 'Punjab'),
(790, 'Rupnagar', 'Punjab'),
(791, 'Samana', 'Punjab'),
(792, 'Sangrur', 'Punjab'),
(793, 'Sirhind Fatehgarh Sahib', 'Punjab'),
(794, 'Sujanpur', 'Punjab'),
(795, 'Sunam', 'Punjab'),
(796, 'Talwara', 'Punjab'),
(797, 'Tarn Taran', 'Punjab'),
(798, 'Urmar Tanda', 'Punjab'),
(799, 'Zira', 'Punjab'),
(800, 'Zirakpur', 'Punjab'),
(801, 'Ajmer', 'Rajasthan'),
(802, 'Alwar', 'Rajasthan'),
(803, 'Barmer', 'Rajasthan'),
(804, 'Bharatpur', 'Rajasthan'),
(805, 'Bhilwara', 'Rajasthan'),
(806, 'Bikaner', 'Rajasthan'),
(807, 'Jaipur', 'Rajasthan'),
(808, 'Jodhpur', 'Rajasthan'),
(809, 'Lachhmangarh', 'Rajasthan'),
(810, 'Ladnu', 'Rajasthan'),
(811, 'Lakheri', 'Rajasthan'),
(812, 'Lalsot', 'Rajasthan'),
(813, 'Losal', 'Rajasthan'),
(814, 'Makrana', 'Rajasthan'),
(815, 'Malpura', 'Rajasthan'),
(816, 'Mandalgarh', 'Rajasthan'),
(817, 'Mandawa', 'Rajasthan'),
(818, 'Mangrol', 'Rajasthan'),
(819, 'Merta City', 'Rajasthan'),
(820, 'Mount Abu', 'Rajasthan'),
(821, 'Nadbai', 'Rajasthan'),
(822, 'Nagar', 'Rajasthan'),
(823, 'Nagaur', 'Rajasthan'),
(824, 'Nasirabad', 'Rajasthan'),
(825, 'Nathdwara', 'Rajasthan'),
(826, 'Neem-Ka-Thana', 'Rajasthan'),
(827, 'Nimbahera', 'Rajasthan'),
(828, 'Nohar', 'Rajasthan'),
(829, 'Nokha', 'Rajasthan'),
(830, 'Pali', 'Rajasthan'),
(831, 'Phalodi', 'Rajasthan'),
(832, 'Phulera', 'Rajasthan'),
(833, 'Pilani', 'Rajasthan'),
(834, 'Pilibanga', 'Rajasthan'),
(835, 'Pindwara', 'Rajasthan'),
(836, 'Pipar City', 'Rajasthan'),
(837, 'Prantij', 'Rajasthan'),
(838, 'Pratapgarh', 'Rajasthan'),
(839, 'Raisinghnagar', 'Rajasthan'),
(840, 'Rajakhera', 'Rajasthan'),
(841, 'Rajaldesar', 'Rajasthan'),
(842, 'Rajgarh (Alwar)', 'Rajasthan'),
(843, 'Rajgarh (Churu)', 'Rajasthan'),
(844, 'Rajsamand', 'Rajasthan'),
(845, 'Ramganj Mandi', 'Rajasthan'),
(846, 'Ramngarh', 'Rajasthan'),
(847, 'Ratangarh', 'Rajasthan'),
(848, 'Rawatbhata', 'Rajasthan'),
(849, 'Rawatsar', 'Rajasthan'),
(850, 'Reengus', 'Rajasthan'),
(851, 'Sadri', 'Rajasthan'),
(852, 'Sadulpur', 'Rajasthan'),
(853, 'Sadulshahar', 'Rajasthan'),
(854, 'Sagwara', 'Rajasthan'),
(855, 'Sambhar', 'Rajasthan'),
(856, 'Sanchore', 'Rajasthan'),
(857, 'Sangaria', 'Rajasthan'),
(858, 'Sardarshahar', 'Rajasthan'),
(859, 'Sawai Madhopur', 'Rajasthan'),
(860, 'Shahpura', 'Rajasthan'),
(861, 'Shahpura', 'Rajasthan'),
(862, 'Sheoganj', 'Rajasthan'),
(863, 'Sikar', 'Rajasthan'),
(864, 'Sirohi', 'Rajasthan'),
(865, 'Sojat', 'Rajasthan'),
(866, 'Sri Madhopur', 'Rajasthan'),
(867, 'Sujangarh', 'Rajasthan'),
(868, 'Sumerpur', 'Rajasthan'),
(869, 'Suratgarh', 'Rajasthan'),
(870, 'Takhatgarh', 'Rajasthan'),
(871, 'Taranagar', 'Rajasthan'),
(872, 'Todabhim', 'Rajasthan'),
(873, 'Todaraisingh', 'Rajasthan'),
(874, 'Tonk', 'Rajasthan'),
(875, 'Udaipur', 'Rajasthan'),
(876, 'Udaipurwati', 'Rajasthan'),
(877, 'Vijainagar, Ajmer', 'Rajasthan'),
(878, 'Arakkonam', 'Tamil Nadu'),
(879, 'Aruppukkottai', 'Tamil Nadu'),
(880, 'Chennai', 'Tamil Nadu'),
(881, 'Coimbatore', 'Tamil Nadu'),
(882, 'Erode', 'Tamil Nadu'),
(883, 'Gobichettipalayam', 'Tamil Nadu'),
(884, 'Kancheepuram', 'Tamil Nadu'),
(885, 'Karur', 'Tamil Nadu'),
(886, 'Lalgudi', 'Tamil Nadu'),
(887, 'Madurai', 'Tamil Nadu'),
(888, 'Manachanallur', 'Tamil Nadu'),
(889, 'Nagapattinam', 'Tamil Nadu'),
(890, 'Nagercoil', 'Tamil Nadu'),
(891, 'Namagiripettai', 'Tamil Nadu'),
(892, 'Namakkal', 'Tamil Nadu'),
(893, 'Nandivaram-Guduvancheri', 'Tamil Nadu'),
(894, 'Nanjikottai', 'Tamil Nadu'),
(895, 'Natham', 'Tamil Nadu'),
(896, 'Nellikuppam', 'Tamil Nadu'),
(897, 'Neyveli (TS)', 'Tamil Nadu'),
(898, 'O\' Valley', 'Tamil Nadu'),
(899, 'Oddanchatram', 'Tamil Nadu'),
(900, 'P.N.Patti', 'Tamil Nadu'),
(901, 'Pacode', 'Tamil Nadu'),
(902, 'Padmanabhapuram', 'Tamil Nadu'),
(903, 'Palani', 'Tamil Nadu'),
(904, 'Palladam', 'Tamil Nadu'),
(905, 'Pallapatti', 'Tamil Nadu'),
(906, 'Pallikonda', 'Tamil Nadu'),
(907, 'Panagudi', 'Tamil Nadu'),
(908, 'Panruti', 'Tamil Nadu'),
(909, 'Paramakudi', 'Tamil Nadu'),
(910, 'Parangipettai', 'Tamil Nadu'),
(911, 'Pattukkottai', 'Tamil Nadu'),
(912, 'Perambalur', 'Tamil Nadu'),
(913, 'Peravurani', 'Tamil Nadu'),
(914, 'Periyakulam', 'Tamil Nadu'),
(915, 'Periyasemur', 'Tamil Nadu'),
(916, 'Pernampattu', 'Tamil Nadu'),
(917, 'Pollachi', 'Tamil Nadu'),
(918, 'Polur', 'Tamil Nadu'),
(919, 'Ponneri', 'Tamil Nadu'),
(920, 'Pudukkottai', 'Tamil Nadu'),
(921, 'Pudupattinam', 'Tamil Nadu'),
(922, 'Puliyankudi', 'Tamil Nadu'),
(923, 'Punjaipugalur', 'Tamil Nadu'),
(924, 'Rajapalayam', 'Tamil Nadu'),
(925, 'Ramanathapuram', 'Tamil Nadu'),
(926, 'Rameshwaram', 'Tamil Nadu'),
(927, 'Ranipet', 'Tamil Nadu'),
(928, 'Rasipuram', 'Tamil Nadu'),
(929, 'Salem', 'Tamil Nadu'),
(930, 'Sankarankovil', 'Tamil Nadu'),
(931, 'Sankari', 'Tamil Nadu'),
(932, 'Sathyamangalam', 'Tamil Nadu'),
(933, 'Sattur', 'Tamil Nadu'),
(934, 'Shenkottai', 'Tamil Nadu'),
(935, 'Sholavandan', 'Tamil Nadu'),
(936, 'Sholingur', 'Tamil Nadu'),
(937, 'Sirkali', 'Tamil Nadu'),
(938, 'Sivaganga', 'Tamil Nadu'),
(939, 'Sivagiri', 'Tamil Nadu'),
(940, 'Sivakasi', 'Tamil Nadu'),
(941, 'Srivilliputhur', 'Tamil Nadu'),
(942, 'Surandai', 'Tamil Nadu'),
(943, 'Suriyampalayam', 'Tamil Nadu'),
(944, 'Tenkasi', 'Tamil Nadu'),
(945, 'Thammampatti', 'Tamil Nadu'),
(946, 'Thanjavur', 'Tamil Nadu'),
(947, 'Tharamangalam', 'Tamil Nadu'),
(948, 'Tharangambadi', 'Tamil Nadu'),
(949, 'Theni Allinagaram', 'Tamil Nadu'),
(950, 'Thirumangalam', 'Tamil Nadu'),
(951, 'Thirupuvanam', 'Tamil Nadu'),
(952, 'Thiruthuraipoondi', 'Tamil Nadu'),
(953, 'Thiruvallur', 'Tamil Nadu'),
(954, 'Thiruvarur', 'Tamil Nadu'),
(955, 'Thuraiyur', 'Tamil Nadu'),
(956, 'Tindivanam', 'Tamil Nadu'),
(957, 'Tiruchendur', 'Tamil Nadu'),
(958, 'Tiruchengode', 'Tamil Nadu'),
(959, 'Tiruchirappalli', 'Tamil Nadu'),
(960, 'Tirukalukundram', 'Tamil Nadu'),
(961, 'Tirukkoyilur', 'Tamil Nadu'),
(962, 'Tirunelveli', 'Tamil Nadu'),
(963, 'Tirupathur', 'Tamil Nadu'),
(964, 'Tirupathur', 'Tamil Nadu'),
(965, 'Tiruppur', 'Tamil Nadu'),
(966, 'Tiruttani', 'Tamil Nadu'),
(967, 'Tiruvannamalai', 'Tamil Nadu'),
(968, 'Tiruvethipuram', 'Tamil Nadu'),
(969, 'Tittakudi', 'Tamil Nadu'),
(970, 'Udhagamandalam', 'Tamil Nadu'),
(971, 'Udumalaipettai', 'Tamil Nadu'),
(972, 'Unnamalaikadai', 'Tamil Nadu'),
(973, 'Usilampatti', 'Tamil Nadu'),
(974, 'Uthamapalayam', 'Tamil Nadu'),
(975, 'Uthiramerur', 'Tamil Nadu'),
(976, 'Vadakkuvalliyur', 'Tamil Nadu'),
(977, 'Vadalur', 'Tamil Nadu'),
(978, 'Vadipatti', 'Tamil Nadu'),
(979, 'Valparai', 'Tamil Nadu'),
(980, 'Vandavasi', 'Tamil Nadu'),
(981, 'Vaniyambadi', 'Tamil Nadu'),
(982, 'Vedaranyam', 'Tamil Nadu'),
(983, 'Vellakoil', 'Tamil Nadu'),
(984, 'Vellore', 'Tamil Nadu'),
(985, 'Vikramasingapuram', 'Tamil Nadu'),
(986, 'Viluppuram', 'Tamil Nadu'),
(987, 'Virudhachalam', 'Tamil Nadu'),
(988, 'Virudhunagar', 'Tamil Nadu'),
(989, 'Viswanatham', 'Tamil Nadu'),
(990, 'Adilabad', 'Telangana'),
(991, 'Bellampalle', 'Telangana'),
(992, 'Bhadrachalam', 'Telangana'),
(993, 'Bhainsa', 'Telangana'),
(994, 'Bhongir', 'Telangana'),
(995, 'Bodhan', 'Telangana'),
(996, 'Farooqnagar', 'Telangana'),
(997, 'Gadwal', 'Telangana'),
(998, 'Hyderabad', 'Telangana'),
(999, 'Jagtial', 'Telangana'),
(1000, 'Jangaon', 'Telangana'),
(1001, 'Kagaznagar', 'Telangana'),
(1002, 'Kamareddy', 'Telangana'),
(1003, 'Karimnagar', 'Telangana'),
(1004, 'Khammam', 'Telangana'),
(1005, 'Koratla', 'Telangana'),
(1006, 'Kothagudem', 'Telangana'),
(1007, 'Kyathampalle', 'Telangana'),
(1008, 'Mahbubnagar', 'Telangana'),
(1009, 'Mancherial', 'Telangana'),
(1010, 'Mandamarri', 'Telangana'),
(1011, 'Manuguru', 'Telangana'),
(1012, 'Medak', 'Telangana'),
(1013, 'Miryalaguda', 'Telangana'),
(1014, 'Nagarkurnool', 'Telangana'),
(1015, 'Narayanpet', 'Telangana'),
(1016, 'Nirmal', 'Telangana'),
(1017, 'Nizamabad', 'Telangana'),
(1018, 'Palwancha', 'Telangana'),
(1019, 'Ramagundam', 'Telangana'),
(1020, 'Sadasivpet', 'Telangana'),
(1021, 'Sangareddy', 'Telangana'),
(1022, 'Siddipet', 'Telangana'),
(1023, 'Sircilla', 'Telangana'),
(1024, 'Suryapet', 'Telangana'),
(1025, 'Tandur', 'Telangana'),
(1026, 'Vikarabad', 'Telangana'),
(1027, 'Wanaparthy', 'Telangana'),
(1028, 'Warangal', 'Telangana'),
(1029, 'Yellandu', 'Telangana'),
(1030, 'Agartala', 'Tripura'),
(1031, 'Belonia', 'Tripura'),
(1032, 'Dharmanagar', 'Tripura'),
(1033, 'Kailasahar', 'Tripura'),
(1034, 'Khowai', 'Tripura'),
(1035, 'Pratapgarh', 'Tripura'),
(1036, 'Udaipur', 'Tripura'),
(1037, 'Achhnera', 'Uttar Pradesh'),
(1038, 'Agra', 'Uttar Pradesh'),
(1039, 'Aligarh', 'Uttar Pradesh'),
(1040, 'Allahabad', 'Uttar Pradesh'),
(1041, 'Amroha', 'Uttar Pradesh'),
(1042, 'Azamgarh', 'Uttar Pradesh'),
(1043, 'Bahraich', 'Uttar Pradesh'),
(1044, 'Chandausi', 'Uttar Pradesh'),
(1045, 'Etawah', 'Uttar Pradesh'),
(1046, 'Fatehpur Sikri', 'Uttar Pradesh'),
(1047, 'Firozabad', 'Uttar Pradesh'),
(1048, 'Hapur', 'Uttar Pradesh'),
(1049, 'Hardoi ', 'Uttar Pradesh'),
(1050, 'Jhansi', 'Uttar Pradesh'),
(1051, 'Kalpi', 'Uttar Pradesh'),
(1052, 'Kanpur', 'Uttar Pradesh'),
(1053, 'Khair', 'Uttar Pradesh'),
(1054, 'Laharpur', 'Uttar Pradesh'),
(1055, 'Lakhimpur', 'Uttar Pradesh'),
(1056, 'Lal Gopalganj Nindaura', 'Uttar Pradesh'),
(1057, 'Lalganj', 'Uttar Pradesh'),
(1058, 'Lalitpur', 'Uttar Pradesh'),
(1059, 'Lar', 'Uttar Pradesh'),
(1060, 'Loni', 'Uttar Pradesh'),
(1061, 'Lucknow', 'Uttar Pradesh'),
(1062, 'Mathura', 'Uttar Pradesh'),
(1063, 'Meerut', 'Uttar Pradesh'),
(1064, 'Modinagar', 'Uttar Pradesh'),
(1065, 'Moradabad', 'Uttar Pradesh'),
(1066, 'Nagina', 'Uttar Pradesh'),
(1067, 'Najibabad', 'Uttar Pradesh'),
(1068, 'Nakur', 'Uttar Pradesh'),
(1069, 'Nanpara', 'Uttar Pradesh'),
(1070, 'Naraura', 'Uttar Pradesh'),
(1071, 'Naugawan Sadat', 'Uttar Pradesh'),
(1072, 'Nautanwa', 'Uttar Pradesh'),
(1073, 'Nawabganj', 'Uttar Pradesh'),
(1074, 'Nehtaur', 'Uttar Pradesh'),
(1075, 'Niwai', 'Uttar Pradesh'),
(1076, 'Noida', 'Uttar Pradesh'),
(1077, 'Noorpur', 'Uttar Pradesh'),
(1078, 'Obra', 'Uttar Pradesh'),
(1079, 'Orai', 'Uttar Pradesh'),
(1080, 'Padrauna', 'Uttar Pradesh'),
(1081, 'Palia Kalan', 'Uttar Pradesh'),
(1082, 'Parasi', 'Uttar Pradesh'),
(1083, 'Phulpur', 'Uttar Pradesh'),
(1084, 'Pihani', 'Uttar Pradesh'),
(1085, 'Pilibhit', 'Uttar Pradesh'),
(1086, 'Pilkhuwa', 'Uttar Pradesh'),
(1087, 'Powayan', 'Uttar Pradesh'),
(1088, 'Pukhrayan', 'Uttar Pradesh'),
(1089, 'Puranpur', 'Uttar Pradesh'),
(1090, 'PurqUrban Agglomerationzi', 'Uttar Pradesh'),
(1091, 'Purwa', 'Uttar Pradesh'),
(1092, 'Rae Bareli', 'Uttar Pradesh'),
(1093, 'Rampur', 'Uttar Pradesh'),
(1094, 'Rampur Maniharan', 'Uttar Pradesh'),
(1095, 'Rasra', 'Uttar Pradesh'),
(1096, 'Rath', 'Uttar Pradesh'),
(1097, 'Renukoot', 'Uttar Pradesh'),
(1098, 'Reoti', 'Uttar Pradesh'),
(1099, 'Robertsganj', 'Uttar Pradesh'),
(1100, 'Rudauli', 'Uttar Pradesh'),
(1101, 'Rudrapur', 'Uttar Pradesh'),
(1102, 'Sadabad', 'Uttar Pradesh'),
(1103, 'Safipur', 'Uttar Pradesh'),
(1104, 'Saharanpur', 'Uttar Pradesh'),
(1105, 'Sahaspur', 'Uttar Pradesh'),
(1106, 'Sahaswan', 'Uttar Pradesh'),
(1107, 'Sahawar', 'Uttar Pradesh'),
(1108, 'Sahjanwa', 'Uttar Pradesh'),
(1109, 'Saidpur', 'Uttar Pradesh'),
(1110, 'Sambhal', 'Uttar Pradesh'),
(1111, 'Samdhan', 'Uttar Pradesh'),
(1112, 'Samthar', 'Uttar Pradesh'),
(1113, 'Sandi', 'Uttar Pradesh'),
(1114, 'Sandila', 'Uttar Pradesh'),
(1115, 'Sardhana', 'Uttar Pradesh'),
(1116, 'Seohara', 'Uttar Pradesh'),
(1117, 'Shahabad, Hardoi', 'Uttar Pradesh'),
(1118, 'Shahabad, Rampur', 'Uttar Pradesh'),
(1119, 'Shahganj', 'Uttar Pradesh'),
(1120, 'Shahjahanpur', 'Uttar Pradesh'),
(1121, 'Shamli', 'Uttar Pradesh'),
(1122, 'Shamsabad, Agra', 'Uttar Pradesh'),
(1123, 'Shamsabad, Farrukhabad', 'Uttar Pradesh'),
(1124, 'Sherkot', 'Uttar Pradesh'),
(1125, 'Shikarpur, Bulandshahr', 'Uttar Pradesh'),
(1126, 'Shikohabad', 'Uttar Pradesh'),
(1127, 'Shishgarh', 'Uttar Pradesh'),
(1128, 'Siana', 'Uttar Pradesh'),
(1129, 'Sikanderpur', 'Uttar Pradesh'),
(1130, 'Sikandra Rao', 'Uttar Pradesh'),
(1131, 'Sikandrabad', 'Uttar Pradesh'),
(1132, 'Sirsaganj', 'Uttar Pradesh'),
(1133, 'Sirsi', 'Uttar Pradesh'),
(1134, 'Sitapur', 'Uttar Pradesh'),
(1135, 'Soron', 'Uttar Pradesh'),
(1136, 'Sultanpur', 'Uttar Pradesh'),
(1137, 'Sumerpur', 'Uttar Pradesh'),
(1138, 'SUrban Agglomerationr', 'Uttar Pradesh'),
(1139, 'Tanda', 'Uttar Pradesh'),
(1140, 'Thakurdwara', 'Uttar Pradesh'),
(1141, 'Thana Bhawan', 'Uttar Pradesh'),
(1142, 'Tilhar', 'Uttar Pradesh'),
(1143, 'Tirwaganj', 'Uttar Pradesh'),
(1144, 'Tulsipur', 'Uttar Pradesh'),
(1145, 'Tundla', 'Uttar Pradesh'),
(1146, 'Ujhani', 'Uttar Pradesh'),
(1147, 'Unnao', 'Uttar Pradesh'),
(1148, 'Utraula', 'Uttar Pradesh'),
(1149, 'Varanasi', 'Uttar Pradesh'),
(1150, 'Vrindavan', 'Uttar Pradesh'),
(1151, 'Warhapur', 'Uttar Pradesh'),
(1152, 'Zaidpur', 'Uttar Pradesh'),
(1153, 'Zamania', 'Uttar Pradesh'),
(1154, 'Bageshwar', 'Uttarakhand'),
(1155, 'Dehradun', 'Uttarakhand'),
(1156, 'Haldwani-cum-Kathgodam', 'Uttarakhand'),
(1157, 'Hardwar', 'Uttarakhand'),
(1158, 'Kashipur', 'Uttarakhand'),
(1159, 'Manglaur', 'Uttarakhand'),
(1160, 'Mussoorie', 'Uttarakhand'),
(1161, 'Nagla', 'Uttarakhand'),
(1162, 'Nainital', 'Uttarakhand'),
(1163, 'Pauri', 'Uttarakhand'),
(1164, 'Pithoragarh', 'Uttarakhand'),
(1165, 'Ramnagar', 'Uttarakhand'),
(1166, 'Rishikesh', 'Uttarakhand'),
(1167, 'Roorkee', 'Uttarakhand'),
(1168, 'Rudrapur', 'Uttarakhand'),
(1169, 'Sitarganj', 'Uttarakhand'),
(1170, 'Srinagar', 'Uttarakhand'),
(1171, 'Tehri', 'Uttarakhand'),
(1172, 'Adra', 'West Bengal'),
(1173, 'AlipurdUrban Agglomerationr', 'West Bengal'),
(1174, 'Arambagh', 'West Bengal'),
(1175, 'Asansol', 'West Bengal'),
(1176, 'Baharampur', 'West Bengal'),
(1177, 'Balurghat', 'West Bengal'),
(1178, 'Bankura', 'West Bengal'),
(1179, 'Darjiling', 'West Bengal'),
(1180, 'English Bazar', 'West Bengal'),
(1181, 'Gangarampur', 'West Bengal'),
(1182, 'Habra', 'West Bengal'),
(1183, 'Hugli-Chinsurah', 'West Bengal'),
(1184, 'Jalpaiguri', 'West Bengal'),
(1185, 'Jhargram', 'West Bengal'),
(1186, 'Kalimpong', 'West Bengal'),
(1187, 'Kharagpur', 'West Bengal'),
(1188, 'Kolkata', 'West Bengal'),
(1189, 'Mainaguri', 'West Bengal'),
(1190, 'Malda', 'West Bengal'),
(1191, 'Mathabhanga', 'West Bengal'),
(1192, 'Medinipur', 'West Bengal'),
(1193, 'Memari', 'West Bengal'),
(1194, 'Monoharpur', 'West Bengal'),
(1195, 'Murshidabad', 'West Bengal'),
(1196, 'Nabadwip', 'West Bengal'),
(1197, 'Naihati', 'West Bengal'),
(1198, 'Panchla', 'West Bengal'),
(1199, 'PandUrban Agglomeration', 'West Bengal'),
(1200, 'Paschim Punropara', 'West Bengal'),
(1201, 'Purulia', 'West Bengal'),
(1202, 'Raghunathganj', 'West Bengal'),
(1203, 'Raghunathpur', 'West Bengal'),
(1204, 'Raiganj', 'West Bengal'),
(1205, 'Rampurhat', 'West Bengal'),
(1206, 'Ranaghat', 'West Bengal'),
(1207, 'Sainthia', 'West Bengal'),
(1208, 'Santipur', 'West Bengal'),
(1209, 'Siliguri', 'West Bengal'),
(1210, 'Sonamukhi', 'West Bengal'),
(1211, 'Srirampore', 'West Bengal'),
(1212, 'Suri', 'West Bengal'),
(1213, 'Taki', 'West Bengal'),
(1214, 'Tamluk', 'West Bengal'),
(1215, 'Tarakeswar', 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_def`
--

CREATE TABLE `tbl_task_def` (
  `coid` int(32) NOT NULL,
  `tdefid` int(32) NOT NULL,
  `tdefname` varchar(500) NOT NULL,
  `tdefdesc` varchar(5000) NOT NULL,
  `tdefsubtsk` tinyint(1) NOT NULL DEFAULT '0',
  `tdefesthrs` int(32) NOT NULL DEFAULT '1',
  `tdefrecurr` int(32) DEFAULT '0',
  `tdefsdte` varchar(500) DEFAULT NULL,
  `tdefedte` varchar(500) DEFAULT NULL,
  `tdefdocflg` int(32) NOT NULL DEFAULT '0',
  `tdefparentid` varchar(32) DEFAULT NULL,
  `tdefdoclist` varchar(5000) DEFAULT NULL,
  `tsk_per` int(3) NOT NULL DEFAULT '0',
  `tsk_grp` int(32) NOT NULL,
  `prdid` int(32) DEFAULT '0',
  `sts` int(32) NOT NULL DEFAULT '0',
  `dategen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_task_def`
--

INSERT INTO `tbl_task_def` (`coid`, `tdefid`, `tdefname`, `tdefdesc`, `tdefsubtsk`, `tdefesthrs`, `tdefrecurr`, `tdefsdte`, `tdefedte`, `tdefdocflg`, `tdefparentid`, `tdefdoclist`, `tsk_per`, `tsk_grp`, `prdid`, `sts`, `dategen`) VALUES
(14, 1, 'Compay Formation', 'Forming a Private Limited Company', 1, 200, 0, NULL, NULL, 1, '0', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 2, 'Name Search', 'Name Search', 1, 10, 0, NULL, NULL, 0, '1', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 3, 'File Name Registaion', 'File Name Registaion', 0, 20, 0, NULL, NULL, 1, '2', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 4, 'Collect Documents', 'Collect Documents', 0, 10, 0, NULL, NULL, 1, '0', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 5, 'File Dirctror Paper', 'File Dirctror Paper', 0, 20, 0, NULL, NULL, 1, '3', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 6, 'Make Leagal Deed', 'Make Leagal Deed', 0, 30, 0, NULL, NULL, 1, '5', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 7, 'Open Current Account', 'Open Current Account', 1, 20, 0, NULL, NULL, 0, '9', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 8, 'Transfer Invenstment Amount', 'Transfer Invenstment Amount', 0, 10, 0, NULL, NULL, 0, '7', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 9, 'Register Company', 'Register Company', 0, 10, 0, NULL, NULL, 1, '6', '', 10, 219, 0, 0, '2022-11-17 13:41:00'),
(14, 53, 'Forming this comp', '1st step', 0, 1, 0, NULL, NULL, 0, '0', '179', 0, 220, 0, 0, '2017-12-23 15:11:31'),
(14, 54, 'now legal documents', 'this requires the doc of the compnay', 0, 7, 0, NULL, NULL, 0, '53', '180', 0, 220, 0, 0, '2017-12-23 15:12:05'),
(14, 55, 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', 0, 5, 0, NULL, NULL, 0, '54', NULL, 0, 220, 0, 0, '2017-12-23 15:13:57'),
(14, 56, 'FInal task', 'FInal task', 0, 45, 0, NULL, NULL, 0, '55', '183', 0, 220, 0, 0, '2017-12-28 06:02:47'),
(14, 57, 'FInal', 'FInal task', 0, 90, 0, NULL, NULL, 0, '9', '180,183', 0, 219, 0, 0, '2017-12-28 06:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_sch`
--

CREATE TABLE `tbl_task_sch` (
  `coid` int(32) NOT NULL,
  `prjid` int(32) NOT NULL,
  `taskdefid` int(32) DEFAULT NULL,
  `tasksrno` int(32) NOT NULL,
  `prvtsksrno` varchar(32) NOT NULL DEFAULT '0',
  `taskname` varchar(500) NOT NULL,
  `taskDescription` varchar(5000) NOT NULL,
  `assignto` varchar(320) DEFAULT NULL,
  `assignby` int(32) NOT NULL DEFAULT '2',
  `estimatehr` int(32) NOT NULL DEFAULT '0',
  `taskduedate` varchar(500) DEFAULT NULL,
  `taskstatus` int(2) NOT NULL DEFAULT '3',
  `TaskNotes` varchar(5000) DEFAULT NULL,
  `tasktimespent` int(32) NOT NULL DEFAULT '0',
  `task_docs` varchar(500) DEFAULT NULL,
  `task_depid` varchar(32) DEFAULT NULL,
  `sts` int(2) NOT NULL DEFAULT '0',
  `dategen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_task_sch`
--

INSERT INTO `tbl_task_sch` (`coid`, `prjid`, `taskdefid`, `tasksrno`, `prvtsksrno`, `taskname`, `taskDescription`, `assignto`, `assignby`, `estimatehr`, `taskduedate`, `taskstatus`, `TaskNotes`, `tasktimespent`, `task_docs`, `task_depid`, `sts`, `dategen`) VALUES
(14, 70, 226, 278, '0', 'Forming this comp', '1st step', '40', 35, 1, '01/06/2018', 7, 'asdfafd', 0, '179', NULL, -1, '2017-12-26 12:23:09'),
(14, 70, 227, 279, '0', 'now legal documents', 'this requires the doc of the compnay', '40', 35, 1, '01/06/2018', 7, 'asdfafd', 0, '180', NULL, -1, '2017-12-26 12:23:24'),
(14, 70, 228, 280, '0', 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', '40', 35, 1, '01/06/2018', 7, 'asdfafd', 0, NULL, NULL, -1, '2017-12-26 12:23:45'),
(14, 70, NULL, 281, '278', 'Forming this comp', '1st step', '48,49', 40, 1, '01/06/2018', 7, NULL, 0, '179', NULL, -1, '2017-12-28 05:56:53'),
(14, 70, NULL, 282, '279', 'now legal documents', 'this requires the doc of the compnay', '50,51', 40, 1, '01/06/2018', 7, NULL, 0, '180', NULL, -1, '2017-12-28 05:57:42'),
(14, 70, NULL, 283, '280', 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', '51,52', 40, 1, '01/06/2018', 7, NULL, 0, '180', NULL, -1, '2017-12-27 06:27:43'),
(14, 69, NULL, 284, '0', 'test task', 'test', '48', 40, 20, '12/29/2017', 4, NULL, 0, '179', NULL, -1, '2017-12-26 14:31:53'),
(14, 69, NULL, 285, '284', 'test task', 'test', '48', 40, 20, '12/29/2017', 4, NULL, 0, '48', '', -1, '2017-12-28 08:16:06'),
(14, 70, NULL, 286, '283', 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', '51,52,55', 35, 1, '01/06/2018', 7, NULL, 0, '180,183', NULL, 0, '2017-12-27 06:27:43'),
(14, 70, NULL, 287, '282', 'now legal documents', 'this requires the doc of the compnay', '50,51', 35, 1, '01/06/2018', 7, NULL, 0, '50,51', '286', -1, '2017-12-28 05:57:51'),
(14, 70, NULL, 288, '287', 'now legal documents', 'this requires the doc of the compnay', '50,51', 35, 1, '01/06/2018', 7, NULL, 0, '50,51', '286', -1, '2017-12-28 05:58:04'),
(14, 70, NULL, 289, '288', 'now legal documents', 'this requires the doc of the compnay', '50,51', 35, 1, '01/06/2018', 7, NULL, 0, '50,51', '286', -1, '2017-12-28 05:58:20'),
(14, 70, NULL, 290, '289', 'now legal documents', 'this requires the doc of the compnay', '50,51', 35, 13, '01/06/2018', 7, NULL, 0, '50,51', '286', -1, '2017-12-28 06:08:23'),
(14, 70, NULL, 291, '290', 'now legal documents', 'this requires the doc of the compnay', '50,51', 35, 13, '01/06/2018', 7, NULL, 0, '245', '286', -1, '2017-12-28 06:08:46'),
(14, 69, NULL, 292, '285', 'test task', 'test', '48', 35, 20, '12/28/2017', 4, NULL, 0, '', '286', -1, '2017-12-28 08:16:32'),
(14, 69, NULL, 293, '292', 'test task', 'test', '48', 35, 20, '01/02/2018', 4, NULL, 0, '245', '286', -1, '2017-12-28 08:22:38'),
(14, 71, 229, 294, '0', 'Forming this comp', '1st step', '40', 1, 1, '01/02/2018', 3, NULL, 0, '179', NULL, -1, '2017-12-28 08:22:23'),
(14, 71, 230, 295, '0', 'now legal documents', 'this requires the doc of the compnay', '40', 1, 1, '01/02/2018', 3, NULL, 0, '180', NULL, -1, '2017-12-28 10:01:58'),
(14, 71, 231, 296, '0', 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', '40', 1, 1, '01/02/2018', 3, NULL, 0, NULL, NULL, -1, '2017-12-28 08:24:23'),
(14, 71, 232, 297, '0', 'FInal task', 'FInal task', '40', 1, 1, '01/02/2018', 3, NULL, 0, '183', NULL, 0, '2017-12-28 08:21:52'),
(14, 71, NULL, 298, '296', 'task 3 of public comp', 'this dkjdfhsvb[cafjsvs\r\nsdksfsk\r\nsnvjhsdgucs\r\n', '46', 35, 1, '12/28/2017', 3, NULL, 0, '', '', 0, '2017-12-28 08:24:23'),
(14, 71, NULL, 299, '295', 'now legal documents', 'this requires the doc of the compnay', '40', 35, 1, '01/02/2018', 3, NULL, 0, '180', '', -1, '2017-12-28 10:02:11'),
(14, 71, NULL, 300, '299', 'now legal documents', 'this requires the doc of the compnay', '40', 35, 1, '01/02/2018', 3, NULL, 0, '180', '', 0, '2017-12-28 10:02:11'),
(14, 72, 233, 301, '0', 'Compay Formation', 'Forming a Private Limited Company', '40', 1, 1, '01/16/2018', 3, NULL, 0, '', NULL, -1, '2018-01-09 03:27:02'),
(14, 72, 234, 302, '0', 'Name Search', 'Name Search', '40', 1, 1, '01/16/2018', 3, NULL, 0, '', NULL, -1, '2018-01-09 03:27:27'),
(14, 72, 235, 303, '0', 'File Name Registaion', 'File Name Registaion', '40', 1, 1, '01/16/2018', 3, NULL, 0, '', NULL, -1, '2018-01-09 03:27:50'),
(14, 72, 236, 304, '0', 'Collect Documents', 'Collect Documents', '40', 1, 1, '01/16/2018', 3, NULL, 0, '', NULL, -1, '2018-01-13 09:35:55'),
(14, 72, 237, 305, '0', 'File Dirctror Paper', 'File Dirctror Paper', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', NULL, 0, '2018-01-21 13:53:32'),
(14, 72, 238, 306, '0', 'Make Leagal Deed', 'Make Leagal Deed', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', NULL, 0, '2018-01-21 13:53:32'),
(14, 72, 239, 307, '0', 'Open Current Account', 'Open Current Account', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', NULL, 0, '2018-01-21 13:53:32'),
(14, 72, 240, 308, '0', 'Transfer Invenstment Amount', 'Transfer Invenstment Amount', '40', 1, 1, '01/16/2018', 3, NULL, 0, '', NULL, -1, '2018-01-10 17:33:42'),
(14, 72, 241, 309, '0', 'Register Company', 'Register Company', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', NULL, 0, '2018-01-21 13:53:32'),
(14, 72, 242, 310, '0', 'FInal', 'FInal task', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '180,183', NULL, -1, '2018-03-07 14:51:31'),
(14, 72, NULL, 311, '301', 'Compay Formation', 'Forming a Private Limited Company', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', '', 0, '2018-01-21 13:53:32'),
(14, 72, NULL, 312, '302', 'Name Search', 'Name Search', '35', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', '', 0, '2018-01-21 13:53:32'),
(14, 72, NULL, 313, '303', 'File Name Registaion', 'File Name Registaion', '39', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', '', 0, '2018-01-21 13:53:32'),
(14, 1, 248, 314, '0', 'jkhk', 'jhkj', '39', 1, 5, '01/09/2018', 4, NULL, 0, '', NULL, -1, '2018-03-06 17:30:28'),
(14, 72, NULL, 315, '308', 'Transfer Invenstment Amount', 'Transfer Invenstment Amount', '40', 35, 1, '01/16/2018', 6, '', 0, '', NULL, -1, '2018-01-14 06:53:59'),
(14, 72, NULL, 316, '304', 'Collect Documents', 'Collect Documents new', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', '', 0, '2018-01-21 13:53:32'),
(14, 72, NULL, 317, '315', 'Transfer Invenstment Amount', 'Transfer Invenstment Amounts new', '40', 35, 1, '01/16/2018', 7, 'vendor is not repodnse', 0, '', '', 0, '2018-01-21 13:53:32'),
(14, 72, NULL, 318, '310', 'FInal', 'FInal task', '40', 35, 1, '01/16/2018', 4, '', 0, '180,183', NULL, 0, '2018-03-07 14:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `coid` int(32) NOT NULL,
  `txnid` int(32) NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mobileno` varchar(500) DEFAULT NULL,
  `gender` int(11) DEFAULT '0',
  `role` varchar(500) DEFAULT NULL,
  `reportingto` varchar(500) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `date_gen` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`coid`, `txnid`, `username`, `address`, `email`, `mobileno`, `gender`, `role`, `reportingto`, `status`, `date_gen`) VALUES
(14, 35, 'CEO', '', 'ceo@gmail.com', '9769966098', 0, '39', '0', 0, '2017-12-11 03:51:25'),
(14, 36, 'Director', '', 'director@gmail.com', '9769966099', 0, '37', '0', 0, '2017-12-11 03:51:25'),
(14, 39, 'Account Manager 1', '', 'accmgr1@gmail.com', '9769966102', 0, '41', '35', 0, '2017-12-11 03:51:25'),
(14, 40, 'Project Manager 1', '', 'projectmgr1@gmail.com', '9769966103', 0, '42', '36', 0, '2017-12-11 03:51:25'),
(14, 46, 'Project Executive 1', '', 'projectexe1@gmail.com', '9769966109', 0, '43', '39', 0, '2017-12-11 03:51:25'),
(14, 47, 'Project Executive 2', '', 'projectexe2@gmail.com', '9769966110', 0, '43', '39', 0, '2017-12-11 03:51:25'),
(14, 48, 'Project Executive 3', '', 'projectexc3@gmail.com', '9769966111', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 49, 'Project Executive 4', '', 'projectexe4@gmail.com', '9769966112', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 50, 'Project Executive 5', '', 'projectexe5@gmail.com', '9769966113', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 51, 'Project Executive 6', 'none', 'projectexe6@gmail.com', '9769966114', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 52, 'Project Executive 7', '', 'projectexe7@gmail.com', '9769966115', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 53, 'Project Executive 8', '', 'projectexe8@gmail.com', '9769966116', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 54, 'Project Executive 9', '', 'projectexe9@gmail.com', '9769966117', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 55, 'Project Executive 10', '', 'projectexe10@gmail.com', '9769966118', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 56, 'Project Executive 11', '', 'projectexe11@gmail.com', '9769966119', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 57, 'Project Executive 12', '', 'projectexe12@gmail.com', '9769966120', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 58, 'Project Executive 13', '', 'projectexe13@gmail.com', '9769966121', 0, '43', '40', 0, '2017-12-11 03:51:25'),
(14, 59, 'Project Executive 14', '', 'projectexe14@gmail.com', '9769966122', 0, '43', '39', 0, '2017-12-11 03:51:25'),
(14, 60, 'Project Executive 15', '', 'projectexe15@gmail.com', '9769966123', 0, '43', '39', 0, '2017-12-11 03:51:25'),
(14, 61, 'Project Executive 16', '', 'projectexe16@gmail.com', '9769966124', 0, '43', '39', 0, '2017-12-11 03:51:25'),
(14, 62, 'Admin', 'Home', 'admin@apicalin.com', '9769966097', 0, '38', '0', 0, '2017-12-11 03:51:25');

--
-- Triggers `tbl_users`
--
DELIMITER $$
CREATE TRIGGER `trg_gen_usrlogin` AFTER INSERT ON `tbl_users` FOR EACH ROW INSERT
INTO
  `tbl_login`(
    `coid`,
    `enid`, 
    `enname`,
    `loginid`,
    `pwd`,
    `roleid`,
    `contact_email`,
    `contact_mobileno`,
    `mgrid`
  )
VALUES(
  NEW.coid,
  NEW.txnid,
  NEW.username,
  NEW.email,
  'pass@123',
  NEW.role,
  NEW.email,
  NEW.mobileno,
  NEW.reportingto
)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accesscontrol`
--
ALTER TABLE `tbl_accesscontrol`
  ADD PRIMARY KEY (`coid`,`roleid`);

--
-- Indexes for table `tbl_codemaster`
--
ALTER TABLE `tbl_codemaster`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tbl_codevalue`
--
ALTER TABLE `tbl_codevalue`
  ADD PRIMARY KEY (`cvid`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `tbl_comsetup`
--
ALTER TABLE `tbl_comsetup`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `coid` (`coid`,`custid`);

--
-- Indexes for table `tbl_docnumbers`
--
ALTER TABLE `tbl_docnumbers`
  ADD PRIMARY KEY (`refid`);

--
-- Indexes for table `tbl_leads`
--
ALTER TABLE `tbl_leads`
  ADD PRIMARY KEY (`leadid`);

--
-- Indexes for table `tbl_leadsch`
--
ALTER TABLE `tbl_leadsch`
  ADD PRIMARY KEY (`txnid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`enid`,`loginid`),
  ADD UNIQUE KEY `loginid` (`loginid`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`notify_id`),
  ADD UNIQUE KEY `coid` (`coid`,`notify_id`);

--
-- Indexes for table `tbl_projdtls`
--
ALTER TABLE `tbl_projdtls`
  ADD PRIMARY KEY (`tskid`),
  ADD UNIQUE KEY `coid` (`coid`,`prjid`,`tskid`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`prjid`),
  ADD UNIQUE KEY `coid` (`coid`,`prjid`);

--
-- Indexes for table `tbl_sanctions`
--
ALTER TABLE `tbl_sanctions`
  ADD PRIMARY KEY (`sanctionid`);

--
-- Indexes for table `tbl_statecity`
--
ALTER TABLE `tbl_statecity`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `tbl_task_def`
--
ALTER TABLE `tbl_task_def`
  ADD PRIMARY KEY (`tdefid`),
  ADD UNIQUE KEY `coid` (`coid`,`tdefid`);

--
-- Indexes for table `tbl_task_sch`
--
ALTER TABLE `tbl_task_sch`
  ADD PRIMARY KEY (`tasksrno`),
  ADD UNIQUE KEY `coid` (`coid`,`tasksrno`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`txnid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_codemaster`
--
ALTER TABLE `tbl_codemaster`
  MODIFY `code` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_codevalue`
--
ALTER TABLE `tbl_codevalue`
  MODIFY `cvid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `coid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_comsetup`
--
ALTER TABLE `tbl_comsetup`
  MODIFY `coid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `custid` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_docnumbers`
--
ALTER TABLE `tbl_docnumbers`
  MODIFY `refid` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_leads`
--
ALTER TABLE `tbl_leads`
  MODIFY `leadid` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_leadsch`
--
ALTER TABLE `tbl_leadsch`
  MODIFY `txnid` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menuid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `notify_id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_projdtls`
--
ALTER TABLE `tbl_projdtls`
  MODIFY `tskid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `prjid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tbl_sanctions`
--
ALTER TABLE `tbl_sanctions`
  MODIFY `sanctionid` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_task_def`
--
ALTER TABLE `tbl_task_def`
  MODIFY `tdefid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `tbl_task_sch`
--
ALTER TABLE `tbl_task_sch`
  MODIFY `tasksrno` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `txnid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
