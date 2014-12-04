-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2014 at 10:40 AM
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
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`User_ID`, `FirstName`, `LastName`, `Address`, `IC/Passport`, `PhoneNumber`, `DateOFBirth`, `Category`, `Sex`, `TimeStamp`) VALUES
('admin', 'Admin', 'Gay', 'Gay house', '123456789', '123456789', '2014-12-01', 'Receptionist', 'Non', '2014-12-04 09:26:28'),
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
