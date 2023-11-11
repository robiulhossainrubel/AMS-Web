-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 08:59 PM
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
-- Table structure for table `2018-2019`
--

CREATE TABLE `2018-2019` (
  `id` int(10) NOT NULL,
  `Roll` int(100) NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2018-2019`
--

INSERT INTO `2018-2019` (`id`, `Roll`, `Name`) VALUES
(1, 190601, 'MITU RANI KUNDU'),
(2, 190602, 'MD.ZAMIUL ISLAM'),
(3, 190603, 'MD. ATIKUR RAHMAN'),
(4, 190604, 'MD. ABDUL MATIN'),
(5, 190605, 'MD. OMAR FARUK'),
(6, 190606, 'MD. SAGOR MIA'),
(7, 190608, 'MD. MASUD RANA'),
(8, 190609, 'MD. RAHATUL RABBI'),
(9, 190610, 'MD. SHA ALAM'),
(10, 190611, 'MD. MEHEDI HASAN'),
(11, 190613, 'MD. MAHFUZUR RAHMAN'),
(12, 190614, 'ROBIUL HOSSAIN RUBEL'),
(13, 190615, 'MD. IMRAN HOSSAIN'),
(14, 190616, 'MD. NAIM HOSSAIN'),
(15, 190617, 'SHAHANUR RAHMAN'),
(16, 190618, 'MD. MIZANUR RAHMAN'),
(17, 190619, 'SAGOR SARDER'),
(18, 190620, 'SUMAIYA KHATUN'),
(19, 190621, 'MD SHAHADAT HOSSAIN BHUIAN'),
(20, 190622, 'MD IMRAN HOSSAIN'),
(21, 190623, 'MD SAGOR MOLLAH'),
(22, 190624, 'Z. H. M KHAIRUL BASAR'),
(23, 190625, 'MD. SAK1B HASAN'),
(24, 190626, 'MD RAKIBU ZZAMAN'),
(25, 190627, 'ABDUL HALIM'),
(26, 190628, 'MD. RIFAT SARKAR'),
(27, 190629, 'MONJURUL ALAM'),
(28, 190630, 'SAYMA SADIA'),
(29, 190631, 'MD.SOHAG HOSSAIN'),
(30, 190632, 'JANNATUL NAYEM'),
(31, 190633, 'MD.SHAHINUR'),
(32, 190634, 'MD.MEHEDI HASAN'),
(33, 190635, 'JOY SAHA'),
(34, 190636, 'MD.SHARIF AHAMMED'),
(35, 190637, 'FARIHA MAHZABIN'),
(36, 190638, 'SHOAIB AHMAD'),
(37, 190639, 'MD.MAHFUZUR RAHMAN'),
(38, 190640, 'SHAHINUL ISLAM');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(100) NOT NULL,
  `admin_email` varchar(250) NOT NULL,
  `admin_name` text NOT NULL,
  `admin_pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_email`, `admin_name`, `admin_pass`) VALUES
(1, 'admin@gmail.com', 'Rubel', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(60) NOT NULL,
  `session` varchar(30) NOT NULL,
  `coursecode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `session`, `coursecode`) VALUES
(39, '2018-2019', 'ICE-4101');

-- --------------------------------------------------------

--
-- Table structure for table `course_code`
--

CREATE TABLE `course_code` (
  `id` int(100) NOT NULL,
  `cc` text NOT NULL,
  `ct` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_code`
--

INSERT INTO `course_code` (`id`, `cc`, `ct`) VALUES
(1, 'ICE-1101', 'Fundamental of ICT'),
(2, 'ICE-1102', 'Fundamental of ICT Sessional'),
(3, 'ICE-1103', 'Basic Electronics'),
(4, 'ICE-1104', 'Basic Electronics Sessional'),
(5, 'ICE-1105', 'Applied Electricity and Magnetism'),
(6, 'ICE-1106', 'Applied Electricity and Magnetism Sessional'),
(7, 'MATH-1101', 'Differential Calculus and Geometry'),
(8, 'HUM-1101', 'Bamgladesh Studies'),
(9, 'ICE-1107', 'Viva-voce'),
(10, 'ICE-1201', 'Analog Electronics'),
(11, 'ICE-1202', 'Analog Electronics Sessional'),
(12, 'ICE-1203', 'Programming with C'),
(13, 'ICE-1204', 'Programming with C Sessional'),
(14, 'ICE-1205', 'Circuit Theory and Analysis'),
(15, 'ICE-1206', 'Circuit Theory and Analysis Sessional'),
(16, 'MATH-1201', 'Integral Calculus and Differential Equations'),
(17, 'BBA-1201', 'Industrial Management and Accountancy'),
(18, 'ENG-1201', 'Fundamental English'),
(19, 'ENG-1202', 'Fundamental English Sessional'),
(20, 'ICE-1207', 'Viva-voce'),
(21, 'ICE-2101', 'Digital Electronics'),
(22, 'ICE-2102', 'Digital Electronics Sessional'),
(23, 'ICE-2103', 'Object Oriented Programming'),
(24, 'ICE-2104', 'Object Oriented Programming Sessional'),
(25, 'ICE-2105', 'Discrete Mathematics and Numerical Methods'),
(26, 'ICE-2106', 'Discrete Mathematics and Numerical Methods Sessional'),
(27, 'MATH-2101', 'Vector, Matrix and Linear Algebra'),
(28, 'STAT-2101', 'Elementary Statistics and Probability'),
(29, 'STAT-2102', 'Elementary Statistics and Probability Sessional'),
(30, 'ICE-2107', 'Viva-voce'),
(31, 'ICE-2201', 'Data Structure and Algorithm'),
(32, 'ICE-2202', 'Data Structure and Algorithm Sessional'),
(33, 'ICE-2203', 'Analog Communication'),
(34, 'ICE-2204', 'Analog Communication Sessional'),
(35, 'ICE-2205', 'Signals and Systems'),
(36, 'ICE-2206', 'Signals and Systems Sessional'),
(37, 'ICE-2207', 'Electromagnetic Fields and Waves'),
(38, 'MATH-2201', 'Complex Variable Analysis, Laplace and Fourier Transforms'),
(39, 'STAT-2201', 'Sampling Distribution and Hypothesis Testing'),
(40, 'STAT-2202', 'Sampling Distribution and Hypothesis Testing Sessional'),
(41, 'ICE-2208', 'Viva-voce'),
(42, 'ICE-3101', 'Artificial Intelligence and Robotics'),
(43, 'ICE-3102', 'Artificial Intelligence and Robotics Sessional'),
(44, 'ICE-3103', 'Web Programming'),
(45, 'ICE-3104', 'Web Programming Sessional'),
(46, 'ICE-3105', 'Database Management Systems'),
(47, 'ICE-3106', 'Database Management Systems Sessional'),
(48, 'ICE-3107', 'Computer Architecture and Microcontroller Design'),
(49, 'ICE-3108', 'Computer Architecture and Microcontroller Design Sessional'),
(50, 'ICE-3109', 'Digital Signal Processing'),
(51, 'ICE-3110', 'Digital Signal Processing Sessional'),
(52, 'ICE-3111', 'Viva-voce'),
(53, 'ICE-3201', 'Network Programming with Java'),
(54, 'ICE-3202', 'Network Programming with Java Sessional'),
(55, 'ICE-3203', 'Telecommunication Engineering'),
(56, 'ICE-3204', 'Telecommunication Engineering Sessional'),
(57, 'ICE-3205', 'Digital Communication'),
(58, 'ICE-3206', 'Digital Communication Sessional'),
(59, 'ICE-3207', 'Digital Image and Speech Processing'),
(60, 'ICE-3208', 'Digital Image and Speech Processing Sessional'),
(61, 'ICE-3209', 'Antenna Engineering'),
(62, 'ICE-3210', 'Antenna Engineering Sessional'),
(63, 'ICE-3211', 'Project Design and Development'),
(64, 'ICE-3212', 'Viva-voce'),
(65, 'ICE-4101', 'Data Communication and Networking'),
(66, 'ICE-4102', 'Data Communication and Networking Sessional'),
(67, 'ICE-4103', 'Cellular and Mobile Communication'),
(68, 'ICE-4104', 'Cellular and Mobile Communication Sessional'),
(69, 'ICE-4105', 'Information Theory and Coding'),
(70, 'ICE-4106', 'Information Theory and Coding Sessional'),
(71, 'ICE-4107', 'Cryptography and Computer Security'),
(72, 'ICE-4108', 'Cryptography and Computer Security Sessional'),
(73, 'ICE-4109', 'Management of Information System'),
(74, 'ICE-4110', 'Viva-voce'),
(75, 'ICE-4201', 'Wireless Communication'),
(76, 'ICE-4202', 'Wireless Communication Sessional'),
(77, 'ICE-4203', 'System Analysis and Software Testing'),
(78, 'ICE-4204', 'System Analysis and Software Testing Sessional'),
(79, 'ICE-4205', 'Neural Networks'),
(80, 'ICE-4206', 'Neural Networks Sessional'),
(81, 'ICE-4214', 'Microwave and Fiber Optic Communication'),
(82, 'ICE-4215', 'Microwave and Fiber Optic \nCommunication Sessional'),
(83, 'ICE-4221', 'Radar and Satellite Communication'),
(84, 'ICE-4210', 'Thesis'),
(85, 'ICE-4211', 'Viva-voce');

-- --------------------------------------------------------

--
-- Table structure for table `ice-41012018-2019`
--

CREATE TABLE `ice-41012018-2019` (
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
  `11/11/2023` text DEFAULT 'A',
  `12/11/2023` text DEFAULT 'A',
  `14/11/2023` text DEFAULT 'A',
  `10/11/2023` text DEFAULT 'A',
  `15/11/2023` text DEFAULT 'A',
  `16/11/2023` text DEFAULT 'A',
  `17/11/2023` text DEFAULT 'A',
  `18/11/2023` text DEFAULT 'A',
  `19/11/2023` text DEFAULT 'A',
  `20/11/2023` text DEFAULT 'A',
  `21/11/2023` text DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ice-41012018-2019`
--

INSERT INTO `ice-41012018-2019` (`id`, `Roll`, `Name`, `CT1`, `CT2`, `CT3`, `Percentage`, `Mark`, `Best1`, `Best2`, `Total`, `11/11/2023`, `12/11/2023`, `14/11/2023`, `10/11/2023`, `15/11/2023`, `16/11/2023`, `17/11/2023`, `18/11/2023`, `19/11/2023`, `20/11/2023`, `21/11/2023`) VALUES
(1, 190601, 'MITU RANI KUNDU', 7, 6, 7, 67, 5, 7, 7, 19, 'A', 'A', 'P', 'P', 'P', 'P', 'P', 'A', 'P', 'A', 'P'),
(2, 190602, 'MD.ZAMIUL ISLAM', 6, 3, 9, 56, 0, 9, 6, 15, 'A', 'A', 'A', 'P', 'P', 'P', 'P', 'A', 'P', 'A', 'P'),
(3, 190603, 'MD. ATIKUR RAHMAN', 7, 8, 6, 44, 0, 8, 7, 15, 'A', 'A', 'P', 'A', 'P', 'A', 'P', 'A', 'P', 'A', 'P'),
(4, 190604, 'MD. ABDUL MATIN', 0, 0, 0, 33, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A', 'P', 'A', 'P', 'A', 'P'),
(5, 190605, 'MD. OMAR FARUK', 0, 0, 0, 44, 0, 0, 0, 0, 'A', 'A', 'P', 'A', 'P', 'P', 'P', 'A', 'A', 'A', 'P'),
(6, 190606, 'MD. SAGOR MIA', 0, 0, 0, 11, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A', 'A', 'A', 'A', 'A', 'P'),
(7, 190608, 'MD. MASUD RANA', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(8, 190609, 'MD. RAHATUL RABBI', 0, 0, 0, 11, 0, 0, 0, 0, 'A', 'A', 'P', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(9, 190610, 'MD. SHA ALAM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P', 'P'),
(10, 190611, 'MD. MEHEDI HASAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(11, 190613, 'MD. MAHFUZUR RAHMAN', 0, 0, 0, 22, 0, 0, 0, 0, 'A', 'A', 'P', 'A', 'P', 'A', 'A', 'A', 'A', 'A', 'P'),
(12, 190614, 'ROBIUL HOSSAIN RUBEL', 0, 0, 0, 11, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A', 'A', 'A', 'A', 'A', 'P'),
(13, 190615, 'MD. IMRAN HOSSAIN', 0, 0, 0, 11, 0, 0, 0, 0, 'A', 'A', 'P', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(14, 190616, 'MD. NAIM HOSSAIN', 0, 0, 0, 11, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'P', 'A', 'A', 'A', 'A', 'A', 'P'),
(15, 190617, 'SHAHANUR RAHMAN', 0, 0, 0, 22, 0, 0, 0, 0, 'A', 'A', 'P', 'A', 'P', 'A', 'A', 'A', 'A', 'A', 'P'),
(16, 190618, 'MD. MIZANUR RAHMAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(17, 190619, 'SAGOR SARDER', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(18, 190620, 'SUMAIYA KHATUN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(19, 190621, 'MD SHAHADAT HOSSAIN BHUIAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(20, 190622, 'MD IMRAN HOSSAIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(21, 190623, 'MD SAGOR MOLLAH', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(22, 190624, 'Z. H. M KHAIRUL BASAR', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(23, 190625, 'MD. SAK1B HASAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(24, 190626, 'MD RAKIBU ZZAMAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(25, 190627, 'ABDUL HALIM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(26, 190628, 'MD. RIFAT SARKAR', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(27, 190629, 'MONJURUL ALAM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(28, 190630, 'SAYMA SADIA', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(29, 190631, 'MD.SOHAG HOSSAIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(30, 190632, 'JANNATUL NAYEM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(31, 190633, 'MD.SHAHINUR', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(32, 190634, 'MD.MEHEDI HASAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(33, 190635, 'JOY SAHA', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(34, 190636, 'MD.SHARIF AHAMMED', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(35, 190637, 'FARIHA MAHZABIN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(36, 190638, 'SHOAIB AHMAD', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P'),
(37, 190639, 'MD.MAHFUZUR RAHMAN', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
(38, 190640, 'SHAHINUL ISLAM', 0, 0, 0, 0, 0, 0, 0, 0, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'P');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2018-2019`
--
ALTER TABLE `2018-2019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_code`
--
ALTER TABLE `course_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ice-41012018-2019`
--
ALTER TABLE `ice-41012018-2019`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2018-2019`
--
ALTER TABLE `2018-2019`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `course_code`
--
ALTER TABLE `course_code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ice-41012018-2019`
--
ALTER TABLE `ice-41012018-2019`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
