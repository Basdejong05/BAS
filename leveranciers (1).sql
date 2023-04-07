-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 07 apr 2023 om 18:32
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
-- Tabelstructuur voor tabel `leveranciers`
--

CREATE TABLE `leveranciers` (
  `levid` int(11) NOT NULL,
  `levnaam` varchar(15) NOT NULL,
  `levcontact` varchar(20) DEFAULT NULL,
  `levEmail` varchar(30) NOT NULL,
  `levAdres` varchar(30) DEFAULT NULL,
  `levPostcode` varchar(6) DEFAULT NULL,
  `levWoonplaats` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `leveranciers`
--

INSERT INTO `leveranciers` (`levid`, `levnaam`, `levcontact`, `levEmail`, `levAdres`, `levPostcode`, `levWoonplaats`) VALUES
(1, 'henk1   ', 'henk    ', 'henk   ', 'henk  ', 'henk  ', 'henk '),
(3, 'peter  ', '0911111 ', 'peter@gmail.com ', 'koningstraat', '2922OP', 'rotterdam  '),
(4, 'elong MUSK', '1', '1', '1', '1', '1'),
(5, 'elong MUSK', 'elonmusk@gmail.com', '2000OP', 'wokstraar', '091111', 'rotterdam'),
(10, 'peterjan', '0180555', 'peterjan@gmail.com', 'koningstraat', '3132XD', 'rotterdam'),
(14, 'gordon', '0615151', 'a@mail ', 'gordon ', '23 ', 'urk '),
(15, 'gordon', '0615177621', 'gordon@gmail.com', 'krimpen', '2922OP', 'boogaard');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `leveranciers`
--
ALTER TABLE `leveranciers`
  ADD PRIMARY KEY (`levid`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `leveranciers`
--
ALTER TABLE `leveranciers`
  MODIFY `levid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
