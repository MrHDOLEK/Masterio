-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 10 Sty 2020, 15:30
-- Wersja serwera: 10.1.26-MariaDB-0+deb9u1
-- Wersja PHP: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `masterio`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_alert`
--

CREATE TABLE `admin_alert` (
  `id` int(11) NOT NULL,
  `imie_i_nazwisko` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `tytul` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `email` text COLLATE utf8mb4_polish_ci NOT NULL,
  `data` date NOT NULL,
  `odczytano` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `admin_alert`
--

INSERT INTO `admin_alert` (`id`, `imie_i_nazwisko`, `tytul`, `opis`, `email`, `data`, `odczytano`) VALUES
(2, 'Aleksander Kowalski', 't', 't', 'mrhdolek14@gmail.com', '2020-01-07', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fc_events_table`
--

CREATE TABLE `fc_events_table` (
  `id` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `title` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `fc_events_table`
--

INSERT INTO `fc_events_table` (`id`, `start`, `end`, `title`) VALUES
(15, '2019-12-31 04:30:00', '2020-01-03 04:30:00', 'Lorem ipsum'),
(16, '2019-12-19 00:00:00', '2019-12-21 00:00:00', 'test'),
(17, '2020-01-08 00:00:00', '2020-01-09 00:00:00', 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `login_time`
--

CREATE TABLE `login_time` (
  `id` int(11) NOT NULL,
  `nick` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `datatime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `login_time`
--

INSERT INTO `login_time` (`id`, `nick`, `datatime`) VALUES
(1, 'admin', '2019-12-27 16:29:33'),
(2, 'admin', '2019-12-27 16:48:26'),
(3, 'admin', '2019-12-27 17:02:49'),
(4, 'admin', '2019-12-27 17:39:06'),
(5, 'admin', '2019-12-27 17:51:33'),
(6, 'admin', '2019-12-27 18:04:35'),
(8, 'admin', '2019-12-27 18:26:30'),
(9, 'admin', '2019-12-27 18:38:05'),
(10, 'admin', '2019-12-27 18:48:46'),
(11, 'admin', '2019-12-27 19:01:04'),
(12, 'admin', '2019-12-27 19:12:02'),
(13, 'admin', '2019-12-27 23:32:11'),
(14, 'admin', '2019-12-30 19:17:29'),
(15, 'admin', '2019-12-30 19:30:17'),
(16, 'admin', '2019-12-30 19:40:21'),
(17, 'admin', '2019-12-30 19:51:29'),
(18, 'admin', '2019-12-30 20:01:38'),
(19, 'test', '2019-12-30 20:07:54'),
(20, 'test', '2019-12-30 20:08:32'),
(21, 'admin', '2019-12-30 20:08:47'),
(22, 'test', '2019-12-30 20:11:07'),
(23, 'test', '2019-12-30 20:11:23'),
(24, 'admin', '2019-12-30 20:11:34'),
(25, 'admin', '2019-12-30 20:12:12'),
(26, 'test', '2019-12-30 20:12:28'),
(27, 'test', '2019-12-30 20:12:47'),
(28, 'test', '2019-12-30 20:13:41'),
(29, 'admin', '2019-12-30 20:14:03'),
(30, 'test', '2019-12-30 20:14:49'),
(31, 'admin', '2019-12-30 20:21:14'),
(32, 'admin', '2019-12-30 20:23:21'),
(33, 'admin', '2019-12-30 20:33:42'),
(34, 'admin', '2019-12-30 20:38:01'),
(35, 'admin', '2019-12-30 22:54:18'),
(36, 'admin', '2019-12-30 23:15:42'),
(37, 'admin', '2019-12-30 23:15:58'),
(38, 'admin', '2019-12-30 23:17:11'),
(39, 'admin', '2019-12-30 23:17:31'),
(40, 'admin', '2019-12-30 23:17:58'),
(41, 'admin', '2019-12-30 23:18:07'),
(42, 'admin', '2019-12-30 23:18:28'),
(43, 'admin', '2019-12-30 23:18:47'),
(44, 'admin', '2019-12-30 23:18:56'),
(45, 'admin', '2019-12-30 23:19:20'),
(46, 'admin', '2019-12-30 23:20:37'),
(47, 'admin', '2019-12-30 23:20:46'),
(48, 'admin', '2019-12-30 23:21:00'),
(49, 'admin', '2019-12-30 23:21:16'),
(50, 'admin', '2019-12-30 23:22:01'),
(51, 'admin', '2019-12-30 23:22:12'),
(52, 'admin', '2019-12-30 23:29:18'),
(53, 'admin', '2019-12-30 23:30:35'),
(54, 'admin', '2019-12-30 23:41:53'),
(55, 'admin', '2019-12-30 23:52:31'),
(56, 'admin', '2020-01-01 19:31:56'),
(57, 'admin', '2020-01-01 19:53:26'),
(58, 'admin', '2020-01-01 20:11:17'),
(59, 'admin', '2020-01-01 20:23:52'),
(60, 'admin', '2020-01-07 14:17:57'),
(61, 'admin', '2020-01-07 15:24:48'),
(62, 'admin', '2020-01-07 15:48:24'),
(63, 'admin', '2020-01-07 19:30:28'),
(64, 'admin', '2020-01-07 19:42:57'),
(65, 'admin', '2020-01-07 20:04:51'),
(66, 'admin', '2020-01-07 20:40:22'),
(67, 'admin', '2020-01-07 20:41:44'),
(68, 'admin', '2020-01-07 20:43:40'),
(69, 'admin', '2020-01-07 20:55:11'),
(70, 'admin', '2020-01-07 21:20:14'),
(71, 'admin', '2020-01-07 21:20:53'),
(72, 'admin', '2020-01-07 21:42:17'),
(73, 'admin', '2020-01-07 21:50:31'),
(74, 'admin', '2020-01-07 21:54:52'),
(75, 'admin', '2020-01-07 21:57:26'),
(76, 'test', '2020-01-07 21:59:25'),
(77, 'test', '2020-01-07 22:16:41'),
(78, 'admin', '2020-01-07 23:19:48'),
(79, 'test', '2020-01-07 23:22:23'),
(80, 'admin', '2020-01-08 09:25:15'),
(81, 'admin', '2020-01-09 14:59:46'),
(82, 'admin', '2020-01-09 15:24:21'),
(83, 'admin', '2020-01-10 12:41:41'),
(84, 'admin', '2020-01-10 13:02:21'),
(85, 'test', '2020-01-10 13:03:57'),
(86, 'admin', '2020-01-10 13:04:07'),
(87, 'test', '2020-01-10 13:17:22'),
(88, 'admin', '2020-01-10 13:22:39'),
(89, 'admin', '2020-01-10 14:03:26'),
(90, 'admin', '2020-01-10 14:23:51'),
(91, 'admin', '2020-01-10 15:20:46'),
(92, 'admin', '2020-01-10 15:41:16'),
(93, 'admin', '2020-01-10 16:01:37'),
(94, 'admin', '2020-01-10 16:22:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `masterio_ogloszenia`
--

CREATE TABLE `masterio_ogloszenia` (
  `id` int(11) NOT NULL,
  `tytul` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text COLLATE utf8mb4_polish_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `nadawca` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `temat` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text COLLATE utf8mb4_polish_ci,
  `odbiorca` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `odp` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `message`
--

INSERT INTO `message` (`id`, `nadawca`, `temat`, `tresc`, `odbiorca`, `datetime`, `odp`) VALUES
(31, 'admin', 'TEST', '<p>Treść wiadomości</p>', 'admin', '2019-12-27 15:06:58', 0),
(32, 'admin', 'TEST', '<p>Treść wiadomościT</p>', 'admin', '2019-12-27 15:07:05', 0),
(33, 'admin', '', 'tttt', 'admin', '2019-12-30 23:34:45', 1),
(34, 'admin', '0', 'test', 'admin', '2019-12-30 23:42:37', 1),
(35, 'admin', 'TEST', 'ttt', 'admin', '2019-12-30 23:42:56', 1),
(36, 'admin', 'Re:TEST', 'ttt', 'admin', '2019-12-30 23:43:53', 1),
(37, 'admin', 'Re:Re:TEST', 'ttt', 'admin', '2019-12-30 23:43:57', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `tytul` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text COLLATE utf8mb4_polish_ci NOT NULL,
  `autor` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `tytul`, `tresc`, `autor`, `data`) VALUES
(7, 'Lorem ipsum', '<p>Veniam ut incididunt id Lorem elit ea do pariatur nisi. Eu occaecat ipsum consequat laborum enim. Officia elit ad deserunt laboris adipisicing in velit consequat culpa labore est qui ex. Mollit elit duis minim commodo mollit qui et magna consectetur tempor.</p><div id=\"gtx-trans\" style=\"position: absolute; left: -41px; top: 38px;\"><div class=\"gtx-trans-icon\">&nbsp;</div></div>', 'admin', '2019-12-30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_date`
--

CREATE TABLE `project_date` (
  `id` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_team` int(11) NOT NULL,
  `tytul` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `s_ukoczenia` varchar(5) COLLATE utf8mb4_polish_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `project_date`
--

INSERT INTO `project_date` (`id`, `id_event`, `id_team`, `tytul`, `opis`, `s_ukoczenia`, `data`) VALUES
(6, 17, 1, '', '<p>Opisz zadania</p>', '0', '2020-02-02'),
(7, 17, 1, '', '<p>Opisz zadania</p>', '0', '2020-02-02'),
(12, 17, 1, '', '<p>Opisz zadania</p>', '1', '2020-01-26'),
(13, 17, 1, '', '<p>Opisz zadania</p>', '0', '2020-01-26'),
(14, 17, 1, 'test', '<p>Opisz zadania</p>', '0', '2020-01-26'),
(15, 15, 1, 'test', '<p>Opisz zadania</p>', '0', '2020-01-18'),
(16, 15, 1, 'test', '<p>Opisz zadania</p>', '0', '2020-01-18');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranga`
--

CREATE TABLE `ranga` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `ranga`
--

INSERT INTO `ranga` (`id`, `nazwa`, `opis`) VALUES
(1, 'admin', 'Ma dostęp do całej zawartości serwisu'),
(2, 'lider_zespołu', 'Oprócz standardowych uprawnień usera może dodawać ogłoszenia i zmieniać rzeczy w kalendarzu'),
(3, 'user', 'Ma podstawowe funkcje które pozwalają mu korzystać z serwisu ale bez edytowania go.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `team`
--

INSERT INTO `team` (`id`, `nazwa`, `opis`) VALUES
(1, 'Backend', 'Programiści którzy są odpowiedzialni za mechanizmy serwisów i ich bezpieczeństwo.'),
(2, 'Frontend', 'Programiści którzy są odpowiedzialni za wygląd projektów'),
(3, 'Fullstack', 'Programista który wykonuje zadania z obu grup');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_date`
--

CREATE TABLE `user_date` (
  `id` int(11) NOT NULL,
  `id_u` int(11) NOT NULL,
  `id_team` int(11) NOT NULL,
  `imie` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `user_date`
--

INSERT INTO `user_date` (`id`, `id_u`, `id_team`, `imie`, `nazwisko`, `opis`) VALUES
(1, 1, 3, 'Aleksander', 'Kowalski', 'Autor tego systemu'),
(16, 9, 3, 'Maciej', 'Mecki', 'cos tam');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `nick` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `random` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `logged` tinyint(1) NOT NULL DEFAULT '0',
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `user_login`
--

INSERT INTO `user_login` (`id`, `nick`, `pass`, `email`, `random`, `logged`, `data`) VALUES
(1, 'admin', 'admin', 'admin@admin.pl', '8haIaHVMYO', 1, '2019-10-20'),
(9, 'test', 'test', 'OLEK917@interia.eu', 'jBOsKLtYMW', 0, '2020-01-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_ranga`
--

CREATE TABLE `user_ranga` (
  `id` int(11) NOT NULL,
  `id_u` int(11) NOT NULL,
  `id_r` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `user_ranga`
--

INSERT INTO `user_ranga` (`id`, `id_u`, `id_r`) VALUES
(1, 1, 1),
(9, 9, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `admin_alert`
--
ALTER TABLE `admin_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_events_table`
--
ALTER TABLE `fc_events_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_time`
--
ALTER TABLE `login_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterio_ogloszenia`
--
ALTER TABLE `masterio_ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_date`
--
ALTER TABLE `project_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_team` (`id_team`);

--
-- Indexes for table `ranga`
--
ALTER TABLE `ranga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_date`
--
ALTER TABLE `user_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_u` (`id_u`),
  ADD KEY `id_team` (`id_team`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ranga`
--
ALTER TABLE `user_ranga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_u` (`id_u`),
  ADD KEY `id_r` (`id_r`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `admin_alert`
--
ALTER TABLE `admin_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `fc_events_table`
--
ALTER TABLE `fc_events_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT dla tabeli `login_time`
--
ALTER TABLE `login_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT dla tabeli `masterio_ogloszenia`
--
ALTER TABLE `masterio_ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `project_date`
--
ALTER TABLE `project_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT dla tabeli `ranga`
--
ALTER TABLE `ranga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `user_date`
--
ALTER TABLE `user_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT dla tabeli `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `user_ranga`
--
ALTER TABLE `user_ranga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `project_date`
--
ALTER TABLE `project_date`
  ADD CONSTRAINT `project_date_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `fc_events_table` (`id`),
  ADD CONSTRAINT `project_date_ibfk_2` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`);

--
-- Ograniczenia dla tabeli `user_date`
--
ALTER TABLE `user_date`
  ADD CONSTRAINT `user_date_ibfk_1` FOREIGN KEY (`id_u`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `user_date_ibfk_2` FOREIGN KEY (`id_team`) REFERENCES `team` (`id`);

--
-- Ograniczenia dla tabeli `user_ranga`
--
ALTER TABLE `user_ranga`
  ADD CONSTRAINT `user_ranga_ibfk_1` FOREIGN KEY (`id_u`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `user_ranga_ibfk_2` FOREIGN KEY (`id_r`) REFERENCES `ranga` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
