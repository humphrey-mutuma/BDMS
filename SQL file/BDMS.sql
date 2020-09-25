-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BBDMS`
--
-- --------------------------------------------------------
--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Humphrey Mutuma', '78d260e91933e200a357ba2f1e28ef1c', '2020-03-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE IF NOT EXISTS `tblblooddonars` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Humphrey Mutuma', '0790464906', 'hum@gmail.com', 'Male', 20, 'A-', ' 1234 Meru', ' Hello there! A heart that gives receives more donate blood', '2020-03-20 20:14:16', 1),
(2, 'Samson Omwonga', '0741241241', 'sam@gmail.com', 'Male', 34, 'AB-', ' 1222 kisii', ' Hey hey! Donate blood', '2020-03-20 20:48:11', 1),
(3, 'Ezra Muthuri', '0752352352', 'ezra@gmail.com', 'Male', 23, 'A+', NULL, ' Hi, Giving blood gives somebody another chance to live kindly donate blood. ', '2020-03-20 07:21:21', 1),
(4, 'Mary Njeri', '0745435345', ' mike@gmail.com', 'Female', 26, 'AB+', NULL, ' Hey there! #Give blood #save life . ', '2020-03-20 07:21:42', 1),
(5, 'Joy Magdalene', '079855244', 'mary@gmail.com', 'Female', 32, 'o-', '1235 Nairobi', 'Whats up! You never know you fate! donate today save a life', '2020-03-20 09:00:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE IF NOT EXISTS `tblbloodgroup` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2020-03-20 20:33:50'),
(2, 'A+', '2020-03-20 20:34:00'),
(3, 'B-', '2020-03-20 20:34:00'),
(4, 'B+', '2020-03-20 20:34:00'),
(5, 'AB-', '2020-03-20 20:34:05'),
(6, 'AB+', '2020-03-20 20:34:10'),
(7, 'O-', '2020-03-20 20:34:13'),
(8, 'O+', '2020-03-20 20:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Muranga University Of Technology	      													 		', 'humphreymutuma@gmail.com', '0790464906');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Christiano Ronaldo ', 'cr7@gmail.com', '0747483647', ' Hi. i want to know if there is any blood donation center in meru and if not, the nearest center or hospital i can donate blood from. ', '2020-03-20 10:03:07', 1),
(2, 'Leo Messi', 'leo@gmail.com', '0742342342', 'Hello, How many times can one donate blood', '2020-03-20 21:17:09', NULL),
(3, 'Boni Osindi', 'boni@gmail.com', '0742342342', 'can i donate blood while am sick?', '2020-03-20 21:21:30', NULL),
(4, 'mwanzia Ben', 'ben@gmail.com', '07577875545', 'can a HIV/AIDS posistive person donate blood?', '2020-03-20 07:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become a Donor', 'donor', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify">There are unlimited advantages and reasons why you should consider donating blood. Most important being to save lives.People lose blood through various ways and they will be in need of blood failure to which they may not make it. Blood  is also used to treat patients who have inadequate blood or inacse one is diagnosed with a blood infection, he?she is  given new blood. The number of patients who are in need of blood increases on daily basis creating the need for more people to  volunteer in donating blood. You can be assured  that  blood donated is given freely to patients. Through Donating blood one i awarded a certificate of participation in saving peopls lives and incase of any blood infection in your whole  life you are able to receive free treatment courtest of red cross kenya with whom we have a partnership and we can be able to easily trace places where there may be an accurence  such an accident and we can be able to give the injured blood free of charges. </br> 
There are unlimited advantages and reasons why you should consider donating blood. Most important being to save lives. People lose blood through various ways and they will be in need of blood failure to which they may not make it. Blood  is also used to treat patients who have inadequate blood or in case one is diagnosed with a blood infection, he/she is  given new blood. The number of patients who are in need of blood increases on daily basis creating the need for more people to  volunteer in donating blood. You can be assured  that  blood donated is given freely to patients. Through Donating blood one is awarded a certificate of participation in saving peoples lives and incase of any blood infection in your whole  life you are able to receive free treatment courtesy of red cross Kenya with whom we have a partnership and we can be able to easily trace places where there may be an occurrence  such an accident and we can be able to give the injured blood free of charges. </span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;"> We are a non governmental organization that deals in helping kenyans across the country whom are sick by offering free treatment services and more so by collecting blood from  Donars across the country and giving it to anyone in need of blood. We are also involed in emengecy  operations like in cases of accidents we come as soon as possible to aid in treatment of any casualty. the blood donated is kept in our safe blood banks distributed across all counties in kenya for easy availability to all Kenyans </br></br> Blood donation management system deals in helping kenyans across the country whom are sick by offering free treatment services and more so by collecting blood from  Donars across the country and giving it to anyone in need of blood. We are also involed in emerngecy  operations like in cases of accidents we come as soon as possible to aid in treatment of any casualty. the blood donated is kept in our safe blood banks distributed across all counties in kenya </br></br></br></br></br></br>
 </span>');
--
-- AUTO_INCREMENT for dumped tables
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
