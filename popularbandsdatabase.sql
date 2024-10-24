-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 07:42 PM
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
-- Database: `popular bands`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `AId` int(11) NOT NULL,
  `Genre` varchar(30) DEFAULT NULL,
  `ATitle` varchar(30) DEFAULT NULL,
  `ABId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`AId`, `Genre`, `ATitle`, `ABId`) VALUES
(5, 'Jazz', 'The Car', 3),
(7, 'Indie', 'AM', 3),
(8, 'Pop', 'Hadis El Layl', 2),
(9, 'Alternative Indie', 'Nour', 2),
(11, 'Rock', 'Chosen', 1),
(12, 'Alternative Rock', 'Rush', 1);

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE `band` (
  `BId` int(11) NOT NULL,
  `BName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `band`
--

INSERT INTO `band` (`BId`, `BName`) VALUES
(1, 'Maneskin'),
(2, 'Adonis'),
(3, 'Arctic Monkeys');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MName` varchar(30) NOT NULL,
  `MRole` varchar(30) DEFAULT NULL,
  `PNumber` int(11) DEFAULT NULL,
  `Instrument` varchar(30) DEFAULT NULL,
  `MBId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MName`, `MRole`, `PNumber`, `Instrument`, `MBId`) VALUES
('Alex', 'Lead Singer', 81322635, 'Microphone', 3),
('Anthony', 'Lead Singer', 76198462, 'Microphone', 2),
('bfb', 'xbxf', 34334, 'xcvx', 2),
('Damiano', 'Lead Singer', 71324735, 'Microphone', 1),
('georges', 'singer', 85879, 'micro', 2),
('ibtisam', 'drummer', 4534534, 'drums', 2),
('joee', 'drummer', 46454, 'drums', 2),
('Joey', 'Guitarist', 79324735, 'Guitar', 2),
('Matt', 'Drummer', 71324735, 'Drums', 3),
('mi3a', 'drummer', 3829942, 'ddd', 2),
('Mkhayyl', 'drummer', 434232, 'drums', 2),
('thery', 'pianist', 4453423, 'piano', 2),
('Victoria', 'Bassist', 81334535, 'Bass Guitar', 1),
('youbis', 'drummer', 808767, 'drums', 3);

-- --------------------------------------------------------

--
-- Table structure for table `play`
--

CREATE TABLE `play` (
  `PEmail` varchar(35) NOT NULL,
  `PPId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `play`
--

INSERT INTO `play` (`PEmail`, `PPId`) VALUES
('hamssa.hassrouny@gmail.com', 123),
('hamssa.hassrouny@gmail.com', 132),
('Natasha.777@hotmail.com', 123);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `PId` int(11) NOT NULL,
  `PName` varchar(30) DEFAULT NULL,
  `Tags` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`PId`, `PName`, `Tags`) VALUES
(123, 'Good Mood', '#happy'),
(132, 'Studying', '#Here_We_Go_Again');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `SId` int(11) NOT NULL,
  `STitle` varchar(30) DEFAULT NULL,
  `Duration` varchar(30) DEFAULT NULL,
  `SAId` int(11) DEFAULT NULL,
  `SPId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`SId`, `STitle`, `Duration`, `SAId`, `SPId`) VALUES
(1113, 'Arabella', '3:27', 7, 132),
(1234, 'MAMMAMIA', '3:32', 12, 123),
(1335, 'Beggin', '3:34', 11, 132),
(1446, 'Perfect sense', '2:48', 5, 132),
(1555, 'Bas Bi Hal', '3:45', 8, 123),
(1746, 'Eza Shi Nhar', '4:45', 9, 123);

-- --------------------------------------------------------

--
-- Table structure for table `userinf`
--

CREATE TABLE `userinf` (
  `Email` varchar(35) NOT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinf`
--

INSERT INTO `userinf` (`Email`, `Username`, `Country`, `Age`) VALUES
('hamssa.hassrouny@gmail.com', 'Hamssa', 'Lebanon', 25),
('joe.sarkis@hotmail.com', 'Joe', 'Lebanon', 20),
('marc.jackson.44@gmail.com', 'Marc', 'Canada', 21),
('Natasha.777@hotmail.com', 'Natasha', 'United States', 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`AId`),
  ADD KEY `Band_FK2` (`ABId`);

--
-- Indexes for table `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`BId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MName`),
  ADD KEY `Band_FK1` (`MBId`);

--
-- Indexes for table `play`
--
ALTER TABLE `play`
  ADD PRIMARY KEY (`PEmail`,`PPId`),
  ADD KEY `Playlist_FK6` (`PPId`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`PId`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`SId`),
  ADD KEY `Album_FK3` (`SAId`),
  ADD KEY `Playlist_FK4` (`SPId`);

--
-- Indexes for table `userinf`
--
ALTER TABLE `userinf`
  ADD PRIMARY KEY (`Email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `Band_FK2` FOREIGN KEY (`ABId`) REFERENCES `band` (`BId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `Band_FK1` FOREIGN KEY (`MBId`) REFERENCES `band` (`BId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `play`
--
ALTER TABLE `play`
  ADD CONSTRAINT `Playlist_FK6` FOREIGN KEY (`PPId`) REFERENCES `playlist` (`PId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserInf_FK5` FOREIGN KEY (`PEmail`) REFERENCES `userinf` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `Album_FK3` FOREIGN KEY (`SAId`) REFERENCES `album` (`AId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Playlist_FK4` FOREIGN KEY (`SPId`) REFERENCES `playlist` (`PId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
