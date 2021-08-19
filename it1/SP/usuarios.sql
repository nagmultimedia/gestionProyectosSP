
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(15) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `nomUsuario` varchar(15) NOT NULL,
  `contrasena` varchar(10) NOT NULL,
  `id_nivelacceso` int(1) NOT NULL,
  `mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
