-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 01, 2015 at 04:40 PM
-- Server version: 5.5.40
-- PHP Version: 5.4.35-0+deb7u2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gpio`
--

-- --------------------------------------------------------

--
-- Table structure for table `pinDescription`
--

CREATE TABLE IF NOT EXISTS `pinDescription` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `pinDescription`
--

INSERT INTO `pinDescription` (`pinID`, `pinNumber`, `pinDescription`) VALUES
(1, '4', 'Pin 4'),
(2, '5', 'Pin 5'),
(3, '6', 'Pin 6'),
(4, '12', 'Pin 12'),
(5, '13', 'Pin 13'),
(6, '16', 'Pin 16'),
(7, '17', 'Pin 17'),
(8, '18', 'Pin 18'),
(9, '19', 'Pin 19'),
(10, '20', 'Pin 20'),
(11, '21', 'Pin 21'),
(12, '22', 'Pin 22'),
(13, '23', 'Pin 23'),
(14, '24', 'Pin 24'),
(15, '25', 'Pin 25'),
(16, '26', 'Pin 26');

-- --------------------------------------------------------

--
-- Table structure for table `pinDirection`
--

CREATE TABLE IF NOT EXISTS `pinDirection` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinDirection` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `pinDirection`
--

INSERT INTO `pinDirection` (`pinID`, `pinNumber`, `pinDirection`) VALUES
(1, '4', 'out'),
(2, '5', 'out'),
(3, '6', 'out'),
(4, '12', 'out'),
(5, '13', 'out'),
(6, '16', 'out'),
(7, '17', 'out'),
(8, '18', 'out'),
(9, '19', 'out'),
(10, '20', 'out'),
(11, '21', 'out'),
(12, '22', 'out'),
(13, '23', 'out'),
(14, '24', 'out'),
(15, '25', 'out'),
(16, '26', 'out');

-- --------------------------------------------------------

--
-- Table structure for table `pinStatus`
--

CREATE TABLE IF NOT EXISTS `pinStatus` (
  `pinID` int(11) NOT NULL AUTO_INCREMENT,
  `pinNumber` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `pinStatus` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pinID`),
  UNIQUE KEY `pinNumber` (`pinNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `pinStatus`
--

INSERT INTO `pinStatus` (`pinID`, `pinNumber`, `pinStatus`) VALUES
(1, '4', '1'),
(2, '5', '1'),
(3, '6', '1'),
(4, '12', '1'),
(5, '13', '1'),
(6, '16', '1'),
(7, '17', '1'),
(8, '18', '1'),
(9, '19', '1'),
(10, '20', '1'),
(11, '21', '1'),
(12, '22', '1'),
(13, '23', '1'),
(14, '24', '1'),
(15, '25', '1'),
(16, '26', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `salt`) VALUES
(1, 'admin', '62f615b1eed9ea340c34485c21a92046488990d45f6369e860e483287e137543', 'f135a0bb');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
