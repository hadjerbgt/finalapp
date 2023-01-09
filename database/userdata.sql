-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 06:42 AM
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
-- Database: `userdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `projectinfo`
--

CREATE TABLE `projectinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` varchar(5) NOT NULL,
  `firststudent` varchar(255) NOT NULL,
  `secondstudent` varchar(255) NOT NULL,
  `thirdstudent` varchar(255) NOT NULL,
  `supervisorname` varchar(255) NOT NULL,
  `supnote` varchar(10) NOT NULL,
  `presidentname` varchar(255) NOT NULL,
  `viprenote` varchar(10) NOT NULL,
  `examinatorname` varchar(255) NOT NULL,
  `exmnote` varchar(10) NOT NULL,
  `finalmark` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectinfo`
--

INSERT INTO `projectinfo` (`id`, `name`, `year`, `firststudent`, `secondstudent`, `thirdstudent`, `supervisorname`, `supnote`, `presidentname`, `viprenote`, `examinatorname`, `exmnote`, `finalmark`) VALUES
(15, 'iGT', '2022', 'Milb', 'Milb', 'Milb', '', '18', '', '18', '', '18', '16'),
(16, 'Goggl', '2002', 'milb', 'milb', 'milb', '', '18', '', '15', '', '19', '16'),
(17, 'AI', '2022', 'Milb', 'Kamel', 'ilyes', '', '14', '', '15', '', '12', '12'),
(18, 'Kola', '2022', 'Milb', 'Milb', 'Milb', '', '18', '', '18', '', '18', '16'),
(19, 'Dev', '2022', 'Milb', 'Milb', 'Milb', '', '18', '', '15', '', '14', '14'),
(20, 'Flutter', '2022', 'Milb', 'no second one', 'no second one', '', '10', '', '10', '', '10', '9'),
(21, '', '', '', '', '', '', '', '', '', ' ', '', ''),
(22, 'Flutter', '2022', 'Mlib', 'no second one', 'no second one', 'Milb', '20', 'Milb', '20', ' Milb', '20', '18'),
(23, 'Flutter ', '2022', 'Milb', 'no second one', 'no second one', 'Milb', '10', 'Milb', '10', ' Milb', '10', '9'),
(24, '', '', '', '', '', '', '', '', '', ' ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'milb', 'milb', 'Mohamed Ilyes Bennacer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projectinfo`
--
ALTER TABLE `projectinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projectinfo`
--
ALTER TABLE `projectinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
