-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2023 at 03:21 PM
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
  `artikelId` int(11) NOT NULL,
  `artOmschrijving` varchar(12) NOT NULL,
  `artInkoop` decimal(3,2) DEFAULT NULL,
  `artVerkoop` decimal(3,2) DEFAULT NULL,
  `artVoorraad` int(11) NOT NULL,
  `artMinVoorraad` int(11) NOT NULL,
  `artMaxVoorraad` int(11) NOT NULL,
  `artLocatie` int(11) DEFAULT NULL,
  `levId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `klantId` int(11) NOT NULL,
  `klantnaam` varchar(20) DEFAULT NULL COMMENT 'voor- en achternaam klant',
  `klantEmail` varchar(30) NOT NULL COMMENT 'Emailadres van de klant',
  `klantAdres` varchar(30) NOT NULL COMMENT 'straat en huisnummer klant',
  `klantPostcode` varchar(6) DEFAULT NULL,
  `klantWoonplaats` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leveranciers`
--

CREATE TABLE `leveranciers` (
  `levId` int(11) NOT NULL,
  `levnaam` varchar(15) NOT NULL COMMENT 'bedrijfsnaam',
  `levcontact` varchar(20) DEFAULT NULL COMMENT 'Voor-en achternaam contactpersoon',
  `levEmail` varchar(30) NOT NULL COMMENT 'Emailadres van contactpersoon',
  `levAdres` varchar(30) DEFAULT NULL COMMENT 'straat en huisnummer leverancier',
  `levPostcode` varchar(6) NOT NULL,
  `levWoonplaats` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikelen`
--
ALTER TABLE `artikelen`
  ADD PRIMARY KEY (`artikelId`),
  ADD KEY `levId` (`levId`);

--
-- Indexes for table `klanten`
--
ALTER TABLE `klanten`
  ADD PRIMARY KEY (`klantId`);

--
-- Indexes for table `leveranciers`
--
ALTER TABLE `leveranciers`
  ADD PRIMARY KEY (`levId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikelen`
--
ALTER TABLE `artikelen`
  MODIFY `artikelId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klanten`
--
ALTER TABLE `klanten`
  MODIFY `klantId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leveranciers`
--
ALTER TABLE `leveranciers`
  MODIFY `levId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
