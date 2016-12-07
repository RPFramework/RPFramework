-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 07.12.2016 klo 09:28
-- Palvelimen versio: 5.5.49-log
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpframework`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `garage`
--

CREATE TABLE IF NOT EXISTS `garage` (
  `id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `hit` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `items` varchar(1500) NOT NULL,
  `clothes` varchar(1500) NOT NULL,
  `weapons` varchar(1500) NOT NULL,
  `cash` int(13) NOT NULL,
  `bank` int(13) NOT NULL,
  `cop` int(13) NOT NULL,
  `ems` int(13) NOT NULL,
  `position` varchar(50) NOT NULL,
  `bankaccount` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `garage`
--
ALTER TABLE `garage`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`bankaccount`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `bankaccount` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
