-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2020 at 01:47 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15158503_mama`
--

-- --------------------------------------------------------

--
-- Table structure for table `ClassSchedule`
--

CREATE TABLE `ClassSchedule` (
  `CourseCode` varchar(30) NOT NULL,
  `CourseName` varchar(30) NOT NULL,
  `Venue` varchar(30) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `Attendance` varchar(30) NOT NULL,
  `MatricNo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `CourseRegister`
--

CREATE TABLE `CourseRegister` (
  `id` int(60) NOT NULL,
  `MatricNo` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `CourseCode` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `CourseName` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `CreditHour` varchar(60) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CourseRegister`
--

INSERT INTO `CourseRegister` (`id`, `MatricNo`, `CourseCode`, `CourseName`, `CreditHour`) VALUES
(1, 'a111222333b2', 'b1111', 'Data Structure', '3'),
(2, 'a111222333b2', 'b1112', 'Database', '2'),
(3, 'a111222333b4', 'b1113', 'Data Algorithm', '2'),
(4, 'a111222333b1', 'b1114', 'Mathematic for Computer Science', '4'),
(5, 'a111222333b3', 'b1115', 'Computer Security', '3');

-- --------------------------------------------------------

--
-- Table structure for table `CourseRegisteration`
--

CREATE TABLE `CourseRegisteration` (
  `id` int(60) NOT NULL,
  `MatricNo` varchar(30) NOT NULL,
  `Session` varchar(30) NOT NULL,
  `RegistrationDate` varchar(50) DEFAULT NULL,
  `MinCourse` varchar(30) NOT NULL,
  `MaxCourse` varchar(30) NOT NULL,
  `CreditHour` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CourseRegisteration`
--

INSERT INTO `CourseRegisteration` (`id`, `MatricNo`, `Session`, `RegistrationDate`, `MinCourse`, `MaxCourse`, `CreditHour`) VALUES
(1, 'a111222333b2', '20202021/1', '19 JAN 2020', '16', '20', '7'),
(2, 'a111222333b4', '20202021/2', '30 JAN', '14', '20', '7'),
(3, 'a111222333b1', '20202021/3', '29 JAN', '17', '20', '9'),
(4, 'a111222333b3', '20202021/4', '31 JAN', '17', '20', '10'),
(5, 'a111222333b5', '20202021/3', '12 JAN', '16', '18', '12');

-- --------------------------------------------------------

--
-- Table structure for table `Dashboard`
--

CREATE TABLE `Dashboard` (
  `id` int(60) NOT NULL,
  `MatricNo` varchar(60) NOT NULL,
  `Details` varchar(30) NOT NULL,
  `EventDate` varchar(30) NOT NULL,
  `Anjuran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Dashboard`
--

INSERT INTO `Dashboard` (`id`, `MatricNo`, `Details`, `EventDate`, `Anjuran`) VALUES
(1, 'a111222333b2', 'PERTANDINGAN KEMAS', '12 JAN', 'KELAB SUKAN KTD'),
(2, 'a111222333b2', 'MASIR', '21 JAN', 'MPM'),
(3, 'a111222333b2', 'PERTANDINGAN MEWARNA UNI', '23 JAN', 'KELAB SENI KTD'),
(4, 'a111222333b2', 'MAJLIS KERAIAN PELAJAR', '22 FEB', 'KELAB SENI KTD'),
(5, 'a111222333b2', 'MAJLIS MAKAN MALAM ', '24 FEB', 'MPM');

-- --------------------------------------------------------

--
-- Table structure for table `ExamMark`
--

CREATE TABLE `ExamMark` (
  `id` int(60) NOT NULL,
  `CourseCode` varchar(60) NOT NULL,
  `CourseName` varchar(60) NOT NULL,
  `Credit` varchar(60) NOT NULL,
  `Attendance` varchar(60) NOT NULL,
  `WarningLetter` varchar(60) NOT NULL,
  `CourseWorkMark` varchar(60) NOT NULL,
  `Grade` varchar(60) NOT NULL,
  `MatricNo` varchar(60) NOT NULL,
  `RemainingCredit` varchar(30) NOT NULL,
  `TotalCredit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ExamMark`
--

INSERT INTO `ExamMark` (`id`, `CourseCode`, `CourseName`, `Credit`, `Attendance`, `WarningLetter`, `CourseWorkMark`, `Grade`, `MatricNo`, `RemainingCredit`, `TotalCredit`) VALUES
(1, 'b1111', 'Data Structure', '3', '98', '0', '38.9', 'A', 'a111222333b2', '', ''),
(2, 'b1112', 'Database', '2', '99', '1', '34.02', 'B', 'a111222333b4', '', ''),
(3, 'b1113', 'Data Algorithm', '2', '100', '0', '38.98', 'A', 'a111222333b1', '', ''),
(4, 'b1114', 'Mathematics For Computer Science', '4', '100', '0', '34.02', 'B', 'a111222333b3', '', ''),
(5, 'b1115', 'Computer Security', '3', '100', '1', '35.06', 'B+', 'a111222333b5', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ExamSchedule`
--

CREATE TABLE `ExamSchedule` (
  `CourseCode` varchar(60) NOT NULL,
  `CourseName` varchar(60) NOT NULL,
  `Venue` varchar(60) NOT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `Time` varchar(50) DEFAULT NULL,
  `MatricNo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ExamSchedule`
--

INSERT INTO `ExamSchedule` (`CourseCode`, `CourseName`, `Venue`, `Date`, `Time`, `MatricNo`) VALUES
('b1111', 'Data Structure', 'DKB', '12 MAC', '8 - 10 pagi', 'a111222333b2'),
('b1112', 'Database', 'DKA', '13 MAC', '10 - 12 pagi', 'a111222333b4'),
('b1113', 'Data Algorithm', 'BK1', '14 JAN', '2 -4 petang', 'a111222333b1'),
('b1114', 'Mathematic for Computer Science', 'BK2', '15 JAN', '8 -10 pagi', 'a111222333b3'),
('b1115', 'Computer Security', 'BK3', '15 MAC', '10-12 pagi', 'a111222333b5');

-- --------------------------------------------------------

--
-- Table structure for table `Financial`
--

CREATE TABLE `Financial` (
  `id` int(60) NOT NULL,
  `MatricNo` varchar(30) NOT NULL,
  `Semester` varchar(30) NOT NULL,
  `DateBanking` varchar(30) NOT NULL,
  `RefNo` varchar(50) NOT NULL,
  `Credit` varchar(50) NOT NULL,
  `Debit` varchar(30) NOT NULL,
  `Balance` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Financial`
--

INSERT INTO `Financial` (`id`, `MatricNo`, `Semester`, `DateBanking`, `RefNo`, `Credit`, `Debit`, `Balance`) VALUES
(1, 'a111222333b2', '', '30 MEI 2020', '123123123A', '2121', '3221', '2313'),
(2, 'a111222333b4', '', '31 MEI 2020', '123123123B', '1231', '4224', '2131'),
(3, 'a111222333b1', '', '1 MEI 2019', '123123123C', '3121', '1111', '3222'),
(4, 'a111222333b3', '', '2 MEI 2020', '123123123D', '3212', '3221', '2322'),
(5, 'a111222333b5', '', '3 MEI 2020', '123123123E', '2323', '1223', '4444');

-- --------------------------------------------------------

--
-- Table structure for table `Graduation`
--

CREATE TABLE `Graduation` (
  `id` int(60) NOT NULL,
  `MatricNo` varchar(30) NOT NULL,
  `CourseCode` varchar(60) NOT NULL,
  `CourseName` varchar(60) NOT NULL,
  `ExpectedSem` varchar(30) NOT NULL,
  `SessionTaken` varchar(30) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Graduation`
--

INSERT INTO `Graduation` (`id`, `MatricNo`, `CourseCode`, `CourseName`, `ExpectedSem`, `SessionTaken`, `Status`) VALUES
(1, 'a111222333b2', 'b1111', 'Data Structure', '3', '3', 'A-[PASS]'),
(2, 'a111222333b4', 'b1112', 'Database', '4', '5', 'D[FAIL]'),
(3, 'a111222333b3', 'b1113', 'Data Algorithm', '3', '5', 'C[PASS]'),
(4, 'a111222333b3', 'b1114', 'Mathematic for Computer Science', '4', '4', 'A+[PASS]'),
(5, 'a111222333b5', 'b1115', 'Computer Security', '2', '3', 'B+[PASS]');

-- --------------------------------------------------------

--
-- Table structure for table `Guardiance`
--

CREATE TABLE `Guardiance` (
  `id` int(60) NOT NULL,
  `IcNoGuardian` varchar(60) NOT NULL,
  `GuardianName` varchar(60) NOT NULL,
  `Relay` varchar(50) NOT NULL,
  `NumPhone` varchar(30) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `MatricNo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Guardiance`
--

INSERT INTO `Guardiance` (`id`, `IcNoGuardian`, `GuardianName`, `Relay`, `NumPhone`, `Address`, `MatricNo`) VALUES
(5, '890231059878', 'THARI THINA', 'FATHER', '0123334342', 'JALAN PUTIH, TERENGGANU', 'a111222333b5'),
(3, '891224012321', 'ZAMHANI BINTI ZAKARIA', 'MOTHER', '0133244234', 'LOT 4011A , SELANGOR', 'a111222333b1'),
(1, '892121050298', 'IBRAHIM BIN HARUN', 'MOTHER', '0133544375', 'JALAN RAZAK, SELANGOR', 'a111222333b2'),
(2, '898901234323', 'HUA WEI SIA', 'MOTHER', '0123423242', 'HALAN HITAM, PERAK', 'a111222333b4'),
(4, '901323908978', 'ILHAM BIN RAHMAN', 'FATHER ', '0123234234', 'JALAN KONI, PERAK', 'a111222333b3');

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `id` int(60) NOT NULL,
  `MatricNo` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `StudentName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`id`, `MatricNo`, `Password`, `RegDate`, `StudentName`) VALUES
(4, 'a111222333b4', '4444DDDD', '2020-10-28 15:38:39', 'LEE KIM HUI'),
(5, 'a111222333b5', '5555DDDD', '2020-10-28 15:38:39', 'THAMBI THARI'),
(111, 'a111222333b1', '1111AAAA', '2020-10-28 15:38:39', 'MUHAMMAD YUSUF BIN IBRAHIM'),
(222, 'a111222333b2', '2222BBBB', '2020-10-28 15:38:39', 'AMMAR BIN IBRAHIM'),
(333, 'a111222333b3', '3333CCCC', '2020-10-28 15:38:39', 'SARAH BINTI ILHAM');

-- --------------------------------------------------------

--
-- Table structure for table `ParentInfo`
--

CREATE TABLE `ParentInfo` (
  `IcNoGuardian` varchar(60) NOT NULL,
  `GuardianName` varchar(255) NOT NULL,
  `MatricNo` varchar(69) NOT NULL,
  `Relay` varchar(69) NOT NULL,
  `Job` varchar(255) NOT NULL,
  `Familyincome` varchar(30) NOT NULL,
  `NumPhone` varchar(50) NOT NULL,
  `OfficeNum` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Dependents` varchar(255) NOT NULL,
  `Address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ParentInfo`
--

INSERT INTO `ParentInfo` (`IcNoGuardian`, `GuardianName`, `MatricNo`, `Relay`, `Job`, `Familyincome`, `NumPhone`, `OfficeNum`, `Email`, `Dependents`, `Address`) VALUES
('890231059878', 'THARI THINA', 'a111222333b5', 'FATHER', 'MASSAGE PRACTITIONER', '2000', '0123334343', '0142424299', 'THARI@GMAIL.COM', 'KARINA KAPOOR', 'JALAN PUTIH,TERENGGANU'),
('891224012321', 'ZAMHANI BINTI ZAKARIA', 'a111222333b1', 'MOTHER', 'MANAGER', '1500', '0133244234', '0141431232', 'ZAMHANI@GMAIL.COM', 'MOTHER', 'LOT 4011A, SELANGOR'),
('892121050298', 'IBRAHIM BIN HARUN', 'a111222333b2', 'FATHER', 'SUPERVISOR', '3000', '0133544375', '0123425859', 'IBRAHIM@GMAIL.COM', 'ASIAH BINTI LUKMAN', 'JALAN RAZAK , SELANGOR'),
('898901234323', 'HUA WEI SIA', 'a111222333b4', 'FATHER', 'BUSINESSMAN', '30000', '0123423242', '0198667384', 'HUA@GMAIL.COM', 'LEE KIT SIANG', 'JALAN HITAM, PERAK'),
('901323908978', 'ILHAM BIN RAHMAN', 'a111222333b3', 'FATHER', 'CONTRACTOR', '5000', '0123234234', '0123424956', 'ILHAM@GMAIL.COM', 'MALIN BINTI ROSLAN', 'JALAN KONI, PERAK');

-- --------------------------------------------------------

--
-- Table structure for table `PersonalInfo`
--

CREATE TABLE `PersonalInfo` (
  `id` int(60) NOT NULL,
  `StudentName` varchar(255) NOT NULL,
  `MatricNo` varchar(60) NOT NULL,
  `IcNo` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Religion` varchar(30) NOT NULL,
  `Race` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `GuardianPhone` varchar(30) NOT NULL,
  `NumPhone` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PersonalInfo`
--

INSERT INTO `PersonalInfo` (`id`, `StudentName`, `MatricNo`, `IcNo`, `Gender`, `Religion`, `Race`, `Email`, `GuardianPhone`, `NumPhone`, `Address`) VALUES
(1, 'MUHAMMAD YUSUF BIN IBRAHIM', 'a111222333b1', '000616050197', 'Lelaki', 'Islam', 'Melayu', 'yusufsmik@gmail.com', '0133242422', '0133544375', 'JALAN KERAS, KELANTAN'),
(2, 'AMMAR BIN IBRAHIM', 'a111222333b2', '012223090198', 'Lelaki', 'Islam', 'Melayu', 'Ammar@gmail.com', '012312313', '012223432', 'JALAN HIDUP, SELANGOR'),
(3, 'SARAH BINTI ILHAM', 'a111222333b3', '000222090189', 'Perempuan', 'Islam', 'Melayu', 'SarahSuhaimi@gmail.com', '0123223213', '0129890789', 'JALAN PUNAI , PERAK'),
(4, 'LEE KIM HUI', 'a111222333b4', '001231091234', 'Lelaki', 'Islam', 'Cina', 'Lee11@gmail.com', '0123222233', '0123334545', 'JALAN BARAI, SABAH'),
(5, 'THAMBI THARI', 'a111222333b5', '013013090897', 'Perempuan', 'Hindu', 'India', 'Thambi@gmail.com', '0123332929', '0123334442', 'JALAN SERAM, JOHOR');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` int(60) NOT NULL,
  `MatricNo` varchar(60) NOT NULL,
  `Details` varchar(30) NOT NULL,
  `EventDate` varchar(30) NOT NULL,
  `Anjuran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `MatricNo`, `Details`, `EventDate`, `Anjuran`) VALUES
(1, 'a111222333b2', 'PERTANDINGAN KEMAS', '12 JAN', 'KELAB SUKAN KTD'),
(2, 'a111222333b2', 'MASIR', '21 JAN', 'MPM'),
(3, 'a111222333b2', 'PERTANDINGAN MEWARNA UNI', '23 JAN', 'KELAB SENI KTD'),
(4, 'a111222333b2', 'MAJLIS KERAIAN PELAJAR', '22 FEB', 'KELAB SENI KTD'),
(5, 'a111222333b2', 'MAJLIS MAKAN MALAM ', '24 FEB', 'MPM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ClassSchedule`
--
ALTER TABLE `ClassSchedule`
  ADD PRIMARY KEY (`CourseCode`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `CourseRegister`
--
ALTER TABLE `CourseRegister`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MatricNo` (`MatricNo`),
  ADD KEY `MatricNo_2` (`MatricNo`);

--
-- Indexes for table `CourseRegisteration`
--
ALTER TABLE `CourseRegisteration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `Dashboard`
--
ALTER TABLE `Dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `ExamMark`
--
ALTER TABLE `ExamMark`
  ADD PRIMARY KEY (`CourseCode`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `ExamSchedule`
--
ALTER TABLE `ExamSchedule`
  ADD PRIMARY KEY (`CourseCode`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `Financial`
--
ALTER TABLE `Financial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MatricNo` (`MatricNo`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `Graduation`
--
ALTER TABLE `Graduation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `Guardiance`
--
ALTER TABLE `Guardiance`
  ADD PRIMARY KEY (`IcNoGuardian`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `ParentInfo`
--
ALTER TABLE `ParentInfo`
  ADD PRIMARY KEY (`IcNoGuardian`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Indexes for table `PersonalInfo`
--
ALTER TABLE `PersonalInfo`
  ADD PRIMARY KEY (`MatricNo`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MatricNo` (`MatricNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ClassSchedule`
--
ALTER TABLE `ClassSchedule`
  ADD CONSTRAINT `ClassSchedule_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `CourseRegister`
--
ALTER TABLE `CourseRegister`
  ADD CONSTRAINT `CourseRegister_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `CourseRegisteration`
--
ALTER TABLE `CourseRegisteration`
  ADD CONSTRAINT `CourseRegisteration_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Dashboard`
--
ALTER TABLE `Dashboard`
  ADD CONSTRAINT `Dashboard_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ExamMark`
--
ALTER TABLE `ExamMark`
  ADD CONSTRAINT `ExamMark_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ExamSchedule`
--
ALTER TABLE `ExamSchedule`
  ADD CONSTRAINT `ExamSchedule_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Financial`
--
ALTER TABLE `Financial`
  ADD CONSTRAINT `Financial_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Graduation`
--
ALTER TABLE `Graduation`
  ADD CONSTRAINT `Graduation_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Guardiance`
--
ALTER TABLE `Guardiance`
  ADD CONSTRAINT `Guardiance_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Login`
--
ALTER TABLE `Login`
  ADD CONSTRAINT `Login_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ParentInfo`
--
ALTER TABLE `ParentInfo`
  ADD CONSTRAINT `ParentInfo_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `PersonalInfo` (`MatricNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
