-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-11-2020 a las 02:35:09
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroOperacion`
--

CREATE TABLE `registroOperacion` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Concepto` varchar(244) DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Fecha` varchar(50) DEFAULT NULL,
  `Tipo` varchar(244) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registroOperacion`
--

INSERT INTO `registroOperacion` (`Id`, `Concepto`, `Monto`, `Fecha`, `Tipo`) VALUES
(1, 'pagos', 123123.2, '12-12-2012', 'egreso'),
(2, 'pagos externo', 3123.2, '12-12-2012', 'egreso'),
(3, 'pagos interno', 3123.2, '12-12-2012', 'egreso'),
(5, 'soborno 1', 121213.2123123, '12-12-2012', 'ingreso'),
(6, 'soborno 2', 1222223.2, '12-12-2012', 'ingreso'),
(7, 'soborno 3', 1123123.2, '12-12-2012', 'ingreso'),
(8, 'pagos interno', 3132132.32, '12-12-2012', 'egreso'),
(9, 'pagos interno', 3112312.32, '12-12-2012', 'egreso'),
(10, 'pagos interno', 3132322.321231231, '12-12-2012', 'egreso'),
(12, 'pagos interno', 312653.2, '12-12-2012', 'ingreso');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registroOperacion`
--
ALTER TABLE `registroOperacion`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registroOperacion`
--
ALTER TABLE `registroOperacion`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
