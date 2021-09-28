
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyeccion`
--

CREATE TABLE `proyeccion` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `longcentral` float NOT NULL,
  `latorigen` float NOT NULL,
  `falsonorte` float NOT NULL,
  `falsoeste` float NOT NULL,
  `factordeescala` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
