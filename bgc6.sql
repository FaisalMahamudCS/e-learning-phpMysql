-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 08:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bgc6`
--

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
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(11) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `ans_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`, `quiz_id`) VALUES
(1, 'Home tool markup language', 1, 1),
(2, 'High  tool markup language', 1, 1),
(3, 'Hyper text markup language', 1, 1),
(4, 'Hyper text make language', 1, 1),
(5, 'The first div element', 2, 2),
(6, 'All div element\r\n', 2, 2),
(7, 'The last div element', 2, 2),
(8, 'None', 2, 2),
(9, 'the head section', 3, 3),
(10, 'the body section', 3, 3),
(11, 'Both', 3, 3),
(12, 'None', 3, 3),
(13, 'function myfunc()', 4, 4),
(14, 'function:myfunc()', 4, 4),
(15, 'function..myfunc() ', 4, 4),
(16, 'none ', 4, 4),
(17, 'container', 5, 5),
(18, 'container-fluid', 5, 5),
(19, 'container-fixed', 5, 5),
(20, 'none', 5, 5);

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
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `assign_name` varchar(100) NOT NULL,
  `assign_details` varchar(100) NOT NULL,
  `assignment_date` datetime(6) NOT NULL,
  `file` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `teacher_id`, `course_id`, `assign_name`, `assign_details`, `assignment_date`, `file`, `photo`) VALUES
(1, 5, 5, 'Introduction to AI', 'Write details on AI', '2021-02-05 00:00:00.000000', 'ai.pdf', 'ai-assign.jpg'),
(7, 5, 16, 'Assignment On python', 'Make a simple calculator with oython', '2021-02-05 00:00:00.000000', '', 'javasc.jpg'),
(8, 1, 1, 'Assignment on PHP', 'Make a simple BMI Calculator', '2021-02-23 00:00:00.000000', '', 'bmi.png'),
(10, 1, 15, 'Assignment On Javascript', 'Make a simple calculator with JS', '2021-04-03 00:00:00.000000', 'coursera_0312021153937.docx', 'javasc.jpg'),
(11, 9, 4, 'Php', 'Make a calculator with php', '2021-02-05 00:00:00.000000', 'php.pdf', 'calculator.png');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_student`
--

CREATE TABLE `assignment_student` (
  `assignment_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_student`
--

INSERT INTO `assignment_student` (`assignment_id`, `course_id`, `stud_id`, `file`, `date`, `teacher_id`) VALUES
(1, 3, 1, 'database_04242021191113.png', '2021-04-24 19:11:13', 1),
(11, 1, 1, 'database_04242021192022.png', '2021-04-24 19:20:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ass_stud`
--

CREATE TABLE `ass_stud` (
  `ass_stud` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `files` varchar(100) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ass_stud`
--

INSERT INTO `ass_stud` (`ass_stud`, `course_id`, `files`, `assignment_id`) VALUES
(1, 1, 'fima.html', 1),
(2, 1, 'lan_0362021163217.png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `course` int(11) NOT NULL,
  `cat_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`cat_id`, `cat_name`, `picture`, `course`, `cat_details`) VALUES
(1, 'Web Programming', 'webdev.jpg', 5, 'Be Full stack web developer with our specialized course Like Web programming with Js,python,php'),
(2, 'Mobile Apps Development', 'android2.jpg', 5, 'Be Full stack Android developer with our specialized course with java,android,kotlin specialization'),
(3, 'Graphics Design\r\n', 'graphics.jpg', 5, 'Be a professional Graphics designer with our specialization course.You can learn and apply  .....'),
(4, 'Programming', '', 5, 'Learn'),
(5, 'Robotics', '', 0, ''),
(6, 'Artifical Intelligence\r\n', '', 0, ''),
(7, 'cse', 'pic', 5, 'cs'),
(8, 'SIngning', 'newake_04222021125423.png', 16, 'SONGSSS'),
(9, 'C', 'ai-assign_04252021075410.jpg', 5, 'c++');

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
  `picture` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursestud`
--

INSERT INTO `coursestud` (`enrollment`, `id`, `course_id`, `course_name`, `course_desc`, `course_duration`, `picture`, `catagory`) VALUES
(1, 233, 0, 'cse', 'se', 'rr', '', ''),
(50, 2, 0, 'Django Framework', 'Learn Django Framework With python', '3 Month', '', 'Web Develpment'),
(58, 1, 0, 'Android', 'Android\r\n', '3 Month', '', 'Moblie App Dev'),
(59, 1, 0, 'Django Framework', 'Learn Django Framework With python', '3 Month', '', ''),
(63, 2, 1, 'Learn  Programming in efficiently', 'This course Help you to become a true programmer.', '3 Month', '', ''),
(64, 1831006, 16, 'Django Framework', 'Learn Django Framework With python', '3 Month', 'django.png', ''),
(65, 1831006, 5, 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', 'ai-robotics.jpeg', ''),
(66, 1, 5, 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', 'ai-robotics.jpeg', ''),
(67, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png', ''),
(74, 2, 15, 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', 'js.png', ''),
(79, 1831006, 15, 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', 'js.png', ''),
(81, 1, 2, 'Programming Contest', 'Programming contest is one of the best way to improve the skill set', '2 Month', 'icpc.png', ''),
(82, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png', ''),
(83, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png', ''),
(84, 1, 11, 'Python', 'Learn Python', '3 Month', 'Python.png', ''),
(86, 1831006, 3, 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', 'code.jpg', ''),
(87, 1, 3, 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', 'code.jpg', ''),
(88, 1, 3, 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', 'code.jpg', ''),
(89, 2, 6, 'Learn Macine Learning', 'Macine Learning is the best sector in field of technology ', '6 Month', '', ''),
(90, 2, 14, 'Android', 'Android\r\n', '3 Month', 'android.jpg', ''),
(95, 1831006, 11, 'Python', 'Learn Python', '3 Month', 'Python.png', ''),
(99, 2, 15, 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', 'js.png', ''),
(100, 2, 9, 'Robotics', 'Learn and Implement In a course', '3 Month', 'robo.jpg', ''),
(101, 2, 16, 'Django Framework', 'Learn Django Framework With python', '3 Month', 'django.png', ''),
(102, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png', ''),
(109, 2, 11, 'Python', 'Learn Python', '3 Month', 'Python.png', ''),
(110, 1831007, 1, 'Learn  Programming in efficiently', 'This course Help you to become a true programmer.', '3 Month', 'prog.jpg', ''),
(111, 1831006, 4, 'Complete Php bootcamp.', ' Web programming refers to writing,markup,coding,developement', '4 Month', 'php.png', ''),
(112, 1831006, 1, 'Learn  Programming in efficiently', 'This course Help you to become a true programmer.', '3 Month', 'prog.jpg', ''),
(113, 1831006, 2, 'Programming Contest', 'Programming contest is one of the best way to improve the skill set', '2 Month', 'icpc.png', ''),
(114, 1831006, 1, 'C Programming For Beginners - Master the C Language', '   C Programming will increase career options. Become a better dev in other languages by learning C. This course Help you to become a true programmer.', '3 Month', 'prog.jpeg', '');

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
(1, 'Into to php', 'php is the one of the best language', 'php.mp4', 4, 'Complete Php bootcamp.'),
(2, 'into to php', 'php is preprocessor', 'php2.mp4', 4, 'php'),
(3, 'intro to competitive programming.', '1.what is programming', 'lesson.mp4', 1, 'competitive programming'),
(4, 'intro to Ai', 'what is Ai.', 'lesson.mp4', 5, 'AI'),
(6, 'what is Software', 'software', 'lesson.mp4', 2, 'software ');

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
  `email` varchar(100) NOT NULL,
  `enrolled` int(11) NOT NULL,
  `project` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `telephone`, `picture`, `semester`, `department`, `password`, `email`, `enrolled`, `project`) VALUES
(1, 'Fahim', 1845366666, 'fahim.jpeg', '3rd', 'BBA', '123', 'fmfahim1202@gmail.com', 10, 'E-learning System with PHP'),
(2, 'atik hossain', 21654, '', '5th', 'cse', '123', 'atik@gamil.com', 0, ''),
(4, 'Iftekar', 123, '', '3rd', '', '234', '', 0, ''),
(233, 'Arif', 233333, '', '5th', 'CSE', '123', 'arif@gmail.com', 0, ''),
(1231, 'Faisal mahamud', 3333, 'students_04112021075015.jpg', '3', '', '12345', 'fahim@gmail.com', 0, ''),
(1831003, 'Faisal mahamud', 3333, 'course_0432021202249.jpg', '44', '', '12345', '', 0, ''),
(1831006, 'Faisal mahamud', 18453, '180231006.jpg', '5th', 'cse', '123', 'fahim@gmail.com', 0, ''),
(1831007, 'Afia', 455555555, '', '3rd', '', '234', '', 0, ''),
(183100644, 'Faisal mahamud', 0, 'christopher-robin-ebbinghaus-pgSkeh0yl8o-unsplash_0432021203827.jpg', '1831006', '', '12345', '', 0, ''),
(183100655, 'Faisal mahamud', 0, 'class_0432021190732.jpg', 'rr', '', '12345', '', 0, ''),
(183100656, 'fahim', 3333, 'students_0432021202220.jpg', '', '', '', '', 0, ''),
(1831006448, 'Faisal mahamud', 0, 'christopher-robin-ebbinghaus-pgSkeh0yl8o-unsplash_0432021204318.jpg', '1831006', '', '123', '', 0, ''),
(2147483647, 'newaz', 333, 'course_0432021205251.jpg', '34', '', '12345', 'umsi@gmail.com', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `ans_id` varchar(250) NOT NULL,
  `quiz_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`, `quiz_id`) VALUES
(1, 'What does html stand for?', '1', 1),
(2, 'the selector $(\"div\") means', '5', 1),
(3, 'Where the correct place to insert js?', '9', 1),
(4, 'How do you create function in JS?', '13', 1),
(5, 'Which class provide fixed responsive width?', '17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(100) NOT NULL,
  `deadline` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `photo` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `name`, `details`, `deadline`, `photo`, `course_id`, `teacher_id`) VALUES
(1, 'Php Quiz', 'Php quiz on Basics', '2021-05-29 06:06:00.101101', 'php_quiz.jpg', 4, 9),
(2, 'js quiz', 'introduction', '0000-00-00 00:00:00.000000', '', 15, 9);

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
(55, '18888', 'faisal', '3', 'cse1101', 'english', '10', '12', '12', '12', '55', '97', '3', 'passed', '4th'),
(58, '1831091', 'Newaz', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(59, '1831072', 'Atik', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(60, '1831063', 'salma', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(61, '1831064', 'ifte', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(62, '1831067', 'arif', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(69, '1831068', 'afia', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(70, '1831069', 'raki', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(71, '1831079', 'rafa', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(72, '1831080', 'raku', '3', 'C', 'CSE1102', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(79, '2443', 'arif', '3', 'd', 'CSE1103', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(80, '18310155', 'Newaz', '4', 'e', 'CSE1104', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
(667, '1831081', 'rafim', '3', 'c', 'CSE1103', '10', '15', '25', '15', '60', '100', 'A+', 'pass', ''),
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
  `Price` decimal(10,2) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `catagory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `picture`, `course_name`, `course_desc`, `course_duration`, `Price`, `cat_id`, `catagory`) VALUES
(1, 'prog.jpeg', 'C Programming For Beginners - Master the C Language', '   C Programming will increase career options. Become a better dev in other languages by learning C. This course Help you to become a true programmer.', '3 Month', '5000.00', 4, 'Programming'),
(2, 'icpc.png', 'Programming Contest', 'Programming contest is one of the best way to improve the skill set', '2 Month', '3000.00', 4, 'Programming'),
(3, 'code.jpg', 'Software Engineering', 'Software Engineering is a way to show own skill on software  ', '1 Month', '5000.00', 4, ''),
(4, 'php.png', 'Complete Php bootcamp.', ' Web programming refers to writing,markup,coding,developement', '4 Month', '6000.00', 1, ''),
(5, 'ai-robotics.jpeg\r\n', 'Artificial Intelligence A to Z..', 'Artificial intelligence is another growing sector.In This course you can enlarge your knowledge..', '5 Month', '3000.00', 4, ''),
(6, 'macine.jpg\r\n', 'Learn Macine Learning', 'Macine Learning is the best sector in field of technology ', '6 Month', '3000.00', 6, ''),
(9, 'robo.jpg', 'Robotics', 'Learn and Implement In a course', '3 Month', '4400.00', 6, ''),
(11, 'Python.png', 'Python', 'Learn Python', '3 Month', '9000.00', 4, ''),
(12, 'neural.jpg', 'Neural Language Processing\r\n', 'LEARN NLP', '3 Month', '8000.00', 6, ''),
(13, 'cs1.png', 'c#', 'Learn C#', '3 Month', '4500.00', 4, ''),
(14, 'android.jpg', 'Android', 'Android\r\n', '3 Month', '5000.00', 2, ''),
(15, 'js.png', 'Javascript', 'Learn Js in a single course and be a Front End Developer', '2 Month', '3300.00', 1, ''),
(16, 'django.png', 'Django Framework', 'Learn Django Framework With python', '3 Month', '5000.00', 1, ''),
(17, 'laravel.jpeg', 'Programming With Laravel', 'Learn programming with laravel within 4 month.Here you will be a full stack laravel developer', '5 month', '4.00', 1, 'Web Programming'),
(18, 'graphics.jpeg', 'Graphics Designing', 'Learn Graphics Designing with popular tools within 4 month.Here You will a graphics Designer', '4 Month', '10000.00', 3, 'Graphics Design');

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
-- Table structure for table `student_quiz`
--

CREATE TABLE `student_quiz` (
  `quiz_ansid` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `totalques` int(11) NOT NULL,
  `correct_ans` int(11) NOT NULL,
  `quiz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_quiz`
--

INSERT INTO `student_quiz` (`quiz_ansid`, `std_id`, `totalques`, `correct_ans`, `quiz`) VALUES
(1, 1, 5, 4, 1),
(2, 1, 4, 4, 1),
(3, 1, 4, 4, 1),
(4, 1, 4, 4, 1),
(5, 1, 4, 4, 1),
(6, 1, 4, 4, 1),
(7, 1, 4, 4, 1),
(8, 1, 4, 4, 1),
(9, 1, 4, 4, 1),
(10, 1, 4, 4, 1),
(11, 1, 5, 5, 1);

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
  `teachername` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `first-name` varchar(50) NOT NULL,
  `last-name` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `school` varchar(100) NOT NULL,
  `add_school` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `add_college` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `add_university` varchar(100) NOT NULL,
  `ssc` varchar(100) NOT NULL,
  `hsc` varchar(100) NOT NULL,
  `bsc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`id`, `name`, `photo`, `Style`, `qualification`, `password`, `gmail`, `teachername`, `catagory`, `first-name`, `last-name`, `phone`, `gender`, `address`, `school`, `add_school`, `college`, `add_college`, `university`, `add_university`, `ssc`, `hsc`, `bsc`) VALUES
(1, '<h3>Mohammad Salah Uddin Chowdhry(Assistant Professor & Chairman in Charge)</h3>\r\n<p>M.s.c in CSE(CU)\r\nResearch interest:Dicision Support System,Telecommunication & Networking.<br>Email:Salahuddin@bgctub.ac.bd</p>', 'arn.jpg', 'bg-warning', 'M.s.c', 123, 's@gmail.com', 'Mohammad Salah Uddin Chowdhry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '<h3>Shamsun Nahar Shoma</h3><br><p>Assistant ProfessorM-phil(CU),M.S in Mathematics-CUResearch interest:Shoma@bgctub.ac.bd</p>', 'Shamsun Nahar Shoma f.jpg', 'bg-warning', 'M.s.c', 55, 's@gmail.com', 'Shamsun Nahar Shoma', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '<h3>Nurul Abser(Associate Professor )</h3><p>\r\nNurul abser M.phil(cu),Ms in CSIT(SU)\r\nResearch interest:Experimantal Neuclier Physics,Material Science and Nano Science,Computer Network.Email:nabsar@bgctub.ac.bd\r\n</p>', 'Nurul Abser.jpg', 'bg-primary', 'M.s.c', 15, '', 'Nurul Abser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '<h3>Mohd. Manjur Alam(Assistant Professor)</h3>\r\n<p>M.s.c(engg.)in CSE,B.s.c(engg) in CSE(SUST)\r\nResearch Interest:Artificial Intelligence,Speech Procession ,Natural Language Processing EMail:manjur@bgctub.ac.bd</p>', 'monjur.jpg', 'bg-light', 'M.s.c', 123, '', 'Mohd. Manjur Alam', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '<h3>Abhijit Pathak\r\nLecturer</h3>\r\n<p>M.s.c (engg) in CSE,B.s.c(Engg)in CSE,MBA(Finance)\r\nResearch interest:Artificial Intelligence,Robotics,Expert System,Computer Vision\r\nEmail:abhijitpathak@bgctub.ac.bd</p>', 'Abhijit Pathak.jpg', 'bg-primary', 'B.s.c', 1234, '', 'Abhijit Pathak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '<h3>Ferdoush Asa (Assistant Professor)</h3>\r\n<p>B.s.c(Hons.),M.s.c in CSE\r\nResearch interest:Expert System\r\nEmail:ferdousara@bgctub.ac.bd</p>', 'nopic.jpg', 'bg-info', 'M.s.c', 0, '', 'Ferdoush Asa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '<h3>Bristy Roy Chowdhury\r\nLecturer</h3> \r\n<P>B.s.c(eng.) in CSE(CUET)\r\nResearch interest:Advanced database,data mining\r\nEmail:Bristy@bgctub.ac.bd\r\nbristy08_cse@yahoo.com<p>', 'Bristy Roy Chowdhury.jpg', 'bg-info', 'M.s.c', 0, '', 'Bristy Roy Chowdhury', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '<h3>Md. Abdul Wahab (Lecturer)</h3><br>\r\n<p>B.S.C(Eng) in CSTE\r\nResearch interest:Digital image Processing,Data Mining,Artificial intelligence,Network sequrity and routing protocol\r\nEmail:wahab@bgctub.ac.bd</p>\r\n', 'wahab.jpg', 'bg-info', 'M.s.c', 123, '', 'Md. Abdul Wahab', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '\r\n<h3>Munmun biswas\r\nLecturer\r\n</h3>\r\n\r\n<p> M.s.c(Engg),B.s.c(Engg) in CSE CU \r\nResearch interest:Image Processing,Artificial intelligence,Data mining\r\nEmail:munmun@bgctub.ac.bd</p>', 'Munmun Biswas f.jpg', 'bg-light', 'M.s.c', 0, '', 'Munmun biswas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, ' <h3>Subhasish Ghosh\r\nLecturer</h3>\r\n<p>M.s.c in Advanced computing with software Enginnering Specialization(UTS,AUSTRALIA),B.s.c in Computer and comunnication enginnering(IIUC)\r\nResearch interest:Cloud computing,Big data ,Cy', 'Subhasish Ghosh.jpg', 'bg-light', 'M.s.c', 0, '', 'Subhasish Ghosh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '<h3>Nazmun Nahar(Lecturer)</h3>\r\n<p> B.s.c(eng.),M.s.c in CSE(CU)\r\nResearch interest:Macine Learning,Belief rule based,big data\r\nEmail:nazmun@bgctub.ac.bd</p>', 'nazmun.jpg', 'bg-info', 'B.s.c', 0, '', 'Nazmun Nahar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '<h3>Mohammad Abir Mahamud (Lecturer)</h3>\r\n<p>\r\nB.s.c(eng.) in CSE\r\nResearch interest:Cyber sequrity and programming\r\nEmail:abir@bgctub.ac.bd</p>', 'abir.jpg', 'bg-info', 'B.s.c', 0, '', 'Mohammad Abir Mahamud (Lecturer)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '<h3>Sabrina Jahan Maisha(Lecturer)</h3>\r\n<p> \r\n\r\nB.s.c(eng.) in CSE\r\nResearch interest:Macine Learning,data mining,Artificial intellingence\r\nEmail:sabrina@bgctub.ac.bd</p>', 'Sabrina.jpg', 'bg-light', 'B.s.c', 0, '', 'Sabrina Jahan Maisha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '<h3>Fariha Iffath (Lecturer)</h3>\r\n\r\n<p>B.s.c(eng.) in CSE(CUET)\r\nResearch interest:Artificial intelligence,data mining,macine learning\r\nEmail:fariha@bgctub.ac.bd\r\n</p>\r\n', 'fariha.jpg', 'bg-light', 'B.s.c', 0, '', 'Fariha Iffath', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'new', 'yandexxmarket_0312021152350.png', 'bg', '', 123, '1@gmail.com', 'new', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'paginationdata', 'class_0442021071014.jpg', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'Arif', 'course_04112021080909.jpg', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '', 'a', '', 'a', 2, 'a', 'a', 'a', 'a', 'a', '', '', '', '', '', 'a', '', '', '', '', '', ''),
(20, '1', '1', '1', '3', 1, '3', '1', '1', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(21, '', '', '', '', 23, 'ariF@gmail.com', '', '', 'Faisal', 'Mahamud', 'a', 'a', 'a', 'd', 'a', 'bgc', 'a', 'd', 'd', 'a', 'a', 'a'),
(22, '', '', '', '', 13, 'fahim@gmail.com', '', '', 'Faisal', 'Mahamud', 'a', 'M', 'a', 'd', 'd', 'a', 'a', 'd', 'd', 'a', 'a', 'a'),
(23, '', '', '', '', 23, 'a', '', '', 'Faisal', 'Mahamud', 'aaaa', 'a', 'a', 'd', 'd', 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(24, '', '', '', '', 13, 'fahim@gmail.com', '', '', 'Faisal', 'Mahamud', 'a', 'a', 'a', 'a', 'd', 'd', 'd', 'd', 'a', 'a', 'a', 'd'),
(25, '', '', '', '', 12, 'fmfahim1202@gmail.com', '', '', 'Faisal', 'Mahamud', '+8801927549653', 'M', 'ctg', 'a', 'a', 'a', 'a', 'bgc', 'ctg', 'h', 'h', 'a');

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
-- Table structure for table `teachercourse_select`
--

CREATE TABLE `teachercourse_select` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacherUser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachercourse_select`
--

INSERT INTO `teachercourse_select` (`id`, `course_id`, `teacherUser`) VALUES
(1, 1, '');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `fk_ass_teacher` (`teacher_id`),
  ADD KEY `fk_ass_course` (`course_id`);

--
-- Indexes for table `assignment_student`
--
ALTER TABLE `assignment_student`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `ass_stud`
--
ALTER TABLE `ass_stud`
  ADD PRIMARY KEY (`ass_stud`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`cat_id`);

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
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `quiz_question` (`quiz_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `course_quiz` (`course_id`),
  ADD KEY `quiz_teacher` (`teacher_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_catagory_skill` (`cat_id`);

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
-- Indexes for table `student_quiz`
--
ALTER TABLE `student_quiz`
  ADD PRIMARY KEY (`quiz_ansid`),
  ADD KEY `student_quizresult` (`quiz`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachercourse_select`
--
ALTER TABLE `teachercourse_select`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherlogin`
--
ALTER TABLE `teacherlogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacherid` (`teacherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assignment_student`
--
ALTER TABLE `assignment_student`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ass_stud`
--
ALTER TABLE `ass_stud`
  MODIFY `ass_stud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coursestud`
--
ALTER TABLE `coursestud`
  MODIFY `enrollment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT for table `student_quiz`
--
ALTER TABLE `student_quiz`
  MODIFY `quiz_ansid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teach`
--
ALTER TABLE `teach`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teachercourse_select`
--
ALTER TABLE `teachercourse_select`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacherlogin`
--
ALTER TABLE `teacherlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `fk_ass_course` FOREIGN KEY (`course_id`) REFERENCES `skill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ass_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teach` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `quiz_question` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `course_quiz` FOREIGN KEY (`course_id`) REFERENCES `skill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_answer` FOREIGN KEY (`quiz_id`) REFERENCES `answers` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_ques` FOREIGN KEY (`quiz_id`) REFERENCES `answers` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teach` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `fk_catagory_skill` FOREIGN KEY (`cat_id`) REFERENCES `catagory` (`cat_id`);

--
-- Constraints for table `student_quiz`
--
ALTER TABLE `student_quiz`
  ADD CONSTRAINT `result_quiz` FOREIGN KEY (`quiz`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacherlogin`
--
ALTER TABLE `teacherlogin`
  ADD CONSTRAINT `teacherlogin_ibfk_1` FOREIGN KEY (`teacherid`) REFERENCES `teach` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
