-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-05-2016 a las 12:20:47
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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

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
(94, 143, '138_Articulo Somos Biodiversidad.doc', 'DOC', '2016-05-14 19:14:20', '2016-05-14 23:44:20'),
(96, 149, '134_ponencia Luzmila Marcano,  FACES, 2016doc.doc', 'DOC', '2016-05-15 09:11:24', '2016-05-15 13:41:24'),
(97, 150, '145_trabajo para congreso inv. 2016.docx', 'DOCX', '2016-05-15 10:19:39', '2016-05-15 14:49:39'),
(98, 151, '144_art mfa.docx', 'DOCX', '2016-05-15 10:22:43', '2016-05-15 14:52:43'),
(99, 152, '146_EXTENSO CONGRESO FACES.docx', 'DOCX', '2016-05-15 10:40:46', '2016-05-15 15:10:46'),
(100, 153, '143_DIMENSIÓN SOCIOPOLÍTICA... Artículo.docx', 'DOCX', '2016-05-15 10:42:51', '2016-05-15 15:12:51'),
(103, 158, '43_inscripcion-simposio-normativa-2016 (1).docx', 'DOCX', '2016-05-15 12:35:10', '2016-05-15 17:05:10'),
(104, 159, '149_RESUMEN Y EXTENSO ARTICULO CONGRESO INTER DE INV FACES 2016 VICENTA docx.docx', 'DOCX', '2016-05-15 12:38:37', '2016-05-15 17:08:37'),
(105, 160, '43_inscripcion-simposio-normativa-2016 (2).docx', 'DOCX', '2016-05-15 12:43:35', '2016-05-15 17:13:35'),
(106, 161, '150_articulo sobre reflexion en el aprendizaje.Congreso 2016.docx', 'DOCX', '2016-05-15 12:51:08', '2016-05-15 17:21:08'),
(107, 163, '152_PONENCIA UC.dot', 'DOC', '2016-05-15 14:07:00', '2016-05-15 18:37:00'),
(108, 164, '153_Resumen_GuayanaUCAB_BLAS BRUZUAL_2016.docx', 'DOCX', '2016-05-15 14:27:01', '2016-05-15 18:57:01'),
(109, 180, '158_ACCIONES EDUCATIVAS SOBRE LA LACTANCIA MATERNA EXCLUSIVA DIRIGIDAS A LAS EMBARAZADAS DE LA CONSULTA PRENATAL.docx', 'DOCX', '2016-05-15 16:41:19', '2016-05-15 21:11:19'),
(111, 182, '163_El Estado Patriarcal.docx', 'DOCX', '2016-05-15 17:47:05', '2016-05-15 22:17:05'),
(112, 183, '9_Ponencia. Sequia meteorologica.docx', 'DOCX', '2016-05-15 17:56:33', '2016-05-15 22:26:33'),
(113, 184, '121_LO COMUNICATIVO.docx', 'DOCX', '2016-05-15 18:26:34', '2016-05-15 22:56:34'),
(114, 190, '66_UNA MIRADA AL CUERPO TEÓRICO DE LAS CIENCIAS DE LA EDUCACIÓN A PARTIR DE LA PERSPECTIVA DE GASTÓN MIALARET..docx', 'DOCX', '2016-05-15 19:03:53', '2016-05-15 23:33:53'),
(115, 192, '171_NIEBLES, MAYLER_FORMACIÓN DE PROFESIONALES DE OTRAS ÁREAS EN DOCENCIA PARA LA EDUC SUP DESDE UNA VISIÓN HOLÍSTICA.docx', 'DOCX', '2016-05-15 19:19:23', '2016-05-15 23:49:23'),
(116, 193, '170_LA GESTIÓN PÚBLICA VENEZOLANA Y SU RESPONSABILIDAD SOCIAL INTERNA.docx', 'DOCX', '2016-05-15 19:21:48', '2016-05-15 23:51:48'),
(117, 194, '172_KHARLA FRANCO 15721285.doc', 'DOC', '2016-05-15 19:22:59', '2016-05-15 23:52:59'),
(118, 195, '173_EXTENSO CONGRESO FACES 2016.docx', 'DOCX', '2016-05-15 19:31:58', '2016-05-16 00:01:58'),
(119, 196, '164_PROPUESTA CAROLINA LUIS.docx', 'DOCX', '2016-05-15 19:32:26', '2016-05-16 00:02:26'),
(120, 200, '62_Ciberidentidad y Redes Sociales.docx', 'application/octet-stream', '2016-05-15 19:45:30', '2016-05-16 00:15:30'),
(121, 201, '62_Protección Legal a la Salud.docx', 'application/octet-stream', '2016-05-15 19:52:15', '2016-05-16 00:22:15'),
(122, 202, '84_Sustancias de Relleno (Biopolímeros).docx', 'application/octet-stream', '2016-05-15 19:56:48', '2016-05-16 00:26:48'),
(123, 204, '83_LA INTEGRACIÓN SOCIAL COMO PRÁCTICA EN EL DESARROLLO PERSONAL DE LOS ESTUDIANTES DE LA MENCIÓN ORIENTACIÓN.docx', 'DOCX', '2016-05-15 20:24:42', '2016-05-16 00:54:42'),
(124, 205, '169_LA INVESTIGACIÓN EN EL ABORDAJE COMUNITARIO DESDE LA  HISTORIA-DE-VIDA CONVIVIDA..doc', 'DOC', '2016-05-15 20:25:30', '2016-05-16 00:55:30'),
(125, 206, '175_Nosotros que nos quedamos. Profesora Julieta Casó UCV.docx', 'DOCX', '2016-05-15 20:36:47', '2016-05-16 01:06:47'),
(126, 208, '174_PROPUESTA DE ACTUALIZACIÓN PEDAGÓGICA resumen (1).docx', 'DOCX', '2016-05-15 21:14:20', '2016-05-16 01:44:20'),
(127, 209, '41_MORA CESAR ULA -Congreso UC (Valencia).docx', 'DOCX', '2016-05-15 21:19:47', '2016-05-16 01:49:47'),
(128, 213, '160_SAQUE DE ARENA.docx', 'DOCX', '2016-05-15 22:00:41', '2016-05-16 02:30:41'),
(129, 214, '161_VIVIENDA DIGNA.docx', 'DOCX', '2016-05-15 22:02:07', '2016-05-16 02:32:07'),
(130, 215, '176_Artículo extenso LR 2016.docx', 'DOCX', '2016-05-15 22:10:13', '2016-05-16 02:40:13'),
(131, 216, '140_trabajo de investigación para presentar a Congreso UC 2016.docx', 'DOCX', '2016-05-15 22:17:21', '2016-05-16 02:47:21'),
(132, 217, '177_la cultura en clave capitalista congreso de FACES.docx', 'DOCX', '2016-05-15 22:36:34', '2016-05-16 03:06:34'),
(133, 221, '179_Delitos por discriminación sexual.docx', 'DOCX', '2016-05-15 23:25:29', '2016-05-16 03:55:29'),
(134, 222, '180_extenso-nancy-farías.docx', 'DOCX', '2016-05-15 23:25:36', '2016-05-16 03:55:36'),
(135, 223, '181_Globalización y cultura en LA una mirada del cuerpo femenino.docx', 'DOCX', '2016-05-15 23:28:12', '2016-05-16 03:58:12'),
(136, 224, '182_Burnout en Docentes de FI para Congreso.docx', 'DOCX', '2016-05-15 23:32:40', '2016-05-16 04:02:40'),
(137, 225, '156_GLOBALIZACIÓN.- Franklin León.docx', 'DOCX', '2016-05-15 23:53:50', '2016-05-16 04:23:50'),
(138, 226, '156_NANCY-FARÍAS-FRANKLIN-LEÓN.docx', 'DOCX', '2016-05-16 00:29:38', '2016-05-16 04:59:38'),
(139, 227, '182_Moodle y Blearning para Congreso.docx', 'DOCX', '2016-05-16 00:31:39', '2016-05-16 05:01:39'),
(140, 228, '181_Las prácticas deportivas globalizadoras.docx', 'DOCX', '2016-05-16 00:40:31', '2016-05-16 05:10:31'),
(141, 229, '184_Ponencia Congreso FACES Violencia Intrafamiliar.doc', 'DOC', '2016-05-16 08:35:50', '2016-05-16 13:05:50'),
(142, 230, '183_CONGRESO FACES-FERREIRA, M., BRAVO, K  y ORTILEZ, Y..docx', 'DOCX', '2016-05-16 09:19:49', '2016-05-16 13:49:49'),
(143, 234, '187_Ponencia competencias comunicativas 2016.docx', 'DOCX', '2016-05-16 12:12:01', '2016-05-16 16:42:01'),
(144, 235, '26_EL DILEMA ENTRE LA EFICIENCIA ENERGÉTICA INSTITUCIONAL Y LA SATISFACCIÓN DE LAS NECESIDADES ACTUALES PARA EL DESARROLLO EDUCATIVO.docx', 'DOCX', '2016-05-16 12:29:57', '2016-05-16 16:59:57'),
(145, 237, '187_Ponencia competencias comunicativas 2016.docx', 'DOCX', '2016-05-16 13:39:13', '2016-05-16 18:09:13'),
(146, 238, '185_CULTURA INTEGRAL PARA RECICLAJE II.docx', 'DOCX', '2016-05-16 14:28:42', '2016-05-16 18:58:42'),
(147, 239, '185_cartel diseño sustentable.docx', 'DOCX', '2016-05-16 14:39:40', '2016-05-16 19:09:40'),
(148, 240, '190_CongresoFACESPadronCarmen.docx', 'DOCX', '2016-05-16 14:45:26', '2016-05-16 19:15:26'),
(149, 241, '193_SIMPOSIO 2016 - DIPI.docx', 'DOCX', '2016-05-16 17:36:44', '2016-05-16 22:06:44'),
(150, 242, '189_LA LA LOMBRIZ -REGENAD. DE LOS SUELOS Y PROVEE. DE ABONO A LAS PTAS..docx', 'DOCX', '2016-05-16 20:05:29', '2016-05-17 00:35:29'),
(151, 243, '189_EXPERIENC. DE ADAPT. DE LAS PTAS.-STEVIA EN PRO DE LA SALUD EN EL MUN. CAB..docx', 'DOCX', '2016-05-16 20:10:11', '2016-05-17 00:40:11'),
(152, 248, '198_Plantilla Ponencia  UC - Jesús Flores.docx', 'DOCX', '2016-05-17 08:27:03', '2016-05-17 12:57:03'),
(153, 249, '199_María Marín - Ponencia UC.doc', 'DOC', '2016-05-17 08:35:42', '2016-05-17 13:05:42'),
(154, 250, '200_17-05-2016 09:47:07-ponencia inv. faces.docx', 'DOCX', '2016-05-17 09:47:07', '2016-05-17 14:17:07'),
(155, 252, '118_17-05-2016 10:54:07-Investigacion Penitenciario Midalys Armas y Juan Carlos Flores.docx', 'DOCX', '2016-05-17 10:54:07', '2016-05-17 15:24:07'),
(156, 253, '202_17-05-2016 11:35:13-Trabajo AS DS y AL Congreso Internacional de FACES 2016.docx', 'DOCX', '2016-05-17 11:35:13', '2016-05-17 16:05:13'),
(157, 254, '155_17-05-2016 18:00:50-Autonomía de aprendizaje.docx', 'DOCX', '2016-05-17 18:00:50', '2016-05-17 22:30:50'),
(159, 264, '194_17-05-2016 20:17:31-ResumenCongresoHumberto Mayora.doc', 'DOC', '2016-05-17 20:17:31', '2016-05-18 00:47:31'),
(160, 267, '34_17-05-2016 22:22:25-ABSTRAT CONGRESO 2016.docx', 'DOCX', '2016-05-17 22:22:25', '2016-05-18 02:52:25'),
(161, 274, '204_18-05-2016 02:40:58-PONENCIA LUISA ROJAS FaCE UC.docx', 'DOCX', '2016-05-18 02:40:58', '2016-05-18 07:10:58'),
(162, 275, '205_18-05-2016 08:59:51-INSCRIPCIÓN SIMPOSIO LAS ORGANIZACIONES Y SU GENTE - ANA PERLASCA NAVAS- VIA ELECTRONICA-12-05-16.docx', 'DOCX', '2016-05-18 08:59:51', '2016-05-18 13:29:51'),
(163, 276, '207_18-05-2016 10:24:21-UNIVERSIDAD ARTURO MICHELENA.doc', 'DOC', '2016-05-18 10:24:21', '2016-05-18 14:54:21'),
(164, 277, '130_18-05-2016 10:59:04-comte congreso.docx', 'DOCX', '2016-05-18 10:59:04', '2016-05-18 15:29:04'),
(165, 278, '160_18-05-2016 12:48:36-DERECHO Y RAZON.docx', 'DOCX', '2016-05-18 12:48:36', '2016-05-18 17:18:36'),
(166, 279, '114_18-05-2016 13:11:48-1 CONGRESO 1 - DOCTORANTE JOSE SEQUERA.docx', 'DOCX', '2016-05-18 13:11:48', '2016-05-18 17:41:48'),
(167, 280, '114_18-05-2016 13:13:43-2 CONGRESO 2 -  DOCTORANTE JOSE SEQUERA.docx', 'DOCX', '2016-05-18 13:13:43', '2016-05-18 17:43:43'),
(168, 281, '210_18-05-2016 19:59:28-Asumiendo Lo Político R4.docx', 'DOCX', '2016-05-18 19:59:28', '2016-05-19 00:29:28'),
(169, 284, '211_18-05-2016 21:37:06-ensayo_congreso_Neirys_Soto_.docx', 'DOCX', '2016-05-18 21:37:06', '2016-05-19 02:07:06'),
(170, 285, '211_18-05-2016 21:56:57-SIMPOSIOS_ FORMACIÓN_ DOCTORAL.docx', 'DOCX', '2016-05-18 21:56:57', '2016-05-19 02:26:57'),
(171, 286, '97_19-05-2016 08:49:22-ARTÍCULO CONGRESO UC (2016).docx', 'DOCX', '2016-05-19 08:49:22', '2016-05-19 13:19:22'),
(172, 288, '44_19-05-2016 09:08:01-PRESENTACIÓN NARRATIVA DE LOS RASGOS DE VIOLENCIA.docx', 'DOCX', '2016-05-19 09:08:01', '2016-05-19 13:38:01'),
(173, 289, '44_19-05-2016 09:12:00-Interpretación del suicido y la violencia.docx', 'DOCX', '2016-05-19 09:12:00', '2016-05-19 13:42:00'),
(174, 290, '5_19-05-2016 12:09:08-Congreso FACES-UC 2016, Ana Cordero Williams Aranguren.docx', 'DOCX', '2016-05-19 12:09:08', '2016-05-19 16:39:08'),
(175, 291, '212_19-05-2016 14:57:20-La Estatolatría del Socialismo del Siglo XXI.docx', 'DOCX', '2016-05-19 14:57:20', '2016-05-19 19:27:20'),
(176, 292, '213_19-05-2016 17:20:21-Ponente- DISEÑO INDUSTRIAL E INNOVACIÓN EN LA EMPRESA PARA LA CONSTRUCCIÓN DE LA SUSTENTABILIDAD.docx', 'DOCX', '2016-05-19 17:20:21', '2016-05-19 21:50:21'),
(177, 293, '27_19-05-2016 18:03:24-CongFACESUC_LiyGuedez.doc', 'DOC', '2016-05-19 18:03:24', '2016-05-19 22:33:24'),
(178, 294, '27_19-05-2016 18:24:22-CongFACESUC_LiyGuedez_2.docx', 'DOCX', '2016-05-19 18:24:22', '2016-05-19 22:54:22'),
(179, 295, '27_19-05-2016 19:40:05-CongFACESUC_LiyGuedez_3.docx', 'DOCX', '2016-05-19 19:40:05', '2016-05-20 00:10:05'),
(180, 296, '214_19-05-2016 19:46:39-CONTENIDOS NOEMATICOS DE MUJERES MASTECTOMIZADAS.doc', 'DOC', '2016-05-19 19:46:39', '2016-05-20 00:16:39'),
(181, 301, '61_19-05-2016 21:45:00-Curso de Git y GitHub.docx', 'DOCX', '2016-05-19 21:45:00', '2016-05-20 02:15:00'),
(182, 305, '26_20-05-2016 00:00:24-Certificación de Saberes en Universidades Venezolanas.docx', 'DOCX', '2016-05-20 00:00:24', '2016-05-20 04:30:24'),
(183, 306, '215_20-05-2016 09:10:40-congreso faces.docx', 'DOCX', '2016-05-20 09:10:40', '2016-05-20 13:40:40'),
(184, 308, '216_20-05-2016 10:01:36-Inscripcion Simposio y Normativa 2016 1 1-1.doc', 'DOC', '2016-05-20 10:01:36', '2016-05-20 14:31:36'),
(185, 309, '210_20-05-2016 11:45:10-inscripcion-simposio-normativa-2016.docx', 'DOCX', '2016-05-20 11:45:10', '2016-05-20 16:15:11'),
(186, 310, '217_20-05-2016 11:56:44-MARÍA GABRIELA GUZMÁN GONZÁLEZ Texto de la Ponencia Mayo 2016 -Congreso FACES -UC.doc', 'DOC', '2016-05-20 11:56:44', '2016-05-20 16:26:44'),
(187, 311, '135_20-05-2016 13:51:47-Trabajo para el Congreso2016.docx', 'DOCX', '2016-05-20 13:51:47', '2016-05-20 18:21:47'),
(188, 312, '219_20-05-2016 17:51:51-ERRORES-DIFICULTADES.docx', 'DOCX', '2016-05-20 17:51:51', '2016-05-20 22:21:51'),
(189, 313, '161_20-05-2016 18:04:43-CRBV.docx', 'DOCX', '2016-05-20 18:04:43', '2016-05-20 22:34:43'),
(192, 317, '206_21-05-2016 03:37:04-resumen congreso.docx', 'DOCX', '2016-05-21 03:37:04', '2016-05-21 08:07:04'),
(193, 318, '124_21-05-2016 06:22:42-2DO SIMPOSIO ADIE INFACES.docx', 'DOCX', '2016-05-21 06:22:42', '2016-05-21 10:52:42'),
(194, 319, '112_21-05-2016 10:04:04-TRABAJO RESPONSABILIDAD SOCIAL. UNA MIRADA DESDE LA DIMENSION AMBIENTAL PROF. LOYDA GARCIA.docx', 'DOCX', '2016-05-21 10:04:04', '2016-05-21 14:34:04'),
(196, 322, '43_21-05-2016 10:43:33-Una revisión bibliográfica del origen de las Economías de Aglomeración y su aporte para la generación de.docx', 'DOCX', '2016-05-21 10:43:33', '2016-05-21 15:13:33'),
(197, 323, '225_21-05-2016 11:20:14-Cyborgs Osio Querales 2016.docx', 'DOCX', '2016-05-21 11:20:14', '2016-05-21 15:50:14'),
(198, 324, '227_21-05-2016 12:46:47-Congreso FACES UC 2016 Prof Francis Lagardera.doc', 'DOC', '2016-05-21 12:46:47', '2016-05-21 17:16:47'),
(199, 325, '227_21-05-2016 12:53:46-Congreso FACES UC 2016 Prof Francis Lagardera. Paradigmas Administrativos.doc', 'DOC', '2016-05-21 12:53:46', '2016-05-21 17:23:46'),
(200, 326, '228_21-05-2016 13:04:05-Congreso de Investigación e Innovación de la FaCES - Trabajo Prof. María Alejandra Arévalo.docx', 'DOCX', '2016-05-21 13:04:05', '2016-05-21 17:34:05'),
(201, 327, '221_21-05-2016 15:07:21-PLANILLA DE INSCRIPCIÓN DE SIMPOSIO def.21.05.2016.docx', 'application/vnd.ms-word.document.12', '2016-05-21 15:07:21', '2016-05-21 19:37:21'),
(202, 328, '229_21-05-2016 15:15:25-ANALISIS CRITICO DE LA APLICACIÓN DEL POSITIVISMO EN LA UNIVERSIDAD Y SU FORMACION PROFESIONAL.docx', 'DOCX', '2016-05-21 15:15:25', '2016-05-21 19:45:25'),
(203, 329, '229_21-05-2016 15:18:59-trabajo congreso UC 2016.doc', 'DOC', '2016-05-21 15:18:59', '2016-05-21 19:48:59'),
(204, 330, '232_21-05-2016 17:24:20-Ensayo Rodrigo Patete.docx', 'DOCX', '2016-05-21 17:24:20', '2016-05-21 21:54:20'),
(205, 331, '64_21-05-2016 17:49:00-Díaz, Flores y Pérez Gerencia Palmetum4.docx', 'DOCX', '2016-05-21 17:49:00', '2016-05-21 22:19:00'),
(206, 332, '120_21-05-2016 19:16:37-inscripcion-simposio-normativa-2016 Comunicación.docx', 'DOCX', '2016-05-21 19:16:37', '2016-05-21 23:46:37'),
(207, 333, '120_21-05-2016 19:18:56-inscripcion-simposio-normativa-2016 administración.docx', 'DOCX', '2016-05-21 19:18:56', '2016-05-21 23:48:56'),
(208, 334, '120_21-05-2016 19:20:02-inscripcion-simposio-normativa-2016  Psicología.docx', 'DOCX', '2016-05-21 19:20:02', '2016-05-21 23:50:02'),
(209, 335, '233_21-05-2016 19:49:34-Estudio de las Competencias de los Docentes Universitarios en Tic.docx', 'DOCX', '2016-05-21 19:49:34', '2016-05-22 00:19:34'),
(210, 336, '234_21-05-2016 20:13:57-publicación congreso.docx', 'DOCX', '2016-05-21 20:13:57', '2016-05-22 00:43:57'),
(211, 337, '77_21-05-2016 20:36:05-inscripcion-simposio-responsabilidad social, Montserrat-Escalante.docx', 'DOCX', '2016-05-21 20:36:05', '2016-05-22 01:06:05'),
(212, 338, '125_21-05-2016 21:21:25-ROSIBEL GRISANTI trabajo Función Pública en el Municipio CONGRESO FACES 2016.pdf', 'PDF', '2016-05-21 21:21:25', '2016-05-22 01:51:25'),
(213, 339, '237_21-05-2016 22:22:28-Simposio Ecosalud.docx', 'DOCX', '2016-05-21 22:22:28', '2016-05-22 02:52:28'),
(214, 340, '214_21-05-2016 22:23:37-aproximación a la cotidianidad comunicación del médico y el paciente.doc', 'DOC', '2016-05-21 22:23:37', '2016-05-22 02:53:37'),
(215, 341, '204_22-05-2016 01:47:35-Los Investigadores. Como personas y como grupo VIVIAN GONZÁLEZ Y LUISA ROJAS.docx', 'DOCX', '2016-05-22 01:47:35', '2016-05-22 06:17:35'),
(216, 342, '230_22-05-2016 04:52:56-PAPEL PARA EL CONGRESO SOBRE  LA PERTINENCIA SOCIAL DE LA EDUCACIÓN SUPERIOR.docx', 'DOCX', '2016-05-22 04:52:56', '2016-05-22 09:22:56'),
(217, 343, '237_22-05-2016 08:36:10-Sintesis curricular Yenny Alviarez. 12052016.docx', 'DOCX', '2016-05-22 08:36:10', '2016-05-22 13:06:10'),
(218, 344, '237_22-05-2016 08:36:47-Síntesis Curricular Martha Pernalete 2016.docx', 'DOCX', '2016-05-22 08:36:47', '2016-05-22 13:06:47'),
(219, 345, '28_22-05-2016 08:38:00-TRABAJO ECOFORMACIÓN UNIVERSITARIA PROF. CHAPARDI.docx', 'DOCX', '2016-05-22 08:38:00', '2016-05-22 13:08:00'),
(220, 347, '39_22-05-2016 09:55:51-Poster Prof. Yvonne Pino. Br. Carlos Delgado.docx', 'DOCX', '2016-05-22 09:55:51', '2016-05-22 14:25:51'),
(221, 348, '239_22-05-2016 10:01:15-2do CONGRESO DE INVESTIGACION FACES (definitiva).doc', 'DOC', '2016-05-22 10:01:15', '2016-05-22 14:31:15'),
(222, 349, '240_22-05-2016 10:20:11-FACES- SANTOS,M.,  FERREIRA, M., BRAVO, K.doc', 'DOC', '2016-05-22 10:20:11', '2016-05-22 14:50:11'),
(223, 352, '107_22-05-2016 11:41:31-LA EXTENSIÓN UNIVERSITARIA  FACES 2016 (1) DR.doc', 'DOC', '2016-05-22 11:41:31', '2016-05-22 16:11:31'),
(224, 353, '244_22-05-2016 14:51:26-COMUNICACIÒN PARA EL DESARROLLO.docx', 'DOCX', '2016-05-22 14:51:26', '2016-05-22 19:21:26'),
(225, 354, '246_22-05-2016 14:55:54-inscripcion-simposio-Estadistica 2016.docx', 'DOCX', '2016-05-22 14:55:54', '2016-05-22 19:25:54'),
(226, 355, '245_22-05-2016 14:56:57-TRABAJO PARA EL CONGRESO.docx', 'DOCX', '2016-05-22 14:56:57', '2016-05-22 19:26:57'),
(227, 356, '247_22-05-2016 14:59:34-ETHOS.docx', 'DOCX', '2016-05-22 14:59:34', '2016-05-22 19:29:34'),
(228, 357, '247_22-05-2016 15:12:16-ETHOS.docx', 'DOCX', '2016-05-22 15:12:16', '2016-05-22 19:42:16'),
(229, 358, '248_22-05-2016 15:19:01-BIOERA; CONCIENCIA ECOLÓGICA SISTÉMICA.docx', 'DOCX', '2016-05-22 15:19:01', '2016-05-22 19:49:01'),
(230, 359, '127_22-05-2016 16:23:48-Revision Sistematica PONENCIA.docx', 'DOCX', '2016-05-22 16:23:48', '2016-05-22 20:53:48'),
(231, 360, '43_22-05-2016 16:33:50-Una revisión bibliográfica desde los aportes Marshalliana  hasta la teoría de los distritos industriales.docx', 'DOCX', '2016-05-22 16:33:50', '2016-05-22 21:03:50'),
(232, 361, '119_22-05-2016 16:35:38-CONGRESO FACES 1 ARIVAS.docx', 'DOCX', '2016-05-22 16:35:38', '2016-05-22 21:05:38'),
(233, 362, '119_22-05-2016 16:36:33-CONGRESO FACES 2 ARIVAS.docx', 'DOCX', '2016-05-22 16:36:33', '2016-05-22 21:06:33'),
(234, 363, '119_22-05-2016 16:37:24-CONGRESO FACES 3 ARIVAS JPACHECO AMONTILLA.docx', 'DOCX', '2016-05-22 16:37:24', '2016-05-22 21:07:24'),
(235, 364, '249_22-05-2016 16:42:19-resumen ELIANGELA - UC.docx', 'DOCX', '2016-05-22 16:42:19', '2016-05-22 21:12:19'),
(236, 365, '4_22-05-2016 17:01:43-Trabajo Estrategias Gerenciales FUNDAUC.docx', 'DOCX', '2016-05-22 17:01:43', '2016-05-22 21:31:43'),
(237, 366, '250_22-05-2016 17:29:23-ARTICULO CIENFITICO ADRIANA LISSETTE MARTINEZ UC 2016.docx', 'DOCX', '2016-05-22 17:29:23', '2016-05-22 21:59:23'),
(238, 367, '77_22-05-2016 18:07:39-ARTÍCULO MONTSERRAT ESCALANTE, CONGRESO FACES 2016..docx', 'DOCX', '2016-05-22 18:07:39', '2016-05-22 22:37:39'),
(239, 368, '220_22-05-2016 18:39:46-DISEÑO DE UNA GUÍA DE ORIENTACIÓN DE LOS DEBERES LEGALES, TRIBUTARIOS Y FINANCIEROS MAS COMUNES EN LAS ORGANIZACIONES.docx', 'DOCX', '2016-05-22 18:39:46', '2016-05-22 23:09:46'),
(240, 370, '251_22-05-2016 18:48:02-1 Trabajo logistica_luis congreso UC 2016.doc', 'DOC', '2016-05-22 18:48:02', '2016-05-22 23:18:02'),
(241, 371, '253_22-05-2016 18:50:06-articuloFACES.docx', 'DOCX', '2016-05-22 18:50:06', '2016-05-22 23:20:06'),
(242, 372, '254_22-05-2016 18:56:12-PLANIFICACIÓN FINANCIERA PARA PYMES.docx', 'DOCX', '2016-05-22 18:56:12', '2016-05-22 23:26:12'),
(243, 373, '141_22-05-2016 18:58:46-Trabajo FACE2016.docx', 'DOCX', '2016-05-22 18:58:46', '2016-05-22 23:28:46'),
(244, 374, '168_22-05-2016 19:12:48-LA GESTIÓN DE EMPRENDER CENTRADA EN EL INDIVIDUO def congre.docx', 'DOCX', '2016-05-22 19:12:48', '2016-05-22 23:42:48'),
(245, 375, '193_22-05-2016 19:14:15-Simposio De la visibilidad hacia la invisibilidad de la discapacidad.docx', 'DOCX', '2016-05-22 19:14:15', '2016-05-22 23:44:15'),
(246, 376, '256_22-05-2016 19:16:29-EL FEMINICIDIO EN LA INVESTIGACIÓN CRIMINAL CUC.docx', 'DOCX', '2016-05-22 19:16:29', '2016-05-22 23:46:29'),
(247, 377, '30_22-05-2016 19:35:18-Articulo RG, ND,LG Congreso Faces.doc', 'DOC', '2016-05-22 19:35:18', '2016-05-23 00:05:18'),
(248, 379, '257_22-05-2016 19:54:11-Propuesta de mejoras en el sistema de cuentas para la elaboración de un Ecobalance.docx', 'DOCX', '2016-05-22 19:54:11', '2016-05-23 00:24:11'),
(249, 380, '195_22-05-2016 20:11:44-Evaluación de las condiciones ....doc', 'DOC', '2016-05-22 20:11:44', '2016-05-23 00:41:44'),
(250, 381, '255_22-05-2016 20:16:37-Articulo G. NANI - BOLÍVAR Congreso Faces 2016.docx', 'DOCX', '2016-05-22 20:16:37', '2016-05-23 00:46:37'),
(251, 382, '81_22-05-2016 20:28:58-TICS y la Gestión de las Personas en la Organización Smith Lopez Lainet.docx', 'DOCX', '2016-05-22 20:28:58', '2016-05-23 00:58:58'),
(252, 383, '5_22-05-2016 20:33:50-Congreso FACES-UC 2016, Ana Cordero (final).doc', 'DOC', '2016-05-22 20:33:50', '2016-05-23 01:03:50'),
(253, 393, '235_22-05-2016 21:30:00-El bachaqueo.¿ Una actividad laboral.docx', 'DOCX', '2016-05-22 21:30:00', '2016-05-23 02:00:00'),
(254, 394, '235_22-05-2016 21:33:49-BOLIVAR - NANI CONGRESO FACES.docx', 'DOCX', '2016-05-22 21:33:49', '2016-05-23 02:03:49'),
(255, 395, '261_22-05-2016 21:47:21-Malestar Docente.doc', 'DOC', '2016-05-22 21:47:21', '2016-05-23 02:17:21'),
(256, 396, '262_22-05-2016 22:03:43-La inspección del trabajo  Y el trabajo decente.doc', 'DOC', '2016-05-22 22:03:43', '2016-05-23 02:33:43'),
(257, 397, '129_22-05-2016 22:25:16-resumen.docx', 'DOCX', '2016-05-22 22:25:16', '2016-05-23 02:55:16'),
(258, 398, '243_22-05-2016 22:35:22-Voces de febrero historias de una madre.doc', 'DOC', '2016-05-22 22:35:22', '2016-05-23 03:05:22'),
(259, 399, '263_22-05-2016 22:39:14-ROSTROS DEL PERIODISMO (1).doc', 'DOC', '2016-05-22 22:39:14', '2016-05-23 03:09:14'),
(260, 401, '264_22-05-2016 22:52:03-PROPUESTA DE RESPONSABILIDAD SOCIAL PARA EMPRESAS DEL SECTOR DE SERVICIOS DE ASESORÍAS VENEZOLANO.docx', 'DOCX', '2016-05-22 22:52:03', '2016-05-23 03:22:03'),
(261, 402, '248_22-05-2016 22:56:31-LA GESTIÓN MEDIOAMBIENTAL DENTRO DE LA UNIVERSIDAD, UNA PERSPECTIVA DE ANALISIS Y EVALUACION.docx', 'DOCX', '2016-05-22 22:56:31', '2016-05-23 03:26:31'),
(262, 403, '264_22-05-2016 23:04:58-Participación Ciudadana Una alternativa en la formulación de Políticas Públicas Municipales para la Juventud (Congreso UC).docx', 'DOCX', '2016-05-22 23:04:58', '2016-05-23 03:34:58'),
(263, 404, '266_22-05-2016 23:06:46-Desempeño laboral del docente universitario en instituciones de salud.doc', 'DOC', '2016-05-22 23:06:46', '2016-05-23 03:36:46'),
(264, 405, '81_22-05-2016 23:08:49-La relaciòn educaciòn y trabajo desde la perspectiva de la la formaciòn y el empleo.docx', 'DOCX', '2016-05-22 23:08:49', '2016-05-23 03:38:49'),
(265, 406, '34_22-05-2016 23:15:55-RacionamientoElecDinoskaTovar.docx', 'DOCX', '2016-05-22 23:15:55', '2016-05-23 03:45:55'),
(266, 407, '81_22-05-2016 23:16:54-Trabajo  Sociedad y Estado.doc', 'DOC', '2016-05-22 23:16:54', '2016-05-23 03:46:54'),
(267, 408, '267_22-05-2016 23:32:40-Extenso.docx', 'DOCX', '2016-05-22 23:32:40', '2016-05-23 04:02:40'),
(268, 409, '268_22-05-2016 23:47:34-INVESTIGACIÓN REPRESENTACIONES  SOCIALES   DEL APRENDIZAJE DE MATEMTICA I EN ESTUDIANTES DEL TURNO DE LA NOCHES A - copia.docx', 'DOCX', '2016-05-22 23:47:34', '2016-05-23 04:17:34'),
(269, 410, '196_22-05-2016 23:50:01-RESUMEN CONGRESO JRangel.docx', 'DOCX', '2016-05-22 23:50:01', '2016-05-23 04:20:01'),
(270, 411, '269_22-05-2016 23:54:40-ORIGINAL ARTICULO AGUA PARA ENTREGA.docx', 'DOCX', '2016-05-22 23:54:40', '2016-05-23 04:24:40'),
(271, 412, '269_22-05-2016 23:56:35-CONSTRUYENDOUN AMABIENTE FAVORABLE.docx', 'DOCX', '2016-05-22 23:56:35', '2016-05-23 04:26:35'),
(272, 413, '270_23-05-2016 00:06:04-Documento_Congreso FaCES 2016_Maldonado Acosta y Delgado de Smith_Def.doc', 'DOC', '2016-05-23 00:06:04', '2016-05-23 04:36:04'),
(273, 414, '271_23-05-2016 01:14:05-Proceso histórico de la identidad urbana y arquitectónica en Valencia.docx', 'DOCX', '2016-05-23 01:14:05', '2016-05-23 05:44:05'),
(274, 415, '269_23-05-2016 02:42:41-El uso sustentable del agua como resultado de la Innovación gerencial.docx', 'DOCX', '2016-05-23 02:42:41', '2016-05-23 07:12:41'),
(275, 416, '272_23-05-2016 02:52:00-ULA Cerca de Ti, Camacaro y Silva.docx', 'DOCX', '2016-05-23 02:52:00', '2016-05-23 07:22:00'),
(276, 417, '226_23-05-2016 04:51:26-Simposio II Congreso (Autoguardado).docx', 'DOCX', '2016-05-23 04:51:26', '2016-05-23 09:21:26'),
(277, 418, '222_23-05-2016 05:27:12-GLENDA REYES PONENCIA PARA EL CONGRESO DE FACES.docx', 'DOCX', '2016-05-23 05:27:12', '2016-05-23 09:57:12'),
(278, 419, '124_23-05-2016 06:06:09-POTENCIANDO EL TURISMO PORTEÑO.docx', 'DOCX', '2016-05-23 06:06:09', '2016-05-23 10:36:09'),
(279, 420, '274_23-05-2016 08:02:35-PONENCIA CARABOBO.docx', 'DOCX', '2016-05-23 08:02:35', '2016-05-23 12:32:35'),
(280, 424, '178_23-05-2016 08:34:41-VINVULACIÓN SECTOR PRODUCTIVO-UNIVERSIDAD.doc', 'DOC', '2016-05-23 08:34:41', '2016-05-23 13:04:41'),
(281, 425, '255_23-05-2016 08:56:02-G. NANI - Z. BOLÍVAR  ARTÍCULO CONGRESO FACES 2016.docx', 'DOCX', '2016-05-23 08:56:02', '2016-05-23 13:26:02'),
(282, 426, '202_23-05-2016 09:22:05-Congreso Faces 2016 AS, DS, IL.docx', 'DOCX', '2016-05-23 09:22:05', '2016-05-23 13:52:05'),
(283, 427, '276_23-05-2016 10:00:26-La Estatolatría del Socialismo del Siglo XXI.docx', 'DOCX', '2016-05-23 10:00:26', '2016-05-23 14:30:26'),
(284, 428, '167_23-05-2016 10:06:19-De estudiante a emprendedor.docx', 'DOCX', '2016-05-23 10:06:19', '2016-05-23 14:36:19'),
(285, 429, '277_23-05-2016 10:09:44-GEUS Inscripcion Simposio..docx', 'DOCX', '2016-05-23 10:09:44', '2016-05-23 14:39:44'),
(286, 430, '265_23-05-2016 10:12:35-PEDRO VILLARROEL PONENCIA PARA EL CONGRESO DE FACES.docx', 'DOCX', '2016-05-23 10:12:35', '2016-05-23 14:42:35'),
(287, 434, '275_23-05-2016 10:44:39-Yamile y Rolando Congreso Faces 2016.doc', 'DOC', '2016-05-23 10:44:39', '2016-05-23 15:14:39'),
(288, 435, '275_23-05-2016 10:46:44-Yamile y Rolando Congreso Faces 2016 (2).doc', 'DOC', '2016-05-23 10:46:44', '2016-05-23 15:16:44'),
(289, 436, '275_23-05-2016 10:52:04-Yamile MUJERES y CIENCIA FAces 3.doc', 'DOC', '2016-05-23 10:52:04', '2016-05-23 15:22:04'),
(290, 437, '273_23-05-2016 11:02:34-Chiaro González Yuliber del Valle C.docx', 'DOCX', '2016-05-23 11:02:34', '2016-05-23 15:32:34'),
(291, 438, '278_23-05-2016 11:17:25-ANALISIS DE LA NATURALEZA FINANCIERA DE LOS INVENTARIOS REGULADOS.docx', 'DOCX', '2016-05-23 11:17:25', '2016-05-23 15:47:25'),
(292, 439, '278_23-05-2016 11:26:53-SIMPOSIO ACCP.docx', 'DOCX', '2016-05-23 11:26:53', '2016-05-23 15:56:53'),
(293, 440, '71_23-05-2016 11:27:15-ARTICULO CONGRESO FACES16. Alicia Silva Silva.doc', 'DOC', '2016-05-23 11:27:15', '2016-05-23 15:57:15'),
(294, 441, '3_23-05-2016 11:29:21-Elementos discursivos sobre la modernidad y la postmodernidad.docx', 'DOCX', '2016-05-23 11:29:21', '2016-05-23 15:59:21'),
(295, 442, '280_23-05-2016 11:38:11-La formación gerencial con pertinencia social.docx', 'DOCX', '2016-05-23 11:38:11', '2016-05-23 16:08:11'),
(296, 444, '203_23-05-2016 12:11:40-Análisis sobre las condiciones que requiere el diálogo social para establecerse exitosamente..docx', 'DOCX', '2016-05-23 12:11:40', '2016-05-23 16:41:40'),
(297, 446, '139_23-05-2016 16:18:54-ponencia.docx', 'DOCX', '2016-05-23 16:18:54', '2016-05-23 20:48:54'),
(298, 447, '102_23-05-2016 16:26:40-trabajo.docx', 'DOCX', '2016-05-23 16:26:40', '2016-05-23 20:56:40'),
(299, 448, '72_23-05-2016 16:31:07-trabajo2.docx', 'DOCX', '2016-05-23 16:31:07', '2016-05-23 21:01:07'),
(300, 449, '63_24-05-2016 22:22:06-Aurora Salcedo_Congreso Internacional FACES 2016.docx', 'DOCX', '2016-05-24 22:22:06', '2016-05-25 02:52:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

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
(28, 109, 'BOD', '457869551', '1950', 'Por verificar', 105, '2016-05-13 10:59:20', '2016-05-13 15:29:20'),
(29, 95, 'Banco Occidental de Descuento C.A, BOD', '27134129', '1950', 'Por verificar', 125, '2016-05-14 11:57:34', '2016-05-14 16:27:34'),
(30, 94, 'Banco de Venezuela', '27286794', '1950', 'Por verificar', 129, '2016-05-14 14:53:36', '2016-05-14 19:23:36'),
(31, 133, 'banco mercantil', '0052300498105', '1950', 'Por verificar', 130, '2016-05-14 15:00:56', '2016-05-14 19:30:56'),
(32, 130, 'Banco Provincial', '94865580', '3900', 'Por verificar', 136, '2016-05-14 16:56:32', '2016-05-14 21:26:32'),
(33, 126, 'BANCO MERCANTIL', '0052300505426', '1950', 'Por verificar', 121, '2016-05-14 19:10:48', '2016-05-14 23:40:48'),
(34, 145, 'Banesco', '5858305434', '1950', 'Por verificar', 150, '2016-05-15 10:20:25', '2016-05-15 14:50:25'),
(35, 149, 'Banco Occidental de Descuento BOD', '455793805', '1950', 'Por verificar', 159, '2016-05-15 12:42:57', '2016-05-15 17:12:57'),
(36, 158, 'Banco de Venezuela', '27976920', '1950', 'Por verificar', 180, '2016-05-15 16:42:11', '2016-05-15 21:12:11'),
(38, 170, 'BANCO OCCIDENTAL DE DESCUENTO (BOD)', '28085878 TRANSFERENCIA', '1950,00', 'Por verificar', 193, '2016-05-15 19:24:01', '2016-05-15 23:54:01'),
(39, 62, 'BOD', '478304134', '1950', 'Por verificar', 200, '2016-05-15 19:46:38', '2016-05-16 00:16:38'),
(40, 62, 'BOD', '478304135', '1950', 'Por verificar', 201, '2016-05-15 19:52:57', '2016-05-16 00:22:57'),
(41, 84, 'BOD', '478304136', '1950', 'Por verificar', 202, '2016-05-15 19:57:24', '2016-05-16 00:27:24'),
(42, 169, 'Banco Occidental de Descuento', '473030183', '1950', 'Por verificar', 205, '2016-05-15 20:26:25', '2016-05-16 00:56:25'),
(43, 83, 'Banco Occidental de Descuento', '0008829015', '1950', 'Por verificar', 204, '2016-05-15 20:30:16', '2016-05-16 01:00:16'),
(44, 175, 'Banco Mercantil', '0052300543177', '1950', 'Por verificar', 206, '2016-05-15 20:38:29', '2016-05-16 01:08:29'),
(46, 174, 'Banco Occidental de Descuento', '456635101', '1950', 'Por verificar', 208, '2016-05-15 21:26:04', '2016-05-16 01:56:04'),
(47, 32, 'Banco Banesco', '5866721879', '1950', 'Por verificar', 85, '2016-05-16 09:17:56', '2016-05-16 13:47:56'),
(48, 118, 'Banco de Venezuela', '30557600', '1950', 'Por verificar', 131, '2016-05-17 10:13:29', '2016-05-17 14:43:29'),
(50, 55, 'Transferencia del Banco Banesco al Banco Occidental de Descuento', '5872324661', '1950', 'Por verificar', 56, '2016-05-17 11:55:41', '2016-05-17 16:25:41'),
(52, 34, 'BANCO MERCANTIL', '0052300829392', '1950', 'Por verificar', 267, '2016-05-17 23:02:52', '2016-05-18 03:32:52'),
(53, 207, 'Banco BOD', '95334437', '1950', 'Por verificar', 276, '2016-05-18 13:47:15', '2016-05-18 18:17:15'),
(54, 210, 'Banco Occidental de  Descuento', '0460752394', '1950', 'Por verificar', 281, '2016-05-18 20:01:18', '2016-05-19 00:31:18'),
(55, 97, 'Banco Occidental de Descuento', '5851430601', '1950', 'Por verificar', 286, '2016-05-19 08:51:02', '2016-05-19 13:21:02'),
(57, 44, 'BOD ', 'TR0009631465', '1950', 'Por verificar', 288, '2016-05-19 09:21:25', '2016-05-19 13:51:25'),
(58, 44, 'BOD ', 'TR0009631623', '1950', 'Por verificar', 289, '2016-05-19 09:21:57', '2016-05-19 13:51:57'),
(59, 82, 'bod', '95528593', '1950', 'Por verificar', 81, '2016-05-19 21:26:56', '2016-05-20 01:56:56'),
(60, 135, 'BOD', '472815138', '1950', 'Por verificar', 311, '2016-05-20 13:52:54', '2016-05-20 18:22:54'),
(61, 60, 'Banco BOD', '457263463', '1950', 'Por verificar', 60, '2016-05-20 15:17:43', '2016-05-20 19:47:43'),
(62, 219, 'Banco de Venezuela', '35980991', '1950', 'Por verificar', 312, '2016-05-20 18:06:26', '2016-05-20 22:36:26'),
(63, 224, 'BANCO OCCIDENTAL DE DESCUENTO', '473256446', '1950', 'Por verificar', 320, '2016-05-21 10:11:23', '2016-05-21 14:41:23'),
(64, 130, 'Banco Occidental de Descuento', '113006', '1950', 'Por verificar', 277, '2016-05-21 11:55:19', '2016-05-21 16:25:19'),
(65, 229, 'Del Tesoro', '113709', '1950', 'Por verificar', 328, '2016-05-21 15:17:16', '2016-05-21 19:47:16'),
(66, 229, 'Del Tesoro', '113947', '1950', 'Por verificar', 329, '2016-05-21 15:19:35', '2016-05-21 19:49:35'),
(68, 233, 'bod', '457869620', '1950', 'Por verificar', 335, '2016-05-21 19:57:02', '2016-05-22 00:27:02'),
(69, 237, 'Banco de Venezuela', '36931601', '1950', 'Por verificar', 339, '2016-05-21 22:48:36', '2016-05-22 03:18:36'),
(70, 248, 'Banco Occidental de Descuento', '472519392', '1950', 'Por verificar', 358, '2016-05-22 15:21:56', '2016-05-22 19:51:56'),
(71, 141, 'BOD', '472815127', '1950', 'Por verificar', 373, '2016-05-22 18:59:27', '2016-05-22 23:29:27'),
(72, 218, 'BOD', '473841910', '1950', 'Por verificar', 374, '2016-05-22 20:04:25', '2016-05-23 00:34:25'),
(73, 129, 'provincial', '94910568', '1950', 'Por verificar', 397, '2016-05-22 22:31:58', '2016-05-23 03:01:58'),
(74, 248, 'Banco Occidental de Descuento', '472519394', '1950', 'Por verificar', 402, '2016-05-22 22:57:52', '2016-05-23 03:27:52'),
(75, 226, 'BOD', 'TR0009892232', '1950', 'Por verificar', 417, '2016-05-23 04:53:56', '2016-05-23 09:23:56'),
(76, 124, 'BOD Banco Occidental de Descuento', 'TR0009883312', '1950', 'Por verificar', 419, '2016-05-23 06:08:53', '2016-05-23 10:38:53'),
(77, 124, 'BOD - Banco Occidental de Descuento', 'TR0009689769', '1950', 'Por verificar', 318, '2016-05-23 15:06:37', '2016-05-23 19:36:37'),
(78, 61, 'BOD', '541643', '1950', 'Por verificar', 301, '2016-05-23 15:27:05', '2016-05-23 19:57:05'),
(79, 103, 'Banco Ociddental de Descuento', '0009954299', '1950', 'Por verificar', 97, '2016-05-23 18:18:17', '2016-05-23 22:48:17'),
(80, 141, 'BOD', '473415507', '1950', 'Por verificar', 373, '2016-05-23 23:31:09', '2016-05-24 04:01:09'),
(81, 286, 'Banco Occidental de  Descuento', '473578122', '1950', 'Por verificar', 309, '2016-05-24 06:33:58', '2016-05-24 11:03:58'),
(82, 267, 'Banco Provincial', '90116310', '1950', 'Por verificar', 408, '2016-05-24 11:35:06', '2016-05-24 16:05:06'),
(83, 210, 'Banco Provincial', '1750', '1950', 'Por verificar', 309, '2016-05-24 14:13:32', '2016-05-24 18:43:32'),
(84, 146, 'BANCO BOD', 'TR0010017430', '1950', 'Por verificar', 152, '2016-05-24 14:33:36', '2016-05-24 19:03:36'),
(85, 63, 'Banco Provincial ', '93547059', '1950', 'Por verificar', 449, '2016-05-24 22:22:58', '2016-05-25 02:52:58'),
(86, 274, 'banco occidental de descuento BOD', 'TR0010057624', '1950', 'Por verificar', 420, '2016-05-25 07:40:49', '2016-05-25 12:10:49'),
(87, 258, 'Provincial ', '90205242', '1300,00 participante ', 'Por verificar', 439, '2016-05-26 17:02:01', '2016-05-26 21:32:01'),
(88, 38, 'Banco occidental de Descuento', 'TROO10208596', '1950', 'Por verificar', 128, '2016-05-26 17:02:39', '2016-05-26 21:32:39'),
(89, 134, 'Banco Occidental de Descuento (BOD)', 'TROO10248255', '1950', 'Por verificar', 149, '2016-05-27 10:16:27', '2016-05-27 14:46:27'),
(90, 78, 'Banco Provincial', '90616310', '1950', 'Por verificar', 72, '2016-05-27 19:40:43', '2016-05-28 00:10:43'),
(91, 137, 'BANCO NACIONAL DE DESCUENTO ', '461763468', '1950', 'Por verificar', 139, '2016-05-28 06:38:10', '2016-05-28 11:08:10'),
(92, 137, 'BANCO OCCIDENTAL DE DESCUENTO', '461763471', '1950', 'Por verificar', 139, '2016-05-28 06:40:18', '2016-05-28 11:10:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8;

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
(27, '27_2015_foto_cvitae_liy.jpg', 'Guedez Blanco', 'Liyeira J.', '7106789', '04163307645', 'liyeiraguedez@gmail.com', 'Universidad de Carabobo - Universidad Arturo Michelena', 'UC: Dirección de Estudios Generales - UAM Escuela de Administración Comercial y Contaduría Pública - ACCP', '160a15591918885a069d5e93a5f0a3c36b2a7de8', NULL, '2016-05-19 19:41:29', '2016-05-20 00:11:29'),
(28, '28_TRABAJO ECOFORMACIÓN UNIVERSITARIA PROF. CHAPARDI.docx', 'Chapardi Cárdenas', 'Nancy Duvraska', '9688577', '04124447786', 'nancychapardi@gmail.com', 'Universidad de Carabobo', 'Escuela de Administración Comercial y Contaduría Pública ', '4b2ee3597f9b160eda2124af23c960fd871ab1f3', NULL, '2016-05-22 08:37:00', '2016-05-22 13:07:00'),
(29, NULL, 'Knuth Montes', 'Carla Cecilia', '12754829', '04266417490', 'carlaknuth@gmail.com', NULL, NULL, 'f2f28697720e0f6e9b5941df0ce2a210d8daeac3', NULL, '2016-04-17 23:22:00', '2016-04-18 03:52:00'),
(30, NULL, 'Gomez', 'Rosalinda', '15651959', '04243569460', 'rosalindagomez_impuestos@hotmail.com', 'Universidad de Carabobo', 'Administración y Contaduría Publica   ', 'a655bc5c4d69c71cec87bef08c64fa45df76dc93', NULL, '2016-05-23 11:03:22', '2016-05-23 15:33:22'),
(31, NULL, 'Tovar', 'Belkis Zoraida', '3577957', '04144280469', 'belkistovar10@gmail.com', NULL, NULL, '499c0c73a241b99e994ad0701a679f7730785278', NULL, '2016-04-18 18:01:51', '2016-04-18 22:31:51'),
(32, NULL, 'Maldonado Ruiz', 'Edgar Alfonso', '14908914', '04142827693', 'edgarucv@gmail.com', 'Universidad Central de Venezuela ', 'Escuela de Historia ', 'cb8dde3d368b1eddd8aac5ce4cf6a9aaa555e639', NULL, '2016-05-11 10:10:55', '2016-05-11 14:40:55'),
(33, NULL, 'GALLARDO CALCURIAN', 'RAFAEL ARTURO', 'V-4114286', '04142636519', 'rafaelgallardo54@hotmail.com', NULL, NULL, '56e7d3b13845ff2b2092317a0aa5c381aaa199ec', NULL, '2016-04-21 11:47:16', '2016-04-21 16:17:16'),
(34, '34_IMG_1270.JPG', 'TOVAR ZERPA', 'DINOSKA', '8543060', '04144354789', 'dinoskatovar1@hotmail.com', 'UNIVERSIDAD CARABOBO', '', '6671bac9b86fefecdb28aad59ff68fe9966e7980', NULL, '2016-05-22 23:19:11', '2016-05-23 03:49:11'),
(35, NULL, 'Walls Ramirez', 'María Francisca', '13694714', '04241517190', 'anaclavel14@gmail.com', NULL, NULL, 'f0dcadffb90b230b0608eb54b631314b4870a3c7', NULL, '2016-04-22 20:30:10', '2016-04-23 01:00:10'),
(36, NULL, 'ARASME SALAS', 'CARMEN KARINA', '7943291', '04144327489', 'karasme@gmail.com', NULL, NULL, '04ab903b4c36a3d8d644f7e83e6a13ba07214a07', NULL, '2016-04-22 23:01:02', '2016-04-23 03:31:02'),
(37, NULL, 'MARQUEZ', 'ANA', 'Valencia', '04144166191', 'aimarquez2002@yahoo.com', NULL, NULL, '8383251b0aa6c6a7a94545d96ba61202f245c130', NULL, '2016-04-23 05:33:50', '2016-04-23 10:03:50'),
(38, '38_1460169402720.jpg', 'Ramírez Cuicas', 'Odalis', '17613537', '0412349724', 'odalis_ramirezc@hotmail.com', 'Universidad de Carabobo', 'Odontología', 'bb1f4af1426b82338853ddfc69f26ae11f1e7d65', NULL, '2016-04-24 09:48:31', '2016-04-24 14:18:31'),
(39, NULL, 'Pino', 'Yvonne', '10341694', '04145896996', 'yvonnepino@gmail.com', NULL, NULL, 'b342a21b6ca11f45595dad2f2be808d97972e8a8', NULL, '2016-04-24 11:48:54', '2016-04-24 16:18:54'),
(41, '41_Foto Eventos.jpg', 'Mora Contreras', 'César Enrique', '11.469.894', '0426-2722832', 'moracesar@gmail.com', 'Universidad de Los Andes', 'Centro de Investigaciones y Desarrollo Empresarial', '09e31afef4bf7c3d6742d5c0991baa9222e2b4de', NULL, '2016-05-15 20:35:46', '2016-05-16 01:05:46'),
(42, NULL, 'Lorenzo', 'Cristina', 'Naguanagua', '+584144087835', 'cristi_lova@hotmail.com', NULL, NULL, 'b6410bae09152ca4ed1cbdf35cb733a86bed21af', NULL, '2016-04-25 18:34:37', '2016-04-25 23:04:37'),
(43, '43_p1010459.JPG', 'LOZADA PACHECO', 'LUIS JOSÉ', 'V-. 12.121.200', '04145962910', 'LOZADA.LUIS@GMAIL.COM', 'UC/ FACES', 'ECONOMÍA', '6535cf87693721d8c430a444f7e5b8552567474b', NULL, '2016-05-15 12:41:30', '2016-05-15 17:11:30'),
(44, '44_foto personal.jpg', 'SALAME', 'IPTISAM', '11054433', '04144302443', 'iptissamsalame@hotmail.com', '', '', '188a08da6e877c9e4ff58cecf0d883409f1bf644', NULL, '2016-05-27 21:40:27', '2016-05-28 02:10:27'),
(45, NULL, 'Suárez Montoya', 'Belkys Coromoto', '8136329', '04143585898', 'bsuarez17@hotmail.com', NULL, NULL, 'dc3a4a2bb7cd21bdb642b6b8f29009bb1be7f9a0', NULL, '2016-04-25 21:36:42', '2016-04-26 02:06:42'),
(46, '46_25888_364681162219_4126609_n.jpg', 'Ziegler Delgado', 'Maria Magdalena', '10282600', '0412-3015994', 'mziegler@unimet.edu.ve', 'Universidad Metropolitana', 'Departamento de Humanidades', '0e3f8b673addb201ebddb887ec7de3e6cf696597', NULL, '2016-05-17 07:41:12', '2016-05-17 12:11:12'),
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
(63, NULL, 'Salcedo Medina', 'Aurora Celina', 'V14514791', '04140455180', 'auroracsm50@gmail.com', NULL, NULL, '7572ff80570af4271546f507718ce40d0870a87a', NULL, '2016-05-03 18:26:34', '2016-05-29 05:54:23'),
(64, '64_FotoCarnet.jpg', 'DIAZ', 'ESMEYA', '4246181', '04144266317', 'esmeya.diazm@gmail.com', 'Universidad de Carabobo / INFACES', '', 'ea237870d106b40c9c4b9bc1016e9d3129d962bf', NULL, '2016-05-04 11:34:07', '2016-05-04 16:04:07'),
(65, NULL, 'Perez', 'Roxy Rusbely', '14572124', '04169011053', 'yxor13@gmail.com', NULL, NULL, '227f6390ef2ac5e0e1f4dcaefd8705a371b52264', NULL, '2016-05-04 11:38:27', '2016-05-04 16:08:27'),
(66, '66_12342553_10153438136278732_1114878134052833778_n.jpg', 'Rodriguez Faria', 'José Jesús', '20294377', '04129400662', 'jose_rodriguez_108@hotmail.com', '', 'Escuela de Derecho', 'c7a85ff8f25c2e60399af514812b49204729956f', NULL, '2016-05-13 17:58:01', '2016-05-13 22:28:01'),
(67, NULL, 'Ucero Bravo', 'Carmen Teresa', '9661661', '0424-3362000', 'uceroctb@gmail.com', NULL, NULL, 'ec4d1e173a233b992e966fe4ec9b38402b90a6d7', NULL, '2016-05-06 10:08:50', '2016-05-06 14:38:50'),
(68, NULL, 'Sánchez Bastidas', 'Joselyn Nathaly', '21256339', '04263289098', 'joselyn_nathaly@hotmail.com', NULL, NULL, '283b3f80b5e0e63acac3516e6caf191aa98a0f86', NULL, '2016-05-06 17:09:24', '2016-05-06 21:39:24'),
(69, '69_foto.jpg', 'Morales-Barrios', 'Olga', '10659605', '+58 426 5906866', 'olgamorales74@hotmail.com', 'Universidad Nacional Experimental de Guayana', 'Departamento de Organización y Gerencia', '621a4b994fa435568eb5270e4484dadebcc84375', NULL, '2016-05-06 22:14:10', '2016-05-07 02:44:10'),
(70, NULL, 'gonzález', 'vivian', '4454902', '04166412757', 'vivian1412@gmail.com', NULL, NULL, '72446911c87ffc248878a33c8daf17ea27339652', NULL, '2016-05-07 05:17:01', '2016-05-07 09:47:01'),
(71, NULL, 'SILVA SILVA', 'ALICIA ELENA', '9519631', '04144394035', 'silvalicia@gmail.com', NULL, NULL, 'bb6de53ec8c81f4dcef24b54a561aa2934c241f5', NULL, '2016-05-07 09:01:01', '2016-05-07 13:31:01'),
(72, NULL, 'Castellanos López', 'José Alexander', '7174872', '04144825516', 'alxcastellanos@hotmail.com', 'Universidad de Carabobo', 'Postgrado FACES', '58ca85ef0f0b39003e349e7c3aae2f44b188a012', NULL, '2016-05-07 19:29:14', '2016-05-23 21:01:29'),
(73, NULL, 'Baeta De Sousa', 'Maria Fatima', '9661810', '04124421310', 'fatima_baeta@yahoo.com', 'Universidad de Carabobo Sede Aragua', 'Bioanálisis', 'b773ea323e3181d47f3a56cbcb2871ac110376c3', NULL, '2016-05-07 21:17:58', '2016-05-08 01:47:58'),
(74, NULL, 'OLIVAR PEREZ', 'JOSE ALBERTO', '12296463', '04129734269', 'josealbertolivarp@usb.ve', '', '', '1161b93ea36e76398d8ffd468d4c6ae0dc667c10', NULL, '2016-05-17 00:50:39', '2016-05-17 05:20:39'),
(75, NULL, 'Hernández Piñero', 'Alexandra Josefina', '12855821', '04124360724', 'alexajhp@yahoo.es', 'Universidad de Carabobo - Doctorado en Salud Pública - Sede Aragua', 'Medicina "Witremundo Torrealba"', 'e7edc387223f545e1b61d869441b299a956a7a63', NULL, '2016-05-10 08:19:09', '2016-05-10 12:49:09'),
(76, NULL, 'RAMIREZ HEREDIA', 'JOSE ALEJANDRO', '12339999', '04120437123', 'ramirezheredia@hotmail.com', NULL, NULL, 'afbaa73a17e0155ab49b420004307d8a90911d64', NULL, '2016-05-09 10:42:58', '2016-05-09 15:12:58'),
(77, NULL, 'montserrat arellan', 'juan orlando', '12902876', '04244369962', 'juan.montserrat@gmail.com', NULL, NULL, '3fa78d634f1c6bf26edcdd082553b4eae705c33f', NULL, '2016-05-09 10:43:18', '2016-05-09 15:13:18'),
(78, '78_388109_2850143253088_1009308264_n.jpg', 'Seijas Nieves', 'Eudel irene', '13470903', '0412 3412061', 'eudel.seijas@gmail.com', 'Universidad de Carabobo / Facultad de Ciencias de la Salud', 'Escuela de Salud Pública y Desarrollo Social', 'a0783e1eb761592c1f3d1159930fa44cb6001b97', NULL, '2016-05-09 11:58:51', '2016-05-09 16:28:51'),
(79, '79_FOTO_EGDUIN_ACTUAL.jpg', 'Veliz Lovera', 'Egduin Gabriel', '9692791', '04168486099', 'egduinveliz@gmail.com', '', 'Administración y Contaduría publica', 'e0cd1a5b48ce0293f949ff15b37e0767190c6e4e', NULL, '2016-05-09 13:44:12', '2016-05-09 18:14:12'),
(80, NULL, 'HILEVSKI', 'SAMUEL', '20081725', '04144084846', 'samyhilevski@gmail.com', NULL, NULL, 'eea11fa1da0cbe8b38258d18bdcde38687f92aa7', NULL, '2016-05-09 15:06:33', '2016-05-09 19:36:33'),
(81, '81_photo.jpg', 'Smith Ibarra', 'Edgar Rolando', '3998375', '00584144123134', 'rolandosmith@hotmail.com', 'Universidad de Carabobo /Faces/RI/LAINET', '', 'ea14985440de0842ebf60dc279b47c19f490f949', NULL, '2016-05-22 23:41:33', '2016-05-23 04:11:33'),
(82, '82_IMG_20141216_133035.jpg', 'DIAZ FUENMAYOR', 'ANGELA ADRIANA', '15977940', '04144767671', 'angelafuenmayorrm82@outlook.com', 'UNIVERSIDAD DE CARABOBO', '', '4fbe7e2811c26be5ad98451221dc18375fdd677d', NULL, '2016-05-10 15:48:10', '2016-05-10 20:18:10'),
(83, '83_foto Alida.JPG', 'Malpica Maldonado', 'Alida Coromoto', '3602848', '0414-4204382', 'alidamalpica@hotmail.com', 'Universidad de Carabobo', 'Educación', '4ccc8158635d4a9a72cd67a38ffdaed1ca80d62e', NULL, '2016-05-15 20:27:17', '2016-05-16 00:57:17'),
(84, '84_Foto Carnet Sesión 1.jpg', 'Fernández Tortolero', 'Carlina Rosalí', '16405870', '04143584549', 'carlinaf@gmail.com', '', '', '7b333b7b0224ab28bee29f0ed5d83c7f82743588', NULL, '2016-05-16 08:19:45', '2016-05-16 12:49:45'),
(85, '85_Cote 2016.jpg', 'Cote Zuloaga', 'Marilys Tibisay', '10152739', '04144180880', 'cotema2003@yahoo.com', '', '', '5cc81139942139e4e25b01ad4eef82ee4213bcec', NULL, '2016-05-10 13:12:40', '2016-05-10 17:42:40'),
(86, '86_Imagen1.jpg', 'PEREZ VELASQUEZ', 'WITHEY ERNESTO', '19010913', '04124911534', 'withey02@hotmail.com', 'UNIVERSIDAD DE CARABOBO', '', '9a4f1d56d826a5d2d41213f6d13c8ebcc8ce263c', NULL, '2016-05-15 09:25:22', '2016-05-15 13:55:22'),
(87, '87_21777_285913248203502_1138963949_n.jpg', 'Salvatierra Iriarte', 'Marlin Lilian Coromoto', '15831914', '04126349828', 'msalvatierra@usb.ve', 'Universidad Simón Bolívar ', 'Departamento de Tecnología de Servicios ', 'bd225d3e6a954642f278c11017d195f91c38569b', NULL, '2016-05-10 15:41:54', '2016-05-10 20:11:54'),
(88, '88_Samsung 2015-16 1045.jpg', 'Guevara', 'Maria', '13043745', '04165336583', 'guevaram@usb.ve', 'Universidad Simón Bolívar', 'Departamento de Tecnología de Servicio', '03cd20824d44e108b52628e4a601d307af81c256', NULL, '2016-05-10 16:04:28', '2016-05-10 20:34:28'),
(89, NULL, 'Quintini Rodríguez', 'Gustavo José', '19468879', '02432378139', 'quintinigj@gmail.com', NULL, NULL, 'd1de9fa4ef5f65a149622a443672251bc95ca936', NULL, '2016-05-10 18:18:13', '2016-05-10 22:48:13'),
(91, NULL, 'Fuentes Chaparro', 'Jonny Alberto', '9647261', '04128521568', 'jafc65@gmail.com', NULL, NULL, '2ddba75397279deb875274fd3f84f6dd728cbe6f', NULL, '2016-05-11 11:22:56', '2016-05-11 15:52:56'),
(93, NULL, 'Hernández Núñez', 'Yepsaly', '12375386', '04142488121', 'hernandeznunez@gmail.com', NULL, NULL, '149ec00ad5f79d04319d97ff9552497ddce35f0a', NULL, '2016-05-11 17:24:51', '2016-05-11 21:54:51'),
(94, NULL, 'Baldallo Perez', 'Maria de la Coromoto', '21139223', '04144270581', 'mcbaldallo@gmail.com', NULL, NULL, 'ae7ea7b2f417efc1e006fa0bbd8f153974faa08f', NULL, '2016-05-11 17:50:37', '2016-05-11 22:20:37'),
(95, '95_Foto Perfil Rodolfo.png', 'Montoya Orasma', 'Ángel Rodolfo', '04127707539', '02418134326', 'angelrodolfo75@gmail.com', 'Universidad de Carabobo', 'Ciencias económicas y sociales', 'a22e0c327dce8ade9490a26007841205eeedeea5', NULL, '2016-05-14 11:45:33', '2016-05-14 16:15:33'),
(96, '96_Foto NMMT.jpg', 'Meléndez Torres', 'Neptalí', 'Barquisimeto', '4245352552', 'neptalimelendez@ucla.edu.ve', 'UCLA-Venezuela', 'Ingenieria Civil', '86c54e449223f291e270997d81fa961e161c7fc2', NULL, '2016-05-12 12:03:41', '2016-05-12 16:33:41'),
(97, '97_IMG_0059 copia.jpg', 'Escalona Romero', 'Miguel Antonio', '9435823', '04144576490', 'miguel226813a@gmail.com', 'Universidad de Carabobo', 'Administración Comercial  y Contaduría Pública', '9b87f95dbe665faaff6fcb0b6537d79b4349e3bb', NULL, '2016-05-12 12:25:35', '2016-05-12 16:55:35'),
(98, '98_IMG_0078 copia.jpg', 'Rumbos', 'Leisy Elena', '1023084', '04265333978', 'leisy_elena@hotmail.com', 'Universidad Bicentenaria de Aragua ', 'Contaduría', 'b1eeeb370e9e89d2bc2fd428c9293a7034d84ab2', NULL, '2016-05-12 12:39:15', '2016-05-12 17:09:15'),
(100, '100_Luis Manuel.jpg', 'Briceño Jaramillo', 'Luis Manuel', '20768643', '04121048468', 'lui-sbriceo29@hotmail.com', '', '', 'ce6cade7d3f31c19007256bd8951e90bd167a3b4', NULL, '2016-05-12 14:01:26', '2016-05-12 18:31:26'),
(101, NULL, 'DIAZ', 'JAIME', '19218778', '04123466571', 'jaime_lider_13@hotmail.com', NULL, NULL, '387237d2d11676f65be1c5dfdfcb3ce43bfcbace', NULL, '2016-05-12 14:12:35', '2016-05-12 18:42:35'),
(102, NULL, 'Chirino Ferrer', 'Cristina Del Valle', '13724789', '04265659272', 'cristinachirino@yahoo.com', NULL, NULL, '6b4e331daf8bcef0df9720e728a544d06bac0ddb', NULL, '2016-05-12 15:32:04', '2016-05-23 20:57:23'),
(103, '103_Foto Andrés Grisanti.png', 'Grisanti Belandria', 'Andrés', '7069616', '04143595600', 'andresgb08@gmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública', '92a9cdab73d06ca7026f02c62339046090a93c1a', NULL, '2016-05-12 16:03:17', '2016-05-12 20:33:17'),
(104, '104_IMG_20150202_234846.jpg', 'perez fajardo', 'samaria', '24330956', '04144365295', 'samaria_perez@hotmail.com', 'universidad de carabobo', 'ciencia de salud', 'a37ffd0af6fe25c8ad976983c5b64c4d073551ef', NULL, '2016-05-12 16:46:54', '2016-05-12 21:16:54'),
(105, NULL, 'González González', 'George', '12353031', '04262724732', 'ecclesiasticum@gmail.com', NULL, NULL, '36d78999f7ea72c535d0770060186ebc074abc6e', NULL, '2016-05-12 19:50:24', '2016-05-13 00:20:24'),
(106, NULL, 'Tovar Bravo', 'Doancely Maria', '13618163', '04167327041', 'doancelytovar@hotmail.com', '', 'Enfermeria', '495d1473bd518705b10976931b24bcb7582c4d7b', NULL, '2016-05-23 09:25:03', '2016-05-23 13:55:03'),
(107, '107_foto.jpg', 'Pérez Rodriguez', 'Francisco Javier', '17703002', '0416 9475358', 'javierpr1987@gmail.com', 'Universidad de Carabobo', 'Educación', 'a63c44a16d8450ca0cf22677a61e2efaa1e18bf4', NULL, '2016-05-13 06:38:19', '2016-05-13 11:08:19'),
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
(120, NULL, 'Contreras', 'Ivette', '8846522', '04127823769', 'ivcontre@hotmail.com', 'Arturo Michelena', 'Comunicación Social', '2ead7d34dea03c724bc14218a610ba460bfb3855', NULL, '2016-05-21 19:15:00', '2016-05-21 23:45:00'),
(121, '121_FOTO EDEN.jpg', 'Noguera de Hernández', 'Edén Josefina', 'V-2521523', '0412-8989890', 'edennoguera@yahoo.es', 'universidad simón rodríguez', 'educación', 'ccaa8002d4d57f523e936ae9eafdd192069de27d', NULL, '2016-05-13 20:13:47', '2016-05-14 00:43:47'),
(122, NULL, 'Nobrega de Nobrega', 'Doris María', '12.604.470', '0414-4275675', 'doris_nobrega@hotmail.com', '', 'Bioanalisis Carabobo, FCS-UC', '6a4f4516ab0636562b55ee16bed276a747708bb0', NULL, '2016-05-13 21:23:59', '2016-05-14 01:53:59'),
(123, NULL, 'Rodríguez Pérez', 'Daniela Alejandra', '24.300.249', '04264433869', 'danielarodriguez.24987@gmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública ', '2426d5074045a3065ae2ec7c0214cc2762e45fc8', NULL, '2016-05-13 22:40:40', '2016-05-14 03:10:40'),
(124, '124_foto ONCTI Dalia Correa.jpg', 'Correa Guía', 'Dalia', '5382724', '04244535040 04168415216', 'correaguia@gmail.com', 'Universidad de Carabobo', 'INFACES', '68fde0bfb7c376dd6bd56a8e8c1491edfeebed03', NULL, '2016-05-14 05:43:52', '2016-05-14 10:13:52'),
(125, NULL, 'GRISANTI DE MONTERO', 'ROSIBEL', '7069617', '04244060457', 'rosigri@hotmail.com', 'UNIVERSIDAD DE CARABOBO', 'ADMINISTRACION COMERCIAL Y CONTADURIA PUBLICA', '648178e5397a721fc79ecb96ea373e75d461458e', NULL, '2016-05-14 09:27:31', '2016-05-14 13:57:31'),
(126, '126_carol.jpg', 'Omaña Reyes', 'Carol del Valle', '3841118', '04144615761', 'delvalle43@gmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Publica', '598fd7105d7217353eac2b0404b71c62a183c4dc', NULL, '2016-05-14 09:44:34', '2016-05-14 14:14:34'),
(127, '127_Cirilo 1.png', 'Orozco', 'Cirilo', '4094319', '04144717568', 'cirilotampa@hotmail.com', 'Universidad de Carabobo', 'Ciclo basico', 'ffc970d9bd5091693e0ea34a0ebb7ef47f99d15c', NULL, '2016-05-14 10:33:22', '2016-05-14 15:03:22'),
(128, NULL, 'Jimenez Morales', 'Fidel Gustavo', 'V-8040873', '04244270022', 'drfideljimenezm@gmail.com', 'Universidad de Carabobo', 'Medicina', '4c2c04a88034f42de7abeda7fe96842b8241bda0', NULL, '2016-05-14 11:29:49', '2016-05-14 15:59:49'),
(129, NULL, 'Hernandez Runquez', 'Estela', '8685984', '04127562011', 'estelamar01@gmail.com', NULL, NULL, 'babd57722723612c17863765937bd8c3aad79790', NULL, '2016-05-14 11:36:15', '2016-05-14 16:06:15'),
(130, NULL, 'Sierra Estrada', 'Mahie Alejandra', '13780701', '04165411121', 'mahiealejandra@gmail.com', 'Universidad de Carabobo', 'Doctorado en Ciencias Sociales Mención Estudios del Trabajo', '8fb8e3040691dbddf678b92bd9f220c436251ea8', NULL, '2016-05-18 11:00:34', '2016-05-18 15:30:34'),
(131, '131_areida.jpg', 'GONZALEZ TORREALBA', 'AREIDA YORELIS', '8.836.465', '04244618786', 'areidag@hotmail.com', '', '', '46ec196153b74631c006d9331163218bc4ff043d', NULL, '2016-05-14 21:25:44', '2016-05-15 01:55:44'),
(132, NULL, 'cadavid de zavarse', 'angela maria', '11349531', '04145851415', 'angelamariacadavid@hotmail.com', NULL, NULL, '7c222fb2927d828af22f592134e8932480637c0d', NULL, '2016-05-14 14:22:20', '2016-05-14 18:52:20'),
(133, NULL, 'Cabrera Peña', 'Leonardo Jose', '21476843', '04244737747', 'leonardocabrera9320@gmail.com', NULL, NULL, 'ee0cd08fba2533c9d736d0091e7dfc83c726b9e3', NULL, '2016-05-14 14:57:48', '2016-05-14 19:27:48'),
(134, '134_foto luzmila 001.png', 'Marcano Martínez', 'Luzmila', '4505000', '04141434592', 'luzmilamarcano@hotmail.com', 'Universidad de Carabobo, FACES', 'Ciclo Básico', '32eb90ba894fa80bc1ecb46cce30a9d43ed30d4e', NULL, '2016-05-15 09:06:51', '2016-05-15 13:36:51'),
(135, '135_CONGRESO FACES.jpg', 'MENDOZA QUERALES', 'OMAR WLADIMIR', '12761400', '04244067996', 'mendozao33@hotmail.com', 'UNIVERSIDAD DE CARABOBO', '', '343a4f65d5b0104ccdb5585feaf991092c2dbad7', NULL, '2016-05-20 14:16:33', '2016-05-20 18:46:33'),
(136, '136_20150530_182217.jpg', 'Trovat', 'Valentina', 'Palo Negro', '0424 3117150', 'vtrovat@gmail.com', 'Universidad de Carabobo', 'Administración Comercial', 'bb947835f0852074c9e3621a4341da4f6116d43a', NULL, '2016-05-16 09:25:23', '2016-05-16 13:55:23'),
(137, '137_wilmary.jpg', 'Ruiz Guanipa', 'Eumelia Guadymar', '12182462', '04161605211', 'eumeliar@gmail.com', 'Universidad Nacional Experimental Francisco de Miranda ', 'Educación ', '3b191d948c4edb4ef512cf91ad2105d2e19f2518', NULL, '2016-05-14 18:27:58', '2016-05-14 22:57:58'),
(138, '138_100_3514.JPG', 'AYALA', 'JORDANA', '11354595', '4144382315', 'jordana.tierraviva@gmail.com', 'Fundación Tierra Viva', '', '7b4e05db25a0180a6a560b49231f1b613d21664a', NULL, '2016-05-25 10:23:08', '2016-05-25 14:53:08'),
(139, NULL, 'RUIZ DE TORRES', 'NILCRIST ELENA', '11804492', '(0424)6750710', 'nilcrist@hotmail.com', NULL, NULL, 'e9dcbfbbbe55f726ec1b89562992e18b5a6f7e2e', NULL, '2016-05-14 20:40:53', '2016-05-23 20:49:56'),
(140, '140_carmen sola.jpg', 'Varón Andrade', 'Carmen Cecilia', 'V-13.736.332', '04143480787', 'carmenvaronandrade@gmail.com', '', '', '92d38130c7ad0334bb915a89f40373b94735aa16', NULL, '2016-05-15 22:24:58', '2016-05-16 02:54:58'),
(141, NULL, 'Maddia Simmons', 'Carolina Naylett', '13195573', '04244306293', 'caro_maddia@hotmail.com', '', 'Odontologia', '12c4d4f44cd4c51b2053c5142ff0d0baa25257b2', NULL, '2016-05-23 23:30:07', '2016-05-24 04:00:07'),
(142, '142_Imagen1.png', 'Oropeza Rodríguez', 'Neidha Rebeca', '5272753', '04162320093', 'fantasienve@yahoo.com', 'Universidad Pedagógica Experimental Libertador (UPEL Maracay)', 'DEpartamento de Inglés', '780655acc4516c4eabf03a3e4af8a63dc79be4a2', NULL, '2016-05-15 20:28:10', '2016-05-16 00:58:10'),
(143, '143_20140729_195144.jpg', 'Núñez Hernández', 'Rolando Javier', '10228419', '04124630008', 'rolandonunez70@hotmail.com', 'Upel - Maracay', 'Educación', '8e06901e9e1d03154bfb1c99196718e1ae45ed06', NULL, '2016-05-15 07:58:25', '2016-05-15 12:28:25'),
(144, '144_perfil 2.jpg', 'aquino flores', 'maria francia', '12931314', '04244554518', 'mfrancia3@hotmail.com', 'universidad de carabobo', '', '26da20aabbb52db42c274847c6b1bc5a135f673d', NULL, '2016-05-15 10:21:26', '2016-05-15 14:51:26'),
(145, NULL, 'Navas de Reyes', 'Carlena Tahina', '16424185', '04244134314', 'carlenanavas@homail.com', NULL, NULL, 'e8bfcb41c2007e3fcf0c1cb6a5cf855232e9583f', NULL, '2016-05-15 10:14:26', '2016-05-15 14:44:26'),
(146, NULL, 'LOVERA ZACARIAS', 'MARIELINIS JOSE', '17681108', '04264309475', 'MARIE_UFF28@HOTMAIL.COM', 'UNIVERSIDAD DE CARABOBO', 'FACULTAD DE CIENCIAS DE LA EDUCACION', 'bca370a68482f7ef58125ea5af204d6e8b07a83f', NULL, '2016-05-15 10:33:59', '2016-05-15 15:03:59'),
(147, NULL, 'rodriguez gonzalez', 'rosiris cecilia', '8834812', '04143400323', 'rosiris_rodriguez_gonzalez@hotmail.com', NULL, NULL, 'c656a14c1892bbc5911bd6a79deba6da57d1e75a', NULL, '2016-05-15 10:49:22', '2016-05-15 15:19:22'),
(148, '148_IMG_1848.JPG', 'MERCERÓN DE HORVÁTH', 'ISMENIA DE LOURDES', '5521770', '04243166864/04163138528', 'nenajabamiah84@gmail.com', 'UNIVERSIDAD NACIONAL EXPERIMENTAL SIMÓN RODRIGUEZ', '', 'ea6553b04f7e222937bf589b68734c42909f511b', NULL, '2016-05-15 12:22:48', '2016-05-15 16:52:48'),
(149, '149_Foto Carnet.png', 'Fernandez Briceño', 'Vicenta Emilia', '3893251', '04244702510', 'vicenemi55@hotmail.com', 'Universidad de Carabobo', 'Enfermeria', 'd0b44265aa2c8f43d4242502a7380499d2fa7491', NULL, '2016-05-15 12:29:50', '2016-05-15 16:59:50'),
(150, NULL, 'Sanabria Guerra', 'Zulayma', '4456089', '04123410832', 'zuvika2@yahoo.es', NULL, NULL, 'ccc63709cb868df56378c8f8ac1b84298575e9b8', NULL, '2016-05-15 12:47:51', '2016-05-15 17:17:51'),
(151, NULL, 'Escobar Rivero', 'Digna Escobar', '4065771', '04244531871', 'dignaescobar@hotmail.com', 'Universidad de Carabobo', 'Enfermeria', '711af8cfe033757b3ded152227f0d3d30dd3bd08', NULL, '2016-05-18 11:09:39', '2016-05-18 15:39:39'),
(152, NULL, 'PÉREZ', 'GLENYS', '8841037', '04244662674', 'glenysper@gmail.com', NULL, NULL, '7d368e9a95962a5a8a1f6d7208fac01a5e586d3a', NULL, '2016-05-15 14:03:40', '2016-05-15 18:33:40'),
(153, '153_AIbEiAIAAABECNPpvp2Vs8HEqAEiC3ZjYXJkX3Bob3RvKig0YjkwNDUwMGY4Y2VlYzY3MGY0YzgwMTM5MjM4MzdmNzMzNmU0MGEyMAFBZTG-0Vkg-sY3mxMVJdN2uGu4pw.jpg', 'Guía Caripe', 'Germán José', '11635040', '4141273120', 'gguia@usb.ve', 'Universidad Simón Bolívar -Sede del Litoral', 'Departamento de Formación General y Ciencias Básicas', '9327572e6b4036fe985d37879b05d937831c9c57', NULL, '2016-05-15 14:27:36', '2016-05-15 18:57:36'),
(154, NULL, 'chirinos ferrer', 'alcira de la cruz', '14168202', '04168697645', 'alci1304@hotmail.com', 'Universidad Bolivariana de Venezuela', '', '854b3eed1d6f0161dd44d600f6bfd72a994e2e6b', NULL, '2016-05-15 19:41:31', '2016-05-16 00:11:31'),
(155, NULL, 'Carrillo Camargo', 'Víctor Alfonso', '4645403', '04120408014', 'viktorcarrillo@yahoo.com', 'Universidad de Carabobo', 'Ingeniería', 'cfdf2e24945b09ab9e988679f925f86eebe4d863', NULL, '2016-05-15 15:37:57', '2016-05-15 20:07:57'),
(156, NULL, 'León', 'Franklin', '12320106', '04144299000', 'franklinleonr@hotmail.com', NULL, NULL, '46de5b1fe8e0b5f0b9a4951b8707c836b7ad8b1c', NULL, '2016-05-15 15:35:16', '2016-05-15 20:05:16'),
(157, NULL, 'camacho', 'claritza', '15610317', '04162356967', 'tic0909@yahoo.com', NULL, NULL, 'e9c0b231bd82346930c1f5b315cf6ffee06d1446', NULL, '2016-05-15 15:58:38', '2016-05-15 20:28:38'),
(158, '158_magaly.jpg', 'Pereina', 'Magaly', '8661226', '04264386545', 'magaly565@hotmail.com', '', '', '7d899652f478872013c58af56d77f8b72412ceef', NULL, '2016-05-15 16:46:31', '2016-05-15 21:16:31'),
(159, '159_foto yo.jpeg', 'Carballo Pérez', 'Carlos Eduardo', '18.473.750', '04267344279', 'cecp15@gmail.com', 'UPEL Maracay', 'cecp15@gmail.com', 'a46b11aa866aede9421ecc75af54fbe68e19b2b8', NULL, '2016-05-15 16:49:39', '2016-05-15 21:19:39'),
(160, '160_20141216_071518 (2).jpg', 'BERMUDEZ SANCHEZ', 'BELKIS GERONIMA', '11274427', '04145483434', 'belkisbermudez14@gmail.com', '', 'POSTGRADO', '181b79f346a10389b508c7f1256ee456b00ef343', NULL, '2016-05-15 22:23:16', '2016-05-16 02:53:16'),
(161, '161_JM.jpg', 'MONTANER RIERA', 'JESUS RAFAEL', '3897027', '04143573284', 'jesusmontaner24@gmail.com', '', 'POSTGRADO', '7ad52bb0e1c809d91358a70f370c918f9669ce4b', NULL, '2016-05-15 22:22:43', '2016-05-16 02:52:43'),
(162, NULL, 'ORCIAL SOSA', 'MILAGROS MELINA', '15274250', '04127603302', 'meliorci@hotmail.com', NULL, NULL, '99b3c8a0c1ee20e0a726c5658be298081393ad74', NULL, '2016-05-15 17:33:58', '2016-05-15 22:03:58'),
(163, NULL, 'MEZA PALMA', 'DAISY COROMOTO', '6368947', '04144745980/02439952248', 'daisymeza64@hotmail.com', NULL, NULL, 'd91963b7ef8ce4c9d0301f87c3f3fdc48f827c37', NULL, '2016-05-15 17:44:53', '2016-05-15 22:14:53'),
(164, '164_527472_10151234392712736_1339276563_n YO.jpg', 'Luis González', 'Carolina', '13426596', '04144911805', 'carolinaluisg77@hotmail.com', 'Universidad Central de Venezuela', '', 'a40f1a28cd13899d011acf3759c8d25786f99eee', NULL, '2016-05-15 18:28:22', '2016-05-15 22:58:22'),
(165, NULL, 'SIERRA LUGO', 'DAYANA CANDELARIA', '15489985', '04265314394', 'dayana_sierra@yahoo.com', NULL, NULL, '2b66cb1a0a2aa1097f6085f7982426b6b78ace2c', NULL, '2016-05-15 18:31:38', '2016-05-15 23:01:38'),
(166, NULL, 'Chacón', 'Carla', '15372313', '04265126508', 'carlabelisario@gmail.com', NULL, NULL, 'ca0396e2bd0cba2c0b73fd51ec7f5db12fa00fd8', NULL, '2016-05-15 18:39:55', '2016-05-15 23:09:55'),
(167, '167_foto_MCD15052016.jpg', 'Diaz Martinez', 'Maria Consuelo', '12028374', '0414-4117537', 'mariaconsuelodiaz@hotmail.com', 'UC', 'ACCP', '92d2313a01b67143891a1086a89110cffdd822ca', NULL, '2016-05-19 20:09:11', '2016-05-20 00:39:11'),
(168, '168_imagenes de bere blackb 109.jpg', 'Blanco Carrillo', 'Mercedes Blanco', '4368061', '02443223365', 'bereblanco6@hotmail.com', 'Universidad de Carabobo', 'Ciencias Economicas y Sociales', '412832920c3ad3f4b794a0f57bd7f37821c09ab1', NULL, '2016-05-22 19:09:25', '2016-05-22 23:39:25'),
(169, '169_yessimar lover.jpg', 'Lover Morillo', 'Yessimar Jacqueline', '17250581', '04124447385', 'yessimarl@hotmail.com', '', '', '0fc0f4a00cae0c9d2ddabc8b9a9372ba2f0531f9', NULL, '2016-05-15 19:14:43', '2016-05-15 23:44:43'),
(170, '170_Captura.PNG', 'Lopez Blanco', 'Rafael Antonio', '9669991', '04164389101', 'jama295@hotmail.com', '', '', '9df83c9c8b2ed2b98507b35ab5d7df517ca75c3e', NULL, '2016-05-15 19:26:05', '2016-05-15 23:56:05'),
(171, NULL, 'NIEBLES CHARRIS', 'MAYLER DEL CARMEN', '13487071', '04145938552', 'maylerniebles@hotmail.com', NULL, NULL, 'd3f190d40f19f98bc1473672448c452f4695cd02', NULL, '2016-05-15 19:15:43', '2016-05-15 23:45:43'),
(172, NULL, 'FRANCO', 'KHARLA', '15721285', '04265415078', 'KHARLA_FRANCO@HOTMAIL.COM', NULL, NULL, '3a982429523047d6999c1d8a688be10911098bf5', NULL, '2016-05-15 19:19:07', '2016-05-15 23:49:07'),
(173, NULL, 'LUNA SUAREZ', 'KARINA MARBEL', '9766483', '04164303843', 'KARILUNA42@GMAIL.COM', 'UNIVERSIDAD DE CARABOBO', 'FACULTAD DE CIENCIAS DE LA EDUCACION', 'e0bf3d838bb544feb45095a6e63a12c3f1f11709', NULL, '2016-05-15 19:27:06', '2016-05-15 23:57:06'),
(174, '174_foto auristela.png', 'López Landaeta', 'Auristela', '6016285', '0412-7341192', 'aurislopez1@gmail.com', 'Centro de Educación Inicial Autonomo  Los Tacariguas', 'Preescolar Los Tacariguas', '5b796349d79877e91fd9cca662403091cc43c2b1', NULL, '2016-05-15 20:39:49', '2016-05-16 01:09:49'),
(175, '175_foto cv.jpg', 'Caso', 'Julieta', '14907855', '04265367729', 'profesorajulietacasob@gmail.com', '', 'psicologia', '701f10bb119bc6b860c599388683d01708068bdb', NULL, '2016-05-15 20:39:46', '2016-05-16 01:09:46'),
(176, NULL, 'Ramirez Acosta', 'Lisbeth Suray', '7104772', '04163312880', 'lisbethsura@hotmail.com', NULL, NULL, '4cfeb6e80a4408073dc83db30668948bb2966157', NULL, '2016-05-15 22:00:43', '2016-05-16 02:30:43'),
(177, '177_2014-02-13-109.jpg', 'Pirela P.', 'Paula E.', '13898843', '04166422281', 'pirelapaula@gmail.com', 'UC', 'FaCE', '0f96cb81c344b27b7132adae5623360d87a85fc6', NULL, '2016-05-15 22:47:33', '2016-05-16 03:17:33'),
(178, NULL, 'García Medina', 'Rómulo Antonio', '19641404', '0412-659367', 'rsip-cipde@hotmail.com', 'Universidad Nacional Experimental Rafael María Baralt', 'Centro de Investigación para la Promoción del Desarrollo Endogeno', '199ba65bf9f44dd2e7818003742a2f385239eeb1', NULL, '2016-05-17 23:29:40', '2016-05-18 03:59:40'),
(179, NULL, 'Mata Chacon', 'María', '8103413', '04144219950', 'profesoramata@gmail.com', 'Universidad Arturo Michelena', 'Derecho', '3ff95ac9e6b1526fef7920f018e82ef86a34232c', NULL, '2016-05-15 23:39:01', '2016-05-16 04:09:01'),
(180, NULL, 'Farías', 'Nancy', '16290099', '04145917760', 'nancyjohannafarias@gmail.com', NULL, NULL, 'bc0e65da95327df082b1a223fb8467d7f49c5528', NULL, '2016-05-15 23:23:11', '2016-05-16 03:53:11'),
(181, '181_267820_2202389537671_3756900_n.jpg', 'FERNANDEZ OJEDA', 'AIDA MAGIELI', '12715480', '0414-2815871', 'aidafernandezuc@gmail.com', 'Universidad de Carabobo', 'Facultad de Educación', '7c650296e3a1e0d43e4915c982093ef2b1514038', NULL, '2016-05-16 00:41:58', '2016-05-16 05:11:58'),
(182, NULL, 'Lopez', 'Ana Mercedes', '11356482', '04144419315', 'anamerlopez@gmail.com', NULL, NULL, '113ffc5e4bad1dedb0f7c02a12465a1b0723feec', NULL, '2016-05-15 23:31:03', '2016-05-16 04:01:03'),
(183, NULL, 'FERREIRA DE BRAVO', 'MARIA ADILIA', '6848495', '04148945350', 'mferreiradebravo@gmail.com', NULL, NULL, '7b46a8f4c648a78c09598575f8e3ba60d5ed8675', NULL, '2016-05-16 08:03:55', '2016-05-16 12:33:55'),
(184, '184_SUSANA LEAL.jpg', 'Leal Totesaut', 'Susana Milagros', '7013044', '04244982399', 'sumicoleal@hotmail.com', 'Universidad de Carabobo', 'Facultad de Educación', '9dd6d05ae8466696a76f2ebaa248eb5eecc0f1c1', NULL, '2016-05-16 08:32:15', '2016-05-16 13:02:15'),
(185, NULL, 'Urbina pérez', 'Mario Gerson', 'toluca', '01722 2173740', 'gerson_u@hotmail.com', NULL, NULL, '7aa3cdaa748f5a06d1770a4be3ac2af4b240676d', NULL, '2016-05-16 09:18:41', '2016-05-16 13:48:41'),
(186, NULL, 'Roa Sanchez', 'Víctor Henry', '6135793', '04143377358', 'victorroa@hotmail.com', NULL, NULL, 'c551d56f74ed018da0c8564fa8cc97c10bd4e145', NULL, '2016-05-16 09:27:42', '2016-05-16 13:57:42'),
(187, NULL, 'Carreño Suarez', 'Jose Gregorio', '16434913', '0142-1592003', 'filosofo777@gmail.com', NULL, NULL, '0d73b74a86489281bb0f3465f6f4c0036bc6e7b0', NULL, '2016-05-16 12:07:31', '2016-05-16 16:37:31'),
(188, NULL, 'Hernández Gainza', 'Anderson Jonas', '16947698', '04144130904', 'andersonuc.faces@gmail.com', '', '', 'eaf5440991d98c11f7577a97ed94c17055b9ea79', NULL, '2016-05-16 13:24:34', '2016-05-16 17:54:34'),
(189, NULL, 'ROMERO BRACAMONTE', 'FRANCISCO SEGUNDO', '7837838', '04121663902 / 02642513596', 'INGFRANROMERO@HOTMAIL.COM', NULL, NULL, 'ede5f732b5d4431343c13a20e90f99085b9b0cbe', NULL, '2016-05-16 13:58:45', '2016-05-16 18:28:45'),
(190, '190_IMG_20160213_140428.jpg', 'Padron', 'Carmen Janeth', '10506145', '04123764322', 'carmen19094ster@gmail.com', 'Universidad Simón Bolivar', 'Departamento de Tecnología de Servicios', '8853e2f91c7956a03b8f5b4e55d6f3e8a2b2653f', NULL, '2016-05-16 14:08:26', '2016-05-16 18:38:26'),
(191, '191_20150724_122327.jpg', 'Crespo Perez', 'Laura Leslie', '20348725', '04264511364', 'laura_crespo33@hotmail.com', 'UPEL/IPB', 'Departamento de Formación Docente', '9d2212ee9f171915b37a5ba4bad2f7398b4ea9fa', NULL, '2016-05-16 14:13:55', '2016-05-16 18:43:55'),
(192, NULL, 'Hamidian Fernández', 'Benito', '6318306', '04244598018', 'bhamidia@hotmail.com', NULL, NULL, '53f1a4df46e9317b401d94b34b27bd743441bee5', NULL, '2016-05-16 16:58:07', '2016-05-16 21:28:07'),
(193, '193_adr.jpg', 'Delgado C', 'Aura Adriana', '5676358', '04122363334', 'adc711@gmail.com', '', 'Ciclo Basico', '3b53f34aeab5a7e087e829ddd7dded1639b19d13', NULL, '2016-05-16 17:35:24', '2016-05-16 22:05:24'),
(194, '194_fotohumberto 001.jpg', 'MAYORA GUAITA', 'HUMBERTO JOSE', '12865367', '04125890844', 'hmayora@usb.ve', '', '', '248134c26c55807506db1cb028cf94564b4ee518', NULL, '2016-05-16 18:04:11', '2016-05-16 22:34:11'),
(195, NULL, 'TORRES MAGO', 'MARÍA DEL ROSARIO', '4493942', '041664457669', 'torresmago@gmail.com', 'Universidad de Carabobo', '', '97630b488a35456492b3029cb618ed2d61d9d428', NULL, '2016-05-18 20:11:35', '2016-05-19 00:41:35'),
(196, NULL, 'Rangel Arzola', 'José Enrique', '16100509', '0412-9654337', 'lbt426@gmail.com', NULL, NULL, 'b014c1ddfe176e6d90dbc828b2286db45378c352', NULL, '2016-05-16 22:30:30', '2016-05-17 03:00:30'),
(197, NULL, 'ROQUIZ OJEDA', 'MARGIORY ELENA', '11815965', '04168480730', 'Margiorye@gmail.com', NULL, NULL, '7af93469b0213aac9794bb1eb646c7c144c8b88c', NULL, '2016-05-17 07:28:42', '2016-05-17 11:58:42'),
(198, '198_Ale13.JPG', 'Flores Ramírez', 'Jesús Alexander', '13232239', '04125776358', 'jesus.floresramirez@ucv.ve', 'Universidad Central de Venezuela', 'Trabajo Social', 'dd18f3e4a13637b5b512de125cc62195144ab499', NULL, '2016-05-17 08:38:05', '2016-05-17 13:08:05'),
(199, '199_Maria Gabriela M.jpg', 'Marín Figuera', 'María Gabriela', '9682180', '04243604361', 'mariusa14@gmail.com', 'Universidad Pedagógica Experimental Libertador', 'Componente Docente', 'e573617504e1cde61c73f52448625ff90e193e6d', NULL, '2016-05-17 08:37:06', '2016-05-17 13:07:06'),
(200, NULL, 'andrea', 'jennys', '12476640', '04144391476', 'jennysandrea@gmail.com', NULL, NULL, 'af561a80dc5d88db604936647f480e7f417445f0', NULL, '2016-05-17 09:44:46', '2016-05-17 14:14:46'),
(201, '201_Egi_Ccs_2010.jpg', 'Perez Morales', 'Egilda', '9699970', '04144389052', 'egiperez@uc.edu.ve', 'UNIVERSIDAD DE CARABOBO', 'ELECTRICA', '81016af63663ecebf21ff053ed7d16fdef789f9f', NULL, '2016-05-17 10:06:16', '2016-05-17 14:36:16'),
(202, '202_Ana Victoria Sierra.jpg', 'SIERRA LUGO', 'Ana Victoria', '14943796', '04166878175', 'anavictoriasierra@yahoo.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública', 'b16ae0a4365275b374abee26668902af410b2452', NULL, '2016-05-17 11:32:41', '2016-05-17 16:02:41'),
(203, NULL, 'Castillo Perez', 'Yorman Antonio', '20082491', '04244433594', 'yorman2167@gmail.com', NULL, NULL, '5a252e832ee4e569e6fa63931fbd9d834c358f1d', NULL, '2016-05-17 22:21:08', '2016-05-18 02:51:08'),
(204, NULL, 'Rojas Hidalgo', 'Luisa', '4.596.643', '04244197869', 'ljrojash@gmail.com', 'Universidad de Carabobo. Facultad de Ciencias de la Educación', 'Educación', '16857f7c9cb08996f644210b05f6b55ca1d8d911', NULL, '2016-05-18 02:38:16', '2016-05-18 07:08:16'),
(205, NULL, 'PERLASCA NAVAS', 'ANA CARLA', '4195222', '04166400017', 'perlascana@gmail.com', NULL, NULL, '60a223560729741822e25de51af6619840717e71', NULL, '2016-05-18 08:55:25', '2016-05-18 13:25:25'),
(206, '206_foto prof biologia.jpg', 'Betancourt Padrón', 'Ana María', '6919614', '0414-4264066', 'anam.betancourtp@gmail.com', '', '', '1f7480eedb7a1215e77c7b44b04c3ff6a2988368', NULL, '2016-05-21 03:38:24', '2016-05-21 08:08:24'),
(207, NULL, 'leggio navas', 'anthonny alejandro', '22428359', '04127838891', 'alejandrobtw94@gmail.com', 'Universidad Arturo Michelena', 'administracion comercial', '6333f944ed2130f96f64bfb547ff692474332fcd', NULL, '2016-05-18 13:48:26', '2016-05-18 18:18:26'),
(208, NULL, 'Ochoa', 'Rosaura', '14078696', '04244669731', 'ochoaromero@gmail.com', NULL, NULL, '331f71c83fd31ea06861b7d3bf7676284adb8135', NULL, '2016-05-18 11:33:20', '2016-05-18 16:03:20'),
(209, NULL, 'BAPTISTA DE HEREIRA', 'MILAGROS DEL VALLE', '10233633', '04265466957', 'milagrosbaptista@hotmail.com', NULL, NULL, 'a1cd195d38532ad16774cba5765b195506e1f155', NULL, '2016-05-18 14:44:26', '2016-05-18 19:14:26'),
(210, '210_12932753_10209158201171397_5838799692496624217_n.jpg', 'Diaz', 'Martha', '8605010', '04121302002', 'ucfcs.usf@gmail.com', 'Universidad de Carabobo', 'Salud Publica y Desarrollo Social', '434a7fc823288d9e8596de78c0f6e8a79f491c28', NULL, '2016-05-18 20:02:03', '2016-05-19 00:32:03'),
(211, NULL, 'Soto Aguirre', 'Neirys Del Carmen', '13629956', '04167343466', 'neiso05@hotmail.com', NULL, NULL, '29f7ea8ac68371b1c26e628f16f8673428c9a2de', NULL, '2016-05-18 21:32:15', '2016-05-19 02:02:15'),
(212, NULL, 'Chacón Santana', 'Thomas José', '12566192', '04241334311', 'thomaschaconsantana@gmail.com', NULL, NULL, 'eda038a725c077c6152a154f067f0e9c2f1a5ad0', NULL, '2016-05-19 11:29:45', '2016-05-19 15:59:45'),
(213, NULL, 'SÁNCHEZ ESTRADA', 'OMAR EDUARDO', '7182373', '5520081531', 'omarseuaem@yahoo.com.mx', NULL, NULL, '35af59f56dede20d8e3325303143804fe410cf3a', NULL, '2016-05-19 17:17:21', '2016-05-19 21:47:21'),
(214, NULL, 'Díaz', 'Luis Alexis', '11016211', '0416-3321393', 'luis9alexisdiaz@gmail.com', NULL, NULL, '221f01ea8cf6b00b2e5f1e7ea44adfed02bec007', NULL, '2016-05-19 19:38:13', '2016-05-20 00:08:13'),
(215, '215_Imagen 026[1].JPG', 'Lucena Castellano', 'Rafael Angel', '7.323.893', '04122852918', 'rafaellucena7@gmail.com', 'Universidad de Carabobo.Faces.Infaces', 'Instituto de Investigaciones Dr Manuel Pocaterra Jimenez.Infaces.Coordinador Area Ciencias Regionales y Urbanas', '5beb6c6fbc0d5ce00883c550d9a88728c5d28b73', NULL, '2016-05-20 09:15:16', '2016-05-20 13:45:16'),
(216, NULL, 'Jimenez', 'Sheyla', '14304162', '04265400757', 'sheyla.jimenez@hotmail.com', 'Universidad de Carabobo', 'Ciclo Básico', '375793f8379e7e77e1696c875866aaacb1dd2a40', NULL, '2016-05-20 10:02:46', '2016-05-20 14:32:46'),
(217, NULL, 'GUZMAN GONZALEZ', 'MARIA GABRIELA', '10468953', '04148401219', 'mgabrielaguzmang@gmail.com', NULL, NULL, '65a1a2d7fe04c8a3c2640705ba0225cafb1a03b5', NULL, '2016-05-20 11:54:37', '2016-05-20 16:24:37'),
(218, NULL, 'Rea Ledezma', 'Luirmer Eleazar', '15301024', '04162456655', 'luirmer@gmail.com', '', '', 'e24fe28328759d67be2afa5fe1d4231aa45d2ffe', NULL, '2016-05-20 15:29:52', '2016-05-20 19:59:52'),
(219, NULL, 'Sanoja Rial', 'Julia Elena', 'V-4774828', '04124681326', 'jusanoja@gmail.com', NULL, NULL, 'c1c0b95c89e10b557a9c58f1a56669ff3038ec68', NULL, '2016-05-20 17:49:51', '2016-05-20 22:19:51'),
(220, NULL, 'Natera Navas', 'Andrea Jenireé', '21457686', '04265462718', 'mi_angel_22@hotmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Pública', '64d908fc4d364a69fce05f48cf87c53d12a9a694', NULL, '2016-05-20 18:01:31', '2016-05-20 22:31:31'),
(221, NULL, 'Navas de Carrillo', 'Margarita', '7285648', '04144507016', 'mnavas1310@gmail.com', 'Universidad de Carabobo', 'Bioanalisis Sede Aragua', 'bb0c77a6bfef623a8604b3a2f63b870d6a59ed2a', NULL, '2016-05-20 23:18:43', '2016-05-21 03:48:43');
INSERT INTO `users` (`id`, `image`, `lastName`, `name`, `ci`, `phone`, `email`, `university`, `school`, `password`, `rememberToken`, `createdAt`, `updatedAt`) VALUES
(222, '222_foti glenda.jpg', 'REYES BENAVIDES', 'GLENDA MAYELA', '7078241', '04124169059', 'glendamayela1@gmail.com', 'UNIVERSIDAD DE CARABOBO, FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES', 'CICLO BÁSICO', 'a0aec2da1fc0d7cd434141e5b22389d9b2b18618', NULL, '2016-05-23 05:02:26', '2016-05-23 09:32:26'),
(223, NULL, 'Bravo Muñoz', 'Narmelina', 'V- 13.988226', '04161458072', 'narbmuc@gmail.com', 'Universidad de Carabobo', 'FCS-Salud Pública y Desarrollo Social', 'ae6bca533052b31d756a6984fe1cac6e257f4c50', NULL, '2016-05-21 08:55:47', '2016-05-21 13:25:47'),
(224, NULL, 'DIAZ TOVAR', 'MILDRED CONCEPCIÓN', '7225860', '04243135704', 'mildred_cdt@hotmail.com', 'UNIVERSIDAD DE CARABOBO', 'ADMINISTRACION COMERCIAL', 'fdd38ae33c18f836fef79c48974640a378ebe7c2', NULL, '2016-05-21 16:44:34', '2016-05-21 21:14:34'),
(225, '225__DSC1435.JPG', 'Querales Ampueda', 'Dayana Esther', '9683149', '04166451796', 'queralesdayana@gmail.com', 'Universidad de Carabobo', 'ACCP La Morita', '8442beb65b99810ce094d7e3287c837d6abc1eb2', NULL, '2016-05-21 11:41:18', '2016-05-21 16:11:18'),
(226, '226_IMG-20151003-WA0000.jpg', 'Toro Garrido', 'Josefina', '4450890', '04144300025', 'jtoro54@hotmail.com', 'Universidad de Carabobo', 'Estudios Generales', 'f1f2fc4e12d673d78e88d125abb7c003d526b49a', NULL, '2016-05-23 04:47:25', '2016-05-23 09:17:25'),
(227, '227_20141004_191845.jpg', 'Lagardera Chacin', 'Francis Rossana', '13667368', '04168494442', 'francislagardera@gmail.com', '', '', '7967667a7c3b684a3dfa715b94e63ac4d9e818f6', NULL, '2016-05-21 13:10:46', '2016-05-21 17:40:46'),
(228, NULL, 'MARIA ALEJANDRA', 'ARÉVALO PEDROZA', '12109474', '04166444178', 'mariale_arevalo@hotmail.com', NULL, NULL, 'df5a3278b3eabed97dc387edf61fa1e8a16f3adb', NULL, '2016-05-21 12:59:58', '2016-05-21 17:29:58'),
(229, NULL, 'Rodriguez Riera', 'Francisco', 'Valencia -Estado carabobo', '2418421848', 'rodrfrank@hotmail.com', NULL, NULL, 'a6aa4d38aad68e901910f45b1cf16b5e675ca439', NULL, '2016-05-21 15:11:50', '2016-05-21 19:41:50'),
(230, NULL, 'García', 'Sara García', '12239298', '04244147807', 'aratharon@hotmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Publica', 'af5f07f44179e1e9552a5fe309ddb5af8f8cce1f', NULL, '2016-05-21 16:26:12', '2016-05-21 20:56:12'),
(231, NULL, 'Nieves Rojas', 'Deivis Reinaldo', 'V- 20731734', '04121304653', 'deivisuc20@outloock.com', 'Universidad de Carabobo', 'FCS-Salud Pública y Desarrollo Social', 'f5c609af80334f9535f8e569cda1f57d5b4379da', NULL, '2016-05-21 16:50:03', '2016-05-21 21:20:03'),
(232, NULL, 'Patete Tovar', 'Rodrigo Maximiliano', '17397208', '04144104915', 'rodrigo.patete.uc@gmail.com', NULL, NULL, '59a174815d7e47c01a62ffd134abfd6741e21050', NULL, '2016-05-21 17:21:28', '2016-05-21 21:51:28'),
(233, NULL, 'Blanco, Gonzalez', 'Carlos Eduardo', '4129190', '04144362592', 'carloseduardoblanco17@gmail.com', '', 'Ciclo Basico', 'def2c2b50c1146f1d59e3d97379647adcd7f513f', NULL, '2016-05-21 19:42:29', '2016-05-22 00:12:29'),
(234, NULL, 'Diaz Ruiz', 'Wisleidi Antonia', '23649170', '04248767627', 'wis_leidi_93@hotmail.com', NULL, NULL, '8876745f26c897705ec777dbfbe222f747bb35b0', NULL, '2016-05-21 20:11:44', '2016-05-22 00:41:44'),
(235, '235_1.jpg', 'BOLIVAR CASTRO', 'ZURIMA DEL VALLE', '8809981', '0416-5475292', 'BOLIVARZURIMA9@GMAIL.COM', 'UNIVERSIDAD ARTURO MICHELENA', 'postgrado', 'c8a942dbd477374ef63c1eb0b2a226430dcd0e6b', NULL, '2016-05-22 21:41:49', '2016-05-23 02:11:49'),
(236, NULL, 'Clavijo Méndez', 'Pedro', '16502985', '04144389835', 'pedro.clavijomendez@gmail.com', NULL, NULL, '0e949963ee88d0a8d30a3c9793ab5e07b5f8fef3', NULL, '2016-05-21 21:20:34', '2016-05-22 01:50:34'),
(237, '237_IMG_20140611_192842.jpg', 'Alviarez', 'Yenny', '12854077', '04166431527', 'yenalvi@gmail.com', 'Universidad de Carabobo', 'Bioanálisis', '86019cabf61fe8d6991eaf867cc57d3f7f328647', NULL, '2016-05-22 08:32:54', '2016-05-22 13:02:54'),
(238, NULL, 'SILVA DE SOUSA', 'MARIA JOSE', '21584297', '04144712131', 'mariaj_133@hotmail.com', NULL, NULL, 'f6ac7d5cf1a2df97be5a71a32f07b31e71670482', NULL, '2016-05-22 08:43:30', '2016-05-22 13:13:30'),
(239, NULL, 'ustariz', 'juan', '17030601', '04265410733', 'juancarlosustariz@hotmail.com', NULL, NULL, 'b179c61b39df614990a4e6d044c713c87335bcc0', NULL, '2016-05-22 09:46:48', '2016-05-22 14:16:48'),
(240, NULL, 'SANTOS MARTINEZ', 'MARTHA CECILIA', '16446082', '04145822101', 'marthasantos16@gmail.com', 'UNIVERSIDAD DE CARABOBO', 'ESCUELA DE EDUCACIÓN', '7b46a8f4c648a78c09598575f8e3ba60d5ed8675', NULL, '2016-05-22 10:21:00', '2016-05-22 14:51:00'),
(241, NULL, 'Haleguey', 'Liban', '17174347', '04125312291', 'libandelcarmen@gmail.com', NULL, NULL, '0f6da155d39957199cc9c2cfcfc5ba556e9ac454', NULL, '2016-05-22 11:00:44', '2016-05-22 15:30:44'),
(242, '242_DSC00238.JPG', 'MELO GONZALEZ', 'JULIO CESAR', '18977062', '+5804144695729', 'juliomelo15@gmail.com', 'Universidad de Carabobo Nucleo la Morita', 'Administarcion Comercial y Contaduria Publica', '2f2b09b7117d54546d657814c885ad545b6971d6', NULL, '2016-05-22 11:06:26', '2016-05-22 15:36:26'),
(243, NULL, 'Longa', 'Marylyn', '20786811', '04244720710', 'marylyn_15_02@hotmail.com', NULL, NULL, '40b8f011ca9ca9764521f31bd4c463c0ddbb338b', NULL, '2016-05-22 11:31:26', '2016-05-22 16:01:26'),
(244, '244_IMG_7539[1].JPG', 'Yesubeth Betania', 'Martínez Corona', '24329920', '04244646198', 'yesubethm@gmail.com', 'Universidad Arturo Michelena', 'Comunicación Social ', 'e364e7181a0b3ae6dd21b04fcc925e88c2f1b343', NULL, '2016-05-22 14:51:54', '2016-05-22 19:21:54'),
(245, '245_foto carnet victor.jpg', 'Guida Vásquez', 'Victor Eliseo', '20385204', '04143414410', 'zepewn@gmail.com', '', '', 'c071ba30e0da344d8f81f25ff3bb874cac662263', NULL, '2016-05-22 15:02:28', '2016-05-22 19:32:28'),
(246, '246_20140606_072742.jpg', 'Garcia Ochoa', 'Marysther', '11349078', '04263459323', 'gmarysther@hotmail.com', 'Universidad de Carabobo', 'Administración Comercial y Contaduría Publica', 'e4e2d32c2a930bfa1b3f70266f23fb2422e7a9f1', NULL, '2016-05-22 15:18:11', '2016-05-22 19:48:11'),
(247, NULL, 'fleitas', 'axel', '23418755', '04244059664', 'axeldaniella@gmail.com', 'Universidad Arturo Michelena ', 'Comunicación Social', '1323c4e7e525ec626467da8e08ab533b13dfc1a1', NULL, '2016-05-22 15:03:26', '2016-05-22 19:33:26'),
(248, NULL, 'Macias Diaz', 'Hiram Said Kadir', '20889985', '04127571818', 'inusaid@gmail.com', NULL, NULL, 'e1c993cee43ace3afc80ff7b1f3f11b317d0e7b2', NULL, '2016-05-22 15:11:02', '2016-05-22 19:41:02'),
(249, '249_PicsArt_1463627932665.jpg', 'Romero González', 'Eliangela Romero', '22924701', '+584248333663', 'eliangelaromero@gmail.com', 'Universidad Arturo Michelena', 'Comunicación Social', '4922f8e025370e6a022ebd18816ab2bb93141bf9', NULL, '2016-05-22 16:46:22', '2016-05-22 21:16:22'),
(250, '250_foto carnet adriana martinez.jpg', 'MARTINEZ ALVAREZ', 'ADRIANA LISSETTE', 'V-10.755.770', '0414-3874042', 'lissettemartinez23@hotmail.com', 'UNIVERSIDAD DE CARABOBO', 'FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES', '3af8e52a52f76c613422781941e6e2e5525d27ad', NULL, '2016-05-22 17:40:03', '2016-05-22 22:10:03'),
(251, '251_1 Trabajo logistica_luis congreso UC 2016.doc', 'GARCIA PADRON', 'LUIS ADONIS', '9213191', '04265149928', 'luadgarcia@hotmail.com', 'UNEFA', 'GERENCIA', 'd55e8548abc5005cf789a7a1b918147bf8984385', NULL, '2016-05-22 19:05:30', '2016-05-22 23:35:30'),
(252, NULL, 'MENDOZA QUERALES', 'BLADIMIR EDUARDO', '12761401', '04144295099', 'bladi_edu76@hotmail.com', 'UNIVERSIDAD DE CARABOBO', 'FACULTAD DE ODONTOLOGIA', '343a4f65d5b0104ccdb5585feaf991092c2dbad7', NULL, '2016-05-22 18:47:57', '2016-05-22 23:17:57'),
(253, '253_fon.png', 'Yuncoza Bata', 'Jessica Alejandra', 'V- 23649775', '04124568276', 'jessyuncoza@gmail.com', '', '', '12bf9d490a310d042035cb7353f7e3351c7df563', NULL, '2016-05-22 18:59:46', '2016-05-22 23:29:46'),
(254, '254_foto David.jpg', 'zambrano', 'david', 'Maracay', '04265334970 - 04143474078', 'dzambr@hotmail.com', 'Universidad de Carabobo', 'Administración y Contaduría', '55370ab061776415daf982ba226334db26864e7b', NULL, '2016-05-22 18:59:34', '2016-05-22 23:29:34'),
(255, NULL, 'Nani Lozada', 'Grazietta', '14971479', '04144144236', 'nanigrazietta@gmail.com', NULL, NULL, 'ddab4b00a85efed7df6c0de9c40815cc25655bba', NULL, '2016-05-22 19:05:16', '2016-05-22 23:35:16'),
(256, NULL, 'ALBARRAN CARPIO', 'YENNY NEIRE', '9480189', '04127286655', 'ynalbarran@gmail.com', 'UNIVERSIDAD DE CARABOBO', 'MEDICINA', 'c6733a48cbc169ad34ea941f02cc94e82479e70e', NULL, '2016-05-22 19:13:25', '2016-05-22 23:43:25'),
(257, '257_10885550_10205904509951085_4166737544576591820_n(3).jpg', 'Gonzalez Cazorla', 'Estefanía Teresa', '24.298.880', '0412-4346604', 'estefcazz@gmail.com', '', '', 'f87c4a0b177f636878e9f8453794b7dbb6983673', NULL, '2016-05-22 19:56:32', '2016-05-23 00:26:32'),
(258, NULL, 'Utrera Reinales', 'Julio Cesar', '11526309', '04243608804', 'jcutrera@hotmail.com', '', '', '0364d0852f24f04663387f8216844806a4677482', NULL, '2016-05-22 20:23:58', '2016-05-23 00:53:58'),
(259, NULL, 'espinoza ferrer', 'natalie C', '9322166', '04147309500', 'nataliemariam@gmail.com', NULL, NULL, '4b4ea2e6f6cf7fb3c016a798c1a99f56972f7bc7', NULL, '2016-05-22 20:30:56', '2016-05-23 01:00:56'),
(260, '260_yo2015.png', 'Oliveros Martinez', 'Isaac Josue', '16947642', '04244686824', 'oliver04_452@hotmail.com', 'Universidad de Carabobo', 'Educación', '2a18de0bb86ba9c91bb6fa4800561015694c4a56', NULL, '2016-05-22 20:38:58', '2016-05-23 01:08:58'),
(261, '261_Copia  de IMG_9782 - copia.JPG', 'Flores', 'Mitzy', '9436438', '04144224371', 'ucmitzyflores@gmail.com', 'Universidad de Carabobo', 'Educa', 'c7ea61d4649bf90f59cb4a9f4daa67f39646ca9e', NULL, '2016-05-24 11:05:24', '2016-05-24 15:35:24'),
(262, NULL, 'OBERTO MOREY', 'THANIA MARGOT', '7100050', '04167363528', 'thaniamargotoberto@hotmail.com', NULL, NULL, 'cd792df48f4ecbba303fa40ea9110b446ef2ea8b', NULL, '2016-05-22 22:00:17', '2016-05-23 02:30:17'),
(263, NULL, 'Pérez', 'Arieta', '24297450', '04244935494', 'ari_lokis@hotmail.com', NULL, NULL, 'fc15e833a71aa10a20f1efc7ded386cbc8dd94ed', NULL, '2016-05-22 22:36:49', '2016-05-23 03:06:49'),
(264, NULL, 'Miranda Sanguino', 'Carlos', 'V-18.618.336', '04247544592', 'cjms802@hotmail.com', NULL, NULL, 'da1ff629388e1050abd17812255d011db84c805b', NULL, '2016-05-22 22:49:35', '2016-05-23 03:19:35'),
(265, '265_Pedro 20150326_005753.jpg', 'VILLARROEL DÍAZ', 'PEDRO SEGUNDO', '4457871', '04124414457', 'pedvill@gmail.com', 'UNIVERSIDAD DE CARABOBO, FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES', 'CICLO BÁSICO', 'a0aec2da1fc0d7cd434141e5b22389d9b2b18618', NULL, '2016-05-22 23:03:19', '2016-05-23 03:33:19'),
(266, NULL, 'Lessire Vásquez', 'Liliana', '10.254.175', '0416-5265606', 'lilessire@gmail.com', NULL, NULL, '441a847ccf1343c1ecd5ba0e51d455b99835bed7', NULL, '2016-05-22 22:59:19', '2016-05-23 03:29:19'),
(267, '267_foto me.JPG', 'GOMEZ', 'EDGAR', '16138879', '04168598912', 'edgargomezr@gmail.com', '', 'INVESTIGACIÓN', '084008f568c740eac581bffea66a6fd01bd816ce', NULL, '2016-05-22 23:31:11', '2016-05-23 04:01:11'),
(268, '268_IMG_20151231_213209.jpg', 'Medrano', 'Indira', '8474651', '0412 5386656', 'inidravmedranog@gmail.com', 'Universidad de Carabobo', 'Estudios básicos y generales', 'e25d7dbed5786bbac85339460f37fe6dd6595a3f', NULL, '2016-05-22 23:49:53', '2016-05-23 04:19:53'),
(269, '269_171.jpg', 'SALAZAR TOVAR', 'CARLOS TITO', '5602415', '04262373552', 'ctsalazart@gmail.com', '', '', '4472c2c8c52688ae15bfeca5ae138053ccc8a4af', NULL, '2016-05-23 00:18:06', '2016-05-23 04:48:06'),
(270, '270_FullSizeRender.jpg', 'Maldonado Acosta', 'Laura', '16434593', '584243013669', 'lcmacosta@gmail.com', 'Universidad de Carabobo', '', '921954b560ab16aec00801aa2f9af7a31c53503b', NULL, '2016-05-23 00:01:57', '2016-05-23 04:31:57'),
(271, '271_IMG_8081.JPG', 'Rísquez Clemente', 'Franz', '3180042', '04244005132', 'franz.risquez@gmail.com', 'IUP "Santiago Mariño"', 'Arquitectura', '3b6329c45208502ce8055d36e566e0522b1fbc6c', NULL, '2016-05-23 01:08:12', '2016-05-23 05:38:12'),
(272, NULL, 'Camacaro Pérez', 'María Virginia', '16664006', '04147124811', 'mariviacamacaro@gmail.com', NULL, NULL, '5f4d1e62d0312b78d1b5422080b706cbdfa93955', NULL, '2016-05-23 02:49:30', '2016-05-23 07:19:30'),
(273, '273_IMG_20160107_093408.jpg', 'Chiaro Gonzalez', 'Yuliber del Valle', '6026992', '04165496035', 'ychiaro@gmail.com', 'Universidad de Carabobo', 'Doctorado en Educación', '363eb7970fd8eca26f9afbaa208826e675d4a59a', NULL, '2016-05-23 07:49:24', '2016-05-23 12:19:24'),
(274, '274_isa.png', 'Tovar Gonzalez', 'Isavic Coromoto', '14103121', '04243627530', 'tovarisavic@gmail.com', 'Universidad de Carabobo Nucleo la Morita', 'Postgrado Gerencia de Finanzas', '9335fc37e4354e683848503536b2095082af506e', NULL, '2016-05-25 07:42:00', '2016-05-25 12:12:00'),
(275, '275_yami 2015 2.jpg', 'Delgado de Smith', 'Yamile', '9547343', '04144356801', 'yamilesmith@gmail.com', 'Universidad de Carabobo', '', '06ebe9f9b2ef7496c0c06d21831727c054b8de16', NULL, '2016-05-23 09:58:03', '2016-05-23 14:28:03'),
(276, NULL, 'Chacon', 'Rossanna', '12566193', '04243734608', 'rossannadoxologia@hotmail.com', NULL, NULL, 'eda038a725c077c6152a154f067f0e9c2f1a5ad0', NULL, '2016-05-23 09:57:21', '2016-05-23 14:27:21'),
(277, NULL, 'CEJAS MARTINEZ', 'MAGDA FRANCISCA', '5876102', '04165439063', 'mfcejas@espe.edu.ec', NULL, NULL, 'c2bed21cc0f455e66b65a19eb7354d99f46ee980', NULL, '2016-05-23 10:02:52', '2016-05-23 14:32:52'),
(278, NULL, 'HENRIQUEZ RAMOS', 'MERLYN ELENA', '13046734', '04244034313', 'merlyn.henriquez@gmail.com', NULL, NULL, '76519ad8e487d36e9bdf5bde2c637269537d6bea', NULL, '2016-05-23 11:10:59', '2016-05-23 15:40:59'),
(279, '279_2013-12-26 20.32.29.jpg', 'ROJAS DE ROSSODIVITA', 'BELKIS COROMOTO', '4872471', '04123439808', 'rojasbelkis@hotmail.com', 'Universidad de Carabobo', '', '931751bf562fc428f8c401dbe745d6b4c0308560', NULL, '2016-05-23 11:39:47', '2016-05-23 16:09:47'),
(280, NULL, 'Canelones', 'Orlando', '10057629', '04144000302', 'ocanelones@gmail.com', NULL, NULL, '73546b2eb1726f93937f9b87d3b8f083c3dd5dee', NULL, '2016-05-23 11:36:44', '2016-05-23 16:06:44'),
(281, '281_Elvin Barreto.jpg', 'Barreto-Guédez', 'Elvin', '10738067', '04263047869', 'ebarreto@usb.ve', 'Universidad Simón Bolívar', 'Dpto. de Formación Gral. y Ciencias Básicas', '4785334308dc237447a5ba40516cdbb71ae1cbaa', NULL, '2016-05-23 15:15:19', '2016-05-23 19:45:19'),
(282, '282_Imagen1.png', 'Sánchez Díaz', 'Lisette', '10666028', '04163439365', 'lsanchez16@hotmail.com', '', 'lsanchez16@hotmail.com', '02eabd9e46ddb1e5488362c9ba28e7c4be5bed39', NULL, '2016-05-23 21:02:45', '2016-05-24 01:32:45'),
(283, NULL, 'Briceño', 'Arnaldo', '14518859', '04265402595', 'arnalbri@gmail.com', NULL, NULL, 'ea237870d106b40c9c4b9bc1016e9d3129d962bf', NULL, '2016-05-23 15:38:22', '2016-05-23 20:08:22'),
(284, '284_IMG-20160330-WA0014.jpg', 'PUERTA', 'JESUS', '4361489', '04244304470', 'palestra00@gmail.com', '', '', 'f3c75baf4fea5b63f079b194b4760b14787d2fa6', NULL, '2016-05-23 20:14:22', '2016-05-24 00:44:22'),
(285, NULL, 'GONZÁLEZ PEÑA', 'OSWILCARY DEL CARMEN', '20383374', '04244192461', 'oswilcary_g2@hotmail.com', NULL, NULL, 'e229ebd0bb0f8a0dc512be229697a27e4707661a', NULL, '2016-05-23 23:39:16', '2016-05-24 04:09:16'),
(286, NULL, 'NIEVES ROJAS', 'DEIVIS REINALDO', '20731734', '04121304653', 'deivisuc20@outlook.com', NULL, NULL, 'f5c609af80334f9535f8e569cda1f57d5b4379da', NULL, '2016-05-24 06:18:40', '2016-05-24 10:48:40'),
(287, NULL, 'ROJAS', 'LILIANA', 'V-18644177', '04145989394', 'liliana_irojas@hotmail.com', NULL, NULL, '25fc4ff692c08745e432f3f0b9af1f4e3d5030c4', NULL, '2016-05-24 08:41:37', '2016-05-24 13:11:37'),
(288, NULL, 'PINTO AGUILAR', 'FERNANDO AUGUSTO', '7582265', '04266576389', 'fernandopinto@ucla.edu.ve', NULL, NULL, '1c50838e7d52ea5bd1ec2cd4c5eacf545c2208b3', NULL, '2016-05-24 12:42:34', '2016-05-24 17:12:34'),
(289, NULL, 'Benavides de Castañeda', 'Luisa Elena', 'V 7521029', '04167305296', 'luisafacultad@gmail.com', 'Universidad de Carabobo.', 'Facultad de Ciencias Jurídicas y Políticas', '94d94118eb065ef448c67e41d7daa51ff5832f31', NULL, '2016-05-24 14:41:19', '2016-05-24 19:11:19'),
(290, NULL, 'VILLALBA', 'LEONARDO', '7042292', '04140409020', 'lvillal2007@gmail.com', NULL, NULL, 'f18c50305bc3acd8ddcdbddd4b1f9ab525e67591', NULL, '2016-05-25 11:06:32', '2016-05-25 15:36:32'),
(291, NULL, 'Fredgling Carolina', 'Gonzalez Duque', '22008661', '0412-1995224', 'fredgling@hotmail.es', NULL, NULL, '0e3efaa9a3cff5d3ea3571e82a96e6712bf9f16b', NULL, '2016-05-25 14:47:42', '2016-05-25 19:17:42'),
(292, NULL, 'montero', 'leida', '9679356', '04243782312', 'montero.leida@gmail.com', '', 'Enfermeria', '4e2d8c16682cb92577b3f8c0b14c7c99fa06a6ba', NULL, '2016-05-26 18:05:56', '2016-05-26 22:35:56'),
(293, '293_6348a36c-1f1e-48cd-8f7f-abec6f0773bd.jpg', 'LAMENTA PISTILLO', 'PAOLA', '12932845', '04144001700', 'paolalamenta@gmail.com', 'UNIVERSIDAD DE CARABOBO', 'CONTADURÍA PÚBLICA', 'fe863aa790ff0da28aea29711f167c64614daea5', NULL, '2016-05-27 08:00:29', '2016-05-27 12:30:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;

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
(47, 42, 'Bárbula', 14, 'Presentación oral', 'Por qué América del Norte lidera la producción científica', 'Aprobado', '2016-04-25 18:39:34', '2016-05-16 18:25:18'),
(48, 44, 'Bárbula', 13, 'Presentación oral', 'MODERNIDAD Y MODERNIZACIÓN EN VENEZUELA Y AMÉRICA LATINA  UNA VISIÓN DESDE EL CENTRO Y  LA PERIFERIA', 'Aprobado', '2016-04-25 21:32:55', '2016-05-16 18:25:32'),
(49, 45, 'Bárbula', 13, 'Presentación oral', 'Éxodo Intelectual en el Ámbito Venezolano: Una mirada desde la Percepción de los Estudiantes Universitarios', 'Aprobado', '2016-04-25 21:43:49', '2016-05-16 18:24:47'),
(50, 46, 'Bárbula', 9, 'Presentación oral', 'Nueva mirada de la historia del arte desde la historia cultural', 'Aprobado', '2016-04-27 14:48:13', '2016-05-16 18:28:00'),
(51, 47, 'Bárbula', 9, 'Presentación oral', 'La formación histórica de la comunicación audiovisual en los tiempos de la narrativa transmedia: el caso de El Ministerio del Tiempo', 'Aprobado', '2016-04-27 15:23:31', '2016-05-16 18:28:19'),
(52, 49, 'Bárbula', 6, 'Simposios', 'EL GENERO EN PERSPECTIVA. CIENCIA, NUEVAS SEXUALIDADES,PARTICIPACIÓN,EQUIDAD, SALUD TRABAJO E HISTORIA', 'Aprobado', '2016-04-28 21:31:33', '2016-05-04 14:54:07'),
(53, 48, 'Bárbula', 10, 'Presentación oral', 'SERVICIOS DE ORIENTACIÓN Y ASESORAMIENTO PSICOLÓGICO EN LAS FACULTADES DE LA UNIVERSIDAD DE CARABOBO', 'Aprobado', '2016-04-29 08:54:34', '2016-05-16 18:28:41'),
(54, 54, 'La Morita', 2, 'Carteles', 'GESTIÓN AMBIENTAL DEL MANEJO DE LA BASURA EN LA FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES DE LA UNIVERSIDAD DE CARABOBO', 'En proceso de arbitraje', '2016-05-01 09:37:20', '2016-05-01 14:07:20'),
(55, 54, 'La Morita', 4, 'Carteles', 'LA VIRTUALIZACIÓN COMO DINAMISMO INTEGRADOR EN LA EDUCACIÓN HUMANISTA UNIVERSITARIA', 'En proceso de arbitraje', '2016-05-01 09:41:22', '2016-05-01 14:11:22'),
(56, 55, 'Bárbula', 7, 'Presentación oral', 'La libertad sindical negativa y las cláusulas de inclusión, exclusión y solidaridad en el marco jurídico venezolano', 'Aprobado', '2016-05-01 19:21:08', '2016-05-16 18:29:04'),
(57, 56, 'Bárbula', 7, 'Presentación oral', 'La Inspección del Trabajo en Venezuela y su relación con el diálogo social', 'Aprobado', '2016-05-01 21:49:08', '2016-05-22 13:31:08'),
(59, 59, 'Bárbula', 13, 'Presentación oral', 'El mito político de la democracia participativa y protagónica en la cultura política venezolana del siglo XXI', 'Aprobado', '2016-05-02 16:22:37', '2016-05-16 18:29:19'),
(60, 60, 'Bárbula', 4, 'Presentación oral', 'METODOLOGÍA PARA LA EVALUACIÓN DE PROGRAMA  DE POSTGRADO EN  EL  MOMENTO  ESTRATÉGICO  TÁCTICO OPERACIONAL', 'Aprobado', '2016-05-02 17:31:58', '2016-05-16 18:29:48'),
(61, 50, 'Bárbula', 2, 'Presentación oral', 'DESARROLLO HUMANO Y ECONEGOCIO: ACERCAMIENTO A UNA EMPRESA VERDE', 'Aprobado', '2016-05-03 02:09:59', '2016-05-16 18:30:10'),
(62, 67, 'Bárbula', 13, 'Presentación oral', 'Servicio Comunitario: Develando la Alteridad en la Extensión Universitaria', 'Aprobado', '2016-05-06 10:28:26', '2016-05-16 18:30:23'),
(63, 68, 'Bárbula', 5, 'Presentación oral', 'Entendimiento de la entidad como técnica para obtener evidencia persuasiva en la auditoría financiera', 'Aprobado', '2016-05-06 17:48:12', '2016-05-16 18:36:30'),
(64, 69, 'Bárbula', 10, 'Presentación oral', 'La transferencia de tecnología: Un estudio de las distintas tipologías en la relación universidad-empresa como elemento de innovación.', 'Aprobado', '2016-05-06 22:18:44', '2016-05-16 18:36:43'),
(69, 74, 'Bárbula', 9, 'Presentación oral', 'El persolalismo y legalismo desde la óptica de Jesús Muñoz Tébar', 'Aprobado', '2016-05-08 19:13:21', '2016-05-16 18:37:42'),
(70, 72, 'Bárbula', 8, 'Carteles', 'La reconversión gerencial a través de la estrategia comunicacional. Perspectiva de las empresas de salud sin fines lucrativos en Venezuela.', 'Rechazado', '2016-05-09 11:03:22', '2016-05-22 13:48:13'),
(72, 78, 'Bárbula', 6, 'Presentación oral', 'LOS ESTUDIOS CULTURALES Y LOS PROCESOS DE DESCOLONIZACIÓN DEL PENSAMIENTO, ¿un debate donde entra la mujer?', 'Aprobado', '2016-05-09 11:49:07', '2016-05-16 18:38:16'),
(73, 75, 'La Morita', 12, 'Simposios', 'Simposio Enfermedades Crónicas y Apoyo Familiar', 'En proceso de arbitraje', '2016-05-10 08:16:07', '2016-05-10 12:46:07'),
(74, 75, 'La Morita', 12, 'Simposios', 'Simposio (Breve Reseña Curricular) Enfermedades Crónicas y Apoyo Familiar', 'En proceso de arbitraje', '2016-05-10 08:17:48', '2016-05-10 12:47:48'),
(76, 85, 'Bárbula', 13, 'Carteles', 'LA  EVASION FISCAL EN EL IMPUESTO SOBRE SUCESIONES EN EL MUNICIPIO TRUJILLO, ESTADO TRUJILLO', 'Aprobado', '2016-05-10 13:24:56', '2016-05-16 18:38:45'),
(77, 82, 'Bárbula', 7, 'Presentación oral', 'TRANSFORMACIONES DE LOS MARCOS REGULATORIOS POR MEDIO DEL  REGIMEN POLÍTICO VENEZOLANO VIGENTE Y SU IMPACTO EN LAS RELACIONES LABORALES', 'Rechazado', '2016-05-10 15:31:16', '2016-05-22 13:49:42'),
(78, 88, 'La Morita', 7, 'Presentación oral', 'EL PASANTE EN LA LEGISLACIÓN LABORAL VENEZOLANA', 'En proceso de arbitraje', '2016-05-10 16:06:21', '2016-05-10 20:36:21'),
(79, 87, 'La Morita', 7, 'Presentación oral', 'Riesgos asociados a la función policial en Venezuela. Derechos laborales  del trabajador', 'En proceso de arbitraje', '2016-05-10 16:08:25', '2016-05-10 20:38:25'),
(80, 42, 'Bárbula', 6, 'Simposios', 'Estudio de género: una visión compleja de la actualidad', 'Aprobado', '2016-05-10 17:49:06', '2016-05-18 18:10:55'),
(81, 82, 'Bárbula', 7, 'Presentación oral', 'EDUCACIÓN-TRABAJO, HECHO SOCIAL QUE CONSTITUYEN LA COLUMNA VERTEBRAL PARA DESARROLLO PERSONAL Y SOCIAL', 'Aprobado', '2016-05-10 19:19:27', '2016-05-16 18:41:19'),
(82, 73, 'La Morita', 12, 'Simposios', 'GÉNERO EN DIALOGICIDAD CON LA CIENCIA Y LA COTIDIANIDAD.', 'En proceso de arbitraje', '2016-05-10 22:29:58', '2016-05-11 02:59:58'),
(83, 11, 'Bárbula', 10, 'Presentación oral', 'INNOVACIÓN SOCIAL COMO PROCESO DE APROPIACIÓN DE NUEVOS CONOCIMIENTOS A TRAVÉS DE REDES SOCIALISTA DE INNOVACIÓN PRODUCTIVA', 'Rechazado', '2016-05-11 08:35:14', '2016-05-22 13:53:08'),
(85, 32, 'La Morita', 9, 'Presentación oral', 'Pensamiento político de Laureano Vallenilla Lanz: Notas a la Historia Intelectual de la Idea Conservativa del Orden', 'En proceso de arbitraje', '2016-05-11 12:20:51', '2016-05-11 16:50:51'),
(88, 79, 'La Morita', 2, 'Carteles', 'MANEJO DE  AGUAS RESIDUALES Y SU IMPACTO AMBIENTAL EN ZONAS INDUSTRIALES', 'En proceso de arbitraje', '2016-05-11 20:53:48', '2016-05-12 01:23:48'),
(91, 100, 'Bárbula', 5, 'Presentación oral', 'Categorización del riesgo derivado de la auditoría como técnica para obtener evidencia persuasiva en la auditoría financiera.', 'Aprobado', '2016-05-12 14:04:39', '2016-05-22 14:08:34'),
(94, 102, 'La Morita', 1, 'Carteles', 'El proceso de teorización en la investigación. Caso: Participación comunitaria en la Comuna Luchadores Falconianos por la Patria', 'En proceso de arbitraje', '2016-05-12 15:39:01', '2016-05-12 20:09:01'),
(97, 103, 'Bárbula', 8, 'Presentación oral', 'LA ÉTICA Y LA COMPETENCIA HUMANA EN LAS ORGANIZACIONES COMO FACTORES CLAVE PARA EL AMBIENTE DE CONTROL INTERNO', 'Aprobado', '2016-05-12 18:46:55', '2016-05-22 14:12:58'),
(101, 105, 'La Morita', 2, 'Presentación oral', 'EL DERECHO HUMANO AL MEDIO AMBIENTE EN LA ENCÍCLICA LAUDATO SI DEL PAPA FRANCISCO', 'En proceso de arbitraje', '2016-05-12 20:17:20', '2016-05-13 00:47:20'),
(102, 106, 'Bárbula', 4, 'Carteles', 'Características y necesidades del contexto: curricular, laboral y social de la carrera de Enfermeria a nivel nacional e internacional', 'Aprobado', '2016-05-13 05:56:48', '2016-05-22 14:21:32'),
(103, 107, 'Bárbula', 2, 'Presentación oral', '¿CONSERVAR, CONCIENCIAR O CAMBIAR?  UNA HERMENEUISIS DE LA FORMACIÓN AMBIENTAL', 'Aprobado', '2016-05-13 07:50:46', '2016-05-22 14:26:25'),
(105, 109, 'Bárbula', 4, 'Presentación oral', 'La ecologìa emocional , una estrategia didàctica en el proceso de aprendizaje significativo en aula', 'Aprobado', '2016-05-13 10:58:37', '2016-05-22 14:32:57'),
(106, 110, 'La Morita', 5, 'Carteles', 'LA  AUDITORIA TRIBUTARIA. UNA MIRADA DESDE EL SECTOR PRIVADO DE SALUD', 'En proceso de arbitraje', '2016-05-13 13:52:35', '2016-05-13 18:22:35'),
(107, 111, 'La Morita', 8, 'Presentación oral', 'EL MANEJO DE CONFLICTOS COMO HABILIDAD GERENCIAL  DEL CUERPO DIRECTIVO EN INSTITUCIONES EDUCATIVAS', 'En proceso de arbitraje', '2016-05-13 14:04:40', '2016-05-13 18:34:40'),
(108, 115, 'Bárbula', 13, 'Presentación oral', 'La influencia del positivismo en el Pensamiento Latinoamericano', 'Aprobado', '2016-05-13 14:51:29', '2016-05-22 14:37:54'),
(109, 115, 'Bárbula', 9, 'Presentación oral', 'La Identidad Latinoamericana en cuatro tiempos', 'Aprobado', '2016-05-13 14:54:46', '2016-05-22 14:44:24'),
(111, 116, 'Bárbula', 8, 'Simposios', 'NUEVOS PARADIGMAS Y CAMBIO ORGANIZACIONAL EN  EL CONTEXTO POLÍTICO, ECONÓMICO Y SOCIAL DEL SIGLO XXI', 'Aprobado', '2016-05-13 17:08:46', '2016-05-16 17:37:04'),
(112, 66, 'Bárbula', 11, 'Presentación oral', 'PLANIFICACIÓN PÚBLICA MUNICIPAL Y PARTICIPACIÓN CIUDADANA. UN ACERCAMIENTO DESDE LOS CONSEJOS LOCALES DE PLANIFICACIÓN PÚBLICA', 'Aprobado', '2016-05-13 17:43:55', '2016-05-22 14:57:59'),
(113, 66, 'Bárbula', 4, 'Presentación oral', 'REESTRUCTURACIÓN EPISTEMOLÓGICA, DIDÁCTICA Y PEDAGÓGICA DE LA EDUCACIÓN PARA LA SUSTENTABILIDAD DESDE LA GERENCIA EDUCATIVA.', 'Aprobado', '2016-05-13 17:50:35', '2016-05-22 15:58:07'),
(116, 122, 'La Morita', 12, 'Presentación oral', 'SOCIO-SIMBOLOGÍA DE LA MATERNIDAD Y DISCURSO MÉDICO HEGEMÓNICO: UN ANÁLISIS DESDE LA PERSPECTIVA DE GÉNERO SOBRE LA REPRODUCCIÓN ASISTIDA', 'En proceso de arbitraje', '2016-05-13 21:23:25', '2016-05-14 01:53:25'),
(117, 123, 'Bárbula', 4, 'Carteles', 'DESARROLLO DE LA RESPONSABILIDAD DENTRO DEL MARCO DE LA TRIBUTACIÓN EN NIÑOS DE 3ER GRADO U. E. ESCUELA NACIONAL BÁRBULA.', 'Aprobado', '2016-05-13 22:39:00', '2016-05-22 15:58:20'),
(118, 124, 'Bárbula', 7, 'Simposios', '“LA CULTURA DEL TRABAJO EN VENEZUELA”', 'Aprobado', '2016-05-14 06:52:28', '2016-05-15 20:12:16'),
(119, 72, 'Bárbula', 14, 'Carteles', 'La Sociedad de la Información. Comentarios sobre el uso de las TIC en la educación venezolana', 'Aprobado', '2016-05-14 08:27:47', '2016-05-22 16:21:00'),
(120, 125, 'Bárbula', 7, 'Presentación oral', 'LOS DIVERSOS REGÍMENES DE JUBILACIONES EN LA ADMINISTRACIÓN PÚBLICA NACIONAL, ESTADAL Y MUNICIPAL', 'Aprobado', '2016-05-14 09:31:47', '2016-05-23 01:31:17'),
(121, 126, 'La Morita', 6, 'Carteles', 'LA EXTENSIÓN UNIVERSITARIA Y EL SERVICIO COMUNITARIO UNA RESPONSABILIDAD SOCIAL  EN LA ERA PLANETARIA', 'En proceso de arbitraje', '2016-05-14 09:43:30', '2016-05-14 14:13:30'),
(122, 127, 'Bárbula', 12, 'Presentación oral', 'Examinación del riesgo de candidiasis oral referida al uso de prótesis dental: una revisión matemática exploratoria', 'Aprobado', '2016-05-14 10:35:53', '2016-05-23 01:43:01'),
(123, 89, 'La Morita', 3, 'Presentación oral', 'PLAN DE FINANZAS PERSONALES PARA EL PERSONAL DOCENTE DE LA UNIDAD EDUCATIVA INSTITUTO "LOS PRÓCERES"', 'En proceso de arbitraje', '2016-05-14 11:37:56', '2016-05-14 16:07:56'),
(125, 95, 'Bárbula', 11, 'Presentación oral', 'El Control Fiscal Interno y su Influencia en la Administración de las Empresas Estatales Venezolanas', 'Aprobado', '2016-05-14 11:50:48', '2016-05-23 01:52:26'),
(126, 132, 'Bárbula', 8, 'Presentación oral', 'CAPITAL INTELECTUAL A LA LUZ DE LA DOCTRINA Y LA GESTIÓN DEL CAPITAL INTELECTUAL', 'En proceso de arbitraje', '2016-05-14 14:31:20', '2016-05-14 19:01:20'),
(127, 131, 'Bárbula', 4, 'Presentación oral', 'SIGNIFICADO QUE TIENEN LOS VALORES PARA LOS ESTUDIANTES EN LA UNIDAD EDUCATIVA GENERAL “JOSÉ ANTONIO PÁEZ"', 'Aprobado', '2016-05-14 14:31:47', '2016-05-23 02:05:23'),
(128, 38, 'Bárbula', 4, 'Presentación oral', 'REPRESENTACIONES SOCIALES  DEL DOCENTE DE EDUCACIÓN MEDIA GENERAL ANTE LA DIVERSIDAD FUNCIONAL DE SUS ESTUDIANTES.', 'Aprobado', '2016-05-14 14:32:02', '2016-05-23 02:13:21'),
(129, 94, 'Bárbula', 12, 'Presentación oral', 'DISFUNCION ERECTIL EN PACIENTES CON ENFERMEDAD RENAL CRONICA EN HEMODIALISIS', 'Aprobado', '2016-05-14 14:37:56', '2016-05-23 02:28:45'),
(130, 133, 'Bárbula', 12, 'Presentación oral', 'VIGILANCIA EPIDEMIOLOGICA DE INFECCION POR BORDETELLA PERTUSSIS. HOSPITAL DE NIÑOS DR JORGE LIZARRAGA.  ENERO – ABRIL 2015', 'Aprobado', '2016-05-14 14:59:45', '2016-05-23 02:40:54'),
(131, 118, 'La Morita', 13, 'Carteles', 'INTENCIONALIDAD FORMATIVA: UNA HERMENEUSIS DESDE LOS ESTUDIANTES QUE ASPIRAN A SER FUNCIONARIOS POLICIALES', 'En proceso de arbitraje', '2016-05-14 15:33:28', '2016-05-14 20:03:28'),
(135, 130, 'Bárbula', 13, 'Presentación oral', 'EL MÉTODO SOCIO HISTÓRICO DE COMPRENSIÓN DE LA TEORÍA FILOSÓFICA DE RENE DESCARTES', 'Aprobado', '2016-05-14 16:50:57', '2016-05-23 02:45:21'),
(136, 130, 'Bárbula', 13, 'Presentación oral', 'El Capital intelectual en el marco de la inteligencia emocional como estrategia', 'En proceso de arbitraje', '2016-05-14 16:54:26', '2016-05-14 21:24:26'),
(137, 136, 'La Morita', 1, 'Presentación oral', 'LA NECESIDAD DE INTEGRAR LA SISTEMATIZACION A LA GESTION ADMINISTRATIVA COMUNITARIA. CASO: URBANIZACION LOS LIBERTADORES PALO NEGRO', 'En proceso de arbitraje', '2016-05-14 17:41:52', '2016-05-14 22:11:52'),
(138, 132, 'Bárbula', 7, 'Presentación oral', 'UNA MIRADA DESDE LA PERSPECTIVA DEL TRABAJO NO CLÁSICO', 'Aprobado', '2016-05-14 18:00:53', '2016-05-23 02:56:54'),
(139, 137, 'Bárbula', 4, 'Presentación oral', 'LAS COMPETENCIAS INVESTIGATIVAS EN LA FORMACIÓN DOCENTE.  REFLEXIONES EPISTEMOLOGICAS Y PEDAGOGICAS', 'Aprobado', '2016-05-14 18:33:32', '2016-05-23 03:02:06'),
(143, 138, 'Bárbula', 2, 'Presentación oral', 'SOMOS BIODIVERSIDAD: UTILIZACIÓN DEL ESPACIO PÚBLICO Y SU PAISAJE NATURAL PARA LA CONSERVACIÓN DE LA BIODIVERSIDAD EN ESPACIOS URBANOS', 'Aprobado', '2016-05-14 19:14:20', '2016-05-23 03:17:18'),
(149, 134, 'Bárbula', 4, 'Presentación oral', 'ACCIONES PARA IMPULSAR LA PARTICIPACIÓN PROTAGÓNICA DE LAS MUJERES EN LA UNIVERSIDAD DE CARABOBO', 'Aprobado', '2016-05-15 09:11:24', '2016-05-23 06:50:13'),
(150, 145, 'Bárbula', 12, 'Carteles', 'NIVELES SÉRICOS DE TSH Y T4L EN EL SEGUNDO Y TERCER TRIMESTRE DE EMBARAZO EN ADOLESCENTES.', 'Rechazado', '2016-05-15 10:19:39', '2016-05-23 06:52:00'),
(151, 144, 'Bárbula', 7, 'Carteles', 'una mirada a la epistemologia de la ciencias sociales', 'En proceso de arbitraje', '2016-05-15 10:22:43', '2016-05-15 14:52:43'),
(152, 146, 'Bárbula', 2, 'Carteles', 'PROGRAMA AGROECOLOGICO PARA EL MANTENIMIENTO DE LOS SUELOS POR MEDIO DEL USO DEL PASTO VETIVER', 'Aprobado', '2016-05-15 10:40:45', '2016-05-23 07:10:24'),
(153, 143, 'Bárbula', 9, 'Presentación oral', 'Dimensión Socio-política del Fracaso Escolar', 'Aprobado', '2016-05-15 10:42:51', '2016-05-23 07:33:43'),
(158, 43, 'Bárbula', 1, 'Simposios', 'Ciudades con futuro y competitivas', 'Aprobado', '2016-05-15 12:35:10', '2016-05-15 20:29:22'),
(159, 149, 'Bárbula', 12, 'Presentación oral', 'El Cuidado Proporcionado por Enfermería al Adulto Mayor  en un Hospital Tipo IV', 'Rechazado', '2016-05-15 12:38:37', '2016-05-23 07:55:47'),
(160, 192, 'Bárbula', 1, 'Simposios', 'Smart City', 'Aprobado', '2016-05-15 12:43:35', '2016-05-17 02:19:06'),
(161, 150, 'Bárbula', 4, 'Presentación oral', 'REFLEXIÓN EN EL APRENDIZAJE DEL ESTUDIANTE UNIVERSITARIO EN SU FORMACIÓN PROFESIONAL', 'Aprobado', '2016-05-15 12:51:08', '2016-05-23 08:02:20'),
(163, 152, 'Bárbula', 4, 'Presentación oral', 'LA ESCRITURA ACADÉMICA EN LA FORMACIÓN DEL ESTUDIANTE UNIVERSITARIO', 'Aprobado', '2016-05-15 14:07:00', '2016-05-29 06:06:13'),
(164, 153, 'Bárbula', 9, 'Presentación oral', 'BLAS BRUZUAL: UN VEHEMENTE DIFUSOR DE LAS IDEAS LIBERALES (1808 – 1882).', 'Aprobado', '2016-05-15 14:27:01', '2016-05-23 08:11:10'),
(180, 158, 'Bárbula', 12, 'Presentación oral', 'ACCIONES EDUCATIVAS SOBRE LA LACTANCIA MATERNA EXCLUSIVA DIRIGIDAS A LAS EMBARAZADAS DE LA CONSULTA PRENATAL', 'Rechazado', '2016-05-15 16:41:19', '2016-05-23 08:15:31'),
(182, 163, 'La Morita', 12, 'Presentación oral', 'PATRIARCADO Y MODERNIDAD. LOS LUGARES SOCIALES DE LAS MUJERES EN LA HISTORIA', 'En proceso de arbitraje', '2016-05-15 17:47:05', '2016-05-15 22:17:05'),
(183, 9, 'La Morita', 2, 'Presentación oral', 'ESTUDIO DE LA SEQUÍA METEOROLÓGICA EN LOCALIDADES AGRÍCOLAS DE LOS LLANOS VENEZOLANOS', 'En proceso de arbitraje', '2016-05-15 17:56:33', '2016-05-15 22:26:33'),
(184, 121, 'La Morita', 4, 'Carteles', 'Lo comunicativo: un espacio para el encuentro', 'En proceso de arbitraje', '2016-05-15 18:26:34', '2016-05-15 22:56:34'),
(185, 165, 'La Morita', 10, 'Carteles', 'LA RESPONSABILIDAD SOCIAL EMPRESARIAL INTERNA PARTIENDO DEL AMBIENTE DE CONTROL SEGÚN LA METODOLOGÍA COSO. CASO: ORGANIZACIONES PROVEEDORAS ', 'En proceso de arbitraje', '2016-05-15 18:37:21', '2016-05-15 23:07:21'),
(190, 66, 'Bárbula', 4, 'Presentación oral', 'UNA MIRADA AL CUERPO TEÓRICO DE LAS CIENCIAS DE LA EDUCACIÓN A PARTIR DE LA PERSPECTIVA DE GASTÓN MIALARET.', 'Aprobado', '2016-05-15 19:03:53', '2016-05-23 08:21:29'),
(192, 171, 'Bárbula', 4, 'Presentación oral', 'FORMACIÓN DE PROFESIONALES DE OTRAS ÁREAS EN DOCENCIA PARA LA EDUCACIÓN SUPERIOR DESDE UNA VISIÓN HOLÍSTICA.', 'Aprobado', '2016-05-15 19:19:23', '2016-05-23 08:29:27'),
(193, 170, 'La Morita', 11, 'Presentación oral', 'LA GESTIÓN PÚBLICA VENEZOLANA Y SU RESPONSABILIDAD SOCIAL INTERNA', 'En proceso de arbitraje', '2016-05-15 19:21:48', '2016-05-15 23:51:48'),
(194, 172, 'Bárbula', 6, 'Carteles', 'DECOLONIALIDAD: CAMINO HACIA LA VISIBILIZACIÓN Y LA TRANSFORMACIÓN DESDE EL SUR', 'En proceso de arbitraje', '2016-05-15 19:22:59', '2016-05-15 23:52:59'),
(195, 173, 'Bárbula', 2, 'Carteles', 'EFECTOS DEL BIOFERTILIZANTE DE DESECHOS ORGÁNICOS DE LA NARANJA EN EL APRENDIZAJE DE LAS PRÁCTICAS EXPERIMENTALES DE QUÍMICA', 'En proceso de arbitraje', '2016-05-15 19:31:57', '2016-05-16 00:01:57'),
(196, 164, 'La Morita', 14, 'Presentación oral', 'LAS TICS COMO HERRAMIENTA TECNOLÓGICA EN LA APROXIMACIÓN DEL CONOCIMIENTO FILOSÓFICO ENMARCADO EN LA ÉTICA Y LOS VALORES', 'En proceso de arbitraje', '2016-05-15 19:32:26', '2016-05-16 00:02:26'),
(200, 62, 'Bárbula', 14, 'Presentación oral', 'CIBERIDENTIDAD Y REDES SOCIALES', 'En proceso de arbitraje', '2016-05-15 19:45:30', '2016-05-16 00:15:30'),
(201, 62, 'Bárbula', 7, 'Presentación oral', 'PROTECCIÓN LEGAL A LA SALUD DE LA MUJER EN SU ENTORNO DE TRABAJO EN VENEZUELA', 'En proceso de arbitraje', '2016-05-15 19:52:15', '2016-05-16 00:22:15'),
(202, 84, 'Bárbula', 12, 'Presentación oral', 'USO Y APLICACIÓN DE SUSTANCIAS DE RELLENO (BIOPOLÍMEROS): CONSECUENCIAS CLÍNICAS Y LEGALES EN VENEZUELA', 'Aprobado', '2016-05-15 19:56:48', '2016-05-23 08:35:36'),
(204, 83, 'Bárbula', 4, 'Presentación oral', 'La Integración social como práctica en el desarrollo persona de estudiantes de la Mención Orientación', 'En proceso de arbitraje', '2016-05-15 20:24:42', '2016-05-16 00:54:42'),
(205, 169, 'Bárbula', 6, 'Presentación oral', 'LA INVESTIGACIÓN EN EL ABORDAJE COMUNITARIO DESDE LA  HISTORIA-DE-VIDA CONVIVIDA. HISTORIA-DE-VIDA DE ALEXANDRA', 'En proceso de arbitraje', '2016-05-15 20:25:30', '2016-05-16 00:55:30'),
(206, 175, 'La Morita', 13, 'Presentación oral', 'Nosotros que nos quedamos, también vivimos la emigración', 'En proceso de arbitraje', '2016-05-15 20:36:47', '2016-05-16 01:06:47'),
(208, 174, 'La Morita', 4, 'Presentación oral', 'PROPUESTA DE ACTUALIZACIÓN PEDAGÓGICA PARA LOS DOCENTES DE EDUCACIÓN INICIAL', 'En proceso de arbitraje', '2016-05-15 21:14:20', '2016-05-16 01:44:20'),
(209, 41, 'Bárbula', 10, 'Presentación oral', 'Aproximación teórica al concepto de organización fractal', 'En proceso de arbitraje', '2016-05-15 21:19:47', '2016-05-16 01:49:47'),
(213, 160, 'Bárbula', 2, 'Carteles', 'Factores Bióticos y el Requerimiento de Uso.  Una línea que se puede transgredir. Caso: Ríos del Estado Yaracuy', 'En proceso de arbitraje', '2016-05-15 22:00:41', '2016-05-16 02:30:41'),
(214, 161, 'Bárbula', 2, 'Carteles', 'Bioética y el Derecho a una Vivienda Digna Un reto para la construcción de hogares sostenible', 'En proceso de arbitraje', '2016-05-15 22:02:07', '2016-05-16 02:32:07'),
(215, 176, 'Bárbula', 13, 'Presentación oral', 'El discurso y sus implicaciones en el entorno socio-educativo', 'En proceso de arbitraje', '2016-05-15 22:10:13', '2016-05-16 02:40:13'),
(216, 140, 'Bárbula', 12, 'Presentación oral', 'PROGRAMA PSICOTERAPÉUTICO BASADO EN LA PSICONEUROINMUNOLOGÍA PARA DISMINUIR LA DEPRESIÓN Y ANSIEDAD EN LAS PACIENTES CON CÁNCER DE MAMA', 'En proceso de arbitraje', '2016-05-15 22:17:21', '2016-05-16 02:47:21'),
(217, 177, 'Bárbula', 13, 'Presentación oral', 'Cultura en la modernidad capitalista', 'En proceso de arbitraje', '2016-05-15 22:36:34', '2016-05-16 03:06:34'),
(221, 179, 'Bárbula', 6, 'Presentación oral', 'Aproximación teórica a los delitos por discriminación sexual negativa', 'En proceso de arbitraje', '2016-05-15 23:25:29', '2016-05-16 03:55:29'),
(222, 180, 'Bárbula', 4, 'Presentación oral', 'LA AFECTIVIDAD POSITIVA COMO ACTITUD DE VIDA PARA LA MOTIVACION EN LA ENSEÑANZA A NIVEL SUPERIOR EN VENEZUELA', 'En proceso de arbitraje', '2016-05-15 23:25:36', '2016-05-16 03:55:36'),
(223, 181, 'Bárbula', 13, 'Presentación oral', 'Globalización y cultura en Latino América, una mirada del cuerpo femenino en la construcción de nuevas identidades', 'En proceso de arbitraje', '2016-05-15 23:28:12', '2016-05-16 03:58:12'),
(224, 182, 'Bárbula', 7, 'Presentación oral', 'Estrategias para Afrontar el Síndrome de Burnout en Docentes Universitarios de la Facultad de Odontología de la Universidad de Carabobo', 'En proceso de arbitraje', '2016-05-15 23:32:40', '2016-05-16 04:02:40'),
(225, 156, 'Bárbula', 13, 'Presentación oral', 'GLOBALIZACIÓN, CULTURAS E IDENTIDADES HOY', 'En proceso de arbitraje', '2016-05-15 23:53:50', '2016-05-16 04:23:50'),
(226, 156, 'Bárbula', 13, 'Presentación oral', 'MODERNIDAD, MODERNIZACIÓN Y MUNDOS DE VIDA EN NUESTRAMÉRICA: DISTINTAS REALIDADES EN CO-EXISTENCIA Y RESISTENCIA', 'En proceso de arbitraje', '2016-05-16 00:29:38', '2016-05-16 04:59:38'),
(227, 182, 'Bárbula', 14, 'Presentación oral', 'Moodle como Estrategia B-Learning para la Enseñanza del Inglés Odontológico en la Universidad de Carabobo', 'En proceso de arbitraje', '2016-05-16 00:31:39', '2016-05-16 05:01:39'),
(228, 181, 'Bárbula', 13, 'Presentación oral', 'Las prácticas deportivas globalizadoras', 'En proceso de arbitraje', '2016-05-16 00:40:31', '2016-05-16 05:10:31'),
(229, 184, 'Bárbula', 6, 'Presentación oral', 'VIOLENCIA INTRAFAMILIAR: HALLAZGOS DESDE LA ESCUELA', 'En proceso de arbitraje', '2016-05-16 08:35:49', '2016-05-16 13:05:49'),
(230, 183, 'Bárbula', 14, 'Presentación oral', 'USO DE LA CANAIMA  Y SU VINCULACIÓN CON LOS CONCEPTOS MATEMÁTICOS', 'En proceso de arbitraje', '2016-05-16 09:19:49', '2016-05-16 13:49:49'),
(234, 187, 'Bárbula', 4, 'Simposios', 'LAS COMPETENCIASCOMUNICATIVAS COMO PRINCIPIO MEDULAR PARA LA PRODUCCIÓN CIENTÍFICA DE TEXTOS ESCRITOS EN EL PREGRADO UNIVERSITARIO', 'En proceso de arbitraje', '2016-05-16 12:12:01', '2016-05-16 16:42:01'),
(235, 26, 'Bárbula', 2, 'Presentación oral', 'EL DILEMA ENTRE LA EFICIENCIA ENERGÉTICA INSTITUCIONAL Y LA SATISFACCIÓN DE LAS NECESIDADES ACTUALES PARA EL DESARROLLO EDUCATIVO.', 'En proceso de arbitraje', '2016-05-16 12:29:57', '2016-05-16 16:59:57'),
(237, 187, 'Bárbula', 4, 'Presentación oral', 'LAS COMPETENCIAS COMUNICATIVAS COMO PRINCIPIO MEDULAR PARA LA PRODUCCIÓN CIENTÍFICA DE TEXTOS ESCRITOS EN EL PREGRADO UNIVERSITARIO', 'En proceso de arbitraje', '2016-05-16 13:39:13', '2016-05-16 18:09:13'),
(238, 185, 'La Morita', 2, 'Presentación oral', 'cultura integral de reciclaje', 'En proceso de arbitraje', '2016-05-16 14:28:42', '2016-05-16 18:58:42'),
(239, 185, 'La Morita', 2, 'Carteles', 'diseño sustentable', 'En proceso de arbitraje', '2016-05-16 14:39:40', '2016-05-16 19:09:40'),
(240, 190, 'Bárbula', 1, 'Presentación oral', 'Principales Planes y Programas Educativos Oficiales sobre Educación y Seguridad Vial en Venezuela', 'En proceso de arbitraje', '2016-05-16 14:45:26', '2016-05-16 19:15:26'),
(241, 193, 'Bárbula', 6, 'Simposios', 'Responsabilidad social, diversidad, equidad y justicia: Ejes para un diálogo entre iguales', 'Aprobado', '2016-05-16 17:36:44', '2016-05-16 23:59:17'),
(242, 189, 'Bárbula', 2, 'Carteles', 'LA LOMBRIZ COMO REGENADORAS DE LOS SUELOS Y PROVEEDOR DE ABONO A LAS PLANTAS, SOBRE TODO LA LOMBRIZ ROJA CALIFORNIANA.', 'En proceso de arbitraje', '2016-05-16 20:05:29', '2016-05-17 00:35:29'),
(243, 189, 'Bárbula', 12, 'Carteles', 'EXPERIENCIAS DE ADAPTACIÓN DE LAS PLANTAS DE STEVIA EN PRO DE LA SALUD EN EL MUNICIPIO CABIMAS.', 'En proceso de arbitraje', '2016-05-16 20:10:11', '2016-05-17 00:40:11'),
(248, 198, 'Bárbula', 13, 'Presentación oral', 'PRÁCTICA ÉTICA EN EL HOMBRE POPULAR VENEZOLANO', 'En proceso de arbitraje', '2016-05-17 08:27:03', '2016-05-17 12:57:03'),
(249, 199, 'Bárbula', 13, 'Presentación oral', 'PENSAR UN PROYECTO POLÍTICO DESDE EL MUNDO-DE-VIDA POPULAR VENEZOLANO COMO FUNDAMENTO DEL PROYECTO EDUCATIVO', 'En proceso de arbitraje', '2016-05-17 08:35:42', '2016-05-17 13:05:42'),
(250, 200, 'Bárbula', 11, 'Presentación oral', 'Propuesta de Mejora Institucional: Plan Evasión Cero en la Alcaldía Bolivariana de Valencia, Estado Carabobo, Venezuela', 'En proceso de arbitraje', '2016-05-17 09:47:07', '2016-05-17 14:17:07'),
(252, 118, 'La Morita', 13, 'Carteles', 'LAS PRÁCTICAS PROFESIONALES EN LA FORMACIÓN DE CUSTODIOS PENITENCIARIOS, UNA MIRADA DESDE LOS ESTUDIANTES', 'En proceso de arbitraje', '2016-05-17 10:54:07', '2016-05-17 15:24:07'),
(253, 202, 'La Morita', 10, 'Carteles', 'EL PROFESIONAL CONTABLE EN VENEZUELA FRENTE A LA GESTIÓN DE RESPONSABILIDAD SOCIAL EMPRESARIAL', 'En proceso de arbitraje', '2016-05-17 11:35:13', '2016-05-17 16:05:13'),
(254, 155, 'Bárbula', 4, 'Presentación oral', 'Autonomía de aprendizaje de personas con discapacidad visual en el entorno de las tic', 'En proceso de arbitraje', '2016-05-17 18:00:50', '2016-05-17 22:30:50'),
(259, 194, 'La Morita', 13, 'Presentación oral', 'ESTUDIO DOCUMENTAL ACERCA DE LA SITUACIÓN ACTUAL DE LA INDUSTRIA EDITORIAL PÚBLICA VENEZOLANA Y LAS RELACIONES QUE ESTABLECE CON LOS PAÍSES ', 'En proceso de arbitraje', '2016-05-17 20:12:04', '2016-05-18 00:42:04'),
(263, 194, 'La Morita', 13, 'Presentación oral', 'ESTUDIO DOCUMENTAL DE LA SITUACIÓN ACTUAL DE LA INDUSTRIA EDITORIAL PÚBLICA VENEZOLANA Y LAS RELACIONES QUE ESTABLECE CON LOS PAÍSES DEL MER', 'En proceso de arbitraje', '2016-05-17 20:16:51', '2016-05-18 00:46:51'),
(264, 194, 'La Morita', 13, 'Presentación oral', 'ESTUDIO DOCUMENTAL DE LA SITUACIÓN ACTUAL DE LA INDUSTRIA EDITORIAL PÚBLICA VENEZOLANA CON LOS PAÍSES DEL MERCOSUR', 'En proceso de arbitraje', '2016-05-17 20:17:31', '2016-05-18 00:47:31'),
(267, 34, 'Bárbula', 7, 'Presentación oral', 'Racionamiento Eléctrico: Trastorno del sueño y rendimiento laboral', 'En proceso de arbitraje', '2016-05-17 22:22:25', '2016-05-18 02:52:25'),
(274, 204, 'Bárbula', 12, 'Presentación oral', 'CULTO MÁGICO-RELIGIOSO Y  SALUD: APROXIMACIÓN A UNA ARQUEOLOGÍA SIMBÓLICA', 'En proceso de arbitraje', '2016-05-18 02:40:58', '2016-05-18 07:10:58'),
(275, 205, 'Bárbula', 7, 'Simposios', 'LAS ORGANIZACIONES Y SU GENTE: ESTRATEGIAS PARA ASUMIR EL RETO', 'Aprobado', '2016-05-18 08:59:51', '2016-05-18 20:50:36'),
(276, 207, 'Bárbula', 5, 'Presentación oral', 'PLAN ESTRATÉGICO ORGANIZACIONAL PARA LA OPTIMIZACIÓN DEL PROCESO ADMINISTRATIVO A TRAVÉS DEL CUADRO DE MANDO DE LA EMPRESA AGROPORK.RPR.', 'En proceso de arbitraje', '2016-05-18 10:24:21', '2016-05-18 14:54:21'),
(277, 130, 'Bárbula', 13, 'Presentación oral', 'EL POSÍTIVISMO: ANÁLISIS CRÍTICO DE LA TEORÍA SOCIAL DE AUGUSTO COMTE', 'En proceso de arbitraje', '2016-05-18 10:59:04', '2016-05-18 15:29:04'),
(278, 160, 'Bárbula', 13, 'Carteles', 'Un Acercamiento al Derecho y la Razón  En Búsqueda de la Verdad', 'En proceso de arbitraje', '2016-05-18 12:48:36', '2016-05-18 17:18:36'),
(279, 114, 'Bárbula', 7, 'Presentación oral', 'SISTEMA DE RELACIONES  DE TRABAJO EN LA ADMINISTRACION PÚBLICA DE VENEZUELA Y SUS REGULACIONES', 'En proceso de arbitraje', '2016-05-18 13:11:47', '2016-05-18 17:41:47'),
(280, 114, 'Bárbula', 13, 'Presentación oral', 'El METODO SOCIO HISTORICO Y LA COMPRENSION DE LA TEORIA SOCIAL CHARLES LOUIS DE SECONDAT,  (BARON DE MONTESQUIEU)', 'En proceso de arbitraje', '2016-05-18 13:13:43', '2016-05-18 17:43:43'),
(281, 210, 'Bárbula', 10, 'Presentación oral', 'Asumiendo Lo Político.  Rol Formador De La Universidad En Una Educación Para La Democracia.', 'En proceso de arbitraje', '2016-05-18 19:59:28', '2016-05-19 00:29:28'),
(282, 195, 'Bárbula', 12, 'Carteles', 'Evaluación de las condiciones de almacenamiento y/o desecho de fármacos vencidos en los núcleos familiares de la Parroquia San José, Municip', 'En proceso de arbitraje', '2016-05-18 20:07:02', '2016-05-19 00:37:02'),
(284, 211, 'Bárbula', 8, 'Presentación oral', 'VISIBILIDAD DEL ACTIVO INTANGIBLE EN LA ADMINISTRACIÓN EMPRESARIAL: Una perspectiva semiótica social', 'En proceso de arbitraje', '2016-05-18 21:37:05', '2016-05-19 02:07:05'),
(285, 211, 'Bárbula', 4, 'Simposios', 'FORMACIÓN DOCTORAL EN LAS CIENCIAS ECONÓMICAS Y SOCIALES EN  VENEZUELA', 'Aprobado', '2016-05-18 21:56:57', '2016-05-19 12:29:38'),
(286, 97, 'Bárbula', 4, 'Presentación oral', 'FORMACIÓN EN LAS CIENCIAS ECONÓMICAS Y SOCIALES ANTE EL RETO DE LA ADOPCIÓN A  LAS NORMAS  INTERNACIONALES DE INFORMACIÓN  FINANCIERA', 'En proceso de arbitraje', '2016-05-19 08:49:22', '2016-05-19 13:19:22'),
(288, 44, 'La Morita', 12, 'Presentación oral', 'PRESENTACIÓN NARRATIVA DE LOS RASGOS DE VIOLENCIA', 'En proceso de arbitraje', '2016-05-19 09:08:00', '2016-05-19 13:38:00'),
(289, 44, 'La Morita', 12, 'Presentación oral', 'INTERPRETACIÓN DEL SUICIDO DESDE EL MEDIO ORIENTE', 'En proceso de arbitraje', '2016-05-19 09:12:00', '2016-05-19 13:42:00'),
(290, 5, 'Bárbula', 13, 'Simposios', 'Transformación de la sociedad y sus estructuras: retos ante los nuevos tiempos', 'Aprobado', '2016-05-19 12:09:07', '2016-05-19 16:51:31'),
(291, 212, 'La Morita', 1, 'Presentación oral', 'La Estatolatría del Socialismo del Siglo XXI', 'En proceso de arbitraje', '2016-05-19 14:57:20', '2016-05-19 19:27:20'),
(292, 213, 'Bárbula', 2, 'Presentación oral', 'DISEÑO INDUSTRIAL E INNOVACIÓN EN LA EMPRESA PARA LA CONSTRUCCIÓN DE LA SUSTENTABILIDAD', 'En proceso de arbitraje', '2016-05-19 17:20:21', '2016-05-19 21:50:21'),
(293, 27, 'Bárbula', 9, 'Presentación oral', 'LA TEORÍA DEL CAPITAL  DE PIERRE-FÉLIX  BOURDIEU:  UNA VISIÓN DESDE LA APLICACIÓN DEL MÉTODO SOCIOHISTÓRICO', 'En proceso de arbitraje', '2016-05-19 18:03:24', '2016-05-19 22:33:24'),
(294, 27, 'Bárbula', 4, 'Presentación oral', 'UNA VEZ OBTENIDO EL GRADO ACADÉMICO ¿SON ÚTILES LA TESIS Y LOS TRABAJOS DE GRADO?', 'En proceso de arbitraje', '2016-05-19 18:24:22', '2016-05-19 22:54:22'),
(295, 27, 'Bárbula', 7, 'Presentación oral', 'EL TRABAJO COMO PROCESO SOCIAL: UNA MIRADA A LA LABOR DEL DOCENTE UNIVERSITARIO EN VENEZUELA', 'En proceso de arbitraje', '2016-05-19 19:40:05', '2016-05-20 00:10:05'),
(296, 214, 'Bárbula', 12, 'Presentación oral', 'Contenidos noemáticos de mujeres mastectomizadas: afrontamiento y convivencia', 'En proceso de arbitraje', '2016-05-19 19:46:39', '2016-05-20 00:16:39'),
(301, 61, 'Bárbula', 2, 'Presentación oral', 'Prueba Hector', 'En proceso de arbitraje', '2016-05-19 21:45:00', '2016-05-20 02:15:00'),
(302, 165, 'La Morita', 10, 'Carteles', 'RESPONSABILIDAD SOCIAL EMPRESARIAL INTERNA PARTIENDO DEL AMBIENTE DE CONTROL BASADO EN COSO. CASO: ORGANIZACIONES PROVEEDORAS DE ALIMENTOS D', 'En proceso de arbitraje', '2016-05-19 21:51:51', '2016-05-20 02:21:51'),
(305, 26, 'Bárbula', 4, 'Presentación oral', 'Certificación de saberes en universidades venezolanas ¿Una ventana para el reconocimiento a la investigación estudiantil?', 'En proceso de arbitraje', '2016-05-20 00:00:24', '2016-05-20 04:30:24'),
(306, 215, 'Bárbula', 1, 'Presentación oral', 'MODALIDADES  PARTICIPATIVAS Y SU INCIDENCIA EN EL  DESEMPEÑO DEL CONSEJO COMUNAL DE  BELLO MONTE DEL MUNICIPIO VALENCIA DEL ESTADO CARABOBO.', 'En proceso de arbitraje', '2016-05-20 09:10:40', '2016-05-20 13:40:40'),
(308, 216, 'Bárbula', 4, 'Simposios', 'Estrategias y Herramientas Didácticas en el Proceso de Aprendizaje.', 'Aprobado', '2016-05-20 10:01:36', '2016-05-20 17:04:37'),
(309, 210, 'Bárbula', 12, 'Simposios', 'Salud Mental como principio de la Salud Social', 'Aprobado', '2016-05-20 11:45:10', '2016-05-20 17:22:32'),
(310, 217, 'Bárbula', 10, 'Carteles', 'RESPONSABILIDAD SOCIAL EMPRESARIAL: ESTRATEGIA ORGANIZACIONAL ENFOCADA EN LO HUMANO', 'En proceso de arbitraje', '2016-05-20 11:56:44', '2016-05-20 16:26:44'),
(311, 135, 'Bárbula', 7, 'Presentación oral', 'DE SEGURIDAD Y  SALUD EN EL TRABAJO A PREVENCIÓN DE RIESGOS LABORALES EN VENEZUELA.', 'En proceso de arbitraje', '2016-05-20 13:51:47', '2016-05-20 18:21:47'),
(312, 219, 'La Morita', 4, 'Presentación oral', 'ERRORES QUE COMETEN LOS ALUMNOS CUANDO REALIZAN CIERTAS TAREAS DE ÁLGEBRA', 'En proceso de arbitraje', '2016-05-20 17:51:51', '2016-05-20 22:21:51'),
(313, 161, 'Bárbula', 13, 'Carteles', 'CONSTITUCIÓN DE LA REPÚBLICA BOLIVARIANA DE VENEZUELA: VISIÓN DE PERTENENCIA', 'En proceso de arbitraje', '2016-05-20 18:04:43', '2016-05-20 22:34:43'),
(317, 206, 'Bárbula', 4, 'Carteles', 'Escuela de Formación Integral en Acuicultura: Alternativa para Promover  la Acuicultura continental sustentable en Venezuela', 'En proceso de arbitraje', '2016-05-21 03:37:04', '2016-05-21 08:07:04'),
(318, 124, 'Bárbula', 8, 'Simposios', '“SEGUNDO SIMPOSIO TURISMO E INDUSTRIA: LLAVE PARA LA DIVERSIFICACIÓN ECONÓMICA Y EL DESARROLLO SUSTENTABLE DE LA VENEZUELA DEL SIGLO XXI”', 'Aprobado', '2016-05-21 06:22:42', '2016-05-21 12:25:21'),
(319, 112, 'La Morita', 13, 'Presentación oral', 'La Responsabilidad Social. Una mirada desde la dimensión ambiental', 'En proceso de arbitraje', '2016-05-21 10:04:04', '2016-05-21 14:34:04'),
(320, 224, 'La Morita', 2, 'Presentación oral', 'ACCIONES DE RESPONSABILIDAD SOCIAL AMBIENTAL QUE DEBEN IMPLEMENTAR EMPRESAS MINERAS PARA DISMINUIR IMPACTO DE ACTIVIDADES ILÍCITAS EN PARQUE', 'En proceso de arbitraje', '2016-05-21 10:06:18', '2016-05-21 14:36:18'),
(322, 43, 'Bárbula', 1, 'Presentación oral', 'Una revisión bibliográfica del origen de las economías de aglomeración y su aporte para la generación de spillovers de conocimientos', 'En proceso de arbitraje', '2016-05-21 10:43:33', '2016-05-21 15:13:33'),
(323, 225, 'La Morita', 6, 'Presentación oral', 'Cyborgs: nuevos cuerpos, nuevas realidades... una nueva mirada a la Discapacidad', 'En proceso de arbitraje', '2016-05-21 11:20:14', '2016-05-21 15:50:14'),
(324, 227, 'Bárbula', 4, 'Presentación oral', 'Perceptiva critico Interpretativa de la Educación Superior en el mundo global', 'En proceso de arbitraje', '2016-05-21 12:46:47', '2016-05-21 17:16:47'),
(325, 227, 'Bárbula', 13, 'Presentación oral', 'Paradigmas Administrativos en las Ciencias Sociales', 'En proceso de arbitraje', '2016-05-21 12:53:46', '2016-05-21 17:23:46'),
(326, 228, 'Bárbula', 14, 'Carteles', 'NUEVAS TECNOLOGÍAS DE INFORMACIÓN Y COMUNICACIÓN EN LA ASIGNATURA CÁLCULO FINANCIERO DE LA FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES', 'En proceso de arbitraje', '2016-05-21 13:04:05', '2016-05-21 17:34:05'),
(327, 221, 'La Morita', 7, 'Simposios', 'Simposio: Salud, Trabajo y Seguridad Social en Sectores Vulnerables', 'En proceso de arbitraje', '2016-05-21 15:07:21', '2016-05-21 19:37:21'),
(328, 229, 'Bárbula', 4, 'Presentación oral', 'ANALISIS CRITICO DE LA APLICACIÓN DEL POSITIVISMO EN LA UNIVERSIDAD Y SU FORMACION PROFESIONAL', 'En proceso de arbitraje', '2016-05-21 15:15:25', '2016-05-21 19:45:25'),
(329, 229, 'Bárbula', 7, 'Presentación oral', 'TRABAJO COMO  RAZÓN EPISTEMOLÓGICA QUE DA SOPORTE A LA NOCIÓN DE TRABAJO CLÁSICO, DESDE LA PERSPECTIVA DE LOS ACTORES SOCIALES', 'En proceso de arbitraje', '2016-05-21 15:18:59', '2016-05-21 19:48:59'),
(330, 232, 'Bárbula', 8, 'Presentación oral', 'MARKETING INTERNO: UNA VISIÓN PARADIGMÁTICA PARA EL DESARROLLO GERENCIAL EN EMPRESAS DE SERVICIOS', 'En proceso de arbitraje', '2016-05-21 17:24:20', '2016-05-21 21:54:20'),
(331, 64, 'Bárbula', 2, 'Presentación oral', 'TRANSICIÓN DE JARDÍN DE PALMAS A PALMETUM UNIVERSIDAD DE CARABOBO. UN ANÁLISIS DESDE LA SUSTENTABILIDAD Y LA GERENCIA ESTRATÉGICA', 'En proceso de arbitraje', '2016-05-21 17:49:00', '2016-05-21 22:19:00'),
(332, 120, 'Bárbula', 13, 'Simposios', 'La Comunicación Social en el marco del Encuentro de Saberes', 'Aprobado', '2016-05-21 19:16:37', '2016-05-22 01:56:25'),
(333, 120, 'Bárbula', 8, 'Simposios', 'La Administración en el marco del Encuentro de Saberes', 'Aprobado', '2016-05-21 19:18:56', '2016-05-22 02:03:59'),
(334, 120, 'Bárbula', 13, 'Simposios', 'La Psicología en el marco del Encuentro de Saberes', 'Aprobado', '2016-05-21 19:20:02', '2016-05-22 00:39:16'),
(335, 233, 'Bárbula', 14, 'Presentación oral', 'Competencias de los Docentes Universitarios en el uso de las Nuevas Tecnologías en Faces', 'En proceso de arbitraje', '2016-05-21 19:49:33', '2016-05-22 00:19:34'),
(336, 234, 'Bárbula', 12, 'Presentación oral', 'Factores predisponentes para adenocarcinoma colorectal en pacientes que acudieron a un hospital oncológico de referencia', 'En proceso de arbitraje', '2016-05-21 20:13:57', '2016-05-22 00:43:57'),
(337, 77, 'Bárbula', 1, 'Simposios', 'Responsabilidad Social: perspectivas y alcances', 'En proceso de arbitraje', '2016-05-21 20:36:05', '2016-05-22 01:06:05'),
(338, 125, 'Bárbula', 11, 'Carteles', 'LA NORMATIVA QUE REGULA A LOS FUNCIONARIOS PÚBLICOS DE LOS MUNICIPIOS EN MATERIA DE ADMINISTRACIÓN DE PERSONAL', 'En proceso de arbitraje', '2016-05-21 21:21:25', '2016-05-22 01:51:25'),
(339, 237, 'La Morita', 12, 'Simposios', 'ENFERMEDADES TROPICALES  EN VENEZUELA. UNA MIRADA DESDE EL ENFOQUE DE ECOSALUD', 'En proceso de arbitraje', '2016-05-21 22:22:28', '2016-05-22 02:52:28'),
(340, 214, 'Bárbula', 12, 'Presentación oral', 'Aproximación a la cotidianidad de la comunicación del médico y el paciente con cancer', 'En proceso de arbitraje', '2016-05-21 22:23:37', '2016-05-22 02:53:37'),
(341, 204, 'Bárbula', 13, 'Presentación oral', 'LOS INVESTIGADORES: COMO PERSONAS Y COMO GRUPOS. LA REFLEXIÓN EN LA EJECUCIÓN', 'En proceso de arbitraje', '2016-05-22 01:47:35', '2016-05-22 06:17:35'),
(342, 230, 'Bárbula', 4, 'Carteles', 'LA AUDITORÍA DE GESTIÓN COMO HERRAMIENTA DE APOYO EN LA BÚSQUEDA DE LA PERTINENCIA SOCIAL DE LA EDUCACIÓN SUPERIOR.', 'En proceso de arbitraje', '2016-05-22 04:52:56', '2016-05-22 09:22:56'),
(343, 237, 'La Morita', 12, 'Simposios', 'ENFERMEDADES TROPICALES  EN VENEZUELA. UNA MIRADA DESDE EL ENFOQUE DE ECOSALUD. CV1', 'En proceso de arbitraje', '2016-05-22 08:36:10', '2016-05-22 13:06:10'),
(344, 237, 'La Morita', 12, 'Simposios', 'ENFERMEDADES TROPICALES  EN VENEZUELA. UNA MIRADA DESDE EL ENFOQUE DE ECOSALUD. CV2', 'En proceso de arbitraje', '2016-05-22 08:36:47', '2016-05-22 13:06:47'),
(345, 28, 'La Morita', 4, 'Presentación oral', 'LA ECOFORMACIÓN: HACIA LA CONSTRUCCIÓN DE SOCIEDADES SUSTENTABLES', 'En proceso de arbitraje', '2016-05-22 08:38:00', '2016-05-22 13:08:00'),
(346, 238, 'Bárbula', 5, 'Carteles', 'PROPUESTA DE UN INSTRUCTIVO PARA LA APLICACION DE LAS VEN NIF PYMES EN LA ELABORACION Y PRESENTACION DE LOS ESTADOS FINANCIEROS DE LA EMPRES', 'En proceso de arbitraje', '2016-05-22 08:44:57', '2016-05-22 13:14:57'),
(347, 39, 'La Morita', 4, 'Carteles', 'Competencia Profesional que Debe Poseer el Licenciado en Contaduria Publica en el Desempeño de la Auditoria Interna', 'En proceso de arbitraje', '2016-05-22 09:55:51', '2016-05-22 14:25:51'),
(348, 239, 'Bárbula', 7, 'Presentación oral', 'La importancia de los principios normativos internacionales del trabajo como fuente condicionante de las relaciones de trabajo.', 'En proceso de arbitraje', '2016-05-22 10:01:15', '2016-05-22 14:31:15'),
(349, 240, 'Bárbula', 4, 'Presentación oral', 'PRODUCIR, PUBLICAR Y SOCIALIZAR EL CONOCIMIENTO', 'En proceso de arbitraje', '2016-05-22 10:20:11', '2016-05-22 14:50:11'),
(350, 241, 'La Morita', 4, 'Presentación oral', 'OBSTACULOS Y ERRORES  EN TORNO A LA DESCOMPOSICIÓN GENÉTICA DE LA  DIVISION POLINÓMICA DE LOS ESTUDIANTES DE SEGUNDO AÑO COMO FUNDAMENTACIÓN', 'En proceso de arbitraje', '2016-05-22 11:02:40', '2016-05-22 15:32:40'),
(352, 107, 'Bárbula', 10, 'Presentación oral', 'LA EXTENSIÓN UNIVERSITARIA DESDE UN ENFOQUE BIO-ECO-ÉTICO-SOCIAL: EL DIÁLOGO ENTRE EL CONOCMIENTO CIENTÍFICO Y LOS SABERES POPULARES', 'Rechazado', '2016-05-22 11:41:31', '2016-05-22 16:43:44'),
(353, 244, 'Bárbula', 13, 'Presentación oral', 'COMUNICACIÓN PARA EL DESARROLLO EN LA COBERTURA DE LA TELEVISIÓN VENEZOLANA. CASO: NOTICIERO VENEVISIÓN', 'En proceso de arbitraje', '2016-05-22 14:51:26', '2016-05-22 19:21:26'),
(354, 246, 'Bárbula', 4, 'Simposios', 'GESTION DEL AREA ESTADISTICA EN LOS PROFESIONALES DE ADMINISTRACION COMERCIAL Y CONTADURIA PUBLICA', 'Aprobado', '2016-05-22 14:55:54', '2016-05-24 00:34:59'),
(355, 245, 'Bárbula', 12, 'Carteles', 'FACTORES DE RIESGO PRESENTES EN  PACIENTES CON SEPSIS NEONATAL PRECOZ  ATENDIDOS EN EL SERVICIO DE NEONATOLOGIA DE UN HOSPITAL', 'En proceso de arbitraje', '2016-05-22 14:56:57', '2016-05-22 19:26:57'),
(356, 247, 'Bárbula', 14, 'Presentación oral', 'ETHOS REVISTA DIGITAL INTERACTIVA PARA LA UNIVERSIDAD ARTURO MICHELENA', 'En proceso de arbitraje', '2016-05-22 14:59:34', '2016-05-22 19:29:34'),
(357, 247, 'Bárbula', 14, 'Presentación oral', 'ETHOS REVISTA DIGITAL INTERACTIVA PARA LA UNIVERSIDAD ARTURO MICHELENA.', 'En proceso de arbitraje', '2016-05-22 15:12:16', '2016-05-22 19:42:16'),
(358, 248, 'La Morita', 2, 'Carteles', '“BIOERA; CONCIENCIA ECOLÓGICA SISTÉMICA” MODELO DE GESTIÓN AMBIENTAL UNIVERSITARIO', 'En proceso de arbitraje', '2016-05-22 15:19:01', '2016-05-22 19:49:01'),
(359, 127, 'Bárbula', 4, 'Presentación oral', 'Revisión Sistemática en Ciencias Humanas y del Comportamiento, Investigación de Investigaciones o Cuando los Hallazgos son la Data', 'En proceso de arbitraje', '2016-05-22 16:23:48', '2016-05-22 20:53:48'),
(360, 43, 'Bárbula', 1, 'Presentación oral', 'Una revisión bibliográfica desde los aportes Marshallianos  hasta la teoría de los distritos industriales: una visión crítica', 'En proceso de arbitraje', '2016-05-22 16:33:50', '2016-05-22 21:03:50'),
(361, 119, 'Bárbula', 7, 'Presentación oral', 'EL MÉTODO SOCIO HISTÓRICO DE COMPRENSIÓN DE LA TEORÍA SOCIAL DE WILHELM WUNDT SOBRE  NEUROCIENCIA DE LA CONDUCTA', 'En proceso de arbitraje', '2016-05-22 16:35:38', '2016-05-22 21:05:38'),
(362, 119, 'Bárbula', 7, 'Presentación oral', 'REFLEXIONES SOBRE EL  EMPRENDIMIENTO EN EL MARCO DEL TRABAJO CLASICO Y NO CLASICO', 'En proceso de arbitraje', '2016-05-22 16:36:33', '2016-05-22 21:06:33'),
(363, 119, 'Bárbula', 7, 'Presentación oral', 'ESTUDIO SOBRE EDUCACIÓN EN EL TRABAJO PARA LA GESTIÓN PREVENTIVA Y SU INFLUENCIA EN DESARROLLO SOCIAL', 'En proceso de arbitraje', '2016-05-22 16:37:24', '2016-05-22 21:07:24'),
(364, 249, 'Bárbula', 13, 'Presentación oral', 'ENTREVISTA DE SEMBLANZA COMO ADAPTACIÓN DE HISTORIAS DE VIDA EN RADIO. CASO: LOS IMPOSIBLES, CONDUCIDO POR LEONARDO PADRÓN', 'En proceso de arbitraje', '2016-05-22 16:42:19', '2016-05-22 21:12:19'),
(365, 4, 'Bárbula', 8, 'Presentación oral', 'ESTRATEGIAS GERENCIALES ORIENTADAS A LA GESTIÓN DE CALIDAD DE SERVICIO EN LA FUNDACION UNIVERSIDAD DE CARABOBO, SEDE VALENCIA', 'En proceso de arbitraje', '2016-05-22 17:01:43', '2016-05-22 21:31:43'),
(366, 250, 'La Morita', 3, 'Presentación oral', 'PROCESO PARA LA ADQUISICIÓN DE MATERIAS PRIMAS DE IMPORTACIÓN EN LAS EMPRESAS DEL SECTOR PAPELERO DEL ESTADO ARAGUA', 'En proceso de arbitraje', '2016-05-22 17:29:23', '2016-05-22 21:59:23'),
(367, 77, 'Bárbula', 7, 'Presentación oral', 'TRABAJO DECENTE: INSTRUMENTO PARA LA REINSTITUCIONALIZACIÓN DEL FUERO LABORAL UNIVERSITARIO.', 'En proceso de arbitraje', '2016-05-22 18:07:39', '2016-05-22 22:37:39'),
(368, 220, 'Bárbula', 5, 'Presentación oral', 'DISEÑO DE UNA GUÍA DE ORIENTACIÓN DE LOS DEBERES LEGALES, TRIBUTARIOS Y FINANCIEROS MAS COMUNES EN LAS ORGANIZACIONES', 'En proceso de arbitraje', '2016-05-22 18:39:46', '2016-05-22 23:09:46'),
(370, 251, 'La Morita', 11, 'Carteles', 'CALIDAD LOGÍSTICA EN UN HOSPITAL DEL INSTITUTO VENEZOLANO DE LOS SEGUROS SOCIALES', 'En proceso de arbitraje', '2016-05-22 18:48:02', '2016-05-22 23:18:02'),
(371, 253, 'Bárbula', 13, 'Presentación oral', 'RETRATO DE LA VIOLENCIA POLÍTICA EN VENEZUELA: HISTORIAS DE VIDA DE AMÉRICO MARTÍN, JESÚS HERMOSO Y ROSA OROZCO', 'En proceso de arbitraje', '2016-05-22 18:50:06', '2016-05-22 23:20:06'),
(372, 254, 'La Morita', 3, 'Presentación oral', 'Importancia de la Planificación Financiera para PYMES', 'En proceso de arbitraje', '2016-05-22 18:56:12', '2016-05-22 23:26:12'),
(373, 141, 'Bárbula', 14, 'Carteles', '“FACTORES MODULADORES DE LA PERCEPCIÓN DEL COLOR DENTAL CON MÉTODOS OBJETIVOS Y SUBJETIVOS".', 'En proceso de arbitraje', '2016-05-22 18:58:46', '2016-05-22 23:28:46'),
(374, 168, 'La Morita', 8, 'Presentación oral', 'La Gestiòn de Emprender centrada en el Individuo', 'En proceso de arbitraje', '2016-05-22 19:12:48', '2016-05-22 23:42:48'),
(375, 193, 'Bárbula', 6, 'Simposios', 'De la visibilidad hacia la invisibilidad de la discapacidad', 'Aprobado', '2016-05-22 19:14:15', '2016-05-24 00:46:22'),
(376, 256, 'La Morita', 12, 'Presentación oral', 'EL FEMINICIDIO EN LA INVESTIGACIÓN CRIMINAL. LO CONCEPTUAL Y LO INVESTIGATIVO DE UNA REALIDAD SOCIAL INVISIBILIZADA', 'En proceso de arbitraje', '2016-05-22 19:16:29', '2016-05-22 23:46:29'),
(377, 30, 'La Morita', 3, 'Carteles', 'LA CULTURA INVERSIONISTA EN EL PERFIL DE LOS DOCENTES UNIVERSITARIOS', 'En proceso de arbitraje', '2016-05-22 19:35:18', '2016-05-23 00:05:18');
INSERT INTO `works` (`id`, `user_id`, `campus`, `area_id`, `modality`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(379, 257, 'Bárbula', 5, 'Presentación oral', 'Propuesta de mejoras en el sistema de cuentas para la elaboracion de un ecobalance en organizaciones industriales del sector licorero', 'En proceso de arbitraje', '2016-05-22 19:54:11', '2016-05-23 00:24:11'),
(380, 195, 'Bárbula', 12, 'Carteles', 'Condiciones de almacenamiento y/o desecho de fármaco en los Núcleos Familiares de la Parroquia San José, Municipio Valencia,Carabobo', 'En proceso de arbitraje', '2016-05-22 20:11:44', '2016-05-23 00:41:44'),
(381, 255, 'Bárbula', 13, 'Presentación oral', 'ALGUNAS CONSIDERACIONES SOBRE EL DETERIORO DE LAS RELACIONES DE TRABAJO EN LA VENEZUELA ACTUAL', 'En proceso de arbitraje', '2016-05-22 20:16:37', '2016-05-23 00:46:37'),
(382, 81, 'Bárbula', 7, 'Simposios', 'TICS y la Gestión de las Personas en la Organización', 'Aprobado', '2016-05-22 20:28:58', '2016-05-23 01:21:31'),
(383, 5, 'Bárbula', 14, 'Presentación oral', 'Brecha digital: una mirada desde la Escuela de Administración Comercial y Contaduría Pública de la Universidad de Carabobo', 'En proceso de arbitraje', '2016-05-22 20:33:50', '2016-05-23 01:03:50'),
(384, 260, 'Bárbula', 6, 'Presentación oral', 'LA INCLUSIÓN SOCIAL DESDE LA INTEGRACIÓN FAMILIA-ESCUELA-COMUNIDAD PARA LA PARTICIPACIÓN PROTAGÓNICA DE NIÑOS Y ADOLESCENTES CON NECESIDADES', 'En proceso de arbitraje', '2016-05-22 20:42:17', '2016-05-23 01:12:17'),
(387, 242, 'La Morita', 3, 'Carteles', 'ANALISIS DE PROCESOS INTERNOS, BAJO ENFOQUE DE BALANCED SCORE CARD, PARA MEJORAMIENTO ADMINISTRATIVO EN EMPRESA AVIPOR C.A, UBICADA EDO ARAG', 'En proceso de arbitraje', '2016-05-22 21:13:07', '2016-05-23 01:43:07'),
(393, 235, 'Bárbula', 7, 'Presentación oral', '" El bachaqueo" ¿Una actividad laboral?', 'En proceso de arbitraje', '2016-05-22 21:30:00', '2016-05-23 02:00:00'),
(394, 235, 'Bárbula', 7, 'Presentación oral', 'EL TRABAJO COMO INVENCIÓN MODERNA PRODUCTO DE LA REVOLUCIÓN TECNOLÓGICA', 'En proceso de arbitraje', '2016-05-22 21:33:49', '2016-05-23 02:03:49'),
(395, 261, 'La Morita', 12, 'Presentación oral', 'PARA INVESTIGAR EL MALESTAR DOCENTE  EN EDUCACIÓN INICIAL Y UNIVERSITARIA', 'En proceso de arbitraje', '2016-05-22 21:47:21', '2016-05-23 02:17:21'),
(396, 262, 'Bárbula', 7, 'Presentación oral', 'LA INSPECCIÓN DEL TRABAJO, EL TRABAJO DECENTE Y EL DIALOGO SOCIAL.', 'En proceso de arbitraje', '2016-05-22 22:03:43', '2016-05-23 02:33:43'),
(397, 129, 'La Morita', 12, 'Carteles', 'CULTURA PREVENTIVA Y  PERCEPCIÓN DE  RIESGOS LABORALES. UNA  MIRADA DESDE LOS TRABAJADORES DE UNA EMPRESA AGROQUIMICA', 'En proceso de arbitraje', '2016-05-22 22:25:16', '2016-05-23 02:55:16'),
(398, 243, 'Bárbula', 7, 'Presentación oral', 'Documental "Voces de febrero: historias de una madre"', 'En proceso de arbitraje', '2016-05-22 22:35:22', '2016-05-23 03:05:22'),
(399, 263, 'Bárbula', 7, 'Presentación oral', 'Documental divulgativo televisivo "Rostros del periodismo de investigación en Venezuela"', 'En proceso de arbitraje', '2016-05-22 22:39:14', '2016-05-23 03:09:14'),
(401, 264, 'Bárbula', 2, 'Presentación oral', 'PROPUESTA DE RESPONSABILIDAD SOCIAL PARA EMPRESAS DEL SECTOR DE SERVICIOS DE ASESORÍAS VENEZOLANO', 'En proceso de arbitraje', '2016-05-22 22:52:03', '2016-05-23 03:22:03'),
(402, 248, 'La Morita', 2, 'Presentación oral', 'LA GESTIÓN MEDIOAMBIENTAL DENTRO DE LA UNIVERSIDAD, UNA PERSPECTIVA DE ANALISIS Y EVALUACION', 'En proceso de arbitraje', '2016-05-22 22:56:31', '2016-05-23 03:26:31'),
(403, 264, 'Bárbula', 11, 'Presentación oral', 'Participación Ciudadana Una alternativa en la formulación de Políticas Públicas Municipales para la Juventud', 'En proceso de arbitraje', '2016-05-22 23:04:58', '2016-05-23 03:34:58'),
(404, 266, 'Bárbula', 8, 'Presentación oral', 'Desempeño laboral del docente universitario en instituciones de salud: evaluación cuantitativa vs evaluación cualitativa', 'En proceso de arbitraje', '2016-05-22 23:06:46', '2016-05-23 03:36:46'),
(405, 81, 'Bárbula', 7, 'Presentación oral', 'La relaciòn educaciòn y trabajo desde la perspectiva de  la formaciòn y el empleo', 'En proceso de arbitraje', '2016-05-22 23:08:49', '2016-05-23 03:38:49'),
(406, 34, 'Bárbula', 7, 'Presentación oral', 'Racionamiento Eléctrico: Trastorno del sueño rendimiento laboral y la calidad de vida', 'En proceso de arbitraje', '2016-05-22 23:15:54', '2016-05-23 03:45:54'),
(407, 81, 'Bárbula', 7, 'Presentación oral', 'Trabajo Sociedad y Estado', 'En proceso de arbitraje', '2016-05-22 23:16:54', '2016-05-23 03:46:54'),
(408, 267, 'Bárbula', 10, 'Presentación oral', 'GESTIÓN DE LA RESPONSABILIDAD SOCIAL BAJO LOS PRINCIPIOS DEL PACTO GLOBAL', 'En proceso de arbitraje', '2016-05-22 23:32:40', '2016-05-23 04:02:40'),
(409, 268, 'Bárbula', 4, 'Presentación oral', 'Representaciones sociales y experiencias de aprendizaje  de la asignatura Matemática I  en estudiantes del turno de la noche', 'En proceso de arbitraje', '2016-05-22 23:47:34', '2016-05-23 04:17:34'),
(410, 196, 'La Morita', 14, 'Presentación oral', 'PROGRAMACION LINEAL APLICADA A LA INGENIERIA DE PROCESOS INDUSTRIALES EN UN AMBIENTE TECNOLOGICAMENTE MEDIADO', 'En proceso de arbitraje', '2016-05-22 23:50:00', '2016-05-23 04:20:00'),
(411, 269, 'Bárbula', 2, 'Presentación oral', 'LA CRISIS DEL AGUA: ENTRE ACCESO Y POTABILIDAD', 'En proceso de arbitraje', '2016-05-22 23:54:40', '2016-05-23 04:24:40'),
(412, 269, 'Bárbula', 10, 'Presentación oral', 'UN AMBIENTE  ORGANIZACIONAL  PARA LA  INNOVACIÓN', 'En proceso de arbitraje', '2016-05-22 23:56:35', '2016-05-23 04:26:35'),
(413, 270, 'Bárbula', 8, 'Presentación oral', 'PRÁCTICAS GERENCIALES EN AMBIENTES CULTURALMENTE DIVERSOS', 'En proceso de arbitraje', '2016-05-23 00:06:04', '2016-05-23 04:36:04'),
(414, 271, 'Bárbula', 1, 'Carteles', 'Proceso histórico de la identidad urbana y arquitectónica en  Valencia – Venezuela, en el periodo de 1941 a 1958', 'En proceso de arbitraje', '2016-05-23 01:14:05', '2016-05-23 05:44:05'),
(415, 269, 'Bárbula', 2, 'Presentación oral', 'El uso sustentable del agua como resultado de la Innovación gerencial', 'En proceso de arbitraje', '2016-05-23 02:42:41', '2016-05-23 07:12:41'),
(416, 272, 'Bárbula', 10, 'Presentación oral', 'Ula Cerca de ti', 'En proceso de arbitraje', '2016-05-23 02:52:00', '2016-05-23 07:22:00'),
(417, 226, 'Bárbula', 11, 'Simposios', 'LA EDUCACIÓN EN VENEZUELA: LA COLECCIÓN BICENTENARIO EN EL BANQUILLO DE LOS ACUSADOS.', 'Aprobado', '2016-05-23 04:51:26', '2016-05-24 01:13:58'),
(418, 222, 'Bárbula', 4, 'Presentación oral', 'EL PRINCIPIO BIOÉTICO DE LA AUTONOMÍA, LA EDUCACIÓN BOLIVARIANA Y EL DESARROLLO SUSTENTABLE EN VENEZUELA', 'En proceso de arbitraje', '2016-05-23 05:27:12', '2016-05-23 09:57:12'),
(419, 124, 'Bárbula', 8, 'Presentación oral', 'POTENCIANDO EL TURISMO PORTEÑO: ESTRATEGIAS TURÍSTICAS PARA ISLA LARGA, ESTADO CARABOBO', 'En proceso de arbitraje', '2016-05-23 06:06:09', '2016-05-23 10:36:09'),
(420, 274, 'La Morita', 14, 'Presentación oral', 'Tutoría Virtual en el Contexto Universitario', 'En proceso de arbitraje', '2016-05-23 08:02:35', '2016-05-23 12:32:35'),
(421, 98, 'Bárbula', 4, 'Presentación oral', 'FORMACIÓN EN LAS CIENCIAS ECONÓMICAS Y SOCIALES ANTE EL RETO DE LA ADOPCIÓN A  LAS NORMAS  INTERNACIONALES DE INFORMACIÓN  FINANCIERA (caso:', 'En proceso de arbitraje', '2016-05-23 08:16:53', '2016-05-23 12:46:53'),
(424, 178, 'Bárbula', 8, 'Presentación oral', 'VINCULACIÓN SECTOR PRODUCTIVO-UNIVERSIDAD COMO ESTRATEGIA ORGANIZACIONAL PARA EL FORTALECIMIENTO INTERINSTITUCIONAL', 'En proceso de arbitraje', '2016-05-23 08:34:41', '2016-05-23 13:04:41'),
(425, 255, 'Bárbula', 13, 'Presentación oral', 'SIGNIFICADO DEL TRABAJO EN LA TRANSICIÓN DE LA ERA DE LA PROPIEDAD A LA ERA DEL ACCESO', 'En proceso de arbitraje', '2016-05-23 08:56:02', '2016-05-23 13:26:02'),
(426, 202, 'La Morita', 10, 'Carteles', 'IMPACTO EN LAS ORGANIZACIONES VENEZOLANAS AL APLICAR LA RESPONSABILIDAD SOCIAL EMPRESARIAL', 'En proceso de arbitraje', '2016-05-23 09:22:05', '2016-05-23 13:52:05'),
(427, 276, 'Bárbula', 1, 'Presentación oral', 'Estatolatria del Siglo XXI', 'En proceso de arbitraje', '2016-05-23 10:00:26', '2016-05-23 14:30:26'),
(428, 167, 'Bárbula', 8, 'Presentación oral', 'DE ESTUDIANTE A EMPRESARIO. UNA MIRADA AL EMPRENDEDOR JUVENIL EN EL MERCADO VENEZOLANO', 'En proceso de arbitraje', '2016-05-23 10:06:18', '2016-05-23 14:36:18'),
(429, 277, 'Bárbula', 4, 'Simposios', 'EL ESTUDIO DEL TALENTO HUMANO A TRAVES DE LAS COMPETENCIAS DEL GRUPO DE EMPRESA UNIVERSIDAD Y SOCIEDAD- GEUS-', 'Aprobado', '2016-05-23 10:09:44', '2016-05-24 16:20:51'),
(430, 265, 'Bárbula', 9, 'Presentación oral', 'IMAGINARIO SOCIO CULTURAL VENEZOLANO Y UNIVERSIDAD: UN RETO PARA LA REFLEXIÓN', 'En proceso de arbitraje', '2016-05-23 10:12:35', '2016-05-23 14:42:35'),
(431, 277, 'La Morita', 10, 'Simposios', 'Los Inventarios de Atractivos Turísticos y actividades recreativas  para el desarrollo comunitario de la parroquia Belisario Quevedo. Ecuado', 'En proceso de arbitraje', '2016-05-23 10:15:36', '2016-05-23 14:45:36'),
(433, 277, 'Bárbula', 10, 'Simposios', 'EL TURISMO COMUNITARIO  Y SUS POTENCIALIDADES: UN FACTOR DE GENERADOR DE BIENESTAR SOCIAL A TRAVES DE LAS REDES DE SERVICIO TURISTICO  EN LA', 'Aprobado', '2016-05-23 10:21:08', '2016-05-26 15:39:04'),
(434, 275, 'Bárbula', 9, 'Presentación oral', 'MIGRACIÓN, EDUCACIÓN Y COTIDIANIDAD ENTRE CHILE Y VENEZUELA', 'En proceso de arbitraje', '2016-05-23 10:44:39', '2016-05-23 15:14:39'),
(435, 275, 'Bárbula', 9, 'Presentación oral', 'HISTORIAS DE MIGRACIONES: EL EXILIO CHILENO', 'En proceso de arbitraje', '2016-05-23 10:46:44', '2016-05-23 15:16:44'),
(436, 275, 'Bárbula', 9, 'Presentación oral', 'EL CARÁCTER ANDROCÉNTRICO DE LA CIENCIA', 'En proceso de arbitraje', '2016-05-23 10:52:04', '2016-05-23 15:22:04'),
(437, 273, 'Bárbula', 4, 'Simposios', 'El Arte en la Educación: Sensibilización para el Pensamiento Crítico', 'En proceso de arbitraje', '2016-05-23 11:02:34', '2016-05-23 15:32:34'),
(438, 278, 'Bárbula', 5, 'Presentación oral', 'ANÁLISIS DE LA NATURALEZA FINANCIERA DE LOS INVENTARIOS DE MERCANCÍAS REGULADAS EN EL CONTEXTO ECONÓMICO VENEZOLANO', 'En proceso de arbitraje', '2016-05-23 11:17:25', '2016-05-23 15:47:25'),
(439, 278, 'Bárbula', 8, 'Simposios', 'ADMINISTRACIÓN Y CONTADURÍA: MEJORES PRÁCTICAS PROFESIONALES E INNOVACIÓN GERENCIAL.', 'Aprobado', '2016-05-23 11:26:53', '2016-05-24 01:42:08'),
(440, 71, 'Bárbula', 14, 'Presentación oral', 'ENTRE DESEO Y REALIDAD.', 'En proceso de arbitraje', '2016-05-23 11:27:15', '2016-05-23 15:57:15'),
(441, 3, 'Bárbula', 13, 'Presentación oral', 'Elementos discursivos sobre modernidad y postmodenidad', 'En proceso de arbitraje', '2016-05-23 11:29:21', '2016-05-23 15:59:21'),
(442, 280, 'Bárbula', 8, 'Carteles', 'La formación gerencial con pertinencia social', 'En proceso de arbitraje', '2016-05-23 11:38:11', '2016-05-23 16:08:11'),
(443, 203, 'Bárbula', 7, 'Presentación oral', 'Diálogo social, actores Laborales y relaciones laborales; Análisis sobre las condiciones que requiere el diálogo social para establecerse ex', 'En proceso de arbitraje', '2016-05-23 12:09:41', '2016-05-23 16:39:41'),
(444, 203, 'Bárbula', 7, 'Presentación oral', 'Diálogo social, actores Laborales y relaciones laborales.', 'En proceso de arbitraje', '2016-05-23 12:11:39', '2016-05-23 16:41:39'),
(446, 139, 'Bárbula', 2, 'Carteles', 'FRACTALIDAD HOLOGRAMÁTICA PARA EL DESARROLLO SUSTENTABLE: Parque Científico-Tecnológico Universidad Nacional Experimental Francisco de Miran', 'En proceso de arbitraje', '2016-05-23 16:18:54', '2016-05-23 20:48:54'),
(447, 102, 'La Morita', 1, 'Carteles', 'Concepción de la participación comunitaria mediante el pensamiento crítico según sus actores directos. Caso: Comuna Luchadores Falconianos p', 'En proceso de arbitraje', '2016-05-23 16:26:40', '2016-05-23 20:56:40'),
(448, 72, 'Bárbula', 8, 'Carteles', 'Modelo de Comunicación Interna en Servicios Asistenciales administrados por Asociaciones Civiles no lucrativas. Caso: Cruz Roja, Puerto Cabe', 'En proceso de arbitraje', '2016-05-23 16:31:07', '2016-05-23 21:01:07'),
(449, 63, 'Bárbula', 12, 'Presentación oral', 'DISPONIBILIDAD  DE LOS DERECHOS LABORALES DE LA MUJER DERIVADOS DE LA MATERNIDAD', 'En proceso de arbitraje', '2016-05-24 22:22:06', '2016-05-25 02:52:06');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT de la tabla `works`
--
ALTER TABLE `works`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=450;
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
