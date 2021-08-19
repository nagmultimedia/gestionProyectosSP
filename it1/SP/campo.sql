
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campo`
--

CREATE TABLE `campo` (
  `id` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `id_proyecto` int(10) NOT NULL,
  `fecinicio` date NOT NULL,
  `fecfinal` date NOT NULL,
  `red` int(5) NOT NULL,
  `ctrl` int(5) NOT NULL,
  `alc` int(5) NOT NULL,
  `cinematico` int(5) NOT NULL,
  `vuelo` int(5) NOT NULL,
  `reconocimiento` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
