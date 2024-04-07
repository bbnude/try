-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2024 at 03:30 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Email`, `Age`, `Password`) VALUES
(1, 'jaymolina', 'jaymolinacabanos@gmail.com', 21, 'jaymolina22'),
(2, 'jayjay', '2110782@gcci.edu.ph', 21, 'jaymolina'),
(3, 'lenon', 'jay@gmail.com', 21, 'jay'),
(4, 'jay', 'jaymolinacabanos@gmail.com', 21, 'jayjay22'),
(5, 'jayu', 'Jay@gmail.com', 25, 'jayjay'),
(6, 'jayu', 'Jay@gmail.com', 25, 'jayjay'),
(7, 'BBNUDE', 'hg@gmail.com', 21, 'JAYMOLS'),
(8, 'jk', 'h@gmail.com', 21, 'juju'),
(9, 'jl', 'w@gmail.com', 22, 'b53759f3ce692de7aff1b5779d3964da'),
(10, 'jl', 'w@gmail.com', 22, 'b53759f3ce692de7aff1b5779d3964da'),
(11, 'kol', 'b@gmail.com', 21, '4ac37ffd8e0694befc66b3847d76dba7');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
