-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 03:47 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminname1` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminname1`, `password`) VALUES
('lally', 'lally');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `Event_type` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `service` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`name`, `email`, `mobile`, `Event_type`, `city`, `date`, `address`, `time`, `service`) VALUES
('Lalitha Sowmya', 'lalithasowmya1@gmail.com', 9849934338, 'Birthday', 'Bhimavaram', '2022-02-13', 'Bhimavaram', '01:00:00.000000', 'service'),
('Lalitha Sowmya', 'lalithasowmya1@gmail.com', 9849934338, 'Birthday', 'Bhimavaram', '2022-02-13', 'Bhimavaram', '01:00:00.000000', ''),
('Lalitha Sowmya', 'lalithasowmya1@gmail.com', 9849934338, 'Birthday', 'Bhimavaram', '2022-02-13', 'Bhimavaram', '01:00:00.000000', ''),
('Lalitha Sowmya', 'lalithasowmya1@gmail.com', 9849934338, 'Birthday', 'Bhimavaram', '2022-02-13', 'Bhimavaram', '01:00:00.000000', 'Photography,Decorati'),
('Lalitha Sowmya', 'lalithasowmya1@gmail.com', 9849934338, 'Birthday', 'Bhimavaram', '2022-02-13', 'Bhimavaram', '01:02:00.000000', 'Food,Decoration'),
('Lalitha Sowmya', 'lalithasowmya1@gmail.com', 9849934338, 'Birthday', 'Bhimavaram', '2022-02-14', 'Bhimavaram', '15:04:00.000000', 'Food,Photography'),
('Tejaswi', 'tejaswi@gmail.com', 9182361686, 'Birthday', 'Bhimavaram', '2022-02-13', 'Bhimavaram', '13:00:00.000000', 'Photography');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `confirmpassword` varchar(10) NOT NULL,
  `contactnumber` bigint(10) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`email`, `name`, `username`, `password`, `confirmpassword`, `contactnumber`, `city`) VALUES
('devi@gmail.com', 'k.Devi', 'Devi', 'devi', 'devi', 9182361686, 'Vijayawada'),
('karimsettidevi@gmail.com', 'K.Devi', 'Devi', 'devi', 'devi', 9182361686, 'Visakapatanam'),
('lalithasowmya12@gmail.com', 'Lalitha Sowmya', 'lally', 'lally', 'lally', 0, 'Bhimavaram'),
('lalithasowmya1@gmail.com', 'Lalitha Sowmya', 'laitha_sowmya', 'lally', 'lally', 9849934338, 'Bhimavaram'),
('lally@gmail.com', 'lalitha', 'laitha_sowmya', 'lally', 'lally', 9849934338, 'Bhimavaram'),
('tejaswi@gmail.com', 'teju', 'teju', 'teju', 'teju', 9182361686, 'Bhimavaram');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(30) NOT NULL,
  `id` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `id`, `branch`, `password`, `confirmpassword`) VALUES
('Tejaswi', '1203', 'AIDS', 'teju', 'teju');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
