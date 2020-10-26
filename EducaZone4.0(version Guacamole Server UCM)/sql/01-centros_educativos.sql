-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2020 a las 23:18:50
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `centros_educativos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `usuario`, `password`, `foto`) VALUES
(1, 'admin', '$2y$10$Dquj6pJN/TfCa4A6SFsURulPdQW/oRlYfe7YzlaLGORGDrRI50V5S', 'img\\avatar.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `DNI` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `id_centro` int(11) UNSIGNED NOT NULL,
  `id_clase` int(11) UNSIGNED NOT NULL,
  `observaciones_medicas` varchar(200) DEFAULT NULL,
  `id_tutor_legal` int(10) UNSIGNED DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_calificaciones` int(11) UNSIGNED NOT NULL,
  `foto` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`DNI`, `nombre`, `apellido1`, `apellido2`, `id_centro`, `id_clase`, `observaciones_medicas`, `id_tutor_legal`, `fecha_nacimiento`, `id_calificaciones`, `foto`) VALUES
('00822109C', 'Rosmira', 'Frías', 'Carvajal', 41000405, 7, 'Trastorno obsesivo-compulsivo (TOC)', NULL, '2004-05-20', 11, 'img\\users\\alumnos\\rosmira.jpg'),
('01864521A', 'Alumine', 'Nieves', 'Salcedo', 50000151, 14, NULL, NULL, '2006-03-14', 15, 'img\\users\\alumnos\\alumine.jpg'),
('13586449G', 'Memmon', 'Crespo', 'Nieto', 8039598, 18, NULL, NULL, '2006-03-04', 5, 'img\\users\\alumnos\\memmon.jpg'),
('13902147G', 'Inmaculada', 'Campos', 'Alcalá', 8039598, 19, 'Trastorno obsesivo-compulsivo (TOC)', NULL, '2006-05-01', 17, 'img\\users\\alumnos\\inmaculada.jpg'),
('15700350K', 'Alanis', 'Ibarra', 'Padrón', 28047551, 17, NULL, 2, '2003-07-05', 12, 'img\\users\\alumnos\\alanis.jpg'),
('16352963D', 'Solano', 'Rocha', 'Cedillo', 50000151, 14, NULL, 3, '2006-11-22', 8, 'img\\users\\alumnos\\solano.jpg'),
('16512408H', 'Sebasten', 'Armendáriz', 'Maldonado', 41000405, 13, ' Anafilaxia', NULL, '2004-11-19', 18, 'img\\users\\alumnos\\sebasten.jpg'),
('16627162W', 'Rayen', 'Sánchez', 'Marín', 28047551, 17, 'Presenta reacciones alérgicas a los frutos secos.', 4, '2003-11-11', 3, 'img\\users\\alumnos\\rayen.jpg'),
('20171515D', 'Meinard', 'Mesa', 'Ulloa', 28047551, 17, NULL, NULL, '2003-06-12', 4, 'img\\users\\alumnos\\meinard.jpg'),
('21503333N', 'Zohar', 'Núñez', 'Ozuna', 8039598, 19, NULL, 5, '2005-12-13', 26, 'img\\users\\alumnos\\zohar.jpg'),
('25952332Y', 'Laodicea', 'Cabán', 'Roque', 50000151, 15, NULL, NULL, '2002-08-09', 20, 'img\\users\\alumnos\\laodicea.jpg'),
('25988953B', 'Munir', 'Árias', 'Regalado', 50000151, 16, NULL, 6, '2006-07-10', 19, 'img\\users\\alumnos\\munir.jpg'),
('27036756A', 'Abram', 'Archuleta', 'Vanegas', 41000405, 8, NULL, NULL, '2005-08-09', 16, 'img\\users\\alumnos\\abram.jpg'),
('31123104X', 'Aracely', 'Angulo', 'Rael', 8039598, 19, NULL, NULL, '2006-01-02', 27, 'img\\users\\alumnos\\aracely.jpg'),
('31631695W', 'Xaviera', 'Amaya', 'Hernández', 28070913, 12, '', 7, '2002-05-20', 14, 'img\\users\\alumnos\\xaviera.jpg'),
('37071162S', 'Neus', 'Benavides', 'Bustos', 41000405, 8, NULL, 10, '2005-05-17', 22, 'img\\users\\alumnos\\neus.jpg'),
('38067105N', 'Atanasio', 'Medrano', 'Villareal', 50000151, 16, NULL, NULL, '2006-10-20', 30, 'img\\users\\alumnos\\atanasio.jpg'),
('38946295G', 'Antígona', 'Rosas', 'Vázquez', 28070913, 12, NULL, NULL, '2002-11-19', 6, 'img\\users\\alumnos\\antigona.jpg'),
('42893072G', 'Nicholai', 'Rivero', 'Fernández', 28070913, 12, 'Presenta reacciones alérgicas a los anacardos y almendras', NULL, '2002-03-04', 7, 'img\\users\\alumnos\\nicholai.jpg'),
('43018009M', 'Horaz', 'Otero', 'Espinosa', 50000151, 16, NULL, 8, '2006-04-17', 31, 'img\\users\\alumnos\\horaz.jpg'),
('43874001Y', 'Otilio', 'Jimínez', 'Mejía', 8039598, 19, NULL, NULL, '2005-09-08', 28, 'img\\users\\alumnos\\otilio.jpg'),
('44138671S', 'Pío', 'Colunga', 'Bernal', 50000151, 16, NULL, NULL, '2006-06-10', 32, 'img\\users\\alumnos\\pio.jpg'),
('45730731S', 'Laviana', 'Leyva', 'Guerrero', 41000405, 8, NULL, 9, '2005-09-17', 23, 'img\\users\\alumnos\\laviana.jpg'),
('51195336G', 'Morfeo', 'Calvillo', 'Padilla', 41000405, 8, NULL, NULL, '2005-07-19', 24, 'img\\users\\alumnos\\morfeo.jpg'),
('52983179B', 'Orestes', 'Chapa', 'Badillo', 50000151, 16, NULL, NULL, '2007-04-20', 33, 'img\\users\\alumnos\\orestes.jpg'),
('53389278E', 'Dara', 'Tamayo', 'Aguirre', 41000405, 13, ' Síndrome de alargia oral.', NULL, '2004-03-04', 29, 'img\\users\\alumnos\\dara.jpg'),
('61063539B', 'Antonella', 'Cisneros', 'Mares', 41000405, 8, NULL, NULL, '2005-04-04', 25, 'img\\users\\alumnos\\antonella.jpg'),
('64609317V', 'Carmen', 'Mercado', 'Canales', 50000151, 15, NULL, NULL, '2003-01-31', 34, 'img\\users\\alumnos\\carmen.jpg'),
('65619270V', 'Lucas', 'Benavidez', 'Madrid', 50000151, 14, NULL, NULL, '2006-03-07', 9, 'img\\users\\alumnos\\lucas.jpg'),
('77595539W', 'Tara', 'Cristobal', 'Fernández', 50000151, 14, NULL, 1, '2006-11-19', 10, 'img\\users\\alumnos\\tara.jpg'),
('78678320N', 'Oscar', 'Cristobal', 'Fernández', 41000405, 7, 'Presenta reacciones alérgicas a los frutos secos.', 1, '2004-03-04', 1, 'img\\users\\alumnos\\oscar.jpg'),
('82413678D', 'Olalla', 'Porras', 'Rolón', 50000151, 15, NULL, 11, '2004-12-13', 35, 'img\\users\\alumnos\\olalla.jpg'),
('86512991D', 'Privato', 'Corral', 'Rojas', 41000405, 7, NULL, NULL, '2004-11-19', 2, 'img\\users\\alumnos\\privato.jpg'),
('88962348G', 'Candela', 'Quiñones', 'Aguilera', 50000151, 15, NULL, NULL, '2004-08-20', 36, 'img\\users\\alumnos\\candela.jpg'),
('92125571Z', 'Adamo', 'Zepeda', 'Altamirano', 8039598, 18, 'Trastorno obsesivo-compulsivo (TOC)', NULL, '2006-05-20', 13, 'img\\users\\alumnos\\adamo.jpg'),
('94374398Q', 'Romanela', 'Alarcón', 'Villaseñor', 50000151, 14, NULL, 12, '2006-08-26', 21, 'img\\users\\alumnos\\romanela.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos_foro`
--

CREATE TABLE `archivos_foro` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_foro` int(11) UNSIGNED NOT NULL,
  `nombre_archivo` varchar(30) NOT NULL,
  `tamano_archivo` int(11) UNSIGNED NOT NULL,
  `archivo` varchar(80) NOT NULL,
  `tipo_archivo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `archivos_foro`
--

INSERT INTO `archivos_foro` (`id`, `id_foro`, `nombre_archivo`, `tamano_archivo`, `archivo`, `tipo_archivo`) VALUES
(1, 1, 'metodos_pago.txt', 27, './archivos/metodos_pago.txt', 'text/plain'),
(2, 2, 'lechugas.jpg', 1570671, './archivos/lechugas.jpg', 'image/jpeg'),
(3, 2, 'nina.jpg', 1126873, './archivos/nina.jpg', 'image/jpeg'),
(4, 2, 'poster.jpg', 61033, './archivos/poster.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_profesor` int(11) UNSIGNED NOT NULL,
  `nombre_asignatura` varchar(20) NOT NULL,
  `lunes_inicio` time DEFAULT NULL,
  `lunes_fin` time DEFAULT NULL,
  `martes_inicio` time DEFAULT NULL,
  `martes_fin` time DEFAULT NULL,
  `miercoles_inicio` time DEFAULT NULL,
  `miercoles_fin` time DEFAULT NULL,
  `jueves_inicio` time DEFAULT NULL,
  `jueves_fin` time DEFAULT NULL,
  `viernes_inicio` time DEFAULT NULL,
  `viernes_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `id_profesor`, `nombre_asignatura`, `lunes_inicio`, `lunes_fin`, `martes_inicio`, `martes_fin`, `miercoles_inicio`, `miercoles_fin`, `jueves_inicio`, `jueves_fin`, `viernes_inicio`, `viernes_fin`) VALUES
(1, 1, 'Matemáticas', '09:00:00', '11:00:00', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', '13:00:00', '14:00:00'),
(2, 1, 'Física', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '09:00:00', '11:00:00'),
(3, 8, 'Lengua', '11:00:00', '13:00:00', '09:00:00', '11:00:00', '13:00:00', '14:00:00', NULL, NULL, NULL, NULL),
(4, 22, 'Historia', '14:00:00', '15:00:00', NULL, NULL, NULL, NULL, '09:00:00', '11:00:00', NULL, NULL),
(5, 22, 'Educación Física', NULL, NULL, '14:00:00', '15:00:00', NULL, NULL, '13:00:00', '14:00:00', NULL, NULL),
(6, 23, 'Inglés', NULL, NULL, '11:00:00', '13:00:00', '09:00:00', '11:00:00', NULL, NULL, '11:00:00', '13:00:00'),
(7, 6, 'Inglés', '15:00:00', '16:00:00', NULL, NULL, '13:00:00', '14:00:00', NULL, NULL, '13:00:00', '14:00:00'),
(8, 6, 'Educación Física', '09:00:00', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '15:00:00', '16:00:00'),
(9, 25, 'Física', '11:00:00', '13:00:00', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL),
(10, 25, 'Matemáticas', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '09:00:00', '11:00:00', '11:00:00', '13:00:00'),
(11, 24, 'Lengua', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '09:00:00', '11:00:00'),
(12, 24, 'Historia', NULL, NULL, '09:00:00', '11:00:00', '09:00:00', '11:00:00', '13:00:00', '14:00:00', NULL, NULL),
(13, 2, 'Inglés', '11:00:00', '13:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '11:00:00', '13:00:00'),
(14, 20, 'Lengua', '09:00:00', '11:00:00', NULL, NULL, '13:00:00', '14:00:00', '09:00:00', '11:00:00', NULL, NULL),
(15, 9, 'Matemáticas', '13:00:00', '14:00:00', '13:00:00', '14:00:00', NULL, NULL, NULL, NULL, '13:00:00', '14:00:00'),
(16, 16, 'Física', '14:00:00', '15:00:00', '11:00:00', '13:00:00', NULL, NULL, '13:00:00', '14:00:00', NULL, NULL),
(17, 17, 'Educación Física', NULL, NULL, '14:00:00', '15:00:00', '09:00:00', '11:00:00', NULL, NULL, NULL, NULL),
(18, 21, 'Historia', NULL, NULL, '09:00:00', '11:00:00', '14:00:00', '15:00:00', '11:00:00', '13:00:00', '09:00:00', '11:00:00'),
(19, 26, 'Matemáticas', '11:00:00', '12:00:00', '09:00:00', '10:00:00', '12:00:00', '13:00:00', '10:00:00', '11:00:00', '10:00:00', '11:00:00'),
(20, 26, 'Física', '10:00:00', '11:00:00', '12:00:00', NULL, NULL, NULL, '13:00:00', '14:00:00', '11:00:00', '12:00:00'),
(21, 27, 'Lengua', '09:00:00', '10:00:00', '11:00:00', '12:00:00', NULL, NULL, '12:00:00', '13:00:00', '09:00:00', '10:00:00'),
(22, 27, 'Historia', '13:00:00', '14:00:00', '13:00:00', '14:00:00', '10:00:00', '11:00:00', NULL, NULL, NULL, NULL),
(23, 3, 'Inglés', '12:00:00', '13:00:00', '10:00:00', '11:00:00', '11:00:00', '12:00:00', '11:00:00', '12:00:00', NULL, NULL),
(24, 3, 'Educación Física', NULL, NULL, NULL, NULL, '09:00:00', '10:00:00', '09:00:00', '10:00:00', '12:00:00', '13:00:00'),
(25, 28, 'Lengua', NULL, NULL, '12:00:00', '13:00:00', '11:00:00', '12:00:00', NULL, NULL, '11:00:00', '12:00:00'),
(26, 28, 'Historia', '09:00:00', '10:00:00', '09:00:00', '10:00:00', NULL, NULL, '12:00:00', '13:00:00', '10:00:00', '11:00:00'),
(27, 29, 'Educación Física', '13:00:00', '14:00:00', NULL, NULL, '12:00:00', '13:00:00', NULL, NULL, '09:00:00', '10:00:00'),
(28, 30, 'Inglés', '12:00:00', '13:00:00', '10:00:00', '11:00:00', NULL, NULL, '09:00:00', '10:00:00', '12:00:00', '13:00:00'),
(29, 4, 'Matemáticas', '10:00:00', '11:00:00', '11:00:00', '12:00:00', '10:00:00', '11:00:00', '11:00:00', '12:00:00', NULL, NULL),
(30, 4, 'Física', '11:00:00', '12:00:00', '13:00:00', '14:00:00', '09:00:00', '10:00:00', '10:00:00', '11:00:00', NULL, NULL),
(31, 8, 'Lengua', NULL, NULL, '12:00:00', '13:00:00', '11:00:00', '12:00:00', NULL, NULL, '11:00:00', '12:00:00'),
(32, 22, 'Historia', '09:00:00', '10:00:00', '09:00:00', '10:00:00', NULL, NULL, '12:00:00', '13:00:00', '10:00:00', '11:00:00'),
(33, 22, 'Educación Física', '13:00:00', '14:00:00', NULL, NULL, '12:00:00', '13:00:00', NULL, NULL, '09:00:00', '10:00:00'),
(34, 23, 'Inglés', '12:00:00', '13:00:00', '10:00:00', '11:00:00', NULL, NULL, '09:00:00', '10:00:00', '12:00:00', '13:00:00'),
(35, 1, 'Matemáticas', '10:00:00', '11:00:00', '11:00:00', '12:00:00', '10:00:00', '11:00:00', '11:00:00', '12:00:00', NULL, NULL),
(36, 1, 'Física', '11:00:00', '12:00:00', '13:00:00', '14:00:00', '09:00:00', '10:00:00', '10:00:00', '11:00:00', NULL, NULL),
(37, 9, 'Matemáticas', '11:00:00', '12:00:00', '09:00:00', '10:00:00', '12:00:00', '13:00:00', '10:00:00', '11:00:00', '10:00:00', '11:00:00'),
(38, 16, 'Física', '10:00:00', '11:00:00', '12:00:00', NULL, NULL, NULL, '13:00:00', '14:00:00', '11:00:00', '12:00:00'),
(39, 20, 'Lengua', '09:00:00', '10:00:00', '11:00:00', '12:00:00', NULL, NULL, '12:00:00', '13:00:00', '09:00:00', '10:00:00'),
(40, 21, 'Historia', '13:00:00', '14:00:00', '13:00:00', '14:00:00', '10:00:00', '11:00:00', NULL, NULL, NULL, NULL),
(41, 2, 'Inglés', '12:00:00', '13:00:00', '10:00:00', '11:00:00', '11:00:00', '12:00:00', '11:00:00', '12:00:00', NULL, NULL),
(42, 17, 'Educación Física', NULL, NULL, NULL, NULL, '09:00:00', '10:00:00', '09:00:00', '10:00:00', '12:00:00', '13:00:00'),
(43, 23, 'Inglés', '15:00:00', '16:00:00', NULL, NULL, '13:00:00', '14:00:00', NULL, NULL, '13:00:00', '14:00:00'),
(44, 22, 'Educación Física', '09:00:00', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '15:00:00', '16:00:00'),
(45, 1, 'Física', '11:00:00', '13:00:00', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL),
(46, 1, 'Matemáticas', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '09:00:00', '11:00:00', '11:00:00', '13:00:00'),
(47, 8, 'Lengua', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '09:00:00', '11:00:00'),
(48, 22, 'Historia', NULL, NULL, '09:00:00', '11:00:00', '09:00:00', '11:00:00', '13:00:00', '14:00:00', NULL, NULL),
(49, 30, 'Inglés', '11:00:00', '13:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '11:00:00', '13:00:00'),
(50, 28, 'Lengua', '09:00:00', '11:00:00', NULL, NULL, '13:00:00', '14:00:00', '09:00:00', '11:00:00', NULL, NULL),
(51, 4, 'Matemáticas', '13:00:00', '14:00:00', '13:00:00', '14:00:00', NULL, NULL, NULL, NULL, '13:00:00', '14:00:00'),
(52, 4, 'Física', '14:00:00', '15:00:00', '11:00:00', '13:00:00', NULL, NULL, '13:00:00', '14:00:00', NULL, NULL),
(53, 29, 'Educación Física', NULL, NULL, '14:00:00', '15:00:00', '09:00:00', '11:00:00', NULL, NULL, NULL, NULL),
(54, 28, 'Historia', NULL, NULL, '09:00:00', '11:00:00', '14:00:00', '15:00:00', '11:00:00', '13:00:00', '09:00:00', '11:00:00'),
(55, 4, 'Matemáticas', '09:00:00', '11:00:00', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', '13:00:00', '14:00:00'),
(56, 4, 'Física', '13:00:00', '14:00:00', NULL, NULL, '11:00:00', '13:00:00', NULL, NULL, '09:00:00', '11:00:00'),
(57, 28, 'Lengua', '11:00:00', '13:00:00', '09:00:00', '11:00:00', '13:00:00', '14:00:00', NULL, NULL, NULL, NULL),
(58, 28, 'Historia', '14:00:00', '15:00:00', NULL, NULL, NULL, NULL, '09:00:00', '11:00:00', NULL, NULL),
(59, 29, 'Educación Física', NULL, NULL, '14:00:00', '15:00:00', NULL, NULL, '13:00:00', '14:00:00', NULL, NULL),
(60, 30, 'Inglés', NULL, NULL, '11:00:00', '13:00:00', '09:00:00', '11:00:00', NULL, NULL, '11:00:00', '13:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_asignatura1` int(11) UNSIGNED NOT NULL,
  `nota1` double UNSIGNED DEFAULT NULL,
  `id_asignatura2` int(11) UNSIGNED NOT NULL,
  `nota2` double UNSIGNED DEFAULT NULL,
  `id_asignatura3` int(11) UNSIGNED NOT NULL,
  `nota3` double UNSIGNED DEFAULT NULL,
  `id_asignatura4` int(11) UNSIGNED NOT NULL,
  `nota4` double UNSIGNED DEFAULT NULL,
  `id_asignatura5` int(11) UNSIGNED NOT NULL,
  `nota5` double UNSIGNED DEFAULT NULL,
  `id_asignatura6` int(11) UNSIGNED NOT NULL,
  `nota6` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `id_asignatura1`, `nota1`, `id_asignatura2`, `nota2`, `id_asignatura3`, `nota3`, `id_asignatura4`, `nota4`, `id_asignatura5`, `nota5`, `id_asignatura6`, `nota6`) VALUES
(1, 1, 4, 2, 6, 3, 7, 4, 8, 5, 7, 6, 7),
(2, 1, 4, 2, 8.3, 3, 5, 4, 7, 5, 2, 6, 4),
(3, 7, 5, 8, 5, 9, 1, 10, 9, 11, 6, 12, 5),
(4, 7, 8, 8, 4.3, 9, 7.9, 10, 2.8, 11, 6, 12, 7),
(5, 13, 9.2, 14, 3.4, 15, 5, 16, 3, 17, 8, 18, 1),
(6, 19, 7.3, 20, 5.5, 21, 6, 22, 7, 23, 7, 24, 4),
(7, 19, 6.7, 20, 3.4, 21, 8, 22, 9, 23, 6, 24, 9),
(8, 25, 10, 26, 7, 27, 5, 28, 8.5, 29, 9, 30, 10),
(9, 25, 5.7, 26, 3.6, 27, 9.6, 28, 7, 29, 8, 30, 2),
(10, 25, 7, 26, 6, 27, 9, 28, 4, 29, 7, 30, 2),
(11, 1, 5.8, 2, 3, 3, 7, 4, 5, 5, 8, 6, 2),
(12, 7, 6.9, 8, 2.5, 9, 4.9, 10, 5.3, 11, 7.8, 12, 9),
(13, 13, 2, 14, 6, 15, 5, 16, 8, 17, 7, 18, 9),
(14, 19, 9, 20, 7, 21, 5, 22, 3, 23, 2, 24, 7),
(15, 25, 5, 26, 8, 27, 3, 28, 7, 29, 9, 30, 2),
(16, 31, 7, 32, 7.9, 33, 4, 34, 7, 35, 9, 36, 3),
(17, 37, 7, 38, 3, 39, 5, 40, 9, 41, 7, 42, 3),
(18, 43, 2, 44, 5, 45, 5, 46, 5, 47, 8, 48, 9),
(19, 49, 5.3, 50, 8.6, 51, 6, 52, 6, 53, 4, 54, 7.2),
(20, 55, 4.2, 56, 7.4, 57, 4, 58, 6, 59, 8, 60, 4),
(21, 25, 5, 26, 6, 27, 5, 28, 8, 29, 5, 30, 3),
(22, 31, 6, 32, 8, 33, 4, 34, 3, 35, 4, 36, 2.75),
(23, 31, 8, 32, 3, 33, 6, 34, 8, 35, 4, 36, 6),
(24, 31, 5, 32, 7.2, 33, 7, 34, 9, 35, 4, 36, 4),
(25, 31, 6.3, 32, 7, 33, 5.2, 34, 6, 35, 2, 36, 4),
(26, 37, 7, 38, 3, 39, 8, 40, 5, 41, 8, 42, 9),
(27, 37, 7, 38, 4, 39, 8, 40, 4, 41, 8.8, 42, 0),
(28, 37, 2, 38, 6, 39, 8, 40, 3, 41, 8, 42, 9),
(29, 43, 5, 44, 4, 45, 6, 46, 5, 47, 7, 48, 3),
(30, 49, 5, 50, 7, 51, 5, 52, 6, 53, 9, 54, 7),
(31, 49, 3, 50, 5, 51, 8, 52, 6, 53, 3, 54, 2),
(32, 49, 0, 50, 6, 51, 5, 52, 8, 53, 6, 54, 4),
(33, 49, 8.7, 50, 3.2, 51, 5, 52, 5.4, 53, 6, 54, 5),
(34, 55, 5, 56, 6, 57, 7.9, 58, 3, 59, 6, 60, 6),
(35, 55, 4.3, 56, 5.6, 57, 8.4, 58, 4.4, 59, 0, 60, 8),
(36, 55, 6.4, 56, 6, 57, 7, 58, 3, 59, 5, 60, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centros`
--

CREATE TABLE `centros` (
  `id` int(8) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `provincia` varchar(40) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `centros`
--

INSERT INTO `centros` (`id`, `nombre`, `provincia`, `direccion`, `telefono`, `email`) VALUES
(8039598, 'Escola Sant Miquel del Cros', 'Barcelona', 'Av. del Mediterrani, 08310', '937993951', 'a8039598@xtec.cat'),
(28047551, 'CEIP Agua Dulce', 'Madrid', 'Calle De Leñeros 25, 28039', '914594049', 'eei.aguadulce.madrid@educa.madrid.org'),
(28070913, 'Colegio Amanecer', 'Madrid', 'Calle Del Titanio 7, 28032', '917765069', 'eei.amanecer.madrid@educa.madrid.org'),
(41000405, 'IES Miguel de Cervantes', 'Sevilla', 'Virgen del Consuelo 26, 41449', '955649736', '41000405.edu@juntadeandalucia.es'),
(50000151, 'Nuestra Señora del Castillo', 'Zaragoza', 'Avenida de la Portalada 39, 50630', '976610290', 'nscastillo@nscastillo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(4) UNSIGNED NOT NULL,
  `curso` int(1) UNSIGNED NOT NULL,
  `letra` varchar(1) NOT NULL,
  `titulacion` varchar(20) NOT NULL,
  `id_tutor_clase` int(11) UNSIGNED NOT NULL,
  `numero_alumnos` int(2) UNSIGNED NOT NULL,
  `id_asignatura1` int(11) UNSIGNED NOT NULL,
  `id_asignatura2` int(11) UNSIGNED NOT NULL,
  `id_asignatura3` int(11) UNSIGNED NOT NULL,
  `id_asignatura4` int(11) UNSIGNED NOT NULL,
  `id_asignatura5` int(11) UNSIGNED NOT NULL,
  `id_asignatura6` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `curso`, `letra`, `titulacion`, `id_tutor_clase`, `numero_alumnos`, `id_asignatura1`, `id_asignatura2`, `id_asignatura3`, `id_asignatura4`, `id_asignatura5`, `id_asignatura6`) VALUES
(7, 3, 'A', 'ESO', 8, 3, 1, 2, 3, 4, 5, 6),
(8, 3, 'B', 'ESO', 1, 5, 31, 32, 33, 34, 35, 36),
(12, 1, 'C', 'BACHILLERATO', 26, 3, 19, 20, 21, 22, 23, 24),
(13, 4, 'C', 'ESO', 22, 2, 43, 44, 45, 46, 47, 48),
(14, 2, 'A', 'ESO', 4, 5, 25, 26, 27, 28, 29, 30),
(15, 1, 'B', 'ESO', 28, 4, 49, 50, 51, 52, 53, 54),
(16, 1, 'C', 'ESO', 29, 5, 55, 56, 57, 58, 59, 60),
(17, 2, 'B', 'BACHILLERATO', 24, 3, 7, 8, 9, 10, 11, 12),
(18, 1, 'D', 'ESO', 9, 2, 13, 14, 15, 16, 17, 18),
(19, 1, 'D', 'BACHILLERATO', 21, 4, 37, 38, 39, 40, 41, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_de_acceso`
--

CREATE TABLE `codigos_de_acceso` (
  `codigo` varchar(20) NOT NULL,
  `id_centro` int(11) UNSIGNED NOT NULL,
  `id_alumnos` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `codigos_de_acceso`
--

INSERT INTO `codigos_de_acceso` (`codigo`, `id_centro`, `id_alumnos`) VALUES
('6D9MSNV56UPL44J3CDPP', 41000405, '00822109C'),
('LFVZLZR2D8SURTUQU9FG', 50000151, '01864521A'),
('4FT3XAKQJ5FRFU7NGQ2D', 8039598, '13586449G'),
('3M43LCY2ZFHPXUZ6JT69', 8039598, '13902147G'),
('9U9R6L6MKA7HLWWJD86M', 28047551, '15700350K'),
('8NJAT4SKQGGP9S6VNKTJ', 50000151, '16352963D'),
('WMC9JPV2GYBDYK6Y28KX', 41000405, '16512408H'),
('ZSRP58FANGALRUNXCYNF', 28047551, '16627162W'),
('853GG8ATJ656RND8LNMJ', 28047551, '20171515D'),
('WCKZ3DHWPFTZ8TB946RC', 8039598, '21503333N'),
('A8QPJ2WGFWG3KUMAULQ9', 50000151, '25952332Y'),
('C7BGQV77FMRZG75SMCCF', 50000151, '25988953B'),
('4EWWTCYLPF8337Q5S37G', 41000405, '27036756A'),
('NHF28KQTE8ZHWUEHTNZ9', 8039598, '31123104X'),
('4DVUE8AWWBZTCPRYDD7D', 28070913, '31631695W'),
('84SJQQKX95WTA7NZKG9X', 41000405, '37071162S'),
('8K8CJFN8LFS7H22JD75M', 50000151, '38067105N'),
('GMGTMNAM4R2GXX5HP5NT', 28070913, '38946295G'),
('366ZMTZJT99QCSC9P3A5', 28070913, '42893072G'),
('PZEARP8PV54RL3977QMK', 50000151, '43018009M'),
('JSP7DVH7NG89WN2GAR4C', 8039598, '43874001Y'),
('VAZDRZHQ8QSZLKZG3CUF', 50000151, '44138671S'),
('NQVDK7RW7AK3N8RV6FME', 41000405, '45730731S'),
('DGTWUYS8WRYAGKL3M6GQ', 41000405, '51195336G'),
('FATX7ZJZ7GTJQNKPE9TR', 50000151, '52983179B'),
('PWBSKTC5U55JKP5CSSM8', 41000405, '53389278E'),
('VXVRFNLXQTVB5SKS7M24', 41000405, '61063539B'),
('9V7DG4P3C37JL4F4NYM2', 50000151, '64609317V'),
('8EWZMV9HGR5EYP9Q3GG7', 50000151, '65619270V'),
('4ZQ68MSUTDUZF5ZVVCWB', 50000151, '77595539W'),
('V8MX4KWK4B4DYWSE57NH', 41000405, '78678320N'),
('ZMA2QFF7FLQX9K5L7XVU', 50000151, '82413678D'),
('Y4HPRK7EHCCN3VSP2VAE', 41000405, '86512991D'),
('8LPSHRJXAGC4GE7839UC', 50000151, '88962348G'),
('VU6GZ4YXC2DB26MQUSB6', 8039598, '92125571Z'),
('XRF44PPJMFJ954GFM4FK', 50000151, '94374398Q');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_foro`
--

CREATE TABLE `comentarios_foro` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_relacion` int(11) UNSIGNED NOT NULL,
  `reply` tinyint(1) NOT NULL DEFAULT 0,
  `id_redactor` int(11) UNSIGNED NOT NULL,
  `rol_redactor` varchar(15) NOT NULL,
  `fecha` datetime NOT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `contenido_comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios_foro`
--

INSERT INTO `comentarios_foro` (`id`, `id_relacion`, `reply`, `id_redactor`, `rol_redactor`, `fecha`, `titulo`, `contenido_comentario`) VALUES
(1, 1, 0, 10, 'padre', '2020-05-31 01:02:49', 'Duda', 'Mi hija no me ha sabido decir a qué hora sale el bus del colegio. Esperaba que alguien que lo sepa me responda. Gracias por adelantado.'),
(2, 1, 1, 9, 'padre', '2020-05-31 01:06:30', 'Yo te respondo', 'Sale el sábado a las 11:30. ¡Un abrazo!'),
(3, 3, 0, 9, 'padre', '2020-05-31 01:07:16', '¡Ayuda!', 'Mi hija tampoco sabe resolverlo. Ha tenido problemas igual que tu hija. ¿Alguien que nos ayude?'),
(4, 1, 1, 1, 'profesor', '2020-05-31 01:08:53', 'Información', 'Me alegro de que ya te hayan respondido. De todas formas, tu hija debería haber recibido un panfleto hoy, recuérdale que te lo entregue.'),
(5, 3, 0, 1, 'profesor', '2020-05-31 01:10:36', 'Resuelto', '¡Qué no cunda el pánico! Ese ejercicio de parece mucho al 7.1 que resolvimos en clase. ¡Recomiendo que le echéis un ojo!'),
(6, 5, 1, 9, 'padre', '2020-05-31 01:12:09', 'Gracias', 'Menos mal, nos estábamos volviendo locas. Efectivamente se parecía mucho al que nos has dicho.'),
(7, 1, 0, 9, 'padre', '2020-05-31 01:13:33', '¡Qué ganas!', 'Quería dar las gracias al colegio porque mi hija tiene muchísimas ganas de ir. Creo que habéis logrado involucrarles mucho en las actividades, cosa que como madre sé que es difícil. Muy buen trabajo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas_foro`
--

CREATE TABLE `entradas_foro` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_clase` int(11) UNSIGNED NOT NULL,
  `titulo_foro` varchar(40) NOT NULL,
  `id_creador` int(11) UNSIGNED NOT NULL,
  `rol_creador` varchar(20) NOT NULL,
  `permisos` tinyint(1) NOT NULL DEFAULT 0,
  `contenido` varchar(300) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entradas_foro`
--

INSERT INTO `entradas_foro` (`id`, `id_clase`, `titulo_foro`, `id_creador`, `rol_creador`, `permisos`, `contenido`, `fecha`) VALUES
(1, 8, 'Viaje a la granja escuela', 1, 'profesor', 1, 'Este fin de semana realizaremos un viaje a la granja escuela. Por favor, realicen la transferencia antes del viernes a la cuenta detallada en el archivo que les adjunto. Me gustaría que cualquier otra duda que tengan la planteen en este foro.', '2020-05-31 00:57:17'),
(2, 8, 'Fotos granja escuela', 1, 'profesor', 0, 'Aquí tenéis las fotos del viaje a la granja escuela. ¡Espero que las disfruten!', '2020-05-31 00:58:25'),
(3, 8, 'Tarea 5 del tema 3 de Mates', 10, 'padre', 1, 'Mi hija está teniendo problemas con el ejercicio del tema 5 (el de trigonometría) de Matemáticas. Me ha pedido ayuda y tampoco he sabido responder. ¿Alguien que pueda echarnos una mano?', '2020-05-31 01:04:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `color` varchar(50) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `title`, `descripcion`, `color`, `start`, `end`) VALUES
(1, 'Día del Libro', 'La celebración del Día del Libro se remonta a principios del siglo XX. La historia del libro se hace festiva y surgen actividades literarias en todos los centros educativos de toda España.', '#66ffcc', '2020-06-09 09:00:00', '2020-06-09 14:00:00'),
(2, 'Semana Cultural', 'La Semana Cultural, es una actividad a gran nivel que está compuesta por muchas otras actividades más pequeñas, es decir, durante una semana que normalmente es del mes de junio, se realizan actividades de ocio, culturales y alternativas y a eso es a lo que llamamos Semana Cultural.', '#ffcc66', '2020-06-21 00:00:00', '2020-06-24 00:00:00'),
(3, 'Educación Vial', 'Las familias deben cumplir con las necesidades de protección que los menores necesitan, sabiendo que son el ejemplo a seguir por éstos y el modelo de actuación que imitaran en el desarrollo de su autonomía como peatones y futuros conductores.', '#ff5050', '2020-06-01 10:00:00', '2020-06-01 12:00:00'),
(4, 'Carrera Solidaria', 'Realización de todos nuestros alumnos de una carrera solidaria.', '#5fa3e7', '2020-05-31 11:00:00', '2020-05-31 11:00:00'),
(5, 'AULA', 'Aula es una feria que ayuda al estudiante a decidir eficazmente su futuro formativo y profesional. Combina una oferta  de centros educativos y formativos, entidades y empresas de servicios que dan respuesta a las necesidades de formación de estudiantes (de 4º de E.S.O en adelante) que acuden a elegir el centro en el que formarse para acceder al mercado laboral.', '#00ff00', '2020-06-05 09:00:00', '2020-06-05 09:00:00'),
(6, 'Museo Arqueológico Nacional - Visita guiada Sala de Egipto', 'De Egipto y Nubia el Museo conserva objetos desde la Prehistoria hasta la época romana y medieval, vinculados al mundo religioso y funerario (sarcófagos, ushebtis, amuletos, momias, estelas, esculturas de divinidades, etc.), muchos de ellos procedentes de excavaciones arqueológicas sistemáticas realizadas en Ehnasya el Medina (Heracleópolis Magna) y en diversos yacimientos nubios.', '#9966ff', '2020-06-19 09:00:00', '2020-06-19 13:00:00'),
(9, 'ME VOY A MI CASA', '', '#4e00f5', '2020-06-11 12:00:00', '2020-06-11 12:00:00'),
(10, 'asdfadsf', '', '#682727', '2020-06-12 12:00:00', '2020-06-12 12:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE `incidencias` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_asignatura` int(11) UNSIGNED NOT NULL,
  `id_alumno` varchar(9) NOT NULL,
  `msg_incidencia` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `incidencias`
--

INSERT INTO `incidencias` (`id`, `id_asignatura`, `id_alumno`, `msg_incidencia`) VALUES
(1, 35, '37071162S', 'Ha llegado tarde a clase'),
(2, 35, '37071162S', 'No ha realizado la tarea'),
(3, 36, '37071162S', 'Ha realizado un examen deficiente'),
(4, 36, '37071162S', 'No presta atención en clase');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajeria`
--

CREATE TABLE `mensajeria` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_origen` int(11) UNSIGNED NOT NULL,
  `rol_origen` varchar(20) NOT NULL,
  `id_destinatario` int(11) UNSIGNED NOT NULL,
  `rol_destinatario` varchar(20) NOT NULL,
  `contenido_msg` varchar(300) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `etiqueta` varchar(20) NOT NULL,
  `nombre_archivo` varchar(50) NOT NULL,
  `archivo` varchar(80) DEFAULT NULL,
  `tamano_archivo` int(11) DEFAULT NULL,
  `tipo_archivo` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mensajeria`
--

INSERT INTO `mensajeria` (`id`, `id_origen`, `rol_origen`, `id_destinatario`, `rol_destinatario`, `contenido_msg`, `fecha_hora`, `etiqueta`, `nombre_archivo`, `archivo`, `tamano_archivo`, `tipo_archivo`) VALUES
(1, 1, 'profesor', 10, 'padre', 'Neus ha tenido una actitud deficiente estos últimos días. Me gustaría tener una tutoría con ella y con usted para hablar de la situación. Por favor, cuénteme que días tiene dispponibles.', '2020-05-31 00:55:03', '', '', '', 0, ''),
(2, 10, 'padre', 1, 'profesor', 'Estoy de acuerdo, últimamente está irreconocible. A ver si podemos aclarar la situación juntos. Adjunto un archivo con mi disponibilidad. Un saludo.', '2020-05-31 01:01:14', '', 'HORARIOS.docx', './archivos/HORARIOS.docx', 11919, 'application/vnd.openxmlfo'),
(3, 1, 'padre', 28, 'profesor', 'Hola, queria pedir una tutoria', '2020-05-31 23:11:39', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_centro` int(8) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) DEFAULT NULL,
  `despacho` int(4) UNSIGNED DEFAULT NULL,
  `correo` varchar(40) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `id_centro`, `nombre`, `apellido1`, `apellido2`, `despacho`, `correo`, `usuario`, `password`, `foto`) VALUES
(1, 41000405, 'Javier', 'Sanz', 'Garrido', 0, 'eergtg', 'javisgarr', '$2y$10$b1qEUUyb1E5fZuuac0g.8O9KvlTlCd8FU/JtOJS7OhvMStlri2GN.', 'img\\users\\profesores\\javier.jpg'),
(2, 8039598, 'Katherine', 'Thompson', NULL, 14, 'KatherineRThompson@gustr.com', 'kathethom', '$2y$10$OKcpMEgTw3lBVvRYBnXbFedeVmHF95bx3pQSQjOOLmwd9/SDaI3T6', 'img\\users\\profesores\\katherine.jpg'),
(3, 28070913, 'Georgia', 'Potter', NULL, NULL, 'GeorgiaPotter@gmail.com', 'GPotter', '$2y$10$ZCFB8WyTNgQsvJAvqrPrEezL4xY3WAFkgy5nzZrTTMHg4P3wyubJq', 'img\\users\\profesores\\georgia.jpg'),
(4, 50000151, 'Beltran', 'Serrano', 'Tafoya', 7, 'BeltranSerranoTafoya@gustr.com', 'Belserra', '$2y$10$WTHIUBFy34dVsJKnj7SrXuPCVuHcuA5EGmMlT0OHvbAcw2/URpPxm', 'img\\users\\profesores\\beltran.jpg'),
(6, 28047551, 'Naiara', 'Cervántez', 'Muñoz', 20, 'NaiaraCervantezMunoz@gustr.com', 'naiara44', '$2y$10$F1kpRw5h6mM7aUheCq87KOqrc4C4q0uDrVxOrVRAVJrXh4PZeayNi', 'img\\users\\profesores\\naiara.jpg'),
(8, 41000405, 'Garcilaso', 'Oquendo', 'García', 3, 'GarcilasoOquendoGarcia@gustr.com', 'GarcilasoOG', '$2y$10$TZwHKzlN3FitjeX8xXvTYOTE3dzGrVW.sFIDz2qXneK11sVfPJjTO', 'img\\users\\profesores\\garcilaso.jpg'),
(9, 8039598, 'Juan Carlos', 'Barreto', 'Hernández', 65, 'JuanCarlosBarretoHernandez@gmail.com', 'JCarlosBH', '$2y$10$bnzQ0ZZB5rMrEuiMqVkdQuigARVO6aowjytyn/n9a9yt6/sYdWQzG', 'img\\users\\profesores\\juancarlos.jpg'),
(16, 8039598, 'Margarita', 'Vega', 'Téllez', 2, 'MargaritaVegaTellez@gmail.com', 'margaVT', '$2y$10$v2Wfk2Igi5JCEltGEsmYGOmKKBvgVyzZNQTBP6teSy5aMDjLHizqq', 'img\\users\\profesores\\margarita.jpg'),
(17, 8039598, 'Marta', 'Pedroza', 'Rosario', 5, 'MartaPedrozaRosario@gustr.com', 'martaProsa', '$2y$10$hxvL.pzyVij3eClRokdEDuX./gDDkubzEp0aW4U0gqzFReknVeixK', 'img\\users\\profesores\\marta.jpg'),
(20, 8039598, 'Adena', 'Pineda', 'Montero', 54, 'AdenaPinedaMontero@gmail.com', 'adenapine', '$2y$10$BPrs3rrhXVlLlgzzgpwWoucQOEcCyWAwxmJDeMWN3R0/Ts87lH8GC', 'img\\users\\profesores\\adena.jpg'),
(21, 8039598, 'Casiano', 'Trejo', 'Lozano', 34, 'CasianoTrejoLozano@gustr.com', 'casianotrejo', '$2y$10$/bpbB9Rqf3IpA.mJFsJdPelHIYplrMMSNOon/Pj4/sp3uyvJF9.8a', 'img\\users\\profesores\\casiano.jpg'),
(22, 41000405, 'Bruna', 'Guillén', 'Merino', 17, 'BrunaGuillenMerino@gustr.com', 'brunaguime', '$2y$10$a0WGfbomM5a8TYeseC1oluRIidfI5byx0ixhuKvaYpxYi.prpjrb.', 'img\\users\\profesores\\bruna.jpg'),
(23, 41000405, 'Hannah', 'Thompson', NULL, NULL, 'HannahThomp@gustr.com', 'hannahThomp', '$2y$10$ZM7R5vICNW40X82tUpCC0eR.Q0QkD69XYaWe9.27OhJG2.uHIHOJS', 'img\\users\\profesores\\hannah.jpg'),
(24, 28047551, 'Jose', 'Crespo', 'Aponte', 27, 'CrespoAponte@gmail.com', 'Jcrespo', '$2y$10$Rz7wHt4liyyGYxjz9iKc7u/.nNZDnVv5PIhBr7Wx4Jw56AB5unuo6', 'img\\users\\profesores\\josecrespo.jpg'),
(25, 28047551, 'Jose', 'Verdugo', 'Correa', 31, 'IberoVerdugoCorrea@gustr.com', 'Jvercorrea', '$2y$10$RxEzFnTtglCCApqaVnuxaOty9ztP1klpHOMv41XK.Fo7IhsZeZvMm', 'img\\users\\profesores\\joseverdugo.jpg'),
(26, 28070913, 'Balbino', 'Verdugo', 'Castro', 24, 'BalbinoVerdugoCastro@gmail.com', 'Balvercast', '$2y$10$1xHL2gm9BqoCPqSkhHAZLeJpK3K2.5MlUfZCHiD4Guc9WyGkCjItO', 'img\\users\\profesores\\balbino.jpg'),
(27, 28070913, 'Cleodora', 'Carvajal', 'Curiel', 42, 'CleodoraCarvajalCuriel@gmail.com', 'cleocarcu', '$2y$10$Va3ZUyMa06GQHUHIDL00SOC9qUbdDk.rRrUAXydHld2xyNfL9ynDa', 'img\\users\\profesores\\cleodora.jpg'),
(28, 50000151, 'Juliano', 'Vargas', 'Rosas', 37, 'JulianoVargasRosas@gmail.com', 'julivargas', '$2y$10$T9PFojNJ0UmwwQmKjLfLYeU8zurHpP.gY8cf1dn4L4NVVp1ALm57y', 'img\\users\\profesores\\juliano.jpg'),
(29, 50000151, 'Lioba', 'Solórzano', 'Muñoz', 45, 'LiobaSolorzanoCintron@gustr.com', 'liobamuñoz', '$2y$10$gTDVUN08ajprdYLxUx3zkOIZnA/COwp7kg34mOQSoUTf3oe48tyt2', 'img\\users\\profesores\\lioba.jpg'),
(30, 50000151, 'Ethel', 'Llarnas', 'Sanabria', NULL, 'EthelLlarnasSanabria@gmail.com', 'Ethelsana', '$2y$10$adaX9vKkvvBXKoTn6OYu4.DKdAT0uXwIz2krK04eQPit4B3s6M9FG', 'img\\users\\profesores\\ethel.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_legal`
--

CREATE TABLE `tutor_legal` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `telefono_movil` varchar(15) NOT NULL,
  `telefono_fijo` varchar(15) DEFAULT NULL,
  `correo` varchar(40) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tutor_legal`
--

INSERT INTO `tutor_legal` (`id`, `nombre`, `apellido1`, `apellido2`, `telefono_movil`, `telefono_fijo`, `correo`, `usuario`, `password`, `foto`) VALUES
(1, 'Francisco', 'Cristobal', 'Casárez', '643 492 101', NULL, 'FCristoCasarez@gustr.com', 'Fcriscas', '$2y$10$oJCfNmuc3Dp1SVDA64LJ3.J/WeWaMGRgwwiXyJ.Jgz0Oq3wkZCos.', 'img\\users\\tutores_legales\\francisco.jpg'),
(2, 'Bautista', 'Ibarra', 'Chacón', '686 127 193', NULL, 'BautistaChacon@gustr.com', 'bautistaIC', '$2y$10$PC6bzA6YZQxTBtPk/riqaeMmySKjAzz/hYDesHQXdwrtcc8D1PD7S', 'img\\users\\tutores_legales\\bautista.jpg'),
(3, 'Elenio ', 'Rocha', 'Valverde', '684 704 947', NULL, 'ElenioValverde@gustr.com', 'elerochaval', '$2y$10$veZ/BycDsUxpwXAjhUd4EutdoUAno.58yxWB92xAToVzRPlgHc0A.', 'img\\users\\tutores_legales\\elenio.jpg'),
(4, 'María', 'Marín', 'Naranjo', '610 449 678', '910606191', 'MariaNaranjo@gustr.com', 'mmnaranj', '$2y$10$VR.OqT2C0eGHMukz8QCf7.CaoyC2mWD64Oqemqtqf0xFYjBze.xtG', 'img\\users\\tutores_legales\\maria.jpg'),
(5, 'Helen', 'Ozuna', 'Almonte', '733 029 369', '910600444', 'AlmonteConcepcion@gustr.com', 'helezuna', '$2y$10$wMKXlmPrZJkJVcOOHYtpzOHY0Q9Cphw8P2QR9zZ6C6QsiDwa4jQBK', 'img\\users\\tutores_legales\\helen.jpg'),
(6, 'Gara', 'Regalado', 'Montoya', '603 093 237', NULL, 'GaraRMontoya@gustr.com', 'gararemon', '$2y$10$csaZgClSofO56fuIO/QaCenL95FtDvgv4fCa3LYO.dzbg9wveORoS', 'img\\users\\tutores_legales\\gara.jpg'),
(7, 'Luján', 'Amaya', 'Delgado', '726 535 611', '910601009', 'LujanDelgado@gmail.com', 'lujamaya', '$2y$10$/BQyWmU7d2ddXLnnO3KeGOuDpVKZfKdb6b6j7dpv8wRdbjPxdZtHO', 'img\\users\\tutores_legales\\lujan.jpg'),
(8, 'Pedro', 'Otero', 'Franco', '655 224 142', '910608071', 'FedroOteroFranco@gmail.com', 'pedrotero', '$2y$10$H0Zp.ZomzeXLKnYrILW/2uAkd7.4CLHed6kLSaKXSiyXEd.Q/sufa', 'img\\users\\tutores_legales\\pedro.jpg'),
(9, 'Carlos', 'Leyva', 'Gaitán', '748 727 731', '910601031', 'CarlLeyvaGaitan@gustr.com', 'cleyva', '$2y$10$kXFflHmqrdkZ4oy/Ga2qwOpBdJTZm7o.zG6sWPc23poj5HBMIVd4S', NULL),
(10, 'Emily', 'Bustos', 'Galindo', '750 041 613', '910600448', 'EmilyGalindo@gustr.com', 'emibugalin', '$2y$10$UoWkOXMQGXEvdhJ7MlvauOu4xvo7j3rGLuc29aHGOsINboV80PSW.', NULL),
(11, 'Ernesto', 'Porras', 'Ortiz', '687 452 124', '910600518', 'ErnestoPorrasOrtiz@gmail.com', 'ernesporras', '$2y$10$m5Y2HCRwMKnNI9ZZOycj3OZyxFvg92hY4z0kZLKOGz1fdUU3E71oW', NULL),
(12, 'Ana', 'Villaseñor', 'Pérez', '643 812 467', '910606338', 'AnaVillaPerez@gmail.com', 'anavillaper', '$2y$10$kSHEe1iTxEZ8Ay64C3C.numLUWQD8QkPvOoUsP.UNH3WLuhwmELNO', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `archivos_foro`
--
ALTER TABLE `archivos_foro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_archivo_foro` (`id_foro`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_calificaciones_asignatura1` (`id_asignatura1`),
  ADD KEY `fk_calificaciones_asignatura2` (`id_asignatura2`),
  ADD KEY `fk_calificaciones_asignatura3` (`id_asignatura3`),
  ADD KEY `fk_calificaciones_asignatura4` (`id_asignatura4`),
  ADD KEY `fk_calificaciones_asignatura5` (`id_asignatura5`),
  ADD KEY `fk_calificaciones_asignatura6` (`id_asignatura6`);

--
-- Indices de la tabla `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_clase_asignatura1` (`id_asignatura1`),
  ADD KEY `fk_clase_asignatura2` (`id_asignatura2`),
  ADD KEY `fk_clase_asignatura3` (`id_asignatura3`),
  ADD KEY `fk_clase_asignatura4` (`id_asignatura4`),
  ADD KEY `fk_clase_asignatura5` (`id_asignatura5`),
  ADD KEY `fk_clase_asignatura6` (`id_asignatura6`);

--
-- Indices de la tabla `codigos_de_acceso`
--
ALTER TABLE `codigos_de_acceso`
  ADD KEY `id_centro` (`id_centro`);

--
-- Indices de la tabla `comentarios_foro`
--
ALTER TABLE `comentarios_foro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas_foro`
--
ALTER TABLE `entradas_foro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_entradaforo_clase` (`id_clase`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_incidencias_alumno` (`id_alumno`),
  ADD KEY `fk_asignatura_alumno` (`id_asignatura`);

--
-- Indices de la tabla `mensajeria`
--
ALTER TABLE `mensajeria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `despacho` (`despacho`),
  ADD KEY `id_centro` (`id_centro`);

--
-- Indices de la tabla `tutor_legal`
--
ALTER TABLE `tutor_legal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `archivos_foro`
--
ALTER TABLE `archivos_foro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `comentarios_foro`
--
ALTER TABLE `comentarios_foro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `entradas_foro`
--
ALTER TABLE `entradas_foro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `mensajeria`
--
ALTER TABLE `mensajeria`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tutor_legal`
--
ALTER TABLE `tutor_legal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `archivos_foro`
--
ALTER TABLE `archivos_foro`
  ADD CONSTRAINT `fk_archivo_foro` FOREIGN KEY (`id_foro`) REFERENCES `entradas_foro` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `fk_calificaciones_asignatura1` FOREIGN KEY (`id_asignatura1`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificaciones_asignatura2` FOREIGN KEY (`id_asignatura2`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificaciones_asignatura3` FOREIGN KEY (`id_asignatura3`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificaciones_asignatura4` FOREIGN KEY (`id_asignatura4`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificaciones_asignatura5` FOREIGN KEY (`id_asignatura5`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificaciones_asignatura6` FOREIGN KEY (`id_asignatura6`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `fk_clase_asignatura1` FOREIGN KEY (`id_asignatura1`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_clase_asignatura2` FOREIGN KEY (`id_asignatura2`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_clase_asignatura3` FOREIGN KEY (`id_asignatura3`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_clase_asignatura4` FOREIGN KEY (`id_asignatura4`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_clase_asignatura5` FOREIGN KEY (`id_asignatura5`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_clase_asignatura6` FOREIGN KEY (`id_asignatura6`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `codigos_de_acceso`
--
ALTER TABLE `codigos_de_acceso`
  ADD CONSTRAINT `fk_codigo_centro` FOREIGN KEY (`id_centro`) REFERENCES `centros` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `entradas_foro`
--
ALTER TABLE `entradas_foro`
  ADD CONSTRAINT `fk_entradaforo_clase` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD CONSTRAINT `fk_asignatura_alumno` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_incidencias_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`DNI`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `fk_profesor_centro` FOREIGN KEY (`id_centro`) REFERENCES `centros` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
