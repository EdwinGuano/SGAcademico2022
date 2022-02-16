-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2022 a las 15:56:30
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `system_academic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `dni_al` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_al` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ape_al` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lnac_al` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fnac_al` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiposangre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tipogrado_id` bigint(20) UNSIGNED DEFAULT NULL,
  `especialidad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reparto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `id_user`, `dni_al`, `nom_al`, `ape_al`, `lnac_al`, `fnac_al`, `email`, `tiposangre_id`, `tipogrado_id`, `especialidad_id`, `reparto_id`, `created_at`, `updated_at`) VALUES
(36, 40, '7896541235', 'Anabel Pamela', 'Tite Aman', 'Quito', '2021-11-30', NULL, 2, 5, 3, 5, '2021-12-13 17:41:23', '2022-02-08 01:55:45'),
(37, 41, '1597532584', 'Sandra Elizabeth', 'Sanchez Carrasco', 'Lago Agrio', '2021-11-30', NULL, 1, 1, 1, 1, '2021-12-14 00:31:19', '2021-12-14 00:34:27'),
(38, 42, '7412589630', 'Juan Andres', 'Carrasco Alvarado', 'Quito', '2021-12-01', NULL, 1, 1, 1, 1, '2021-12-14 00:32:03', '2021-12-14 00:34:42'),
(39, 43, '7894561235', 'Sandra Anabel', 'Suarez Aman', 'quito', '2021-12-01', NULL, 1, 4, 1, 1, '2021-12-14 00:32:52', '2022-01-29 00:39:33'),
(40, 47, '1804777595', 'Edwin Vladimir', 'Guano Cunalata', 'Ambato', '2022-01-06', NULL, 1, 1, 3, 1, '2022-01-03 22:52:40', '2022-01-29 00:43:48'),
(46, 58, '1597521445', 'Edwin Andres', 'Sanz San', 'ssss', '2022-02-03', NULL, 3, 2, 2, 3, '2022-02-08 01:58:51', '2022-02-08 02:08:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignadocs`
--

CREATE TABLE `asignadocs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `docente_id` bigint(20) UNSIGNED NOT NULL,
  `periodo_id` bigint(20) UNSIGNED NOT NULL,
  `seccion_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `aula_id` bigint(20) UNSIGNED NOT NULL,
  `porcentaje_individual` decimal(6,2) NOT NULL,
  `porcentaje_grupal` decimal(6,2) NOT NULL,
  `porcentaje_actitudinal` decimal(6,2) NOT NULL,
  `estado` enum('Asignado','Planificado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignadocs`
--

INSERT INTO `asignadocs` (`id`, `docente_id`, `periodo_id`, `seccion_id`, `curso_id`, `materia_id`, `aula_id`, `porcentaje_individual`, `porcentaje_grupal`, `porcentaje_actitudinal`, `estado`, `created_at`, `updated_at`) VALUES
(55, 21, 12, 1, 1, 1, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-10 23:13:40', '2022-01-10 23:25:29'),
(56, 22, 12, 1, 1, 5, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-10 23:13:49', '2022-01-10 23:23:54'),
(57, 24, 11, 1, 4, 11, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-10 23:14:02', '2022-01-10 23:22:30'),
(58, 23, 11, 1, 4, 11, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-10 23:14:11', '2022-01-10 23:19:53'),
(59, 24, 4, 1, 5, 1, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-10 23:14:33', '2022-01-10 23:18:32'),
(60, 23, 4, 1, 5, 1, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-10 23:14:43', '2022-01-10 23:16:34'),
(61, 25, 11, 1, 4, 10, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-11 00:21:13', '2022-01-11 00:22:13'),
(62, 23, 4, 1, 5, 9, 1, '60.00', '30.00', '10.00', 'Planificado', '2022-01-11 02:27:10', '2022-01-11 02:28:02'),
(63, 23, 12, 1, 6, 2, 5, '60.00', '30.00', '10.00', 'Planificado', '2022-01-17 23:21:35', '2022-01-29 00:32:51'),
(65, 31, 12, 2, 1, 1, 1, '60.00', '30.00', '10.00', 'Asignado', '2022-01-29 00:53:57', '2022-01-29 00:53:57'),
(71, 32, 11, 1, 7, 2, 5, '70.00', '25.00', '5.00', 'Planificado', '2022-02-16 01:34:16', '2022-02-16 18:52:59'),
(72, 26, 4, 1, 1, 1, 1, '70.00', '25.00', '5.00', 'Asignado', '2022-02-16 18:55:17', '2022-02-16 18:55:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod_aul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_aul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id`, `cod_aul`, `num_aul`, `created_at`, `updated_at`) VALUES
(1, 'A0012', 'A1', '2021-09-30 01:10:12', '2022-01-21 01:02:40'),
(5, 'A002', 'A2', '2021-12-24 09:56:29', '2021-12-24 09:56:29'),
(6, 'A001', 'asa', '2021-12-25 01:37:08', '2021-12-25 01:37:08'),
(7, 'asas', 'asas', '2021-12-25 01:37:12', '2021-12-25 01:37:12'),
(8, 'asas', 'asas', '2021-12-25 01:37:16', '2021-12-25 01:37:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aux_promedio_curso`
--

CREATE TABLE `aux_promedio_curso` (
  `id` bigint(20) NOT NULL,
  `estudiante` varchar(250) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aux_promedio_curso`
--

INSERT INTO `aux_promedio_curso` (`id`, `estudiante`, `nota`) VALUES
(1, 'Anabel Pamela Tite Aman', 19),
(2, 'Juan Andres Carrasco Alvarado', 18),
(3, 'Sandra Anabel Suarez Aman', 17),
(4, 'Sandra Elizabeth Sanchez Carrasco', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod_cur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_cur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `narea_cur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhor_cur` int(11) NOT NULL,
  `ejecurso_id` bigint(20) UNSIGNED NOT NULL,
  `tipocurso_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `cod_cur`, `nom_cur`, `narea_cur`, `nhor_cur`, `ejecurso_id`, `tipocurso_id`, `created_at`, `updated_at`) VALUES
(1, 'A001', 'CURSO DE NAVEGACION AEREA', 'Sociales', 77, 1, 1, '2021-09-30 01:12:25', '2022-02-16 01:50:28'),
(4, 'A002', 'CURSO DE TRANSITO AÉREO', 'Sociales', 180, 1, 1, '2021-10-01 06:28:32', '2021-10-01 06:28:32'),
(5, 'A003', 'CURSO CONTROL DE SUPERFICIE DE AERODROMO', 'Sociales', 47, 1, 2, '2021-10-01 06:29:19', '2022-02-15 08:14:53'),
(6, 'A004', 'CURSO DE ADOCTRINAMIENTO EN EL TRABAJO', 'Sociales', 100, 1, 1, '2021-10-01 06:30:18', '2021-10-01 06:30:18'),
(7, 'A005', 'CURSO  SUPERVISORES DE AERODROMO', 'Sociales', 145, 1, 2, '2021-10-01 06:33:11', '2022-02-04 23:50:07'),
(8, '323', '323442', 'Sociales', 2424, 2, 2, '2022-01-21 01:05:44', '2022-01-21 01:05:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_materia`
--

CREATE TABLE `curso_materia` (
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `curso_materia`
--

INSERT INTO `curso_materia` (`materia_id`, `curso_id`) VALUES
(1, 1),
(5, 1),
(11, 4),
(10, 4),
(1, 5),
(9, 5),
(2, 6),
(3, 6),
(9, 6),
(11, 6),
(13, 7),
(5, 7),
(2, 7),
(1, 8),
(6, 8),
(3, 7),
(1, 7),
(4, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalplanevas`
--

CREATE TABLE `detalplanevas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipoact_acti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrip_detac` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poreva_detac` int(11) DEFAULT 0,
  `planeva_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalplanevas`
--

INSERT INTO `detalplanevas` (`id`, `tipoact_acti`, `descrip_detac`, `poreva_detac`, `planeva_id`, `created_at`, `updated_at`) VALUES
(151, 'Aporte actitudinal', 'Participación en clases', NULL, 143, '2022-01-10 23:15:36', '2022-01-10 23:15:36'),
(152, 'Aporte grupal', 'Talleres de conocimientos 1', NULL, 144, '2022-01-10 23:15:50', '2022-01-10 23:15:50'),
(153, 'Aporte grupal', 'Exposición \"Guerra del Cenepa\"', NULL, 145, '2022-01-10 23:16:09', '2022-01-10 23:16:09'),
(154, 'Aporte individual', 'Examen unidad Nro1', NULL, 146, '2022-01-10 23:16:21', '2022-01-10 23:16:21'),
(155, 'Aporte individual', 'Examen de unidades Finales', NULL, 147, '2022-01-10 23:16:31', '2022-01-10 23:16:31'),
(156, 'Aporte actitudinal', 'Participación en clases', NULL, 148, '2022-01-10 23:17:14', '2022-01-10 23:17:14'),
(157, 'Aporte grupal', 'Ensayo \"Historia de la Aviación\"', NULL, 149, '2022-01-10 23:17:26', '2022-01-10 23:17:26'),
(158, 'Aporte individual', 'Maqueta pista de aterrizaje', NULL, 150, '2022-01-10 23:17:49', '2022-01-10 23:17:49'),
(159, 'Aporte individual', 'Examen de unidades Finales', NULL, 151, '2022-01-10 23:18:03', '2022-01-10 23:18:03'),
(160, 'Aporte grupal', 'Exposición \"Partes del avion\"', NULL, 152, '2022-01-10 23:18:26', '2022-01-10 23:18:26'),
(161, 'Aporte actitudinal', 'Asistencia en Clases', NULL, 153, '2022-01-10 23:18:53', '2022-01-10 23:18:53'),
(162, 'Aporte grupal', 'Exposición \"Guerra del Cenepa\"', NULL, 154, '2022-01-10 23:19:06', '2022-01-10 23:19:06'),
(163, 'Aporte individual', 'Examen oral', NULL, 155, '2022-01-10 23:19:21', '2022-01-10 23:19:21'),
(164, 'Aporte grupal', 'Talleres de conocimientos 1', NULL, 156, '2022-01-10 23:19:34', '2022-01-10 23:19:34'),
(165, 'Aporte individual', 'Examen de unidades Finales', NULL, 157, '2022-01-10 23:19:51', '2022-01-10 23:19:51'),
(166, 'Aporte actitudinal', 'Participación en clases', NULL, 158, '2022-01-10 23:21:27', '2022-01-10 23:21:27'),
(167, 'Aporte individual', 'Examen oral', NULL, 159, '2022-01-10 23:21:41', '2022-01-10 23:21:41'),
(168, 'Aporte individual', 'Tarea 1', NULL, 160, '2022-01-10 23:21:59', '2022-01-10 23:21:59'),
(169, 'Aporte grupal', 'Exposición final grupal', NULL, 161, '2022-01-10 23:22:10', '2022-01-10 23:22:10'),
(170, 'Aporte grupal', 'Ensayo \"Historia de la Aviación\"', NULL, 162, '2022-01-10 23:22:25', '2022-01-10 23:22:25'),
(171, 'Aporte actitudinal', 'Participación en clases', NULL, 163, '2022-01-10 23:22:54', '2022-01-10 23:22:54'),
(172, 'Aporte individual', 'Examen unidad Nro1', NULL, 164, '2022-01-10 23:23:04', '2022-01-10 23:23:04'),
(173, 'Aporte individual', 'Ensayo \"Aerodromo\"', NULL, 165, '2022-01-10 23:23:26', '2022-01-10 23:23:26'),
(174, 'Aporte grupal', 'Exposición \"Pistas de aterrizaje\"', NULL, 166, '2022-01-10 23:23:50', '2022-01-10 23:23:50'),
(175, 'Aporte actitudinal', 'Asistencia en Clases', NULL, 167, '2022-01-10 23:24:06', '2022-01-10 23:24:06'),
(176, 'Aporte individual', 'Exposición \"Guerra del Cenepa\"', NULL, 168, '2022-01-10 23:24:39', '2022-01-10 23:24:39'),
(177, 'Aporte grupal', 'Taller de conocimiento 1', NULL, 169, '2022-01-10 23:25:00', '2022-01-10 23:25:00'),
(178, 'Aporte individual', 'Examen de unidades Finales', NULL, 170, '2022-01-10 23:25:14', '2022-01-10 23:25:14'),
(179, 'Aporte actitudinal', 'Asistencia', NULL, 171, '2022-01-11 00:21:38', '2022-01-11 00:21:38'),
(180, 'Aporte grupal', 'Exposición \"Guerra del cenepa\"', NULL, 172, '2022-01-11 00:21:46', '2022-01-11 00:21:46'),
(181, 'Aporte individual', 'Examen unidades', NULL, 173, '2022-01-11 00:22:09', '2022-01-11 00:22:09'),
(182, 'Aporte actitudinal', 'Participación en clases', NULL, 174, '2022-01-11 02:27:30', '2022-01-11 02:27:30'),
(183, 'Aporte individual', 'Leccion Oral', NULL, 175, '2022-01-11 02:27:47', '2022-01-11 02:27:47'),
(184, 'Aporte grupal', 'Exposición \"Aeródromos\"', NULL, 176, '2022-01-11 02:27:57', '2022-01-11 02:27:57'),
(185, 'Aporte actitudinal', 'Participación en clases', NULL, 177, '2022-01-17 23:26:21', '2022-01-17 23:26:21'),
(186, 'Aporte individual', 'Examen Unidad Nro1', NULL, 178, '2022-01-17 23:26:46', '2022-01-17 23:26:46'),
(188, 'Aporte grupal', 'afafs', NULL, 180, '2022-01-21 01:01:56', '2022-01-21 01:01:56'),
(191, 'Aporte individual', 'exemen', NULL, 183, '2022-02-16 18:51:51', '2022-02-16 18:51:51'),
(192, 'Aporte individual', 'examen final', NULL, 184, '2022-02-16 18:52:03', '2022-02-16 18:52:03'),
(193, 'Aporte grupal', 'ensayo', NULL, 185, '2022-02-16 18:52:22', '2022-02-16 18:52:22'),
(194, 'Aporte grupal', 'exposicion', NULL, 186, '2022-02-16 18:52:33', '2022-02-16 18:52:33'),
(195, 'Aporte actitudinal', 'compatamiento', NULL, 187, '2022-02-16 18:52:47', '2022-02-16 18:52:47'),
(196, 'Aporte individual', 'exemen 1', NULL, 188, '2022-02-16 18:55:34', '2022-02-16 18:55:34'),
(197, 'Aporte individual', 'examen 2', NULL, 189, '2022-02-16 18:55:41', '2022-02-16 18:55:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `dni_doc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_doc` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ape_doc` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instt_docp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cobt_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lnac_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fnac_doc` date DEFAULT NULL,
  `tiposangre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tipogrado_id` bigint(20) UNSIGNED DEFAULT NULL,
  `especialidad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reparto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `id_user`, `dni_doc`, `nom_doc`, `ape_doc`, `instt_docp`, `cobt_doc`, `lnac_doc`, `fnac_doc`, `tiposangre_id`, `tipogrado_id`, `especialidad_id`, `reparto_id`, `created_at`, `updated_at`) VALUES
(21, 40, '7896541235', 'Anabel Pamela', 'Tite Aman', 'UTPL', '19', 'Guayaquil', '2021-11-29', 2, 3, 2, 4, '2021-11-30 19:07:06', '2022-01-30 10:38:52'),
(22, 42, '7412589630', 'Juan Andres', 'Carrasco Alvarado', 'EJERCITO', '20', 'Guayaquil', '2021-11-30', 1, 1, 2, 1, '2021-12-14 00:32:03', '2021-12-14 00:36:11'),
(23, 44, '1854254877', 'Cristian Andres', 'Yanez Ramirez', 'ESPE', '20', 'Guayaquil', '2022-01-22', 4, 4, 2, 3, '2021-12-14 00:53:14', '2022-02-16 01:24:19'),
(24, 45, '2587413695', 'Jorge Andres', 'Calderon Suarez', 'ESPE', '20', 'Ambato', '2022-01-06', 2, 2, 2, 3, '2021-12-22 00:06:23', '2022-01-10 23:02:41'),
(25, 46, '8521478965', 'Fabian Andres', 'Guano Paredes', 'ESPE', '20', 'Loja', '2022-01-27', 2, 3, 3, 3, '2021-12-22 00:07:38', '2022-01-10 23:03:00'),
(26, 47, '1804777595', 'Edwin Vladimir', 'Guano Cunalata', 'Liceo Naval', '19', 'Lago Agrio', '2022-01-14', 4, 4, 2, 1, '2022-01-03 22:52:40', '2022-01-21 00:57:51'),
(31, 57, '521362454', 'Pepito Gabriel', 'Saltos Campos', 'UTPL', '19', 'Quito', '2022-01-07', 4, 5, 6, 8, '2022-01-29 00:51:49', '2022-02-08 02:15:25'),
(32, 60, '13231232', 'Sasasa', 'pqeuqwwqqww', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16 01:25:01', '2022-02-16 01:25:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejecursos`
--

CREATE TABLE `ejecursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_ejecurso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ejecurso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ejecursos`
--

INSERT INTO `ejecursos` (`id`, `nom_ejecurso`, `desc_ejecurso`, `created_at`, `updated_at`) VALUES
(1, 'Ciencia militar', 'Ciencia milita', '2021-09-30 01:08:44', '2022-02-16 01:57:11'),
(2, 'Cultura militar', 'Cultura militar', '2021-09-30 01:09:01', '2021-09-30 01:09:01'),
(3, 'Ciencia Tecnologica', 'Tecnologia', '2021-10-01 06:09:41', '2021-10-01 06:09:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidads`
--

CREATE TABLE `especialidads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_especialidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_especialidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `especialidads`
--

INSERT INTO `especialidads` (`id`, `nom_especialidad`, `desc_especialidad`, `created_at`, `updated_at`) VALUES
(1, 'Defensa Aérea', 'Defensa aerea', '2021-09-30 01:06:49', '2021-09-30 01:06:49'),
(2, 'Navegación Aérea', 'Navegación', '2021-09-30 01:06:59', '2021-09-30 01:06:59'),
(3, 'Controlador de transito Aéreo', 'Controlador de transito Aéreo', '2021-10-01 06:00:47', '2021-10-01 06:00:47'),
(4, 'Navegación Aérea', 'Navegación Aérea', '2021-10-01 06:00:56', '2021-10-01 06:00:56'),
(5, 'Electrogeneradores', 'Electrogeneradores', '2021-10-01 06:03:26', '2021-10-01 06:03:26'),
(6, 'Transportación Terrestre', 'Transportación Terrestre', '2021-10-01 06:03:39', '2021-10-01 06:03:39'),
(7, 'Sanidad', 'Sanidad', '2021-10-01 06:03:50', '2021-10-01 06:03:50'),
(8, 'Comunicación Social', 'Comunicación Social', '2021-10-01 06:04:05', '2021-10-01 06:04:05'),
(9, 'Omitido', 'Ninguno', '2021-10-01 06:33:59', '2021-10-01 06:33:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacions`
--

CREATE TABLE `evaluacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecreg_eval` date NOT NULL,
  `nota_deteva` int(11) DEFAULT 0,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `periodo_id` bigint(20) UNSIGNED NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `detalplaneva_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `evaluacions`
--

INSERT INTO `evaluacions` (`id`, `fecreg_eval`, `nota_deteva`, `alumno_id`, `periodo_id`, `materia_id`, `detalplaneva_id`, `created_at`, `updated_at`) VALUES
(496, '2022-01-10', 15, 40, 4, 1, 151, '2022-01-10 23:16:34', '2022-01-11 02:03:03'),
(497, '2022-01-10', 20, 40, 4, 1, 152, '2022-01-10 23:16:34', '2022-01-10 23:38:15'),
(498, '2022-01-10', 18, 40, 4, 1, 153, '2022-01-10 23:16:34', '2022-01-11 00:33:23'),
(499, '2022-01-10', 20, 40, 4, 1, 154, '2022-01-10 23:16:34', '2022-01-10 23:35:38'),
(500, '2022-01-10', 20, 40, 4, 1, 155, '2022-01-10 23:16:34', '2022-01-10 23:35:11'),
(501, '2022-01-10', 15, 38, 4, 1, 151, '2022-01-10 23:16:34', '2022-01-11 02:02:59'),
(502, '2022-01-10', 20, 38, 4, 1, 152, '2022-01-10 23:16:34', '2022-01-10 23:38:23'),
(503, '2022-01-10', 20, 38, 4, 1, 153, '2022-01-10 23:16:34', '2022-01-10 23:37:46'),
(504, '2022-01-10', 15, 38, 4, 1, 154, '2022-01-10 23:16:34', '2022-01-10 23:35:33'),
(505, '2022-01-10', 15, 38, 4, 1, 155, '2022-01-10 23:16:34', '2022-01-11 02:03:10'),
(506, '2022-01-10', 20, 39, 4, 1, 151, '2022-01-10 23:16:34', '2022-01-12 02:01:34'),
(507, '2022-01-10', 15, 39, 4, 1, 152, '2022-01-10 23:16:34', '2022-01-10 23:38:48'),
(508, '2022-01-10', 20, 39, 4, 1, 153, '2022-01-10 23:16:34', '2022-01-11 02:03:07'),
(509, '2022-01-10', 20, 39, 4, 1, 154, '2022-01-10 23:16:34', '2022-01-10 23:37:14'),
(510, '2022-01-10', 20, 39, 4, 1, 155, '2022-01-10 23:16:34', '2022-01-10 23:35:22'),
(511, '2022-01-10', 18, 37, 4, 1, 151, '2022-01-10 23:16:34', '2022-01-10 23:41:19'),
(512, '2022-01-10', 10, 37, 4, 1, 152, '2022-01-10 23:16:34', '2022-01-10 23:38:28'),
(513, '2022-01-10', 20, 37, 4, 1, 153, '2022-01-10 23:16:34', '2022-01-10 23:38:40'),
(514, '2022-01-10', 15, 37, 4, 1, 154, '2022-01-10 23:16:34', '2022-01-10 23:37:57'),
(515, '2022-01-10', 20, 37, 4, 1, 155, '2022-01-10 23:16:34', '2022-01-11 02:03:14'),
(516, '2022-01-10', 19, 40, 4, 1, 156, '2022-01-10 23:18:32', '2022-01-10 23:43:10'),
(517, '2022-01-10', 20, 40, 4, 1, 157, '2022-01-10 23:18:32', '2022-01-10 23:43:03'),
(518, '2022-01-10', 15, 40, 4, 1, 158, '2022-01-10 23:18:32', '2022-01-11 02:02:38'),
(519, '2022-01-10', 20, 40, 4, 1, 159, '2022-01-10 23:18:32', '2022-01-10 23:42:32'),
(520, '2022-01-10', 15, 40, 4, 1, 160, '2022-01-10 23:18:32', '2022-01-11 02:02:42'),
(521, '2022-01-10', 25, 38, 4, 1, 156, '2022-01-10 23:18:32', '2022-01-11 02:02:49'),
(522, '2022-01-10', 18, 38, 4, 1, 157, '2022-01-10 23:18:32', '2022-01-10 23:43:16'),
(523, '2022-01-10', 20, 38, 4, 1, 158, '2022-01-10 23:18:32', '2022-01-10 23:41:33'),
(524, '2022-01-10', 20, 38, 4, 1, 159, '2022-01-10 23:18:32', '2022-01-10 23:42:39'),
(525, '2022-01-10', 15, 38, 4, 1, 160, '2022-01-10 23:18:32', '2022-01-11 02:02:17'),
(526, '2022-01-10', 20, 39, 4, 1, 156, '2022-01-10 23:18:32', '2022-01-10 23:43:53'),
(527, '2022-01-10', 18, 39, 4, 1, 157, '2022-01-10 23:18:32', '2022-01-10 23:43:23'),
(528, '2022-01-10', 20, 39, 4, 1, 158, '2022-01-10 23:18:32', '2022-01-11 02:02:24'),
(529, '2022-01-10', 20, 39, 4, 1, 159, '2022-01-10 23:18:32', '2022-01-10 23:42:46'),
(530, '2022-01-10', 20, 39, 4, 1, 160, '2022-01-10 23:18:32', '2022-01-10 23:43:37'),
(531, '2022-01-10', 20, 37, 4, 1, 156, '2022-01-10 23:18:32', '2022-01-10 23:43:59'),
(532, '2022-01-10', 18, 37, 4, 1, 157, '2022-01-10 23:18:32', '2022-01-10 23:43:27'),
(533, '2022-01-10', 15, 37, 4, 1, 158, '2022-01-10 23:18:32', '2022-01-11 02:02:27'),
(534, '2022-01-10', 20, 37, 4, 1, 159, '2022-01-10 23:18:32', '2022-01-10 23:42:51'),
(535, '2022-01-10', 15, 37, 4, 1, 160, '2022-01-10 23:18:32', '2022-01-11 02:02:21'),
(536, '2022-01-10', 20, 36, 11, 11, 161, '2022-01-10 23:19:53', '2022-01-10 23:45:55'),
(537, '2022-01-10', 19, 36, 11, 11, 162, '2022-01-10 23:19:53', '2022-01-10 23:45:38'),
(538, '2022-01-10', 20, 36, 11, 11, 163, '2022-01-10 23:19:53', '2022-01-10 23:44:32'),
(539, '2022-01-10', 15, 36, 11, 11, 164, '2022-01-10 23:19:53', '2022-01-10 23:45:23'),
(540, '2022-01-10', 19, 36, 11, 11, 165, '2022-01-10 23:19:53', '2022-01-10 23:44:56'),
(541, '2022-01-10', 20, 38, 11, 11, 161, '2022-01-10 23:19:53', '2022-01-10 23:45:58'),
(542, '2022-01-10', 18, 38, 11, 11, 162, '2022-01-10 23:19:53', '2022-01-10 23:45:41'),
(543, '2022-01-10', 20, 38, 11, 11, 163, '2022-01-10 23:19:53', '2022-01-10 23:44:41'),
(544, '2022-01-10', 15, 38, 11, 11, 164, '2022-01-10 23:19:53', '2022-01-10 23:45:26'),
(545, '2022-01-10', 20, 38, 11, 11, 165, '2022-01-10 23:19:53', '2022-01-10 23:45:02'),
(546, '2022-01-10', 18, 39, 11, 11, 161, '2022-01-10 23:19:53', '2022-01-10 23:46:01'),
(547, '2022-01-10', 20, 39, 11, 11, 162, '2022-01-10 23:19:53', '2022-01-10 23:45:45'),
(548, '2022-01-10', 18, 39, 11, 11, 163, '2022-01-10 23:19:53', '2022-01-10 23:44:46'),
(549, '2022-01-10', 18, 39, 11, 11, 164, '2022-01-10 23:19:53', '2022-01-10 23:45:29'),
(550, '2022-01-10', 20, 39, 11, 11, 165, '2022-01-10 23:19:53', '2022-01-10 23:45:06'),
(551, '2022-01-10', 18, 37, 11, 11, 161, '2022-01-10 23:19:53', '2022-01-10 23:46:04'),
(552, '2022-01-10', 18, 37, 11, 11, 162, '2022-01-10 23:19:53', '2022-01-10 23:45:51'),
(553, '2022-01-10', 20, 37, 11, 11, 163, '2022-01-10 23:19:53', '2022-01-10 23:44:51'),
(554, '2022-01-10', 16, 37, 11, 11, 164, '2022-01-10 23:19:53', '2022-01-10 23:45:33'),
(555, '2022-01-10', 20, 37, 11, 11, 165, '2022-01-10 23:19:53', '2022-01-10 23:45:11'),
(556, '2022-01-10', 20, 36, 11, 11, 166, '2022-01-10 23:22:30', '2022-01-11 00:17:15'),
(557, '2022-01-10', 20, 36, 11, 11, 167, '2022-01-10 23:22:30', '2022-01-11 00:12:37'),
(558, '2022-01-10', 10, 36, 11, 11, 168, '2022-01-10 23:22:30', '2022-01-11 00:12:57'),
(559, '2022-01-10', 20, 36, 11, 11, 169, '2022-01-10 23:22:30', '2022-01-11 00:13:39'),
(560, '2022-01-10', 20, 36, 11, 11, 170, '2022-01-10 23:22:30', '2022-01-11 00:14:25'),
(561, '2022-01-10', 20, 38, 11, 11, 166, '2022-01-10 23:22:30', '2022-01-30 11:15:04'),
(562, '2022-01-10', 18, 38, 11, 11, 167, '2022-01-10 23:22:30', '2022-01-11 00:12:42'),
(563, '2022-01-10', 20, 38, 11, 11, 168, '2022-01-10 23:22:30', '2022-01-11 00:13:20'),
(564, '2022-01-10', 2, 38, 11, 11, 169, '2022-01-10 23:22:30', '2022-01-30 11:14:54'),
(565, '2022-01-10', 20, 38, 11, 11, 170, '2022-01-10 23:22:30', '2022-01-11 00:14:33'),
(566, '2022-01-10', 10, 39, 11, 11, 166, '2022-01-10 23:22:30', '2022-02-06 21:09:24'),
(567, '2022-01-10', 20, 39, 11, 11, 167, '2022-01-10 23:22:30', '2022-01-11 00:12:46'),
(568, '2022-01-10', 13, 39, 11, 11, 168, '2022-01-10 23:22:30', '2022-02-06 21:09:39'),
(569, '2022-01-10', 20, 39, 11, 11, 169, '2022-01-10 23:22:30', '2022-01-11 00:13:52'),
(570, '2022-01-10', 15, 39, 11, 11, 170, '2022-01-10 23:22:30', '2022-02-06 21:09:27'),
(571, '2022-01-10', 19, 37, 11, 11, 166, '2022-01-10 23:22:30', '2022-01-10 23:49:25'),
(572, '2022-01-10', 20, 37, 11, 11, 167, '2022-01-10 23:22:30', '2022-01-11 00:12:52'),
(573, '2022-01-10', 20, 37, 11, 11, 168, '2022-01-10 23:22:30', '2022-01-11 00:13:32'),
(574, '2022-01-10', 20, 37, 11, 11, 169, '2022-01-10 23:22:30', '2022-01-11 00:13:59'),
(575, '2022-01-10', 0, 37, 11, 11, 170, '2022-01-10 23:22:30', '2022-01-10 23:22:30'),
(576, '2022-01-10', 20, 36, 12, 5, 171, '2022-01-10 23:23:55', '2022-01-10 23:48:29'),
(577, '2022-01-10', 0, 36, 12, 5, 172, '2022-01-10 23:23:55', '2022-01-10 23:23:55'),
(578, '2022-01-10', 20, 36, 12, 5, 173, '2022-01-10 23:23:55', '2022-01-10 23:47:22'),
(579, '2022-01-10', 20, 36, 12, 5, 174, '2022-01-10 23:23:55', '2022-01-11 00:09:42'),
(580, '2022-01-10', 20, 37, 12, 5, 171, '2022-01-10 23:23:55', '2022-01-11 00:09:55'),
(581, '2022-01-10', 0, 37, 12, 5, 172, '2022-01-10 23:23:55', '2022-01-10 23:23:55'),
(582, '2022-01-10', 20, 37, 12, 5, 173, '2022-01-10 23:23:55', '2022-01-10 23:47:26'),
(583, '2022-01-10', 20, 37, 12, 5, 174, '2022-01-10 23:23:55', '2022-01-11 00:09:36'),
(584, '2022-01-10', 20, 38, 12, 5, 171, '2022-01-10 23:23:55', '2022-01-11 00:09:58'),
(585, '2022-01-10', 0, 38, 12, 5, 172, '2022-01-10 23:23:55', '2022-01-10 23:23:55'),
(586, '2022-01-10', 20, 38, 12, 5, 173, '2022-01-10 23:23:55', '2022-01-10 23:47:51'),
(587, '2022-01-10', 20, 38, 12, 5, 174, '2022-01-10 23:23:55', '2022-01-11 00:09:48'),
(588, '2022-01-10', 20, 39, 12, 5, 171, '2022-01-10 23:23:55', '2022-01-11 00:10:01'),
(589, '2022-01-10', 0, 39, 12, 5, 172, '2022-01-10 23:23:55', '2022-01-10 23:23:55'),
(590, '2022-01-10', 0, 39, 12, 5, 173, '2022-01-10 23:23:55', '2022-01-10 23:23:55'),
(591, '2022-01-10', 20, 39, 12, 5, 174, '2022-01-10 23:23:55', '2022-01-11 00:09:45'),
(592, '2022-01-10', 0, 40, 12, 5, 171, '2022-01-10 23:23:55', '2022-01-10 23:23:55'),
(593, '2022-01-10', 18, 40, 12, 5, 172, '2022-01-10 23:23:55', '2022-01-10 23:48:11'),
(594, '2022-01-10', 0, 40, 12, 5, 173, '2022-01-10 23:23:55', '2022-01-10 23:23:55'),
(595, '2022-01-10', 20, 40, 12, 5, 174, '2022-01-10 23:23:55', '2022-01-11 00:09:52'),
(596, '2022-01-10', 20, 36, 12, 1, 175, '2022-01-10 23:25:29', '2022-01-10 23:34:15'),
(597, '2022-01-10', 20, 36, 12, 1, 176, '2022-01-10 23:25:29', '2022-01-10 23:32:52'),
(598, '2022-01-10', 10, 36, 12, 1, 177, '2022-01-10 23:25:29', '2022-01-10 23:34:13'),
(599, '2022-01-10', 20, 36, 12, 1, 178, '2022-01-10 23:25:29', '2022-01-10 23:34:09'),
(600, '2022-01-10', 20, 37, 12, 1, 175, '2022-01-10 23:25:29', '2022-01-10 23:33:05'),
(601, '2022-01-10', 20, 37, 12, 1, 176, '2022-01-10 23:25:29', '2022-01-10 23:32:57'),
(602, '2022-01-10', 20, 37, 12, 1, 177, '2022-01-10 23:25:29', '2022-01-10 23:33:01'),
(603, '2022-01-10', 20, 37, 12, 1, 178, '2022-01-10 23:25:29', '2022-01-10 23:34:07'),
(604, '2022-01-10', 20, 38, 12, 1, 175, '2022-01-10 23:25:29', '2022-01-10 23:34:16'),
(605, '2022-01-10', 20, 38, 12, 1, 176, '2022-01-10 23:25:29', '2022-01-10 23:33:31'),
(606, '2022-01-10', 10, 38, 12, 1, 177, '2022-01-10 23:25:29', '2022-01-10 23:46:52'),
(607, '2022-01-10', 10, 38, 12, 1, 178, '2022-01-10 23:25:29', '2022-01-10 23:34:05'),
(608, '2022-01-10', 15, 39, 12, 1, 175, '2022-01-10 23:25:29', '2022-01-10 23:47:03'),
(609, '2022-01-10', 20, 39, 12, 1, 176, '2022-01-10 23:25:29', '2022-01-10 23:34:00'),
(610, '2022-01-10', 12, 39, 12, 1, 177, '2022-01-10 23:25:29', '2022-01-10 23:46:56'),
(611, '2022-01-10', 10, 39, 12, 1, 178, '2022-01-10 23:25:29', '2022-01-10 23:34:03'),
(612, '2022-01-10', 10, 40, 12, 1, 175, '2022-01-10 23:25:29', '2022-01-10 23:47:05'),
(613, '2022-01-10', 20, 40, 12, 1, 176, '2022-01-10 23:25:29', '2022-01-10 23:34:02'),
(614, '2022-01-10', 15, 40, 12, 1, 177, '2022-01-10 23:25:29', '2022-01-10 23:47:00'),
(615, '2022-01-10', 20, 40, 12, 1, 178, '2022-01-10 23:25:29', '2022-01-10 23:46:43'),
(616, '2022-01-10', 20, 36, 11, 10, 179, '2022-01-11 00:22:13', '2022-01-11 00:22:44'),
(617, '2022-01-10', 20, 36, 11, 10, 180, '2022-01-11 00:22:13', '2022-01-11 00:23:24'),
(618, '2022-01-10', 20, 36, 11, 10, 181, '2022-01-11 00:22:13', '2022-01-11 00:22:26'),
(619, '2022-01-10', 15, 38, 11, 10, 179, '2022-01-11 00:22:13', '2022-01-11 00:22:55'),
(620, '2022-01-10', 20, 38, 11, 10, 180, '2022-01-11 00:22:13', '2022-01-11 00:23:10'),
(621, '2022-01-10', 20, 38, 11, 10, 181, '2022-01-11 00:22:13', '2022-01-11 00:22:30'),
(622, '2022-01-10', 20, 39, 11, 10, 179, '2022-01-11 00:22:13', '2022-02-06 20:51:29'),
(623, '2022-01-10', 20, 39, 11, 10, 180, '2022-01-11 00:22:13', '2022-02-06 20:51:19'),
(624, '2022-01-10', 15, 39, 11, 10, 181, '2022-01-11 00:22:13', '2022-02-08 03:21:11'),
(625, '2022-01-10', 20, 37, 11, 10, 179, '2022-01-11 00:22:13', '2022-01-11 00:23:04'),
(626, '2022-01-10', 18, 37, 11, 10, 180, '2022-01-11 00:22:13', '2022-02-08 03:21:17'),
(627, '2022-01-10', 20, 37, 11, 10, 181, '2022-01-11 00:22:13', '2022-01-11 00:22:40'),
(628, '2022-01-10', 20, 40, 4, 9, 182, '2022-01-11 02:28:02', '2022-01-11 02:28:46'),
(629, '2022-01-10', 15, 40, 4, 9, 183, '2022-01-11 02:28:02', '2022-02-16 18:49:14'),
(630, '2022-01-10', 10, 40, 4, 9, 184, '2022-01-11 02:28:02', '2022-01-11 02:28:30'),
(631, '2022-01-10', 10, 38, 4, 9, 182, '2022-01-11 02:28:02', '2022-01-11 02:28:52'),
(632, '2022-01-10', 15, 38, 4, 9, 183, '2022-01-11 02:28:02', '2022-02-08 03:20:17'),
(633, '2022-01-10', 10, 38, 4, 9, 184, '2022-01-11 02:28:02', '2022-01-11 02:28:34'),
(634, '2022-01-10', 20, 39, 4, 9, 182, '2022-01-11 02:28:02', '2022-01-11 02:28:49'),
(635, '2022-01-10', 19, 39, 4, 9, 183, '2022-01-11 02:28:02', '2022-01-21 01:02:25'),
(636, '2022-01-10', 18, 39, 4, 9, 184, '2022-01-11 02:28:02', '2022-02-08 03:20:22'),
(637, '2022-01-10', 20, 37, 4, 9, 182, '2022-01-11 02:28:02', '2022-02-08 03:20:26'),
(638, '2022-01-10', 20, 37, 4, 9, 183, '2022-01-11 02:28:02', '2022-01-11 02:28:26'),
(639, '2022-01-10', 10, 37, 4, 9, 184, '2022-01-11 02:28:02', '2022-01-21 01:02:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_mat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhor_mat` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nom_mat`, `nhor_mat`, `created_at`, `updated_at`) VALUES
(1, 'Transito Aéreo', 25, '2021-09-30 01:11:19', '2021-09-30 01:11:19'),
(2, 'Procedimientos operaciones POV', 25, '2021-09-30 01:11:32', '2021-09-30 01:11:32'),
(3, 'Reglamento del aire', 45, '2021-09-30 01:11:55', '2021-09-30 01:11:55'),
(4, 'Servicio de control de tránsito aéreo', 2, '2021-10-01 06:15:45', '2021-10-01 06:15:45'),
(5, 'Control de aerodromo', 25, '2021-10-01 06:16:27', '2021-10-01 06:16:27'),
(6, 'Meteorología Aeronautica', 25, '2021-10-01 06:19:28', '2021-10-01 06:19:28'),
(7, 'Seguridad aérea', 25, '2021-10-01 06:19:41', '2021-10-01 06:19:41'),
(9, 'Bioseguridad Aérea', 25, '2021-10-01 06:20:40', '2021-10-01 06:20:40'),
(10, 'Servicios de aeropuertos', 35, '2021-10-01 06:21:08', '2021-10-01 06:21:08'),
(11, 'Sistemas y componentes aéreos', 25, '2021-10-01 06:22:01', '2021-10-01 06:22:01'),
(12, 'Simulador de Vuelo', 25, '2021-10-01 06:22:16', '2021-10-01 06:22:16'),
(13, 'Administración de las operaciones', 25, '2021-10-01 06:22:39', '2021-10-01 06:22:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feins_matri` date NOT NULL,
  `periodo_id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `seccion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id`, `feins_matri`, `periodo_id`, `alumno_id`, `curso_id`, `seccion_id`, `created_at`, `updated_at`) VALUES
(55, '2021-11-01', 12, 36, 1, 1, '2022-01-10 23:06:21', '2022-01-10 23:06:21'),
(56, '2021-11-01', 12, 37, 1, 1, '2022-01-10 23:06:33', '2022-01-10 23:06:33'),
(57, '2021-11-01', 12, 38, 1, 1, '2022-01-10 23:06:44', '2022-01-10 23:06:44'),
(58, '2021-11-01', 12, 39, 1, 1, '2022-01-10 23:06:57', '2022-01-10 23:06:57'),
(59, '2021-11-01', 12, 40, 1, 1, '2022-01-10 23:07:32', '2022-01-10 23:07:32'),
(60, '2021-11-02', 11, 36, 4, 1, '2022-01-10 23:07:49', '2022-01-10 23:07:49'),
(61, '2021-11-02', 11, 38, 4, 1, '2022-01-10 23:08:01', '2022-01-10 23:08:01'),
(62, '2021-11-01', 11, 39, 4, 1, '2022-01-10 23:08:17', '2022-01-10 23:08:17'),
(63, '2021-09-07', 6, 39, 4, 1, '2022-01-10 23:08:52', '2022-01-10 23:08:52'),
(64, '2021-09-07', 11, 37, 4, 1, '2022-01-10 23:09:35', '2022-01-10 23:09:35'),
(65, '2021-12-29', 6, 38, 1, 1, '2022-01-10 23:09:55', '2022-01-10 23:09:55'),
(66, '2021-11-09', 6, 40, 4, 1, '2022-01-10 23:10:09', '2022-01-10 23:10:09'),
(67, '2021-12-08', 6, 36, 4, 1, '2022-01-10 23:10:30', '2022-01-10 23:10:30'),
(68, '2021-08-02', 4, 40, 5, 1, '2022-01-10 23:11:05', '2022-01-10 23:11:05'),
(69, '2021-10-04', 4, 38, 5, 1, '2022-01-10 23:11:19', '2022-01-10 23:11:19'),
(70, '2021-08-02', 4, 39, 5, 1, '2022-01-10 23:11:39', '2022-01-10 23:11:39'),
(71, '2021-08-02', 4, 37, 5, 1, '2022-01-10 23:11:59', '2022-01-10 23:11:59'),
(75, '2022-02-03', 12, 36, 5, 1, '2022-02-16 18:53:54', '2022-02-16 18:53:54'),
(76, '2022-02-10', 11, 37, 5, 1, '2022-02-16 18:54:40', '2022-02-16 18:54:40'),
(77, '2022-02-03', 4, 36, 5, 1, '2022-02-16 18:56:11', '2022-02-16 18:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_26_005650_create_tipogrados_table', 1),
(5, '2021_03_26_005743_create_repartos_table', 1),
(6, '2021_03_26_005815_create_especialidads_table', 1),
(7, '2021_03_26_005854_create_tiposangres_table', 1),
(8, '2021_03_27_002816_create_periodos_table', 1),
(9, '2021_03_27_005717_create_tipocursos_table', 1),
(10, '2021_03_27_005922_create_ejecursos_table', 1),
(11, '2021_03_28_002151_create_docentes_table', 1),
(12, '2021_03_28_002234_create_materias_table', 1),
(13, '2021_03_28_002313_create_cursos_table', 1),
(14, '2021_03_28_002515_create_seccions_table', 1),
(15, '2021_03_28_002854_create_planestudios_table', 1),
(16, '2021_03_28_003054_create_aulas_table', 1),
(17, '2021_03_28_005959_create_modalidadcursos_table', 1),
(18, '2021_04_05_154000_create_alumnos_table', 1),
(19, '2021_05_20_185624_create_permission_tables', 1),
(20, '2021_05_21_175330_create_curso_materia_table', 1),
(21, '2021_07_03_002724_create_matriculas_table', 1),
(22, '2021_07_07_002951_create_asignadocs_table', 1),
(23, '2021_07_08_203646_create_planevas_table', 1),
(24, '2021_07_08_203738_create_detalplanevas_table', 1),
(25, '2021_07_08_203911_create_evaluacions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidadcursos`
--

CREATE TABLE `modalidadcursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_moda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_moda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ano_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peri_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finic_per` date NOT NULL,
  `ffin_per` date NOT NULL,
  `estado` enum('En curso','Finalizado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`id`, `ano_per`, `peri_per`, `finic_per`, `ffin_per`, `estado`, `created_at`, `updated_at`) VALUES
(3, '2021', 'Septiembre-Noviembre', '2021-09-01', '2021-11-15', 'En curso', '2021-10-01 06:36:01', '2021-11-20 01:35:53'),
(4, '2021', 'Agosto-Agosto', '2021-08-09', '2021-08-30', 'En curso', '2021-10-01 06:36:22', '2021-11-20 02:25:41'),
(6, '2020', 'Octubre-Noviembre', '2021-11-01', '2022-01-06', 'En curso', '2021-11-07 21:04:38', '2021-11-07 21:04:38'),
(11, '2021', 'Noviembre-Enero', '2021-11-19', '2022-01-19', 'En curso', '2021-11-20 03:10:58', '2021-11-20 03:22:43'),
(12, '2021', 'Noviembre-Diciembre', '2021-11-01', '2021-12-16', 'En curso', '2021-12-14 00:37:00', '2022-01-10 23:30:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pie_reporte`
--

CREATE TABLE `pie_reporte` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(200) NOT NULL,
  `grado` varchar(200) NOT NULL,
  `cargo` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pie_reporte`
--

INSERT INTO `pie_reporte` (`id`, `nombre_completo`, `grado`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 'Juan Salan', 'Cbop. Tec. Av', 'Jefe seccion', '2022-02-04 20:03:35', '2022-02-04 20:03:35'),
(2, 'Edwin Solina', 'Cbop. Tec. Avc', 'Jefe Departamento', '2022-02-04 20:03:35', '2022-02-04 20:03:35'),
(3, 'Daniel Carvajal', 'Sbus. Téc. Avc', 'Supervisor', '2022-02-04 20:04:43', '2022-02-04 20:04:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planestudios`
--

CREATE TABLE `planestudios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tit_pla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrip_pla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archi_pla` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `curso_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planevas`
--

CREATE TABLE `planevas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecent_plaeva` date NOT NULL,
  `docente_id` bigint(20) UNSIGNED NOT NULL,
  `periodo_id` bigint(20) UNSIGNED NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planevas`
--

INSERT INTO `planevas` (`id`, `fecent_plaeva`, `docente_id`, `periodo_id`, `materia_id`, `created_at`, `updated_at`) VALUES
(143, '2021-12-06', 23, 4, 1, '2022-01-10 23:15:36', '2022-01-10 23:15:36'),
(144, '2021-12-14', 23, 4, 1, '2022-01-10 23:15:50', '2022-01-10 23:15:50'),
(145, '2021-12-09', 23, 4, 1, '2022-01-10 23:16:09', '2022-01-10 23:16:09'),
(146, '2021-12-13', 23, 4, 1, '2022-01-10 23:16:21', '2022-01-10 23:16:21'),
(147, '2021-12-08', 23, 4, 1, '2022-01-10 23:16:31', '2022-01-10 23:16:31'),
(148, '2021-12-28', 24, 4, 1, '2022-01-10 23:17:14', '2022-01-10 23:17:14'),
(149, '2022-01-05', 24, 4, 1, '2022-01-10 23:17:26', '2022-01-10 23:17:26'),
(150, '2022-01-03', 24, 4, 1, '2022-01-10 23:17:49', '2022-01-10 23:17:49'),
(151, '2022-01-07', 24, 4, 1, '2022-01-10 23:18:03', '2022-01-10 23:18:03'),
(152, '2021-12-31', 24, 4, 1, '2022-01-10 23:18:26', '2022-01-10 23:18:26'),
(153, '2021-12-09', 23, 11, 11, '2022-01-10 23:18:53', '2022-01-10 23:18:53'),
(154, '2022-01-12', 23, 11, 11, '2022-01-10 23:19:06', '2022-01-10 23:19:06'),
(155, '2022-01-14', 23, 11, 11, '2022-01-10 23:19:21', '2022-01-10 23:19:21'),
(156, '2022-01-07', 23, 11, 11, '2022-01-10 23:19:34', '2022-01-10 23:19:34'),
(157, '2022-01-16', 23, 11, 11, '2022-01-10 23:19:51', '2022-01-10 23:19:51'),
(158, '2021-12-06', 24, 11, 11, '2022-01-10 23:21:27', '2022-01-10 23:21:27'),
(159, '2022-01-04', 24, 11, 11, '2022-01-10 23:21:41', '2022-01-10 23:21:41'),
(160, '2022-01-11', 24, 11, 11, '2022-01-10 23:21:59', '2022-01-10 23:21:59'),
(161, '2022-01-14', 24, 11, 11, '2022-01-10 23:22:10', '2022-01-10 23:22:10'),
(162, '2022-01-19', 24, 11, 11, '2022-01-10 23:22:25', '2022-01-10 23:22:25'),
(163, '2022-01-03', 22, 12, 5, '2022-01-10 23:22:54', '2022-01-10 23:22:54'),
(164, '2022-01-13', 22, 12, 5, '2022-01-10 23:23:04', '2022-01-10 23:23:04'),
(165, '2022-01-05', 22, 12, 5, '2022-01-10 23:23:26', '2022-01-10 23:23:26'),
(166, '2022-01-14', 22, 12, 5, '2022-01-10 23:23:50', '2022-01-10 23:23:50'),
(167, '2022-01-05', 21, 12, 1, '2022-01-10 23:24:06', '2022-01-10 23:24:06'),
(168, '2022-01-04', 21, 12, 1, '2022-01-10 23:24:39', '2022-01-10 23:24:39'),
(169, '2022-01-07', 21, 12, 1, '2022-01-10 23:25:00', '2022-01-10 23:25:00'),
(170, '2022-01-22', 21, 12, 1, '2022-01-10 23:25:14', '2022-01-10 23:25:14'),
(171, '2022-01-01', 25, 11, 10, '2022-01-11 00:21:38', '2022-01-11 00:21:38'),
(172, '2022-01-22', 25, 11, 10, '2022-01-11 00:21:46', '2022-01-11 00:21:46'),
(173, '2022-01-06', 25, 11, 10, '2022-01-11 00:22:09', '2022-01-11 00:22:09'),
(174, '2022-01-03', 23, 4, 9, '2022-01-11 02:27:30', '2022-01-11 02:27:30'),
(175, '2022-01-04', 23, 4, 9, '2022-01-11 02:27:47', '2022-01-11 02:27:47'),
(176, '2022-01-02', 23, 4, 9, '2022-01-11 02:27:57', '2022-01-11 02:27:57'),
(177, '2022-01-04', 23, 12, 2, '2022-01-17 23:26:21', '2022-01-17 23:26:21'),
(178, '2022-01-15', 23, 12, 2, '2022-01-17 23:26:46', '2022-01-17 23:26:46'),
(180, '2022-01-14', 23, 12, 2, '2022-01-21 01:01:56', '2022-01-21 01:01:56'),
(183, '2022-02-02', 32, 11, 2, '2022-02-16 18:51:51', '2022-02-16 18:51:51'),
(184, '2022-02-12', 32, 11, 2, '2022-02-16 18:52:03', '2022-02-16 18:52:03'),
(185, '2022-02-20', 32, 11, 2, '2022-02-16 18:52:22', '2022-02-16 18:52:22'),
(186, '2022-02-13', 32, 11, 2, '2022-02-16 18:52:33', '2022-02-16 18:52:33'),
(187, '2022-02-09', 32, 11, 2, '2022-02-16 18:52:47', '2022-02-16 18:52:47'),
(188, '2022-02-10', 26, 4, 1, '2022-02-16 18:55:34', '2022-02-16 18:55:34'),
(189, '2022-02-17', 26, 4, 1, '2022-02-16 18:55:41', '2022-02-16 18:55:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `porcentaje_notas`
--

CREATE TABLE `porcentaje_notas` (
  `id` int(11) NOT NULL,
  `porcentaje_individual` decimal(6,2) NOT NULL,
  `porcentaje_grupal` decimal(6,2) NOT NULL,
  `porcentaje_actitudinal` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `porcentaje_notas`
--

INSERT INTO `porcentaje_notas` (`id`, `porcentaje_individual`, `porcentaje_grupal`, `porcentaje_actitudinal`) VALUES
(1, '70.00', '25.00', '5.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promedio_materia`
--

CREATE TABLE `promedio_materia` (
  `id` bigint(20) NOT NULL,
  `matricula_id` bigint(20) NOT NULL,
  `materia_id` bigint(20) NOT NULL,
  `nota` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `promedio_materia`
--

INSERT INTO `promedio_materia` (`id`, `matricula_id`, `materia_id`, `nota`, `created_at`, `updated_at`) VALUES
(13, 45, 1, '0.90', '2022-01-03 22:24:18', '2022-01-07 19:40:30'),
(14, 46, 1, '18.00', '2022-01-03 22:24:19', '2022-01-07 19:40:41'),
(15, 47, 1, '14.30', '2022-01-03 22:24:21', '2022-01-07 19:40:40'),
(16, 48, 10, '12.80', '2022-01-03 22:26:02', '2022-01-03 22:27:12'),
(17, 49, 10, '20.00', '2022-01-03 22:26:03', '2022-01-06 15:15:15'),
(18, 50, 10, '20.00', '2022-01-03 22:26:05', '2022-01-03 22:37:24'),
(19, 45, 5, '15.50', '2022-01-03 22:27:28', '2022-01-07 19:40:28'),
(20, 46, 5, '15.50', '2022-01-03 22:27:33', '2022-01-03 22:29:50'),
(21, 47, 5, '15.50', '2022-01-03 22:27:36', '2022-01-03 22:29:40'),
(22, 50, 11, '17.00', '2022-01-03 22:37:29', '2022-01-03 22:39:37'),
(23, 49, 11, '15.00', '2022-01-03 22:38:00', '2022-01-03 22:39:15'),
(24, 48, 11, '17.00', '2022-01-03 22:38:10', '2022-01-03 23:09:22'),
(25, 54, 9, '12.50', '2022-01-04 20:53:38', '2022-01-04 20:56:01'),
(26, 51, 9, '3.50', '2022-01-04 20:53:53', '2022-01-04 20:55:33'),
(27, 53, 9, '8.00', '2022-01-04 20:53:56', '2022-01-04 20:55:44'),
(28, 52, 9, '0.00', '2022-01-04 20:54:01', '2022-01-04 20:54:33'),
(29, 55, 1, '17.00', '2022-01-10 18:32:52', '2022-01-10 18:34:15'),
(30, 56, 1, '20.00', '2022-01-10 18:32:53', '2022-01-10 18:34:07'),
(31, 57, 1, '14.00', '2022-01-10 18:32:53', '2022-01-10 18:46:52'),
(32, 58, 1, '14.10', '2022-01-10 18:32:53', '2022-01-10 18:47:04'),
(33, 59, 1, '17.50', '2022-01-10 18:32:53', '2022-01-10 18:47:06'),
(34, 60, 11, '17.00', '2022-01-10 18:44:32', '2022-01-10 19:17:15'),
(35, 61, 11, '16.70', '2022-01-10 18:44:32', '2022-01-30 06:15:04'),
(36, 62, 11, '16.15', '2022-01-10 18:44:32', '2022-02-06 16:09:39'),
(37, 64, 11, '16.90', '2022-01-10 18:44:32', '2022-01-10 19:13:59'),
(38, 55, 5, '14.00', '2022-01-10 18:47:09', '2022-01-10 19:09:42'),
(39, 56, 5, '14.00', '2022-01-10 18:47:09', '2022-01-10 19:09:56'),
(40, 57, 5, '14.00', '2022-01-10 18:47:09', '2022-01-10 19:09:59'),
(41, 58, 5, '8.00', '2022-01-10 18:47:09', '2022-01-10 19:10:02'),
(42, 59, 5, '11.40', '2022-01-10 18:47:09', '2022-01-10 19:09:53'),
(43, 60, 10, '20.00', '2022-01-10 19:22:26', '2022-01-10 19:23:24'),
(44, 61, 10, '19.50', '2022-01-10 19:22:26', '2022-01-10 19:23:10'),
(45, 62, 10, '17.00', '2022-01-10 19:22:27', '2022-02-07 22:21:12'),
(46, 64, 10, '19.40', '2022-01-10 19:22:27', '2022-02-07 22:21:17'),
(47, 68, 9, '14.00', '2022-01-10 21:28:15', '2022-02-16 13:49:15'),
(48, 69, 9, '13.00', '2022-01-10 21:28:16', '2022-02-07 22:20:18'),
(49, 70, 9, '18.80', '2022-01-10 21:28:16', '2022-02-07 22:20:23'),
(50, 71, 9, '17.00', '2022-01-10 21:28:16', '2022-02-16 13:49:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango_promedio`
--

CREATE TABLE `rango_promedio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nota_minima` decimal(10,2) NOT NULL,
  `nota_maxima` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rango_promedio`
--

INSERT INTO `rango_promedio` (`id`, `nombre`, `nota_minima`, `nota_maxima`, `created_at`, `updated_at`) VALUES
(1, 'Sobresaliente', '19.00', '20.00', '2022-01-15 00:42:40', '2022-01-15 00:42:40'),
(5, 'Muy buena', '18.00', '18.99', '2022-01-15 00:44:24', '2022-01-15 00:44:24'),
(7, 'Buena', '16.00', '17.99', '2022-01-15 00:45:12', '2022-01-15 00:45:12'),
(9, 'Regular', '14.00', '15.99', '2022-01-15 00:45:46', '2022-01-15 00:45:46'),
(10, 'Deficiente', '10.00', '13.99', '2022-01-15 00:45:46', '2022-01-15 00:45:46'),
(12, 'Insuficiente', '0.00', '9.99', '2022-01-15 00:45:46', '2022-01-15 00:45:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartos`
--

CREATE TABLE `repartos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_reparto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_reparto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `repartos`
--

INSERT INTO `repartos` (`id`, `nom_reparto`, `desc_reparto`, `created_at`, `updated_at`) VALUES
(1, 'COAD', 'Comando de Educación y Doctrina', '2021-09-30 01:06:33', '2021-09-30 01:06:33'),
(3, 'ESMA', 'Escuela de la fuerza aerea', '2021-10-01 05:57:45', '2021-10-01 05:57:45'),
(4, 'ESPE', 'Escuela Superior Politecnica', '2021-10-01 05:57:52', '2021-10-01 05:57:52'),
(5, 'UEFAE', 'Unidad Educativa de la Fuerza Aérea', '2021-10-01 05:58:20', '2021-10-01 05:58:20'),
(6, 'Ala Nro 22', 'Ala de Combate aéreo Nro 22', '2021-10-01 05:58:41', '2021-10-01 05:58:57'),
(7, 'Comando General', 'Comando General', '2021-10-01 05:59:09', '2021-10-01 05:59:09'),
(8, 'Omitido', 'Ninguno', '2021-10-01 06:33:49', '2021-10-01 06:33:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '', NULL, NULL),
(2, 'Docente', '', NULL, NULL),
(3, 'Estudiante', '', NULL, NULL),
(4, 'Técnico', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `id_rol` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `id_rol`, `id_user`, `created_at`, `updated_at`) VALUES
(3, 1, 8, '2021-11-29 22:02:58', '2021-11-29 22:02:58'),
(21, 4, 39, '2021-11-30 14:06:21', '2021-11-30 14:06:21'),
(27, 3, 41, '2021-12-13 19:31:19', '2021-12-13 19:31:19'),
(44, 3, 43, '2021-12-20 04:14:50', '2021-12-20 04:14:50'),
(46, 2, 44, '2021-12-21 18:39:01', '2021-12-21 18:39:01'),
(47, 2, 45, '2021-12-21 19:06:23', '2021-12-21 19:06:23'),
(49, 2, 42, '2021-12-21 19:18:38', '2021-12-21 19:18:38'),
(50, 3, 42, '2021-12-21 19:18:38', '2021-12-21 19:18:38'),
(51, 2, 38, '2022-01-03 17:50:01', '2022-01-03 17:50:01'),
(52, 3, 38, '2022-01-03 17:50:01', '2022-01-03 17:50:01'),
(60, 2, 47, '2022-01-11 20:47:21', '2022-01-11 20:47:21'),
(61, 3, 47, '2022-01-11 20:47:21', '2022-01-11 20:47:21'),
(62, 4, 47, '2022-01-11 20:47:21', '2022-01-11 20:47:21'),
(65, 2, 40, '2022-01-17 14:25:22', '2022-01-17 14:25:22'),
(66, 3, 40, '2022-01-17 14:25:22', '2022-01-17 14:25:22'),
(67, 1, 49, '2022-01-19 19:56:07', '2022-01-19 19:56:07'),
(68, 3, 50, '2022-01-19 19:58:58', '2022-01-19 19:58:58'),
(69, 1, 51, '2022-01-19 20:12:43', '2022-01-19 20:12:43'),
(70, 1, 52, '2022-01-20 20:08:26', '2022-01-20 20:08:26'),
(71, 2, 52, '2022-01-20 20:08:26', '2022-01-20 20:08:26'),
(72, 3, 52, '2022-01-20 20:08:26', '2022-01-20 20:08:26'),
(74, 2, 53, '2022-01-20 20:16:44', '2022-01-20 20:16:44'),
(75, 3, 53, '2022-01-20 20:16:44', '2022-01-20 20:16:44'),
(76, 1, 54, '2022-01-26 01:55:08', '2022-01-26 01:55:08'),
(77, 2, 55, '2022-01-26 01:55:48', '2022-01-26 01:55:48'),
(78, 3, 55, '2022-01-26 01:55:48', '2022-01-26 01:55:48'),
(79, 2, 56, '2022-01-28 19:44:42', '2022-01-28 19:44:42'),
(80, 3, 56, '2022-01-28 19:44:42', '2022-01-28 19:44:42'),
(81, 2, 57, '2022-01-28 19:51:49', '2022-01-28 19:51:49'),
(87, 1, 48, '2022-01-28 22:22:50', '2022-01-28 22:22:50'),
(88, 4, 46, '2022-02-05 00:05:47', '2022-02-05 00:05:47'),
(89, 3, 58, '2022-02-07 20:58:51', '2022-02-07 20:58:51'),
(97, 3, 59, '2022-02-07 22:47:19', '2022-02-07 22:47:19'),
(98, 4, 59, '2022-02-07 22:47:19', '2022-02-07 22:47:19'),
(99, 1, 61, '2022-02-07 22:51:57', '2022-02-07 22:51:57'),
(100, 3, 61, '2022-02-07 22:51:57', '2022-02-07 22:51:57'),
(101, 4, 61, '2022-02-07 22:51:57', '2022-02-07 22:51:57'),
(103, 2, 60, '2022-02-15 20:25:01', '2022-02-15 20:25:01'),
(104, 3, 60, '2022-02-15 20:25:01', '2022-02-15 20:25:01'),
(105, 4, 60, '2022-02-15 20:25:01', '2022-02-15 20:25:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccions`
--

CREATE TABLE `seccions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod_sec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_sec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seccions`
--

INSERT INTO `seccions` (`id`, `cod_sec`, `nom_sec`, `created_at`, `updated_at`) VALUES
(1, 'S001', 'OPERACIONES', '2021-09-30 01:10:28', '2022-01-21 01:04:23'),
(2, 'S002', 'LOGISTICA', '2021-09-30 01:10:42', '2021-09-30 01:10:42'),
(3, 'S003', 'ABASTECIMIENTOS', '2021-10-01 06:12:58', '2021-10-01 06:12:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocursos`
--

CREATE TABLE `tipocursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipocursos`
--

INSERT INTO `tipocursos` (`id`, `nom_curso`, `desc_curso`, `created_at`, `updated_at`) VALUES
(1, 'Capacitación', 'Capacitación de nuevas tripulaciones', '2021-09-30 01:08:20', '2021-09-30 01:08:20'),
(2, 'Especialización', 'Especialización de nuevas herramientas', '2021-09-30 01:08:30', '2021-09-30 01:08:30'),
(3, 'Formación', 'Formación de nuevas tripulaciones para el empleo de sistemas aéreos', '2021-10-01 06:08:36', '2021-10-01 06:08:36'),
(4, 'Seminarios', 'Seminarios para nuevas competencias', '2021-10-01 06:09:03', '2021-10-01 06:09:03'),
(5, 'Talleres', 'Talleres de conocimientos', '2021-10-01 06:09:24', '2021-10-01 06:09:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipogrados`
--

CREATE TABLE `tipogrados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_grado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_grado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipogrados`
--

INSERT INTO `tipogrados` (`id`, `nom_grado`, `desc_grado`, `created_at`, `updated_at`) VALUES
(1, 'Cbop', 'Cabo  Primero. Téc. Avc', '2021-09-30 01:07:19', '2021-09-30 01:07:19'),
(2, 'Sldo', 'Soldado. Téc. Avc', '2021-10-01 06:06:36', '2021-10-01 06:06:36'),
(3, 'Sgos', 'Sargento . Téc. Avc', '2021-10-01 06:06:44', '2021-10-01 06:06:44'),
(4, 'Subs', 'Sub Oficial Segundo. Tec. avc', '2021-10-01 06:06:57', '2021-10-01 06:06:57'),
(5, 'Tnte', 'Teniente. Téc. Avc', '2021-10-01 06:07:10', '2021-10-01 06:07:10'),
(6, 'Capt', 'Capitan. Téc. Avc', '2021-10-01 06:07:38', '2021-10-01 06:07:38'),
(7, 'Mayor', 'Mayor Tec. Avc', '2021-10-01 06:08:10', '2021-10-01 06:08:10'),
(8, 'Crnl', 'Coronel. Téc. Avc', '2021-10-01 06:34:27', '2021-10-01 06:34:27'),
(9, 'Subt', 'Subteniente. Tec. Avc', '2021-10-01 06:34:51', '2021-10-01 06:34:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposangres`
--

CREATE TABLE `tiposangres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_sangre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_sangre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tiposangres`
--

INSERT INTO `tiposangres` (`id`, `nom_sangre`, `desc_sangre`, `created_at`, `updated_at`) VALUES
(1, '+O', 'Positivo', '2021-09-30 01:09:14', '2021-09-30 01:09:14'),
(2, '-O', 'Negativo', '2021-09-30 01:09:22', '2021-09-30 01:09:22'),
(3, '+B', 'Negativo', '2021-10-01 06:09:57', '2021-10-01 06:09:57'),
(4, '-O', 'Positivo', '2021-10-01 06:10:06', '2021-10-01 06:10:06'),
(5, '-AB', 'Negativo', '2021-10-01 06:11:09', '2021-10-01 06:11:09'),
(6, '+AB', 'Positivo', '2021-10-01 06:11:24', '2021-10-01 06:11:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('Activo','Inactivo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `dni`, `name`, `lastname`, `email`, `password`, `state`, `created_at`, `updated_at`) VALUES
(8, '00000000', 'administrador', '', 'administrador@gmail.com', '$2y$10$b4ZxDC3gaF2xm5PlY7z7CeJrnhJBuI9yUh9CuK6INuWrotzso9wi6', 'Activo', '2021-10-16 07:09:22', '2022-02-16 01:15:25'),
(40, '7896541235', 'Anabel Pamela', 'Tite Aman', 'atite@fae.mil.ec', '$2y$10$1kE0BrVrctBVOGIlK7ymhO1y7Sj1xByXWwBrA.1t8DCusB54NvU72', 'Activo', '2021-11-30 19:07:06', '2022-02-06 20:52:42'),
(41, '1597532584', 'Sandra Elizabeth', 'Sanchez Carrasco', 'ssanchez@fae.mil.ec', '$2y$10$my0PcJ3Q6NyhM3ySNsAeV.1TpLyQfHJ855843IEG5bqcrylDTUiEq', 'Activo', '2021-12-14 00:31:19', '2021-12-14 00:31:19'),
(42, '7412589630', 'Juan Andres', 'Carrasco Alvarado', 'jcarrasco@fae.mil.ec', '$2y$10$88UVTq6JzJQCgX2cFyug5eYnzV0dSbMOkWXhLsRiWw9ExWOucSAt2', 'Activo', '2021-12-14 00:32:03', '2021-12-14 00:32:03'),
(43, '7894561235', 'Sandra Anabel', 'Suarez Aman', 'ssuarez@fae.mil.ec', '$2y$10$fAIrYisPL4K6/.wxbqbxm.EkRN2S9yJ0x/ho9HFGwGFQwVNBBBba.', 'Activo', '2021-12-14 00:32:52', '2021-12-14 00:32:52'),
(44, '1854254877', 'Cristian Andres', 'Yanez Ramirez', 'cyanez@fae.mil.ec', '$2y$10$dDiUgiw4UPnDBQhgz9QLBu6aMrK1ddBMBu6QEI1wFw.sWuUJ3dHei', 'Activo', '2021-12-14 00:53:14', '2022-02-06 21:28:05'),
(45, '2587413695', 'Jorge Andres', 'Calderon Suarez', 'jcalderon@fae.mil.ec', '$2y$10$JXRn84BmOwAhiy8.h71/oeb33rXR8HCYOReeZttMMFHIVih0Pel/6', 'Activo', '2021-12-22 00:06:23', '2022-01-25 07:42:39'),
(46, '8521478965', 'Fabian Andres', 'Guano Paredes', 'fguano@fae.mil.ec', '$2y$10$vHIHJH.FOH6YrkIhhm3DTuJS9pTVdR/h3L1kBKq6LeQzRU0lrTWsa', 'Activo', '2021-12-22 00:07:38', '2021-12-22 00:07:38'),
(47, '1804777595', 'Edwin Vladimir', 'Guano Cunalata', 'eguano@fae.mil.ec', '$2y$10$BfxoQmw2WI8AiOsf2bNuOORrlWz7ktFwddD21JvxXdJAXb7GuQDwq', 'Activo', '2022-01-03 22:52:40', '2022-01-03 22:52:40'),
(48, '1478523698', 'Admin', 'admin', 'admin@gmail.com', '$2y$10$vHFfwRFdsh4wVqD3EGLhAOkkMu5Tpk9yf2u30.9wsPjeIi94d4aBe', 'Activo', '2022-01-10 23:28:24', '2022-01-29 03:22:50'),
(49, '18047777558', 'Edwin', 'Sanchez', 'esanches1@gmail.com', '$2y$10$Vj0iZ.9UC.NUcW4STc6PyedtQFwRK2OfkxHmAvBwE6/i8q1WuydD.', 'Activo', '2022-01-20 00:56:07', '2022-01-20 00:56:07'),
(55, 'sdsdsd', 'sdsds', 'Cunalata', 'eguandsdsdsdso@fae.mil.ec', '$2y$10$KolcUQkEZALkElmCjxCvh.ZW.WmSMcCd8MO8tFK6yr8TbeuVjkeia', 'Activo', '2022-01-26 06:55:48', '2022-01-26 06:55:48'),
(56, '8521597532', 'Juan Eloy', 'Sanchez Alvarado', 'jusanchez@gmail.com', '$2y$10$r2kCgD4Y5Dsx4oLOsceo5eu.b.7QDh/RHeIwebIKldhGSEXlomo9a', 'Activo', '2022-01-29 00:44:42', '2022-01-29 00:44:42'),
(57, '521362454', 'Pepito Gabriel', 'Saltos Campos', 'ppsaltos@fae.mil.ec', '$2y$10$Y.dDK1CIZd3EGlsnsFJNFe1bUlycnQ9h1hvVWaSq8FoAJhZ4.YUCi', 'Activo', '2022-01-29 00:51:49', '2022-01-29 00:51:49'),
(58, '1597521445', 'Edwin Andres', 'Sanz San', 'esanz@gmail.com', '$2y$10$X7iLgg7cNPAf3IJ.iHcS.e86IyzpSdFrz/0SvIm2FR/Y4ntcEAsOq', 'Activo', '2022-02-08 01:58:51', '2022-02-15 08:07:12'),
(59, '154545', 'Edwssssssssss', 'ssss', 'adminsssss@gmail.com', '$2y$10$LQUT6iVzCjPtEWJWF/LCReVvjQfH4gdXSqRHzSdsCUbmtcFeZ2Nuq', 'Activo', '2022-02-08 03:41:21', '2022-02-08 03:47:19'),
(60, '13231232', 'Sasasa', 'pqeuqwwqqww', 'tradoewqer@gmail.com', '$2y$10$GrIlzSBVkn5Gk1a7rnHBaOQ8HWLF0INEM3tFKNWSW1Bp54APq0joS', 'Activo', '2022-02-08 03:43:38', '2022-02-16 01:25:01'),
(61, '45555', '55555', '5555', 'adm555in@gmail.com', '$2y$10$Ia3ojxxxcqR5GeU8GrOlDeSPi7Z7gCcOwveNTk51YirITwciZr1Ja', 'Activo', '2022-02-08 03:51:57', '2022-02-08 03:51:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumnos_especialidad_id_foreign` (`especialidad_id`),
  ADD KEY `alumnos_tiposangre_id_foreign` (`tiposangre_id`),
  ADD KEY `alumnos_tipogrado_id_foreign` (`tipogrado_id`),
  ADD KEY `alumnos_reparto_id_foreign` (`reparto_id`);

--
-- Indices de la tabla `asignadocs`
--
ALTER TABLE `asignadocs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignadocs_docente_id_foreign` (`docente_id`),
  ADD KEY `asignadocs_periodo_id_foreign` (`periodo_id`),
  ADD KEY `asignadocs_seccion_id_foreign` (`seccion_id`),
  ADD KEY `asignadocs_materia_id_foreign` (`materia_id`),
  ADD KEY `asignadocs_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aux_promedio_curso`
--
ALTER TABLE `aux_promedio_curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursos_ejecurso_id_foreign` (`ejecurso_id`),
  ADD KEY `cursos_tipocurso_id_foreign` (`tipocurso_id`);

--
-- Indices de la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  ADD KEY `curso_materia_materia_id_foreign` (`materia_id`),
  ADD KEY `curso_materia_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `detalplanevas`
--
ALTER TABLE `detalplanevas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalplanevas_planeva_id_foreign` (`planeva_id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docentes_tiposangre_id_foreign` (`tiposangre_id`),
  ADD KEY `docentes_tipogrado_id_foreign` (`tipogrado_id`),
  ADD KEY `docentes_especialidad_id_foreign` (`especialidad_id`),
  ADD KEY `docentes_reparto_id_foreign` (`reparto_id`);

--
-- Indices de la tabla `ejecursos`
--
ALTER TABLE `ejecursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidads`
--
ALTER TABLE `especialidads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluacions`
--
ALTER TABLE `evaluacions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluacions_alumno_id_foreign` (`alumno_id`),
  ADD KEY `evaluacions_periodo_id_foreign` (`periodo_id`),
  ADD KEY `evaluacions_materia_id_foreign` (`materia_id`),
  ADD KEY `evaluacions_detalplaneva_id_foreign` (`detalplaneva_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriculas_periodo_id_foreign` (`periodo_id`),
  ADD KEY `matriculas_alumno_id_foreign` (`alumno_id`),
  ADD KEY `matriculas_curso_id_foreign` (`curso_id`),
  ADD KEY `matriculas_seccion_id_foreign` (`seccion_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modalidadcursos`
--
ALTER TABLE `modalidadcursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `pie_reporte`
--
ALTER TABLE `pie_reporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planestudios`
--
ALTER TABLE `planestudios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planestudios_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `planevas`
--
ALTER TABLE `planevas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planevas_docente_id_foreign` (`docente_id`),
  ADD KEY `planevas_periodo_id_foreign` (`periodo_id`),
  ADD KEY `planevas_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `porcentaje_notas`
--
ALTER TABLE `porcentaje_notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promedio_materia`
--
ALTER TABLE `promedio_materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rango_promedio`
--
ALTER TABLE `rango_promedio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repartos`
--
ALTER TABLE `repartos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccions`
--
ALTER TABLE `seccions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipocursos`
--
ALTER TABLE `tipocursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipogrados`
--
ALTER TABLE `tipogrados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiposangres`
--
ALTER TABLE `tiposangres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `asignadocs`
--
ALTER TABLE `asignadocs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `aux_promedio_curso`
--
ALTER TABLE `aux_promedio_curso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalplanevas`
--
ALTER TABLE `detalplanevas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `ejecursos`
--
ALTER TABLE `ejecursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `especialidads`
--
ALTER TABLE `especialidads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `evaluacions`
--
ALTER TABLE `evaluacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=640;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `modalidadcursos`
--
ALTER TABLE `modalidadcursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pie_reporte`
--
ALTER TABLE `pie_reporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `planestudios`
--
ALTER TABLE `planestudios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planevas`
--
ALTER TABLE `planevas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de la tabla `porcentaje_notas`
--
ALTER TABLE `porcentaje_notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `promedio_materia`
--
ALTER TABLE `promedio_materia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `rango_promedio`
--
ALTER TABLE `rango_promedio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `repartos`
--
ALTER TABLE `repartos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `seccions`
--
ALTER TABLE `seccions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipocursos`
--
ALTER TABLE `tipocursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipogrados`
--
ALTER TABLE `tipogrados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tiposangres`
--
ALTER TABLE `tiposangres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_especialidad_id_foreign` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidads` (`id`),
  ADD CONSTRAINT `alumnos_reparto_id_foreign` FOREIGN KEY (`reparto_id`) REFERENCES `repartos` (`id`),
  ADD CONSTRAINT `alumnos_tipogrado_id_foreign` FOREIGN KEY (`tipogrado_id`) REFERENCES `tipogrados` (`id`),
  ADD CONSTRAINT `alumnos_tiposangre_id_foreign` FOREIGN KEY (`tiposangre_id`) REFERENCES `tiposangres` (`id`);

--
-- Filtros para la tabla `asignadocs`
--
ALTER TABLE `asignadocs`
  ADD CONSTRAINT `asignadocs_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`),
  ADD CONSTRAINT `asignadocs_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`),
  ADD CONSTRAINT `asignadocs_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `asignadocs_periodo_id_foreign` FOREIGN KEY (`periodo_id`) REFERENCES `periodos` (`id`),
  ADD CONSTRAINT `asignadocs_seccion_id_foreign` FOREIGN KEY (`seccion_id`) REFERENCES `seccions` (`id`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ejecurso_id_foreign` FOREIGN KEY (`ejecurso_id`) REFERENCES `ejecursos` (`id`),
  ADD CONSTRAINT `cursos_tipocurso_id_foreign` FOREIGN KEY (`tipocurso_id`) REFERENCES `tipocursos` (`id`);

--
-- Filtros para la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  ADD CONSTRAINT `curso_materia_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `curso_materia_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalplanevas`
--
ALTER TABLE `detalplanevas`
  ADD CONSTRAINT `detalplanevas_planeva_id_foreign` FOREIGN KEY (`planeva_id`) REFERENCES `planevas` (`id`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_especialidad_id_foreign` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidads` (`id`),
  ADD CONSTRAINT `docentes_reparto_id_foreign` FOREIGN KEY (`reparto_id`) REFERENCES `repartos` (`id`),
  ADD CONSTRAINT `docentes_tipogrado_id_foreign` FOREIGN KEY (`tipogrado_id`) REFERENCES `tipogrados` (`id`),
  ADD CONSTRAINT `docentes_tiposangre_id_foreign` FOREIGN KEY (`tiposangre_id`) REFERENCES `tiposangres` (`id`);

--
-- Filtros para la tabla `evaluacions`
--
ALTER TABLE `evaluacions`
  ADD CONSTRAINT `evaluacions_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `evaluacions_detalplaneva_id_foreign` FOREIGN KEY (`detalplaneva_id`) REFERENCES `detalplanevas` (`id`),
  ADD CONSTRAINT `evaluacions_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `evaluacions_periodo_id_foreign` FOREIGN KEY (`periodo_id`) REFERENCES `periodos` (`id`);

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `matriculas_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `matriculas_periodo_id_foreign` FOREIGN KEY (`periodo_id`) REFERENCES `periodos` (`id`),
  ADD CONSTRAINT `matriculas_seccion_id_foreign` FOREIGN KEY (`seccion_id`) REFERENCES `seccions` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `planestudios`
--
ALTER TABLE `planestudios`
  ADD CONSTRAINT `planestudios_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `planevas`
--
ALTER TABLE `planevas`
  ADD CONSTRAINT `planevas_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`),
  ADD CONSTRAINT `planevas_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `planevas_periodo_id_foreign` FOREIGN KEY (`periodo_id`) REFERENCES `periodos` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
