-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 04:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `regsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(250) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(999) NOT NULL,
  `date_time` varchar(500) NOT NULL,
  `from_time` varchar(500) NOT NULL,
  `to_time` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `description`, `date_time`, `from_time`, `to_time`, `type`) VALUES
(3, 'UDM @28', 'Merlions join us as we celebrate our beloved Universityâ€™s 28th Founding Anniversary with the theme: â€œDestined 2 Be Gr8: Shaping the Future Through Quality Educationâ€ starting from April 23 till April 29, 2023.\r\nWe have lined up different activities for you to enjoy... so join us and have fun let us all celebrate UDMâ€™s 28th Glorious Years!!!', '2023-04-21', '07:40', '08:41', 'Event'),
(4, 'Christmas Break', 'We would like to inform you that the classes will end on December 22, 2023, and will resume on January 08, 2024.', '2023-12-21', '00:00', '12:00', 'News'),
(5, 'CET WEEK', 'We would like to invite you to participate in the  upcoming week of the College of Engineering and Technology!!!', '2023-12-11', '07:00', '17:00', 'Event'),
(6, 'CET WEEK', 'We would like to invite you to participate in the upcoming week of the College of Engineering and Technology!!!', '2023-12-12', '06:02', '18:02', 'Event'),
(7, 'CET WEEK', 'We would like to invite you to participate in the IT43 exhibit, which will showcase the system that they have developed.', '2023-12-13', '09:00', '14:00', 'Event'),
(8, 'CET WEEK', 'We would like to invite you to participate in the upcoming week of the College of Engineering and Technology!!!	', '2023-12-17', '00:53', '12:53', 'Event'),
(9, 'DEFENSE', 'IT43 Capstone defense at CMIT Building Sta. Cruz, Manila. ', '2023-12-16', '07:00', '19:00', 'Event');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(20) NOT NULL,
  `position_title` varchar(500) NOT NULL,
  `requirements` varchar(500) NOT NULL,
  `job` varchar(500) NOT NULL,
  `monthly_salary` varchar(500) NOT NULL,
  `education` varchar(500) NOT NULL,
  `training` varchar(500) NOT NULL,
  `experience` varchar(500) NOT NULL,
  `eligibility` varchar(500) NOT NULL,
  `research` varchar(500) NOT NULL,
  `community` varchar(500) NOT NULL,
  `competency` varchar(500) NOT NULL,
  `assignment` varchar(500) NOT NULL,
  `open_positions` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `position_title`, `requirements`, `job`, `monthly_salary`, `education`, `training`, `experience`, `eligibility`, `research`, `community`, `competency`, `assignment`, `open_positions`) VALUES
(1, 'NON-TEACHING VACANT POSITION', 'https://www.facebook.com/udmanila/posts/pfbid06jUoCkPW1NmEeZy4tkbeBLRiGurboopvtHnDqG42k1YoMFtNy4PAH1PG1x6GRGEUl', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test2', '2'),
(3, 'TEACHING VACANT POSITIONS 2023', 'https://www.facebook.com/udmanila/posts/pfbid06jUoCkPW1NmEeZy4tkbeBLRiGurboopvtHnDqG42k1YoMFtNy4PAH1PG1x6GRGEUl', 'test3', 'test3', 'test3', 'test3', 'test3', 'test3', 'test3', 'test3', 'test3', 'test3', '5'),
(10, '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `user_question` text NOT NULL,
  `admin_reply` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `user_question`, `admin_reply`, `created_at`) VALUES
(1, '', 'keme\r\n', '2024-01-05 13:11:51'),
(2, 'dsadada', NULL, '2024-01-05 13:12:00'),
(3, 'can I have a keme?\r\n', '', '2024-01-05 13:13:00'),
(4, '', NULL, '2024-01-05 13:26:54'),
(5, '', NULL, '2024-01-05 13:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `regsinfo`
--

CREATE TABLE `regsinfo` (
  `id` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `img_loc` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cpass` varchar(100) NOT NULL,
  `pnum` bigint(10) NOT NULL,
  `course` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `award` varchar(250) NOT NULL,
  `year_graduated` varchar(250) NOT NULL,
  `current_job` varchar(250) NOT NULL,
  `job_experience` varchar(250) NOT NULL,
  `skill_expertise` varchar(250) NOT NULL,
  `dateofbirth` varchar(250) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `verified` varchar(500) NOT NULL,
  `verify_number` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regsinfo`
--

INSERT INTO `regsinfo` (`id`, `fullName`, `img_loc`, `email`, `pass`, `cpass`, `pnum`, `course`, `gender`, `award`, `year_graduated`, `current_job`, `job_experience`, `skill_expertise`, `dateofbirth`, `degree`, `address`, `verified`, `verify_number`, `type`) VALUES
(12, 'UDM ADMIN', '1696529040_355721356_274600031814272_1868331215881352822_n.png', 'udma9126@gmail.com', 'adminako', 'adminako', 9558456111, 'BSIT', 'Female', 'test', 'test', 'Data Analyst', 'test', 'test', '2023-10-04', 'test', '', '1', '750378', 'admin'),
(34, 'Emmanuel Mestizo', '', 'mestizoemmanuel@gmail.com', 'password', 'password', 9123658711, 'BSIT', 'Male', 'cumlaude', '2024', 'IT', 'Software developer', 'programming', '0023-02-23', 'BSIT', 'soliss tondo', '1', '844887', 'student'),
(35, 'Andrew Mendoza', '', 'mendozaandrew777@gmail.com', '1234567', '1234567', 9554356843, 'BSIT', 'Male', 'Cum Laude', '2024', 'Astronaut', '10 yrs', 'UI/UX Designer', '2023-01-01', 'BSIT', '605 GERONA ST. TONDO, MANILA', '1', '918506', 'student'),
(38, 'CJ BAGTAS', '', 'cjcjlbj@gmail.com', '12345687', '12345687', 9474513268, 'bsit', 'Male', 'Cum Laude', '2023', 'cook', 'referee', 'data analyst', '2003-07-08', 'bsit', 'sta cruz manila', '1', '415198', 'student'),
(56, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(57, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(58, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(59, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(60, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(61, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(62, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(63, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(64, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(65, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(66, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(67, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(68, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(69, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(70, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(71, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student'),
(72, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '1', '', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regsinfo`
--
ALTER TABLE `regsinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `regsinfo`
--
ALTER TABLE `regsinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
