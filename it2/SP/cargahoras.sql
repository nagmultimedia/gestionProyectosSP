
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargahoras`
--

CREATE TABLE `cargahoras` (
  `id_proyecto` int(10) NOT NULL,
  `id_tramo` int(10) DEFAULT NULL,
  `id_tarea` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `horas` float NOT NULL,
  `id_usuario` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
