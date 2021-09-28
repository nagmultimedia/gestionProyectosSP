
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `id_tramo` varchar(50) DEFAULT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `tamaño` varchar(20) NOT NULL,
  `numbloques` int(5) NOT NULL,
  `dgncalcado` varchar(15) DEFAULT NULL,
  `tamanobloque` int(5) NOT NULL,
  `id_sistema` int(5) NOT NULL,
  `id_proyeccion` int(5) NOT NULL,
  `lynx` tinyint(1) DEFAULT NULL,
  `als60` tinyint(1) DEFAULT NULL,
  `fotoaerea` tinyint(1) DEFAULT NULL,
  `id_requisitos` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
