-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 31 Janvier 2018 à 21:30
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `eshop_db`
--
CREATE DATABASE IF NOT EXISTS `eshop_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eshop_db`;

-- --------------------------------------------------------

--
-- Structure de la table `cmd_art`
--

CREATE TABLE IF NOT EXISTS `cmd_art` (
  `quantite` int(11) DEFAULT NULL,
  `code_cmd` varchar(255) NOT NULL,
  `code_art` int(11) NOT NULL,
  PRIMARY KEY (`code_art`,`code_cmd`),
  KEY `FK9m6nae6ui8mqepyq4qjgxa3cd` (`code_cmd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cmd_art`
--

INSERT INTO `cmd_art` (`quantite`, `code_cmd`, `code_art`) VALUES
(1, '1/18', 1),
(1, '3/18', 3),
(13, '4/18', 5),
(2, '4/18', 11),
(3, '2/18', 13),
(2, '1/18', 14),
(1, '2/18', 17),
(10, '2/18', 18),
(2, '4/18', 19),
(1, '2/18', 23),
(4, '4/18', 24),
(5, '4/18', 25);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(3),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `tab_article`
--

CREATE TABLE IF NOT EXISTS `tab_article` (
  `code_art` int(11) NOT NULL,
  `designation_art` varchar(255) DEFAULT NULL,
  `prix_art` double DEFAULT NULL,
  `quantite_art` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_art`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tab_article`
--

INSERT INTO `tab_article` (`code_art`, `designation_art`, `prix_art`, `quantite_art`) VALUES
(1, 'Apple iPhone X Smartphone débloqué 4G (Ecran : 5,8 pouces - 64 Go - Nano-SIM - iOS) Gris sidéral', 9910.89, 1199),
(2, 'Samsung Galaxy A5 2017 Smartphone portable débloqué 4G (Ecran: 5,2 pouces - 32 Go - Nano-SIM - Android 6.0) Noir (Carte SIM européenne uniquement)', 2760.87, 3000),
(3, 'Huawei Smartwatch 2 avec Bluetooth', 3700.54, 1999),
(4, 'Huawei - Watch 2 Sport - Montre GPS sport connectée - Smartwatch pour Android et iOS - Noir', 2590.77, 2000),
(5, 'Samsung EO-EG920BW Kit piéton stéréo pour Samsung Galaxy S6 Blanc', 50.6, 2987),
(6, 'Écouteurs Bluetooth, SGIN Bluetooth 4.2 stéréo sans fil Sport Oreillette Intra-auriculaires Casque Résistant à la Transpiration avec Microphone pour iPhone, iPad, Android Smartphones(Rouge) - Fozento', 210.99, 2000),
(7, 'Honor View 10 Smartphone portable débloqué 4G (Ecran: 5,99 pouces - 128 Go - Double Nano-SIM - Android) Bleu', 4990, 1500),
(8, 'Asus E402WA-GA007T PC Portable 14" Bleu foncé (AMD E2, 4 Go de RAM, SSD 64 Go, AMD Radeon R2 Graphics, Windows 10 S) Clavier Français AZERTY', 2490.55, 1400),
(9, 'HP 17-bs075nf PC Portable 17" HD Blanc (Intel Pentium, 8 Go de RAM, 1 To, Intel HD 405, Windows 10)', 4490.32, 1200),
(10, 'Acer Chromebook Cb3-431-c2wg 14'''' Gris Métal (Intel Celeron, 4 Go de Ram, 16 Go, Intel HD Graphics 400, Chrome Os)', 2990.76, 700),
(11, 'Lenovo Legion Y520-15IKBM Ordinateur Portable Gamer 15,6" Full HD Noir Metalisé (Intel Core i7, 8 Go de RAM, 1 To + SSD 128 Go, Nvidia GTX1060 6 Go, Windows 10)', 9990.99, 998),
(12, 'Asus Zenbook Flip S UX370 C4292T Ultrabook hybride tactile 13,3" Full HD Gris (Intel Core i5, 8 Go de RAM, SSD 256 Go, Windows 10) Clavier AZERTY français + Stylet + Mini Dock offerts', 1049, 1200),
(13, 'HP 17 (17,3 pouces/HD + SVA) Ordinateur Portable (8 Go de RAM, disque dur 1 To, carte graphique Intel HD, Windows 10 Home 64) Windows 10 Home 1 TB HDD weiß', 4620.45, 1997),
(14, 'TP-Link TL-SF1005D Switch 5 Ports 10/100Mbps (Bureau, Boîtier Plastique)', 70.8, 2998),
(15, 'Routeur , MENGGOOD 300 Mbps Wi-Fi N Routeurs Sans Fil Wireless Router Extenseur Réseau Boosters WiFi Répétiteur WLAN Avec 4 Ports LAN VDSL / ADSL 4 Antennes Externes [Français Prise]', 360.99, 2000),
(16, 'Huawei B525s-23a blanc Routeur 4G+ LTE LTE-A Catégorie 6 Gigabit WiFi AC 2 x SMA pour antenne externe (Blanc)', 1550, 3290),
(17, 'ORBI Mural RBK30 Solution WifiMultiroom MESH Unique - 4.4 Gigabit pour 200m² de Couverture Wifi', 1960.32, 1229),
(18, 'Salcar - Universal Film Housse de protection Hard Case Sleeve Shell Sac portable pour Apple USB 2.0 USB 3.0 SuperDrive/ Trackpad/ SAMSUNG/ LG/ ASUS Lecteurs Externe DVD et d''autres Disque Dur Externelecteur interne dur externe d''Apple et Universal DVD CD ', 70.99, 1490),
(19, 'Asus SDRW-08D2S-U LITE Graveur DVD Externe Blanc', 290.49, 3998),
(20, 'Lecteur DVD externe USB 3.0, shonco fente externe USB 3.0 Graveur CD DVD RW ROM Player Superdrive externe pour Apple MacBook Pro Air iMac - noir', 290.99, 2000),
(21, 'Graveur DVD Externe, DOY USB DVD+/- RW CD +/- RW Lecteur Compatible avec Apple MacBook, MacBook Pro, MacBook Air, iMac Support Mac OSX Windows Vista / 7/8/10 - Blanc', 210.33, 3300),
(22, 'Classique-Inateck Housse Ordinateur Portable 14 Pouces Sacoche Laptop 35,6 cm', 120.33, 1200),
(23, 'Norsens Antivol Sac à Dos Ordinateur Portable 15.6/14 Pouces Homme Imperméable Sac a Dos PC Portable pour Loisirs/Affaire/Scolaire Gris', 290.32, 1499),
(24, '[13.3 Pouces] Inateck Housse MacBook Air /MacBook Pro/ MacBook Pro Retina 13 Pouces Sacoche Ordinateur Portable 13 Pouces', 310.36, 1296),
(25, 'Jelly Comb Clavier Bluetooth AZERTY Rechargeable Pliable avec Pavé Tactile pour iOS, Android, Windows\r\n', 29.88, 2995),
(26, '1byone Clavier Bluetooth AZERTY avec Multi Touchpad Ultra Fin, Clavier Tactile Pour iPad / Galaxy Tabs / iPhone / Huawei / Samsung / Oneplus et autres Androidphones', 190.23, 2000),
(27, 'JOYACCESS Ensemble Clavier AZERTY + Souris sans fil - Saisie silencieuse - Ultra mince, fin, Récepteur USB Compact Pour ordinateur – Argent+Blanc', 290.99, 3200);

-- --------------------------------------------------------

--
-- Structure de la table `tab_client`
--

CREATE TABLE IF NOT EXISTS `tab_client` (
  `code_clt` int(11) NOT NULL,
  `adresse_clt` varchar(255) DEFAULT NULL,
  `motdepasse_clt` varchar(255) DEFAULT NULL,
  `nom_clt` varchar(255) DEFAULT NULL,
  `nomutilisateur_clt` varchar(255) DEFAULT NULL,
  `prenom_clt` varchar(255) DEFAULT NULL,
  `ville_clt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code_clt`),
  UNIQUE KEY `UK_qo2bykdf275k7i2govbsocppi` (`nomutilisateur_clt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tab_client`
--

INSERT INTO `tab_client` (`code_clt`, `adresse_clt`, `motdepasse_clt`, `nom_clt`, `nomutilisateur_clt`, `prenom_clt`, `ville_clt`) VALUES
(1, 'hay nahda Bloc A NR 334', 'uness', 'CHAOUI', 'uness', 'Youness', 'Agadir'),
(2, 'adresse de User', 'user', 'userCAHOUI', 'user', 'userYouness', 'Essaouira');

-- --------------------------------------------------------

--
-- Structure de la table `tab_commande`
--

CREATE TABLE IF NOT EXISTS `tab_commande` (
  `code_cmd` varchar(255) NOT NULL,
  `date_cmd` date DEFAULT NULL,
  `montant_cmd` double DEFAULT NULL,
  `code_client` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_cmd`),
  KEY `FKdhjgn4ou7divysgr1cc9pmhuh` (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tab_commande`
--

INSERT INTO `tab_commande` (`code_cmd`, `date_cmd`, `montant_cmd`, `code_client`) VALUES
('1/18', '2018-01-30', 10052.49, 1),
('2/18', '2018-01-30', 16821.89, 1),
('3/18', '2018-01-30', 3700.54, 1),
('4/18', '2018-01-30', 22611.6, 1);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cmd_art`
--
ALTER TABLE `cmd_art`
  ADD CONSTRAINT `FK9m6nae6ui8mqepyq4qjgxa3cd` FOREIGN KEY (`code_cmd`) REFERENCES `tab_commande` (`code_cmd`),
  ADD CONSTRAINT `FKbyqexp3ayme43ttohhgysgbsr` FOREIGN KEY (`code_art`) REFERENCES `tab_article` (`code_art`);

--
-- Contraintes pour la table `tab_commande`
--
ALTER TABLE `tab_commande`
  ADD CONSTRAINT `FKdhjgn4ou7divysgr1cc9pmhuh` FOREIGN KEY (`code_client`) REFERENCES `tab_client` (`code_clt`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
