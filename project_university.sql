-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2026 at 04:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `dept_id`, `professor_id`, `credit`) VALUES
(301, 'DA', 201, 1105, 9),
(302, 'DS', 201, 1105, 8),
(303, 'Java', 202, 1101, 8),
(304, 'English', 203, 1104, 8),
(305, 'Acc', 202, 1102, 8),
(306, 'Finance', 204, 1106, 9),
(307, 'HR', 206, 1103, 9),
(308, 'Excel', 208, 1101, 9),
(309, 'Marketing', 205, 1102, 9);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dep_ID` int(11) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dep_ID`, `dept_name`) VALUES
(201, 'IT'),
(202, 'ACC'),
(203, 'Sales'),
(204, 'Finance'),
(205, 'Marketing'),
(206, 'HR'),
(207, 'Reception'),
(208, 'Back office');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enroll_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enroll_date` date NOT NULL,
  `grade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enroll_id`, `student_id`, `course_id`, `enroll_date`, `grade`) VALUES
(1201, 101, 301, '2000-01-01', '9'),
(1202, 102, 302, '2000-01-01', '9.5'),
(1203, 103, 302, '2000-01-01', '10'),
(1204, 104, 301, '2000-01-01', '8'),
(1205, 105, 303, '2000-01-01', '8.5'),
(1206, 106, 304, '2000-01-01', '9'),
(1207, 107, 305, '2000-01-01', '9'),
(1208, 108, 306, '2000-01-01', '9.5'),
(1209, 109, 306, '2000-01-01', '10'),
(1210, 110, 307, '2000-01-01', '7'),
(1211, 111, 308, '2000-01-01', '7'),
(1212, 112, 309, '2000-01-01', '7.5'),
(1213, 113, 309, '2000-01-02', '8'),
(1214, 114, 308, '2000-01-02', '8.5'),
(1215, 115, 301, '2000-01-02', '8.5');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `pro_id` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`pro_id`, `firstName`, `lastName`, `email`, `phone`) VALUES
(1101, 'Ashutosh', 'upadhyay', 'Ashutosh1212@gmail.c', '9632587411'),
(1102, 'Harshita', 'upadhyay', 'Harshita1212@gmail.c', '8522587411'),
(1103, 'Shakil', 'Khan', 'Shakin1212@gmail.com', '8522587455'),
(1104, 'Ayushi', 'Pool', 'Ayushi1212@gmail.com', '8522574125'),
(1105, 'Aman', 'Mishra', 'Aman1212@gmail.com', '8522574666'),
(1106, 'praveen', 'Mishra', 'Praveen@gmail.com', '9922574666');

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `Enroll_date` date NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`student_id`, `first_name`, `last_name`, `email`, `phone`, `DOB`, `Enroll_date`, `dept_id`) VALUES
(101, 'Ayush', 'tomar', 'ayushtomar@gmail.com', '7412589633', '1996-12-21', '2000-01-01', 201),
(102, 'Aman', 'Singh', 'aman@gmail.com', '7412589655', '1996-12-12', '2000-01-01', 201),
(103, 'Akshay', 'Singh', 'Akshay@gmail.com', '8812589655', '1996-05-12', '2000-01-01', 202),
(104, 'Akshay', 'Khanna', 'Akshay@gmail.com', '8812589688', '1996-05-01', '2000-01-01', 202),
(105, 'Avinash', 'Kumar', 'Avinash@gmail.com', '74125885211', '1996-04-04', '2000-01-01', 203),
(106, 'Avinash', 'singh', 'Avinash@gmail.com', '74125885233', '1996-04-25', '2000-01-01', 204),
(107, 'Abhishek', 'singh', 'Abhishek@gmail.com', '9632587411', '1996-04-05', '2000-01-01', 205),
(108, 'Abhishek', 'panwar', 'Abhishek@gmail.com', '9632587552', '1996-03-01', '2000-01-01', 206),
(109, 'Arvind', 'panwar', 'Arvind1212@gmail.com', '7532587552', '1996-03-11', '2000-01-01', 207),
(110, 'Arvind', 'Tagare', 'Arvind1212@gmail.com', '8832587552', '1996-06-11', '2000-01-01', 208),
(111, 'Balram', 'Tagare', 'Balram1212@gmail.com', '9932587552', '1996-06-21', '2000-01-01', 208),
(112, 'Bhawna', 'singh', 'Bhawna1212@gmail.com', '9632587411', '1996-07-21', '2000-01-01', 208),
(113, 'chanchal', 'Yadav', 'chanachal@gmail.com', '8521479633', '1996-05-05', '2000-01-02', 201),
(114, 'Mohan', 'Yadav', 'Mohan@gmail.com', '8521479655', '1996-05-25', '2000-01-02', 203),
(115, 'Mohit', 'Pandey', 'Mohit@gmail.com', '9631479655', '1996-12-25', '2000-01-02', 204);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_ID`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dep_ID`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`pro_id`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_table` (`student_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `student_table`
--
ALTER TABLE `student_table`
  ADD CONSTRAINT `student_table_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dep_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
