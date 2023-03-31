-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2023 at 08:18 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bas`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikelen`
--

CREATE TABLE `artikelen` (
  `artid` int(11) NOT NULL,
  `artomschrijving` varchar(12) NOT NULL,
  `artinkoop` decimal(3,2) DEFAULT NULL,
  `artverkoop` decimal(3,2) DEFAULT NULL,
  `artvooraad` int(11) NOT NULL,
  `artminvooraad` int(11) NOT NULL,
  `artmaxvooraad` int(11) NOT NULL,
  `artlocatie` int(11) DEFAULT NULL,
  `levid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artikelen`
--

INSERT INTO `artikelen` (`artid`, `artomschrijving`, `artinkoop`, `artverkoop`, `artvooraad`, `artminvooraad`, `artmaxvooraad`, `artlocatie`, `levid`) VALUES
(1, 'appel', '3.00', '2.00', 6, 2, 10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inkooporders`
--

CREATE TABLE `inkooporders` (
  `inkordid` int(11) NOT NULL,
  `levid` int(11) NOT NULL,
  `artid` int(11) NOT NULL,
  `inkorddatum` datetime DEFAULT NULL,
  `inkordbestaantal` int(11) DEFAULT NULL,
  `inkordstatus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inkooporders`
--

INSERT INTO `inkooporders` (`inkordid`, `levid`, `artid`, `inkorddatum`, `inkordbestaantal`, `inkordstatus`) VALUES
(1, 1, 1, '2023-03-07 13:33:51', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `klantid` int(11) NOT NULL,
  `klantnaam` varchar(20) DEFAULT NULL,
  `klantemail` varchar(30) NOT NULL,
  `klantadres` varchar(30) NOT NULL,
  `klantpostcode` varchar(6) DEFAULT NULL,
  `klantwoonplaats` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `klanten`
--

INSERT INTO `klanten` (`klantid`, `klantnaam`, `klantemail`, `klantadres`, `klantpostcode`, `klantwoonplaats`) VALUES
(1, 'shiano', 'shianowilliam@gmail.com', 'dsxfcgbhjk', '3036lt', 'rotterdam'),
(2, 'shain', 'shain@gmail.com', 'jajajajaja', '6969sx', 'rotterdam');

-- --------------------------------------------------------

--
-- Table structure for table `leveranciers`
--

CREATE TABLE `leveranciers` (
  `levid` int(11) NOT NULL,
  `levnaam` varchar(15) NOT NULL,
  `levcontact` varchar(20) DEFAULT NULL,
  `levemail` varchar(30) NOT NULL,
  `levnadres` varchar(30) DEFAULT NULL,
  `levpostcode` varchar(6) DEFAULT NULL,
  `levwoonplaats` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leveranciers`
--

INSERT INTO `leveranciers` (`levid`, `levnaam`, `levcontact`, `levemail`, `levnadres`, `levpostcode`, `levwoonplaats`) VALUES
(1, 'appel', 'mijn vader', 'niethier@gmail.com', 'weetniet', '0000gl', 'rotterdam');

-- --------------------------------------------------------

--
-- Table structure for table `medewerkers`
--

CREATE TABLE `medewerkers` (
  `mwid` int(11) NOT NULL,
  `mwnaam` varchar(30) DEFAULT NULL,
  `mwemail` varchar(40) DEFAULT NULL,
  `mwpassword` varchar(20) DEFAULT NULL,
  `mwstatus` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `verkooporders`
--

CREATE TABLE `verkooporders` (
  `verkorid` int(11) NOT NULL,
  `klantid` int(11) NOT NULL,
  `artid` int(11) NOT NULL,
  `verkorddatum` datetime DEFAULT NULL,
  `verkordbestaantal` int(11) DEFAULT NULL,
  `verkordstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikelen`
--
ALTER TABLE `artikelen`
  ADD PRIMARY KEY (`artid`),
  ADD KEY `levid` (`levid`);

--
-- Indexes for table `inkooporders`
--
ALTER TABLE `inkooporders`
  ADD PRIMARY KEY (`inkordid`),
  ADD KEY `levid` (`levid`),
  ADD KEY `artid` (`artid`);

--
-- Indexes for table `klanten`
--
ALTER TABLE `klanten`
  ADD PRIMARY KEY (`klantid`);

--
-- Indexes for table `leveranciers`
--
ALTER TABLE `leveranciers`
  ADD PRIMARY KEY (`levid`);

--
-- Indexes for table `medewerkers`
--
ALTER TABLE `medewerkers`
  ADD PRIMARY KEY (`mwid`);

--
-- Indexes for table `verkooporders`
--
ALTER TABLE `verkooporders`
  ADD PRIMARY KEY (`verkorid`),
  ADD KEY `klantid` (`klantid`),
  ADD KEY `artid` (`artid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikelen`
--
ALTER TABLE `artikelen`
  MODIFY `artid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inkooporders`
--
ALTER TABLE `inkooporders`
  MODIFY `inkordid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `klanten`
--
ALTER TABLE `klanten`
  MODIFY `klantid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leveranciers`
--
ALTER TABLE `leveranciers`
  MODIFY `levid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medewerkers`
--
ALTER TABLE `medewerkers`
  MODIFY `mwid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verkooporders`
--
ALTER TABLE `verkooporders`
  MODIFY `verkorid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikelen`
--
ALTER TABLE `artikelen`
  ADD CONSTRAINT `artikelen_ibfk_1` FOREIGN KEY (`levid`) REFERENCES `leveranciers` (`levid`);

--
-- Constraints for table `inkooporders`
--
ALTER TABLE `inkooporders`
  ADD CONSTRAINT `inkooporders_ibfk_1` FOREIGN KEY (`levid`) REFERENCES `leveranciers` (`levid`),
  ADD CONSTRAINT `inkooporders_ibfk_2` FOREIGN KEY (`artid`) REFERENCES `artikelen` (`artid`);

--
-- Constraints for table `verkooporders`
--
ALTER TABLE `verkooporders`
  ADD CONSTRAINT `verkooporders_ibfk_1` FOREIGN KEY (`klantid`) REFERENCES `klanten` (`klantid`),
  ADD CONSTRAINT `verkooporders_ibfk_2` FOREIGN KEY (`artid`) REFERENCES `artikelen` (`artid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
