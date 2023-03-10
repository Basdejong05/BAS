-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2023 at 10:17 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

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
  `artOmschrijving` varchar(12) NOT NULL,
  `artInkoop` decimal(10,0) NOT NULL,
  `artVerkoop` decimal(10,0) NOT NULL,
  `artVoorraad` int(11) NOT NULL,
  `artMinVoorraad` int(11) NOT NULL,
  `artMaxVoorraad` int(11) NOT NULL,
  `artLocatie` int(11) NOT NULL,
  `artId` int(11) NOT NULL,
  `levld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `klantid` int(11) NOT NULL,
  `klantnaam` varchar(20) NOT NULL,
  `klantEmail` varchar(30) NOT NULL,
  `klantAdres` varchar(30) NOT NULL,
  `klantPostcode` varchar(6) NOT NULL,
  `klantWoonplaats` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leveranciers`
--

CREATE TABLE `leveranciers` (
  `levid` int(11) NOT NULL,
  `levnaam` varchar(15) NOT NULL,
  `levcontact` varchar(20) NOT NULL,
  `levEmail` varchar(30) NOT NULL,
  `levAdres` varchar(30) NOT NULL,
  `levPostcode` varchar(6) NOT NULL,
  `levWoonplaats` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `verkooporders`
--

CREATE TABLE `verkooporders` (
  `verkOrdId` int(11) NOT NULL,
  `klantId` int(11) NOT NULL,
  `artId` int(11) NOT NULL,
  `verkOrdDatum` date NOT NULL,
  `verkOrdBestAantal` int(11) NOT NULL,
  `verkOrdStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
