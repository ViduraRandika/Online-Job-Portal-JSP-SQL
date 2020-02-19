-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 05:32 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojp`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobid` varchar(30) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `experience` varchar(3) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `functionalarea` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `keyskills` varchar(255) DEFAULT NULL,
  `vacancy` varchar(10) DEFAULT NULL,
  `interviewdate` varchar(30) DEFAULT NULL,
  `interviewtime` varchar(30) DEFAULT NULL,
  `interviewplace` varchar(255) DEFAULT NULL,
  `recruiter` varchar(255) DEFAULT NULL,
  `dateofposting` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobid`, `title`, `location`, `experience`, `salary`, `description`, `functionalarea`, `role`, `keyskills`, `vacancy`, `interviewdate`, `interviewtime`, `interviewplace`, `recruiter`, `dateofposting`) VALUES
('34', '34', 'Delhi', '1', '243434', 'ererer', 'BPO', 'Sales Executive', 'er', '2', '2020-01-02', '03:32', 'refr', 'ee', 'Sun 26.01.2020 at 07:20:11'),
('j002', 'graphic designer', 'Noida', '1', '50000', 'kjkknjkj', 'Automotive', 'Sales Executive', 'ps', '1', '2020-01-08', '01:14', 'nn', 'isuru', 'Tue 28.01.2020 at 12:16:08'),
('j01', 'software engineer', 'Noida', '2', '20000', 'mmmnm', 'Automotive', 'Teacher', 'java', '1', '2020-01-07', '11:00', 'kk', 'isu', 'Sat 25.01.2020 at 02:48:45'),
('j02', 'software', 'Delhi', '1', '20000', 'njsjbf', 'Computer Software', 'Sales Executive', 'java', '1', '2020-01-22', '02:05', 'jjad', 'ee', 'Sun 26.01.2020 at 06:58:58'),
('j03', 'fg', 'Delhi', '1', '55555', 'fgfg', 'Automotive', 'Sales Executive', 'jj', '2', '2019-12-31', '02:05', 'kandy', 'ee', 'Mon 27.01.2020 at 12:23:57'),
('j06', 'graphic', 'Noida', '3', '566666', 'mjghb', 'Banking', 'Manager', 'sql', '1', '2020-01-17', '02:06', 'colombo', 'ee', 'Mon 27.01.2020 at 12:25:43'),
('k001', 'system analysis', 'kandy', '3', '50000', 'jdfjsjdfjs', 'Computer Software', 'Software Professional', 'java', '2', '2020-01-16', '10:01', 'kandy', 'isuru', 'Tue 28.01.2020 at 09:00:54'),
('tt', 'tti', 'Delhi', '1', '23333w', 'sdsdsds', 'Computer Hardware', 'Sales Executive', 'java', '1', '2020-01-02', '02:02', 'sfndjfbhdf', 'ee', 'Sun 26.01.2020 at 07:02:09'),
('ww', 'ww', 'Delhi', '2', '222222', 'sdsdsdsd', 'Computer Hardware', 'Teacher', 'dd', '2', '2020-01-02', '02:02', 'sdsdsd', 'ee', 'Sun 26.01.2020 at 07:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekerprofile`
--

CREATE TABLE `jobseekerprofile` (
  `username` varchar(200) NOT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `experience` varchar(2) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `keyskills` varchar(255) DEFAULT NULL,
  `projects` varchar(255) DEFAULT NULL,
  `itskills` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `certifications` varchar(255) DEFAULT NULL,
  `workdetails` varchar(255) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `maritialstatus` varchar(20) DEFAULT NULL,
  `languagesknown` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseekerprofile`
--

INSERT INTO `jobseekerprofile` (`username`, `fname`, `lname`, `designation`, `location`, `experience`, `email`, `mobile`, `keyskills`, `projects`, `itskills`, `education`, `certifications`, `workdetails`, `dob`, `gender`, `hometown`, `maritialstatus`, `languagesknown`) VALUES
('12345', '11211`', '11121', 'qqwqwe', 'wqew', '2', 'qw@we', '1212', 'dfdf', 'dfd', 'cd', 'cd', 'dfed', 'dsfed', '2021-02-28', 'male', 'sfdfg', 'single', 'dfdfd'),
('eran_nadeera', 'Eran', 'Nadeera', 'Undergraduate', 'kurunegala', '1', 'angishan@gmail.com', '0713819806', 'time', 'java', 'Html,css', 'Bs.C', 'coursera', 'no', '1996-09-20', 'male', 'kurunegala', 'single', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `usertype` varchar(20) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`usertype`, `username`, `password`) VALUES
('jobseeker', '12345', '12345'),
('recruiter', 'ee', 'ee'),
('jobseeker', 'eran_nadeera', '12345'),
('recruiter', 'isuru', '123'),
('jobseeker', 'rr', 'rr'),
('recruiter', 'todd', '123'),
('recruiter', 'todda', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `from_username` varchar(200) DEFAULT NULL,
  `to_username` varchar(200) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `forjob` varchar(100) DEFAULT NULL,
  `datetime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`from_username`, `to_username`, `message`, `forjob`, `datetime`) VALUES
('rr', 'isu', 'Applied for ', 'j01', 'Sun 26.01.2020 at 07:13:28'),
('rr', 'isu', 'Applied for ', 'j01', 'Sun 26.01.2020 at 07:13:39'),
('12345', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 01:19:04'),
('12345', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 01:19:56'),
('12345', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 01:22:28'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:01:18'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:01:27'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:01:40'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:32:19'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:34:31'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:37:50'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:42:34'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 10:45:33'),
('eran_nadeera', 'isu', 'Applied for ', 'j01', 'Mon 27.01.2020 at 10:49:20'),
('eran_nadeera', 'isu', 'Applied for ', 'j01', 'Mon 27.01.2020 at 10:49:27'),
('eran_nadeera', 'ee', 'Applied for ', '34', 'Mon 27.01.2020 at 11:28:15'),
('isuru', 'null', 'Selected for Interview for job ', 'null', 'Tue 28.01.2020 at 12:26:25'),
('isuru', 'null', 'Selected for Interview for job ', 'null', 'Tue 28.01.2020 at 12:27:19'),
('isuru', 'null', 'Selected for Interview for job ', 'null', 'Tue 28.01.2020 at 12:31:29'),
('eran_nadeera', 'isuru', 'Applied for ', 'j002', 'Tue 28.01.2020 at 12:33:42'),
('eran_nadeera', 'isuru', 'Applied for ', 'j002', 'Tue 28.01.2020 at 12:33:56'),
('isuru', 'eran_nadeera', 'Selected for Interview for job ', 'j002', 'Tue 28.01.2020 at 12:34:50'),
('isuru', 'eran_nadeera', 'Selected for Interview for job ', 'j002', 'Tue 28.01.2020 at 12:34:54'),
('eran_nadeera', 'isuru', 'Applied for ', 'j002', 'Tue 28.01.2020 at 12:35:21'),
('isuru', 'null', 'Selected for Interview for job ', 'null', 'Tue 28.01.2020 at 12:41:51'),
('isuru', 'null', 'Selected for Interview for job ', 'null', 'Tue 28.01.2020 at 12:43:32'),
('isuru', 'eran_nadeera', 'Selected for Interview for job ', 'j002', 'Tue 28.01.2020 at 12:59:32'),
('eran_nadeera', 'isuru', 'Applied for ', 'j002', 'Tue 28.01.2020 at 01:03:25'),
('eran_nadeera', 'isuru', 'Applied for ', 'k001', 'Tue 28.01.2020 at 09:44:01'),
('isuru', 'eran_nadeera', 'Selected for Interview for job ', 'k001', 'Tue 28.01.2020 at 09:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `recruiterprofile`
--

CREATE TABLE `recruiterprofile` (
  `username` varchar(200) NOT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiterprofile`
--

INSERT INTO `recruiterprofile` (`username`, `fname`, `lname`, `company`, `designation`, `location`, `email`, `mobile`, `gender`) VALUES
('isuru', 'isuru', 'bandara', 'mass', 'manager', 'badulla', 'achiraisuru@gmail.com', '0711629693', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `jobseekerprofile`
--
ALTER TABLE `jobseekerprofile`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `recruiterprofile`
--
ALTER TABLE `recruiterprofile`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
