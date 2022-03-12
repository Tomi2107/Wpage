-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2022 a las 02:19:58
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cacproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogmensajes`
--

CREATE TABLE `blogmensajes` (
  `idcomentario` int(20) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `Comentario` varchar(600) NOT NULL,
  `tema` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blogmensajes`
--

INSERT INTO `blogmensajes` (`idcomentario`, `nombre`, `email`, `Comentario`, `tema`) VALUES
(0, 'Tomas', 'tomas@gmail.com', 'Buenas!, probando la db.', 'BdD'),
(1, 'tomas', 'tomas@gmail.com', 'Agregando segundo mensaje', '2domensaje'),
(2, 'tomas', 'tomas@gmail.com', 'Agregando segundo mensaje', '2domensaje'),
(8, 'tom', '', '', 'bddº'),
(9, 'tom', '', '', 'bddº'),
(10, 'tom', '', '', 'bddº'),
(11, 'Tomasº', 'prueba@gmail.com', 'Buenas me llamotomas este es un post para probar funcionamiento asi que voy a escribir lo que permite el tamaño', 'Bdd conectada!'),
(12, 'tut', 'tut@tut.com', 'Buenas aprobechadndo que funciona aprobecho a escribir una lineas para salludarlos!! buenas!! ', 'bddº');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `idlocalidad` int(11) NOT NULL,
  `nombrelocalidad` varchar(40) NOT NULL,
  `idprovlocalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idlocalidad`, `nombrelocalidad`, `idprovlocalidad`) VALUES
(1, 'Moreno', 3),
(2, 'Guaymallén', 4),
(3, 'Cafayate', 2),
(4, 'Cruz Alta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedido` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `lugarentrega` varchar(80) NOT NULL,
  `localidad` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  `codpostal` varchar(9) NOT NULL,
  `formadepago` varchar(10) NOT NULL,
  `tarjtitular` varchar(40) NOT NULL,
  `tarjnumero` int(11) NOT NULL,
  `tarjvto` varchar(10) NOT NULL,
  `tarjclave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idpedido`, `nombre`, `apellido`, `usuario`, `mail`, `lugarentrega`, `localidad`, `provincia`, `codpostal`, `formadepago`, `tarjtitular`, `tarjnumero`, `tarjvto`, `tarjclave`) VALUES
(1, 'Pedro', 'Suarez', 'psuarez', 'dsf@dsf.com', 'Lavalle 3222', 1, 1, '1233', 'o', 'Pedro suarez', 2147483647, '0422', 1245),
(2, '', 'Suarez', 'psuarez', 'pedro@gmail.com', 'Lavalle 3222', 1, 1, '1234', 'o', 'Pedro suarez', 2147483647, '0422', 325),
(3, 'Pedro', 'Suarez', 'psuarez', 'pedro@gmail.com', 'Lavalle 3222', 1, 1, '1233', 'o', 'Pedro suarez', 2147483647, '0422', 123),
(4, 'Pedro', 'Suarez', 'psuarez', 'pedro@gmail.com', 'Lavalle 3222', 1, 1, '1234', 'o', 'sdf', 2147483647, 'sdf', 1245),
(5, 'Juan', 'Rodriguez', 'jrodriguez', 'jrodriguez@gmail.com', 'Av. Rivadavia 32556', 1, 2, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(6, 'María', 'Rosalex', 'mrosales', 'jrodriguez@gmail.com', 'Jujuy 323', 1, 2, '3433', 'o', 'María Rosales', 2147483647, '0422', 314),
(7, 'Pedro', 'Suarez', 'jrodriguez', 'dsf@vorterix.com', 'Av. Rivadavia 32556', 1, 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(8, 'Juana', 'Rodriguez', 'sdf', 'jrodriguez@gmail.com', 'Lavalle 3222', 1, 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(9, 'Juana', 'Rodriguez', 'sdf', 'jrodriguez@gmail.com', 'Lavalle 3222', 1, 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(10, 'Hermeto', 'Carmona', 'hcarmona', 'hcarmona@gmail.com', 'Av. La Plata 2233 ', 1, 1, '1882', 'o', 'ss', 33, '33', 33),
(11, 'ss', 'ss', 'ss', 'prueba@gmail.com', 'dd', 1, 1, '3233', 'o', 'ee', 3333, '333', 33),
(12, 'tom', 'PEP', 'TOM', 'prueba@gmail.com', 'bransen', 1, 1, '4645', 'on', 'dfgdsf', 2147483647, '565645', 4545656),
(13, 'Tom', 'palm', 'tom@me', 'tom@me', 'Bola', 1, 1, '1414', 'on', 'Memo', 2147483647, '21/21', 333),
(14, 'Tomas', 'Palmeyro', 'tom@me', 'tom@me', 'bransen', 1, 1, '1414', 'on', 'tom', 999, '21]/21', 21342),
(15, 'Tomas', 'Palmeyro', 'Tom', 'prueba@gmail.com', 'bransen', 1, 1, '1414', 'on', 'tom', 2147483647, '21/21', 2432),
(16, 'Tomas', 'Palmeyro', 'Tom', 'tomiprueba@gmail.com', 'bransen', 1, 1, 'Edit', 'on', 'tut', 22223333, '21', 323);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idprovincia` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idprovincia`, `nombre`) VALUES
(1, 'Tucuman'),
(2, 'Salta'),
(3, 'Buenos Aires'),
(4, 'Mendoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `nombreyapellido` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `usuario`, `clave`, `nombreyapellido`) VALUES
(1, 'prueba@gmail.com', '909090', 0x4a6f73c3a92049676e6163696f),
(2, 'mail@hotmail.com', '808080', 0x4a75616e204361726c6f73),
(3, 'Tom', '1515', ''),
(6, 'nuevo@gmail.com', '11', ''),
(7, 'nuevo@gmail.com', '11', ''),
(9, 'Holaprofe@tom.com', '12345', ''),
(10, 'pruebanueva@gmail.co', '909090', ''),
(11, 'tom@me', '1234', ''),
(12, 'tomasprb@gmail.com', '1234!S', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogmensajes`
--
ALTER TABLE `blogmensajes`
  ADD PRIMARY KEY (`idcomentario`) USING BTREE;

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`idlocalidad`),
  ADD UNIQUE KEY `LocProvincia` (`idlocalidad`),
  ADD KEY `LocProv` (`idprovlocalidad`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedido`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idprovincia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blogmensajes`
--
ALTER TABLE `blogmensajes`
  MODIFY `idcomentario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `idlocalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idprovincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `LocProv` FOREIGN KEY (`idprovlocalidad`) REFERENCES `provincias` (`idprovincia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
