-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2014 at 08:46 AM
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

Use clinic_receptionist;
-- --------------------------------------------------------

--
-- Table structure for table `health_report`
--

CREATE TABLE IF NOT EXISTS `health_report` (
  `Health_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `GP_ID` varchar(5) NOT NULL,
  `Date` date NOT NULL,
  `bloodpressure` double NOT NULL,
  `glucose` double NOT NULL,
  `heartbeat` double NOT NULL,
  `urea_level` double NOT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  PRIMARY KEY (`Health_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `GP_ID` (`GP_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `health_report`
--

INSERT INTO `health_report` (`Health_ID`, `Patient_ID`, `GP_ID`, `Date`, `bloodpressure`, `glucose`, `heartbeat`, `urea_level`, `height`, `weight`) VALUES
(1, 'PT001', 'GP001', '2014-12-07', 110, 120, 100, 0, 170, 80),
(2, 'PT002', 'GP001', '2014-12-04', 90, 97, 92, 21, 160, 56),
(3, 'PT003', 'GP002', '2014-11-19', 111, 87, 0, 15, 173, 65),
(4, 'PT002', 'GP003', '2014-10-10', 145, 100, 125, 16, 169, 60);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `health_report`
--
ALTER TABLE `health_report`
  ADD CONSTRAINT `health_report_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `health_report_ibfk_2` FOREIGN KEY (`GP_ID`) REFERENCES `gp` (`GP_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
