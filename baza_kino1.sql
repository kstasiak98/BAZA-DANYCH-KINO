-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Sty 2020, 18:29
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza_kino1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bilet`
--

CREATE TABLE `bilet` (
  `id` int(11) NOT NULL,
  `zamowienie_id` int(11) NOT NULL,
  `miejsce_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `bilet`
--

INSERT INTO `bilet` (`id`, `zamowienie_id`, `miejsce_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 20),
(5, 5, 5),
(6, 6, 20),
(7, 7, 21),
(8, 8, 22),
(9, 9, 23),
(10, 10, 24),
(11, 11, 33),
(12, 12, 1),
(13, 13, 20),
(14, 14, 21),
(15, 15, 5),
(16, 16, 6),
(17, 17, 13),
(18, 18, 14),
(19, 19, 2),
(20, 20, 3),
(21, 21, 4),
(22, 22, 33),
(23, 23, 34),
(24, 24, 28),
(25, 25, 13),
(26, 26, 5),
(27, 27, 20),
(28, 28, 21),
(29, 29, 40),
(30, 30, 43),
(31, 31, 28),
(32, 32, 29),
(33, 33, 18),
(34, 34, 19),
(55, 1, 8),
(56, 86, 6),
(58, 86, 7),
(59, 1, 22),
(60, 90, 22),
(61, 90, 22),
(62, 92, 8),
(63, 92, 22),
(64, 92, 8),
(65, 96, 6),
(66, 96, 13),
(72, 1, 15),
(73, 1, 16),
(74, 1, 15),
(75, 1, 16),
(76, 102, 6),
(77, 102, 6),
(78, 102, 6),
(79, 1, 15),
(80, 112, 22),
(81, 113, 31),
(82, 114, 32),
(83, 116, 22),
(84, 117, 22),
(85, 118, 23),
(86, 119, 24),
(87, 120, 22),
(88, 1, 30),
(89, 1, 14),
(90, 127, 14),
(91, 1, 14),
(92, 131, 14),
(93, 1, 14),
(94, 135, 14),
(95, 1, 14),
(96, 1, 14),
(97, 1, 22),
(98, 1, 22),
(99, 1, 22);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `bilety`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `bilety` (
`id` int(11)
,`miejsce` varchar(6)
,`film_id` int(11)
,`sala_id` int(11)
,`data1` date
,`godz` time
,`klient_id` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `tytul` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `metraz_min` smallint(6) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `opis` varchar(300) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id`, `tytul`, `metraz_min`, `rating`, `opis`) VALUES
(1, 'Lighthouse', 130, 9, 'Historia dwóch strażników latarni morskiej, którzy w obliczu samotności powoli tracą zdrowie psychiczne, a wkrótce zaczynają im zagrażać ich własne najgorsze koszmary.\nRobert Eggers, wizjonerski reżyser arcydzielnego horroru The Witch, powraca z hipnotyzującą, halucynującą opowieścią o dwóch latarni'),
(2, 'Irlandczyk', 225, 10, 'Płatny zabójca Frank Sheeran powraca do sekretów, których strzegł jako lojalny członek rodziny przestępczej Bufalino.\n Irlandczyk to osadzona w powojennej Ameryce epicka opowieść widziana oczami weterana II wojny światowej Franka Sheerana, oszusta i płatnego mordercy pracującego dla najbardziej osła'),
(3, 'Kraina lodu II', 120, 8, 'Akcja kontynuacji filmu jest osadzona trzy lata po wydarzeniach z pierwszej części. W Arendelle panuje ład pod panowaniem Elsy, jednak królowa zaczyna słyszeć dziwny głos, który nawołuje ją z północy. Wraz z Anną, Kristoffem i Olafem postanawiają wyruszyć w drogę, aby poznać prawdę o tym, co przywoł'),
(4, 'Doktor Sen', 110, 7, 'Minęło wiele lat od czasu wydarzeń, które rozegrały się w \"Lśnieniu\". Dorosły już Dan Torrence (Ewan McGregor) spotyka dziewczynkę, która przejawia podobne do niego zdolności. Stara się ją chronić przed kultem o nazwie Prawdziwy Węzeł, którego członkowie polują na dzieci obdarzone mocami, aby zachow'),
(5, 'Nadzwyczajni', 225, 10, 'Bruno (Vincent Cassel) i Malik (Reda Kateb) są najlepszymi kumplami. Na pierwszy rzut oka wszystko ich dzieli – temperament, zainteresowania, a nawet religia. Łączy natomiast gorąca przyjaźń oraz fakt, że od dwudziestu lat czynnie działają na rzecz autystycznych dzieci i młodzieży. W prowadzonych pr');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `imie` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `punkty` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `imie`, `nazwisko`, `login`, `email`, `haslo`, `punkty`) VALUES
(1, 'Kamil', 'Nowy', 'Kocio123', 'kamis@wp.pl', 'utala99@!', 5),
(2, 'Joseph', 'Akinoto', 'joso_hs35', 'joseph3@yahoo.com', 'kalend^%20b', 0),
(3, 'Ewa', 'Maryna', 'baella', 'bmw@interia.pl', 'gutek&^!', 3),
(4, 'Marcin', 'Pietruszkiewicz', 'kontraktor', 'tiktok@wp.pl', 'po05ab@@3', 0),
(5, 'Tomasz', 'Kuczek', 'klabadiena', 'chrzan@hotmail.com', 'xrzyzyw133', 0),
(6, 'Tadeusz', 'Norek', 'pasiutisvaikas', 'anetakotleta@obiad.com', '12345677', 1),
(7, 'Claudia', 'Sbriglio', 'kvieslys', 'mozzart33@gmail.com', 'nivylt145', 1),
(8, 'Olaf', 'Meister', 'general12', 'xoxlik68@gmail.com', 'poreba3315', 3),
(9, 'Maciek', 'Nowy', 'kucek', 'kord2@gmail.com', 'niew88eu', 0),
(10, 'Claudia', 'Sbriglio', 'baullea', 'katulismano@gmail.com', 'red_lips&white_shirt', 7),
(11, 'Darek', 'Kurtyniuk', 'olofmeister', 'Kurdar@gmail.com', 'niew88eu', 0),
(12, 'Jan', 'Dobry', 'kaszomix', 'janex@gmail.com', 'wokz241al$', 7),
(13, 'Augustyn', 'Chrobry', 'napoleon99', 'igi1992@gmail.com', 'sentimeti!@#2', 3),
(14, 'Igor', 'Romanov', 'mr.smith29', 'petersburg90@gmail.com', 'sbriggglo1', 2),
(15, 'Michał', 'Kupczyk', 'sprzedawczyk', 'paczito12@gmail.com', 'owieczkadaw', 0),
(16, 'NowyKlient', 'NowyKlient', 'max', 'max@wp.lp', '1234', 0),
(17, 'NowyKlient', 'NowyKlient', 'adrian', 'adrian1@wp.pl', '12345', 0),
(18, 'NowyKlient', 'NowyKlient', 'adrian', 'ad@wp.pl', '1234', 0);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `klient_v`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `klient_v` (
`id` int(11)
,`imie` varchar(45)
,`nazwisko` varchar(45)
,`login` varchar(45)
,`email` varchar(70)
,`bilet_id` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejsca`
--

CREATE TABLE `miejsca` (
  `id` int(11) NOT NULL,
  `rzad` varchar(1) COLLATE utf8_polish_ci NOT NULL,
  `numer` tinyint(4) NOT NULL,
  `sala_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `miejsca`
--

INSERT INTO `miejsca` (`id`, `rzad`, `numer`, `sala_id`) VALUES
(1, 'A', 1, 1),
(2, 'A', 2, 1),
(3, 'A', 3, 1),
(4, 'A', 4, 1),
(5, 'A', 5, 1),
(6, 'A', 6, 1),
(7, 'A', 7, 1),
(8, 'A', 8, 1),
(9, 'B', 1, 1),
(10, 'B', 2, 1),
(11, 'B', 3, 1),
(12, 'B', 4, 1),
(13, 'B', 5, 1),
(14, 'B', 6, 1),
(15, 'B', 7, 1),
(16, 'B', 8, 1),
(17, 'C', 1, 1),
(18, 'C', 2, 1),
(19, 'C', 3, 1),
(20, 'C', 4, 1),
(21, 'C', 5, 1),
(22, 'C', 6, 1),
(23, 'C', 7, 1),
(24, 'C', 8, 1),
(25, 'D', 1, 1),
(26, 'D', 2, 1),
(27, 'D', 3, 1),
(28, 'D', 4, 1),
(29, 'D', 5, 1),
(30, 'D', 6, 1),
(31, 'D', 7, 1),
(32, 'D', 8, 1),
(33, 'E', 1, 1),
(34, 'E', 2, 1),
(35, 'E', 3, 1),
(36, 'E', 4, 1),
(37, 'E', 5, 1),
(38, 'E', 6, 1),
(39, 'E', 7, 1),
(40, 'E', 8, 1),
(41, 'F', 1, 1),
(42, 'F', 2, 1),
(43, 'F', 3, 1),
(44, 'F', 4, 1),
(45, 'F', 5, 1),
(46, 'F', 6, 1),
(47, 'F', 7, 1),
(48, 'F', 8, 1),
(49, 'G', 1, 1),
(50, 'G', 2, 1),
(51, 'G', 3, 1),
(52, 'G', 4, 1),
(53, 'G', 5, 1),
(54, 'G', 6, 1),
(55, 'G', 7, 1),
(56, 'G', 8, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nagrody`
--

CREATE TABLE `nagrody` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `potrz_punkty` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nagrody`
--

INSERT INTO `nagrody` (`id`, `nazwa`, `potrz_punkty`) VALUES
(1, 'bilet', 30),
(2, 'karnet_tyg', 100),
(3, 'okulary_3d', 40),
(4, 'pluszowy_miś', 200),
(5, '2x_bilety', 55);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `cena` tinyint(4) NOT NULL,
  `punktacja` smallint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `nazwa`, `cena`, `punktacja`) VALUES
(1, 'napój', 5, 1),
(2, 'napój+popcorn', 12, 5),
(3, 'nachos', 8, 2),
(4, 'napój+nachos', 15, 7),
(5, 'king_zestaw', 20, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `liczba_miejsc` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `sale`
--

INSERT INTO `sale` (`id`, `nazwa`, `liczba_miejsc`) VALUES
(1, 'Orchid', 56);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `seanse`
--

CREATE TABLE `seanse` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `sala_id` int(11) NOT NULL,
  `data1` date NOT NULL,
  `godz` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `seanse`
--

INSERT INTO `seanse` (`id`, `film_id`, `sala_id`, `data1`, `godz`) VALUES
(1, 1, 1, '2020-01-30', '15:00:00'),
(2, 2, 1, '2020-01-30', '20:00:00'),
(3, 1, 1, '2020-02-01', '13:00:00'),
(4, 2, 1, '2020-02-01', '17:00:00'),
(5, 3, 1, '2020-02-02', '15:00:00'),
(6, 4, 1, '2020-02-05', '10:00:00'),
(7, 4, 1, '2020-02-05', '15:00:00'),
(8, 5, 1, '2020-02-05', '20:00:00'),
(9, 1, 1, '2020-02-06', '15:00:00'),
(10, 2, 1, '2020-02-06', '20:00:00'),
(11, 4, 1, '2020-02-10', '15:00:00'),
(12, 5, 1, '2020-02-10', '20:00:00'),
(13, 3, 1, '2020-02-13', '13:00:00'),
(14, 4, 1, '2020-02-13', '19:00:00'),
(15, 3, 1, '2020-02-15', '12:00:00'),
(16, 5, 1, '2020-02-15', '20:00:00'),
(17, 3, 1, '2020-02-16', '15:00:00'),
(18, 4, 1, '2020-02-16', '20:00:00');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `zaj_miejsca`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `zaj_miejsca` (
`data1` date
,`godz` time
,`film_id` int(11)
,`miejsce_id` int(11)
,`seans_id` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `wartosc_zam` int(11) NOT NULL DEFAULT 0,
  `seans_id` int(11) NOT NULL,
  `klient_id` int(11) NOT NULL,
  `produkt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `wartosc_zam`, `seans_id`, `klient_id`, `produkt_id`) VALUES
(1, 0, 1, 4, 1),
(2, 0, 1, 1, 2),
(3, 0, 1, 1, 3),
(4, 0, 1, 7, 1),
(5, 0, 2, 2, 1),
(6, 0, 2, 1, 1),
(7, 0, 2, 2, 2),
(8, 0, 2, 3, 4),
(9, 0, 2, 4, 2),
(10, 0, 2, 5, 1),
(11, 0, 2, 6, 2),
(12, 0, 2, 7, 3),
(13, 0, 4, 7, 2),
(14, 0, 4, 1, 1),
(15, 0, 4, 8, 1),
(16, 0, 4, 5, 1),
(17, 0, 5, 7, 3),
(18, 0, 5, 3, 1),
(19, 0, 11, 3, 1),
(20, 0, 11, 2, 1),
(21, 0, 11, 7, 1),
(22, 0, 11, 5, 1),
(23, 0, 11, 1, 1),
(24, 0, 12, 3, 3),
(25, 0, 12, 7, 1),
(26, 0, 12, 8, 2),
(27, 0, 13, 1, 1),
(28, 0, 13, 5, 1),
(29, 0, 13, 7, 2),
(30, 0, 13, 9, 2),
(31, 0, 13, 14, 2),
(32, 0, 13, 13, 2),
(33, 0, 13, 4, 2),
(34, 0, 13, 3, 2),
(61, 0, 1, 2, 2),
(78, 0, 3, 2, 1),
(79, 0, 4, 5, 1),
(80, 0, 4, 5, 1),
(81, 0, 17, 5, 1),
(86, 0, 3, 5, 1),
(87, 0, 1, 5, 1),
(88, 0, 3, 5, 1),
(90, 0, 3, 16, 1),
(92, 0, 3, 16, 1),
(96, 0, 10, 16, 1),
(102, 0, 3, 16, 1),
(112, 0, 9, 17, 1),
(113, 0, 4, 16, 1),
(114, 0, 4, 16, 1),
(115, 0, 1, 16, 1),
(116, 0, 3, 16, 1),
(117, 0, 16, 16, 1),
(118, 0, 12, 16, 1),
(119, 0, 9, 17, 1),
(120, 0, 12, 17, 1),
(127, 0, 12, 16, 1),
(131, 0, 3, 16, 1),
(135, 0, 3, 16, 1);

-- --------------------------------------------------------

--
-- Struktura widoku `bilety`
--
DROP TABLE IF EXISTS `bilety`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bilety`  AS  select `k`.`id` AS `id`,concat(`m`.`rzad`,'-',`m`.`numer`) AS `miejsce`,`s`.`film_id` AS `film_id`,`s`.`sala_id` AS `sala_id`,`s`.`data1` AS `data1`,`s`.`godz` AS `godz`,`z`.`klient_id` AS `klient_id` from (((`seanse` `s` join `zamowienia` `z` on(`s`.`id` = `z`.`seans_id`)) join `bilet` `k` on(`k`.`zamowienie_id` = `z`.`id`)) join `miejsca` `m` on(`k`.`miejsce_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `klient_v`
--
DROP TABLE IF EXISTS `klient_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `klient_v`  AS  select `k`.`id` AS `id`,`k`.`imie` AS `imie`,`k`.`nazwisko` AS `nazwisko`,`k`.`login` AS `login`,`k`.`email` AS `email`,`b`.`id` AS `bilet_id` from (`klienci` `k` join `bilety` `b` on(`k`.`id` = `b`.`klient_id`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `zaj_miejsca`
--
DROP TABLE IF EXISTS `zaj_miejsca`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zaj_miejsca`  AS  select `s`.`data1` AS `data1`,`s`.`godz` AS `godz`,`s`.`film_id` AS `film_id`,`b`.`miejsce_id` AS `miejsce_id`,`z`.`seans_id` AS `seans_id` from ((`seanse` `s` join `zamowienia` `z` on(`s`.`id` = `z`.`seans_id`)) join `bilet` `b` on(`b`.`zamowienie_id` = `z`.`id`)) ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bilet`
--
ALTER TABLE `bilet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zamowienie_id` (`zamowienie_id`),
  ADD KEY `miejsce_id` (`miejsce_id`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tytul` (`tytul`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `miejsca`
--
ALTER TABLE `miejsca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sala_id` (`sala_id`);

--
-- Indeksy dla tabeli `nagrody`
--
ALTER TABLE `nagrody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `seanse`
--
ALTER TABLE `seanse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `sala_id` (`sala_id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seans_id` (`seans_id`),
  ADD KEY `klient_id` (`klient_id`),
  ADD KEY `produkt_id` (`produkt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `bilet`
--
ALTER TABLE `bilet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `miejsca`
--
ALTER TABLE `miejsca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `nagrody`
--
ALTER TABLE `nagrody`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `seanse`
--
ALTER TABLE `seanse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `bilet`
--
ALTER TABLE `bilet`
  ADD CONSTRAINT `bilet_ibfk_1` FOREIGN KEY (`zamowienie_id`) REFERENCES `zamowienia` (`id`),
  ADD CONSTRAINT `bilet_ibfk_2` FOREIGN KEY (`miejsce_id`) REFERENCES `miejsca` (`id`);

--
-- Ograniczenia dla tabeli `miejsca`
--
ALTER TABLE `miejsca`
  ADD CONSTRAINT `miejsca_ibfk_1` FOREIGN KEY (`sala_id`) REFERENCES `sale` (`id`);

--
-- Ograniczenia dla tabeli `seanse`
--
ALTER TABLE `seanse`
  ADD CONSTRAINT `seanse_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmy` (`id`),
  ADD CONSTRAINT `seanse_ibfk_2` FOREIGN KEY (`sala_id`) REFERENCES `sale` (`id`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`seans_id`) REFERENCES `seanse` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`klient_id`) REFERENCES `klienci` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_3` FOREIGN KEY (`produkt_id`) REFERENCES `produkty` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
