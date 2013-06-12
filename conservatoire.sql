-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 12 Juin 2013 à 14:23
-- Version du serveur: 5.5.29
-- Version de PHP: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `conservatoire`
--

-- --------------------------------------------------------

--
-- Structure de la table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `event` text NOT NULL,
  `obra` text NOT NULL,
  `autor` varchar(200) NOT NULL,
  `pianista` varchar(200) NOT NULL,
  `alumno` text NOT NULL,
  `professora` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Contenu de la table `agenda`
--

INSERT INTO `agenda` (`id`, `dt`, `lieu`, `event`, `obra`, `autor`, `pianista`, `alumno`, `professora`) VALUES
(70, '2013-06-17', '20:00', 'Sala de Camara', 'Blues for Gilbert(5)', 'M.Glentworth', 'Alvaro Rodriguez Fermandez', 'Marco Antonio Guardado del Valle(2 de percusion)', 'Julio Sanchez-Andrade Fernandez'),
(72, '2013-06-17', '20:00', 'Sala de Camara', 'Konzer for xylophon og orkester (10)', 'K.Roikjer', 'Abraham Gallo Calvo', 'Adrian Higuera Rueda(2 de percussion)', 'Gabriel Alberto Elias Casal');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` text NOT NULL,
  `pass_md5` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id`, `login`, `pass_md5`) VALUES
(2, 'morgan', '06c56a89949d617def52f371c357b6db'),
(4, 'diego', 'b69466b536f8ce43b6356ec1332e05a4'),
(5, 'jean', 'd6581d542c7eaf801284f084478b5fcc'),
(6, 'm', '0cc175b9c0f1b6a831c399e269772661');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
