-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2014 at 04:30 PM
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
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `Patient_ID` varchar(5) NOT NULL,
  `Schedule_ID` varchar(5) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Patient_ID`, `Schedule_ID`, `Status`, `Timestamp`) VALUES
('PT001', 'SC001', 'Pending', '2014-11-20 16:39:58'),
('PT002', 'SC003', 'Pending', '2014-11-20 16:39:58'),
('PT003', 'SC004', 'Completed', '2014-11-20 16:39:58'),
('PT002', 'SC006', 'Pending', '2014-11-20 16:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `gp`
--

CREATE TABLE IF NOT EXISTS `gp` (
  `GP_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
-- Table structure for table `main_table`
--

CREATE TABLE IF NOT EXISTS `main_table` (
  `User_ID` varchar(5) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `IC/Passport` varchar(14) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `DateOFBirth` date NOT NULL,
  `Category` varchar(12) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`User_ID`, `FirstName`, `LastName`, `Address`, `IC/Passport`, `PhoneNumber`, `DateOFBirth`, `Category`, `Sex`, `TimeStamp`) VALUES
('US001', 'Siva', 'Kunalan', '', '830918-01-1547', '0172768812', '1983-09-18', 'GP', 'Male', '2014-11-08 09:26:06'),
('US002', 'Angelo', 'Andy', '', 'A301324', '0127540892', '1973-03-22', 'GP', 'Female', '2014-11-08 09:26:06'),
('US003', 'Aron', 'Aziz', '', '840601-14-1482', '01118426416', '1984-06-01', 'GP', 'Male', '2014-11-08 09:31:37'),
('US004', 'Siti', 'Nurhaliza', '', '881117-04-6242', '0142873456', '1988-11-17', 'Nurse', 'Female', '2014-11-08 09:31:37'),
('US005', 'Vivian', 'Loke', '', '890228-06-7485', '0167891423', '1989-02-28', 'Nurse', 'Female', '2014-11-08 09:31:37'),
('US006', 'Kajal', 'Agraval', '', '870513-09-9614', '0136542891', '1987-05-13', 'Nurse', 'Female', '2014-11-08 09:31:37'),
('US007', 'Mary', 'Jane', '', '900312-14-6625', '0194261538', '1990-03-12', 'Receptionist', 'Female', '2014-11-08 09:32:54'),
('US008', 'Noor', 'Rozita', '', '870415-14-3245', '0174861539', '1987-04-15', 'Receptionist', 'Female', '2014-11-08 09:35:11'),
('US009', 'Hisamudin', 'Ahmad', 'No.2 Taman Setapak Permai 53300 Kuala Lumpur', '710825-01-1256', '0147419635', '1971-08-25', 'Patient', 'Male', '2014-12-02 13:30:53'),
('US010', 'Muthu', 'Pillay', 'A-07-07, Jalan Ikan Emas,\r\nMesra villa, \r\nTaman Pandan Mesra,\r\n68000 Ampang, \r\nSelangor', '690915-08-4826', '0161597534', '1969-09-15', 'Patient', 'Male', '2014-12-02 14:42:11'),
('US011', 'Jinghua', 'Juan', 'No.42 Lorong 2, Taman Maluri Shah Alam 51200 Sealngor', 'F52612L', '0194561597', '1965-07-03', 'Patient', 'Female', '2014-12-02 14:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE IF NOT EXISTS `nurse` (
  `Nurse_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `Patient_ID` varchar(5) NOT NULL,
  `Medicine_Name` varchar(20) NOT NULL,
  `Dosage` varchar(20) NOT NULL,
  `Period` varchar(20) NOT NULL,
  `Extension_Period` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`Patient_ID`, `Medicine_Name`, `Dosage`, `Period`, `Extension_Period`, `TimeStamp`) VALUES
('PT001', 'Panadol', '3', '2 weeks', '', '2014-11-13 16:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE IF NOT EXISTS `receptionist` (
  `Receptionist_ID` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`Receptionist_ID`, `User_ID`, `Password`, `TimeStamp`) VALUES
('RP001', 'US007', 'asd1234', '2014-11-08 09:39:58'),
('RP002', 'US008', 'asd1234', '2014-11-08 09:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `Schedule_Id` varchar(5) NOT NULL,
  `User_ID` varchar(5) NOT NULL,
  `Date` date NOT NULL,
  `Availability` varchar(6) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Schedule_Id`, `User_ID`, `Date`, `Availability`, `TimeStamp`) VALUES
('SC001', 'US001', '2014-01-12', 'False', '2014-11-08 09:43:56'),
('SC002', 'US004', '2014-01-12', 'TRUE', '2014-11-08 09:43:56'),
('SC003', 'US002', '2014-02-12', 'TRUE', '2014-11-08 09:43:56'),
('SC004', 'US003', '2014-03-12', 'False', '2014-11-08 09:43:56'),
('SC005', 'US005', '2014-03-12', 'TRUE', '2014-11-08 09:43:56'),
('SC006', 'US002', '2014-04-12', 'False', '2014-11-08 09:43:56'),
('SC007', 'US006', '2014-04-12', 'TRUE', '2014-11-08 09:43:56'),
('SC008', 'US004', '2014-04-12', 'TRUE', '2014-11-08 09:43:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
 ADD KEY `Patient_ID` (`Patient_ID`), ADD KEY `Schedule_ID` (`Schedule_ID`);

--
-- Indexes for table `gp`
--
ALTER TABLE `gp`
 ADD PRIMARY KEY (`GP_ID`), ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `main_table`
--
ALTER TABLE `main_table`
 ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
 ADD PRIMARY KEY (`Nurse_ID`), ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD PRIMARY KEY (`Patient_ID`), ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
 ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
 ADD PRIMARY KEY (`Receptionist_ID`), ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
 ADD PRIMARY KEY (`Schedule_Id`), ADD KEY `User_ID` (`User_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Schedule_ID`) REFERENCES `schedule` (`Schedule_Id`);

--
-- Constraints for table `gp`
--
ALTER TABLE `gp`
ADD CONSTRAINT `gp_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `main_table` (`User_ID`);

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
