-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2014 at 07:28 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.14

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
-- Table structure for table `appoinment`
--

CREATE TABLE IF NOT EXISTS `appoinment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `Schedule_ID` varchar(5) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`ID`, `Patient_ID`, `Schedule_ID`, `Status`, `TimeStamp`) VALUES
(1, 'PT001', 'SC001', 'Pending', '2014-11-08 17:40:54'),
(2, 'PT002', 'SC004', 'Done', '2014-11-08 17:40:54'),
(3, 'PT001', 'SC006', 'Canceled', '2014-11-08 17:40:54');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gp`
--

INSERT INTO `gp` (`ID`, `GP_ID`, `User_ID`, `TimeStamp`) VALUES
(1, 'GP001', 'US001', '2014-11-04 08:08:08'),
(2, 'GP002', 'US002', '2014-11-04 08:11:13'),
(3, 'GP003', 'US003', '2014-11-08 17:36:05');

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
  `IC/Passport` varchar(14) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `DateOFBirth` date NOT NULL,
  `Category` varchar(12) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`ID`, `User_ID`, `FirstName`, `LastName`, `Address`, `IC/Passport`, `PhoneNumber`, `DateOFBirth`, `Category`, `Sex`, `TimeStamp`) VALUES
(1, 'US001', 'Siva', 'Kunalan', '', '830918-01-1547', '0172768812', '1983-09-18', 'GP', 'Male', '2014-11-08 17:26:06'),
(2, 'US002', 'Angelo', 'Andy', '', 'A301324', '0127540892', '1973-03-22', 'GP', 'Female', '2014-11-08 17:26:06'),
(3, 'US003', 'Aron', 'Aziz', '', '840601-14-1482', '01118426416', '1984-06-01', 'GP', 'Male', '2014-11-08 17:31:37'),
(4, 'US004', 'Siti', 'Nurhaliza', '', '881117-04-6242', '0142873456', '1988-11-17', 'Nurse', 'Female', '2014-11-08 17:31:37'),
(5, 'US005', 'Vivian', 'Loke', '', '890228-06-7485', '0167891423', '1989-02-28', 'Nurse', 'Female', '2014-11-08 17:31:37'),
(6, 'US006', 'Kajal', 'Agraval', '', '870513-09-9614', '0136542891', '1987-05-13', 'Nurse', 'Female', '2014-11-08 17:31:37'),
(7, 'US007', 'Mary', 'Jane', '', '900312-14-6625', '0194261538', '1990-03-12', 'Receptionist', 'Female', '2014-11-08 17:32:54'),
(8, 'US008', 'Noor', 'Rozita', '', '870415-14-3245', '0174861539', '1987-04-15', 'Receptionist', 'Female', '2014-11-08 17:35:11'),
(9, 'US009', 'Hisamudin', 'Ahmad', '', '710825-01-1256', '0147419635', '1971-08-25', 'Patient', 'Male', '2014-11-08 17:35:11'),
(10, 'US010', 'Muthu', 'Pillay', '', '690915-08-4826', '0161597534', '1969-09-15', 'Patient', 'Male', '2014-11-08 17:35:11'),
(11, 'US011', 'Jinghua', 'Juan', '', 'F52612L', '0194561597', '1965-07-03', 'Patient', 'Female', '2014-11-08 17:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE IF NOT EXISTS `nurse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nurse_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`ID`, `Nurse_ID`, `User_ID`, `TimeStamp`) VALUES
(1, 'NR001', 'US004', '2014-11-08 17:37:29'),
(2, 'NR002', 'US005', '2014-11-08 17:37:29'),
(3, 'NR003', 'US006', '2014-11-08 17:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `EmergencyContact` varchar(11) NOT NULL,
  `EmergencyName` varchar(30) NOT NULL,
  `EmergencyRelationship` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `Patient_ID`, `User_ID`, `EmergencyContact`, `EmergencyName`, `EmergencyRelationship`, `TimeStamp`) VALUES
(1, 'PT001', 'US009', '0168978281', 'Aizat', 'Son', '2014-11-08 17:39:17'),
(2, 'PT002', 'US010', '0125645352', 'Ravi', 'Son in Law', '2014-11-08 17:39:17'),
(3, 'PT003', 'US011', '0193512984', 'Wei', 'Daugther', '2014-11-08 17:39:17');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`ID`, `Receptionist_ID`, `User_ID`, `Password`, `TimeStamp`) VALUES
(1, 'RP001', 'US007', 'asd1234', '2014-11-08 17:39:58'),
(2, 'RP002', 'US008', 'asd1234', '2014-11-08 17:39:58'),
(3, '', 'admin', '123456', '2014-11-11 13:36:29'),
(4, '', 'admin', 'admin', '2014-11-13 07:26:37');

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
