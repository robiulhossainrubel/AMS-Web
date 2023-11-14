-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 10:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendanceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(60) NOT NULL,
  `session` text NOT NULL,
  `coursecode` varchar(30) NOT NULL,
  `ct` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `department` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `session`, `coursecode`, `ct`, `email`, `department`) VALUES
(63, '2018-2019', 'ICE-1101', 'Fundamental of ICT', 'hossainrobiul33@gmail.com', 'ICE'),
(64, '2020-2021', 'ICE-3104', 'Web Programming Sessional', 'hossainrobiul33@gmail.com', 'ICE'),
(65, '2020-2021', 'MATH-1101', 'Differential Calculus and Geometry', 'admin@gmail.com', 'ICE');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(100) NOT NULL,
  `cc` text NOT NULL,
  `ct` text NOT NULL,
  `department` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `cc`, `ct`, `department`) VALUES
(1, 'ICE-1101', 'Fundamental of ICT', 'ICE'),
(2, 'ICE-1102', 'Fundamental of ICT Sessional', 'ICE'),
(3, 'ICE-1103', 'Basic Electronics', 'ICE'),
(4, 'ICE-1104', 'Basic Electronics Sessional', 'ICE'),
(5, 'ICE-1105', 'Applied Electricity and Magnetism', 'ICE'),
(6, 'ICE-1106', 'Applied Electricity and Magnetism Sessional', 'ICE'),
(7, 'MATH-1101', 'Differential Calculus and Geometry', 'ICE'),
(8, 'HUM-1101', 'Bamgladesh Studies', 'ICE'),
(9, 'ICE-1107', 'Viva-voce', 'ICE'),
(10, 'ICE-1201', 'Analog Electronics', 'ICE'),
(11, 'ICE-1202', 'Analog Electronics Sessional', 'ICE'),
(12, 'ICE-1203', 'Programming with C', 'ICE'),
(13, 'ICE-1204', 'Programming with C Sessional', 'ICE'),
(14, 'ICE-1205', 'Circuit Theory and Analysis', 'ICE'),
(15, 'ICE-1206', 'Circuit Theory and Analysis Sessional', 'ICE'),
(16, 'MATH-1201', 'Integral Calculus and Differential Equations', 'ICE'),
(17, 'BBA-1201', 'Industrial Management and Accountancy', 'ICE'),
(18, 'ENG-1201', 'Fundamental English', 'ICE'),
(19, 'ENG-1202', 'Fundamental English Sessional', 'ICE'),
(20, 'ICE-1207', 'Viva-voce', 'ICE'),
(21, 'ICE-2101', 'Digital Electronics', 'ICE'),
(22, 'ICE-2102', 'Digital Electronics Sessional', 'ICE'),
(23, 'ICE-2103', 'Object Oriented Programming', 'ICE'),
(24, 'ICE-2104', 'Object Oriented Programming Sessional', 'ICE'),
(25, 'ICE-2105', 'Discrete Mathematics and Numerical Methods', 'ICE'),
(26, 'ICE-2106', 'Discrete Mathematics and Numerical Methods Sessional', 'ICE'),
(27, 'MATH-2101', 'Vector, Matrix and Linear Algebra', 'ICE'),
(28, 'STAT-2101', 'Elementary Statistics and Probability', 'ICE'),
(29, 'STAT-2102', 'Elementary Statistics and Probability Sessional', 'ICE'),
(30, 'ICE-2107', 'Viva-voce', 'ICE'),
(31, 'ICE-2201', 'Data Structure and Algorithm', 'ICE'),
(32, 'ICE-2202', 'Data Structure and Algorithm Sessional', 'ICE'),
(33, 'ICE-2203', 'Analog Communication', 'ICE'),
(34, 'ICE-2204', 'Analog Communication Sessional', 'ICE'),
(35, 'ICE-2205', 'Signals and Systems', 'ICE'),
(36, 'ICE-2206', 'Signals and Systems Sessional', 'ICE'),
(37, 'ICE-2207', 'Electromagnetic Fields and Waves', 'ICE'),
(38, 'MATH-2201', 'Complex Variable Analysis, Laplace and Fourier Transforms', 'ICE'),
(39, 'STAT-2201', 'Sampling Distribution and Hypothesis Testing', 'ICE'),
(40, 'STAT-2202', 'Sampling Distribution and Hypothesis Testing Sessional', 'ICE'),
(41, 'ICE-2208', 'Viva-voce', 'ICE'),
(42, 'ICE-3101', 'Artificial Intelligence and Robotics', 'ICE'),
(43, 'ICE-3102', 'Artificial Intelligence and Robotics Sessional', 'ICE'),
(44, 'ICE-3103', 'Web Programming', 'ICE'),
(45, 'ICE-3104', 'Web Programming Sessional', 'ICE'),
(46, 'ICE-3105', 'Database Management Systems', 'ICE'),
(47, 'ICE-3106', 'Database Management Systems Sessional', 'ICE'),
(48, 'ICE-3107', 'Computer Architecture and Microcontroller Design', 'ICE'),
(49, 'ICE-3108', 'Computer Architecture and Microcontroller Design Sessional', 'ICE'),
(50, 'ICE-3109', 'Digital Signal Processing', 'ICE'),
(51, 'ICE-3110', 'Digital Signal Processing Sessional', 'ICE'),
(52, 'ICE-3111', 'Viva-voce', 'ICE'),
(53, 'ICE-3201', 'Network Programming with Java', 'ICE'),
(54, 'ICE-3202', 'Network Programming with Java Sessional', 'ICE'),
(55, 'ICE-3203', 'Telecommunication Engineering', 'ICE'),
(56, 'ICE-3204', 'Telecommunication Engineering Sessional', 'ICE'),
(57, 'ICE-3205', 'Digital Communication', 'ICE'),
(58, 'ICE-3206', 'Digital Communication Sessional', 'ICE'),
(59, 'ICE-3207', 'Digital Image and Speech Processing', 'ICE'),
(60, 'ICE-3208', 'Digital Image and Speech Processing Sessional', 'ICE'),
(61, 'ICE-3209', 'Antenna Engineering', 'ICE'),
(62, 'ICE-3210', 'Antenna Engineering Sessional', 'ICE'),
(63, 'ICE-3211', 'Project Design and Development', 'ICE'),
(64, 'ICE-3212', 'Viva-voce', 'ICE'),
(65, 'ICE-4101', 'Data Communication and Networking', 'ICE'),
(66, 'ICE-4102', 'Data Communication and Networking Sessional', 'ICE'),
(67, 'ICE-4103', 'Cellular and Mobile Communication', 'ICE'),
(68, 'ICE-4104', 'Cellular and Mobile Communication Sessional', 'ICE'),
(69, 'ICE-4105', 'Information Theory and Coding', 'ICE'),
(70, 'ICE-4106', 'Information Theory and Coding Sessional', 'ICE'),
(71, 'ICE-4107', 'Cryptography and Computer Security', 'ICE'),
(72, 'ICE-4108', 'Cryptography and Computer Security Sessional', 'ICE'),
(73, 'ICE-4109', 'Management of Information System', 'ICE'),
(74, 'ICE-4110', 'Viva-voce', 'ICE'),
(75, 'ICE-4201', 'Wireless Communication', 'ICE'),
(76, 'ICE-4202', 'Wireless Communication Sessional', 'ICE'),
(77, 'ICE-4203', 'System Analysis and Software Testing', 'ICE'),
(78, 'ICE-4204', 'System Analysis and Software Testing Sessional', 'ICE'),
(79, 'ICE-4205', 'Neural Networks', 'ICE'),
(80, 'ICE-4206', 'Neural Networks Sessional', 'ICE'),
(81, 'ICE-4214', 'Microwave and Fiber Optic Communication', 'ICE'),
(82, 'ICE-4215', 'Microwave and Fiber Optic \nCommunication Sessional', 'ICE'),
(83, 'ICE-4221', 'Radar and Satellite Communication', 'ICE'),
(84, 'ICE-4210', 'Thesis', 'ICE'),
(85, 'ICE-4211', 'Viva-voce', 'ICE');

-- --------------------------------------------------------

--
-- Table structure for table `iceice-11012018-2019hossainrobiul33@gmail.com`
--

CREATE TABLE `iceice-11012018-2019hossainrobiul33@gmail.com` (
  `id` int(100) NOT NULL,
  `Roll` int(100) NOT NULL,
  `Name` text NOT NULL,
  `CT1` int(2) NOT NULL,
  `CT2` int(2) NOT NULL,
  `CT3` int(2) NOT NULL,
  `Percentage` int(3) NOT NULL,
  `Mark` int(2) NOT NULL,
  `Best1` int(2) NOT NULL,
  `Best2` int(2) NOT NULL,
  `Total` int(2) NOT NULL,
  `14/11/2023` text DEFAULT 'A',
  `15/11/2023` text DEFAULT 'A',
  `16/11/2023` text DEFAULT 'A',
  `17/11/2023` text DEFAULT 'A',
  `20/11/2023` text DEFAULT 'A',
  `21/11/2023` text DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iceice-11012018-2019hossainrobiul33@gmail.com`
--

INSERT INTO `iceice-11012018-2019hossainrobiul33@gmail.com` (`id`, `Roll`, `Name`, `CT1`, `CT2`, `CT3`, `Percentage`, `Mark`, `Best1`, `Best2`, `Total`, `14/11/2023`, `15/11/2023`, `16/11/2023`, `17/11/2023`, `20/11/2023`, `21/11/2023`) VALUES
(1, 190601, 'MITU RANI KUNDU', 0, 0, 0, 50, 0, 0, 0, 0, 'P', 'A', 'A', 'P', 'A', 'P'),
(2, 190602, 'MD.ZAMIUL ISLAM', 0, 0, 0, 50, 0, 0, 0, 0, 'P', 'A', 'A', 'P', 'A', 'P'),
(3, 190603, 'MD. ATIKUR RAHMAN', 0, 0, 0, 67, 5, 0, 0, 5, 'P', 'P', 'A', 'P', 'A', 'P'),
(4, 190604, 'MD. ABDUL MATIN', 0, 0, 0, 17, 0, 0, 0, 0, 'P', 'A', 'A', 'A', 'A', 'A'),
(5, 190605, 'MD. OMAR FARUK', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'P', 'A', 'A', 'A', 'A'),
(6, 190606, 'MD. SAGOR MIA', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(7, 190608, 'MD. MASUD RANA', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(8, 190609, 'MD. RAHATUL RABBI', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(9, 190610, 'MD. SHA ALAM', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(10, 190611, 'MD. MEHEDI HASAN', 0, 0, 0, 33, 0, 0, 0, 0, 'A', 'A', 'A', 'P', 'P', 'A'),
(11, 190613, 'MD. MAHFUZUR RAHMAN', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'P', 'A', 'A'),
(12, 190614, 'ROBIUL HOSSAIN RUBEL', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(13, 190615, 'MD. IMRAN HOSSAIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(14, 190616, 'MD. NAIM HOSSAIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(15, 190617, 'SHAHANUR RAHMAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(16, 190618, 'MD. MIZANUR RAHMAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(17, 190619, 'SAGOR SARDER', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(18, 190620, 'SUMAIYA KHATUN', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'P', 'A', 'A', 'A'),
(19, 190621, 'MD SHAHADAT HOSSAIN BHUIAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(20, 190622, 'MD IMRAN HOSSAIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(21, 190623, 'MD SAGOR MOLLAH', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(22, 190624, 'Z. H. M KHAIRUL BASAR', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(23, 190625, 'MD. SAK1B HASAN', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(24, 190626, 'MD RAKIBU ZZAMAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(25, 190627, 'ABDUL HALIM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(26, 190628, 'MD. RIFAT SARKAR', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(27, 190629, 'MONJURUL ALAM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(28, 190630, 'SAYMA SADIA', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(29, 190631, 'MD.SOHAG HOSSAIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(30, 190632, 'JANNATUL NAYEM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(31, 190633, 'MD.SHAHINUR', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(32, 190634, 'MD.MEHEDI HASAN', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(33, 190635, 'JOY SAHA', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A'),
(34, 190636, 'MD.SHARIF AHAMMED', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'P', 'A', 'A'),
(35, 190637, 'FARIHA MAHZABIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(36, 190638, 'SHOAIB AHMAD', 0, 0, 0, 17, 0, 0, 0, 0, 'A', 'A', 'A', 'P', 'A', 'A'),
(37, 190639, 'MD.MAHFUZUR RAHMAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A'),
(38, 190640, 'SHAHINUL ISLAM', 0, 0, 0, 50, 0, 0, 0, 0, 'A', 'A', 'P', 'P', 'P', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `iceice-31042020-2021hossainrobiul33@gmail.com`
--

CREATE TABLE `iceice-31042020-2021hossainrobiul33@gmail.com` (
  `id` int(100) NOT NULL,
  `Roll` int(100) NOT NULL,
  `Name` text NOT NULL,
  `CT1` int(2) NOT NULL,
  `CT2` int(2) NOT NULL,
  `CT3` int(2) NOT NULL,
  `Percentage` int(3) NOT NULL,
  `Mark` int(2) NOT NULL,
  `Best1` int(2) NOT NULL,
  `Best2` int(2) NOT NULL,
  `Total` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iceice-31042020-2021hossainrobiul33@gmail.com`
--

INSERT INTO `iceice-31042020-2021hossainrobiul33@gmail.com` (`id`, `Roll`, `Name`, `CT1`, `CT2`, `CT3`, `Percentage`, `Mark`, `Best1`, `Best2`, `Total`) VALUES
(1, 210601, 'Tahsin Ahmed', 0, 0, 0, 0, 0, 0, 0, 0),
(2, 210602, 'Asif Karim', 0, 0, 0, 0, 0, 0, 0, 0),
(3, 210603, 'Md. Mahodi Hasan', 0, 0, 0, 0, 0, 0, 0, 0),
(4, 210604, 'Sadia', 0, 0, 0, 0, 0, 0, 0, 0),
(5, 210605, 'Nishat Tasnim Susmi', 0, 0, 0, 0, 0, 0, 0, 0),
(6, 210606, 'Shubail Haque Turza', 0, 0, 0, 0, 0, 0, 0, 0),
(7, 210607, 'Sajib Barua', 0, 0, 0, 0, 0, 0, 0, 0),
(8, 210608, 'Moumita Haque', 0, 0, 0, 0, 0, 0, 0, 0),
(9, 210609, 'Mst. Jarin Tasnim', 0, 0, 0, 0, 0, 0, 0, 0),
(10, 210610, 'Sabrina Ahmed', 0, 0, 0, 0, 0, 0, 0, 0),
(11, 210611, 'Lamia Islam', 0, 0, 0, 0, 0, 0, 0, 0),
(12, 210612, 'Md. Moazzem', 0, 0, 0, 0, 0, 0, 0, 0),
(13, 210613, 'Sheikh Soktiban', 0, 0, 0, 0, 0, 0, 0, 0),
(14, 210614, 'M. Oly Mahmud', 0, 0, 0, 0, 0, 0, 0, 0),
(15, 210615, 'Sadia Ahmed', 0, 0, 0, 0, 0, 0, 0, 0),
(16, 210616, 'Methela Farjana Zim', 0, 0, 0, 0, 0, 0, 0, 0),
(17, 210617, 'Shahariar Alam Zisan', 0, 0, 0, 0, 0, 0, 0, 0),
(18, 210618, 'Jakaria Habib', 0, 0, 0, 0, 0, 0, 0, 0),
(19, 210619, 'Jannatul Mauya Mahi', 0, 0, 0, 0, 0, 0, 0, 0),
(20, 210620, 'Md. Zahid Hasan', 0, 0, 0, 0, 0, 0, 0, 0),
(21, 210621, 'Sazia Afrin Labonna', 0, 0, 0, 0, 0, 0, 0, 0),
(22, 210622, 'Azima Akter', 0, 0, 0, 0, 0, 0, 0, 0),
(23, 210623, 'Md. Parvez Ali', 0, 0, 0, 0, 0, 0, 0, 0),
(24, 210624, 'Manob Chandra', 0, 0, 0, 0, 0, 0, 0, 0),
(25, 210625, 'Md. Raju Ahmed', 0, 0, 0, 0, 0, 0, 0, 0),
(26, 210626, 'Khadija Akter', 0, 0, 0, 0, 0, 0, 0, 0),
(27, 210627, 'Md. Akash Miya', 0, 0, 0, 0, 0, 0, 0, 0),
(28, 210628, 'Md. Basim Al Zabir', 0, 0, 0, 0, 0, 0, 0, 0),
(29, 210629, 'Mariam Lutfy', 0, 0, 0, 0, 0, 0, 0, 0),
(30, 210630, 'Most. Swarnaly', 0, 0, 0, 0, 0, 0, 0, 0),
(31, 210631, 'Md. Taz Warul Mulk', 0, 0, 0, 0, 0, 0, 0, 0),
(32, 210632, 'Kabir Hossen', 0, 0, 0, 0, 0, 0, 0, 0),
(33, 210633, 'Sabbir Ahmed', 0, 0, 0, 0, 0, 0, 0, 0),
(34, 210634, 'Md.Rokon Hossain', 0, 0, 0, 0, 0, 0, 0, 0),
(35, 210635, 'Muntasir Mamun', 0, 0, 0, 0, 0, 0, 0, 0),
(36, 210636, 'Maya Akter', 0, 0, 0, 0, 0, 0, 0, 0),
(37, 210637, 'Ariful Islam', 0, 0, 0, 0, 0, 0, 0, 0),
(38, 210638, 'Md. Amzad Hossain', 0, 0, 0, 0, 0, 0, 0, 0),
(39, 210639, 'Sadia Afroz Oishi', 0, 0, 0, 0, 0, 0, 0, 0),
(40, 210640, 'Mst. Borsha Khatun', 0, 0, 0, 0, 0, 0, 0, 0),
(41, 210641, 'Sayed Shahriar', 0, 0, 0, 0, 0, 0, 0, 0),
(42, 210642, 'Mst. Tahomina Kabir', 0, 0, 0, 0, 0, 0, 0, 0),
(43, 200637, 'Md.Naimur Rahman', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `icemath-11012020-2021admin@gmail.com`
--

CREATE TABLE `icemath-11012020-2021admin@gmail.com` (
  `id` int(100) NOT NULL,
  `Roll` int(100) NOT NULL,
  `Name` text NOT NULL,
  `CT1` int(2) NOT NULL,
  `CT2` int(2) NOT NULL,
  `CT3` int(2) NOT NULL,
  `Percentage` int(3) NOT NULL,
  `Mark` int(2) NOT NULL,
  `Best1` int(2) NOT NULL,
  `Best2` int(2) NOT NULL,
  `Total` int(2) NOT NULL,
  `14/11/2023` text DEFAULT 'A',
  `15/11/2023` text DEFAULT 'A',
  `16/11/2023` text DEFAULT 'A',
  `17/11/2023` text DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `icemath-11012020-2021admin@gmail.com`
--

INSERT INTO `icemath-11012020-2021admin@gmail.com` (`id`, `Roll`, `Name`, `CT1`, `CT2`, `CT3`, `Percentage`, `Mark`, `Best1`, `Best2`, `Total`, `14/11/2023`, `15/11/2023`, `16/11/2023`, `17/11/2023`) VALUES
(1, 210601, 'Tahsin Ahmed', 0, 0, 0, 50, 0, 0, 0, 0, 'P', 'P', 'A', 'A'),
(2, 210602, 'Asif Karim', 0, 0, 0, 50, 0, 0, 0, 0, 'P', 'P', 'A', 'A'),
(3, 210603, 'Md. Mahodi Hasan', 0, 0, 0, 50, 0, 0, 0, 0, 'A', 'P', 'P', 'A'),
(4, 210604, 'Sadia', 0, 0, 0, 75, 7, 0, 0, 7, 'P', 'P', 'P', 'A'),
(5, 210605, 'Nishat Tasnim Susmi', 0, 0, 0, 75, 7, 0, 0, 7, 'A', 'P', 'P', 'P'),
(6, 210606, 'Shubail Haque Turza', 0, 0, 0, 75, 7, 0, 0, 7, 'A', 'P', 'P', 'P'),
(7, 210607, 'Sajib Barua', 0, 0, 0, 75, 7, 0, 0, 7, 'A', 'P', 'P', 'P'),
(8, 210608, 'Moumita Haque', 0, 0, 0, 75, 7, 0, 0, 7, 'A', 'P', 'P', 'P'),
(9, 210609, 'Mst. Jarin Tasnim', 0, 0, 0, 75, 7, 0, 0, 7, 'A', 'P', 'P', 'P'),
(10, 210610, 'Sabrina Ahmed', 0, 0, 0, 50, 0, 0, 0, 0, 'A', 'A', 'P', 'P'),
(11, 210611, 'Lamia Islam', 0, 0, 0, 50, 0, 0, 0, 0, 'A', 'A', 'P', 'P'),
(12, 210612, 'Md. Moazzem', 0, 0, 0, 50, 0, 0, 0, 0, 'A', 'A', 'P', 'P'),
(13, 210613, 'Sheikh Soktiban', 0, 0, 0, 25, 0, 0, 0, 0, 'A', 'A', 'A', 'P'),
(14, 210614, 'M. Oly Mahmud', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(15, 210615, 'Sadia Ahmed', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(16, 210616, 'Methela Farjana Zim', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(17, 210617, 'Shahariar Alam Zisan', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(18, 210618, 'Jakaria Habib', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(19, 210619, 'Jannatul Mauya Mahi', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(20, 210620, 'Md. Zahid Hasan', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(21, 210621, 'Sazia Afrin Labonna', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(22, 210622, 'Azima Akter', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(23, 210623, 'Md. Parvez Ali', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(24, 210624, 'Manob Chandra', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(25, 210625, 'Md. Raju Ahmed', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(26, 210626, 'Khadija Akter', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(27, 210627, 'Md. Akash Miya', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(28, 210628, 'Md. Basim Al Zabir', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(29, 210629, 'Mariam Lutfy', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(30, 210630, 'Most. Swarnaly', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(31, 210631, 'Md. Taz Warul Mulk', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(32, 210632, 'Kabir Hossen', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(33, 210633, 'Sabbir Ahmed', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(34, 210634, 'Md.Rokon Hossain', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(35, 210635, 'Muntasir Mamun', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(36, 210636, 'Maya Akter', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(37, 210637, 'Ariful Islam', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(38, 210638, 'Md. Amzad Hossain', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(39, 210639, 'Sadia Afroz Oishi', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(40, 210640, 'Mst. Borsha Khatun', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(41, 210641, 'Sayed Shahriar', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(42, 210642, 'Mst. Tahomina Kabir', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A'),
(43, 200637, 'Md.Naimur Rahman', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(100) NOT NULL,
  `Roll` int(100) NOT NULL,
  `Name` text NOT NULL,
  `session` text NOT NULL,
  `department` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Roll`, `Name`, `session`, `department`) VALUES
(1, 190601, 'MITU RANI KUNDU', '2018-2019', 'ICE'),
(2, 190602, 'MD.ZAMIUL ISLAM', '2018-2019', 'ICE'),
(3, 190603, 'MD. ATIKUR RAHMAN', '2018-2019', 'ICE'),
(4, 190604, 'MD. ABDUL MATIN', '2018-2019', 'ICE'),
(5, 190605, 'MD. OMAR FARUK', '2018-2019', 'ICE'),
(6, 190606, 'MD. SAGOR MIA', '2018-2019', 'ICE'),
(7, 190608, 'MD. MASUD RANA', '2018-2019', 'ICE'),
(8, 190609, 'MD. RAHATUL RABBI', '2018-2019', 'ICE'),
(9, 190610, 'MD. SHA ALAM', '2018-2019', 'ICE'),
(10, 190611, 'MD. MEHEDI HASAN', '2018-2019', 'ICE'),
(11, 190613, 'MD. MAHFUZUR RAHMAN', '2018-2019', 'ICE'),
(12, 190614, 'ROBIUL HOSSAIN RUBEL', '2018-2019', 'ICE'),
(13, 190615, 'MD. IMRAN HOSSAIN', '2018-2019', 'ICE'),
(14, 190616, 'MD. NAIM HOSSAIN', '2018-2019', 'ICE'),
(15, 190617, 'SHAHANUR RAHMAN', '2018-2019', 'ICE'),
(16, 190618, 'MD. MIZANUR RAHMAN', '2018-2019', 'ICE'),
(17, 190619, 'SAGOR SARDER', '2018-2019', 'ICE'),
(18, 190620, 'SUMAIYA KHATUN', '2018-2019', 'ICE'),
(19, 190621, 'MD SHAHADAT HOSSAIN BHUIAN', '2018-2019', 'ICE'),
(20, 190622, 'MD IMRAN HOSSAIN', '2018-2019', 'ICE'),
(21, 190623, 'MD SAGOR MOLLAH', '2018-2019', 'ICE'),
(22, 190624, 'Z. H. M KHAIRUL BASAR', '2018-2019', 'ICE'),
(23, 190625, 'MD. SAK1B HASAN', '2018-2019', 'ICE'),
(24, 190626, 'MD RAKIBU ZZAMAN', '2018-2019', 'ICE'),
(25, 190627, 'ABDUL HALIM', '2018-2019', 'ICE'),
(26, 190628, 'MD. RIFAT SARKAR', '2018-2019', 'ICE'),
(27, 190629, 'MONJURUL ALAM', '2018-2019', 'ICE'),
(28, 190630, 'SAYMA SADIA', '2018-2019', 'ICE'),
(29, 190631, 'MD.SOHAG HOSSAIN', '2018-2019', 'ICE'),
(30, 190632, 'JANNATUL NAYEM', '2018-2019', 'ICE'),
(31, 190633, 'MD.SHAHINUR', '2018-2019', 'ICE'),
(32, 190634, 'MD.MEHEDI HASAN', '2018-2019', 'ICE'),
(33, 190635, 'JOY SAHA', '2018-2019', 'ICE'),
(34, 190636, 'MD.SHARIF AHAMMED', '2018-2019', 'ICE'),
(35, 190637, 'FARIHA MAHZABIN', '2018-2019', 'ICE'),
(36, 190638, 'SHOAIB AHMAD', '2018-2019', 'ICE'),
(37, 190639, 'MD.MAHFUZUR RAHMAN', '2018-2019', 'ICE'),
(38, 190640, 'SHAHINUL ISLAM', '2018-2019', 'ICE'),
(39, 210601, 'Tahsin Ahmed', '2020-2021', 'ICE'),
(40, 210602, 'Asif Karim', '2020-2021', 'ICE'),
(41, 210603, 'Md. Mahodi Hasan', '2020-2021', 'ICE'),
(42, 210604, 'Sadia', '2020-2021', 'ICE'),
(43, 210605, 'Nishat Tasnim Susmi', '2020-2021', 'ICE'),
(44, 210606, 'Shubail Haque Turza', '2020-2021', 'ICE'),
(45, 210607, 'Sajib Barua', '2020-2021', 'ICE'),
(46, 210608, 'Moumita Haque', '2020-2021', 'ICE'),
(47, 210609, 'Mst. Jarin Tasnim', '2020-2021', 'ICE'),
(48, 210610, 'Sabrina Ahmed', '2020-2021', 'ICE'),
(49, 210611, 'Lamia Islam', '2020-2021', 'ICE'),
(50, 210612, 'Md. Moazzem', '2020-2021', 'ICE'),
(51, 210613, 'Sheikh Soktiban', '2020-2021', 'ICE'),
(52, 210614, 'M. Oly Mahmud', '2020-2021', 'ICE'),
(53, 210615, 'Sadia Ahmed', '2020-2021', 'ICE'),
(54, 210616, 'Methela Farjana Zim', '2020-2021', 'ICE'),
(55, 210617, 'Shahariar Alam Zisan', '2020-2021', 'ICE'),
(56, 210618, 'Jakaria Habib', '2020-2021', 'ICE'),
(57, 210619, 'Jannatul Mauya Mahi', '2020-2021', 'ICE'),
(58, 210620, 'Md. Zahid Hasan', '2020-2021', 'ICE'),
(59, 210621, 'Sazia Afrin Labonna', '2020-2021', 'ICE'),
(60, 210622, 'Azima Akter', '2020-2021', 'ICE'),
(61, 210623, 'Md. Parvez Ali', '2020-2021', 'ICE'),
(62, 210624, 'Manob Chandra', '2020-2021', 'ICE'),
(63, 210625, 'Md. Raju Ahmed', '2020-2021', 'ICE'),
(64, 210626, 'Khadija Akter', '2020-2021', 'ICE'),
(65, 210627, 'Md. Akash Miya', '2020-2021', 'ICE'),
(66, 210628, 'Md. Basim Al Zabir', '2020-2021', 'ICE'),
(67, 210629, 'Mariam Lutfy', '2020-2021', 'ICE'),
(68, 210630, 'Most. Swarnaly', '2020-2021', 'ICE'),
(69, 210631, 'Md. Taz Warul Mulk', '2020-2021', 'ICE'),
(70, 210632, 'Kabir Hossen', '2020-2021', 'ICE'),
(71, 210633, 'Sabbir Ahmed', '2020-2021', 'ICE'),
(72, 210634, 'Md.Rokon Hossain', '2020-2021', 'ICE'),
(73, 210635, 'Muntasir Mamun', '2020-2021', 'ICE'),
(74, 210636, 'Maya Akter', '2020-2021', 'ICE'),
(75, 210637, 'Ariful Islam', '2020-2021', 'ICE'),
(76, 210638, 'Md. Amzad Hossain', '2020-2021', 'ICE'),
(77, 210639, 'Sadia Afroz Oishi', '2020-2021', 'ICE'),
(78, 210640, 'Mst. Borsha Khatun', '2020-2021', 'ICE'),
(79, 210641, 'Sayed Shahriar', '2020-2021', 'ICE'),
(80, 210642, 'Mst. Tahomina Kabir', '2020-2021', 'ICE'),
(81, 200637, 'Md.Naimur Rahman', '2020-2021', 'ICE'),
(82, 220603, 'MD Sabbir Hossain', '2021-2022', 'ICE'),
(83, 220604, 'Apurbo Sharma', '2021-2022', 'ICE'),
(84, 220605, 'MD. Uzzal Mia', '2021-2022', 'ICE'),
(85, 220606, 'MD. Mursalin Lemon', '2021-2022', 'ICE'),
(86, 220607, 'MD. Kadirul Islam Kanon', '2021-2022', 'ICE'),
(87, 220608, 'MD. Noman Bhuiyan', '2021-2022', 'ICE'),
(88, 220609, 'Saklam Sakib', '2021-2022', 'ICE'),
(89, 220610, 'Mst. Nurjahan Khatun', '2021-2022', 'ICE'),
(90, 220611, 'Mst Sanjida Israt Suchona', '2021-2022', 'ICE'),
(91, 220612, 'Arifur Rahman', '2021-2022', 'ICE'),
(92, 220613, 'Nilufa Akter Boishakhi', '2021-2022', 'ICE'),
(93, 220614, 'MD. Rifat Hossen', '2021-2022', 'ICE'),
(94, 220615, 'Mst.Sabi Afrin Mim', '2021-2022', 'ICE'),
(95, 220616, 'MD. Shahriar Hridoy', '2021-2022', 'ICE'),
(96, 220617, 'MD. Abu bakkar siddik Zilhaj', '2021-2022', 'ICE'),
(97, 220618, 'MD. Junaid', '2021-2022', 'ICE'),
(98, 220620, 'Siam Khan', '2021-2022', 'ICE'),
(99, 220621, 'Nafis Fuad Rudro', '2021-2022', 'ICE'),
(100, 220622, 'Tahsina Saba', '2021-2022', 'ICE'),
(101, 220623, 'Jannatul Azmi', '2021-2022', 'ICE'),
(102, 220625, 'MD Sazzad Hossain Shakkhor', '2021-2022', 'ICE'),
(103, 220626, 'Azmira Akter Simla', '2021-2022', 'ICE'),
(104, 220627, 'Al Kavy Joy', '2021-2022', 'ICE'),
(105, 220628, 'Md Mahafug Ahmed', '2021-2022', 'ICE'),
(106, 220629, 'Mushfiqur Rahman Toki', '2021-2022', 'ICE'),
(107, 220630, 'Redwanul Kabir', '2021-2022', 'ICE'),
(108, 220631, 'Sayara Tasnim Shipra', '2021-2022', 'ICE'),
(109, 220632, 'Haniya Khanam', '2021-2022', 'ICE'),
(110, 220633, 'Sumaiya Hossain', '2021-2022', 'ICE'),
(111, 220634, 'Sohel Ahmed', '2021-2022', 'ICE'),
(112, 220635, 'Abdul Rafe', '2021-2022', 'ICE'),
(113, 220636, 'Shakil Ahmed', '2021-2022', 'ICE'),
(114, 220637, 'MD. Shakib Hossain', '2021-2022', 'ICE'),
(115, 220638, 'Jubayer Ahmmed', '2021-2022', 'ICE'),
(116, 220639, 'Mahmudul Islam', '2021-2022', 'ICE'),
(117, 220640, 'Mst. Khaleda Khatun', '2021-2022', 'ICE'),
(118, 220641, 'MD. Rahat Mahbub', '2021-2022', 'ICE'),
(119, 220642, 'MD SAMIUL ISLAM ', '2021-2022', 'ICE'),
(120, 210613, 'Sheikh Soktiban', '2021-2022', 'ICE'),
(121, 210619, 'Jannatul Mauya mahi', '2021-2022', 'ICE'),
(122, 210631, 'MD. Taz Warul Mulk', '2021-2022', 'ICE'),
(123, 210632, 'Kabir Hossen', '2021-2022', 'ICE'),
(124, 210633, 'MD. Sabbir Ahmed', '2021-2022', 'ICE'),
(125, 210642, 'Mst. Tahomina Kabir Rany', '2021-2022', 'ICE');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `id` int(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `name` text NOT NULL,
  `department` text NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `email`, `name`, `department`, `pass`) VALUES
(1, 'admin@gmail.com', 'Rubel', 'ICE', '1234'),
(2, 'hossainrobiul33@gmail.com', 'Robiul hossain Rubel', 'ICE', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iceice-11012018-2019hossainrobiul33@gmail.com`
--
ALTER TABLE `iceice-11012018-2019hossainrobiul33@gmail.com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iceice-31042020-2021hossainrobiul33@gmail.com`
--
ALTER TABLE `iceice-31042020-2021hossainrobiul33@gmail.com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icemath-11012020-2021admin@gmail.com`
--
ALTER TABLE `icemath-11012020-2021admin@gmail.com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `iceice-11012018-2019hossainrobiul33@gmail.com`
--
ALTER TABLE `iceice-11012018-2019hossainrobiul33@gmail.com`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `iceice-31042020-2021hossainrobiul33@gmail.com`
--
ALTER TABLE `iceice-31042020-2021hossainrobiul33@gmail.com`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `icemath-11012020-2021admin@gmail.com`
--
ALTER TABLE `icemath-11012020-2021admin@gmail.com`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
