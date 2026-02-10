-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Dic 04, 2024 alle 13:25
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
-- Database: `PALLAVOLO`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ALLENATORE`
--

CREATE TABLE `ALLENATORE` (
  `Codice_fiscale_a` char(16) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Anni_esperienza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `ALLENATORE`
--

INSERT INTO `ALLENATORE` (`Codice_fiscale_a`, `Nome`, `Cognome`, `Anni_esperienza`) VALUES
('CLBMTT79R12D612K', 'Matteo', 'Colombo', 15),
('CNTLRA88T50H501Y', 'Laura', 'Conti', 6),
('FRRANN87P65C351V', 'Anna', 'Ferri', 10),
('GLLLNE93E47H703J', 'Elena ', 'Gallo', 8),
('VRDLSN78A15Z404L', 'Alessandro', 'Verdi', 17);

-- --------------------------------------------------------

--
-- Struttura della tabella `DEFINITA`
--

CREATE TABLE `DEFINITA` (
  `Id_tattiche` int(11) NOT NULL,
  `Codice_fiscale_a` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `DEFINITA`
--

INSERT INTO `DEFINITA` (`Id_tattiche`, `Codice_fiscale_a`) VALUES
(472915, 'CLBMTT79R12D612K'),
(573997, 'CNTLRA88T50H501Y'),
(870135, 'FRRANN87P65C351V'),
(100005, 'GLLLNE93E47H703J'),
(775002, 'VRDLSN78A15Z404L');

-- --------------------------------------------------------

--
-- Struttura della tabella `GIOCA`
--

CREATE TABLE `GIOCA` (
  `Id_squadra` int(11) NOT NULL,
  `Id_partita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `GIOCA`
--

INSERT INTO `GIOCA` (`Id_squadra`, `Id_partita`) VALUES
(103245, 1001),
(918273, 1002),
(875432, 1003),
(234876, 1004),
(452318, 1005);

-- --------------------------------------------------------

--
-- Struttura della tabella `GIOCATORE`
--

CREATE TABLE `GIOCATORE` (
  `Codice_fiscale` char(16) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Data_nascita` date NOT NULL,
  `Età` int(11) NOT NULL,
  `Altezza` decimal(3,2) NOT NULL,
  `Ruolo` varchar(15) NOT NULL,
  `Id_squadra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `GIOCATORE`
--

INSERT INTO `GIOCATORE` (`Codice_fiscale`, `Nome`, `Cognome`, `Data_nascita`, `Età`, `Altezza`, `Ruolo`, `Id_squadra`) VALUES
('CNTLCA99E03H501X', 'Luca', 'Conti', '1999-05-03', 25, '1.80', 'Centrale', 452318),
('DLVMRA86B54H501R', 'Ambra', 'Delvecchio', '1986-02-14', 38, '1.63', 'Banda', 103245),
('FMCLIE90S09H501M', 'Elia', 'Fiumicelli', '1990-11-09', 34, '1.76', 'Centrale', 234876),
('GLLLSA98B65L219P', 'Elisa', 'Galli', '1998-02-25', 26, '1.72', 'Opposto', 875432),
('MNTGNR92L70H501X', 'Ginevra', 'Montaguti', '1992-07-30', 32, '1.58', 'Libero', 918273),
('MRTCHR00P52F205Y', 'Chiara', 'Moretti', '2000-09-12', 24, '1.68', 'Palleggio', 103245),
('RCCNDR95T17L219C', 'Andrea', 'Ricci', '1995-12-17', 28, '1.74', 'Banda', 918273),
('RNLFRC04H70Z404W', 'Federica', 'Rinaldi', '2004-06-30', 20, '1.60', 'Libero', 234876);

-- --------------------------------------------------------

--
-- Struttura della tabella `HA`
--

CREATE TABLE `HA` (
  `Id_partita` int(11) NOT NULL,
  `Id_tattiche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `HA`
--

INSERT INTO `HA` (`Id_partita`, `Id_tattiche`) VALUES
(1004, 100005),
(1001, 472915),
(1002, 573997),
(1005, 775002),
(1003, 870135);

-- --------------------------------------------------------

--
-- Struttura della tabella `LINGUE`
--

CREATE TABLE `LINGUE` (
  `Codice_fiscale_a` char(16) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `LINGUE`
--

INSERT INTO `LINGUE` (`Codice_fiscale_a`, `Tipo`) VALUES
('CLBMTT79R12D612K', 'Italiano'),
('CNTLRA88T50H501Y', 'Inglese'),
('FRRANN87P65C351V', 'Spagnolo'),
('GLLLNE93E47H703J', 'Francese'),
('VRDLSN78A15Z404L', 'Tedesco');

-- --------------------------------------------------------

--
-- Struttura della tabella `PARTITA`
--

CREATE TABLE `PARTITA` (
  `Id_partita` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Ora` int(11) NOT NULL,
  `Luogo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `PARTITA`
--

INSERT INTO `PARTITA` (`Id_partita`, `Data`, `Ora`, `Luogo`) VALUES
(1001, '2024-02-06', 21, 'Roma'),
(1002, '2024-03-29', 15, 'Milano'),
(1003, '2024-04-11', 20, 'Ancona'),
(1004, '2024-05-14', 21, 'Torino'),
(1005, '2024-09-21', 20, 'Genova');

-- --------------------------------------------------------

--
-- Struttura della tabella `SQUADRA`
--

CREATE TABLE `SQUADRA` (
  `Id_squadra` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Anno_fondazione` int(11) NOT NULL,
  `Via` varchar(50) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Città` varchar(50) NOT NULL,
  `Cap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `SQUADRA`
--

INSERT INTO `SQUADRA` (`Id_squadra`, `Nome`, `Anno_fondazione`, `Via`, `Numero`, `Città`, `Cap`) VALUES
(103245, 'Aquile della Rete', 1989, 'Viale degli atleti', 22, 'Firenze', 50102),
(234876, 'Stelle del Net', 1980, 'dei Gladiatori', 76, 'Napoli', 80132),
(452318, 'Thunder Spikers', 1985, 'della Vittoria', 15, 'Milano', 20100),
(875432, 'Leoni del Volley', 1990, 'Piazza dello sport', 8, 'Bologna', 40100),
(918273, 'Draghi del Servizio', 1993, 'Torino', 35, 'Teramo', 67100);

-- --------------------------------------------------------

--
-- Struttura della tabella `TATTICHE_DI_GIOCO`
--

CREATE TABLE `TATTICHE_DI_GIOCO` (
  `Id_tattiche` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Errori` int(11) NOT NULL,
  `Efficienza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `TATTICHE_DI_GIOCO`
--

INSERT INTO `TATTICHE_DI_GIOCO` (`Id_tattiche`, `Nome`, `Errori`, `Efficienza`) VALUES
(100005, 'Pianificazione delle sessioni di allenamento', 2, 80),
(472915, 'Analisi delle statistiche di squadra', 3, 70),
(573997, 'Gestione delle formazioni', 4, 60),
(775002, 'Valutazione delle strategie di gioco', 3, 70),
(870135, 'Monitoraggio delle prestazioni individuali', 0, 99);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ALLENATORE`
--
ALTER TABLE `ALLENATORE`
  ADD PRIMARY KEY (`Codice_fiscale_a`);

--
-- Indici per le tabelle `DEFINITA`
--
ALTER TABLE `DEFINITA`
  ADD PRIMARY KEY (`Id_tattiche`),
  ADD KEY `Codice_fiscale_a` (`Codice_fiscale_a`);

--
-- Indici per le tabelle `GIOCA`
--
ALTER TABLE `GIOCA`
  ADD PRIMARY KEY (`Id_squadra`),
  ADD KEY `Id_partita` (`Id_partita`);

--
-- Indici per le tabelle `GIOCATORE`
--
ALTER TABLE `GIOCATORE`
  ADD PRIMARY KEY (`Codice_fiscale`),
  ADD KEY `Id_squadra` (`Id_squadra`);

--
-- Indici per le tabelle `HA`
--
ALTER TABLE `HA`
  ADD PRIMARY KEY (`Id_partita`),
  ADD KEY `Id_tattiche` (`Id_tattiche`);

--
-- Indici per le tabelle `LINGUE`
--
ALTER TABLE `LINGUE`
  ADD PRIMARY KEY (`Codice_fiscale_a`);

--
-- Indici per le tabelle `PARTITA`
--
ALTER TABLE `PARTITA`
  ADD PRIMARY KEY (`Id_partita`);

--
-- Indici per le tabelle `SQUADRA`
--
ALTER TABLE `SQUADRA`
  ADD PRIMARY KEY (`Id_squadra`);

--
-- Indici per le tabelle `TATTICHE_DI_GIOCO`
--
ALTER TABLE `TATTICHE_DI_GIOCO`
  ADD PRIMARY KEY (`Id_tattiche`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `DEFINITA`
--
ALTER TABLE `DEFINITA`
  MODIFY `Id_tattiche` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870136;

--
-- AUTO_INCREMENT per la tabella `GIOCA`
--
ALTER TABLE `GIOCA`
  MODIFY `Id_squadra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=918274;

--
-- AUTO_INCREMENT per la tabella `HA`
--
ALTER TABLE `HA`
  MODIFY `Id_partita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT per la tabella `PARTITA`
--
ALTER TABLE `PARTITA`
  MODIFY `Id_partita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT per la tabella `SQUADRA`
--
ALTER TABLE `SQUADRA`
  MODIFY `Id_squadra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=918274;

--
-- AUTO_INCREMENT per la tabella `TATTICHE_DI_GIOCO`
--
ALTER TABLE `TATTICHE_DI_GIOCO`
  MODIFY `Id_tattiche` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870136;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `DEFINITA`
--
ALTER TABLE `DEFINITA`
  ADD CONSTRAINT `definita_ibfk_1` FOREIGN KEY (`Id_tattiche`) REFERENCES `TATTICHE_DI_GIOCO` (`Id_tattiche`),
  ADD CONSTRAINT `definita_ibfk_2` FOREIGN KEY (`Codice_fiscale_a`) REFERENCES `ALLENATORE` (`Codice_fiscale_a`);

--
-- Limiti per la tabella `GIOCA`
--
ALTER TABLE `GIOCA`
  ADD CONSTRAINT `gioca_ibfk_1` FOREIGN KEY (`Id_squadra`) REFERENCES `SQUADRA` (`Id_squadra`),
  ADD CONSTRAINT `gioca_ibfk_2` FOREIGN KEY (`Id_partita`) REFERENCES `PARTITA` (`Id_partita`);

--
-- Limiti per la tabella `GIOCATORE`
--
ALTER TABLE `GIOCATORE`
  ADD CONSTRAINT `giocatore_ibfk_1` FOREIGN KEY (`Id_squadra`) REFERENCES `SQUADRA` (`Id_squadra`);

--
-- Limiti per la tabella `HA`
--
ALTER TABLE `HA`
  ADD CONSTRAINT `ha_ibfk_1` FOREIGN KEY (`Id_partita`) REFERENCES `PARTITA` (`Id_partita`),
  ADD CONSTRAINT `ha_ibfk_2` FOREIGN KEY (`Id_tattiche`) REFERENCES `TATTICHE_DI_GIOCO` (`Id_tattiche`);

--
-- Limiti per la tabella `LINGUE`
--
ALTER TABLE `LINGUE`
  ADD CONSTRAINT `lingue_ibfk_1` FOREIGN KEY (`Codice_fiscale_a`) REFERENCES `ALLENATORE` (`Codice_fiscale_a`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
