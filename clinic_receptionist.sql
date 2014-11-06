-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2014 at 06:11 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE IF NOT EXISTS `appoinment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `Schedule_ID` varchar(5) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gp`
--

CREATE TABLE IF NOT EXISTS `gp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GP_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gp`
--

INSERT INTO `gp` (`ID`, `GP_ID`, `User_ID`, `TimeStamp`) VALUES
(1, 'GP001', 'GP002', '2014-11-04 08:08:08'),
(2, 'GP001', 'SF001', '2014-11-04 08:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `main_table`
--

CREATE TABLE IF NOT EXISTS `main_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` varchar(5) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `DateOFBirth` date NOT NULL,
  `Category` varchar(8) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE IF NOT EXISTS `nurse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nurse_ID` varchar(5) NOT NULL,
  `User_ID` int(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `IC_Number/Passport` varchar(12) NOT NULL,
  `EmergencyContact` varchar(11) NOT NULL,
  `EmergencyName` varchar(30) NOT NULL,
  `EmergencyRelationship` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `Medicine_Name` varchar(20) NOT NULL,
  `Dosage` varchar(20) NOT NULL,
  `Period` varchar(20) NOT NULL,
  `Extension_Period` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE IF NOT EXISTS `receptionist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Receptionist_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
