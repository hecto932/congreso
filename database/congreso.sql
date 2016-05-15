-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2016 a las 15:11:13
-- Versión del servidor: 5.5.47-0+deb8u1
-- Versión de PHP: 5.6.17-0+deb8u1

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
`id` int(11) NOT NULL,
  `name` varchar(140) NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `campus` enum('Bárbula','La Morita') NOT NULL,
  `role_id` int(11) NOT NULL,
  `rememberToken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `backusers`
--

INSERT INTO `backusers` (`id`, `name`, `email`, `password`, `campus`, `role_id`, `rememberToken`, `createdAt`, `updatedAt`) VALUES
(1, 'Hector Flores', 'hecto932@gmail.com', '786bd9a52ee9af08db5c139b86cc60533ca1c7b6', 'Bárbula', 1, NULL, '2016-04-05 00:00:00', '2016-04-06 03:44:20'),
(2, 'Williams Aranguren', 'waranguren30@gmail.com ', 'b339e6661c0d92eff6dc3154d758907246e4206d', 'Bárbula', 1, NULL, '2016-04-05 00:00:00', '2016-04-06 04:02:24'),
(3, 'Fundaprofaces', 'fundaprofacesuc@gmail.com', '396473ea96880bb54a1ad4847c335a8c0301d193', 'Bárbula', 5, NULL, '2016-04-05 00:00:00', '2016-04-06 04:03:25'),
(4, 'Académica Bárbula', 'academicabarbula@gmail.com', '03aeebf511213ae0995407be4c6601383838afcb', 'Bárbula', 2, NULL, '2016-04-08 00:00:00', '2016-04-08 13:38:15'),
(5, 'Académica Morita', 'academicamorita@gmail.com', '3dfba1066beee22cd7553ba1d6a503c561a9d4df', 'La Morita', 3, NULL, '2016-04-08 00:00:00', '2016-04-08 13:38:15'),
(8, 'Simposios - Bárbula', 'simposiobarbula@gmail.com', '03aeebf511213ae0995407be4c6601383838afcb', 'Bárbula', 6, NULL, '2016-04-11 00:00:00', '2016-04-14 23:12:03'),
(9, 'Simposios - Morita', 'simposiomorita@gmail.com', '3dfba1066beee22cd7553ba1d6a503c561a9d4df', 'La Morita', 7, NULL, '2016-04-11 00:00:00', '2016-04-14 23:12:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE IF NOT EXISTS `files` (
`id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `work_id`, `name`, `type`, `createdAt`, `updatedAt`) VALUES
(4, 22, '12_Articulo DV&AS Congreso FacesUC.docx', 'DOCX', '2016-03-25 09:11:47', '2016-03-25 13:41:47'),
(5, 23, '12_Articulo DV,AS&TC Congreso FacesUC.docx', 'DOCX', '2016-03-25 10:55:09', '2016-03-25 15:25:09'),
(6, 24, '13_El docente como modelo de cuidado en la formación de enfermería.doc', 'DOC', '2016-03-25 15:56:39', '2016-03-25 20:26:39'),
(7, 25, '14_Articulo AS y DV Congreso FacesUC.doc', 'DOC', '2016-03-26 18:36:31', '2016-03-26 23:06:31'),
(8, 27, '17_HilarionVegasPonenciaCongInternacional2016.doc', 'DOC', '2016-04-01 09:36:41', '2016-04-01 14:06:41'),
(9, 28, '18_InscripcionSimposio.docx', 'DOCX', '2016-04-01 11:35:43', '2016-04-01 16:05:43'),
(10, 29, '4_Trabajo Del Canto, Henriquez.docx', 'DOCX', '2016-04-04 09:22:59', '2016-04-04 13:52:59'),
(11, 30, '18_Inscripcion2Simposio.docx', 'DOCX', '2016-04-06 06:35:44', '2016-04-06 11:05:44'),
(12, 31, '22_Ponencia Jornadas UC 2016.docx', 'DOCX', '2016-04-07 10:33:39', '2016-04-07 15:03:39'),
(13, 32, '4_Trabajo Del Canto, Andrade, Sanchez y Torres.docx', 'DOCX', '2016-04-10 11:28:34', '2016-04-10 15:58:34'),
(15, 36, '31_La intelectualización del problema. Un aporte a la investigación en ciencias sociales.doc', 'DOC', '2016-04-18 18:30:51', '2016-04-18 23:00:51'),
(16, 37, '11_Apropiación social del conocimiento Construyendo. definitivo.doc', 'DOC', '2016-04-19 14:23:34', '2016-04-19 18:53:34'),
(17, 38, '33_PONENCIA.doc', 'DOC', '2016-04-21 11:51:08', '2016-04-21 16:21:08'),
(18, 39, '37_AGENCIAMIENTOS DE  LUDOTECAS COMUNITARIAS CONGRESO UC.docx', 'DOCX', '2016-04-23 05:51:47', '2016-04-23 10:21:47'),
(19, 40, '37_CONSTRUCCIÓN SOCIAL DE INFANCIAS AFROVENEZOLANAS EN CLAVE DESCOLONIZADORA E INTERCULTURAL CONGRESO FACES UC.docx', 'DOCX', '2016-04-23 05:59:24', '2016-04-23 10:29:24'),
(20, 41, '31_Carmen una historia de vida. Interacción con los procesos socio-económicos de la Venezuela del siglo XX.docx', 'DOCX', '2016-04-24 08:39:33', '2016-04-24 13:09:33'),
(21, 42, '39_TRABAJO CONGRESO YVONNE.docx', 'DOCX', '2016-04-24 11:51:06', '2016-04-24 16:21:06'),
(23, 47, '42_Estado de la producción científica en América del Norte.doc', 'DOC', '2016-04-25 18:39:34', '2016-04-25 23:09:34'),
(24, 48, '44_congreso 2016.docx', 'DOCX', '2016-04-25 21:32:55', '2016-04-26 02:02:55'),
(25, 49, '45_ÉXODO INTELECTUAL EN EL ÁMBITO VENEZOLANO.docx', 'DOCX', '2016-04-25 21:43:49', '2016-04-26 02:13:49'),
(26, 50, '46_MMZiegler_propuesta_CongresoUDO.pdf', 'PDF', '2016-04-27 14:48:13', '2016-04-27 19:18:13'),
(27, 51, '47_Comunicación Cabezuelo-DelValle.docx', 'DOCX', '2016-04-27 15:23:31', '2016-04-27 19:53:31'),
(28, 52, '49_inscripcion-simposio-normativa-2016 (4) (2).docx', 'DOCX', '2016-04-28 21:31:34', '2016-04-29 02:01:34'),
(29, 53, '48_Extenso Servicios de Orientación y Asesoramiento Psicologico en la UC.doc', 'DOC', '2016-04-29 08:54:34', '2016-04-29 13:24:34'),
(30, 54, '54_Extenso UC Ambiental 2016. Franklin González.doc', 'DOC', '2016-05-01 09:37:20', '2016-05-01 14:07:20'),
(31, 55, '54_Extenso UC TIC 2016. Franklin González.doc', 'DOC', '2016-05-01 09:41:22', '2016-05-01 14:11:22'),
(32, 56, '55_Trabajo Congreso de Investigación UC Diony Alvarado.docx', 'DOCX', '2016-05-01 19:21:08', '2016-05-01 23:51:08'),
(33, 57, '56_La inspección del trabajo y su relación con el diálogo social Congreso Faces 2016.doc', 'DOC', '2016-05-01 21:49:08', '2016-05-02 02:19:08'),
(34, 59, '59_DEMOCRACIA PARTICIPATIVA_ALFONSO CORDOBA.doc', 'DOC', '2016-05-02 16:22:37', '2016-05-02 20:52:37'),
(35, 60, '60_Maeva Hernández Ponencia Carabobo 2016.docx', 'DOCX', '2016-05-02 17:31:58', '2016-05-02 22:01:58'),
(36, 61, '50_Gustavo BarradasCambios(1)(1)(1)(1)(1).doc', 'DOC', '2016-05-03 02:09:59', '2016-05-03 06:39:59'),
(37, 62, '67_UCERO-PEREZ Servicio Comunitario. Develando la Alteridad en la Extensión Universitaria 05-05-16.pdf', 'PDF', '2016-05-06 10:28:26', '2016-05-06 14:58:26'),
(38, 63, '68_Ponencia 1. Joselyn N. Sanchez  B.doc', 'DOC', '2016-05-06 17:48:12', '2016-05-06 22:18:12'),
(39, 64, '69_Olga Morales. Congreso Internacional UC 2016 2.doc', 'DOC', '2016-05-06 22:18:44', '2016-05-07 02:48:44'),
(42, 69, '74_Resumen OLIVAR, J.A.doc', 'DOC', '2016-05-08 19:13:21', '2016-05-08 23:43:21'),
(43, 70, '72_Ensayo Gerencia de la Comunicación Congreso UC. A Castellanos L.docx', 'DOCX', '2016-05-09 11:03:23', '2016-05-09 15:33:23'),
(44, 72, '78_LOS ESTUDIOS CULTURALES Y LOS PROCESOS DE DESCOLONIZACIÓN DEL PENSAMIENTO.docx', 'DOCX', '2016-05-09 11:49:07', '2016-05-09 16:19:07'),
(45, 73, '75_Simposio Enfermedades Crónicas y Apoyo Familiar. Alexandra Hernández - Rodolfo Romero. UC-Sede Aragua.docx', 'DOCX', '2016-05-10 08:16:07', '2016-05-10 12:46:07'),
(46, 74, '75_Breve reseña curricular de los ponentes del simposio Enfermedades crónicas y apoyo familiar. Alexandra -Rodolfo..docx', 'DOCX', '2016-05-10 08:17:48', '2016-05-10 12:47:48'),
(47, 76, '85_Cote - Ventecourt.docx', 'DOCX', '2016-05-10 13:24:56', '2016-05-10 17:54:56'),
(48, 77, '82_Transformaciones del sistema politico en Venezuela y su impacto en las relaciones de trabajo.docx', 'DOCX', '2016-05-10 15:31:16', '2016-05-10 20:01:16'),
(49, 78, '88_el pasante en la legislación laboral venezolana.docx', 'DOCX', '2016-05-10 16:06:21', '2016-05-10 20:36:21'),
(50, 79, '87_Riesgos asociados a la función policial en Venezuela. Derechos laborales  del trabajador.doc', 'DOC', '2016-05-10 16:08:25', '2016-05-10 20:38:25'),
(51, 80, '42_propuesta de simposio Congreso 2016.docx', 'DOCX', '2016-05-10 17:49:06', '2016-05-10 22:19:06'),
(52, 81, '82_EDUCACION Y TRABAJO.docx', 'DOCX', '2016-05-10 19:19:27', '2016-05-10 23:49:27'),
(53, 82, '73_SIMPOSIO DE GENERO UC MORITA 2016.docx', 'DOCX', '2016-05-10 22:29:58', '2016-05-11 02:59:58'),
(54, 83, '11_INNOVACIÓN SOCIAL DESDE LA APROPIACIÓN SOCIAL DE LA CIENCIA Y TECNOLOGÍA A LAS REDES SOCIALISTAS DE INNOVACIÓN PRODUCTIVA DEL ESTADO ZULIA.doc', 'DOC', '2016-05-11 08:35:14', '2016-05-11 13:05:14'),
(55, 85, '32_PENSAMIENTO POLÍTICO DE LAUREANO VALLENILLA LANZ.doc', 'DOC', '2016-05-11 12:20:51', '2016-05-11 16:50:51'),
(57, 88, '79_Trabajo aguas residuales_egduin.doc', 'DOC', '2016-05-11 20:53:48', '2016-05-12 01:23:48'),
(58, 91, '100_Categorización del riesgo. Luis Manuel Briceño.doc', 'DOC', '2016-05-12 14:04:39', '2016-05-12 18:34:39'),
(59, 94, '102_El proceso de teorización en la presentación de los resultados caso comuna Luchadores Falconianos por la Patria.docx', 'DOCX', '2016-05-12 15:39:01', '2016-05-12 20:09:01'),
(60, 97, '103_Artículo Congreso Faces - Andrés Grisanti.docx', 'DOCX', '2016-05-12 18:46:55', '2016-05-12 23:16:55'),
(61, 101, '105_PONENCIA CARABOBO.docx', 'DOCX', '2016-05-12 20:17:21', '2016-05-13 00:47:21'),
(62, 102, '106_Características y necesidades del contexto - congreso FACES.docx', 'DOCX', '2016-05-13 05:56:48', '2016-05-13 10:26:48'),
(63, 103, '107_Conservar, Concienciar o Cambiar.doc', 'DOC', '2016-05-13 07:50:46', '2016-05-13 12:20:46'),
(65, 105, '109_Autora Xiomara Pacheco.docx', 'DOCX', '2016-05-13 10:58:37', '2016-05-13 15:28:37'),
(66, 106, '110_TEMA 1 CONGRESOrevisado.doc', 'DOC', '2016-05-13 13:52:35', '2016-05-13 18:22:35'),
(67, 107, '111_trabajo gerencia 1.docx', 'DOCX', '2016-05-13 14:04:40', '2016-05-13 18:34:40'),
(68, 108, '115_La influencia del positivismo en el Pensamiento Latinoamericano.doc', 'DOC', '2016-05-13 14:51:29', '2016-05-13 19:21:29'),
(69, 109, '115_La Identidad Latinoamericana en cuatro tiempos.doc', 'DOC', '2016-05-13 14:54:46', '2016-05-13 19:24:46'),
(70, 111, '116_inscripcion-simposio-normativa-2016.doc PLANILLA.docx', 'DOCX', '2016-05-13 17:08:46', '2016-05-13 21:38:46'),
(71, 112, '66_PLANIFICACIÓN PÚBLICA MUNICIPAL Y PARTICIPACIÓN CIUDADANA.docx', 'DOCX', '2016-05-13 17:43:55', '2016-05-13 22:13:55'),
(72, 113, '66_REESTRUCTURACIÓN EPISTEMOLÓGICA, DIDÁCTICA Y PEDAGÓGICA DE LA EDUCACIÓN PARA LA SUSTENTABILIDAD DESDE LA GERENCIA EDUCATIVA..doc', 'DOC', '2016-05-13 17:50:35', '2016-05-13 22:20:35'),
(73, 116, '122_articulo para congreso FACES 2016.docx', 'DOCX', '2016-05-13 21:23:25', '2016-05-14 01:53:25'),
(74, 117, '123_DESARROLLO DE LA RESPONSABILIDAD DENTRO DEL MARCO DE LA TRIBUTACION EN NIÑOS DE 3ER GRADO U. E. ESCUELA NACIONAL BÁRBULA..doc', 'DOC', '2016-05-13 22:39:00', '2016-05-14 03:09:00'),
(75, 118, '124_SIMPOSIO CULTURA DEL TRABAJO.docx', 'DOCX', '2016-05-14 06:52:28', '2016-05-14 11:22:28'),
(76, 119, '72_Sociedad de la Información, y avances en el modelo educativo venezolano.docx', 'DOCX', '2016-05-14 08:27:47', '2016-05-14 12:57:47'),
(77, 120, '125_ROSIBEL GRISANTI trabajo JUBILACIONES para CONGRESO FACES 2016.pdf', 'PDF', '2016-05-14 09:31:48', '2016-05-14 14:01:48'),
(78, 121, '126_ARTICULO FACES LA MORITA extensión Loyda,celina  ,carol.docx', 'DOCX', '2016-05-14 09:43:30', '2016-05-14 14:13:30'),
(79, 122, '127_Ponencia.docx', 'DOCX', '2016-05-14 10:35:53', '2016-05-14 15:05:53'),
(80, 123, '89_Articulo para Congreso.docx', 'DOCX', '2016-05-14 11:37:56', '2016-05-14 16:07:56'),
(81, 125, '95_Artículo científico congreso 16.docx', 'DOCX', '2016-05-14 11:50:48', '2016-05-14 16:20:48'),
(82, 126, '132_articulo cientifico  II congreso Faces  CADAVID Y PERNIA.docx', 'DOCX', '2016-05-14 14:31:20', '2016-05-14 19:01:20'),
(83, 127, '131_congreso areida.doc', 'DOC', '2016-05-14 14:31:47', '2016-05-14 19:01:47'),
(84, 128, '38_congreso Internacional FACES Odalis.docx', 'DOCX', '2016-05-14 14:32:02', '2016-05-14 19:02:02'),
(85, 129, '94_disfuncion erectil congreso faces.docx', 'DOCX', '2016-05-14 14:37:56', '2016-05-14 19:07:56'),
(86, 130, '133_proyecto bordella pertusis.docx', 'DOCX', '2016-05-14 14:59:45', '2016-05-14 19:29:45'),
(87, 131, '118_Midalys Armas Congreso 2016 JULIO.docx', 'DOCX', '2016-05-14 15:33:28', '2016-05-14 20:03:28'),
(88, 135, '130_ensayo final Descartes.docx', 'DOCX', '2016-05-14 16:50:57', '2016-05-14 21:20:57'),
(89, 136, '130_INVESTIGACIÓN DOCUMENTAL CI CON IE (1).docx', 'DOCX', '2016-05-14 16:54:26', '2016-05-14 21:24:26'),
(90, 137, '136_Trabajo Investigación Valentina Trovat.docx', 'DOCX', '2016-05-14 17:41:52', '2016-05-14 22:11:52'),
(91, 138, '132_5º articulo   II congreso CADAVID Y RODRIGUEZ UNA MIRADA DESDE LA PERSPECTIVA DEL TRABAJO NO CLÁSICO.docx', 'DOCX', '2016-05-14 18:00:53', '2016-05-14 22:30:53'),
(92, 139, '137_Las competencias investigativas en la formación docente..docx', 'DOCX', '2016-05-14 18:33:32', '2016-05-14 23:03:32'),
(93, 140, '4_Trabajo Estrategias Gerenciales FUNDAUC.docx', 'DOCX', '2016-05-14 18:40:13', '2016-05-14 23:10:13'),
(94, 143, '138_Articulo Somos Biodiversidad.doc', 'DOC', '2016-05-14 19:14:20', '2016-05-14 23:44:20'),
(95, 148, '118_Investigacion Penitenciario Midalys Armas y Juan Carlos Flores.docx', 'DOCX', '2016-05-14 21:09:07', '2016-05-15 01:39:07'),
(96, 149, '134_ponencia Luzmila Marcano,  FACES, 2016doc.doc', 'DOC', '2016-05-15 09:11:24', '2016-05-15 13:41:24'),
(97, 150, '145_trabajo para congreso inv. 2016.docx', 'DOCX', '2016-05-15 10:19:39', '2016-05-15 14:49:39'),
(98, 151, '144_art mfa.docx', 'DOCX', '2016-05-15 10:22:43', '2016-05-15 14:52:43'),
(99, 152, '146_EXTENSO CONGRESO FACES.docx', 'DOCX', '2016-05-15 10:40:46', '2016-05-15 15:10:46'),
(100, 153, '143_DIMENSIÓN SOCIOPOLÍTICA... Artículo.docx', 'DOCX', '2016-05-15 10:42:51', '2016-05-15 15:12:51'),
(101, 154, '147_art rosiris.docx', 'DOCX', '2016-05-15 10:50:17', '2016-05-15 15:20:17'),
(102, 157, '43_Una revisión bibliográfica del origen de las Economías de Aglomeración y su aporte para la generación de.docx', 'DOCX', '2016-05-15 12:28:41', '2016-05-15 16:58:41'),
(103, 158, '43_inscripcion-simposio-normativa-2016 (1).docx', 'DOCX', '2016-05-15 12:35:10', '2016-05-15 17:05:10'),
(104, 159, '149_RESUMEN Y EXTENSO ARTICULO CONGRESO INTER DE INV FACES 2016 VICENTA docx.docx', 'DOCX', '2016-05-15 12:38:37', '2016-05-15 17:08:37'),
(105, 160, '43_inscripcion-simposio-normativa-2016 (2).docx', 'DOCX', '2016-05-15 12:43:35', '2016-05-15 17:13:35'),
(106, 161, '150_articulo sobre reflexion en el aprendizaje.Congreso 2016.docx', 'DOCX', '2016-05-15 12:51:08', '2016-05-15 17:21:08'),
(107, 163, '152_PONENCIA UC.dot', 'DOC', '2016-05-15 14:07:00', '2016-05-15 18:37:00'),
(108, 164, '153_Resumen_GuayanaUCAB_BLAS BRUZUAL_2016.docx', 'DOCX', '2016-05-15 14:27:01', '2016-05-15 18:57:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `numberReference` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` enum('Por verificar','Conforme','No conforme') NOT NULL,
  `work_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `bank`, `numberReference`, `amount`, `status`, `work_id`, `createdAt`, `updatedAt`) VALUES
(17, 17, 'Banco PROVINCIAL', '91123179', '1950', 'Por verificar', 27, '2016-04-12 09:53:45', '2016-04-12 14:23:45'),
(19, 44, 'BOD ', 'TR0007745866', '1950', 'Por verificar', 48, '2016-04-25 21:41:32', '2016-04-26 02:11:32'),
(20, 48, 'Banco Occidental de Descuento CA', '02884280', '1950', 'Por verificar', 53, '2016-04-29 08:55:13', '2016-04-29 13:25:13'),
(22, 50, 'BOD', 'O473177107', '1950', 'Por verificar', 61, '2016-05-03 02:11:10', '2016-05-03 06:41:10'),
(23, 54, 'BOD', '0473256445', '1950', 'Por verificar', 54, '2016-05-06 11:14:33', '2016-05-06 15:44:33'),
(24, 85, 'Banco Banesco', '5845573290', '1950', 'Por verificar', 76, '2016-05-10 13:27:11', '2016-05-10 17:57:11'),
(25, 11, 'BANCO OCCIDENTAL DE DESCUENTO', 'TR0008937820', '1950', 'Por verificar', 37, '2016-05-11 08:47:23', '2016-05-11 13:17:23'),
(26, 99, 'BOD', '0009056731', '1950', 'Por verificar', 89, '2016-05-12 13:13:42', '2016-05-12 17:43:42'),
(27, 108, 'BANCO PROVINCIAL ', '94686443', '1950', 'Por verificar', 32, '2016-05-13 07:41:29', '2016-05-13 12:11:29'),
(28, 109, 'BOD', '457869551', '1950', 'Por verificar', 105, '2016-05-13 10:59:20', '2016-05-13 15:29:20'),
(29, 95, 'Banco Occidental de Descuento C.A, BOD', '27134129', '1950', 'Por verificar', 125, '2016-05-14 11:57:34', '2016-05-14 16:27:34'),
(30, 94, 'Banco de Venezuela', '27286794', '1950', 'Por verificar', 129, '2016-05-14 14:53:36', '2016-05-14 19:23:36'),
(31, 133, 'banco mercantil', '0052300498105', '1950', 'Por verificar', 130, '2016-05-14 15:00:56', '2016-05-14 19:30:56'),
(32, 130, 'Banco Provincial', '94865580', '3900', 'Por verificar', 136, '2016-05-14 16:56:32', '2016-05-14 21:26:32'),
(33, 126, 'BANCO MERCANTIL', '0052300505426', '1950', 'Por verificar', 121, '2016-05-14 19:10:48', '2016-05-14 23:40:48'),
(34, 145, 'Banesco', '5858305434', '1950', 'Por verificar', 150, '2016-05-15 10:20:25', '2016-05-15 14:50:25'),
(35, 149, 'Banco Occidental de Descuento BOD', '455793805', '1950', 'Por verificar', 159, '2016-05-15 12:42:57', '2016-05-15 17:12:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(11) NOT NULL,
  `name` varchar(140) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Administrador'),
(2, 'Arbitro - Bárbula'),
(3, 'Arbitro - La Morita'),
(4, 'Participante'),
(5, 'Fundaprofaces'),
(6, 'Simposios - Bárbula'),
(7, 'Simposios - La Morita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
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
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `image`, `lastName`, `name`, `ci`, `phone`, `email`, `university`, `school`, `password`, `rememberToken`, `createdAt`, `updatedAt`) VALUES
(3, '3_IMG_7452.JPG', 'Aranguren Álvarez', 'Williams Jesús', '9119983', '04242619897', 'waranguren30@gmail.com', 'Universidad de Carabobo', 'ACCP', 'eba1f1b558f7a4855eac1936c2fd2659721c9569', NULL, '2016-03-15 19:07:01', '2016-03-15 23:37:01'),
(4, NULL, 'DEL CANTO', 'ERO', '16245882', '04144351279', 'edelcanto19@yahoo.es', NULL, NULL, '7c222fb2927d828af22f592134e8932480637c0d', NULL, '2016-03-14 20:09:33', '2016-03-15 00:39:33'),
(5, '5_IMG_20150723_213217.jpg', 'Cordero Borjas', 'Ana Emilia', '13323745', '04164490699', 'aecorder@gmail.com', NULL, NULL, 'ebacab3ca4a5e47d5e1c07bb59eb0406b9d7a799', NULL, '2016-03-14 21:22:32', '2016-03-15 01:52:32'),
(6, NULL, 'Inciarte', 'Angela', '16709913', '04246177778', 'asig31@gmail.com', NULL, NULL, 'd5c3268d393a2f50ba31e76766b0d95efb560da1', NULL, '2016-03-15 09:16:47', '2016-03-15 13:46:47'),
(7, NULL, 'Sarkis Bathani', 'Marlena', '10965197', '04168496266', 'makysagm@hotmail.com', NULL, NULL, '76c8364f6bfce83b86f1ea73eb6b69e5a9ad757e', NULL, '2016-03-17 15:25:53', '2016-03-17 19:55:53'),
(9, '9_foto barlin.jpg', 'Olivares Campos', 'Barlin Orlando', '17799306', '+584243173568', 'barlinolivares@gmail.com', 'Universidad de Córdoba (España)', 'Doctorado en Agroalimentación', 'e1933306bb269ecc7b466a6cba27d57c901eebf2', NULL, '2016-03-18 12:16:56', '2016-03-18 16:46:56'),
(11, '11_10632840_1645411025680922_925332899795459140_n.jpg', 'Calanchez Urribarri', 'Africa del Valle', '11454790', '04124277346', 'calanchezafrica@gmail.com', '', '', '3f261873ac0f8cc061ba9242fe27024bb8abb9af', NULL, '2016-03-24 20:54:11', '2016-03-25 01:24:11'),
(12, NULL, 'VERENZUELA BARROETA', 'DANIEL ANTONIO', '16658767', '04144905876', 'danielvb_cp@hotmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública, Campus La Morita', '694965ac3d0e9b5e708567c149bc2953a5a89f7c', NULL, '2016-05-12 15:41:28', '2016-05-12 20:11:28'),
(13, NULL, 'Mejías', 'Marianela', '6322577', '04163336588', 'nelamejias@hotmail.com', 'Universidad de Carabobo', 'Enfermería', 'e865517978ea15a8277f52b2588a0d7f9267e0ae', NULL, '2016-03-25 15:55:21', '2016-03-25 20:25:21'),
(14, NULL, 'Salas Hernández', 'Adrián José', '16509162', '02435541447', 'ash3000_3@hotmail.com', NULL, NULL, '11b568a1a361946869d5795fc05f71e25d49620c', NULL, '2016-03-26 18:33:59', '2016-03-26 23:03:59'),
(15, NULL, 'Rodriguez', 'rosselys', '14625030', '04265192609', 'rosselysr2@gmail.com', NULL, NULL, '7c222fb2927d828af22f592134e8932480637c0d', NULL, '2016-03-28 00:52:50', '2016-03-28 05:22:50'),
(16, NULL, 'Teran', 'Anyelys', '19466987', '04261391318', 'anyelys_491@hotmail.com', NULL, NULL, '0415160ed03c878ddd9ef764142e7f3e4e1626db', NULL, '2016-03-31 22:32:26', '2016-04-01 03:02:26'),
(17, '17_HilaDr.jpg', 'Vegas Meléndez', 'Hilarión José', '6424671', '04144336038', 'hvegasm@gmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública', '35110f88f059ccaf15b43ec2b3c798dc0933ee95', NULL, '2016-04-01 09:39:36', '2016-04-01 14:09:36'),
(18, NULL, 'González Bello', 'Julio R.', '2789422', '04144342891', 'juliogonzalez47@gmail.com', NULL, NULL, '1d5d9ab7b033f6f1cf4ff368591455da7eac9fb8', NULL, '2016-04-01 11:31:22', '2016-04-01 16:01:22'),
(19, '19_1471152_10208056414150779_7800676748496067593_n.jpg', 'Delgado Delgado', 'Carlos Eduardo', '22285173', '04121305766', 'carlos_delgado26@hotmail.com', 'Universidad de carabobo', 'Contaduria Publica', '6d669bb29fcdae5233b2977930daefde0e85d07c', NULL, '2016-04-04 12:45:45', '2016-04-04 17:15:45'),
(20, NULL, 'FONSECA DEMEY', 'ALEXANDER RAFAEL', '23680277', '04246275113', 'ARFD2803@GMAIL.COM', 'UNEFA', 'ECONOMÍA', '746d00f1edc515c742355ec7327ec3aa7efaab48', NULL, '2016-04-04 15:16:54', '2016-04-04 19:46:54'),
(21, NULL, 'MALDONADO', 'VERGMAR', '5620471', '04141497847', 'abgvergmaldonado@gmail.com', NULL, NULL, '3c9f9ebf935a229611785c4ea1a0e3ab0eacfb87', NULL, '2016-04-06 23:05:55', '2016-04-07 03:35:55'),
(22, NULL, 'Guillén Mujica', 'Alejandro', '6140304', '04144602107', 'alejandro.guillen@ucv.ve', NULL, NULL, '9f4cea856ddeed4f5ae139d727ce1e53fc2869cb', NULL, '2016-04-07 10:30:44', '2016-04-07 15:00:44'),
(23, NULL, 'GUARATE', 'YEISY', '10252830', '04124067495', 'ycguarate@hotmail.com', NULL, NULL, 'a049b9895cc8d0830dcd5492ac7dc29632b0e3a2', NULL, '2016-04-08 13:32:49', '2016-04-08 18:02:49'),
(24, NULL, 'Arana Mora', 'José Jesús', '13027572', '04263671803', 'coordinacionpedagogica.cem@gmail.com', NULL, NULL, '559eaa4a0e1d68b64cc555552b5a75aeb0c73a3a', NULL, '2016-04-09 15:06:58', '2016-04-09 19:36:58'),
(25, NULL, 'Acosta Sanchez', 'Emilio Ramón', '11 687 743', '04243454727', 'filosofemi@gmail.com', 'Universidad Pedagógica Experimental Libertador', '', '94cf2c2dce3c36e096c3906ed75d71d6f2a81a27', NULL, '2016-04-10 18:30:15', '2016-04-10 23:00:15'),
(26, NULL, 'Monagas Márquez', 'Eva Elena', '6122881', '584141452619', 'evamonagas@gmail.com', 'Universidad de Carabobo', 'Electrica', 'fdbb5599b43b8385bf9a8e0f52c7e10abf0e6e3f', NULL, '2016-04-11 12:03:16', '2016-04-11 16:33:16'),
(27, '27_2015_foto_cvitae_liy.jpg', 'Guedez Blanco', 'Liyeira J.', '7106789', '04163307645', 'liyeiraguedez@gmail.com', 'Universidad de Carabobo - Universidad Arturo Michelena', 'UC: Dirección de Estudios Generales - UAM Administración Comercial y Contaduría Pública ACCP', '160a15591918885a069d5e93a5f0a3c36b2a7de8', NULL, '2016-04-15 18:12:46', '2016-04-15 22:42:46'),
(28, '28_DSC06712.JPG', 'Chapardi Cárdenas', 'Nancy Duvraska', '9688577', '04124447786', 'nancychapardi@gmail.com', 'Universidad de Carabobo', 'Escuela de Administración Comercial y Contaduría Pública', '4b2ee3597f9b160eda2124af23c960fd871ab1f3', NULL, '2016-04-17 21:19:02', '2016-04-18 01:49:02'),
(29, NULL, 'Knuth Montes', 'Carla Cecilia', '12754829', '04266417490', 'carlaknuth@gmail.com', NULL, NULL, 'f2f28697720e0f6e9b5941df0ce2a210d8daeac3', NULL, '2016-04-17 23:22:00', '2016-04-18 03:52:00'),
(30, NULL, 'Gomez', 'Rosalinda', '15651959', '04243569460', 'rosalindagomez_impuestos@hotmail.com', NULL, NULL, 'a655bc5c4d69c71cec87bef08c64fa45df76dc93', NULL, '2016-04-18 11:39:15', '2016-04-18 16:09:15'),
(31, NULL, 'Tovar', 'Belkis Zoraida', '3577957', '04144280469', 'belkistovar10@gmail.com', NULL, NULL, '499c0c73a241b99e994ad0701a679f7730785278', NULL, '2016-04-18 18:01:51', '2016-04-18 22:31:51'),
(32, NULL, 'Maldonado Ruiz', 'Edgar Alfonso', '14908914', '04142827693', 'edgarucv@gmail.com', 'Universidad Central de Venezuela ', 'Escuela de Historia ', 'cb8dde3d368b1eddd8aac5ce4cf6a9aaa555e639', NULL, '2016-05-11 10:10:55', '2016-05-11 14:40:55'),
(33, NULL, 'GALLARDO CALCURIAN', 'RAFAEL ARTURO', 'V-4114286', '04142636519', 'rafaelgallardo54@hotmail.com', NULL, NULL, '56e7d3b13845ff2b2092317a0aa5c381aaa199ec', NULL, '2016-04-21 11:47:16', '2016-04-21 16:17:16'),
(34, NULL, 'TOVAR ZERPA', 'DINOSKA', '8543060', '04144354789', 'dinoskatovar1@hotmail.com', 'UNIVERSIDAD CARABOBO', '', '6671bac9b86fefecdb28aad59ff68fe9966e7980', NULL, '2016-04-22 01:11:53', '2016-04-22 05:41:53'),
(35, NULL, 'Walls Ramirez', 'María Francisca', '13694714', '04241517190', 'anaclavel14@gmail.com', NULL, NULL, 'f0dcadffb90b230b0608eb54b631314b4870a3c7', NULL, '2016-04-22 20:30:10', '2016-04-23 01:00:10'),
(36, NULL, 'ARASME SALAS', 'CARMEN KARINA', '7943291', '04144327489', 'karasme@gmail.com', NULL, NULL, '04ab903b4c36a3d8d644f7e83e6a13ba07214a07', NULL, '2016-04-22 23:01:02', '2016-04-23 03:31:02'),
(37, NULL, 'MARQUEZ', 'ANA', 'Valencia', '04144166191', 'aimarquez2002@yahoo.com', NULL, NULL, '8383251b0aa6c6a7a94545d96ba61202f245c130', NULL, '2016-04-23 05:33:50', '2016-04-23 10:03:50'),
(38, '38_1460169402720.jpg', 'Ramírez Cuicas', 'Odalis', '17613537', '0412349724', 'odalis_ramirezc@hotmail.com', 'Universidad de Carabobo', 'Odontología', 'bb1f4af1426b82338853ddfc69f26ae11f1e7d65', NULL, '2016-04-24 09:48:31', '2016-04-24 14:18:31'),
(39, NULL, 'Pino', 'Yvonne', '10341694', '04145896996', 'yvonnepino@gmail.com', NULL, NULL, 'b342a21b6ca11f45595dad2f2be808d97972e8a8', NULL, '2016-04-24 11:48:54', '2016-04-24 16:18:54'),
(41, NULL, 'Mora Contreras', 'César Enrique', '11.469.894', '0426-2722832', 'moracesar@gmail.com', NULL, NULL, '09e31afef4bf7c3d6742d5c0991baa9222e2b4de', NULL, '2016-04-24 20:53:19', '2016-04-25 01:23:19'),
(42, NULL, 'Lorenzo', 'Cristina', 'Naguanagua', '+584144087835', 'cristi_lova@hotmail.com', NULL, NULL, 'b6410bae09152ca4ed1cbdf35cb733a86bed21af', NULL, '2016-04-25 18:34:37', '2016-04-25 23:04:37'),
(43, '43_p1010459.JPG', 'LOZADA PACHECO', 'LUIS JOSÉ', 'V-. 12.121.200', '04145962910', 'LOZADA.LUIS@GMAIL.COM', 'UC/ FACES', 'ECONOMÍA', '6535cf87693721d8c430a444f7e5b8552567474b', NULL, '2016-05-15 12:41:30', '2016-05-15 17:11:30'),
(44, NULL, 'SALAME', 'IPTISAM', '11054433', '04144302443', 'iptissamsalame@hotmail.com', NULL, NULL, '188a08da6e877c9e4ff58cecf0d883409f1bf644', NULL, '2016-04-25 21:24:57', '2016-04-26 01:54:57'),
(45, NULL, 'Suárez Montoya', 'Belkys Coromoto', '8136329', '04143585898', 'bsuarez17@hotmail.com', NULL, NULL, 'dc3a4a2bb7cd21bdb642b6b8f29009bb1be7f9a0', NULL, '2016-04-25 21:36:42', '2016-04-26 02:06:42'),
(46, '46_Me01.jpg', 'Ziegler Delgado', 'Maria Magdalena', '10282600', '0412-3015994', 'mziegler@unimet.edu.ve', '', '', '0e3f8b673addb201ebddb887ec7de3e6cf696597', NULL, '2016-04-27 14:48:39', '2016-04-27 19:18:39'),
(47, '47_FOTO DELVALLE.JPG', 'Del Valle Mejías', 'María Elena', '6516751', '04143141009', 'mvillalba@unimet.edu.ve', '', '', '34b6b8fff2c3e31f5632916374b7ed42f95b8345', NULL, '2016-04-27 15:11:08', '2016-04-27 19:41:08'),
(48, NULL, 'Guevara', 'Lilian', '4872525', '04141424373', 'p.rio.v@hotmail.com', 'Universidad de Carabobo', '', 'a465f978d14c37b6a6eeccb16392cdd2e808d9a4', NULL, '2016-04-29 09:12:00', '2016-04-29 13:42:00'),
(49, NULL, 'GONZALEZ MORENO', 'MARIA CRISTINA', '5602563', '04243255159', 'mariacegonzalez60@gmail.com', NULL, NULL, 'ad7c941a90f5108defd1f7b1512ac1c2ebc319e9', NULL, '2016-04-28 21:17:38', '2016-04-29 01:47:38'),
(50, '50_20121222_110239.jpg', 'Barradas Linares', 'Gustavo Edsel', '9557480', '04145288705', 'gustavo.barradas1@gmail.com', 'Destilerías Unidas, S.A  (DUSA) y Sucesora de Ramón R Leal & Cía, C.A (SUCRA)', 'Gerencia Corporativa y Relaciones Interinstitucionales', '0ba9fbf4c9f132ffd9a13a75f9fcf7e9eb70300d', NULL, '2016-05-03 02:24:03', '2016-05-03 06:54:03'),
(51, NULL, 'Medina', 'Rangel', '9695985', '04166431012', 'mailynmedina06@gmail.com', NULL, NULL, '450854957a3e3ea5a0accb58b63909c7df376d77', NULL, '2016-04-30 13:38:47', '2016-04-30 18:08:47'),
(52, NULL, 'RODRIGUEZ NORIEGA', 'YAJAIRA JOSEFINA', '4858403', '04143418038', 'ciaecisuc@gmail.com', NULL, NULL, '98333c5817e0dade591d472d2bb343d6f1ade272', NULL, '2016-05-01 06:54:27', '2016-05-01 11:24:27'),
(53, NULL, 'Gómez López', 'Andreina Gabriela', '19789604', '0412-0432837', 'andregaby1@hotmail.com', NULL, NULL, '4c997f02da98adfa84ef00ca17e632206165d612', NULL, '2016-05-01 09:11:22', '2016-05-01 13:41:22'),
(54, NULL, 'GONZALEZ CHACON', 'FRANKLIN DARIO', '11504452', '04144514433', 'fdarryo@yahoo.com', NULL, NULL, '789ed5a4101ffe51c5355887e713f3a7238a9e5e', NULL, '2016-05-01 09:30:23', '2016-05-01 14:00:23'),
(55, '55_foto.png', 'Alvarado Pinto', 'Diony José', '12316629', '04168418485', 'diony_alvarado@hotmail.com', '', '', '5540fb2e71deaf792af855f3bd481af29e117669', NULL, '2016-05-01 19:24:32', '2016-05-01 23:54:32'),
(56, NULL, 'Pernia Hoyo', 'Nuvia del Carmen', '12772595', '04121411320', 'nuviaph@hotmail.com', NULL, NULL, '4f5e0ae2ad32b6767c0d806772dad36d7adc5d0f', NULL, '2016-05-01 21:38:46', '2016-05-02 02:08:46'),
(58, NULL, 'SAMARIN PEROZO', 'JEIZIEL ANAZMAVETH', '22952045', '04144553470', 'jeizielsamarin@gmail.com', 'UNIVERSIDAD DE CARABOBO', 'CONTADURIA PUBLICA', '1c5e6cca1fc0344844b4f4e924dfe7de36d3a1e0', NULL, '2016-05-02 09:36:48', '2016-05-02 14:06:48'),
(59, NULL, 'Córdoba Baviera', 'Alfonso', 'E-84.584.391', '04243423596', 'cordobabaviera@gmail.com', 'Universidad Arturo Michelena', 'Comunicación Social', '25b1323d8b15e8088f0aff034b0ef92aa37ec551', NULL, '2016-05-02 16:23:20', '2016-05-02 20:53:20'),
(60, NULL, 'Hernández Pereira', 'Maeva Elena', '5589165', '04261197693', 'maevaunefa2012@gmail.com', 'UNEFA', 'Educación', 'faf02d9cf389331585857e2d652eb10c8c36558e', NULL, '2016-05-02 17:25:01', '2016-05-02 21:55:01'),
(61, NULL, 'Flores', 'Hector', '20162504', '+584127762882', 'hecto932@gmail.com', NULL, NULL, '786bd9a52ee9af08db5c139b86cc60533ca1c7b6', NULL, '2016-05-02 18:32:20', '2016-05-02 23:02:20'),
(62, '62_Avatar.jpg', 'Mendoza', 'Jose', '16502197', '04145858378', 'jluismendoza@gmail.com', 'Universidad De Carabobo', '', '55b6af1976380ac370751d66e461d3c73b80a4c1', NULL, '2016-05-03 11:49:34', '2016-05-03 16:19:34'),
(63, NULL, 'Salcedo Medina', 'Aurora Celina', 'V14514791', '04140455180', 'auroracsm50@gmail.com', NULL, NULL, '25edfc3e80ab1bb4f6aa53f5236d663e3cf9b15e', NULL, '2016-05-03 18:26:34', '2016-05-03 22:56:34'),
(64, '64_FotoCarnet.jpg', 'DIAZ', 'ESMEYA', '4246181', '04144266317', 'esmeya.diazm@gmail.com', 'Universidad de Carabobo / INFACES', '', 'ea237870d106b40c9c4b9bc1016e9d3129d962bf', NULL, '2016-05-04 11:34:07', '2016-05-04 16:04:07'),
(65, NULL, 'Perez', 'Roxy Rusbely', '14572124', '04169011053', 'yxor13@gmail.com', NULL, NULL, '227f6390ef2ac5e0e1f4dcaefd8705a371b52264', NULL, '2016-05-04 11:38:27', '2016-05-04 16:08:27'),
(66, '66_12342553_10153438136278732_1114878134052833778_n.jpg', 'Rodriguez Faria', 'José Jesús', '20294377', '04129400662', 'jose_rodriguez_108@hotmail.com', '', 'Escuela de Derecho', 'c7a85ff8f25c2e60399af514812b49204729956f', NULL, '2016-05-13 17:58:01', '2016-05-13 22:28:01'),
(67, NULL, 'Ucero Bravo', 'Carmen Teresa', '9661661', '0424-3362000', 'uceroctb@gmail.com', NULL, NULL, 'ec4d1e173a233b992e966fe4ec9b38402b90a6d7', NULL, '2016-05-06 10:08:50', '2016-05-06 14:38:50'),
(68, NULL, 'Sánchez Bastidas', 'Joselyn Nathaly', '21256339', '04263289098', 'joselyn_nathaly@hotmail.com', NULL, NULL, '283b3f80b5e0e63acac3516e6caf191aa98a0f86', NULL, '2016-05-06 17:09:24', '2016-05-06 21:39:24'),
(69, '69_foto.jpg', 'Morales-Barrios', 'Olga', '10659605', '+58 426 5906866', 'olgamorales74@hotmail.com', 'Universidad Nacional Experimental de Guayana', 'Departamento de Organización y Gerencia', '621a4b994fa435568eb5270e4484dadebcc84375', NULL, '2016-05-06 22:14:10', '2016-05-07 02:44:10'),
(70, NULL, 'gonzález', 'vivian', '4454902', '04166412757', 'vivian1412@gmail.com', NULL, NULL, '72446911c87ffc248878a33c8daf17ea27339652', NULL, '2016-05-07 05:17:01', '2016-05-07 09:47:01'),
(71, NULL, 'SILVA SILVA', 'ALICIA ELENA', '9519631', '04144394035', 'silvalicia@gmail.com', NULL, NULL, 'bb6de53ec8c81f4dcef24b54a561aa2934c241f5', NULL, '2016-05-07 09:01:01', '2016-05-07 13:31:01'),
(72, NULL, 'Castellanos López', 'José Alexander', '7174872', '04144825516', 'alxcastellanos@hotmail.com', 'Universidad de Carabobo', 'Postgrado FACES', '58ca85ef0f0b39003e349e7c3aae2f44b188a012', NULL, '2016-05-07 19:29:14', '2016-05-07 23:59:14'),
(73, NULL, 'Baeta De Sousa', 'Maria Fatima', '9661810', '04124421310', 'fatima_baeta@yahoo.com', 'Universidad de Carabobo Sede Aragua', 'Bioanálisis', 'b773ea323e3181d47f3a56cbcb2871ac110376c3', NULL, '2016-05-07 21:17:58', '2016-05-08 01:47:58'),
(74, NULL, 'OLIVAR PEREZ', 'JOSE ALBERTO', '12296463', '04129734269', 'josealbertolivarp@usb.ve', NULL, NULL, '1161b93ea36e76398d8ffd468d4c6ae0dc667c10', NULL, '2016-05-08 19:11:25', '2016-05-08 23:41:25'),
(75, NULL, 'Hernández Piñero', 'Alexandra Josefina', '12855821', '04124360724', 'alexajhp@yahoo.es', 'Universidad de Carabobo - Doctorado en Salud Pública - Sede Aragua', 'Medicina "Witremundo Torrealba"', 'e7edc387223f545e1b61d869441b299a956a7a63', NULL, '2016-05-10 08:19:09', '2016-05-10 12:49:09'),
(76, NULL, 'RAMIREZ HEREDIA', 'JOSE ALEJANDRO', '12339999', '04120437123', 'ramirezheredia@hotmail.com', NULL, NULL, 'afbaa73a17e0155ab49b420004307d8a90911d64', NULL, '2016-05-09 10:42:58', '2016-05-09 15:12:58'),
(77, NULL, 'montserrat arellan', 'juan orlando', '12902876', '04244369962', 'juan.montserrat@gmail.com', NULL, NULL, '3fa78d634f1c6bf26edcdd082553b4eae705c33f', NULL, '2016-05-09 10:43:18', '2016-05-09 15:13:18'),
(78, '78_388109_2850143253088_1009308264_n.jpg', 'Seijas Nieves', 'Eudel irene', '13470903', '0412 3412061', 'eudel.seijas@gmail.com', 'Universidad de Carabobo / Facultad de Ciencias de la Salud', 'Escuela de Salud Pública y Desarrollo Social', 'a0783e1eb761592c1f3d1159930fa44cb6001b97', NULL, '2016-05-09 11:58:51', '2016-05-09 16:28:51'),
(79, '79_FOTO_EGDUIN_ACTUAL.jpg', 'Veliz Lovera', 'Egduin Gabriel', '9692791', '04168486099', 'egduinveliz@gmail.com', '', 'Administración y Contaduría publica', 'e0cd1a5b48ce0293f949ff15b37e0767190c6e4e', NULL, '2016-05-09 13:44:12', '2016-05-09 18:14:12'),
(80, NULL, 'HILEVSKI', 'SAMUEL', '20081725', '04144084846', 'samyhilevski@gmail.com', NULL, NULL, 'eea11fa1da0cbe8b38258d18bdcde38687f92aa7', NULL, '2016-05-09 15:06:33', '2016-05-09 19:36:33'),
(81, NULL, 'Smith Ibarra', 'Edgar Rolando', '3998375', '00584144123134', 'rolandosmith@hotmail.com', NULL, NULL, 'ea14985440de0842ebf60dc279b47c19f490f949', NULL, '2016-05-09 18:25:35', '2016-05-09 22:55:35'),
(82, '82_IMG_20141216_133035.jpg', 'DIAZ FUENMAYOR', 'ANGELA ADRIANA', '15977940', '04144767671', 'angelafuenmayorrm82@outlook.com', 'UNIVERSIDAD DE CARABOBO', '', '4fbe7e2811c26be5ad98451221dc18375fdd677d', NULL, '2016-05-10 15:48:10', '2016-05-10 20:18:10'),
(83, NULL, 'Malpica', 'Alida', '3602848', '0414-4204382', 'alidamalpica@hotmail.com', 'Universidad de Carabobo', 'Educación', '4ccc8158635d4a9a72cd67a38ffdaed1ca80d62e', NULL, '2016-05-09 20:42:14', '2016-05-10 01:12:14'),
(84, NULL, 'Fernández Tortolero', 'Carlina Rosalí', '16405870', '04143584549', 'carlinaf@gmail.com', NULL, NULL, '7b333b7b0224ab28bee29f0ed5d83c7f82743588', NULL, '2016-05-10 08:24:10', '2016-05-10 12:54:10'),
(85, '85_Cote 2016.jpg', 'Cote Zuloaga', 'Marilys Tibisay', '10152739', '04144180880', 'cotema2003@yahoo.com', '', '', '5cc81139942139e4e25b01ad4eef82ee4213bcec', NULL, '2016-05-10 13:12:40', '2016-05-10 17:42:40'),
(86, '86_Imagen1.jpg', 'PEREZ VELASQUEZ', 'WITHEY ERNESTO', '19010913', '04124911534', 'withey02@hotmail.com', 'UNIVERSIDAD DE CARABOBO', '', '9a4f1d56d826a5d2d41213f6d13c8ebcc8ce263c', NULL, '2016-05-15 09:25:22', '2016-05-15 13:55:22'),
(87, '87_21777_285913248203502_1138963949_n.jpg', 'Salvatierra Iriarte', 'Marlin Lilian Coromoto', '15831914', '04126349828', 'msalvatierra@usb.ve', 'Universidad Simón Bolívar ', 'Departamento de Tecnología de Servicios ', 'bd225d3e6a954642f278c11017d195f91c38569b', NULL, '2016-05-10 15:41:54', '2016-05-10 20:11:54'),
(88, '88_Samsung 2015-16 1045.jpg', 'Guevara', 'Maria', '13043745', '04165336583', 'guevaram@usb.ve', 'Universidad Simón Bolívar', 'Departamento de Tecnología de Servicio', '03cd20824d44e108b52628e4a601d307af81c256', NULL, '2016-05-10 16:04:28', '2016-05-10 20:34:28'),
(89, NULL, 'Quintini Rodríguez', 'Gustavo José', '19468879', '02432378139', 'quintinigj@gmail.com', NULL, NULL, 'd1de9fa4ef5f65a149622a443672251bc95ca936', NULL, '2016-05-10 18:18:13', '2016-05-10 22:48:13'),
(90, NULL, 'Manrique Hernandez', 'Yuridia Celestina', '14463080', '04124887644', 'yuri-mh@hotmail.com', '', 'Educación', 'c2656a1377471dc0837e95311cd9154bdda95e4a', NULL, '2016-05-11 10:48:07', '2016-05-11 15:18:07'),
(91, NULL, 'Fuentes Chaparro', 'Jonny Alberto', '9647261', '04128521568', 'jafc65@gmail.com', NULL, NULL, '2ddba75397279deb875274fd3f84f6dd728cbe6f', NULL, '2016-05-11 11:22:56', '2016-05-11 15:52:56'),
(92, '92_IMG_20160410_082616.jpg', 'Diaz Restrepo', 'Martha Cecilia', 'V 8605010', '04121302002', 'thamar688@hotmail.com', 'Universidad de Carabobo', 'Salud Pública y Desarrollo Social', 'd67a75d36bdf8638546bbdc11fb725d4c977caf8', NULL, '2016-05-11 16:28:51', '2016-05-11 20:58:51'),
(93, NULL, 'Hernández Núñez', 'Yepsaly', '12375386', '04142488121', 'hernandeznunez@gmail.com', NULL, NULL, '149ec00ad5f79d04319d97ff9552497ddce35f0a', NULL, '2016-05-11 17:24:51', '2016-05-11 21:54:51'),
(94, NULL, 'Baldallo Perez', 'Maria de la Coromoto', '21139223', '04144270581', 'mcbaldallo@gmail.com', NULL, NULL, 'ae7ea7b2f417efc1e006fa0bbd8f153974faa08f', NULL, '2016-05-11 17:50:37', '2016-05-11 22:20:37'),
(95, '95_Foto Perfil Rodolfo.png', 'Montoya Orasma', 'Ángel Rodolfo', '04127707539', '02418134326', 'angelrodolfo75@gmail.com', 'Universidad de Carabobo', 'Ciencias económicas y sociales', 'a22e0c327dce8ade9490a26007841205eeedeea5', NULL, '2016-05-14 11:45:33', '2016-05-14 16:15:33'),
(96, '96_Foto NMMT.jpg', 'Meléndez Torres', 'Neptalí', 'Barquisimeto', '4245352552', 'neptalimelendez@ucla.edu.ve', 'UCLA-Venezuela', 'Ingenieria Civil', '86c54e449223f291e270997d81fa961e161c7fc2', NULL, '2016-05-12 12:03:41', '2016-05-12 16:33:41'),
(97, '97_IMG_0059 copia.jpg', 'Escalona Romero', 'Miguel Antonio', '9435823', '04144576490', 'miguel226813a@gmail.com', 'Universidad de Carabobo', 'Administración Comercial  y Contaduría Pública', '9b87f95dbe665faaff6fcb0b6537d79b4349e3bb', NULL, '2016-05-12 12:25:35', '2016-05-12 16:55:35'),
(98, '98_IMG_0078 copia.jpg', 'Rumbos', 'Leisy Elena', '1023084', '04265333978', 'leisy_elena@hotmail.com', 'Universidad Bicentenaria de Aragua ', 'Contaduría', 'b1eeeb370e9e89d2bc2fd428c9293a7034d84ab2', NULL, '2016-05-12 12:39:15', '2016-05-12 17:09:15'),
(99, NULL, 'ROQUIZ OJEDA', 'MARGIORY ELENA', '11815965', '04168480730', 'Margiorye@gmail.com', '', '', '66217dce98ecb185459955526d30d8ad9c2f8184', NULL, '2016-05-12 18:58:39', '2016-05-13 22:25:36'),
(100, '100_Luis Manuel.jpg', 'Briceño Jaramillo', 'Luis Manuel', '20768643', '04121048468', 'lui-sbriceo29@hotmail.com', '', '', 'ce6cade7d3f31c19007256bd8951e90bd167a3b4', NULL, '2016-05-12 14:01:26', '2016-05-12 18:31:26'),
(101, NULL, 'DIAZ', 'JAIME', '19218778', '04123466571', 'jaime_lider_13@hotmail.com', NULL, NULL, '387237d2d11676f65be1c5dfdfcb3ce43bfcbace', NULL, '2016-05-12 14:12:35', '2016-05-12 18:42:35'),
(102, NULL, 'Chirino Ferrer', 'Cristina Del Valle', '13724789', '04265659272', 'cristinachirino@yahoo.com', NULL, NULL, '6b4e331daf8bcef0df9720e728a544d06bac0ddb', NULL, '2016-05-12 15:32:04', '2016-05-12 20:02:04'),
(103, '103_Foto Andrés Grisanti.png', 'Grisanti Belandria', 'Andrés', '7069616', '04143595600', 'andresgb08@gmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública', '92a9cdab73d06ca7026f02c62339046090a93c1a', NULL, '2016-05-12 16:03:17', '2016-05-12 20:33:17'),
(104, '104_IMG_20150202_234846.jpg', 'perez fajardo', 'samaria', '24330956', '04144365295', 'samaria_perez@hotmail.com', 'universidad de carabobo', 'ciencia de salud', 'a37ffd0af6fe25c8ad976983c5b64c4d073551ef', NULL, '2016-05-12 16:46:54', '2016-05-12 21:16:54'),
(105, NULL, 'González González', 'George', '12353031', '04262724732', 'ecclesiasticum@gmail.com', NULL, NULL, '36d78999f7ea72c535d0770060186ebc074abc6e', NULL, '2016-05-12 19:50:24', '2016-05-13 00:20:24'),
(106, NULL, 'Tovar Bravo', 'Doancely Maria', '13618163', '04167327041', 'doancelytovar@hotmail.com', NULL, NULL, '495d1473bd518705b10976931b24bcb7582c4d7b', NULL, '2016-05-13 05:53:17', '2016-05-13 10:23:17'),
(107, '107_foto.jpg', 'Pérez Rodriguez', 'Francisco Javier', '17703002', '0416 9475358', 'javierpr1987@gmail.com', 'Universidad de Carabobo', 'Educación', 'a63c44a16d8450ca0cf22677a61e2efaa1e18bf4', NULL, '2016-05-13 06:38:19', '2016-05-13 11:08:19'),
(108, NULL, 'SILVA DE SOUSA', 'MARIA JOSE', '21584297', '04144712131', 'mariaj_133@hotmail.com', NULL, NULL, 'f6ac7d5cf1a2df97be5a71a32f07b31e71670482', NULL, '2016-05-13 07:38:22', '2016-05-13 12:08:22'),
(109, NULL, 'Pacheco Balza', 'Xiomara Margarita', '7079781', '04244901043', 'xpacheco@uc.edu.ve', NULL, NULL, 'a426e1ebf2eb4fdb45360dbbe94a46df3266ec80', NULL, '2016-05-13 10:54:54', '2016-05-13 15:24:54'),
(110, NULL, 'SCUOPPO SANDOMENICO', 'ELENA MARIA', '15274445', '04243086472', 'elenascuoppo@gmail.com', NULL, NULL, '4fa098de12f8550ebc8cccfe505c8c9ff7ead2b2', NULL, '2016-05-13 13:37:34', '2016-05-13 18:07:34'),
(111, NULL, 'Bolívar Fajardo', 'Evelyn de la Caridad', '11178603', '04162311668', 'yoeljesus79@hotmail.com', NULL, NULL, '6f2a7db8d59b7176669e9e4477dfa1fc60266897', NULL, '2016-05-13 13:56:04', '2016-05-13 18:26:04'),
(112, '112_10421414_10204908379610278_3459043440066921651_n.jpg', 'Garcia Estelin', 'Loyda Mercedes', '9678978', '04121363106', 'loydag08@gmail.com', 'Universidad de Carabobo', 'Administracion Comercial y Contaduria Publica- FACES', '31827ca53cf15198b0df50eaf74e91c379377c0b', NULL, '2016-05-13 14:06:55', '2016-05-13 18:36:55'),
(113, NULL, 'Barrios Briceño', 'Nanci Coromoto', '8034783', '04160442776', 'nancbarriosb@yahoo.com', NULL, NULL, '9ba00267bac793d03b5a2f54383ff4484073f466', NULL, '2016-05-13 14:07:07', '2016-05-13 18:37:07'),
(114, '114_Foto JL.jpg', 'SEQUERA', 'JOSE', '12101023', '0412889076', 'jsequerao@gmail.com', '', '', '3bc226383685d88555a0dd2465b74edcdd6aaccf', NULL, '2016-05-13 14:23:36', '2016-05-13 18:53:36'),
(115, NULL, 'Sánchez Meléndez', 'José Antonio', '18240498', '04163314220', 'santonioj20@yahoo.es', NULL, NULL, '2e63223796022b4855b91321127c26e50006386d', NULL, '2016-05-13 14:48:00', '2016-05-13 19:18:00'),
(116, '116_420509_2791432459097_1056931364_32717362_903077174_n.jpg', 'Pérez Silva', 'Yraida Elena', '3.490.252', '0414 4193442', 'iraidaperezsilva@hotmail.com', '', '', '4a959dfa82c09882cfbdab4631f54f94a10d5e74', NULL, '2016-05-13 17:18:21', '2016-05-13 21:48:21'),
(117, NULL, 'Alpizar Rodriguez', 'Johnnie Jose', '12772798', '04122357652', 'alpizaracademico@gmail.com', NULL, NULL, '368d43da44db97ff2a7814cc81921b9538e24a36', NULL, '2016-05-13 16:58:17', '2016-05-13 21:28:17'),
(118, '118_midalys.jpg', 'Armas', 'Midalys', '8687471', '04265308823', 'midalys_mia@hotmail.com', 'Universidad Nacional Experimental de la Seguridad', 'Policial', '7989de2ba1cc2547d05b0ef0e88038f34fbc14c2', NULL, '2016-05-13 17:22:28', '2016-05-13 21:52:28'),
(119, '119_Chica de Blanco.jpg', 'Rivas', 'Ariana', '14230118', '04121983120', 'ariana.rivas@gmail.com', 'Universidad de Carabobo', 'Postgrado FACES', '430a99409878064e81f13c4c007e584554e1322d', NULL, '2016-05-13 17:48:59', '2016-05-13 22:18:59'),
(120, NULL, 'Contreras', 'Ivette', '8846522', '04127823769', 'ivcontre@hotmail.com', 'Arturo Michelena', 'Comunicación Social', '2ead7d34dea03c724bc14218a610ba460bfb3855', NULL, '2016-05-13 18:38:56', '2016-05-14 04:59:23'),
(121, '121_FOTO EDEN.jpg', 'Noguera de Hernández', 'Edén Josefina', 'V-2521523', '0412-8989890', 'edennoguera@yahoo.es', 'universidad simón rodríguez', 'educación', 'ccaa8002d4d57f523e936ae9eafdd192069de27d', NULL, '2016-05-13 20:13:47', '2016-05-14 00:43:47'),
(122, NULL, 'Nobrega de Nobrega', 'Doris María', '12.604.470', '0414-4275675', 'doris_nobrega@hotmail.com', '', 'Bioanalisis Carabobo, FCS-UC', '6a4f4516ab0636562b55ee16bed276a747708bb0', NULL, '2016-05-13 21:23:59', '2016-05-14 01:53:59'),
(123, NULL, 'Rodríguez Pérez', 'Daniela Alejandra', '24.300.249', '04264433869', 'danielarodriguez.24987@gmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública ', '2426d5074045a3065ae2ec7c0214cc2762e45fc8', NULL, '2016-05-13 22:40:40', '2016-05-14 03:10:40'),
(124, '124_foto ONCTI Dalia Correa.jpg', 'Correa Guía', 'Dalia', '5382724', '04244535040 04168415216', 'correaguia@gmail.com', 'Universidad de Carabobo', 'INFACES', '68fde0bfb7c376dd6bd56a8e8c1491edfeebed03', NULL, '2016-05-14 05:43:52', '2016-05-14 10:13:52'),
(125, NULL, 'GRISANTI DE MONTERO', 'ROSIBEL', '7069617', '04244060457', 'rosigri@hotmail.com', 'UNIVERSIDAD DE CARABOBO', 'ADMINISTRACION COMERCIAL Y CONTADURIA PUBLICA', '648178e5397a721fc79ecb96ea373e75d461458e', NULL, '2016-05-14 09:27:31', '2016-05-14 13:57:31'),
(126, '126_carol.jpg', 'Omaña Reyes', 'Carol del Valle', '3841118', '04144615761', 'delvalle43@gmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Publica', '598fd7105d7217353eac2b0404b71c62a183c4dc', NULL, '2016-05-14 09:44:34', '2016-05-14 14:14:34'),
(127, '127_Cirilo 1.png', 'Orozco', 'Cirilo', '4094319', '04144717568', 'cirilotampa@hotmail.com', 'Universidad de Carabobo', 'Ciclo basico', 'ffc970d9bd5091693e0ea34a0ebb7ef47f99d15c', NULL, '2016-05-14 10:33:22', '2016-05-14 15:03:22'),
(128, NULL, 'Jimenez Morales', 'Fidel Gustavo', 'V-8040873', '04244270022', 'drfideljimenezm@gmail.com', 'Universidad de Carabobo', 'Medicina', '4c2c04a88034f42de7abeda7fe96842b8241bda0', NULL, '2016-05-14 11:29:49', '2016-05-14 15:59:49'),
(129, NULL, 'Hernandez Runquez', 'Estela', '8685984', '04127562011', 'estelamar01@gmail.com', NULL, NULL, 'babd57722723612c17863765937bd8c3aad79790', NULL, '2016-05-14 11:36:15', '2016-05-14 16:06:15'),
(130, NULL, 'Sierra Estrada', 'Mahie Alejandra', '13780701', '04165411121', 'mahiealejandra@gmail.com', NULL, NULL, '8fb8e3040691dbddf678b92bd9f220c436251ea8', NULL, '2016-05-14 14:05:39', '2016-05-14 18:35:39'),
(131, '131_areida.jpg', 'GONZALEZ TORREALBA', 'AREIDA YORELIS', '8.836.465', '04244618786', 'areidag@hotmail.com', '', '', '46ec196153b74631c006d9331163218bc4ff043d', NULL, '2016-05-14 21:25:44', '2016-05-15 01:55:44'),
(132, NULL, 'cadavid de zavarse', 'angela maria', '11349531', '04145851415', 'angelamariacadavid@hotmail.com', NULL, NULL, '7c222fb2927d828af22f592134e8932480637c0d', NULL, '2016-05-14 14:22:20', '2016-05-14 18:52:20'),
(133, NULL, 'Cabrera Peña', 'Leonardo Jose', '21476843', '04244737747', 'leonardocabrera9320@gmail.com', NULL, NULL, 'ee0cd08fba2533c9d736d0091e7dfc83c726b9e3', NULL, '2016-05-14 14:57:48', '2016-05-14 19:27:48'),
(134, '134_foto luzmila 001.png', 'Marcano Martínez', 'Luzmila', '4505000', '04141434592', 'luzmilamarcano@hotmail.com', 'Universidad de Carabobo, FACES', 'Ciclo Básico', '32eb90ba894fa80bc1ecb46cce30a9d43ed30d4e', NULL, '2016-05-15 09:06:51', '2016-05-15 13:36:51'),
(135, NULL, 'MENDOZA QUERALES', 'OMAR WLADIMIR', '12761400', '04244067996', 'mendozao33@hotmail.com', NULL, NULL, '343a4f65d5b0104ccdb5585feaf991092c2dbad7', NULL, '2016-05-14 17:26:28', '2016-05-14 21:56:28'),
(136, '136_20150620_080625.jpg', 'Trovat', 'Valentina', 'Palo Negro', '0424 3117150', 'vtrovat@gmail.com', 'Universidad de Carabobo', 'Administración Comercial', 'bb947835f0852074c9e3621a4341da4f6116d43a', NULL, '2016-05-14 17:48:51', '2016-05-14 22:18:51'),
(137, '137_wilmary.jpg', 'Ruiz Guanipa', 'Eumelia Guadymar', '12182462', '04161605211', 'eumeliar@gmail.com', 'Universidad Nacional Experimental Francisco de Miranda ', 'Educación ', '3b191d948c4edb4ef512cf91ad2105d2e19f2518', NULL, '2016-05-14 18:27:58', '2016-05-14 22:57:58'),
(138, NULL, 'AYALA', 'JORDANA', '11354595', '4144382315', 'jordana.tierraviva@gmail.com', NULL, NULL, '7b4e05db25a0180a6a560b49231f1b613d21664a', NULL, '2016-05-14 18:53:53', '2016-05-14 23:23:53'),
(139, NULL, 'RUIZ DE TORRES', 'NILCRIST ELENA', '11804492', '(0424)6750710', 'nilcrist@hotmail.com', NULL, NULL, 'e9dcbfbbbe55f726ec1b89562992e18b5a6f7e2e', NULL, '2016-05-14 20:40:53', '2016-05-15 01:10:53'),
(140, NULL, 'Varón Andrade', 'Carmen Cecilia', 'V-13.736.332', '04143480787', 'carmenvaronandrade@gmail.com', NULL, NULL, '92d38130c7ad0334bb915a89f40373b94735aa16', NULL, '2016-05-14 20:54:45', '2016-05-15 01:24:45'),
(141, NULL, 'Maddia Simmons', 'Carolina Naylett', '13195573', '04244306293', 'caro_maddia@hotmail.com', NULL, NULL, '12c4d4f44cd4c51b2053c5142ff0d0baa25257b2', NULL, '2016-05-14 21:07:12', '2016-05-15 01:37:12'),
(142, NULL, 'Oropeza Rodríguez', 'Neidha Rebeca', '5272753', '04162320093', 'fantasienve@yahoo.com', 'Universidad Pedagógica Experimental Libertador (UPEL Maracay)', 'DEpartamento de Inglés', '780655acc4516c4eabf03a3e4af8a63dc79be4a2', NULL, '2016-05-14 23:47:10', '2016-05-15 04:17:10'),
(143, '143_20140729_195144.jpg', 'Núñez Hernández', 'Rolando Javier', '10228419', '04124630008', 'rolandonunez70@hotmail.com', 'Upel - Maracay', 'Educación', '8e06901e9e1d03154bfb1c99196718e1ae45ed06', NULL, '2016-05-15 07:58:25', '2016-05-15 12:28:25'),
(144, '144_perfil 2.jpg', 'aquino flores', 'maria francia', '12931314', '04244554518', 'mfrancia3@hotmail.com', 'universidad de carabobo', '', '26da20aabbb52db42c274847c6b1bc5a135f673d', NULL, '2016-05-15 10:21:26', '2016-05-15 14:51:26'),
(145, NULL, 'Navas de Reyes', 'Carlena Tahina', '16424185', '04244134314', 'carlenanavas@homail.com', NULL, NULL, 'e8bfcb41c2007e3fcf0c1cb6a5cf855232e9583f', NULL, '2016-05-15 10:14:26', '2016-05-15 14:44:26'),
(146, NULL, 'LOVERA ZACARIAS', 'MARIELINIS JOSE', '17681108', '04264309475', 'MARIE_UFF28@HOTMAIL.COM', 'UNIVERSIDAD DE CARABOBO', 'FACULTAD DE CIENCIAS DE LA EDUCACION', 'bca370a68482f7ef58125ea5af204d6e8b07a83f', NULL, '2016-05-15 10:33:59', '2016-05-15 15:03:59'),
(147, NULL, 'rodriguez gonzalez', 'rosiris cecilia', '8834812', '04143400323', 'rosiris_rodriguez_gonzalez@hotmail.com', NULL, NULL, 'c656a14c1892bbc5911bd6a79deba6da57d1e75a', NULL, '2016-05-15 10:49:22', '2016-05-15 15:19:22'),
(148, '148_IMG_1848.JPG', 'MERCERÓN DE HORVÁTH', 'ISMENIA DE LOURDES', '5521770', '04243166864/04163138528', 'nenajabamiah84@gmail.com', 'UNIVERSIDAD NACIONAL EXPERIMENTAL SIMÓN RODRIGUEZ', '', 'ea6553b04f7e222937bf589b68734c42909f511b', NULL, '2016-05-15 12:22:48', '2016-05-15 16:52:48'),
(149, '149_Foto Carnet.png', 'Fernandez Briceño', 'Vicenta Emilia', '3893251', '04244702510', 'vicenemi55@hotmail.com', 'Universidad de Carabobo', 'Enfermeria', 'd0b44265aa2c8f43d4242502a7380499d2fa7491', NULL, '2016-05-15 12:29:50', '2016-05-15 16:59:50'),
(150, NULL, 'Sanabria Guerra', 'Zulayma', '4456089', '04123410832', 'zuvika2@yahoo.es', NULL, NULL, 'ccc63709cb868df56378c8f8ac1b84298575e9b8', NULL, '2016-05-15 12:47:51', '2016-05-15 17:17:51'),
(151, NULL, 'Escobar Rivero', 'Digna Escobar', '4065771', '04244531871', 'dignaescobar@hotmail.com', NULL, NULL, '711af8cfe033757b3ded152227f0d3d30dd3bd08', NULL, '2016-05-15 13:41:57', '2016-05-15 18:11:57'),
(152, NULL, 'PÉREZ', 'GLENYS', '8841037', '04244662674', 'glenysper@gmail.com', NULL, NULL, '7d368e9a95962a5a8a1f6d7208fac01a5e586d3a', NULL, '2016-05-15 14:03:40', '2016-05-15 18:33:40'),
(153, '153_AIbEiAIAAABECNPpvp2Vs8HEqAEiC3ZjYXJkX3Bob3RvKig0YjkwNDUwMGY4Y2VlYzY3MGY0YzgwMTM5MjM4MzdmNzMzNmU0MGEyMAFBZTG-0Vkg-sY3mxMVJdN2uGu4pw.jpg', 'Guía Caripe', 'Germán José', '11635040', '4141273120', 'gguia@usb.ve', 'Universidad Simón Bolívar -Sede del Litoral', 'Departamento de Formación General y Ciencias Básicas', '9327572e6b4036fe985d37879b05d937831c9c57', NULL, '2016-05-15 14:27:36', '2016-05-15 18:57:36'),
(154, NULL, 'chirinos ferrer', 'alcira de la cruz', '14168202', '04168697645', 'alci1304@hotmail.com', NULL, NULL, '854b3eed1d6f0161dd44d600f6bfd72a994e2e6b', NULL, '2016-05-15 14:56:49', '2016-05-15 19:26:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `works`
--

CREATE TABLE IF NOT EXISTS `works` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campus` varchar(140) NOT NULL,
  `area_id` int(11) NOT NULL,
  `modality` varchar(140) NOT NULL,
  `title` varchar(140) NOT NULL,
  `status` enum('En proceso de arbitraje','Aprobado','Rechazado') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `works`
--

INSERT INTO `works` (`id`, `user_id`, `campus`, `area_id`, `modality`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(22, 12, 'La Morita', 5, 'Carteles', 'Gestión de Costos en Industrias Manufactureras de Aluminio: Una experiencia venezolana', 'En proceso de arbitraje', '2016-03-25 09:11:47', '2016-03-25 13:41:47'),
(23, 12, 'La Morita', 8, 'Presentación oral', 'Aplicación de la Técnica 5S´s en una Industria Venezolana: Una Práctica de Mejora Continua y Reducción de Costos', 'En proceso de arbitraje', '2016-03-25 10:55:09', '2016-03-25 15:25:09'),
(24, 13, 'Bárbula', 4, 'Presentación oral', 'El docente como modelo de cuidado en la formación de enfermería', 'Aprobado', '2016-03-25 15:56:39', '2016-04-24 12:06:01'),
(25, 14, 'La Morita', 7, 'Carteles', 'FACTORES DE SATISFACCIÓN LABORAL QUE INCIDEN EN EL  COMPROMISO ORGANIZACIONAL DE LOS ADMINISTRATIVOS DE LA GOBERNACIÓN DEL  ESTADO ARAGUA', 'En proceso de arbitraje', '2016-03-26 18:36:31', '2016-03-26 23:06:31'),
(27, 17, 'Bárbula', 11, 'Presentación oral', 'GOBERNANZA Y GESTIÓN PÚBLICA:  UNA MIRADA REFLEXIVA AL CONTEXTO LOCAL VENEZOLANO', 'Aprobado', '2016-04-01 09:36:41', '2016-04-24 12:04:12'),
(28, 18, 'Bárbula', 4, 'Simposios', 'Los Estudios Doctorales: Retos, Obstáculos y Desafios', 'Aprobado', '2016-04-01 11:35:43', '2016-05-04 14:53:11'),
(29, 4, 'Bárbula', 8, 'Presentación oral', 'ESTRATEGIAS  DE LIDERAZGO QUE CONTRIBUYAN A MEJORAR LA COMPETITIVIDAD EN EL SECTOR PRODUCTIVO DE PASTEURIZADOS DEL ESTADO CARABOBO', 'Rechazado', '2016-04-04 09:22:59', '2016-04-24 12:26:32'),
(30, 18, 'Bárbula', 4, 'Simposios', 'Principales Amenazas a los Estudios Doctorales: perspectivas de los participantes-estudiantes', 'Aprobado', '2016-04-06 06:35:44', '2016-05-04 14:53:49'),
(31, 22, 'La Morita', 14, 'Presentación oral', 'CONTEXTUALIZACIÓN DE LOS AMBIENTES DIGITALES PARA LAS ENSEÑANZAS DE LAS COMPETENCIAS EDUCATIVAS', 'En proceso de arbitraje', '2016-04-07 10:33:39', '2016-04-07 15:03:39'),
(32, 4, 'Bárbula', 8, 'Presentación oral', 'PLANIFICACIÓN ESTRATÉGICA QUE PROMUEVA EL CRECIMIENTO EMPRESARIAL. (CASO: REPRESENTACIONES PEREA, C.A.  NAGUANAGUA, EDO. CARABOBO.)', 'Rechazado', '2016-04-10 11:28:34', '2016-04-24 12:26:48'),
(36, 31, 'Bárbula', 13, 'Presentación oral', 'Intelectualización del problema.  Un aporte a las ciencias sociales', 'Aprobado', '2016-04-18 18:30:51', '2016-04-24 12:20:42'),
(37, 11, 'Bárbula', 10, 'Presentación oral', 'APROPIACIÓN SOCIAL DEL CONOCIMIENTO: HACIA LA CONSTRUCCIÓN DE UNA NUEVA CULTURA CIENTÍFICA Y TECNOLÓGICA EN VENEZUELA', 'Aprobado', '2016-04-19 14:23:34', '2016-04-24 12:44:32'),
(38, 33, 'Bárbula', 4, 'Presentación oral', 'EL COMPROMISO SOCIAL DESDE LA COTIDIANIDAD DEL ESTUDIANTE UNIVERSITARIO COMO PRESTADOR DEL SERVICIO COMUNITARIO', 'Aprobado', '2016-04-21 11:51:08', '2016-04-24 12:42:39'),
(39, 37, 'Bárbula', 4, 'Presentación oral', 'AGENCIAMIENTOS DE  LUDOTECAS COMUNITARIAS: ACCIONES TRANSFORMADORAS PARA EL DERECHO AL JUEGO EN LA INFANCIA', 'Aprobado', '2016-04-23 05:51:47', '2016-04-24 12:38:59'),
(40, 37, 'Bárbula', 6, 'Presentación oral', 'CONSTRUCCIÓN SOCIAL DE INFANCIAS AFROVENEZOLANAS EN CLAVE DESCOLONIZADORA E INTERCULTURAL.', 'Rechazado', '2016-04-23 05:59:24', '2016-04-24 12:38:44'),
(41, 31, 'Bárbula', 6, 'Presentación oral', 'Carmen, una historia de vida. Interacción con los procesos socio-económicos de la Venezuela del siglo XX', 'Aprobado', '2016-04-24 08:39:33', '2016-04-24 13:37:51'),
(42, 39, 'La Morita', 4, 'Presentación oral', 'REDISEÑO DE LOS PROGRAMAS ACADÉMICOS DE AUDITORIA CON BASE A LAS NORMAS INTERNACIONALES (NIA´S)', 'En proceso de arbitraje', '2016-04-24 11:51:06', '2016-04-24 16:21:06'),
(47, 42, 'Bárbula', 14, 'Presentación oral', 'Por qué América del Norte lidera la producción científica', 'En proceso de arbitraje', '2016-04-25 18:39:34', '2016-04-25 23:09:34'),
(48, 44, 'Bárbula', 13, 'Presentación oral', 'MODERNIDAD Y MODERNIZACIÓN EN VENEZUELA Y AMÉRICA LATINA  UNA VISIÓN DESDE EL CENTRO Y  LA PERIFERIA', 'En proceso de arbitraje', '2016-04-25 21:32:55', '2016-04-26 02:02:55'),
(49, 45, 'Bárbula', 13, 'Presentación oral', 'Éxodo Intelectual en el Ámbito Venezolano: Una mirada desde la Percepción de los Estudiantes Universitarios', 'En proceso de arbitraje', '2016-04-25 21:43:49', '2016-04-26 02:13:49'),
(50, 46, 'Bárbula', 9, 'Presentación oral', 'Nueva mirada de la historia del arte desde la historia cultural', 'En proceso de arbitraje', '2016-04-27 14:48:13', '2016-04-27 19:18:13'),
(51, 47, 'Bárbula', 9, 'Presentación oral', 'La formación histórica de la comunicación audiovisual en los tiempos de la narrativa transmedia: el caso de El Ministerio del Tiempo', 'En proceso de arbitraje', '2016-04-27 15:23:31', '2016-04-27 19:53:31'),
(52, 49, 'Bárbula', 6, 'Simposios', 'EL GENERO EN PERSPECTIVA. CIENCIA, NUEVAS SEXUALIDADES,PARTICIPACIÓN,EQUIDAD, SALUD TRABAJO E HISTORIA', 'Aprobado', '2016-04-28 21:31:33', '2016-05-04 14:54:07'),
(53, 48, 'Bárbula', 10, 'Presentación oral', 'SERVICIOS DE ORIENTACIÓN Y ASESORAMIENTO PSICOLÓGICO EN LAS FACULTADES DE LA UNIVERSIDAD DE CARABOBO', 'En proceso de arbitraje', '2016-04-29 08:54:34', '2016-04-29 13:24:34'),
(54, 54, 'La Morita', 2, 'Carteles', 'GESTIÓN AMBIENTAL DEL MANEJO DE LA BASURA EN LA FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES DE LA UNIVERSIDAD DE CARABOBO', 'En proceso de arbitraje', '2016-05-01 09:37:20', '2016-05-01 14:07:20'),
(55, 54, 'La Morita', 4, 'Carteles', 'LA VIRTUALIZACIÓN COMO DINAMISMO INTEGRADOR EN LA EDUCACIÓN HUMANISTA UNIVERSITARIA', 'En proceso de arbitraje', '2016-05-01 09:41:22', '2016-05-01 14:11:22'),
(56, 55, 'Bárbula', 7, 'Presentación oral', 'La libertad sindical negativa y las cláusulas de inclusión, exclusión y solidaridad en el marco jurídico venezolano', 'En proceso de arbitraje', '2016-05-01 19:21:08', '2016-05-01 23:51:08'),
(57, 56, 'Bárbula', 7, 'Presentación oral', 'La Inspección del Trabajo en Venezuela y su relación con el diálogo social', 'En proceso de arbitraje', '2016-05-01 21:49:08', '2016-05-02 02:19:08'),
(59, 59, 'Bárbula', 13, 'Presentación oral', 'El mito político de la democracia participativa y protagónica en la cultura política venezolana del siglo XXI', 'En proceso de arbitraje', '2016-05-02 16:22:37', '2016-05-02 20:52:37'),
(60, 60, 'Bárbula', 4, 'Presentación oral', 'METODOLOGÍA PARA LA EVALUACIÓN DE PROGRAMA  DE POSTGRADO EN  EL  MOMENTO  ESTRATÉGICO  TÁCTICO OPERACIONAL', 'En proceso de arbitraje', '2016-05-02 17:31:58', '2016-05-02 22:01:58'),
(61, 50, 'Bárbula', 2, 'Presentación oral', 'DESARROLLO HUMANO Y ECONEGOCIO: ACERCAMIENTO A UNA EMPRESA VERDE', 'En proceso de arbitraje', '2016-05-03 02:09:59', '2016-05-03 06:39:59'),
(62, 67, 'Bárbula', 13, 'Presentación oral', 'Servicio Comunitario: Develando la Alteridad en la Extensión Universitaria', 'En proceso de arbitraje', '2016-05-06 10:28:26', '2016-05-06 14:58:26'),
(63, 68, 'Bárbula', 5, 'Presentación oral', 'Entendimiento de la entidad como técnica para obtener evidencia persuasiva en la auditoría financiera', 'En proceso de arbitraje', '2016-05-06 17:48:12', '2016-05-06 22:18:12'),
(64, 69, 'Bárbula', 10, 'Presentación oral', 'La transferencia de tecnología: Un estudio de las distintas tipologías en la relación universidad-empresa como elemento de innovación.', 'En proceso de arbitraje', '2016-05-06 22:18:44', '2016-05-07 02:48:44'),
(69, 74, 'Bárbula', 9, 'Presentación oral', 'El persolalismo y legalismo desde la óptica de Jesús Muñoz Tébar', 'En proceso de arbitraje', '2016-05-08 19:13:21', '2016-05-08 23:43:21'),
(70, 72, 'Bárbula', 8, 'Carteles', 'La reconversión gerencial a través de la estrategia comunicacional. Perspectiva de las empresas de salud sin fines lucrativos en Venezuela.', 'En proceso de arbitraje', '2016-05-09 11:03:22', '2016-05-09 15:33:22'),
(72, 78, 'Bárbula', 6, 'Presentación oral', 'LOS ESTUDIOS CULTURALES Y LOS PROCESOS DE DESCOLONIZACIÓN DEL PENSAMIENTO, ¿un debate donde entra la mujer?', 'En proceso de arbitraje', '2016-05-09 11:49:07', '2016-05-09 16:19:07'),
(73, 75, 'La Morita', 12, 'Simposios', 'Simposio Enfermedades Crónicas y Apoyo Familiar', 'En proceso de arbitraje', '2016-05-10 08:16:07', '2016-05-10 12:46:07'),
(74, 75, 'La Morita', 12, 'Simposios', 'Simposio (Breve Reseña Curricular) Enfermedades Crónicas y Apoyo Familiar', 'En proceso de arbitraje', '2016-05-10 08:17:48', '2016-05-10 12:47:48'),
(76, 85, 'Bárbula', 13, 'Carteles', 'LA  EVASION FISCAL EN EL IMPUESTO SOBRE SUCESIONES EN EL MUNICIPIO TRUJILLO, ESTADO TRUJILLO', 'En proceso de arbitraje', '2016-05-10 13:24:56', '2016-05-10 17:54:56'),
(77, 82, 'Bárbula', 7, 'Presentación oral', 'TRANSFORMACIONES DE LOS MARCOS REGULATORIOS POR MEDIO DEL  REGIMEN POLÍTICO VENEZOLANO VIGENTE Y SU IMPACTO EN LAS RELACIONES LABORALES', 'En proceso de arbitraje', '2016-05-10 15:31:16', '2016-05-10 20:01:16'),
(78, 88, 'La Morita', 7, 'Presentación oral', 'EL PASANTE EN LA LEGISLACIÓN LABORAL VENEZOLANA', 'En proceso de arbitraje', '2016-05-10 16:06:21', '2016-05-10 20:36:21'),
(79, 87, 'La Morita', 7, 'Presentación oral', 'Riesgos asociados a la función policial en Venezuela. Derechos laborales  del trabajador', 'En proceso de arbitraje', '2016-05-10 16:08:25', '2016-05-10 20:38:25'),
(80, 42, 'Bárbula', 6, 'Simposios', 'Estudio de género: una visión compleja de la actualidad', 'En proceso de arbitraje', '2016-05-10 17:49:06', '2016-05-10 22:19:06'),
(81, 82, 'Bárbula', 7, 'Presentación oral', 'EDUCACIÓN-TRABAJO, HECHO SOCIAL QUE CONSTITUYEN LA COLUMNA VERTEBRAL PARA DESARROLLO PERSONAL Y SOCIAL', 'En proceso de arbitraje', '2016-05-10 19:19:27', '2016-05-10 23:49:27'),
(82, 73, 'La Morita', 12, 'Simposios', 'GÉNERO EN DIALOGICIDAD CON LA CIENCIA Y LA COTIDIANIDAD.', 'En proceso de arbitraje', '2016-05-10 22:29:58', '2016-05-11 02:59:58'),
(83, 11, 'Bárbula', 10, 'Presentación oral', 'INNOVACIÓN SOCIAL COMO PROCESO DE APROPIACIÓN DE NUEVOS CONOCIMIENTOS A TRAVÉS DE REDES SOCIALISTA DE INNOVACIÓN PRODUCTIVA', 'En proceso de arbitraje', '2016-05-11 08:35:14', '2016-05-11 13:05:14'),
(84, 90, 'Bárbula', 6, 'Presentación oral', 'CLARIFICACIÓN DE LA ESENCIA EN LA PEDAGOGÍA DEL ENCUENTRO. RELATO DE VIDA DE YURIDIA MANRIQUE, ESTUDIANTE  POSTGRADO CON DISCAPACIDADA VISUA', 'En proceso de arbitraje', '2016-05-11 10:46:33', '2016-05-11 15:16:33'),
(85, 32, 'La Morita', 9, 'Presentación oral', 'Pensamiento político de Laureano Vallenilla Lanz: Notas a la Historia Intelectual de la Idea Conservativa del Orden', 'En proceso de arbitraje', '2016-05-11 12:20:51', '2016-05-11 16:50:51'),
(88, 79, 'La Morita', 2, 'Carteles', 'MANEJO DE  AGUAS RESIDUALES Y SU IMPACTO AMBIENTAL EN ZONAS INDUSTRIALES', 'En proceso de arbitraje', '2016-05-11 20:53:48', '2016-05-12 01:23:48'),
(89, 99, 'Bárbula', 4, 'Presentación oral', 'CAPACITACIÓN DE LA MANO DE OBRA INDUSTRIAL PARA SU INSERCIÓN EN EL PROCESO SOCIAL DE TRABAJO EN EL EJE   MORON – PUERTO CABELLO DEL ESTADO C', 'En proceso de arbitraje', '2016-05-12 12:45:21', '2016-05-12 17:15:21'),
(91, 100, 'Bárbula', 5, 'Presentación oral', 'Categorización del riesgo derivado de la auditoría como técnica para obtener evidencia persuasiva en la auditoría financiera.', 'En proceso de arbitraje', '2016-05-12 14:04:39', '2016-05-12 18:34:39'),
(92, 102, 'La Morita', 1, 'Carteles', 'Concepción de la participación comunitaria mediante el pensamiento crítico según sus actores directos. Caso: Comuna Luchadores Falconianos p', 'En proceso de arbitraje', '2016-05-12 15:34:51', '2016-05-12 20:04:51'),
(94, 102, 'La Morita', 1, 'Carteles', 'El proceso de teorización en la investigación. Caso: Participación comunitaria en la Comuna Luchadores Falconianos por la Patria', 'En proceso de arbitraje', '2016-05-12 15:39:01', '2016-05-12 20:09:01'),
(97, 103, 'Bárbula', 8, 'Presentación oral', 'LA ÉTICA Y LA COMPETENCIA HUMANA EN LAS ORGANIZACIONES COMO FACTORES CLAVE PARA EL AMBIENTE DE CONTROL INTERNO', 'En proceso de arbitraje', '2016-05-12 18:46:55', '2016-05-12 23:16:55'),
(101, 105, 'La Morita', 2, 'Presentación oral', 'EL DERECHO HUMANO AL MEDIO AMBIENTE EN LA ENCÍCLICA LAUDATO SI DEL PAPA FRANCISCO', 'En proceso de arbitraje', '2016-05-12 20:17:20', '2016-05-13 00:47:20'),
(102, 106, 'Bárbula', 4, 'Carteles', 'Características y necesidades del contexto: curricular, laboral y social de la carrera de Enfermeria a nivel nacional e internacional', 'En proceso de arbitraje', '2016-05-13 05:56:48', '2016-05-13 10:26:48'),
(103, 107, 'Bárbula', 2, 'Presentación oral', '¿CONSERVAR, CONCIENCIAR O CAMBIAR?  UNA HERMENEUISIS DE LA FORMACIÓN AMBIENTAL', 'En proceso de arbitraje', '2016-05-13 07:50:46', '2016-05-13 12:20:46'),
(105, 109, 'Bárbula', 4, 'Presentación oral', 'La ecologìa emocional , una estrategia didàctica en el proceso de aprendizaje significativo en aula', 'En proceso de arbitraje', '2016-05-13 10:58:37', '2016-05-13 15:28:37'),
(106, 110, 'La Morita', 5, 'Carteles', 'LA  AUDITORIA TRIBUTARIA. UNA MIRADA DESDE EL SECTOR PRIVADO DE SALUD', 'En proceso de arbitraje', '2016-05-13 13:52:35', '2016-05-13 18:22:35'),
(107, 111, 'La Morita', 8, 'Presentación oral', 'EL MANEJO DE CONFLICTOS COMO HABILIDAD GERENCIAL  DEL CUERPO DIRECTIVO EN INSTITUCIONES EDUCATIVAS', 'En proceso de arbitraje', '2016-05-13 14:04:40', '2016-05-13 18:34:40'),
(108, 115, 'Bárbula', 13, 'Presentación oral', 'La influencia del positivismo en el Pensamiento Latinoamericano', 'En proceso de arbitraje', '2016-05-13 14:51:29', '2016-05-13 19:21:29'),
(109, 115, 'Bárbula', 9, 'Presentación oral', 'La Identidad Latinoamericana en cuatro tiempos', 'En proceso de arbitraje', '2016-05-13 14:54:46', '2016-05-13 19:24:46'),
(111, 116, 'Bárbula', 8, 'Simposios', 'NUEVOS PARADIGMAS Y CAMBIO ORGANIZACIONAL EN  EL CONTEXTO POLÍTICO, ECONÓMICO Y SOCIAL DEL SIGLO XXI', 'En proceso de arbitraje', '2016-05-13 17:08:46', '2016-05-13 21:38:46'),
(112, 66, 'Bárbula', 11, 'Presentación oral', 'PLANIFICACIÓN PÚBLICA MUNICIPAL Y PARTICIPACIÓN CIUDADANA. UN ACERCAMIENTO DESDE LOS CONSEJOS LOCALES DE PLANIFICACIÓN PÚBLICA', 'En proceso de arbitraje', '2016-05-13 17:43:55', '2016-05-13 22:13:55'),
(113, 66, 'Bárbula', 4, 'Presentación oral', 'REESTRUCTURACIÓN EPISTEMOLÓGICA, DIDÁCTICA Y PEDAGÓGICA DE LA EDUCACIÓN PARA LA SUSTENTABILIDAD DESDE LA GERENCIA EDUCATIVA.', 'En proceso de arbitraje', '2016-05-13 17:50:35', '2016-05-13 22:20:35'),
(116, 122, 'La Morita', 12, 'Presentación oral', 'SOCIO-SIMBOLOGÍA DE LA MATERNIDAD Y DISCURSO MÉDICO HEGEMÓNICO: UN ANÁLISIS DESDE LA PERSPECTIVA DE GÉNERO SOBRE LA REPRODUCCIÓN ASISTIDA', 'En proceso de arbitraje', '2016-05-13 21:23:25', '2016-05-14 01:53:25'),
(117, 123, 'Bárbula', 4, 'Carteles', 'DESARROLLO DE LA RESPONSABILIDAD DENTRO DEL MARCO DE LA TRIBUTACIÓN EN NIÑOS DE 3ER GRADO U. E. ESCUELA NACIONAL BÁRBULA.', 'En proceso de arbitraje', '2016-05-13 22:39:00', '2016-05-14 03:09:00'),
(118, 124, 'Bárbula', 7, 'Simposios', '“LA CULTURA DEL TRABAJO EN VENEZUELA”', 'En proceso de arbitraje', '2016-05-14 06:52:28', '2016-05-14 11:22:28'),
(119, 72, 'Bárbula', 14, 'Carteles', 'La Sociedad de la Información. Comentarios sobre el uso de las TIC en la educación venezolana', 'En proceso de arbitraje', '2016-05-14 08:27:47', '2016-05-14 12:57:47'),
(120, 125, 'Bárbula', 7, 'Presentación oral', 'LOS DIVERSOS REGÍMENES DE JUBILACIONES EN LA ADMINISTRACIÓN PÚBLICA NACIONAL, ESTADAL Y MUNICIPAL', 'En proceso de arbitraje', '2016-05-14 09:31:47', '2016-05-14 14:01:47'),
(121, 126, 'La Morita', 6, 'Carteles', 'LA EXTENSIÓN UNIVERSITARIA Y EL SERVICIO COMUNITARIO UNA RESPONSABILIDAD SOCIAL  EN LA ERA PLANETARIA', 'En proceso de arbitraje', '2016-05-14 09:43:30', '2016-05-14 14:13:30'),
(122, 127, 'Bárbula', 12, 'Presentación oral', 'Examinación del riesgo de candidiasis oral referida al uso de prótesis dental: una revisión matemática exploratoria', 'En proceso de arbitraje', '2016-05-14 10:35:53', '2016-05-14 15:05:53'),
(123, 89, 'La Morita', 3, 'Presentación oral', 'PLAN DE FINANZAS PERSONALES PARA EL PERSONAL DOCENTE DE LA UNIDAD EDUCATIVA INSTITUTO "LOS PRÓCERES"', 'En proceso de arbitraje', '2016-05-14 11:37:56', '2016-05-14 16:07:56'),
(125, 95, 'Bárbula', 11, 'Presentación oral', 'El Control Fiscal Interno y su Influencia en la Administración de las Empresas Estatales Venezolanas', 'En proceso de arbitraje', '2016-05-14 11:50:48', '2016-05-14 16:20:48'),
(126, 132, 'Bárbula', 8, 'Presentación oral', 'CAPITAL INTELECTUAL A LA LUZ DE LA DOCTRINA Y LA GESTIÓN DEL CAPITAL INTELECTUAL', 'En proceso de arbitraje', '2016-05-14 14:31:20', '2016-05-14 19:01:20'),
(127, 131, 'Bárbula', 4, 'Presentación oral', 'SIGNIFICADO QUE TIENEN LOS VALORES PARA LOS ESTUDIANTES EN LA UNIDAD EDUCATIVA GENERAL “JOSÉ ANTONIO PÁEZ"', 'En proceso de arbitraje', '2016-05-14 14:31:47', '2016-05-14 19:01:47'),
(128, 38, 'Bárbula', 4, 'Presentación oral', 'REPRESENTACIONES SOCIALES  DEL DOCENTE DE EDUCACIÓN MEDIA GENERAL ANTE LA DIVERSIDAD FUNCIONAL DE SUS ESTUDIANTES.', 'En proceso de arbitraje', '2016-05-14 14:32:02', '2016-05-14 19:02:02'),
(129, 94, 'Bárbula', 12, 'Presentación oral', 'DISFUNCION ERECTIL EN PACIENTES CON ENFERMEDAD RENAL CRONICA EN HEMODIALISIS', 'En proceso de arbitraje', '2016-05-14 14:37:56', '2016-05-14 19:07:56'),
(130, 133, 'Bárbula', 12, 'Presentación oral', 'VIGILANCIA EPIDEMIOLOGICA DE INFECCION POR BORDETELLA PERTUSSIS. HOSPITAL DE NIÑOS DR JORGE LIZARRAGA.  ENERO – ABRIL 2015', 'En proceso de arbitraje', '2016-05-14 14:59:45', '2016-05-14 19:29:45'),
(131, 118, 'La Morita', 13, 'Carteles', 'INTENCIONALIDAD FORMATIVA: UNA HERMENEUSIS DESDE LOS ESTUDIANTES QUE ASPIRAN A SER FUNCIONARIOS POLICIALES', 'En proceso de arbitraje', '2016-05-14 15:33:28', '2016-05-14 20:03:28'),
(132, 108, 'Bárbula', 5, 'Simposios', 'PROPUESTA DE UN INSTRUCTIVO PARA LA APLICACIÓN DE LAS VEN NIF PYMES EN LA ELABORACIÓN Y PRESENTACIÓN DE LOS ESTADOS FINANCIEROS DE LA EMPRES', 'En proceso de arbitraje', '2016-05-14 15:35:25', '2016-05-14 20:05:25'),
(135, 130, 'Bárbula', 13, 'Presentación oral', 'EL MÉTODO SOCIO HISTÓRICO DE COMPRENSIÓN DE LA TEORÍA FILOSÓFICA DE RENE DESCARTES', 'En proceso de arbitraje', '2016-05-14 16:50:57', '2016-05-14 21:20:57'),
(136, 130, 'Bárbula', 13, 'Presentación oral', 'El Capital intelectual en el marco de la inteligencia emocional como estrategia', 'En proceso de arbitraje', '2016-05-14 16:54:26', '2016-05-14 21:24:26'),
(137, 136, 'La Morita', 1, 'Presentación oral', 'LA NECESIDAD DE INTEGRAR LA SISTEMATIZACION A LA GESTION ADMINISTRATIVA COMUNITARIA. CASO: URBANIZACION LOS LIBERTADORES PALO NEGRO', 'En proceso de arbitraje', '2016-05-14 17:41:52', '2016-05-14 22:11:52'),
(138, 132, 'Bárbula', 7, 'Presentación oral', 'UNA MIRADA DESDE LA PERSPECTIVA DEL TRABAJO NO CLÁSICO', 'En proceso de arbitraje', '2016-05-14 18:00:53', '2016-05-14 22:30:53'),
(139, 137, 'Bárbula', 4, 'Presentación oral', 'LAS COMPETENCIAS INVESTIGATIVAS EN LA FORMACIÓN DOCENTE.  REFLEXIONES EPISTEMOLOGICAS Y PEDAGOGICAS', 'En proceso de arbitraje', '2016-05-14 18:33:32', '2016-05-14 23:03:32'),
(140, 4, 'Bárbula', 8, 'Presentación oral', 'ESTRATEGIAS GERENCIALES ORIENTADAS A LA GESTIÓN DE CALIDAD DE SERVICIO EN LA FUNDACION UNIVERSIDAD DE CARABOBO, SEDE VALENCIA', 'En proceso de arbitraje', '2016-05-14 18:40:13', '2016-05-14 23:10:13'),
(142, 99, 'Bárbula', 7, 'Presentación oral', 'CAPACITACIÓN DE LA MANO DE OBRA INDUSTRIAL PARA SU INSERCIÓN EN EL PROCESO SOCIAL DE TRABAJO EN EL EJE   MORON  /  PUERTO CABELLO DEL ESTADO', 'En proceso de arbitraje', '2016-05-14 19:10:44', '2016-05-14 23:40:44'),
(143, 138, 'Bárbula', 2, 'Presentación oral', 'SOMOS BIODIVERSIDAD: UTILIZACIÓN DEL ESPACIO PÚBLICO Y SU PAISAJE NATURAL PARA LA CONSERVACIÓN DE LA BIODIVERSIDAD EN ESPACIOS URBANOS', 'En proceso de arbitraje', '2016-05-14 19:14:20', '2016-05-14 23:44:20'),
(144, 139, 'Bárbula', 8, 'Carteles', 'FRACTALIDAD HOLOGRAMÁTICA PARA EL DESARROLLO SUSTENTABLE: Parque Científico-Tecnológico Universidad Nacional Experimental Francisco de Miran', 'En proceso de arbitraje', '2016-05-14 20:44:38', '2016-05-15 01:14:38'),
(148, 118, 'La Morita', 13, 'Carteles', 'LAS PRÁCTICAS PROFESIONALES EN LA FORMACIÓN DE CUSTODIOS PENITENCIARIOS, UNA MIRADA DESDE LOS ESTUDIANTES', 'En proceso de arbitraje', '2016-05-14 21:09:07', '2016-05-15 01:39:07'),
(149, 134, 'Bárbula', 4, 'Presentación oral', 'ACCIONES PARA IMPULSAR LA PARTICIPACIÓN PROTAGÓNICA DE LAS MUJERES EN LA UNIVERSIDAD DE CARABOBO', 'En proceso de arbitraje', '2016-05-15 09:11:24', '2016-05-15 13:41:24'),
(150, 145, 'Bárbula', 12, 'Carteles', 'NIVELES SÉRICOS DE TSH Y T4L EN EL SEGUNDO Y TERCER TRIMESTRE DE EMBARAZO EN ADOLESCENTES.', 'En proceso de arbitraje', '2016-05-15 10:19:39', '2016-05-15 14:49:39'),
(151, 144, 'Bárbula', 7, 'Carteles', 'una mirada a la epistemologia de la ciencias sociales', 'En proceso de arbitraje', '2016-05-15 10:22:43', '2016-05-15 14:52:43'),
(152, 146, 'Bárbula', 2, 'Carteles', 'PROGRAMA AGROECOLOGICO PARA EL MANTENIMIENTO DE LOS SUELOS POR MEDIO DEL USO DEL PASTO VETIVER', 'En proceso de arbitraje', '2016-05-15 10:40:45', '2016-05-15 15:10:46'),
(153, 143, 'Bárbula', 9, 'Presentación oral', 'Dimensión Socio-política del Fracaso Escolar', 'En proceso de arbitraje', '2016-05-15 10:42:51', '2016-05-15 15:12:51'),
(154, 147, 'Bárbula', 7, 'Carteles', 'CONOCIMIENTO Y LA VERDAD  EN   LA EPISTEMOLOGÍA  DE LAS CIENCIAS SOCIALES', 'En proceso de arbitraje', '2016-05-15 10:50:17', '2016-05-15 15:20:17'),
(155, 148, 'La Morita', 4, 'Presentación oral', 'EXPERIENCIAS PEDAGÓGICAS PARA EL AUTORRECONIMIENTO IDENTITARIO AFRODESCENDIENTE DESDE EL PAISAJE DE LA CÁTEDRA LIBRE ÁFRICA: ÓNA DE LA INTER', 'En proceso de arbitraje', '2016-05-15 12:27:25', '2016-05-15 16:57:25'),
(157, 43, 'Bárbula', 1, 'Presentación oral', 'Una revisión bibliográfica del origen de las economías de aglomeración y su aporte para la generación de Spillovers de conocimientos', 'En proceso de arbitraje', '2016-05-15 12:28:41', '2016-05-15 16:58:41'),
(158, 43, 'Bárbula', 1, 'Simposios', 'Ciudades con futuro y competitivas', 'En proceso de arbitraje', '2016-05-15 12:35:10', '2016-05-15 17:05:10'),
(159, 149, 'Bárbula', 12, 'Presentación oral', 'El Cuidado Proporcionado por Enfermería al Adulto Mayor  en un Hospital Tipo IV', 'En proceso de arbitraje', '2016-05-15 12:38:37', '2016-05-15 17:08:37'),
(160, 43, 'Bárbula', 1, 'Simposios', 'Smart City', 'En proceso de arbitraje', '2016-05-15 12:43:35', '2016-05-15 17:13:35'),
(161, 150, 'Bárbula', 4, 'Presentación oral', 'REFLEXIÓN EN EL APRENDIZAJE DEL ESTUDIANTE UNIVERSITARIO EN SU FORMACIÓN PROFESIONAL', 'En proceso de arbitraje', '2016-05-15 12:51:08', '2016-05-15 17:21:08'),
(163, 152, 'Bárbula', 4, 'Presentación oral', 'COMPOSICIÓN ESCRITA DE TEXTOS ACADÉMICOS: UNA PERSPECTIVA DESDE LA MEDIACIÓN SOCIOCULTURAL PARA LA EDUCACIÓN UNIVERSITARIA', 'En proceso de arbitraje', '2016-05-15 14:07:00', '2016-05-15 18:37:00'),
(164, 153, 'Bárbula', 9, 'Presentación oral', 'BLAS BRUZUAL: UN VEHEMENTE DIFUSOR DE LAS IDEAS LIBERALES (1808 – 1882).', 'En proceso de arbitraje', '2016-05-15 14:27:01', '2016-05-15 18:57:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `backusers`
--
ALTER TABLE `backusers`
 ADD PRIMARY KEY (`id`), ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`id`), ADD KEY `work_id` (`work_id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `work_id` (`work_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `works`
--
ALTER TABLE `works`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`), ADD KEY `area_id` (`area_id`), ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `backusers`
--
ALTER TABLE `backusers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT de la tabla `works`
--
ALTER TABLE `works`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=165;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `backusers`
--
ALTER TABLE `backusers`
ADD CONSTRAINT `backusers_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `works`
--
ALTER TABLE `works`
ADD CONSTRAINT `works_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`),
ADD CONSTRAINT `works_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
