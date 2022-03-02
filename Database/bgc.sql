-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3325
-- Generation Time: Dec 27, 2020 at 02:19 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bgc`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresult`
--

CREATE TABLE `addresult` (
  `resultid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `course_name` varchar(134) NOT NULL,
  `grade` decimal(5,2) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresult`
--

INSERT INTO `addresult` (`resultid`, `id`, `name`, `department`, `email`, `course`, `course_name`, `grade`, `semester`) VALUES
(1, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', 'Java', '4.00', 343),
(2, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', '1', '\r\n    \r\n    c++\r\n        ', '4.00', 332),
(3, 233, 'Arif', 'CSE', 'arif@gmail.com', '344', '\r\n    \r\n    python 3\r\n ', '4.00', 333),
(4, 233, 'Arif', 'CSE', 'arif@gmail.com', 'CSE1101', '\r\n\r\n    c++\r\n        ', '4.00', 0),
(5, 233, 'Arif', 'CSE', 'arif@gmail.com', 'cse2204', 'dbms', '4.00', 0),
(6, 1831006, 'Faisal mahamud', 'cse', 'fahim@gmail.com', 'CSE1101', 'C', '4.00', 0),
(7, 1831006, 'Faisal mahamud', 'cse', 'fahim@gmail.com', '3', 'c++', '4.00', 0),
(8, 1831006, 'Faisal mahamud', 'cse', 'fahim@gmail.com', '5', 'java', '4.00', 0),
(9, 1831006, 'Faisal mahamud', 'cse', 'fahim@gmail.com', '130', 'AI', '4.00', 301),
(10, 233, 'Arif', 'CSE', 'arif@gmail.com', '344', 'python 3', '4.00', 501),
(11, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE2203', 'DBMS', '4.00', 501),
(12, 233, 'Arif', 'CSE', 'arif@gmail.com', '130', 'AI', '4.00', 0),
(56, 1831006, 'Faisal', 'CSE', '	\r\nfmfahim1202@gmail.com', 'CSE1101', 'Computer Fundamental', '4.00', 183),
(59, 1831006, 'Faisal Mahamud', 'CSE', 'fmfahim1202@gmail.com', 'CSE1104', 'Math1', '4.00', 183),
(61, 1831006, 'Faisal Mahamud', 'CSE', 'fmfahim1202@gmail.com', 'CSE1105', 'English', '4.00', 183),
(62, 1831006, 'Faisal mahamud', '	\r\nCSE', 'fmfahim1202@gmail.com', 'CSE 1106', 'Accounting and Management', '4.00', 183),
(70, 1831006, 'Faisal Mahamud', 'CSE', 'fmfahim1202@gmail.com', 'CSE1107', 'Physics1', '4.00', 183),
(88, 1831006, 'Faisal mahamud', '	\r\nCSE', 'fmfahim1202@gmail.com', 'CSE 1108', 'C Lab', '4.00', 183),
(89, 1831006, 'Faisal Mahamud', 'CSE', 'fmfahim1202@gmail.com', 'CSE1109', 'Physics1 CF Lab', '4.00', 183),
(90, 2, 'Atik Hossain', 'CSE', '	\r\natik@gamil.com', 'CSE1101', 'Computer Fundamental', '4.00', 183),
(98, 2, 'Atik Hossain', 'CSE', 'Atik@gmail.com', 'CSE1105', 'English', '4.00', 183),
(99, 1831006, 'Atik Hossain', 'CSE', '	\r\natik@gamil.com', 'CSE1104', 'Math1', '4.00', 183),
(100, 2, 'Atik Hossain', '	\r\nCSE', '	\r\natik@gamil.com', 'CSE 1106', 'Accounting and Management', '4.00', 183),
(135, 233, 'Arif', 'CSE', 'arif@Gmail.com', 'CSE2104', 'Computer Programming with JAVA', '4.00', 193),
(238, 1831006, 'Faisal Mahamud', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2103', 'Basic Electronics', '4.00', 193),
(324, 1831006, 'Atik', 'CSE', '	\r\natik@gamil.com', 'CSE1107', 'Physics1', '4.00', 183),
(325, 1831006, 'Atik', '	\r\nCSE', '	\r\natik@gamil.com', 'CSE 1108', 'C Lab', '4.00', 183),
(345, 2, 'Atik Hossain', 'CSE', 'fmfahim1202@gmail.com', 'CSE1109', 'Physics1 CF Lab', '4.00', 183),
(444, 1831006, 'Faisal', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2105', 'Mathematics-III', '4.00', 193),
(456, 1831006, 'Faisal Mahamud', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2106', 'Statistics', '3.00', 193),
(567, 2, 'atik', 'CSE', 'atik@gmail.com', 'CSE 2202', 'Internet Concept & Web database Programming', '4.00', 201),
(787, 1831006, 'Faisal', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2202', 'Internet Concept & Web database Programming', '4.00', 201),
(888, 1831006, 'Faisal Mahamud', 'cse', 'fmfahim1202@gmail.com', 'CSE 2102', 'Discrete Mathematics', '4.00', 193),
(894, 1831006, 'Faisal', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2203', 'Numerical Analysis', '4.00', 201),
(3212, 233, 'Arif', 'CSE', 'arif@gmail.com', 'CSE 2106', 'Statistics', '3.00', 193),
(3453, 1831006, 'Faisal', 'CSE', 'fmfahim1202@Gmail.com', 'CSE2104', 'Computer Programming with JAVA', '4.00', 193),
(3456, 1831006, 'Faisal mahamud', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2205', 'Mathematics -IV', '4.00', 201),
(4234, 2, 'atik', 'CSE', 'atik', 'CSE 2207', 'Lab-2:based on CSE 2202', '4.00', 201),
(4563, 233, 'Arif', 'cse', 'arif@gmail.com', 'CSE 2102', 'Discrete Mathematics', '4.00', 193),
(4567, 1831006, 'Faisal', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2201', 'Computer Algorithms', '4.00', 201),
(5145, 1831006, 'Faisal', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2206', 'Lab-1:based on CSE 2201', '4.00', 201),
(5465, 1831006, 'Faisal', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2204', 'Computer Architecture', '4.00', 201),
(5678, 2, 'atik', 'CSE', 'atik@gmail.com', 'CSE 2204', 'Computer Architecture', '4.00', 201),
(8882, 233, 'Arif', 'CSE', 'arif@gmail.com', 'CSE 2105', 'Mathematics-III', '4.00', 193),
(43454, 1831006, 'Faisal Mahamud', 'CSE', 'fm@g', 'CSE 2207', 'Lab-2:based on CSE 2202', '4.00', 201),
(100456, 1831006, 'Faisal', 'CSE', 'fmfahim1202@gmail.com', 'CSE 2107', 'Lab-1: based on CSE 2101', '4.00', 193),
(100457, 233, 'Faisal', 'CSE', 'arif@gmail.com', 'CSE 2107', 'Lab-1: based on CSE 2101', '4.00', 193),
(100462, 2, 'Faisal', 'CSE', 'atik@gmail.com', 'CSE 2201', 'Computer Algorithms', '4.00', 201),
(100463, 2, 'atik', 'CSE', 'atik@gmail.com', 'CSE 2205', 'Mathematics -IV', '4.00', 201),
(100464, 2, 'atik', 'CSE', 'atik@gmail.com', 'CSE 2203', 'Numerical Analysis', '4.00', 201),
(100465, 2, 'atik', 'CSE', 'atik@gmail.com', 'CSE 2206', 'Lab-1:based on CSE 2201', '4.00', 201),
(100466, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '4.00', 0),
(100467, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '2.00', 0),
(100468, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '2.00', 0),
(100469, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '2.00', 0),
(100470, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '2.00', 0),
(100471, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '2.00', 0),
(100472, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '2.00', 0),
(100473, 2, 'atik hossain', 'cse', 'atik@gamil.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '2.00', 0),
(100474, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', '1', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '4.00', 0),
(100475, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', '344', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '4.00', 0),
(100476, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', '344', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '0.00', 0),
(100477, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE1101', '\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n', '1.25', 0),
(100478, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE1101', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '0.00', 0),
(100479, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE1101', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '0.00', 0),
(100480, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE1101', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '0.00', 0),
(100481, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', '3', '\n\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n        ', '3.50', 0),
(100482, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE2204', '\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n', '2.75', 0),
(100483, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE2203', '\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n', '2.75', 0),
(100484, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE3102', '\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n', '2.75', 0),
(100485, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'cse2204', '\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n', '1.75', 0),
(100486, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'cse2204', '\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n', '1.75', 0),
(100487, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'CSE1101', '\n    dbmm\n    \n    AI\n    \n    c++\n    \n    python 3\n    \n    java\n    \n    C\n    \n    DBMS\n    \n    c++\n', '0.00', 0),
(100488, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'Deep Learning', '', '4.00', 0),
(100489, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', 'Macine', '3304', '4.00', 0),
(100490, 1, 'Fima', 'BBA', 'fmfahim1202@gmail.com', '3305', 'Big data', '4.00', 0),
(100491, 2, 'atik hossain', 'cse', 'atik@gamil.com', 'Python', 'CSE2205', '4.00', 0),
(100493, 1, 'fm', '', '', '', '', '0.00', 0),
(100498, 1, 'fm', '', '', '', '', '0.00', 0),
(100503, 1, 'fm', '', '', '', '', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(254) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `position` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `user`, `password`, `confirmpassword`, `position`) VALUES
(1, 'fahim', 'faisal', 'Test@123', 'f925916e2754e5e03f75dd58a5733251', 'f925916e2754e5e03f75dd58a5733251', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `admin-tbl`
--

CREATE TABLE `admin-tbl` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin-tbl`
--

INSERT INTO `admin-tbl` (`email`, `password`) VALUES
('fahimfaisal@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admintbl`
--

CREATE TABLE `admintbl` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintbl`
--

INSERT INTO `admintbl` (`id`, `email`, `password`) VALUES
(1, 'fahimfaisal@gmail.com', '123'),
(2, 'fahimfaisal2@gmail.com', '1235'),
(4, 'fahim@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`userid`, `firstname`, `lastname`, `email`, `contact`, `program`) VALUES
(1, 'fahim', 'faisal', 'fm@gamil.com', '33', 'cse'),
(2, 'faisal', 'mahamud', 'code.lpu1@gmail.com', '123', 'bsc'),
(3, 'fima', 'mahamud', 'code.lpu1@gmail.com', '123', 'bsc');

-- --------------------------------------------------------

--
-- Table structure for table `ajaxinsert`
--

CREATE TABLE `ajaxinsert` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ajaxinsert`
--

INSERT INTO `ajaxinsert` (`id`, `email`, `password`) VALUES
(1, 'fmfahim1202@gmail.com', '123'),
(2, 'fm@FASF.COM', '23');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_teachers`
--

CREATE TABLE `assigned_teachers` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `is_incharge` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigned_teachers`
--

INSERT INTO `assigned_teachers` (`id`, `teacher_id`, `class_id`, `is_incharge`) VALUES
(0, 15, 2, 'yes'),
(0, 12, 8, 'yes'),
(0, 12, 4, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `attendence` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`) VALUES
(1, '1st'),
(2, '2nd'),
(3, '3rd'),
(4, '4th'),
(5, '5th'),
(6, '6th'),
(7, '7th'),
(8, '8th');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `id` int(10) NOT NULL,
  `head` varchar(100) NOT NULL,
  `info` varchar(1000) NOT NULL,
  `registration` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `club-member` varchar(1000) NOT NULL,
  `image` varchar(10000) NOT NULL,
  `style-card` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`id`, `head`, `info`, `registration`, `login`, `club-member`, `image`, `style-card`) VALUES
(1, ' iee', 'IEEE is the Instutution for computer engieer.ieee student chapter was firstly introduced in bgctub 2019', 'Click to join our era', 'login ', 'see members', 'codingclub.jpg', 'bg-primary\r\n\r\n'),
(2, 'Acs', 'The ACS was established at 2000.Acm is a student organazition to help the common student', 'Join Acs Club', 'Login if alrady registered', 'see members', 'codingclub.jpg', 'bg-warning'),
(3, ' iee', 'IEEE is the Instutution for computer engieer.ieee student chapter was firstly introduced in bgctub 2019', 'Click to join our era', 'login ', 'see members', 'codingclub.jpg', 'bg-dark text-info'),
(4, 'Coding Club', 'The coding club was developed at 2019', 'Join Coding World', 'Login if alrady registered', 'see members', 'codingclub.jpg', 'bg-danger'),
(5, 'Telecommunication Club', 'The Telecommunication club club was developed at 2019', 'Registration', 'Login ', 'See  Others', 'codingclub.jpg', 'bg-info'),
(6, 'Debating Club', 'Debating Club is another club', 'Register', 'Login Here', 'See members', 'codingclub.jpg', 'bg-info'),
(7, 'Cultural Club', 'Cultural Club is important to develop your Cultural Mind', 'Register', 'Want to login', 'see club member', 'codingclub.jpg', 'bg-light'),
(8, 'Debating Club', 'Debating Club is another club', 'Register', 'Login Here', 'See members', 'codingclub.jpg', 'bg-success');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(20) NOT NULL,
  `Course_Name` varchar(500) NOT NULL,
  `Course_Code` varchar(500) NOT NULL,
  `Semester` varchar(500) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coursestud`
--

CREATE TABLE `coursestud` (
  `enrollment` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(500) NOT NULL,
  `course_desc` varchar(500) NOT NULL,
  `course_duration` varchar(500) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursestud`
--

INSERT INTO `coursestud` (`enrollment`, `id`, `course_id`, `course_name`, `course_desc`, `course_duration`, `picture`) VALUES
(1, 233, 0, 'cse', 'se', 'rr', ''),
(50, 2, 0, 'Django Framework', 'Learn Django Framework With python', '3 Month', ''),
(58, 1, 0, 'Android', 'Android\r\n', '3 Month', ''),
(59, 1, 0, 'Django Framework', 'Learn Django Framework With python', '3 Month', ''),
(63, 2, 1, 'Learn  Programming in efficiently', 'This course Help you to become a true programmer.', '3 Month', ''),
(64, 1831006, 16, 'Django Framework', 'Learn Django Framework With python', '3 Month', 'django.png'),
(65, 1831006, 5, 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', 'ai-robotics.jpeg'),
(66, 1, 5, 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', 'ai-robotics.jpeg'),
(67, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png'),
(74, 2, 15, 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', 'js.png'),
(79, 1831006, 15, 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', 'js.png'),
(81, 1, 2, 'Programming Contest', 'Programming contest is one of the best way to improve the skill set', '2 Month', 'icpc.png'),
(82, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png'),
(83, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png'),
(84, 1, 11, 'Python', 'Learn Python', '3 Month', 'Python.png'),
(86, 1831006, 3, 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', 'code.jpg'),
(87, 1, 3, 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', 'code.jpg'),
(88, 1, 3, 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', 'code.jpg'),
(89, 2, 6, 'Learn Macine Learning', 'Macine Learning is the best sector in field of technology ', '6 Month', ''),
(90, 2, 14, 'Android', 'Android\r\n', '3 Month', 'android.jpg'),
(93, 1, 5, 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', 'ai-robotics.jpeg'),
(94, 1831006, 5, 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', 'ai-robotics.jpeg'),
(95, 1831006, 11, 'Python', 'Learn Python', '3 Month', 'Python.png'),
(99, 2, 15, 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', 'js.png'),
(100, 2, 9, 'Robotics', 'Learn and Implement In a course', '3 Month', 'robo.jpg'),
(101, 2, 16, 'Django Framework', 'Learn Django Framework With python', '3 Month', 'django.png'),
(102, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png'),
(109, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `code` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`code`, `name`) VALUES
(1, 'CSE'),
(2, 'BBA'),
(3, 'LLB'),
(4, 'English'),
(5, 'Pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`id`, `semester`, `link`, `name`) VALUES
(1, '5th', 'sql.pdf', 'Sql for beginner'),
(2, '2nd', 'c++.pdf', 'C++ for beginner');

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm` varchar(100) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`id`, `name`, `email`, `password`, `confirm`, `sign`, `picture`) VALUES
(414, 'hjh', 'code.lpu1@gmail.com', 'Test@1234', '4444444', '', '2312.png'),
(445, 'fahim', 'code.lpu1@gmail.com', 'Test@1234', 'iii', '', '2323.png'),
(646, 'gyuh', 'code.lpu1@gmail.com', 'Test@1234', '656545', '', '3543.png'),
(12252, 'setr', 'code.lpu1@gmail.com', 'Test@1234', '222', '', '2323.png'),
(1831006, 'fahim', 'ffh@gmail.com', 'gg', 'ff', 'fima.jpg', 'fima2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `language` varchar(200) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`id`, `name`, `email`, `department`, `language`, `date`) VALUES
(0, 'fahim', 'fahim@gmail.com', 'cse', 'language', '2020-10-29 18:00:00.000000'),
(1, 'fahim', 'fahim@gmail.com', 'cse', 'c++', '2020-10-15 18:00:00.000000'),
(2, 'atik hossain', 'atik@gamil.com', 'cse', 'CSE1101', '2020-10-14 18:00:00.000000'),
(4, 'fima', 'ff', 'CSE', 'language', '2020-10-23 16:49:05.634943'),
(233, 'Arif', 'arif@gmail.com', 'CSE', 'CSE1101', '2020-10-11 18:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_first_sem`
--

CREATE TABLE `first_year_first_sem` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_first_sem`
--

INSERT INTO `first_year_first_sem` (`course_code`, `course_name`, `credits`, `semester`) VALUES
('CSE 1101', 'Computer Fundamentals and Applications', '3', '1st'),
('CSE 1102', 'Structured of Computer Programming using C', '3', '1st'),
('CSE 1103', 'Physics-1', '2', '1st'),
('CSE 1104', 'Mathematics-1', '3', '1st'),
('CSE 1105', 'English Language Course', '2', '1st'),
('CSE 1106', 'Principles of Accounting and Management', '2', ''),
('CSE 1107', 'Bangladesh Studies (GED Course)', '1', ''),
('CSE 1108', 'Lab-1: based on CSE 1101', '1', ''),
('CSE 1109', 'Lab-1: based on CSE 1102', '2', ''),
('CSE 1110', 'Lab-2: based on CSE 1103', '1', ''),
('First Semester', 'Total Credits', '20', '');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_sec_sem`
--

CREATE TABLE `first_year_sec_sem` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_sec_sem`
--

INSERT INTO `first_year_sec_sem` (`course_code`, `course_name`, `credits`) VALUES
('CSE 1201', 'Basic Electrical Engineering', '3'),
('CSE 1202', 'Data Structure', '3'),
('CSE 1203', 'Computer Programming with C++', '3'),
('CSE 1204', 'Physics-II', '2'),
('CSE 1205', 'Mathematics-II', '3'),
('CSE 1206', 'Professional ethics of computing', '2'),
('CSE 1207', 'Lab-1: based on CSE 1201', '1'),
('CSE 1208', 'Lab-2: based on CSE 1202', '1'),
('CSE 1209', 'Lab-3: based on CSE 1203', '2'),
('CSE 1210', 'Lab-4 based on CSE 1204', '1'),
('Second Semester', 'Total Credits', '21');

-- --------------------------------------------------------

--
-- Table structure for table `fourth_year_frst_sem`
--

CREATE TABLE `fourth_year_frst_sem` (
  `course_code` varchar(50) DEFAULT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fourth_year_sec_sem`
--

CREATE TABLE `fourth_year_sec_sem` (
  `course_code` varchar(50) DEFAULT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` varchar(100) NOT NULL,
  `lesson_desc` varchar(1000) NOT NULL,
  `lesson_link` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, 'Into to php', 'php', 'php.mp4', 4, 'Complete Php bootcamp.'),
(2, 'into to php', 'php is preprocessor', 'php2.mp4', 4, 'php'),
(3, 'intro to competitive programming.', '1.what is programming', 'lesson.mp4', 1, 'competitive programming'),
(4, 'intro to Ai', 'what is Ai.', 'lesson.mp4', 5, 'AI'),
(6, 'what is Software', 'software', 'lesson.mp4', 2, 'software ');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(100) NOT NULL,
  `notice_name` varchar(112) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `link` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `notice_name`, `date`, `link`) VALUES
(1, '7th semester Result notice', '2020-11-26 22:39:03', 'sql.pdf'),
(2, '8th semester Result', '2020-11-25 00:00:00', 'sql.pdf\r\n'),
(3, '2nd semester', '0000-00-00 00:00:00', 'JavaScript_MDN_Web_Docs_11262020174505.pdf'),
(8, '1th semester Result notice', '0000-00-00 00:00:00', 'MySQL Foreign Key - javatpoint.pdf'),
(9, '1th semester Result notice', '0000-00-00 00:00:00', 'MySQL Foreign Key - javatpoint.pdf'),
(10, '1th semester Result notice', '0000-00-00 00:00:00', 'MySQL Foreign Key - javatpoint.pdf'),
(11, '1th semester Result notice', '0000-00-00 00:00:00', 'MySQL Foreign Key - javatpoint.pdf'),
(12, '2nd semester', '0000-00-00 00:00:00', 'Doc1.docx'),
(13, '2nd semester', '0000-00-00 00:00:00', 'Doc1.docx'),
(14, 'new', '0000-00-00 00:00:00', ''),
(15, 'this is', '0000-00-00 00:00:00', ''),
(16, 'this is bgc', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `notification` text NOT NULL,
  `link` text NOT NULL,
  `seen` varchar(10) NOT NULL,
  `send_to` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `reciever_id`, `notification`, `link`, `seen`, `send_to`, `time`) VALUES
(0, 15, 'Admin Assigned you 2nd', '#', '0', 'teacher', '2020-10-15 18:29:39'),
(0, 12, 'Admin Assigned you 8th', '#', '0', 'teacher', '2020-10-15 18:32:01'),
(0, 12, 'Admin Assigned you 4th', '#', '0', 'teacher', '2020-10-15 18:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `officialcse`
--

CREATE TABLE `officialcse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `status_id` int(11) NOT NULL,
  `total_amount` decimal(65,2) NOT NULL,
  `id` int(11) NOT NULL,
  `payment_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`status_id`, `total_amount`, `id`, `payment_status`) VALUES
(1, '127000.00', 1831006, 'Ok'),
(2, '50000000.00', 233, 'Ok');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `result_title` varchar(50) NOT NULL,
  `total_points` float NOT NULL,
  `obtained_points` float NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `telephone` int(12) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `department` varchar(140) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `telephone`, `picture`, `semester`, `department`, `password`, `email`) VALUES
(1, 'Fahim', 1845366666, '', '3rd', 'BBA', '123', 'fmfahim1202@gmail.com'),
(2, 'atik hossain', 21654, '', '5th', 'cse', '123', 'atik@gamil.com'),
(4, 'Iftekar', 123, '', '3rd', '', '234', ''),
(233, 'Arif', 233333, '', '5th', 'CSE', '123', 'arif@gmail.com'),
(1831006, 'Faisal mahamud', 18453, '180231006.jpg', '5th', 'cse', '123', 'fahim@gmail.com'),
(1831007, 'Afia', 455555555, '', '3rd', '', '234', '');

-- --------------------------------------------------------

--
-- Table structure for table `resultmain`
--

CREATE TABLE `resultmain` (
  `resultid` int(11) NOT NULL,
  `studentid` varchar(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `credit` varchar(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `attendance` varchar(11) NOT NULL,
  `classtest` varchar(11) NOT NULL,
  `sessional` varchar(11) NOT NULL,
  `mid` varchar(11) NOT NULL,
  `final` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultmain`
--

INSERT INTO `resultmain` (`resultid`, `studentid`, `name`, `credit`, `course_name`, `course`, `attendance`, `classtest`, `sessional`, `mid`, `final`, `total`, `grade`, `status`, `semester`) VALUES
(0, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1, '1831001', 'Newaz', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(2, '1831002', 'Atik', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(3, '1831003', 'salma', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(4, '1831004', 'ifte', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(5, '1831005', 'arif', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(6, '1831006', 'Faisal', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', '193'),
(7, '1831007', 'afia', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(8, '1831008', 'raki', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(9, '1831009', 'rafa', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(10, '1831011', 'rafim', 'C', 'CSE1102', '3', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(11, '233', 'arif', '3', 'd', 'CSE1103', '', '10', '15', '25', '15', '60', '100', 'A+', ''),
(19, '1831010', 'raku', '3', '', '', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(44444, 'StudentID', 'Name', 'Credit', '', '', 'Attendence', 'Class Test', 'Sessional', 'Mid Term', 'Final', 'Total', 'Grade', 'Status', '');

-- --------------------------------------------------------

--
-- Table structure for table `savecourse`
--

CREATE TABLE `savecourse` (
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `credit` float NOT NULL,
  `description` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savecourse`
--

INSERT INTO `savecourse` (`code`, `name`, `credit`, `description`, `department`, `semester`) VALUES
('1', 'dbmm', 3, 'good', 'CSE', '1'),
('130', 'AI', 3, 'demandable', 'CSE', '5'),
('3', 'c++', 3, 'good', 'CSE', '1'),
('344', 'python 3', 3, 'e', 'CSE', '4'),
('5', 'java', 3, 'programming', 'CSE', '2'),
('CSE1101', 'C', 3, 'c programming', 'CSE', '1st'),
('CSE2203', 'DBMS', 3, 'database', 'CSE', '4th'),
('cse2204', 'c++', 3, 'cd', 'cse', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `sec_year_first_sem`
--

CREATE TABLE `sec_year_first_sem` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec_year_first_sem`
--

INSERT INTO `sec_year_first_sem` (`course_code`, `course_name`, `credits`) VALUES
('CSE 2102', 'Discrete Mathematics', '3'),
('CSE 2103', 'Basic Electronics', '3'),
('CSE 2104', 'Computer Programming with JAVA', '3'),
('CSE 2105', 'Mathematics-III', '3'),
('CSE 2106', 'Statistics', '3'),
('CSE 2107', 'Lab-1: based on CSE 2101', '1'),
('CSE 2108', 'Lab-2: based on CSE 2103', '1'),
('CSE 2109', 'Lab-3: based on CSE 2104', '2'),
('Third Semester', 'Total Credits', '22');

-- --------------------------------------------------------

--
-- Table structure for table `sec_year_sec_sem`
--

CREATE TABLE `sec_year_sec_sem` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec_year_sec_sem`
--

INSERT INTO `sec_year_sec_sem` (`course_code`, `course_name`, `credits`) VALUES
('CSE 2201', 'Computer Algorithms', '3'),
('CSE 2202', 'Internet Concept & Web database Programming', '3'),
('CSE 2203', 'Numerical Analysis', '3'),
('CSE 2204', 'Computer Architecture', '3'),
('CSE 2205', 'Mathematics -IV', '3'),
('CSE 2206', 'Lab-1:based on CSE 2201', '1'),
('CSE 2207', 'Lab-2:based on CSE 2202', '2'),
('CSE 2208', 'Lab-3: based on CSE 2203', '1'),
('Fourth Semester', 'Total Credits', '19');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `students` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `code`, `name`, `students`) VALUES
(1, 1, '31th batch', 100),
(2, 1, '30th', 100),
(3, 1, '29th', 50),
(4, 1, '28th', 100),
(5, 1, '27th', 50);

-- --------------------------------------------------------

--
-- Table structure for table `semestercg`
--

CREATE TABLE `semestercg` (
  `semester` int(11) NOT NULL,
  `semestercgid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `totalcredit` decimal(5,1) NOT NULL,
  `gpa` decimal(5,4) NOT NULL,
  `cgpa` decimal(5,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semestercg`
--

INSERT INTO `semestercg` (`semester`, `semestercgid`, `id`, `totalcredit`, `gpa`, `cgpa`) VALUES
(193, 1, 1831006, '22.0', '3.9000', '3.6300'),
(201, 2, 1831006, '15.0', '3.1600', '3.5900'),
(183, 3, 1831006, '20.0', '3.7100', '3.7100'),
(193, 4, 2, '22.0', '3.9000', '3.6300'),
(201, 5, 2, '15.0', '3.1600', '3.5900'),
(183, 6, 2, '20.0', '3.7100', '3.7100'),
(193, 7, 233, '22.0', '3.9000', '3.6300'),
(201, 8, 233, '15.0', '3.1600', '3.5900'),
(183, 9, 233, '20.0', '3.7100', '3.7100');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(10) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_desc` varchar(500) NOT NULL,
  `course_duration` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `picture`, `course_name`, `course_desc`, `course_duration`, `Price`) VALUES
(1, 'prog.jpg', 'Learn  Programming in efficiently', 'This course Help you to become a true programmer.', '3 Month', '5000.00'),
(2, 'icpc.png', 'Programming Contest', 'Programming contest is one of the best way to improve the skill set', '2 Month', '3000.00'),
(3, 'code.jpg', 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', '5000.00'),
(4, 'php.png', 'Complete Php bootcamp.', ' Web programming refers to writing,markup,coding,developement', '4 Month', '6000.00'),
(5, 'ai-robotics.jpeg\r\n', 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', '3000.00'),
(6, 'macine.jpg\r\n', 'Learn Macine Learning', 'Macine Learning is the best sector in field of technology ', '6 Month', '3000.00'),
(9, 'robo.jpg', 'Robotics', 'Learn and Implement In a course', '3 Month', '4400.00'),
(11, 'Python.png', 'Python', 'Learn Python', '3 Month', '9000.00'),
(12, 'neural.jpg', 'Neural Language Processing\r\n', 'LEARN NLP', '3 Month', '8000.00'),
(13, 'cs1.png', 'c#', 'Learn C#', '3 Month', '4500.00'),
(14, 'android.jpg', 'Android', 'Android\r\n', '3 Month', '5000.00'),
(15, 'js.png', 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', '3300.00'),
(16, 'django.png', 'Django Framework', 'Learn Django Framework With python', '3 Month', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `std`
--

CREATE TABLE `std` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `std_id` int(100) NOT NULL,
  `reg_no` int(100) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Session` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std`
--

INSERT INTO `std` (`id`, `name`, `std_id`, `reg_no`, `Semester`, `Session`, `password`) VALUES
(1, 'fahim', 18, 1802, '5', 'July Dec', '123\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` int(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `pass`, `position`) VALUES
(1, 'fahim', 123, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `studentregister`
--

CREATE TABLE `studentregister` (
  `id` int(10) NOT NULL,
  `password` int(100) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `number` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_account`
--

CREATE TABLE `student_account` (
  `id` int(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_account`
--

INSERT INTO `student_account` (`id`, `password`, `email`) VALUES
(1, '12345', 'fmfahim1202@gmail.com'),
(2, '123', ''),
(1831006, '123', 'fmfahim1202@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `id` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `Style` varchar(255) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `password` int(11) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `teachername` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`id`, `name`, `photo`, `Style`, `qualification`, `password`, `gmail`, `teachername`) VALUES
(1, '<h3>Mohammad Salah Uddin Chowdhry(Assistant Professor & Chairman in Charge)</h3>\r\n<p>M.s.c in CSE(CU)\r\nResearch interest:Dicision Support System,Telecommunication & Networking.<br>Email:Salahuddin@bgctub.ac.bd</p>', 'arn.jpg', 'bg-warning', 'M.s.c', 123, 's@gmail.com', 'Mohammad Salah Uddin Chowdhry'),
(2, '<h3>Shamsun Nahar Shoma</h3><br><p>Assistant ProfessorM-phil(CU),M.S in Mathematics-CUResearch interest:Shoma@bgctub.ac.bd</p>', 'Shamsun Nahar Shoma f.jpg', 'bg-warning', 'M.s.c', 55, 's@gmail.com', 'Shamsun Nahar Shoma'),
(3, '<h3>Nurul Abser(Associate Professor )</h3><p>\r\nNurul abser M.phil(cu),Ms in CSIT(SU)\r\nResearch interest:Experimantal Neuclier Physics,Material Science and Nano Science,Computer Network.Email:nabsar@bgctub.ac.bd\r\n</p>', 'Nurul Abser.jpg', 'bg-primary', 'M.s.c', 15, '', 'Nurul Abser'),
(4, '<h3>Mohd. Manjur Alam(Assistant Professor)</h3>\r\n<p>M.s.c(engg.)in CSE,B.s.c(engg) in CSE(SUST)\r\nResearch Interest:Artificial Intelligence,Speech Procession ,Natural Language Processing EMail:manjur@bgctub.ac.bd</p>', 'monjur.jpg', 'bg-light', 'M.s.c', 123, '', 'Mohd. Manjur Alam'),
(5, '<h3>Abhijit Pathak\r\nLecturer</h3>\r\n<p>M.s.c (engg) in CSE,B.s.c(Engg)in CSE,MBA(Finance)\r\nResearch interest:Artificial Intelligence,Robotics,Expert System,Computer Vision\r\nEmail:abhijitpathak@bgctub.ac.bd</p>', 'Abhijit Pathak.jpg', 'bg-primary', 'B.s.c', 1234, '', 'Abhijit Pathak'),
(6, '<h3>Ferdoush Asa (Assistant Professor)</h3>\r\n<p>B.s.c(Hons.),M.s.c in CSE\r\nResearch interest:Expert System\r\nEmail:ferdousara@bgctub.ac.bd</p>', 'nopic.jpg', 'bg-info', 'M.s.c', 0, '', 'Ferdoush Asa'),
(7, '<h3>Bristy Roy Chowdhury\r\nLecturer</h3> \r\n<P>B.s.c(eng.) in CSE(CUET)\r\nResearch interest:Advanced database,data mining\r\nEmail:Bristy@bgctub.ac.bd\r\nbristy08_cse@yahoo.com<p>', 'Bristy Roy Chowdhury.jpg', 'bg-info', 'M.s.c', 0, '', 'Bristy Roy Chowdhury'),
(8, '<h3>Md. Abdul Wahab (Lecturer)</h3><br>\r\n<p>B.S.C(Eng) in CSTE\r\nResearch interest:Digital image Processing,Data Mining,Artificial intelligence,Network sequrity and routing protocol\r\nEmail:wahab@bgctub.ac.bd</p>\r\n', 'wahab.jpg', 'bg-info', 'M.s.c', 123, '', 'Md. Abdul Wahab'),
(9, '\r\n<h3>Munmun biswas\r\nLecturer\r\n</h3>\r\n\r\n<p> M.s.c(Engg),B.s.c(Engg) in CSE CU \r\nResearch interest:Image Processing,Artificial intelligence,Data mining\r\nEmail:munmun@bgctub.ac.bd</p>', 'Munmun Biswas f.jpg', 'bg-light', 'M.s.c', 0, '', 'Munmun biswas'),
(10, ' <h3>Subhasish Ghosh\r\nLecturer</h3>\r\n<p>M.s.c in Advanced computing with software Enginnering Specialization(UTS,AUSTRALIA),B.s.c in Computer and comunnication enginnering(IIUC)\r\nResearch interest:Cloud computing,Big data ,Cy', 'Subhasish Ghosh.jpg', 'bg-light', 'M.s.c', 0, '', 'Subhasish Ghosh'),
(12, '<h3>Nazmun Nahar(Lecturer)</h3>\r\n<p> B.s.c(eng.),M.s.c in CSE(CU)\r\nResearch interest:Macine Learning,Belief rule based,big data\r\nEmail:nazmun@bgctub.ac.bd</p>', 'nazmun.jpg', 'bg-info', 'B.s.c', 0, '', 'Nazmun Nahar'),
(13, '<h3>Mohammad Abir Mahamud (Lecturer)</h3>\r\n<p>\r\nB.s.c(eng.) in CSE\r\nResearch interest:Cyber sequrity and programming\r\nEmail:abir@bgctub.ac.bd</p>', 'abir.jpg', 'bg-info', 'B.s.c', 0, '', 'Mohammad Abir Mahamud (Lecturer)'),
(14, '<h3>Sabrina Jahan Maisha(Lecturer)</h3>\r\n<p> \r\n\r\nB.s.c(eng.) in CSE\r\nResearch interest:Macine Learning,data mining,Artificial intellingence\r\nEmail:sabrina@bgctub.ac.bd</p>', 'Sabrina.jpg', 'bg-light', 'B.s.c', 0, '', 'Sabrina Jahan Maisha'),
(15, '<h3>Fariha Iffath (Lecturer)</h3>\r\n\r\n<p>B.s.c(eng.) in CSE(CUET)\r\nResearch interest:Artificial intelligence,data mining,macine learning\r\nEmail:fariha@bgctub.ac.bd\r\n</p>\r\n', 'fariha.jpg', 'bg-light', 'B.s.c', 0, '', 'Fariha Iffath');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `qual` varchar(50) NOT NULL,
  `button` int(11) NOT NULL,
  `profession` int(11) NOT NULL,
  `style` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `photo`, `qual`, `button`, `profession`, `style`, `course`) VALUES
(0, 'SalahUddin.jpg', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacherlogin`
--

CREATE TABLE `teacherlogin` (
  `teacherid` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherlogin`
--

INSERT INTO `teacherlogin` (`teacherid`, `password`, `gmail`, `id`) VALUES
(5, '010', 'ap@gmail.com', 1),
(7, '2', 'b@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_course`
--

CREATE TABLE `teacher_course` (
  `assign_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_course`
--

INSERT INTO `teacher_course` (`assign_id`, `id`, `course_name`, `course`, `semester`, `credit`) VALUES
(1, 8, 'C', 'CSE1101', 193, 3),
(2, 8, 'Computer Programming with C++', 'CSE 1203', 201, 3),
(3, 8, 'Software Engineering', 'CSE 3206', 393, 3);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `name` varchar(234) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`name`, `id`) VALUES
('name', 0),
('fm', 1),
('dull', 23),
('lims', 25),
('Fumes', 434),
('limon', 0),
('name', 0),
('fahimfaisal', 10),
('newdi', 4),
('th', 5),
('name', 0),
('fahimfaisal', 10),
('newdi', 4),
('th', 5);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_frst_sem`
--

CREATE TABLE `third_year_frst_sem` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_year_frst_sem`
--

INSERT INTO `third_year_frst_sem` (`course_code`, `course_name`, `credits`) VALUES
('CSE 3101', 'Database Systems', '3'),
('CSE 3102', 'Data Communication', '3'),
('CSE 3103', 'Operating Systems', '3'),
('CSE 3104', 'Microprocessor and Assembly Language', '3'),
('CSE 3105', 'System Analysis and Design', '3'),
('CSE 3106', 'Lab-1:based on CSE 3101', '2'),
('CSE 3107', 'Lab-2: based on CSE 3103', '1'),
('CSE 3108', 'Lab-3:based on CSE 3104', '2'),
('CSE 3109', 'Software Development Project -1 (Live project)', '2'),
('Fifth Semester', 'Total Credits', '22');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_sec_sem`
--

CREATE TABLE `third_year_sec_sem` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `credits` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_year_sec_sem`
--

INSERT INTO `third_year_sec_sem` (`course_code`, `course_name`, `credits`) VALUES
('CSE 3201', 'Computer Networks', '3'),
('CSE 3202', 'Theory of Computing', '2'),
('CSE 3203', 'Introduction to compilers', '3'),
('CSE 3204', 'Computer Modeling and Simulation', '3'),
('CSE 3205', 'Computer Peripheral and Interfacing', '3'),
('CSE 3206', 'Software Engineering', '3'),
('CSE 3207', 'Lab-l:based on CSE 3201', '1'),
('CSE 3208', 'Lab-2:based on CSE 3205', '1'),
('CSE 3209', 'Software Development Project-2 (Live project)', '2'),
('Sixth Semester', 'Total Credits', '21');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `somoy` date NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `transaction_id`, `somoy`, `amount`, `discount`) VALUES
(1831006, 1123, '2020-10-09', 120, 0),
(1, 755555, '2020-10-26', 5655, 100),
(1, 1454154, '2020-10-15', 545454, 0),
(233, 2444444, '2020-10-26', 4444444, 420);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresult`
--
ALTER TABLE `addresult`
  ADD PRIMARY KEY (`resultid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `admintbl`
--
ALTER TABLE `admintbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `ajaxinsert`
--
ALTER TABLE `ajaxinsert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursestud`
--
ALTER TABLE `coursestud`
  ADD PRIMARY KEY (`enrollment`),
  ADD KEY `coursestud_ibfk_1` (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_first_sem`
--
ALTER TABLE `first_year_first_sem`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `first_year_sec_sem`
--
ALTER TABLE `first_year_sec_sem`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `officialcse`
--
ALTER TABLE `officialcse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resultmain`
--
ALTER TABLE `resultmain`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `savecourse`
--
ALTER TABLE `savecourse`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `sec_year_first_sem`
--
ALTER TABLE `sec_year_first_sem`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `sec_year_sec_sem`
--
ALTER TABLE `sec_year_sec_sem`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `semestercg`
--
ALTER TABLE `semestercg`
  ADD PRIMARY KEY (`semestercgid`),
  ADD KEY `fksemester_id` (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std`
--
ALTER TABLE `std`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentregister`
--
ALTER TABLE `studentregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_account`
--
ALTER TABLE `student_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherlogin`
--
ALTER TABLE `teacherlogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacherid` (`teacherid`);

--
-- Indexes for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD PRIMARY KEY (`assign_id`),
  ADD KEY `teacher_course_ibfk_1` (`id`);

--
-- Indexes for table `third_year_frst_sem`
--
ALTER TABLE `third_year_frst_sem`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `third_year_sec_sem`
--
ALTER TABLE `third_year_sec_sem`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresult`
--
ALTER TABLE `addresult`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100504;

--
-- AUTO_INCREMENT for table `admintbl`
--
ALTER TABLE `admintbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ajaxinsert`
--
ALTER TABLE `ajaxinsert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coursestud`
--
ALTER TABLE `coursestud`
  MODIFY `enrollment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `code` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1831007;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `officialcse`
--
ALTER TABLE `officialcse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1831008;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semestercg`
--
ALTER TABLE `semestercg`
  MODIFY `semestercgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `std`
--
ALTER TABLE `std`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studentregister`
--
ALTER TABLE `studentregister`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_account`
--
ALTER TABLE `student_account`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1831007;

--
-- AUTO_INCREMENT for table `teach`
--
ALTER TABLE `teach`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teacherlogin`
--
ALTER TABLE `teacherlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_course`
--
ALTER TABLE `teacher_course`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresult`
--
ALTER TABLE `addresult`
  ADD CONSTRAINT `addresult_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coursestud`
--
ALTER TABLE `coursestud`
  ADD CONSTRAINT `coursestud_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `skill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD CONSTRAINT `payment_status_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`code`) REFERENCES `department` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semestercg`
--
ALTER TABLE `semestercg`
  ADD CONSTRAINT `fksemester_id` FOREIGN KEY (`id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacherlogin`
--
ALTER TABLE `teacherlogin`
  ADD CONSTRAINT `teacherlogin_ibfk_1` FOREIGN KEY (`teacherid`) REFERENCES `teach` (`id`);

--
-- Constraints for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD CONSTRAINT `teacher_course_ibfk_1` FOREIGN KEY (`id`) REFERENCES `teach` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
