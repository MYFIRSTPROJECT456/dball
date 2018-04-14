-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2018 at 07:17 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `salary` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `salary`) VALUES
(1, 'ramesh', '4000872'),
(2, 'ramesh', '4004542'),
(3, 'ramesh', '404552'),
(4, 'sudhiur', '4054454552'),
(5, 'sudhiur', '40542'),
(6, 'sudhiur', '405'),
(7, 'sudhiur', '40564');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(11) UNSIGNED NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `message`) VALUES
(1, 'my name is deepak'),
(2, 'hjk'),
(3, 'my name is ramesh thakur'),
(4, 'nhk'),
(5, ''),
(6, 'kabe ramesh va'),
(7, 'hhjk'),
(8, 'n,,m'),
(9, 'jhk'),
(10, 'hjkjk'),
(11, 'hjhkkj'),
(12, 'kjsfkjl'),
(13, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda asperiores voluptatum, at repellat blanditiis distinctio! Totam accusamus, cumque ut, minus nesciunt fugiat sint consequuntur laboriosam aliquam in harum tempore atque.'),
(14, 'asdfadf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) UNSIGNED NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `email`, `password`) VALUES
(1, 'jhjk', 'jhkjk', 'kjhhjk'),
(2, 'deepakc', 'dchdeepak@gmail.com', '123'),
(3, '', '', ''),
(4, '', '', ''),
(5, 'sudhir', 'sudhir0695@gmail.com', '456'),
(6, 'khhjk', 'hhjk', '45354'),
(7, '', '', ''),
(8, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
