-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2014 a las 16:05:30
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `base_tp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antiguedad`
--

CREATE TABLE IF NOT EXISTS `antiguedad` (
  `ta_id` int(11) NOT NULL AUTO_INCREMENT,
  `ta_antiguedad` varchar(55) NOT NULL,
  PRIMARY KEY (`ta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `antiguedad`
--

INSERT INTO `antiguedad` (`ta_id`, `ta_antiguedad`) VALUES
(1, '0-5'),
(2, '6-10'),
(3, '11-15'),
(4, '16-20'),
(5, '21-25'),
(6, '26-30'),
(7, '31+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE IF NOT EXISTS `docentes` (
  `td_id` int(7) NOT NULL AUTO_INCREMENT,
  `td_nombre` varchar(55) NOT NULL,
  `td_apellido` varchar(55) NOT NULL,
  `td_edad` int(11) NOT NULL,
  `td_materia` int(11) NOT NULL,
  `td_turno` int(11) NOT NULL,
  `td_antiguedad` int(11) NOT NULL,
  `td_foto` varchar(255) NOT NULL,
  `td_sexo` int(11) NOT NULL,
  `td_localidad` int(11) NOT NULL,
  `td_tutoria` int(11) NOT NULL,
  `td_estudios` int(11) NOT NULL,
  `td_familiares` int(7) NOT NULL,
  PRIMARY KEY (`td_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`td_id`, `td_nombre`, `td_apellido`, `td_edad`, `td_materia`, `td_turno`, `td_antiguedad`, `td_foto`, `td_sexo`, `td_localidad`, `td_tutoria`, `td_estudios`, `td_familiares`) VALUES
(1, 'Noemi', 'Mendoza', 3, 3, 1, 4, 'mendoza.jpg', 2, 2, 2, 3, 5),
(2, 'Noemi', 'Mendoza', 3, 3, 2, 4, 'mendoza.jpg', 2, 2, 2, 3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edad`
--

CREATE TABLE IF NOT EXISTS `edad` (
  `tee_id` int(11) NOT NULL AUTO_INCREMENT,
  `tee_edad` varchar(22) NOT NULL,
  PRIMARY KEY (`tee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `edad`
--

INSERT INTO `edad` (`tee_id`, `tee_edad`) VALUES
(1, '18-25'),
(2, '26-35'),
(3, '36-45'),
(4, '46-55'),
(5, '56-65'),
(6, '66+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE IF NOT EXISTS `estudios` (
  `te_id` int(11) NOT NULL AUTO_INCREMENT,
  `te_estudios` varchar(55) NOT NULL,
  PRIMARY KEY (`te_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`te_id`, `te_estudios`) VALUES
(1, 'Secundaria'),
(2, 'Terciariaro'),
(3, 'Profesorado'),
(4, 'Post-grado'),
(5, 'universitario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiares`
--

CREATE TABLE IF NOT EXISTS `familiares` (
  `tf_id` int(11) NOT NULL AUTO_INCREMENT,
  `tf_familiares` varchar(55) NOT NULL,
  PRIMARY KEY (`tf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `familiares`
--

INSERT INTO `familiares` (`tf_id`, `tf_familiares`) VALUES
(1, 'hijo/s'),
(2, 'Padre/s'),
(3, 'Conyuge'),
(4, 'hermano/s'),
(5, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE IF NOT EXISTS `localidad` (
  `tl_id` int(11) NOT NULL AUTO_INCREMENT,
  `tl_localidad` varchar(55) NOT NULL,
  PRIMARY KEY (`tl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`tl_id`, `tl_localidad`) VALUES
(1, 'Gran Buenos Aires'),
(2, 'Capital Federal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `tm_id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_materia` varchar(55) NOT NULL,
  PRIMARY KEY (`tm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`tm_id`, `tm_materia`) VALUES
(1, 'Matematica'),
(2, 'Castellano'),
(3, 'Geografia'),
(4, 'Dibujo Tecnico'),
(5, 'Historia'),
(6, 'Quimica'),
(7, 'Gimnasia'),
(8, 'Educacion Civica'),
(9, 'Biologia'),
(10, 'Fisica'),
(11, 'Taller'),
(12, 'Ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE IF NOT EXISTS `sexo` (
  `ts_id` int(11) NOT NULL AUTO_INCREMENT,
  `ts_sexo` varchar(55) NOT NULL,
  PRIMARY KEY (`ts_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`ts_id`, `ts_sexo`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE IF NOT EXISTS `turno` (
  `tt_id` int(11) NOT NULL AUTO_INCREMENT,
  `tt_turno` varchar(55) NOT NULL,
  PRIMARY KEY (`tt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`tt_id`, `tt_turno`) VALUES
(1, 'Mañana'),
(2, 'Tarde'),
(3, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutoria`
--

CREATE TABLE IF NOT EXISTS `tutoria` (
  `tu_id` int(11) NOT NULL AUTO_INCREMENT,
  `tu_tutoria` varchar(55) NOT NULL,
  PRIMARY KEY (`tu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tutoria`
--

INSERT INTO `tutoria` (`tu_id`, `tu_tutoria`) VALUES
(1, 'si'),
(2, 'no');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
