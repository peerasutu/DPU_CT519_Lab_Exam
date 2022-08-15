-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2022 at 04:13 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `0002_lab_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `Hero_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Picture_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`Hero_id`, `Name`, `Detail`, `Picture_link`) VALUES
(1, 'Tony Jaa', 'Thai martial artist, actor, action choreographer,stuntman,director, and traceur', 'https://static.posttoday.com/media/content/2013/01/19/EDEA8B4B253C44F3A253F633B2C8E42E.jpg'),
(2, 'Jackie Chan', 'Hong Kong actor', 'https://www.tnnthailand.com/static/inline-images/news/6950655675ea013a892c27.png'),
(3, 'The Rock', 'an American actor, businessman, and former professional wrestler.', 'https://p.mgcdn.me/Ggkgd-WzgySN0AaKfJjhpqnuwgA=//097/005/000/20180821_112846_1534825726_5b7b94fe5c426.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `hero_in_movie`
--

CREATE TABLE `hero_in_movie` (
  `Hero_id` int(11) NOT NULL,
  `Movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hero_in_movie`
--

INSERT INTO `hero_in_movie` (`Hero_id`, `Movie_id`) VALUES
(1, 1),
(1, 4),
(2, 2),
(2, 5),
(3, 3),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Movie_id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Trailer_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Movie_id`, `Name`, `Trailer_link`) VALUES
(1, 'Ong-Bak: Muay Thai Warrior', 'https://youtu.be/XUGO1cRie7o'),
(2, 'The Fearless Hyena', 'https://youtu.be/B6asvY_trEE'),
(3, 'Black Adam (2022)', 'https://youtu.be/2yJnEA1Cvyc'),
(4, 'SPL II: A Time for Consequences', 'https://youtu.be/wuR4LEVJZBU'),
(5, 'Police Story', 'https://youtu.be/XparNpr6EDQ'),
(6, 'Jungle Cruise', 'https://youtu.be/f_HvoipFcA8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`Hero_id`);

--
-- Indexes for table `hero_in_movie`
--
ALTER TABLE `hero_in_movie`
  ADD PRIMARY KEY (`Hero_id`,`Movie_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Movie_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
