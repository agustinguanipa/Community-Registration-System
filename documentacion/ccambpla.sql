-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-12-2019 a las 21:27:24
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

INSERT INTO `tab_jef` (`ident_jef`, `cedul_jef`, `nombr_jef`, `apeli_jef`, `fecna_jef`, `telem_jef`, `telec_jef`, `email_jef`, `direc_jef`, `tibom_jef`, `seria_jef`, `usuar_jef`, `contr_jef`, `statu_jef`, `ident_tip`) VALUES
(1, 26607655, 'CARLOS AGUSTIN', 'GUANIPA ALVAREZ', '1998-03-29', '(0426) 690 8396', '(0276) 353 2978', 'GUANIPA@MAIL', 'CALLE 2 BELLAVISTA RESD MILDREY PISO 7 APTO 74', 'GRANEL', '', 'AGUSTIN', '12345', '1', 1),
(2, 13587648, 'JEAN CARLO', 'ALVAREZ SANCHEZ', '1963-04-07', '(0416) 777 0773', '(0276) 353 2978', 'AGROJEAN@MAIL', 'CALLE 2 BELLAVISTA', 'GRANEL', '012345', 'AGROJEAN', '827ccb0eea8a706c4c34a16891f84e7b', '1', 4),
(3, 10145871, 'ERICK GIOVANNY', 'GONZALES BUITRAGO', '1980-07-20', '(0416) 789 5989', '(0276) 253 2674', 'ERICK@MAIL', 'CALLE 2 BELLAVISTA', 'GRANEL', '0124678789', 'ERICK', '827ccb0eea8a706c4c34a16891f84e7b', '1', 3),
(4, 10457812, 'MARIA DOLORES', 'RAMIREZ ARAQUE', '1970-10-10', '(0426) 565 9899', '(0276) 526 2626', 'LOLA@MAIL', 'CALLE 2 BELLAVISTA', 'GRANEL', '012454448', 'LOLA', '827ccb0eea8a706c4c34a16891f84e7b', '1', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_not`
--

INSERT INTO `tab_not` (`ident_not`, `titul_not`, `desco_not`, `descr_not`, `image_not`, `fecpu_not`, `statu_not`) VALUES
(1, 'Jornada de Actualizacion del Carnet de la Patria', 'Jornada de Actualizacion del Carnet de la Patria', 'Jornada de Actualizacion del Carnet de la Patria Jornada de Actualizacion del Carnet de la Patria Jornada de Actualizacion del Carnet de la Patria Jornada de Actualizacion del Carnet de la Patria', 'default.png', '2019-12-01 21:11:23', '1'),
(2, 'Estudiantes de la UNEFA realizan Servicio Comunitario en la Comunidad', 'Jovenes estudiantes de Ingeniería de Sistemas realizan aporte a la comunidad', 'Jovenes estudiantes de Ingeniería de Sistemas realizan aporte a la comunidad Jovenes estudiantes de Ingeniería de Sistemas realizan aporte a la comunidad Jovenes estudiantes de Ingeniería de Sistemas realizan aporte a la comunidad Jovenes estudiantes de Ingeniería de Sistemas realizan aporte a la comunidad', 'img_24d23368b79c6e81f21e066d30168107.jpg', '2019-12-01 21:13:07', '1'),
(3, 'Llego el CLAP de Noviembre a la Comunidad', 'Llego el CLAP de Noviembre a la Comunidad', 'Llego el CLAP de Noviembre a la Comunidad', 'img_8ae5bdd8255506c3c7748abb770dff9c.jpg', '2019-12-01 21:14:19', '1'),
(4, 'El Pernil será entregado el 15 de Diciembre', 'El Pernil será entregado el 15 de Diciembre', 'El Pernil será entregado el 15 de Diciembre', 'default.png', '2019-12-01 21:14:33', '1');

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
  `direc_per` varchar(200) DEFAULT NULL,
  `tifam_per` varchar(45) DEFAULT NULL,
  `tibom_per` varchar(45) DEFAULT NULL,
  `seria_per` varchar(45) DEFAULT NULL,
  `usuar_per` varchar(45) DEFAULT NULL,
  `contr_per` varchar(45) DEFAULT NULL,
  `statu_per` char(1) DEFAULT NULL,
  `ident_tip` int(11) NOT NULL,
  `ident_jef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_per`
--

INSERT INTO `tab_per` (`ident_per`, `cedul_per`, `nombr_per`, `apeli_per`, `fecna_per`, `telem_per`, `telec_per`, `email_per`, `direc_per`, `tifam_per`, `tibom_per`, `seria_per`, `usuar_per`, `contr_per`, `statu_per`, `ident_tip`, `ident_jef`) VALUES
(1, 7491156, 'CARLOS', 'GUANIPA', '1963-07-04', '(0414) 707 8002', '(0276) 353 2978', 'GUANIPA@MAIL', 'CALLE 2 BELLAVISTA', 'MADRE/PADRE', 'GRANEL', '', NULL, NULL, '1', 4, 1),
(2, 5028153, 'ALBA', 'ALVAREZ', '1957-03-20', '(0426) 822 6711', '(0276) 353 2978', 'ALBA@MAIL', 'CALLE 2 BELLAVISTA', 'MADRE/PADRE', 'GRANEL', '0123456', NULL, NULL, '1', 4, 1),
(3, 16413598, 'YAJAIRA', 'USECHE', '1976-12-31', '(0416) 565 6565', '(5656) 566 4646', 'YAJAIRA@MAIL', 'CALLE 2 BELLAVISTA', 'ESPOSO/ESPOSA', '10 KG', '0123456', NULL, NULL, '1', 4, 2),
(4, 34001123, 'ABRIL', 'ALVAREZ', '2018-10-06', '(0416) 777 0773', '(0276) 353 2978', 'ABRIL@MAIL', 'CALLE 2 BELLAVISTA', 'HIJO/HIJA', '10 KG', '', NULL, NULL, '1', 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_ref`
--

CREATE TABLE `tab_ref` (
  `ident_ref` int(11) NOT NULL,
  `banco_ref` varchar(45) DEFAULT NULL,
  `monto_ref` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_ref`
--

INSERT INTO `tab_ref` (`ident_ref`, `banco_ref`, `monto_ref`) VALUES
(1, 'BANCO SOFITASA', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_reg`
--

CREATE TABLE `tab_reg` (
  `ident_reg` int(11) NOT NULL,
  `nombr_reg` varchar(45) DEFAULT NULL,
  `descr_reg` varchar(250) DEFAULT NULL,
  `fecre_reg` date DEFAULT NULL,
  `statu_reg` char(1) DEFAULT NULL,
  `ident_ref` int(11) NOT NULL,
  `ident_jef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_reg`
--

INSERT INTO `tab_reg` (`ident_reg`, `nombr_reg`, `descr_reg`, `fecre_reg`, `statu_reg`, `ident_ref`, `ident_jef`) VALUES
(1, 'CLAP OCTUBRE 2019', 'CLAP OCTUBRE 2019 RESIDENCIAS MILDREY', '2019-10-31', '1', 1, 3),
(2, 'CLAP NOVIEMBRE 2019', 'CLAP NOVIEMBRE 2019 RESIDENCIAS MILDREY', '2019-11-20', '1', 1, 1),
(3, 'CLAP', 'CLAP ', '2019-12-10', '1', 1, 2),
(4, 'JORNADA', 'JORNADA VACUNACION', '2019-10-05', '1', 1, 3),
(5, 'CLAP ESPECIAL PERNIL', 'CLAP ESPECIAL PERNIL', '2019-12-10', '1', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_tip`
--

CREATE TABLE `tab_tip` (
  `ident_tip` int(11) NOT NULL,
  `nombr_tip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indices de la tabla `tab_ref`
--
ALTER TABLE `tab_ref`
  ADD PRIMARY KEY (`ident_ref`);

--
-- Indices de la tabla `tab_reg`
--
ALTER TABLE `tab_reg`
  ADD PRIMARY KEY (`ident_reg`),
  ADD KEY `fk_tab_ref1_idx` (`ident_ref`),
  ADD KEY `fk_tab_reg_tab_jef1_idx` (`ident_jef`);

--
-- Indices de la tabla `tab_tip`
--
ALTER TABLE `tab_tip`
  ADD PRIMARY KEY (`ident_tip`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  MODIFY `ident_jef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tab_not`
--
ALTER TABLE `tab_not`
  MODIFY `ident_not` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tab_per`
--
ALTER TABLE `tab_per`
  MODIFY `ident_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tab_ref`
--
ALTER TABLE `tab_ref`
  MODIFY `ident_ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tab_reg`
--
ALTER TABLE `tab_reg`
  MODIFY `ident_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tab_tip`
--
ALTER TABLE `tab_tip`
  MODIFY `ident_tip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  ADD CONSTRAINT `fk_tab_jef_tab_tip1` FOREIGN KEY (`ident_tip`) REFERENCES `tab_tip` (`ident_tip`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tab_per`
--
ALTER TABLE `tab_per`
  ADD CONSTRAINT `fk_tab_per_tab_jef1` FOREIGN KEY (`ident_jef`) REFERENCES `tab_jef` (`ident_jef`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tab_per_tab_tip1` FOREIGN KEY (`ident_tip`) REFERENCES `tab_tip` (`ident_tip`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tab_reg`
--
ALTER TABLE `tab_reg`
  ADD CONSTRAINT `fk_tab_ref1` FOREIGN KEY (`ident_ref`) REFERENCES `tab_ref` (`ident_ref`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tab_reg_tab_jef1` FOREIGN KEY (`ident_jef`) REFERENCES `tab_jef` (`ident_jef`) ON DELETE NO ACTION ON UPDATE NO ACTION;
