-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2018 at 03:30 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aphp`
--
CREATE DATABASE `aphp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aphp`;

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE IF NOT EXISTS `connection` (
  `Username` varchar(20) NOT NULL,
  `Mobileno` varchar(10) DEFAULT NULL,
  `ISP` varchar(20) DEFAULT NULL,
  `Plan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connection`
--

INSERT INTO `connection` (`Username`, `Mobileno`, `ISP`, `Plan`) VALUES
('', '', '', ''),
('AB2K', '7042214510', 'APHP Net', 'Supreme');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Name` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Deladdress` varchar(100) DEFAULT NULL,
  `Mobileno` varchar(10) NOT NULL,
  PRIMARY KEY (`Mobileno`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Name`, `Username`, `Password`, `Deladdress`, `Mobileno`) VALUES
('Piyush Jaiswal', 'PJstar', 'livelife', 'sagarpur', '7210479283'),
('Abhinav Sharma', 'AB2K', 'abgo', 'Near Shakuntla', '9971571711'),
('Aman Pandey', 'Pandey2K', 'pandu', 'Bihar', '9999999999'),
('Himanshu', 'Ghosty', 'X', 'Shakuntla	', '9999999998');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `empname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empname`) VALUES
('ElonMusk'),
('BillGates'),
('Jeff Bezos'),
('Pandey Ji');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `Username` varchar(20) NOT NULL,
  `Feedback` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Username`, `Feedback`) VALUES
('AB2K', 'I had fun.');

-- --------------------------------------------------------

--
-- Table structure for table `isp`
--

CREATE TABLE IF NOT EXISTS `isp` (
  `ISP` varchar(20) NOT NULL,
  `Office` varchar(30) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Supreme` int(10) DEFAULT NULL,
  `Medium` int(10) DEFAULT NULL,
  `Small` int(10) DEFAULT NULL,
  PRIMARY KEY (`ISP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isp`
--

INSERT INTO `isp` (`ISP`, `Office`, `Area`, `Supreme`, `Medium`, `Small`) VALUES
('APHP Net', 'New York', 'USA, Europe', 10000, 8000, 6000),
('Supernet', 'shakuntla', 'Dwarka,westSagarpur', 2550, 2300, 2100),
('UltimateNet', 'St1', 'Sagarpur', 3000, 2500, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `Username` varchar(20) NOT NULL,
  `Message` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Username`, `Message`) VALUES
('pandey2K', 'Have Patience!!!!'),
('Ghosty', 'Your request for new connection is accepted.'),
('AB2K', 'Hello!! this message is from Admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `Username` varchar(20) DEFAULT NULL,
  `p1` varchar(20) DEFAULT NULL,
  `p2` varchar(20) DEFAULT NULL,
  `p3` varchar(20) DEFAULT NULL,
  `p4` varchar(20) DEFAULT NULL,
  `p5` varchar(20) DEFAULT NULL,
  `p6` varchar(20) DEFAULT NULL,
  `p7` varchar(20) DEFAULT NULL,
  `p8` varchar(20) DEFAULT NULL,
  `tamt` varchar(10) DEFAULT NULL,
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Username`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `tamt`) VALUES
('PJstar', 'TwistedPairCable', 'CoaxialCable', 'OpticalFibre', '', '', '', '', '', '1205.0'),
('AB2K', 'TwistedPairCable', '', '', '', '', '', '', '', '1420.0');
