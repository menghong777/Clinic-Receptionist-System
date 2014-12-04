-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2014 at 10:31 AM
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

Use `clinic_receptionist`;
-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `Appoinment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `GP_ID` varchar(5) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`Appoinment_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `GP_ID` (`GP_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appoinment_ID`, `Patient_ID`, `GP_ID`, `Date`, `Status`) VALUES
(1, 'PT001', 'GP001', '2014-12-12', 'Pending'),
(2, 'PT002', 'GP001', '2014-12-12', 'Pending'),
(3, 'PT003', 'GP002', '2014-12-06', 'Done'),
(4, 'PT002', 'GP003', '2014-12-08', 'Done'),
(5, 'PT003', 'GP002', '2014-12-24', 'Cancelled');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`GP_ID`) REFERENCES `gp` (`GP_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
