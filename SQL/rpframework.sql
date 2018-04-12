-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 12.04.2018 klo 08:10
-- Palvelimen versio: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpframework`
--
CREATE DATABASE IF NOT EXISTS `rpframework` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rpframework`;

-- --------------------------------------------------------

--
-- Rakenne taululle `crimes`
--

CREATE TABLE IF NOT EXISTS `crimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crime` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criminal` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `criminals`
--

CREATE TABLE IF NOT EXISTS `criminals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `wanted` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `garage`
--

CREATE TABLE IF NOT EXISTS `garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `hit` varchar(1000) NOT NULL,
  `krand` varchar(50) NOT NULL,
  `inGarage` int(1) NOT NULL DEFAULT '0',
  `plate` varchar(50) NOT NULL DEFAULT 'RPF-0000',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `pos` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '-1',
  `trunk` varchar(1500) NOT NULL DEFAULT '[]',
  `container` varchar(2048) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `licenses`
--

CREATE TABLE IF NOT EXISTS `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `license` varchar(1500) NOT NULL,
  `uid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `phonecontacts`
--

CREATE TABLE IF NOT EXISTS `phonecontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
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
  `weapons` varchar(1500) NOT NULL DEFAULT '[]',
  `cash` int(13) NOT NULL DEFAULT '1',
  `bank` int(13) NOT NULL DEFAULT '2000',
  `cop` int(13) NOT NULL DEFAULT '-1',
  `ems` int(13) NOT NULL DEFAULT '-1',
  `position` varchar(50) NOT NULL,
  `bankaccount` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(10) NOT NULL DEFAULT '-1',
  `hunger` int(13) NOT NULL DEFAULT '0',
  `thirst` int(13) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bankaccount`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `vk`
--

CREATE TABLE IF NOT EXISTS `vk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `krand` varchar(50) NOT NULL,
  `plate` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
