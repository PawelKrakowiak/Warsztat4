-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 28 Maj 2017, 22:05
-- Wersja serwera: 5.7.18-0ubuntu0.16.04.1
-- Wersja PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `Warsztat4`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Admins`
--

CREATE TABLE `Admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Clients`
--

CREATE TABLE `Clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Images`
--

CREATE TABLE `Images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `src` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `Images`
--

INSERT INTO `Images` (`id`, `product_id`, `src`) VALUES
(13, 39, '/../../Warsztat4/src/Image/img/839366_2-1024x1024.jpg'),
(14, 39, '/../../Warsztat4/src/Image/img/839366_3-1024x1024.jpg'),
(15, 39, '/../../Warsztat4/src/Image/img/839366_4-1024x1024.jpg'),
(16, 39, '/../../Warsztat4/src/Image/img/839366_6-1024x1024.jpg'),
(17, 39, '/../../Warsztat4/src/Image/img/839366_7-1024x1024.jpg'),
(18, 39, '/../../Warsztat4/src/Image/img/839366-1024x1024.jpg'),
(19, 40, '/../../Warsztat4/src/Image/img/839350_1-1024x1024.jpg'),
(20, 40, '/../../Warsztat4/src/Image/img/839350_2-1024x1024.jpg'),
(21, 40, '/../../Warsztat4/src/Image/img/839350_5-1024x1024.jpg'),
(22, 40, '/../../Warsztat4/src/Image/img/839350_6-1024x1024.jpg'),
(23, 40, '/../../Warsztat4/src/Image/img/839350_7-1024x1024.jpg'),
(24, 40, '/../../Warsztat4/src/Image/img/839350-1024x1024.jpg'),
(25, 41, '/../../Warsztat4/src/Image/img/839342_2-1024x1024.jpg'),
(26, 41, '/../../Warsztat4/src/Image/img/839342_3-1024x1024.jpg'),
(27, 41, '/../../Warsztat4/src/Image/img/839342_4-1024x1024.jpg'),
(28, 41, '/../../Warsztat4/src/Image/img/839342_6-1024x1024.jpg'),
(29, 41, '/../../Warsztat4/src/Image/img/839342_7-1024x1024.jpg'),
(30, 41, '/../../Warsztat4/src/Image/img/839342-1024x1024.png'),
(31, 42, '/../../Warsztat4/src/Image/img/839376_2-1024x1024.jpg'),
(32, 42, '/../../Warsztat4/src/Image/img/839376_3-1024x1024.jpg'),
(33, 42, '/../../Warsztat4/src/Image/img/839376_4-1024x1024.jpg'),
(34, 42, '/../../Warsztat4/src/Image/img/839376_5-1024x1024.jpg'),
(35, 42, '/../../Warsztat4/src/Image/img/839376_6-1024x1024.jpg'),
(36, 42, '/../../Warsztat4/src/Image/img/839376_7-1024x1024.jpg'),
(37, 42, '/../../Warsztat4/src/Image/img/839376-1024x1024.jpg'),
(38, 43, '/../../Warsztat4/src/Image/img/839403_2-1024x1024.jpg'),
(39, 43, '/../../Warsztat4/src/Image/img/839403_3-1024x1024.jpg'),
(40, 43, '/../../Warsztat4/src/Image/img/839403_4-1024x1024.jpg'),
(41, 43, '/../../Warsztat4/src/Image/img/839403_5-1024x1024.jpg'),
(42, 43, '/../../Warsztat4/src/Image/img/839403_6-1024x1024.jpg'),
(43, 43, '/../../Warsztat4/src/Image/img/839403_7-1024x1024.jpg'),
(44, 43, '/../../Warsztat4/src/Image/img/839403-1024x1024.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `short_description` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `long_description` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `Products`
--

INSERT INTO `Products` (`id`, `name`, `amount`, `price`, `short_description`, `long_description`) VALUES
(4, 'testowy produkt4', 1000, '100000.00', 'kup go!', ''),
(39, 'ROLKI MÄ˜SKIE SPOKEY GARA 2.0', 100, '300.00', 'Poznaj z nami wciÄ…gajÄ…cy Å›wiat skatingu!', 'Parametry\r\npÅ‚oza: aluminiowa\r\nÅ‚oÅ¼yska: ABEC7 Carbon\r\nkÃ³Å‚ka: 80 mm 82A PU\r\nwkÅ‚adka: profilowana\r\nzapiÄ™cia: klamra dwusekcyjna z zabezpieczeniem, rzep, sznurÃ³wki\r\nmax. waga uÅ¼ytkownika: 100 kg\r\nrozmiary: 38-47'),
(40, 'ROLKI DAMSKIE SPOKEY ELENE', 100, '350.00', 'Najlepsze dla dziewczyn!', 'KorzyÅ›ci z jazdy na rolkach fitnessowych/rekreacyjnych\r\nJazda na rolkach fitnessowych nie tylko korzystnie wpÅ‚ywa na kondycjÄ™, pozwala rÃ³wnieÅ¼ korzystaÄ‡ z bezpoÅ›redniego kontaktu z naturÄ…. Rolki sÄ… letnim odpowiednikiem Å‚yÅ¼ew (w okresie od wiosny do jesieni trenujÄ… na nich zarÃ³wno hokeiÅ›ci, jak i Å‚yÅ¼wiarze), dlatego tak postawa ciaÅ‚a, jak i ruchy sÄ… bardzo podobne do tych przybieranych podczas jazdy na lodzie. Intensywnie pracujÄ… miÄ™Å›nie nÃ³g i biodra, angaÅ¼owane sÄ… miÄ™Å›nie plecÃ³w i rÄ…k.\r\n\r\nJazda fitnessowa jest korzystna zarÃ³wno dla osÃ³b, ktÃ³re rozpoczynajÄ… swojÄ… przygodÄ™ z rolkami, jak i jako uzupeÅ‚nienie treningÃ³w sportowcÃ³w wyczynowych.  \r\nParametry\r\npÅ‚oza: aluminiowa\r\nÅ‚oÅ¼yska: ABEC7 Chrom\r\nkÃ³Å‚ka: 82A PU, 80 mm - rozm. 36-37; 84 mm - rozm. 38-42\r\nwkÅ‚adka: profilowana\r\nzapiÄ™cia: klamra dwusekcyjna, rzep, sznurÃ³wki\r\nmax. waga uÅ¼ytkownika: 100 kg\r\nrozmiary: 36-42\r\ndodatkowa para sznurÃ³wek gratis!'),
(41, 'ROLKI MÄ˜SKIE SPOKEY XTREC', 200, '356.00', 'Najlepsze rolki Spokey!', 'Przed naszym sprzÄ™tem stawiamy wysokie wymagania, dlatego dokÅ‚adamy wszelkich staraÅ„ by do jego wykonania wykorzystywane byÅ‚y materiaÅ‚y najwyÅ¼szej jakoÅ›ci.\r\n\r\nWiemy, Å¼e dobrze jest siÄ™ wyrÃ³Å¼niaÄ‡, dlatego szczegÃ³lnÄ… wagÄ™ przykÅ‚adamy do oryginalnego, dopracowanego designu. Rolki Spokey przygotowywane sÄ… zgodnie z najnowszymi trendami, w najmodniejszych wersjach kolorystycznych.pÅ‚oza: aluminiowa\r\nÅ‚oÅ¼yska: ABEC9 Chrome\r\nkÃ³Å‚ka: 84 mm 82A PU\r\nwkÅ‚adka: profilowana\r\nzapiÄ™cia: klamra dwusekcyjna, rzep, sznurÃ³wki\r\nmax. waga uÅ¼ytkownika: 100 kg\r\nrozmiary: 37-42 (z elementami Å¼Ã³Å‚tymi), 40-46 (czarne)\r\ndodatkowa para sznurÃ³wek gratis'),
(42, 'SPOKEY SPOOX', 300, '220.00', 'Rolki regulowane', 'alety rolek regulowanych\r\nChcesz zaszczepiÄ‡ w dziecku pasjÄ™ do sportu? A moÅ¼e nosisz rozmiar â€žna granicyâ€? DziÄ™ki rolkom regulowanym nie musisz siÄ™ obawiaÄ‡ â€“ moÅ¼liwoÅ›Ä‡ regulacji rozmiaru pozwala na optymalne dobranie go do swoich potrzeb. Co lepsze â€“ rolki rosnÄ… wraz z dzieckiem, a ty nie musisz co kilka miesiÄ™cy kupowaÄ‡ nowej pary!Parametry\r\npÅ‚oza: aluminiowa\r\nÅ‚oÅ¼yska: ABEC7 Carbon\r\nkÃ³Å‚ka: PU 82A; 76 mm - rozm. 36-39; 80 mm - rozm. 40-43\r\nzapiÄ™cia: klamra dwusekcyjna z zabezpieczeniem, rzep, sznurÃ³wki\r\nmax. waga uÅ¼ytkownika: 100 kg\r\nrozmiar regulowany w zakresie: 36-39 lub 40-43\r\ndodatkowa para sznurÃ³wek gratis'),
(43, ' SPOKEY TURIS', 40, '260.00', 'Bajecznie kolorowe regulowane rolki', 'W rolkach Turis istnieje moÅ¼liwoÅ›Ä‡ wyboru rozmiaru buta. DziÄ™ki szybkiej i bezproblemowej regulacji, dziaÅ‚anie to zajmuje kilka sekund, a pozwala na optymalne dopasowanie buta do stopy. To doskonaÅ‚e rozwiÄ…zanie zarÃ³wno dla osÃ³b, ktÃ³rym zmienia siÄ™ rozmiar stopy (dzieci), jak i tych, ktÃ³re noszÄ… rozmiar â€žna granicyâ€ (np. 36/37).\r\n\r\nKÃ³Å‚ka wykonane zostaÅ‚y z wytrzymaÅ‚ego PU o twardoÅ›ci 82A, optymalnej do jazdy rekreacyjnej. ÅoÅ¼yska ABEC5 Carbon zapewniajÄ… dobrÄ… precyzjÄ™ wykonania, odpowiedniÄ… Å¼ywotnoÅ›Ä‡ oraz umiarkowanÄ… szybkoÅ›Ä‡ jazdy.\r\n\r\nPotrÃ³jny system zapinania: sznurÃ³wki, rzep oraz klamra dwusekcyjna, gwarantuje nie tylko optymalne dopasowanie do stopy, lecz przede wszystkim â€“ najwyÅ¼szy poziom bezpieczeÅ„stwa. Klamry Spokey wyposaÅ¼one sÄ… w zabezpieczenie, ktÃ³re zapobiega samoczynnemu zwolnieniu klamry zaciskowej â€“ masz wiÄ™c pewnoÅ›Ä‡, Å¼e w trakcie jazdy pasek pozostanie na swoim miejscu.Parametry\r\npÅ‚oza: PP\r\nÅ‚oÅ¼yska: ABEC5 Carbon\r\nkÃ³Å‚ka: 82A PU; 70 mm - rozm. 33-36; 72 mm - rozm. 37-40; 72 mm - rozm. 40-43\r\nzapiÄ™cia: klamra dwusekcyjna z zabezpieczeniem, rzep, sznurÃ³wki\r\nmax. waga uÅ¼ytkownika: 60 kg\r\nrozmiar regulowany w zakresie: 33-36, 37-40 lub 40-43\r\ndodatkowa para sznurÃ³wek gratis');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Images_ibfk_1` (`product_id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `Admins`
--
ALTER TABLE `Admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `Images`
--
ALTER TABLE `Images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT dla tabeli `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `Images`
--
ALTER TABLE `Images`
  ADD CONSTRAINT `Images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
