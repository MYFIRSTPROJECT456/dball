-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2018 at 11:31 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.3-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `parentcategoryid` int(30) NOT NULL,
  `creationdate` datetime NOT NULL,
  `updationdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`, `parentcategoryid`, `creationdate`, `updationdate`, `status`) VALUES
(1, 'Electronics', 0, '2018-02-21 20:32:02', '2018-02-21 20:32:02', 0),
(2, 'Computer', 1, '2018-02-21 20:32:30', '2018-02-21 20:32:30', 0),
(3, 'Keyboard ', 2, '2018-02-21 20:38:45', '2018-02-21 20:38:45', 0),
(4, 'Mouse', 2, '2018-02-21 20:39:05', '2018-02-21 20:39:05', 0),
(5, 'Laptop', 2, '2018-02-21 20:39:21', '2018-02-21 20:39:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityid` int(10) UNSIGNED NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `stateid` int(10) NOT NULL,
  `creationdate` datetime DEFAULT NULL,
  `updationdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityid`, `cityname`, `stateid`, `creationdate`, `updationdate`, `status`) VALUES
(1, 'Navi mumbai', 1, '2018-02-19 17:28:24', '2018-02-19 17:28:24', 0),
(2, 'ara', 2, '2018-02-19 17:28:36', '2018-02-19 21:10:53', 0),
(3, 'azamagarhddd', 1, '2018-02-19 18:07:46', '2018-02-21 18:19:03', -1),
(4, 'azamagarh', 5, '2018-02-21 18:19:17', '2018-02-21 18:19:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `empman`
--

CREATE TABLE `empman` (
  `empid` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `manid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empman`
--

INSERT INTO `empman` (`empid`, `name`, `manid`) VALUES
(1, 'rahul', 3),
(2, 'jay', 3),
(3, 'sonam', 4),
(4, 'kunal', 5),
(5, 'ram', 6),
(6, 'veeru', 6);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `imageid` int(10) UNSIGNED NOT NULL,
  `productid` int(10) NOT NULL,
  `images` varchar(100) NOT NULL,
  `ext` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`imageid`, `productid`, `images`, `ext`) VALUES
(1, 1, 'gitcommod.png', 'png'),
(2, 1, 'queryimg.png', 'png'),
(3, 2, 'img.png', 'png'),
(4, 2, 'vidyut.jpg', 'jpg'),
(5, 3, 'img.png', 'png'),
(6, 3, 'vidyut.jpg', 'jpg'),
(7, 4, 'img.png', 'png'),
(8, 4, 'vidyut.jpg', 'jpg'),
(9, 5, 'img.png', 'png'),
(10, 5, 'vidyut.jpg', 'jpg'),
(11, 6, 'vidyut.jpg', 'jpg'),
(12, 6, 'uploadimg.png', 'png'),
(13, 7, 'vi.jpg', 'jpg'),
(14, 7, 'vi.jpg', 'jpg'),
(15, 5, 'vi.jpg', 'jpg'),
(16, 5, 'img.png', 'png');

-- --------------------------------------------------------

--
-- Table structure for table `locality`
--

CREATE TABLE `locality` (
  `localityid` int(10) UNSIGNED NOT NULL,
  `localityname` varchar(50) NOT NULL,
  `cityid` int(10) NOT NULL,
  `creationdate` datetime NOT NULL,
  `updationdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locality`
--

INSERT INTO `locality` (`localityid`, `localityname`, `cityid`, `creationdate`, `updationdate`, `status`) VALUES
(1, 'thane', 1, '2018-02-22 16:06:24', '2018-02-22 18:01:55', 0),
(2, 'siyrua', 2, '2018-02-22 16:06:35', '2018-02-22 18:01:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `tagskeys` varchar(50) NOT NULL,
  `discription` text NOT NULL,
  `categoryid` int(20) NOT NULL,
  `sub_categoryid` varchar(50) NOT NULL,
  `status` enum('approved','pending','rejected') NOT NULL,
  `price` int(30) NOT NULL,
  `sts` int(10) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `imgurl3` varchar(100) NOT NULL,
  `imgurl4` varchar(100) NOT NULL,
  `imgurl5` varchar(100) NOT NULL,
  `imgurl6` varchar(100) NOT NULL,
  `imgurl7` varchar(100) NOT NULL,
  `imgurl8` varchar(100) NOT NULL,
  `imgurl9` varchar(100) NOT NULL,
  `imgurl10` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `title`, `tagskeys`, `discription`, `categoryid`, `sub_categoryid`, `status`, `price`, `sts`, `img`, `img2`, `imgurl3`, `imgurl4`, `imgurl5`, `imgurl6`, `imgurl7`, `imgurl8`, `imgurl9`, `imgurl10`) VALUES
(1, 'mobile', 'sam', 'mobile phones', 1, '1', 'approved', 1200, 0, '/Contents/--about-us-cover.jpg', '/Contents/--apple.png', '/Contents/--apple-cover.jpg', '/Contents/--apple-tv.png', '/Contents/--apple-watch.png', '', '', '', '', ''),
(2, 'computer', 'laptop', 'khsojs', 2, '2', 'approved', 1200, 0, '/Contents/--galaxy-note5.jpg', '/Contents/--galaxy-s6.jpg', '/Contents/--galaxy-tab2.png', '/Contents/--galaxy-taba.png', '/Contents/--german.png', '', '', '', '', ''),
(3, 'koko', 'iksn', 'okso', 2, '2', 'approved', 1200, 0, '/Contents/--ipad.jpg', '/Contents/--ipad-air.png', '/Contents/--ipad-pro.jpg', '/Contents/--ipad-pro.png', '/Contents/--iphone.png', '', '', '', '', ''),
(4, 'lalaoooo', 'oksk', 'uhfasdfoi', 2, '2', 'approved', 1300, 0, '/Contents/--product-cameras.jpg', '/Contents/--product-design.jpg', '/Contents/--product-main.jpg', '/Contents/--product-technology.jpg', '/Contents/--samsung.jpeg', '', '', '', '', ''),
(5, 'pol', 'lop', 'ika', 2, '2', 'approved', 368, 0, '/Contents/imac.png', '', '', '', '', '', '', '', '', ''),
(6, 'pol', 'lop', 'ika', 2, '2', 'approved', 368, 0, '/Contents/imac.png', '', '', '', '', '', '', '', '', ''),
(7, 'lop', 'ijsk', 'bhnsbn', 2, '2', 'approved', 1300, 0, '/Contents/galaxy-s6.jpg', '', '', '', '', '', '', '', '', ''),
(8, 'dsakfj', 'kljdkfla', 'kljdkslaf', 2, '2', 'approved', 4545, 0, '', '', '', '', '', '', '', '', '', ''),
(9, 'fg', 'gff', 'fgf', 2, '2', 'pending', 1200, 0, '', '', '', '', '', '', '', '', '', ''),
(10, 'adslkjf', 'kjljdaskfl', 'jkldsajf', 1, '1', 'approved', 45132, 0, '', '', '', '', '', '', '', '', '', ''),
(11, 'sadfkljf', 'KLJDSFKLSAJ', 'KLJDSSAKJ', 1, '1', 'approved', 545, 0, '', '', '', '', '', '', '', '', '', ''),
(12, 'sadfkljf', 'KLJDSFKLSAJ', 'KLJDSSAKJ', 1, '1', 'approved', 545, 0, '', '', '', '', '', '', '', '', '', ''),
(13, 'sm', 'nmbhb', 'jhjhj', 1, '1', 'approved', 368, 0, '', '', '', '', '', '', '', '', '', ''),
(14, 'kdajfsk', 'kjfakl', 'jkladfsj', 1, '1', 'approved', 54564, 0, '/Contents/img1.1.jpg', '/Contents/img1.2.jpg', '/Contents/img1.3.jpg', '', '', '', '', '', '', ''),
(15, 'kljk', 'lkhlkh', 'klhlkh', 1, '1', 'approved', 124, 0, '/Contents/Screenshot from 2018-01-03 19-15-48.png', '/Contents/test.png', '', '', '', '', '', '', '', ''),
(16, 'hgfh', 'cvbcb', 'bvb vb ', 2, '2', 'approved', 124, 0, '/Contents/16gb.jpg', '/Contents/bluetooth device.jpg', '/Contents/camerabattery.jpg', '/Contents/cardigans.jpg', '/Contents/clothing.jpg', '/Contents/computerspeakers.jpg', '/Contents/coolingpad.jpg', '', '', ''),
(17, 'ngf', 'gnfgbf', 'bgcbb ', 2, '2', 'approved', 512452, 0, '/Contents/Laptops.jpg', '/Contents/lensaccess.jpg', '/Contents/lensefinder.jpg', '/Contents/luxurywatches.jpg', '/Contents/lwinter.jpg', '/Contents/m.jpg', '/Contents/salwa.jpg', '', '', ''),
(18, 'cdaghjm', 'bfvxmjb', 'vfxcnbb ', 2, '2', 'approved', 788, 0, '/Contents/tarck.jpg', '/Contents/top.jpg', '/Contents/webcam.jpg', '/Contents/winter.jpg', '', '', '', '', '', ''),
(19, 'sds', 'gfda', 'jkhfgdz', 2, '2', 'approved', 7894, 0, '/Contents/lapibattery.jpg', '/Contents/Laptops.jpg', '/Contents/lensaccess.jpg', '/Contents/lensefinder.jpg', '/Contents/luxurywatches.jpg', '/Contents/lwinter.jpg', '', '', '', ''),
(20, 'fefj,hgfx', 'ggnbvbnv', 'bvbvb ', 2, '2', 'approved', 14, 0, '/Contents/speakers.jpg', '/Contents/sportshoes.jpg', '/Contents/stock.jpg', '/Contents/Tablets_1.jpg', '/Contents/tarck.jpg', '', '', '', '', ''),
(21, 'bfdbf', 'gbfbfbg', 'cbvcvbc', 1, '1', 'approved', 241214, 0, '/Contents/luxurywatches.jpg', '/Contents/lwinter.jpg', '/Contents/m.jpg', '/Contents/salwa.jpg', '/Contents/sarees.jpg', '/Contents/speakers.jpg', '', '', '', ''),
(22, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(23, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(24, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(25, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(26, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(27, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(28, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(29, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(30, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(31, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(32, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(33, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(34, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(35, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(36, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(37, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(38, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(39, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(40, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', ''),
(41, 'jhhj', 'jhbhj', 'hjjhg', 78, '48', 'pending', 4521, 0, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stateid` int(11) UNSIGNED NOT NULL,
  `statename` varchar(30) NOT NULL,
  `createdate` datetime NOT NULL,
  `updationdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateid`, `statename`, `createdate`, `updationdate`, `status`) VALUES
(1, 'Maharashtra', '2018-02-19 17:23:14', '2018-02-19 17:23:14', 0),
(2, 'Madhayy pardesh', '2018-02-19 17:23:26', '2018-02-21 15:29:15', 0),
(3, 'uttar pardesh', '2018-02-19 17:23:44', '2018-02-21 18:18:20', -1),
(4, 'uiasdf', '2018-02-21 17:07:02', '2018-02-21 17:07:41', -1),
(5, 'uttar pardesh', '2018-02-21 18:18:41', '2018-02-21 18:18:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminlogin`
--

CREATE TABLE `tbl_adminlogin` (
  `adminid` int(10) UNSIGNED NOT NULL,
  `adminname` varchar(30) NOT NULL,
  `adminpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adminlogin`
--

INSERT INTO `tbl_adminlogin` (`adminid`, `adminname`, `adminpassword`) VALUES
(1, 'abhishek', '123'),
(2, 'deepakc', '123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobileno` bigint(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `status` enum('confirm','unconfirmed') NOT NULL,
  `userpassword` int(30) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `updationdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sts` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `mobileno`, `emailid`, `status`, `userpassword`, `creationdate`, `updationdate`, `sts`) VALUES
(1, 'abhishek pandey', 704231146, 'insindia123@gmail.com', 'confirm', 11111, '2017-12-28 18:31:29', '2018-02-16 16:16:27', 0),
(2, 'ramesh', 7355652421, 'tramesh.1104@gmail.com', 'confirm', 1234, '2018-02-16 16:15:55', '2018-02-16 16:15:55', 0),
(3, 'deepak chauhan', 8898375465, 'dchdeepak@gmail.com', 'confirm', 12345, '2018-02-20 00:11:12', '2018-02-20 11:15:07', 0),
(4, 'sudhir', 7355652421, 'sudhir0695@gmail.com', 'confirm', NULL, '2018-02-20 11:31:56', '2018-02-20 11:35:51', -1),
(5, 'sudhir yadav', 8875894665, 'sudhir0695@gmail.com', 'confirm', NULL, '2018-02-21 18:28:12', '2018-02-21 18:28:29', -1),
(6, 'sudhir yadav', 8898375465, 'sudhir0695@gmail.com', 'unconfirmed', NULL, '2018-02-21 18:28:45', '2018-02-21 18:28:45', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `empman`
--
ALTER TABLE `empman`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`imageid`);

--
-- Indexes for table `locality`
--
ALTER TABLE `locality`
  ADD PRIMARY KEY (`localityid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `tbl_adminlogin`
--
ALTER TABLE `tbl_adminlogin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cityid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `empman`
--
ALTER TABLE `empman`
  MODIFY `empid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `imageid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `locality`
--
ALTER TABLE `locality`
  MODIFY `localityid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `stateid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_adminlogin`
--
ALTER TABLE `tbl_adminlogin`
  MODIFY `adminid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
