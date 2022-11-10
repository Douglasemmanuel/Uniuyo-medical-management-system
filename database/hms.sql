-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 10:48 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'General Physician', 3, 2, 1200, '2022-11-05', '12:15 PM', '2022-11-05 10:59:38', 0, 1, '2022-11-05 11:09:47'),
(7, 'General Physician', 10, 2, 5000, '2022-11-05', '12:15 PM', '2022-11-05 11:09:17', 1, 1, NULL),
(8, 'Gynecologist/Obstetrician', 12, 9, 5000, '2022-11-09', '11:00 AM', '2022-11-08 19:49:02', 1, 1, NULL),
(9, 'Dentist', 13, 9, 4000, '2022-11-10', '9:00 AM', '2022-11-08 19:49:36', 0, 1, '2022-11-08 19:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(12, 'Gynecologist/Obstetrician', 'Peter', '16 Akpan Essien', '5000', 70474773873, 'Peter@example.com', 'ab3cf979cfc7cd81f11caa957b1a56f5', '2022-11-06 13:19:12', NULL),
(13, 'Dentist', 'Blessing Akpan', '50 Nwaniba road', '4000', 234707059000, 'Blessing@gmail.com', 'ab3cf979cfc7cd81f11caa957b1a56f5', '2022-11-07 16:29:18', NULL),
(14, 'Dermatologist', 'Utibe', 'Ikpa road', '1500', 70474773873, 'Utibe@example.com', 'ab3cf979cfc7cd81f11caa957b1a56f5', '2022-11-08 19:55:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-11-05 10:47:16', '05-11-2022 04:19:55 PM', 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:01:17', '05-11-2022 04:32:22 PM', 1),
(22, 10, 'uyo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:10:26', '05-11-2022 05:00:58 PM', 1),
(23, 10, 'uyo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:31:29', NULL, 1),
(24, 10, 'uyo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:34:47', NULL, 1),
(25, NULL, 'utibe', 0x3a3a3100000000000000000000000000, '2022-11-05 11:52:18', NULL, 0),
(26, 10, 'uyo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:52:55', NULL, 1),
(27, 12, 'Peter@example.com', 0x3a3a3100000000000000000000000000, '2022-11-08 19:59:40', '09-11-2022 01:29:46 AM', 1),
(28, 12, 'Peter@example.com', 0x3a3a3100000000000000000000000000, '2022-11-08 20:01:07', '09-11-2022 11:49:48 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'i will address the issue today and get back to you tomorrow', '2022-11-05 11:45:16', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 6, 'normal ', 'high', '89', 'normal', 'He has diabetes and needs to be given drugs', '2022-11-05 11:24:10'),
(9, 7, 'high', 'normal', '78', '26', 'Do a lot of exercise and do sit ups as well', '2022-11-05 11:40:00'),
(10, 8, 'normal ', 'normal', '78', '26', 'take vitamin c', '2022-11-08 20:04:51'),
(11, 8, 'high', 'high', '89', '26', 'Go for surgery', '2022-11-08 20:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2019-11-05 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2019-11-05 11:58:59'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(6, 10, 'Peter', 4848484844, 'peter@gmail.com', 'male', 'lukman street ', 32, 'Diabetic', '2022-11-05 11:22:28', NULL),
(7, 10, 'sarita pandey', 9093474747, 'sarita@gmail.com', 'Male', 'east town', 21, 'high blood pressure', '2022-11-05 11:38:27', '2022-11-05 11:40:31'),
(8, 12, 'Peter', 703111638, 'Peter1@yahoo', 'male', 'Oron', 21, 'None', '2022-11-08 20:03:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 10:51:34', '05-11-2022 04:30:32 PM', 1),
(25, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:03:07', '05-11-2022 04:35:10 PM', 1),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:08:52', '05-11-2022 04:39:57 PM', 1),
(27, NULL, 'uyo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:31:25', NULL, 0),
(28, NULL, 'peter', 0x3a3a3100000000000000000000000000, '2022-11-05 11:32:59', NULL, 0),
(29, NULL, 'peter@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:33:23', NULL, 0),
(30, NULL, 'uyo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:33:32', NULL, 0),
(31, NULL, 'uyo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-05 11:51:34', NULL, 0),
(32, 8, 'emem@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:33', NULL, 1),
(33, 8, 'emem@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:31:11', NULL, 1),
(34, 8, 'emem@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:34:39', '06-11-2022 06:39:59 PM', 1),
(35, NULL, 'emem', 0x3a3a3100000000000000000000000000, '2022-11-07 16:20:20', NULL, 0),
(36, 8, 'emem@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-07 16:20:30', '07-11-2022 09:51:59 PM', 1),
(37, NULL, 'peter ', 0x3a3a3100000000000000000000000000, '2022-11-08 19:46:19', NULL, 0),
(38, 9, 'ashlen.lee007@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-08 19:47:00', '09-11-2022 01:20:34 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `RegNumber` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `RegNumber`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(3, 'Okon Etuk Efa', '30 Oron Road', '2847477', 'male', 'etukefa@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '2022-11-09 07:16:14'),
(4, 'Blessing Peter Etim', 'University of uyo hostel', '2333222', 'Female', 'Blessing390@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '2022-11-09 07:19:39'),
(8, 'Emem', '4 Oron Road', '2327222', 'female', 'emem@gmail.com', 'ab3cf979cfc7cd81f11caa957b1a56f5', '2022-11-06 12:03:55', NULL),
(9, 'Peter', '89 nwaniba road', '2645124', 'male', 'ashlen.lee007@gmail.com', 'ab3cf979cfc7cd81f11caa957b1a56f5', '2022-11-08 19:41:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
