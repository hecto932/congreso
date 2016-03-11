-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2016 a las 22:20:08
-- Versión del servidor: 5.5.47-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `congreso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(140) NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Ciudadanía y desarrollo urbano', NULL, '2016-02-27 00:00:00', '2016-02-28 02:09:42'),
(2, 'Vida, ecología y ambiente', NULL, '2016-02-27 00:00:00', '2016-02-28 02:09:46'),
(3, 'Economía y finanzas', NULL, '0000-00-00 00:00:00', '2016-02-28 02:10:58'),
(4, 'Educación en las ciencias económicas y sociales', NULL, '0000-00-00 00:00:00', '2016-02-28 02:10:58'),
(5, 'Empresas y actividad contable', NULL, '0000-00-00 00:00:00', '2016-02-28 17:16:12'),
(6, 'Diversidad, equidad e inclusión social', NULL, '0000-00-00 00:00:00', '2016-02-28 17:16:12'),
(7, 'Estudios del trabajo', NULL, '2016-02-28 00:00:00', '2016-02-29 04:05:18'),
(8, 'Gerencia y sectores productivos', NULL, '2016-02-28 00:00:00', '2016-02-29 04:05:18'),
(9, 'Historia, filosofía y sociedad', NULL, '2016-02-28 00:00:00', '2016-02-29 04:05:42'),
(10, 'Innovación social y organizaciones', NULL, '2016-02-28 00:00:00', '2016-02-29 04:05:42'),
(11, 'Nueva gestión pública y calidad', NULL, '2016-02-28 00:00:00', '2016-02-29 04:06:20'),
(12, 'Salud y sociedad', NULL, '0000-00-00 00:00:00', '2016-02-29 04:06:20'),
(13, 'Sociología y ciencias sociales', NULL, '2016-02-28 00:00:00', '2016-02-29 04:21:51'),
(14, 'TIC e innovación tecnológica', NULL, '2016-02-28 00:00:00', '2016-02-29 04:21:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backusers`
--

CREATE TABLE IF NOT EXISTS `backusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `campus` enum('Bárbula','La Morita') NOT NULL,
  `rol` enum('Administrador','Arbitro','Fundaprofaces') NOT NULL,
  `rememberToken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frontuser_id` int(11) NOT NULL,
  `numberReference` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(140) DEFAULT NULL,
  `lastName` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `ci` varchar(140) NOT NULL,
  `phone` varchar(140) NOT NULL,
  `email` varchar(140) NOT NULL,
  `university` varchar(140) DEFAULT NULL,
  `school` varchar(140) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `rememberToken` varchar(140) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `image`, `lastName`, `name`, `ci`, `phone`, `email`, `university`, `school`, `password`, `rememberToken`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'Flores Colmenarez', 'Hector Jose', '20162504', '04127762882', 'hecto932@gmail.com', NULL, NULL, '786bd9a52ee9af08db5c139b86cc60533ca1c7b6', NULL, '2016-03-10 22:18:50', '2016-03-11 02:48:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
