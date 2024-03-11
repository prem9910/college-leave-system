-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 06:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsti_leave`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `CreationDate`) VALUES
(2, 'Information Technologies', 'IT', '2024-03-01 07:19:37'),
(4, 'Computer Science Application', 'CSA', '2024-03-07 08:29:59'),
(5, 'Electronics Mechanic', 'EM', '2024-03-07 08:31:27'),
(6, 'Computer Hardware and Network Maintenance', 'CHNM', '2024-03-07 08:32:31'),
(7, 'Fitter', 'FIT', '2024-03-07 08:34:18'),
(8, 'Advanced Diploma in IT, Networking and Cloud Computing', 'ADIT', '2024-03-07 09:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `emp_id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `Staff_ID` varchar(50) NOT NULL,
  `Position_Staff` varchar(100) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL,
  `signature` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`emp_id`, `FirstName`, `LastName`, `Staff_ID`, `Position_Staff`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`, `signature`) VALUES
(10, 'Prem', 'Prakash', 'TK-222', 'Lecturer', 'iamprem021@gmail.com', 'f5c0c4da1f91f20f9bb3a0e0fe376d4f', 'male', '24 November 1998', 'ICT', 'Jaipur', '16', '9910885729', 'Online', '2022-08-04 18:18:50', 'Admin', 'pngwing.com (4).png', 'reg_re_9910885729_10.png'),
(12, 'Narmada ', 'P', 'NSTI2024001', 'Training Officer', 'narmadap@gmail.com', '7e57263a9bd393e6bb58a8935c1a89c6', 'female', '20 May 1989', 'CSA', 'Tamil Nadu', '30', '9865945879', 'Offline', '2024-03-07 09:18:17', 'HOD', 'NO-IMAGE-AVAILABLE.jpg', ''),
(13, 'Vikas', 'Sharma', 'NSTI2024CSA01', 'Apprenticeship', 'vikas2024@gmail.com', '76699a84f94b8d20b6ffe7f37a53e710', 'male', '12 January 2000', 'CSA', 'Uttar Pradesh', '30', '6352948594', 'Offline', '2024-03-07 09:22:05', 'Staff', 'NO-IMAGE-AVAILABLE.jpg', ''),
(14, 'Ankur', 'Mishra', 'EDUNET001', 'Master Trainer', 'ankur2024@gmail.com', '92005e3574c2e3d01c88ff3d0ecb62d2', 'male', '14 July 1994', 'ADIT', 'Bihar', '30', '9878459887', 'Offline', '2024-03-07 09:46:52', 'Staff', 'NO-IMAGE-AVAILABLE.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblleave`
--

CREATE TABLE `tblleave` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `RequestedDays` int(11) NOT NULL,
  `DaysOutstand` int(11) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `ToDate` varbinary(120) DEFAULT NULL,
  `Sign` varchar(120) DEFAULT NULL,
  `PostingDate` date DEFAULT NULL,
  `WorkCovered` varchar(120) DEFAULT NULL,
  `HodRemarks` int(11) NOT NULL DEFAULT 0,
  `HodSign` varchar(200) NOT NULL,
  `HodDate` varchar(120) NOT NULL,
  `RegRemarks` int(1) NOT NULL DEFAULT 0,
  `RegSign` varchar(200) NOT NULL,
  `RegDate` varchar(120) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `num_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblleavestd`
--

CREATE TABLE `tblleavestd` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `RequestedDays` int(11) NOT NULL,
  `DaysOutstand` int(11) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `ToDate` varbinary(120) DEFAULT NULL,
  `Sign` varchar(120) DEFAULT NULL,
  `PostingDate` date DEFAULT NULL,
  `WorkCovered` varchar(120) DEFAULT NULL,
  `HodRemarks` int(11) NOT NULL DEFAULT 0,
  `HodSign` varchar(200) NOT NULL,
  `HodDate` varchar(120) NOT NULL,
  `RegRemarks` int(1) NOT NULL DEFAULT 0,
  `RegSign` varchar(200) NOT NULL,
  `RegDate` varchar(120) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `stdid` int(11) DEFAULT NULL,
  `num_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavestd`
--

INSERT INTO `tblleavestd` (`id`, `LeaveType`, `RequestedDays`, `DaysOutstand`, `FromDate`, `ToDate`, `Sign`, `PostingDate`, `WorkCovered`, `HodRemarks`, `HodSign`, `HodDate`, `RegRemarks`, `RegSign`, `RegDate`, `IsRead`, `stdid`, `num_days`) VALUES
(5, 'Casual Leave', 6, 20, '14-03-2024', 0x32312d30332d32303234, 'sig_mi_8754659812_11.png', '2024-03-07', NULL, 0, '', '', 0, '', '', 0, 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `date_from` varchar(200) NOT NULL,
  `date_to` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date_from`, `date_to`, `CreationDate`) VALUES
(5, 'Casual Leave', 'Casual Leave', '2021-05-23', '2021-06-20', '2021-05-19 14:32:03'),
(6, 'Medical Leave', 'Medical Leave', '2021-05-05', '2021-05-28', '2021-05-19 15:29:05'),
(8, 'Other', 'Leave all staff', '31-05-2021', '04-06-2021', '2021-05-20 17:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `std_id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `Student_ID` varchar(50) NOT NULL,
  `Position_Student` varchar(100) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL,
  `signature` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`std_id`, `FirstName`, `LastName`, `Student_ID`, `Position_Student`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`, `signature`) VALUES
(14, 'Rohit', 'Gupta', 'CSA2024001', '', 'rohit2024@gmail.com', '11100e74dce179476f22af3ed3f8681a', 'male', '07 July 1992', 'CSA', 'Delhi', '20', '9845786945', 'Online', '2024-03-07 09:30:26', 'Student', 'NO-IMAGE-AVAILABLE.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` text NOT NULL,
  `outgoing_msg_id` text NOT NULL,
  `text_message` text NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tblleave`
--
ALTER TABLE `tblleave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavestd`
--
ALTER TABLE `tblleavestd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`stdid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblleave`
--
ALTER TABLE `tblleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblleavestd`
--
ALTER TABLE `tblleavestd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
