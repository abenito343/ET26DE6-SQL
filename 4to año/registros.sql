-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2014 a las 17:46:07
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `registros`
--
CREATE DATABASE IF NOT EXISTS `registros` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registros`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_registros`
--

CREATE TABLE IF NOT EXISTS `tm_registros` (
  `Recibo` int(8) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  PRIMARY KEY (`Recibo`),
  KEY `Nombre` (`Nombre`,`Apellido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_productos_slave`
--

CREATE TABLE IF NOT EXISTS `t_productos_slave` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` int(30) NOT NULL,
  `t_stock` int(8) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `nombre_producto` (`nombre_producto`),
  KEY `t_stock` (`t_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_recibos_master`
--

CREATE TABLE IF NOT EXISTS `t_recibos_master` (
  `recibo` int(8) NOT NULL AUTO_INCREMENT,
  `producto` varchar(30) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`recibo`),
  KEY `producto` (`producto`,`cantidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
