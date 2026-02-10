-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Dic 04, 2024 alle 11:13
-- Versione del server: 5.7.39
-- Versione PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PERFORMANCE_GIOCATORE`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Allenamento`
--

CREATE TABLE `Allenamento` (
  `Id_allenamento` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Allenamento`
--

INSERT INTO `Allenamento` (`Id_allenamento`, `Tipo`) VALUES
(91, 'Fisico'),
(92, 'Tecnico'),
(93, 'Tattico'),
(94, 'Mentale'),
(95, 'Coordinativo');

-- --------------------------------------------------------

--
-- Struttura della tabella `Campionato`
--

CREATE TABLE `Campionato` (
  `Id_campionato` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Campionato`
--

INSERT INTO `Campionato` (`Id_campionato`, `Tipo`) VALUES
(4145, 'Volleyball World Championship'),
(7922, 'Campionato Nazionale Professionistico'),
(8110, 'Champions League'),
(8886, 'Campionato Giovanile'),
(8976, 'Campionato Amatoriale');

-- --------------------------------------------------------

--
-- Struttura della tabella `Divisione`
--

CREATE TABLE `Divisione` (
  `Id_divisione` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Id_campionato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Divisione`
--

INSERT INTO `Divisione` (`Id_divisione`, `Nome`, `Id_campionato`) VALUES
(1077, 'Italia', 4145),
(1859, 'Serie A1', 7922),
(1940, 'Brasile', 4145),
(2039, 'Super Lega', 8110),
(2123, 'Serie A2', 7922),
(3150, 'Prima Divisione', 8976),
(5890, 'Under 16', 8886),
(6742, 'Under 18', 8886),
(6744, 'Serie B', 8110),
(9278, 'Seconda Divisione', 8976);

-- --------------------------------------------------------

--
-- Struttura della tabella `Giocatore`
--

CREATE TABLE `Giocatore` (
  `Codice_fiscale` char(16) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Data_nascita` date NOT NULL,
  `Id_ruolo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Giocatore`
--

INSERT INTO `Giocatore` (`Codice_fiscale`, `Nome`, `Cognome`, `Data_nascita`, `Id_ruolo`) VALUES
('BNCHGL95C62F205X', 'Giulia', 'Bianchi', '1995-03-22', 82),
('BRBCHR07R46F205T', 'Chiara ', 'Barbieri', '2007-10-06', 82),
('CLMGBR07R04F205B', 'Gabriele', 'Colombo', '2007-10-04', 85),
('CRSLNE02E45F205W', 'Elena', 'Caruso', '2002-05-05', 84),
('FRRLSS87R70A944X', 'Alessandra', 'Ferrari', '1987-10-30', 84),
('FRRNDR98L17F205V', 'Andrea', 'Ferrari', '1998-07-17', 85),
('GRSLNE01S61F205Y', 'Elena', 'Grassi', '2001-11-21', 84),
('LMBLRN05L24F205K', 'Lorenzo', 'Lombardi', '2005-07-24', 81),
('MRCLNR04L58F205R', 'Leonardo', 'Marchi', '2004-07-18', 85),
('MRTGRG95P26F205A', 'Giorgia ', 'Moretti', '1995-09-26', 84),
('NRIFPP92E03F205F', 'Filippo', 'Neri', '1992-05-03', 85),
('PGNFDR99L21F205I', 'Federico', 'Pagani', '1999-07-21', 83),
('RMNFRN96C10F205I', 'Francesco', 'Romano', '1996-03-10', 81),
('RSSGLI10A31F205G', 'Giulia', 'Russo', '2010-01-31', 83),
('RSSMRC90A15H501Z', 'Marco', 'Rossi', '1990-01-15', 81),
('SNTLSS09T71F205K', 'Alessia', 'Santoro', '2009-12-31', 82),
('SPSCLD95P18F205B', 'Claudia', 'Esposito', '1995-09-18', 83),
('TSTGBR95M55F205R', 'Gabriele', 'Testa', '1995-08-15', 81),
('VLLCLD09P26F205F', 'Claudia', 'Villa', '2009-09-26', 82),
('VRDLCA88L05Z404N', 'Luca', 'Verdi', '1988-07-05', 83);

-- --------------------------------------------------------

--
-- Struttura della tabella `Partita`
--

CREATE TABLE `Partita` (
  `Id_partita` int(11) NOT NULL,
  `Nome_arbitro` varchar(50) NOT NULL,
  `Data` date NOT NULL,
  `Set_vinti_casa` int(11) NOT NULL,
  `Set_vinti_ospite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Partita`
--

INSERT INTO `Partita` (`Id_partita`, `Nome_arbitro`, `Data`, `Set_vinti_casa`, `Set_vinti_ospite`) VALUES
(1, 'Enea', '2023-01-31', 0, 3),
(2, 'Lavinia', '2023-02-08', 3, 2),
(3, 'Isoide', '2023-03-12', 3, 1),
(4, 'Ivo', '2023-04-26', 0, 3),
(5, 'Elio', '2023-05-02', 2, 3),
(6, 'Malik', '2023-06-09', 1, 3),
(7, 'Amira', '2023-10-03', 3, 1),
(8, 'Camelia', '2023-10-26', 3, 0),
(9, 'Federico', '2023-11-22', 0, 3),
(10, 'Rosa', '2023-11-09', 2, 3),
(11, 'Alberto', '2023-01-24', 3, 1),
(12, 'Lorenzo', '2023-03-20', 2, 3),
(13, 'Patrizia', '2023-04-06', 3, 0),
(14, 'Gaia', '2023-09-29', 1, 3),
(15, 'Luigi', '2023-11-06', 3, 2),
(16, 'Paolo', '2023-12-19', 3, 0),
(17, 'Caterina', '2023-03-22', 2, 3),
(18, 'Fabrizio', '2023-02-11', 0, 3),
(19, 'Giuseppe', '2023-04-06', 1, 3),
(20, 'Barbara', '2023-06-06', 3, 2),
(21, 'Antonio', '2023-06-19', 0, 3),
(22, 'Martina', '2023-09-25', 3, 0),
(23, 'Carlo', '2023-10-20', 3, 1),
(24, 'Jessica', '2023-10-30', 3, 2),
(25, 'Loredana', '2023-11-15', 2, 3),
(26, 'Pierpaolo', '2023-11-22', 3, 0),
(27, 'Alessandro', '2023-12-04', 3, 0),
(28, 'Maurizio', '2023-12-20', 3, 1),
(29, 'Ilenia', '2023-12-16', 1, 3),
(30, 'Daniela', '2023-09-14', 2, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `Performance_giocatore`
--

CREATE TABLE `Performance_giocatore` (
  `Id_performance` int(11) NOT NULL,
  `Id_squadra` int(11) NOT NULL,
  `Id_partita` int(11) NOT NULL,
  `Codice_fiscale` char(16) NOT NULL,
  `Punti_totali_partita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Performance_giocatore`
--

INSERT INTO `Performance_giocatore` (`Id_performance`, `Id_squadra`, `Id_partita`, `Codice_fiscale`, `Punti_totali_partita`) VALUES
(1, 1001, 1, 'BNCHGL95C62F205X', 12),
(2, 1002, 2, 'BRBCHR07R46F205T', 21),
(3, 1003, 3, 'CLMGBR07R04F205B', 15),
(4, 1004, 4, 'CRSLNE02E45F205W', 9),
(5, 1005, 5, 'FRRLSS87R70A944X', 20),
(6, 1006, 6, 'FRRNDR98L17F205V', 5),
(7, 1007, 7, 'GRSLNE01S61F205Y', 18),
(8, 1008, 8, 'LMBLRN05L24F205K', 24),
(9, 1009, 9, 'MRCLNR04L58F205R', 13),
(10, 1010, 10, 'MRTGRG95P26F205A', 4),
(11, 1001, 11, 'NRIFPP92E03F205F', 2),
(12, 1002, 12, 'PGNFDR99L21F205I', 26),
(13, 1003, 13, 'RMNFRN96C10F205I', 22),
(14, 1004, 14, 'RSSGLI10A31F205G', 18),
(15, 1005, 15, 'RSSMRC90A15H501Z', 15),
(16, 1006, 16, 'SNTLSS09T71F205K', 11),
(17, 1007, 17, 'SPSCLD95P18F205B', 29),
(18, 1008, 18, 'TSTGBR95M55F205R', 22),
(19, 1009, 19, 'VLLCLD09P26F205F', 10),
(20, 1010, 20, 'VRDLCA88L05Z404N', 11),
(21, 1001, 21, 'BRBCHR07R46F205T', 7),
(22, 1002, 22, 'CLMGBR07R04F205B', 3),
(23, 1003, 23, 'CRSLNE02E45F205W', 13),
(24, 1004, 24, 'FRRLSS87R70A944X', 12),
(25, 1005, 25, 'FRRNDR98L17F205V', 17),
(26, 1006, 26, 'GRSLNE01S61F205Y', 21),
(27, 1007, 27, 'LMBLRN05L24F205K', 20),
(28, 1008, 28, 'MRCLNR04L58F205R', 14),
(29, 1009, 29, 'MRTGRG95P26F205A', 16),
(30, 1010, 30, 'NRIFPP92E03F205F', 19),
(31, 1002, 1, 'BNCHGL95C62F205X', 0),
(32, 1003, 2, 'VRDLCA88L05Z404N', 24),
(33, 1004, 3, 'VLLCLD09P26F205F', 27),
(34, 1005, 4, 'TSTGBR95M55F205R', 11),
(35, 1006, 5, 'SPSCLD95P18F205B', 13),
(36, 1007, 6, 'SNTLSS09T71F205K', 7),
(37, 1008, 7, 'RSSMRC90A15H501Z', 9),
(38, 1009, 8, 'RSSGLI10A31F205G', 10),
(39, 1010, 9, 'RMNFRN96C10F205I', 17),
(40, 1001, 10, 'GRSLNE01S61F205Y', 15),
(41, 1001, 20, 'BNCHGL95C62F205X', 23),
(42, 1002, 21, 'BRBCHR07R46F205T', 12),
(43, 1003, 23, 'CLMGBR07R04F205B', 16),
(44, 1004, 24, 'CRSLNE02E45F205W', 18),
(45, 1005, 25, 'FRRLSS87R70A944X', 15),
(46, 1006, 26, 'FRRNDR98L17F205V', 14),
(47, 1007, 27, 'GRSLNE01S61F205Y', 11),
(48, 1008, 28, 'LMBLRN05L24F205K', 0),
(49, 1009, 29, 'MRCLNR04L58F205R', 5),
(50, 1010, 30, 'MRTGRG95P26F205A', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `Ruolo`
--

CREATE TABLE `Ruolo` (
  `Id_ruolo` int(11) NOT NULL,
  `Nome_ruolo` varchar(50) NOT NULL,
  `Id_allenamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Ruolo`
--

INSERT INTO `Ruolo` (`Id_ruolo`, `Nome_ruolo`, `Id_allenamento`) VALUES
(81, 'Palleggio', 91),
(82, 'Libero', 92),
(83, 'Centrale', 93),
(84, 'Opposto', 94),
(85, 'Banda', 95);

-- --------------------------------------------------------

--
-- Struttura della tabella `Squadra`
--

CREATE TABLE `Squadra` (
  `Id_squadra` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Anno_fondazione` int(11) NOT NULL,
  `Id_divisione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Squadra`
--

INSERT INTO `Squadra` (`Id_squadra`, `Nome`, `Anno_fondazione`, `Id_divisione`) VALUES
(1001, 'Nazionale italiana', 1947, 1077),
(1002, 'Imoco Conegliano', 2004, 1859),
(1003, 'Sada Cruzeiro', 2004, 1940),
(1004, 'Sir Safety Susa Perugia', 1947, 2039),
(1005, 'Igor Novara', 1946, 2123),
(1006, 'New Volley', 2001, 3150),
(1007, 'Stelle della Rete', 1990, 5890),
(1008, 'Draghi del Fuoco', 2003, 6742),
(1009, 'Sant\'Anna Tomcar', 1986, 6744),
(1010, 'Volley Club Pinerolo', 2000, 9278);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Allenamento`
--
ALTER TABLE `Allenamento`
  ADD PRIMARY KEY (`Id_allenamento`);

--
-- Indici per le tabelle `Campionato`
--
ALTER TABLE `Campionato`
  ADD PRIMARY KEY (`Id_campionato`);

--
-- Indici per le tabelle `Divisione`
--
ALTER TABLE `Divisione`
  ADD PRIMARY KEY (`Id_divisione`),
  ADD KEY `Id_campionato` (`Id_campionato`);

--
-- Indici per le tabelle `Giocatore`
--
ALTER TABLE `Giocatore`
  ADD PRIMARY KEY (`Codice_fiscale`),
  ADD KEY `Id_ruolo` (`Id_ruolo`);

--
-- Indici per le tabelle `Partita`
--
ALTER TABLE `Partita`
  ADD PRIMARY KEY (`Id_partita`);

--
-- Indici per le tabelle `Performance_giocatore`
--
ALTER TABLE `Performance_giocatore`
  ADD PRIMARY KEY (`Id_performance`),
  ADD KEY `Id_partita` (`Id_partita`),
  ADD KEY `Codice_fiscale` (`Codice_fiscale`),
  ADD KEY `Id_squadra` (`Id_squadra`);

--
-- Indici per le tabelle `Ruolo`
--
ALTER TABLE `Ruolo`
  ADD PRIMARY KEY (`Id_ruolo`),
  ADD KEY `Id_allenamento` (`Id_allenamento`);

--
-- Indici per le tabelle `Squadra`
--
ALTER TABLE `Squadra`
  ADD PRIMARY KEY (`Id_squadra`),
  ADD KEY `Id_divisione` (`Id_divisione`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Allenamento`
--
ALTER TABLE `Allenamento`
  MODIFY `Id_allenamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT per la tabella `Campionato`
--
ALTER TABLE `Campionato`
  MODIFY `Id_campionato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8977;

--
-- AUTO_INCREMENT per la tabella `Divisione`
--
ALTER TABLE `Divisione`
  MODIFY `Id_divisione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9279;

--
-- AUTO_INCREMENT per la tabella `Partita`
--
ALTER TABLE `Partita`
  MODIFY `Id_partita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `Performance_giocatore`
--
ALTER TABLE `Performance_giocatore`
  MODIFY `Id_performance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la tabella `Ruolo`
--
ALTER TABLE `Ruolo`
  MODIFY `Id_ruolo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT per la tabella `Squadra`
--
ALTER TABLE `Squadra`
  MODIFY `Id_squadra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Divisione`
--
ALTER TABLE `Divisione`
  ADD CONSTRAINT `divisione_ibfk_1` FOREIGN KEY (`Id_campionato`) REFERENCES `Campionato` (`Id_campionato`);

--
-- Limiti per la tabella `Giocatore`
--
ALTER TABLE `Giocatore`
  ADD CONSTRAINT `giocatore_ibfk_1` FOREIGN KEY (`Id_ruolo`) REFERENCES `Ruolo` (`Id_ruolo`);

--
-- Limiti per la tabella `Performance_giocatore`
--
ALTER TABLE `Performance_giocatore`
  ADD CONSTRAINT `performance_giocatore_ibfk_1` FOREIGN KEY (`Id_partita`) REFERENCES `Partita` (`Id_partita`),
  ADD CONSTRAINT `performance_giocatore_ibfk_2` FOREIGN KEY (`Codice_fiscale`) REFERENCES `Giocatore` (`Codice_fiscale`),
  ADD CONSTRAINT `performance_giocatore_ibfk_3` FOREIGN KEY (`Id_squadra`) REFERENCES `Squadra` (`Id_squadra`);

--
-- Limiti per la tabella `Ruolo`
--
ALTER TABLE `Ruolo`
  ADD CONSTRAINT `ruolo_ibfk_1` FOREIGN KEY (`Id_allenamento`) REFERENCES `Allenamento` (`Id_allenamento`);

--
-- Limiti per la tabella `Squadra`
--
ALTER TABLE `Squadra`
  ADD CONSTRAINT `squadra_ibfk_1` FOREIGN KEY (`Id_divisione`) REFERENCES `Divisione` (`Id_divisione`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
