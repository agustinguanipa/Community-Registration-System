-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-12-2019 a las 21:03:55
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `ccambpla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_reg`
--

CREATE TABLE `det_reg` (
  `correlativo` int(11) NOT NULL,
  `ident_reg` int(11) NOT NULL,
  `ident_jef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `det_reg`
--

INSERT INTO `det_reg` (`correlativo`, `ident_reg`, `ident_jef`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 5, 2),
(4, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_tem`
--

CREATE TABLE `det_tem` (
  `correlativo` int(11) NOT NULL,
  `token_user` varchar(45) DEFAULT NULL,
  `ident_jef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 26607655, 'CARLOS AGUSTIN', 'GUANIPA ALVAREZ', '1998-03-29', '(0426) 690 8396', '(0276) 353 2978', 'AGUSTINGUANIPA98@GMAIL.COM', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7 APTO 74', 'GRANEL', '', 'AGUSTIN', '12345', '1', 1),
(2, 13587142, 'ERICK GIOVANNY', 'GONZALEZ BUITRAGO', '1980-10-10', '(0416) 410 5484', '(0276) 265 1158', 'ERICK@MAIL', 'CALLE 2', 'RESIDENCIAS CANTV', 'GRANEL', '984515189129', 'ERICK', '827ccb0eea8a706c4c34a16891f84e7b', '1', 2),
(3, 13587648, 'JEAN CARLO', 'ALVAREZ SANCHEZ', '1978-04-10', '(0416) 777 0773', '(0276) 353 2978', 'AGROJEAN@MAIL', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7', 'GRANEL', '0124567848', 'AGROJEAN', '827ccb0eea8a706c4c34a16891f84e7b', '1', 3),
(4, 3426896, 'CARMEN TEOFILA', 'SANCHEZ DE ALVAREZ', '1929-03-04', '(0426) 822 6711', '(0276) 353 2978', 'CARMEN@OUTLOOK', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7 APTO 74', 'GRANEL', '454649598', 'CARMEN', '827ccb0eea8a706c4c34a16891f84e7b', '1', 4),
(5, 15874268, 'MARIA DOLORES', 'RAMIREZ ARAQUE', '1960-10-20', '(0426) 489 4818', '(0276) 326 5648', 'LOLA@MAIL', 'CALLE 2', 'RESIDENCIAS CANTV', 'GRANEL', '16541848488', 'LOLA', '827ccb0eea8a706c4c34a16891f84e7b', '1', 2);

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
(1, 'Jornada de CLAP para el proximo 15 de Diciembre', 'Se realizara en la comunidad para el proximo 15 de Diciembre', 'Jornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de DiciembreJornada de CLAP para el proximo 15 de Diciembre', 'img_80acd9cec18656a678af6fc2c2cd6450.jpg', '2019-12-04 19:58:56', '1'),
(2, 'Estudiantes de la UNEFA realizan Servicio Comunitario', 'Desean implantar un Sistema para el Consejo Comunal', 'Estudiantes de la UNEFA realizan Servicio ComunitarioEstudiantes de la UNEFA realizan Servicio ComunitarioEstudiantes de la UNEFA realizan Servicio ComunitarioEstudiantes de la UNEFA realizan Servicio ComunitarioEstudiantes de la UNEFA realizan Servicio ComunitarioEstudiantes de la UNEFA realizan Servicio ComunitarioEstudiantes de la UNEFA realizan Servicio Comunitario', 'img_9207ea0d7515ab78bb8fab711bd3b78e.jpg', '2019-12-04 20:00:15', '1'),
(3, 'Reunion de Consejo Comunal a celebrarse el proximo 10 de Diciembre', 'Convocada toda la comunidad de Ambrosio Plaza para una Asamblea', 'Convocada toda la comunidad de Ambrosio Plaza para una AsambleaConvocada toda la comunidad de Ambrosio Plaza para una AsambleaConvocada toda la comunidad de Ambrosio Plaza para una AsambleaConvocada toda la comunidad de Ambrosio Plaza para una AsambleaConvocada toda la comunidad de Ambrosio Plaza para una AsambleaConvocada toda la comunidad de Ambrosio Plaza para una Asamblea', 'img_b794a1a3e78262a792bca075001e7073.jpg', '2019-12-04 20:01:16', '1'),
(4, 'Estudiantes de la UNEFA presentaron Proyecto a la Comunidad', 'Estudiantes de la UNEFA presentaron Proyecto a la Comunidad', 'Estudiantes de la UNEFA presentaron Proyecto a la Comunidad', 'img_edd4947f9391a34cb3c703c6113a8313.jpg', '2019-12-05 19:23:39', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_per`
--

INSERT INTO `tab_per` (`ident_per`, `cedul_per`, `nombr_per`, `apeli_per`, `fecna_per`, `telem_per`, `telec_per`, `email_per`, `calle_per`, `direc_per`, `tifam_per`, `tibom_per`, `seria_per`, `statu_per`, `ident_tip`, `ident_jef`) VALUES
(1, 7491156, 'CARLOS LUIS', 'GUANIPA BUENO', '1963-04-07', '(0414) 707 8002', '(0276) 353 2978', 'GUANIPABUENO@GMAIL.COM', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7 APTO 74', 'MADRE/PADRE', 'GRANEL', '44665959', '1', 4, 1),
(3, 5028153, 'ALBA ALIDA', 'ALVAREZ SANCHEZ', '1957-09-20', '(0426) 822 6711', '(0276) 353 2978', 'ALBALIDA2006@HOTMAIL.COM', 'CALLE 2', 'RESIDENCIAS MILDREY PISO 7 APTO 74', 'MADRE/PADRE', 'GRANEL', '145156548', '1', 4, 1),
(4, 13547156, 'YAJAIRA ELISA', 'USECHE RIVAS', '1976-12-31', '(0424) 721 0688', '(0276) 232 9595', 'YAYA@MAIL', 'CALLE 2', 'CASA Nº 10', 'ESPOSO/ESPOSA', '10 KG', '599499944781', '1', 4, 3);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tab_reg`
--

INSERT INTO `tab_reg` (`ident_reg`, `nombr_reg`, `descr_reg`, `fecre_reg`, `statu_reg`) VALUES
(1, 'CLAP NOVIEMBRE 2019', 'CLAP NOVIEMBRE 2019', '2019-11-30', '1'),
(2, 'CLAP DICIEMBRE 2019', 'CLAP DICIEMBRE 2019', '2019-12-02', '1'),
(3, 'GAS NOVIEMBRE 2019', 'GAS NOVIEMBRE 2019', '2019-11-30', '1'),
(4, 'JORNADA DE VACUNACION A NIÑOS', 'JORNADA DE VACUNACION A NIÑOS', '2019-11-30', '1'),
(5, 'JORNADA ACTUALIZACION CARNET DE LA PATRIA', 'JORNADA ACTUALIZACION CARNET DE LA PATRIA', '2019-12-04', '1'),
(6, 'JORNADA MEDICA NOVIEMBRE 2019', 'JORNADA MEDICA NOVIEMBRE 2019', '2019-11-25', '1');

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
-- Indices de la tabla `det_reg`
--
ALTER TABLE `det_reg`
  ADD PRIMARY KEY (`correlativo`),
  ADD KEY `fk_det_reg_tab_jef1_idx` (`ident_jef`),
  ADD KEY `fk_det_reg_tab_reg1_idx` (`ident_reg`);

--
-- Indices de la tabla `det_tem`
--
ALTER TABLE `det_tem`
  ADD PRIMARY KEY (`correlativo`),
  ADD KEY `fk_det_tem_tab_jef1_idx` (`ident_jef`);

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
  MODIFY `correlativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tab_jef`
--
ALTER TABLE `tab_jef`
  MODIFY `ident_jef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Filtros para la tabla `det_reg`
--
ALTER TABLE `det_reg`
  ADD CONSTRAINT `fk_det_reg_tab_jef1` FOREIGN KEY (`ident_jef`) REFERENCES `tab_jef` (`ident_jef`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_det_reg_tab_reg1` FOREIGN KEY (`ident_reg`) REFERENCES `tab_reg` (`ident_reg`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `det_tem`
--
ALTER TABLE `det_tem`
  ADD CONSTRAINT `fk_det_tem_tab_jef1` FOREIGN KEY (`ident_jef`) REFERENCES `tab_jef` (`ident_jef`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
