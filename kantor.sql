-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Gru 2016, 11:44
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kantor`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imię` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nazwisko` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PESEL` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `stan` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='klienci';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kurs`
--

CREATE TABLE `kurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nazwa_waluty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kurs` decimal(5,4) NOT NULL,
  `data_kursu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='kurs';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wymiana`
--

CREATE TABLE `wymiana` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dataprog` date DEFAULT NULL,
  `godzina` time DEFAULT NULL,
  `klient_id` int(11) DEFAULT NULL,
  `kurs_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='wymiana';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `klient`
--
ALTER TABLE `klient`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `kurs`
--
ALTER TABLE `kurs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wymiana`
--
ALTER TABLE `wymiana`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `kurs`
--
ALTER TABLE `kurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wymiana`
--
ALTER TABLE `wymiana`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
