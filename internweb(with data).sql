-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 06:05 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` bigint(20) NOT NULL,
  `organization` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `organization`, `email_id`, `password`, `first_name`, `last_name`, `phone_number`) VALUES
(1, 'NIC', 'nic@company.com', '1234', 'Murty', 'M', '9912423547'),
(2, 'NIC', 'nicdio@nic.gov.in', '$2y$10$EdFwSp3kZdNo5HEMaUaMSuMB56etpKDKnrB.LA3M8WuvLTeTX5vZ2', 'Murty', 'M', '9912423547'),
(4, 'Brain O Vision', 'brainovison@company.com', '$2y$10$BDzgod67uZK.BjKfu3DZnO.572b.A4A10ZhTijT6/Ndk465v/Bi7y', 'Appa', 'Rao', '7622703040'),
(5, 'employee 1 organization', 'employer1@gmail.com', '$2y$10$Pqm/My7XLSwOTt3CHdaBI.PTtaLEI6alI4gAnGdrwQnPhA/EDAy1W', 'employee', 'one', '8998898978'),
(6, 'employer 3 organization', 'employer3@gmail.com', '$2y$10$l34pYkNR6Vt87En8cvAG8..IFkVGxTX/qLxxoNB4moO2LGw9iz.WC', 'employer', 'three', '9343567845'),
(7, 'employer 2 organization', 'employer2@gmail.com', '$2y$10$njOdBI872rtGHcKV/WsypuagyyzZTqJ10m6q7Us9NEbiPg91ADrm2', 'employer', 'two', '9082562636');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_view`
-- (See below for the actual view)
--
CREATE TABLE `employee_view` (
`intern_id` bigint(20)
,`emp_id` bigint(20)
,`intern_title` varchar(255)
,`stipend` varchar(10)
,`posted_on` date
,`applied_on` date
,`apply_by` date
,`duration` varchar(20)
,`firstName` varchar(50)
,`lastName` varchar(50)
,`email` varchar(50)
,`intern_location` varchar(100)
,`organization` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `internlist`
--

CREATE TABLE `internlist` (
  `intern_id` bigint(20) NOT NULL,
  `emp_id` bigint(20) NOT NULL,
  `intern_topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intern_location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intern_duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stipend` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_by` date NOT NULL,
  `posted_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internlist`
--

INSERT INTO `internlist` (`intern_id`, `emp_id`, `intern_topic`, `intern_location`, `intern_duration`, `stipend`, `apply_by`, `posted_on`) VALUES
(2, 2, 'Web Development', 'work from home', '4 weeks', '3000', '2018-05-31', '2018-05-02'),
(3, 2, 'Android Developer', 'mahabubnagar, hyderabad', '6 weeks', '3000', '2018-05-31', '2018-05-22'),
(4, 2, 'Networks', 'hyderabad', '2 weeks', '100', '2018-05-28', '2018-05-23'),
(6, 5, 'Block Chain Technology', 'hyderabad, banglore, visakhapatnam', '3 months', '5000', '2018-06-23', '2018-05-24'),
(7, 7, 'Iot', 'visakhapatnam', '1 month', '1000', '2018-05-31', '2018-05-24'),
(8, 6, 'Graphic Design', 'work from home', '2 months', '6000', '2018-05-30', '2018-05-24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `internships_list`
-- (See below for the actual view)
--
CREATE TABLE `internships_list` (
`intern_id` bigint(20)
,`emp_id` bigint(20)
,`organization` varchar(50)
,`intern_title` varchar(255)
,`location` varchar(100)
,`duration` varchar(20)
,`stipend` varchar(10)
,`posted_on` date
,`apply_by` date
);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` bigint(20) NOT NULL,
  `email_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `email_id`, `password`, `firstName`, `lastName`) VALUES
(2, 'msmurty65@gmail.com', '$2y$10$M.tIaJf7I08WBMtsYtNzE.7a24QTrHiXuucHUq8Vpuz40VqFD2Dqy', 'Murthy', 'Maddula'),
(3, 'mbs.yaswanth@gmail.com', '$2y$10$XJKOUn.7iyRQmikimecGo.0iiyJjb1Xuf0au9Oi/hXSwo6Uwc7k3S', 'M B S', 'Yaswanth'),
(4, 'student1@gmail.com', '$2y$10$KZ5V2ZBHN29CgcLj26WbVu11CYOnE1ztiPMcDIFyYJSOW5AJsLQEG', 'student', 'one'),
(5, 'student2@gmail.com', '$2y$10$zK.yiDSbnVosRSeLh2K/3uT68eX9T.cqmZzTDAGrGmi6ly.zw0igu', 'student', '2'),
(6, 'student3@gmail.com', '$2y$10$Fndfda0e3PBC6hUY/Lr8u.2WEs6K/PS4qFsWAv0LWiVyDWBLN5AT.', 'student', 'three'),
(7, 'student4@gmail.com', '$2y$10$r/.JvXT6MWxF2fg/afgf7.Qye17w2jrxe2Vid9FcIE..45IOc1Ota', 'student', 'four');

-- --------------------------------------------------------

--
-- Table structure for table `studentoptedintern`
--

CREATE TABLE `studentoptedintern` (
  `id` bigint(20) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `intern_id` bigint(20) NOT NULL,
  `applied_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentoptedintern`
--

INSERT INTO `studentoptedintern` (`id`, `stu_id`, `intern_id`, `applied_on`) VALUES
(1, 2, 2, '2018-05-22'),
(6, 3, 2, '2018-05-23'),
(7, 3, 3, '2018-05-24'),
(8, 7, 4, '2018-05-24'),
(9, 5, 3, '2018-05-24'),
(10, 5, 7, '2018-05-24'),
(11, 5, 8, '2018-05-24'),
(12, 7, 2, '2018-05-24'),
(13, 6, 3, '2018-05-24'),
(14, 6, 6, '2018-05-24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_intern_view`
-- (See below for the actual view)
--
CREATE TABLE `student_intern_view` (
`intern_id` bigint(20)
,`stu_id` bigint(20)
,`emp_id` bigint(20)
,`organization` varchar(50)
,`intern_title` varchar(255)
,`location` varchar(100)
,`duration` varchar(20)
,`stipend` varchar(10)
,`applied_on` date
);

-- --------------------------------------------------------

--
-- Structure for view `employee_view`
--
DROP TABLE IF EXISTS `employee_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_view`  AS  select `studentoptedintern`.`intern_id` AS `intern_id`,`employee`.`emp_id` AS `emp_id`,`internlist`.`intern_topic` AS `intern_title`,`internlist`.`stipend` AS `stipend`,`internlist`.`posted_on` AS `posted_on`,`studentoptedintern`.`applied_on` AS `applied_on`,`internlist`.`apply_by` AS `apply_by`,`internlist`.`intern_duration` AS `duration`,`student`.`firstName` AS `firstName`,`student`.`lastName` AS `lastName`,`student`.`email_id` AS `email`,`internlist`.`intern_location` AS `intern_location`,`employee`.`organization` AS `organization` from (((`studentoptedintern` join `student` on((`studentoptedintern`.`stu_id` = `student`.`stu_id`))) join `internlist` on((`internlist`.`intern_id` = `studentoptedintern`.`intern_id`))) join `employee` on((`internlist`.`emp_id` = `employee`.`emp_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `internships_list`
--
DROP TABLE IF EXISTS `internships_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `internships_list`  AS  select `internlist`.`intern_id` AS `intern_id`,`employee`.`emp_id` AS `emp_id`,`employee`.`organization` AS `organization`,`internlist`.`intern_topic` AS `intern_title`,`internlist`.`intern_location` AS `location`,`internlist`.`intern_duration` AS `duration`,`internlist`.`stipend` AS `stipend`,`internlist`.`posted_on` AS `posted_on`,`internlist`.`apply_by` AS `apply_by` from (`internlist` join `employee` on((`internlist`.`emp_id` = `employee`.`emp_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `student_intern_view`
--
DROP TABLE IF EXISTS `student_intern_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_intern_view`  AS  select `studentoptedintern`.`intern_id` AS `intern_id`,`studentoptedintern`.`stu_id` AS `stu_id`,`employee`.`emp_id` AS `emp_id`,`employee`.`organization` AS `organization`,`internlist`.`intern_topic` AS `intern_title`,`internlist`.`intern_location` AS `location`,`internlist`.`intern_duration` AS `duration`,`internlist`.`stipend` AS `stipend`,`studentoptedintern`.`applied_on` AS `applied_on` from ((`studentoptedintern` join `internlist` on((`studentoptedintern`.`intern_id` = `internlist`.`intern_id`))) join `employee` on((`internlist`.`emp_id` = `employee`.`emp_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `internlist`
--
ALTER TABLE `internlist`
  ADD PRIMARY KEY (`intern_id`),
  ADD UNIQUE KEY `intern_id` (`intern_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `studentoptedintern`
--
ALTER TABLE `studentoptedintern`
  ADD PRIMARY KEY (`id`),
  ADD KEY `intern_id` (`intern_id`),
  ADD KEY `stu_id` (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `internlist`
--
ALTER TABLE `internlist`
  MODIFY `intern_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `studentoptedintern`
--
ALTER TABLE `studentoptedintern`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `internlist`
--
ALTER TABLE `internlist`
  ADD CONSTRAINT `internlist_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `studentoptedintern`
--
ALTER TABLE `studentoptedintern`
  ADD CONSTRAINT `studentoptedintern_ibfk_1` FOREIGN KEY (`intern_id`) REFERENCES `internlist` (`intern_id`),
  ADD CONSTRAINT `studentoptedintern_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
