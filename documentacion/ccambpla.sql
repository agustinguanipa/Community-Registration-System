-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql201.byetcluster.com
-- Tiempo de generación: 13-01-2020 a las 14:01:25
-- Versión del servidor: 5.6.45-86.1
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `epiz_25048938_ccambpla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_reg`
--

CREATE TABLE `det_reg` (
  `correlativo` int(11) NOT NULL,
  `ident_reg` int(11) NOT NULL,
  `ident_jef` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_jef`
--

INSERT INTO `tab_jef` (`ident_jef`, `cedul_jef`, `nombr_jef`, `apeli_jef`, `fecna_jef`, `telem_jef`, `telec_jef`, `email_jef`, `calle_jef`, `direc_jef`, `tibom_jef`, `seria_jef`, `usuar_jef`, `contr_jef`, `statu_jef`, `ident_tip`) VALUES
(1, 26607655, 'CARLOS AGUSTIN', 'GUANIPA ALVAREZ', '1998-03-29', '(0426) 690 8396', '(0276) 353 2978', 'AGUSTINGUANIPA98@GMAIL.COM', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7 APTO 74', 'GRANEL', '', 'AGUSTIN', '827ccb0eea8a706c4c34a16891f84e7b', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_not`
--

CREATE TABLE `tab_not` (
  `ident_not` int(11) NOT NULL,
  `titul_not` varchar(100) DEFAULT NULL,
  `desco_not` varchar(100) DEFAULT NULL,
  `descr_not` varchar(2000) DEFAULT NULL,
  `image_not` varchar(250) DEFAULT NULL,
  `fecpu_not` datetime DEFAULT CURRENT_TIMESTAMP,
  `statu_not` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_per`
--

CREATE TABLE `tab_per` (
  `ident_per` int(11) NOT NULL,
  `cedul_per` int(11) DEFAULT NULL,
  `nombr_per` varchar(45) DEFAULT NULL,
  `apeli_per` varchar(45) DEFAULT NULL,
  `fecna_per` date DEFAULT NULL,
  `telem_per` varchar(45) DEFAULT NULL,
  `telec_per` varchar(45) DEFAULT NULL,
  `email_per` varchar(45) DEFAULT NULL,
  `calle_per` varchar(45) DEFAULT NULL,
  `direc_per` varchar(200) DEFAULT NULL,
  `tifam_per` varchar(45) DEFAULT NULL,
  `tibom_per` varchar(45) DEFAULT NULL,
  `seria_per` varchar(45) DEFAULT NULL,
  `statu_per` char(1) DEFAULT NULL,
  `ident_tip` int(11) NOT NULL,
  `ident_jef` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_reg`
--

CREATE TABLE `tab_reg` (
  `ident_reg` int(11) NOT NULL,
  `nombr_reg` varchar(45) DEFAULT NULL,
  `descr_reg` varchar(250) DEFAULT NULL,
  `fecre_reg` date DEFAULT NULL,
  `statu_reg` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_tip`
--

CREATE TABLE `tab_tip` (
  `ident_tip` int(11) NOT NULL,
  `nombr_tip` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_tip`
--

INSERT INTO `tab_tip` (`ident_tip`, `nombr_tip`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'VOCERO'),
(3, 'JEFE DE CALLE'),
(4, 'CIUDADANO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `det_reg`
--
ALTER TABLE `det_reg`
  ADD PRIMARY KEY (`correlativo`),
  ADD KEY `fk_det_reg_tab_jef1_idx` (`ident_jef`),
  ADD KEY `fk_det_reg_tab_reg1_idx` (`ident_reg`);

--
-- Indices de la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  ADD PRIMARY KEY (`ident_jef`),
  ADD KEY `fk_tab_jef_tab_tip1_idx` (`ident_tip`);

--
-- Indices de la tabla `tab_not`
--
ALTER TABLE `tab_not`
  ADD PRIMARY KEY (`ident_not`);

--
-- Indices de la tabla `tab_per`
--
ALTER TABLE `tab_per`
  ADD PRIMARY KEY (`ident_per`),
  ADD KEY `fk_tab_per_tab_tip1_idx` (`ident_tip`),
  ADD KEY `fk_tab_per_tab_jef1_idx` (`ident_jef`);

--
-- Indices de la tabla `tab_reg`
--
ALTER TABLE `tab_reg`
  ADD PRIMARY KEY (`ident_reg`);

--
-- Indices de la tabla `tab_tip`
--
ALTER TABLE `tab_tip`
  ADD PRIMARY KEY (`ident_tip`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `det_reg`
--
ALTER TABLE `det_reg`
  MODIFY `correlativo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  MODIFY `ident_jef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tab_not`
--
ALTER TABLE `tab_not`
  MODIFY `ident_not` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tab_per`
--
ALTER TABLE `tab_per`
  MODIFY `ident_per` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tab_reg`
--
ALTER TABLE `tab_reg`
  MODIFY `ident_reg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tab_tip`
--
ALTER TABLE `tab_tip`
  MODIFY `ident_tip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
