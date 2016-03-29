-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2016 a las 07:15:52
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `congreso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(140) NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `backusers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `campus` enum('Bárbula','La Morita') NOT NULL,
  `role_id` int(11) NOT NULL,
  `rememberToken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `backusers`
--

INSERT INTO `backusers` (`id`, `name`, `email`, `password`, `campus`, `role_id`, `rememberToken`, `createdAt`, `updatedAt`) VALUES
(1, 'Hector Flores', 'hecto932@gmail.com', '786bd9a52ee9af08db5c139b86cc60533ca1c7b6', 'Bárbula', 1, NULL, '2016-03-27 00:00:00', '2016-03-27 22:52:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `work_id`, `name`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 18, '3_LISTADO DE PARTICIPANTES EN EL TALLER formacion de proyecto.docx', 'DOCX', '2016-03-16 09:07:43', '2016-03-16 13:37:43'),
(2, 19, '3_Propuesta de Proyectos gestionable.docx', 'DOCX', '2016-03-16 09:08:13', '2016-03-16 13:38:13'),
(3, 20, '3_Listado CYTVEN 2015.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '2016-03-16 09:08:54', '2016-03-16 13:38:54'),
(4, 22, '12_Articulo DV&AS Congreso FacesUC.docx', 'DOCX', '2016-03-25 09:11:47', '2016-03-25 13:41:47'),
(5, 23, '12_Articulo DV,AS&TC Congreso FacesUC.docx', 'DOCX', '2016-03-25 10:55:09', '2016-03-25 15:25:09'),
(6, 24, '13_El docente como modelo de cuidado en la formación de enfermería.doc', 'DOC', '2016-03-25 15:56:39', '2016-03-25 20:26:39'),
(7, 25, '14_Articulo AS y DV Congreso FacesUC.doc', 'DOC', '2016-03-26 18:36:31', '2016-03-26 23:06:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `numberReference` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` enum('Por verificar','Conforme','No conforme') NOT NULL,
  `work_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `bank`, `numberReference`, `amount`, `status`, `work_id`, `createdAt`, `updatedAt`) VALUES
(11, 1, 'Banco de Venezuela', '12312323', '1950', 'Por verificar', 17, '2016-03-15 15:25:31', '2016-03-15 19:55:31'),
(12, 3, 'BOD', '2154555', '1950', 'Por verificar', 18, '2016-03-16 09:09:23', '2016-03-16 13:39:23'),
(13, 3, 'Banco de Venezuela', '22514455', '1950', 'Por verificar', 19, '2016-03-16 09:09:44', '2016-03-16 13:39:44'),
(14, 3, 'BOD', '1456565222', '1950', 'Por verificar', 20, '2016-03-16 09:10:12', '2016-03-16 13:40:12'),
(15, 3, 'BOD', '2131321', '750', 'Por verificar', 19, '2016-03-16 09:10:40', '2016-03-16 13:40:40'),
(16, 8, 'Banco Provincial', '98834765 ', '1950', 'Por verificar', 21, '2016-03-18 09:55:38', '2016-03-18 14:25:38'),
(17, 1, 'Banco BFC', '114446885151', '1950', 'Por verificar', 17, '2016-03-18 12:57:23', '2016-03-18 17:27:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(8, NULL, 'Valencia', 'Mònica', '20696082', '04144702846', 'mvalenci10@gmail.com', NULL, NULL, 'a4ce40c88633df2d934eb2d147507517bff86b9d', NULL, '2016-03-18 09:06:06', '2016-03-18 13:36:06'),
(9, '9_foto barlin.jpg', 'Olivares Campos', 'Barlin Orlando', '17799306', '+584243173568', 'barlinolivares@gmail.com', 'Universidad de Córdoba (España)', 'Doctorado en Agroalimentación', 'e1933306bb269ecc7b466a6cba27d57c901eebf2', NULL, '2016-03-18 12:16:56', '2016-03-18 16:46:56'),
(10, NULL, 'Ojeda Segovia', 'Juan José', '19.609.590', '(0416)-7662679 / (0414)-7438267', 'juanjoe.os@gmail.com', 'Universidad de Los Andes, Núcleo Universitario "Rafael Rangel", (ULA-NURR)', 'Escuela de Educación, Departamento de Ciencias Sociales, Área de Geografía ', 'd849d0de391c754302e7c9c4352f07ac450b4952', NULL, '2016-03-22 12:49:34', '2016-03-22 17:19:34'),
(11, '11_10632840_1645411025680922_925332899795459140_n.jpg', 'Calanchez Urribarri', 'Africa del Valle', '11454790', '04124277346', 'calanchezafrica@gmail.com', '', '', '3f261873ac0f8cc061ba9242fe27024bb8abb9af', NULL, '2016-03-24 20:54:11', '2016-03-25 01:24:11'),
(12, NULL, 'VERENZUELA BARROETA', 'DANIEL ANTONIO', '16658767', '04144905876', 'danielvb_cp@hotmail.com', NULL, NULL, '694965ac3d0e9b5e708567c149bc2953a5a89f7c', NULL, '2016-03-25 09:10:25', '2016-03-25 13:40:25'),
(13, NULL, 'Mejías', 'Marianela', '6322577', '04163336588', 'nelamejias@hotmail.com', 'Universidad de Carabobo', 'Enfermería', 'e865517978ea15a8277f52b2588a0d7f9267e0ae', NULL, '2016-03-25 15:55:21', '2016-03-25 20:25:21'),
(14, NULL, 'Salas Hernández', 'Adrián José', '16509162', '02435541447', 'ash3000_3@hotmail.com', NULL, NULL, '11b568a1a361946869d5795fc05f71e25d49620c', NULL, '2016-03-26 18:33:59', '2016-03-26 23:03:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campus` varchar(140) NOT NULL,
  `area_id` int(11) NOT NULL,
  `modality` varchar(140) NOT NULL,
  `title` varchar(140) NOT NULL,
  `status` enum('En proceso de arbitraje','Aprobado','Rechazado') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `works`
--

INSERT INTO `works` (`id`, `user_id`, `campus`, `area_id`, `modality`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(17, 1, 'Bárbula', 3, 'Presentación oral', 'Prueba', 'En proceso de arbitraje', '2016-03-15 10:13:12', '2016-03-15 14:43:12'),
(18, 3, 'Bárbula', 1, 'Presentación oral', 'AAAA', 'En proceso de arbitraje', '2016-03-16 09:07:43', '2016-03-16 13:37:43'),
(19, 3, 'La Morita', 8, 'Simposios', 'BBBB', 'En proceso de arbitraje', '2016-03-16 09:08:13', '2016-03-16 13:38:13'),
(20, 3, 'Bárbula', 6, 'Carteles', 'CCCCCCC', 'En proceso de arbitraje', '2016-03-16 09:08:54', '2016-03-16 13:38:54'),
(21, 8, 'Bárbula', 12, 'Presentación oral', 'INTERSUBJETIVIDAD ORIENTATIVA Nueva ética en la que la acción individual y el compromiso personal no estén desvinculados de los intereses co', 'En proceso de arbitraje', '2016-03-18 09:10:28', '2016-03-18 13:40:28'),
(22, 12, 'La Morita', 5, 'Carteles', 'Gestión de Costos en Industrias Manufactureras de Aluminio: Una experiencia venezolana', 'En proceso de arbitraje', '2016-03-25 09:11:47', '2016-03-25 13:41:47'),
(23, 12, 'La Morita', 8, 'Presentación oral', 'Aplicación de la Técnica 5S´s en una Industria Venezolana: Una Práctica de Mejora Continua y Reducción de Costos', 'En proceso de arbitraje', '2016-03-25 10:55:09', '2016-03-25 15:25:09'),
(24, 13, 'Bárbula', 4, 'Presentación oral', 'El docente como modelo de cuidado en la formación de enfermería', 'En proceso de arbitraje', '2016-03-25 15:56:39', '2016-03-25 20:26:39'),
(25, 14, 'La Morita', 7, 'Carteles', 'FACTORES DE SATISFACCIÓN LABORAL QUE INCIDEN EN EL  COMPROMISO ORGANIZACIONAL DE LOS ADMINISTRATIVOS DE LA GOBERNACIÓN DEL  ESTADO ARAGUA', 'En proceso de arbitraje', '2016-03-26 18:36:31', '2016-03-26 23:06:31');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_id` (`work_id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `work_id` (`work_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `backusers`
--
ALTER TABLE `backusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`);

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
