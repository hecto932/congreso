-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-04-2016 a las 09:17:20
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
(14, 35, '28_Congreso FACES 2016. Prof. Chapardi y Prof. García.pdf', 'PDF', '2016-04-17 20:51:26', '2016-04-18 01:21:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `bank`, `numberReference`, `amount`, `status`, `work_id`, `createdAt`, `updatedAt`) VALUES
(17, 17, 'Banco PROVINCIAL', '91123179', '1950', 'Por verificar', 27, '2016-04-12 09:53:45', '2016-04-12 14:23:45'),
(18, 8, 'Banco Provincial', '98834765', '1950', 'Por verificar', 33, '2016-04-15 09:15:11', '2016-04-15 13:45:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `image`, `lastName`, `name`, `ci`, `phone`, `email`, `university`, `school`, `password`, `rememberToken`, `createdAt`, `updatedAt`) VALUES
(1, '1_12801367_10207978302912102_3988103398511810362_n.jpg', 'Flores', 'Hector', '20162504', '04127762882', 'hecto932@gmail.com', 'SME', 'Ciencias de la Computación', '786bd9a52ee9af08db5c139b86cc60533ca1c7b6', NULL, '2016-03-15 10:19:09', '2016-03-15 14:49:09'),
(3, '3_IMG_7452.JPG', 'Aranguren Álvarez', 'Williams Jesús', '9119983', '04242619897', 'waranguren30@gmail.com', 'Universidad de Carabobo', 'ACCP', 'eba1f1b558f7a4855eac1936c2fd2659721c9569', NULL, '2016-03-15 19:07:01', '2016-03-15 23:37:01'),
(4, NULL, 'DEL CANTO', 'ERO', '16245882', '04144351279', 'edelcanto19@yahoo.es', NULL, NULL, '7c222fb2927d828af22f592134e8932480637c0d', NULL, '2016-03-14 20:09:33', '2016-03-15 00:39:33'),
(5, '5_IMG_20150723_213217.jpg', 'Cordero Borjas', 'Ana Emilia', '13323745', '04164490699', 'aecorder@gmail.com', NULL, NULL, 'ebacab3ca4a5e47d5e1c07bb59eb0406b9d7a799', NULL, '2016-03-14 21:22:32', '2016-03-15 01:52:32'),
(6, NULL, 'Inciarte', 'Angela', '16709913', '04246177778', 'asig31@gmail.com', NULL, NULL, 'd5c3268d393a2f50ba31e76766b0d95efb560da1', NULL, '2016-03-15 09:16:47', '2016-03-15 13:46:47'),
(7, NULL, 'Sarkis Bathani', 'Marlena', '10965197', '04168496266', 'makysagm@hotmail.com', NULL, NULL, '76c8364f6bfce83b86f1ea73eb6b69e5a9ad757e', NULL, '2016-03-17 15:25:53', '2016-03-17 19:55:53'),
(8, '8_MONICA FOTO.jpg', 'Valencia', 'Mònica', '20696082', '04144702846', 'mvalenci10@gmail.com', 'Universidad de Carabobo', 'mvalenci10@gmail.com', 'a4ce40c88633df2d934eb2d147507517bff86b9d', NULL, '2016-04-15 09:19:51', '2016-04-15 13:49:51'),
(9, '9_foto barlin.jpg', 'Olivares Campos', 'Barlin Orlando', '17799306', '+584243173568', 'barlinolivares@gmail.com', 'Universidad de Córdoba (España)', 'Doctorado en Agroalimentación', 'e1933306bb269ecc7b466a6cba27d57c901eebf2', NULL, '2016-03-18 12:16:56', '2016-03-18 16:46:56'),
(10, NULL, 'Ojeda Segovia', 'Juan José', '19.609.590', '(0416)-7662679 / (0414)-7438267', 'juanjoe.os@gmail.com', 'Universidad de Los Andes, Núcleo Universitario "Rafael Rangel", (ULA-NURR)', 'Escuela de Educación, Departamento de Ciencias Sociales, Área de Geografía ', 'd849d0de391c754302e7c9c4352f07ac450b4952', NULL, '2016-03-22 12:49:34', '2016-03-22 17:19:34'),
(11, '11_10632840_1645411025680922_925332899795459140_n.jpg', 'Calanchez Urribarri', 'Africa del Valle', '11454790', '04124277346', 'calanchezafrica@gmail.com', '', '', '3f261873ac0f8cc061ba9242fe27024bb8abb9af', NULL, '2016-03-24 20:54:11', '2016-03-25 01:24:11'),
(12, NULL, 'VERENZUELA BARROETA', 'DANIEL ANTONIO', '16658767', '04144905876', 'danielvb_cp@hotmail.com', NULL, NULL, '694965ac3d0e9b5e708567c149bc2953a5a89f7c', NULL, '2016-03-25 09:10:25', '2016-03-25 13:40:25'),
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
(29, NULL, 'Knuth Montes', 'Carla Cecilia', '12754829', '04266417490', 'carlaknuth@gmail.com', NULL, NULL, 'f2f28697720e0f6e9b5941df0ce2a210d8daeac3', NULL, '2016-04-17 23:22:00', '2016-04-18 03:52:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `works`
--

INSERT INTO `works` (`id`, `user_id`, `campus`, `area_id`, `modality`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(22, 12, 'La Morita', 5, 'Carteles', 'Gestión de Costos en Industrias Manufactureras de Aluminio: Una experiencia venezolana', 'En proceso de arbitraje', '2016-03-25 09:11:47', '2016-03-25 13:41:47'),
(23, 12, 'La Morita', 8, 'Presentación oral', 'Aplicación de la Técnica 5S´s en una Industria Venezolana: Una Práctica de Mejora Continua y Reducción de Costos', 'En proceso de arbitraje', '2016-03-25 10:55:09', '2016-03-25 15:25:09'),
(24, 13, 'Bárbula', 4, 'Presentación oral', 'El docente como modelo de cuidado en la formación de enfermería', 'En proceso de arbitraje', '2016-03-25 15:56:39', '2016-03-25 20:26:39'),
(25, 14, 'La Morita', 7, 'Carteles', 'FACTORES DE SATISFACCIÓN LABORAL QUE INCIDEN EN EL  COMPROMISO ORGANIZACIONAL DE LOS ADMINISTRATIVOS DE LA GOBERNACIÓN DEL  ESTADO ARAGUA', 'En proceso de arbitraje', '2016-03-26 18:36:31', '2016-03-26 23:06:31'),
(27, 17, 'Bárbula', 11, 'Presentación oral', 'GOBERNANZA Y GESTIÓN PÚBLICA:  UNA MIRADA REFLEXIVA AL CONTEXTO LOCAL VENEZOLANO', 'En proceso de arbitraje', '2016-04-01 09:36:41', '2016-04-01 14:06:41'),
(28, 18, 'Bárbula', 4, 'Simposios', 'Los Estudios Doctorales: Retos, Obstáculos y Desafios', 'En proceso de arbitraje', '2016-04-01 11:35:43', '2016-04-01 16:05:43'),
(29, 4, 'Bárbula', 8, 'Presentación oral', 'ESTRATEGIAS  DE LIDERAZGO QUE CONTRIBUYAN A MEJORAR LA COMPETITIVIDAD EN EL SECTOR PRODUCTIVO DE PASTEURIZADOS DEL ESTADO CARABOBO', 'En proceso de arbitraje', '2016-04-04 09:22:59', '2016-04-04 13:52:59'),
(30, 18, 'Bárbula', 4, 'Simposios', 'Principales Amenazas a los Estudios Doctorales: perspectivas de los participantes-estudiantes', 'En proceso de arbitraje', '2016-04-06 06:35:44', '2016-04-06 11:05:44'),
(31, 22, 'La Morita', 14, 'Presentación oral', 'CONTEXTUALIZACIÓN DE LOS AMBIENTES DIGITALES PARA LAS ENSEÑANZAS DE LAS COMPETENCIAS EDUCATIVAS', 'En proceso de arbitraje', '2016-04-07 10:33:39', '2016-04-07 15:03:39'),
(32, 4, 'Bárbula', 8, 'Presentación oral', 'PLANIFICACIÓN ESTRATÉGICA QUE PROMUEVA EL CRECIMIENTO EMPRESARIAL. (CASO: REPRESENTACIONES PEREA, C.A.  NAGUANAGUA, EDO. CARABOBO.)', 'En proceso de arbitraje', '2016-04-10 11:28:34', '2016-04-10 15:58:34'),
(33, 8, 'Bárbula', 12, 'Presentación oral', 'INTERSUBJETIVIDAD ORIENTATIVA Nueva ética en la que la acción individual y el compromiso personal no estén desvinculados de los intereses co', 'En proceso de arbitraje', '2016-04-15 09:11:20', '2016-04-15 13:41:20'),
(34, 10, 'Bárbula', 14, 'Presentación oral', 'Estrategias, medios y recursos instruccionales construidos mediante T.I.C. para el Sistema Educativo Bolivariano (S.E.B.): UNA CONTRIBUCIÓN ', 'En proceso de arbitraje', '2016-04-16 20:57:49', '2016-04-17 01:27:49'),
(35, 28, 'La Morita', 2, 'Carteles', 'Multidimensionalidad de las actitudes ambientalistas', 'En proceso de arbitraje', '2016-04-17 20:51:26', '2016-04-18 01:21:26');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `works`
--
ALTER TABLE `works`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
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
