-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2014 at 05:59 AM
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
use `clinic_receptionist`; 
-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `presrciptionID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `MedicineName` varchar(30) NOT NULL,
  `Dosage` double NOT NULL,
  `Period_days` int(11) NOT NULL,
  `Extension_Period` int(11) NOT NULL,
  PRIMARY KEY (`presrciptionID`),
  KEY `Patient_ID` (`Patient_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`presrciptionID`, `Patient_ID`, `MedicineName`, `Dosage`, `Period_days`, `Extension_Period`) VALUES
(1, 'PT001', 'AntiBiotic', 1.2, 12, 0),
(2, 'PT002', 'Panadol', 2, 3, 0),
(3, 'PT003', 'Pamelor', 1.5, 7, 0),
(4, 'PT001', 'Antacids', 1, 4, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
