-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2014 at 06:44 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clinic_receptionist`
--

CREATE Database clinic_receptionist;
USE clinic_receptionist;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Schedule_Id` varchar(5) NOT NULL,
  `Staff_ID` varchar(5) NOT NULL,
  `Date` date NOT NULL,
  `Availability` varchar(6) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`ID`, `Schedule_Id`, `Staff_ID`, `Date`, `Availability`, `TimeStamp`) VALUES
(1, 'SC001', 'GP001', '2014-01-12', 'Flase', '2014-11-08 17:43:56'),
(2, 'SC002', 'NR001', '2014-01-12', 'TRUE', '2014-11-08 17:43:56'),
(3, 'SC003', 'GP002', '2014-02-12', 'TRUE', '2014-11-08 17:43:56'),
(4, 'SC004', 'GP003', '2014-03-12', 'Flase', '2014-11-08 17:43:56'),
(5, 'SC005', 'NR002', '2014-03-12', 'TRUE', '2014-11-08 17:43:56'),
(6, 'SC006', 'GP002', '2014-04-12', 'Flase', '2014-11-08 17:43:56'),
(7, 'SC007', 'NR003', '2014-04-12', 'TRUE', '2014-11-08 17:43:56'),
(8, 'SC008', 'NR001', '2014-04-12', 'TRUE', '2014-11-08 17:43:56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
