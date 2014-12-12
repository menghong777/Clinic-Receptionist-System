-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2014 at 10:29 AM
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
CREATE Database `clinic_receptionist`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appoinment_ID`, `Patient_ID`, `GP_ID`, `Date`, `Status`) VALUES
(2, 'PT002', 'GP001', '2015-05-08', 'Pending'),
(3, 'PT003', 'GP002', '2014-12-06', 'Done'),
(5, 'PT003', 'GP002', '2014-12-24', 'Cancelled'),
(14, 'PT002', 'GP002', '2014-12-05', 'Pending'),
(15, 'PT001', 'GP001', '2014-12-18', 'Pending'),
(21, 'PT001', 'GP003', '2014-12-12', 'Pending'),
(22, 'PT001', 'GP001', '2015-01-01', 'Pending'),
(23, 'PT001', 'GP003', '2014-12-16', 'Pending'),
(24, 'PT001', 'GP001', '2014-12-12', 'Pending'),
(25, 'PT002', 'GP002', '2014-12-12', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `gp`
--

CREATE TABLE IF NOT EXISTS `gp` (
  `GP_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GP_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gp`
--

INSERT INTO `gp` (`GP_ID`, `User_ID`, `TimeStamp`) VALUES
('GP001', 'US001', '2014-11-04 00:08:08'),
('GP002', 'US002', '2014-11-04 00:11:13'),
('GP003', 'US003', '2014-11-08 09:36:05');

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

-- --------------------------------------------------------

--
-- Table structure for table `main_table`
--

CREATE TABLE IF NOT EXISTS `main_table` (
  `User_ID` varchar(5) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `IdentificationID` varchar(14) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `DateOFBirth` date NOT NULL,
  `Category` varchar(12) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`User_ID`, `FirstName`, `LastName`, `Address`, `IdentificationID`, `PhoneNumber`, `DateOFBirth`, `Category`, `Sex`, `TimeStamp`) VALUES
('admin', 'Admin', 'Admin', 'Admin House', '123456789', '123456789', '2014-12-01', 'Receptionist', 'Female', '2014-12-12 10:28:14'),
('US001', 'Siva', 'Kunalan', '', '830918-01-1547', '0172768812', '1983-09-18', 'GP', 'Male', '2014-11-08 09:26:06'),
('US002', 'Angelo', 'Andy', '', 'A301324', '0127540892', '1973-03-22', 'GP', 'Female', '2014-11-08 09:26:06'),
('US003', 'Aron', 'Aziz', '', '840601-14-1482', '01118426416', '1984-06-01', 'GP', 'Male', '2014-11-08 09:31:37'),
('US004', 'Siti', 'Nurhaliza', '', '881117-04-6242', '0142873456', '1988-11-17', 'Nurse', 'Female', '2014-11-08 09:31:37'),
('US005', 'Vivian', 'Loke', '', '890228-06-7485', '0167891423', '1989-02-28', 'Nurse', 'Female', '2014-11-08 09:31:37'),
('US006', 'Kajal', 'Agraval', '', '870513-09-9614', '0136542891', '1987-05-13', 'Nurse', 'Female', '2014-11-08 09:31:37'),
('US007', 'Mary', 'Jane', '', '900312-14-6625', '0194261538', '1990-03-12', 'Receptionist', 'Female', '2014-11-08 09:32:54'),
('US008', 'Noor', 'Rozita', '', '870415-14-3245', '0174861539', '1987-04-15', 'Receptionist', 'Female', '2014-11-08 09:35:11'),
('US009', 'Hisamudin', 'Ahmad', 'No.2 Taman Setapak Permai 53300 Kuala Lumpur', '710825-01-1256', '0147419635', '1971-08-25', 'Patient', 'Male', '2014-12-04 09:38:01'),
('US010', 'Muthu', 'Pillay', ' Jalan Ikan Emas,Mesra villa, Taman Pandan Mesra, 68000 Ampang, Selangor', '690915-08-4826', '0161597534', '1969-09-15', 'Patient', 'Male', '2014-12-04 09:38:47'),
('US011', 'Jinghua', 'Juan', 'No.42 Lorong 2, Taman Maluri Shah Alam 51200 Sealngor', 'F52612L', '0194561597', '1965-07-03', 'Patient', 'Female', '2014-12-04 09:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE IF NOT EXISTS `nurse` (
  `Nurse_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Nurse_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Nurse_ID`, `User_ID`, `TimeStamp`) VALUES
('NR001', 'US004', '2014-11-08 09:37:29'),
('NR002', 'US005', '2014-11-08 09:37:29'),
('NR003', 'US006', '2014-11-08 09:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `Patient_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `EmergencyContact` varchar(11) NOT NULL,
  `EmergencyName` varchar(30) NOT NULL,
  `EmergencyRelationship` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Patient_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `User_ID`, `EmergencyContact`, `EmergencyName`, `EmergencyRelationship`, `TimeStamp`) VALUES
('PT001', 'US009', '0168978281', 'Aizat', 'Son', '2014-11-08 09:39:17'),
('PT002', 'US010', '0125645352', 'Ravi', 'Son in Law', '2014-11-08 09:39:17'),
('PT003', 'US011', '0193512984', 'Wei', 'Daugther', '2014-11-08 09:39:17');

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
(1, 'PT001', 'AntiBiotic', 1.2, 12, 6),
(2, 'PT002', 'Panadol', 2, 3, 0),
(3, 'PT003', 'Pamelor', 1.5, 7, 0),
(4, 'PT001', 'Antacids', 1, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE IF NOT EXISTS `receptionist` (
  `Receptionist_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Receptionist_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`Receptionist_ID`, `User_ID`, `Password`, `TimeStamp`) VALUES
('RP001', 'US007', 'asd1234', '2014-11-08 09:39:58'),
('RP002', 'US008', 'asd1234', '2014-12-04 09:27:40'),
('RP003', 'admin', 'admin', '2014-12-04 09:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `Schedule_Id` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `Date` date NOT NULL,
  `Availability` varchar(6) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Schedule_Id`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Schedule_Id`, `User_ID`, `Date`, `Availability`, `TimeStamp`) VALUES
('SC001', 'US001', '2014-12-08', 'False', '2014-11-08 09:43:56'),
('SC002', 'US004', '2014-12-08', 'TRUE', '2014-11-08 09:43:56'),
('SC003', 'US002', '2014-12-08', 'TRUE', '2014-11-08 09:43:56'),
('SC004', 'US003', '2014-12-09', 'False', '2014-11-08 09:43:56'),
('SC005', 'US005', '2014-12-09', 'TRUE', '2014-11-08 09:43:56'),
('SC006', 'US002', '2014-12-10', 'False', '2014-11-08 09:43:56'),
('SC007', 'US006', '2014-12-10', 'TRUE', '2014-11-08 09:43:56'),
('SC008', 'US004', '2014-12-11', 'TRUE', '2014-11-08 09:43:56');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`GP_ID`) REFERENCES `gp` (`GP_ID`);

--
-- Constraints for table `gp`
--
ALTER TABLE `gp`
  ADD CONSTRAINT `gp_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `main_table` (`User_ID`);

--
-- Constraints for table `health_report`
--
ALTER TABLE `health_report`
  ADD CONSTRAINT `health_report_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `health_report_ibfk_2` FOREIGN KEY (`GP_ID`) REFERENCES `gp` (`GP_ID`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `main_table` (`User_ID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `main_table` (`User_ID`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `receptionist_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `main_table` (`User_ID`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `main_table` (`User_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
