-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 09 apr 2023 om 21:02
-- Serverversie: 5.7.24
-- PHP-versie: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bastest`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `medewerkers`
--

CREATE TABLE `medewerkers` (
  `mwid` int(11) NOT NULL,
  `mwNaam` varchar(30) NOT NULL,
  `mwEmail` varchar(40) NOT NULL,
  `mwPassword` varchar(20) NOT NULL,
  `mwStatus` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `medewerkers`
--

INSERT INTO `medewerkers` (`mwid`, `mwNaam`, `mwEmail`, `mwPassword`, `mwStatus`) VALUES
(1, 'bb', 'bb', 'bb', 'bb'),
(4, 'gordon', 'gorndon@email.com', '123456', 'actief'),
(5, 'gordon', 'gorndon@email.com', '123456', 'actief');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `medewerkers`
--
ALTER TABLE `medewerkers`
  ADD PRIMARY KEY (`mwid`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `medewerkers`
--
ALTER TABLE `medewerkers`
  MODIFY `mwid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
