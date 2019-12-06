-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-12-2019 a las 21:55:07
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `ccambpla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_jef`
--

CREATE TABLE `tab_jef` (
  `ident_jef` int(11) NOT NULL,
  `cedul_jef` int(11) DEFAULT NULL,
  `nombr_jef` varchar(45) DEFAULT NULL,
  `apeli_jef` varchar(45) DEFAULT NULL,
  `fecna_jef` date DEFAULT NULL,
  `telem_jef` varchar(45) DEFAULT NULL,
  `telec_jef` varchar(45) DEFAULT NULL,
  `email_jef` varchar(45) DEFAULT NULL,
  `calle_jef` varchar(45) DEFAULT NULL,
  `direc_jef` varchar(200) DEFAULT NULL,
  `tibom_jef` varchar(45) DEFAULT NULL,
  `seria_jef` varchar(45) DEFAULT NULL,
  `usuar_jef` varchar(45) DEFAULT NULL,
  `contr_jef` varchar(45) DEFAULT NULL,
  `statu_jef` char(1) DEFAULT NULL,
  `ident_tip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_jef`
--

INSERT INTO `tab_jef` (`ident_jef`, `cedul_jef`, `nombr_jef`, `apeli_jef`, `fecna_jef`, `telem_jef`, `telec_jef`, `email_jef`, `calle_jef`, `direc_jef`, `tibom_jef`, `seria_jef`, `usuar_jef`, `contr_jef`, `statu_jef`, `ident_tip`) VALUES
(1, 26607655, 'CARLOS AGUSTIN', 'GUANIPA ALVAREZ', '1998-03-29', '(0426) 690 8396', '(0276) 353 2978', 'AGUSTINGUANIPA98@GMAIL.COM', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7 APTO 74', 'GRANEL', '', 'AGUSTIN', '827ccb0eea8a706c4c34a16891f84e7b', '1', 1),
(2, 13587142, 'ERICK GIOVANNY', 'GONZALEZ BUITRAGO', '1980-10-10', '(0416) 410 5484', '(0276) 265 1158', 'ERICK@MAIL', 'CALLE 2', 'RESIDENCIAS CANTV', 'GRANEL', '984515189129', 'ERICK', '827ccb0eea8a706c4c34a16891f84e7b', '1', 2),
(3, 13587648, 'JEAN CARLO', 'ALVAREZ SANCHEZ', '1978-04-10', '(0416) 777 0773', '(0276) 353 2978', 'AGROJEAN@MAIL', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7', 'GRANEL', '0124567848', 'AGROJEAN', '827ccb0eea8a706c4c34a16891f84e7b', '1', 3),
(4, 3426896, 'CARMEN TEOFILA', 'SANCHEZ DE ALVAREZ', '1929-03-04', '(0426) 822 6711', '(0276) 353 2978', 'CARMEN@OUTLOOK', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7 APTO 74', 'GRANEL', '454649598', 'CARMEN', '827ccb0eea8a706c4c34a16891f84e7b', '1', 4),
(5, 15874268, 'MARIA DOLORES', 'RAMIREZ ARAQUE', '1960-10-20', '(0426) 489 4818', '(0276) 326 5648', 'LOLA@MAIL', 'CALLE 2', 'RESIDENCIAS CANTV', 'GRANEL', '16541848488', 'LOLA', '827ccb0eea8a706c4c34a16891f84e7b', '1', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  ADD PRIMARY KEY (`ident_jef`),
  ADD KEY `fk_tab_jef_tab_tip1_idx` (`ident_tip`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  MODIFY `ident_jef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  ADD CONSTRAINT `fk_tab_jef_tab_tip1` FOREIGN KEY (`ident_tip`) REFERENCES `tab_tip` (`ident_tip`) ON DELETE NO ACTION ON UPDATE NO ACTION;
