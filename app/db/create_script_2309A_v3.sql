-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 03 jun 2024 om 13:35
-- Serverversie: 8.0.32
-- PHP-versie: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvcframework-2309a`
--
CREATE DATABASE IF NOT EXISTS `mvcframework-2309a` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mvcframework-2309a`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Country`
--

DROP TABLE IF EXISTS `Country`;
CREATE TABLE IF NOT EXISTS `Country` (
  `Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) NOT NULL,
  `CapitalCity` varchar(250) NOT NULL,
  `Continent` varchar(250) NOT NULL,
  `Population` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Country`
--

INSERT INTO `Country` (`Id`, `Name`, `CapitalCity`, `Continent`, `Population`) VALUES
(2, 'Tanzania', 'Dodoma', 'Afrika', 63590000),
(4, 'Japan', 'Tokio', 'Azi&euml;', 125700000),
(5, 'Zwitserlandd', 'Bern', 'Europa', 8703000),
(6, 'Noorwegen', 'Oslo', 'Europa', 5550203),
(11, 'Litouwen', 'Vilnius', 'Europa', 340000000),
(15, 'Marokko', 'Rabat', 'Afrika', 37500000),
(16, 'Nepal', 'Kathmandu', 'Azi&euml;', 30000000),
(17, 'Chili', 'Santiago', 'Zuid-Amerika', 18276870),
(18, 'Japan', 'Tokio', 'Azi&euml;', 125700000);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Zangeres`
--

DROP TABLE IF EXISTS `Zangeres`;
CREATE TABLE IF NOT EXISTS `Zangeres` (
  `Id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(100) NOT NULL,
  `NettoWaarde` smallint NOT NULL,
  `Land` varchar(100) NOT NULL,
  `Mobiel` varchar(20) NOT NULL,
  `Leeftijd` tinyint NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Zangeres`
--

INSERT INTO `Zangeres` (`Id`, `Naam`, `NettoWaarde`, `Land`, `Mobiel`, `Leeftijd`) VALUES
(1, 'Rihanna', 1400, 'Barbados', '+1246240001862400', 36),
(2, 'Madonna', 575, 'Verenigde Staten', '+1 3425 185876', 65),
(3, 'Taylor', 570, 'Verenigde Staten', '+1 5876 236512', 34),
(4, 'Beyoncé', 420, 'Verenigde Staten', '+1 6794908465', 42),
(5, 'Jennifer Lopez', 400, 'Verenigde Staten', '+1 3131 857345', 54);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

