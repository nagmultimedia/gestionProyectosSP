-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2021 a las 21:33:24
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consusn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `id_usuario` int(10) NOT NULL,
  `id_proyecto` int(10) NOT NULL,
  `id_tramo` int(15) DEFAULT NULL,
  `id_tarea` int(10) NOT NULL,
  `bloques_asig` int(5) DEFAULT NULL,
  `tiempoEstimado` int(5) DEFAULT NULL,
  `cantModif` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`id_usuario`, `id_proyecto`, `id_tramo`, `id_tarea`, `bloques_asig`, `tiempoEstimado`, `cantModif`) VALUES
(10, 10, 7, 6, 45, 110, 0);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caractproy`
--

CREATE TABLE `caractproy` (
  `id` int(10) NOT NULL,
  `detalle` varchar(30) NOT NULL,
  `grilla05` tinyint(1) DEFAULT NULL,
  `grilla1` tinyint(1) DEFAULT NULL,
  `grilla2` tinyint(1) DEFAULT NULL,
  `grilla5` tinyint(1) DEFAULT NULL,
  `grilla10` tinyint(1) DEFAULT NULL,
  `grilla50` tinyint(1) DEFAULT NULL,
  `grillaotro` tinyint(1) DEFAULT NULL,
  `grillaotrotexto` varchar(30) DEFAULT NULL,
  `formato_IMG` tinyint(1) DEFAULT NULL,
  `formato_TIFF` tinyint(1) DEFAULT NULL,
  `formato_TXT` tinyint(1) DEFAULT NULL,
  `curvasnivel_125` tinyint(1) DEFAULT NULL,
  `curvasnivel_51` tinyint(1) DEFAULT NULL,
  `curvasnivel_102` tinyint(1) DEFAULT NULL,
  `curvasnivel_otro` tinyint(1) DEFAULT NULL,
  `curvasnivel_otroTXT` varchar(15) DEFAULT NULL,
  `cn_FDWG` tinyint(1) DEFAULT NULL,
  `cn_FSHP` tinyint(1) DEFAULT NULL,
  `cn_FKMZ` tinyint(1) DEFAULT NULL,
  `fvDWG` tinyint(1) DEFAULT NULL,
  `fvshp` tinyint(1) DEFAULT NULL,
  `fvkmz` tinyint(1) DEFAULT NULL,
  `fidwg` tinyint(1) DEFAULT NULL,
  `fishp` tinyint(1) DEFAULT NULL,
  `fikmz` tinyint(1) DEFAULT NULL,
  `md05` tinyint(1) DEFAULT NULL,
  `md1` tinyint(1) DEFAULT NULL,
  `md2` tinyint(1) DEFAULT NULL,
  `md5` tinyint(1) DEFAULT NULL,
  `md10` tinyint(1) DEFAULT NULL,
  `md50` tinyint(1) DEFAULT NULL,
  `mdotro` tinyint(1) DEFAULT NULL,
  `mdotrotxt` varchar(15) DEFAULT NULL,
  `formMDSimg` int(1) DEFAULT NULL,
  `formMDStiff` int(1) DEFAULT NULL,
  `formMDStxt` int(1) DEFAULT NULL,
  `ampx30` tinyint(1) DEFAULT NULL,
  `ampx20` tinyint(1) DEFAULT NULL,
  `ampx15` tinyint(1) DEFAULT NULL,
  `ampx10` tinyint(1) DEFAULT NULL,
  `ampx08` tinyint(1) DEFAULT NULL,
  `ampx06` tinyint(1) DEFAULT NULL,
  `ampxotro` tinyint(1) DEFAULT NULL,
  `ampxotrotxt` varchar(15) DEFAULT NULL,
  `formFoto_ecw` int(1) DEFAULT NULL,
  `formFoto_TIFF` int(1) DEFAULT NULL,
  `formFoto_original` int(1) DEFAULT NULL,
  `aclE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caractproy`
--

INSERT INTO `caractproy` (`id`, `detalle`, `grilla05`, `grilla1`, `grilla2`, `grilla5`, `grilla10`, `grilla50`, `grillaotro`, `grillaotrotexto`, `formato_IMG`, `formato_TIFF`, `formato_TXT`, `curvasnivel_125`, `curvasnivel_51`, `curvasnivel_102`, `curvasnivel_otro`, `curvasnivel_otroTXT`, `cn_FDWG`, `cn_FSHP`, `cn_FKMZ`, `fvDWG`, `fvshp`, `fvkmz`, `fidwg`, `fishp`, `fikmz`, `md05`, `md1`, `md2`, `md5`, `md10`, `md50`, `mdotro`, `mdotrotxt`, `formMDSimg`, `formMDStiff`, `formMDStxt`, `ampx30`, `ampx20`, `ampx15`, `ampx10`, `ampx08`, `ampx06`, `ampxotro`, `ampxotrotxt`, `formFoto_ecw`, `formFoto_TIFF`, `formFoto_original`, `aclE`) VALUES
(1, 'Rio diamante                  ', 0, 0, 0, 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, '2*250          ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 'Este se va a replicar                                                                                                                                                                                                                                          '),
(2, 'Jachal  PTL_A                 ', 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 1, 0, 0, 0, '', 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '0.5            ', 0, 1, 1, ''),
(3, 'ProyectoDePrueba E1           ', 0, 0, 0, 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, 1, '2*250          ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 0, 0, 0, 'Este se va a replicar                                                                                                                                                                                                                                          ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargahoras`
--

CREATE TABLE `cargahoras` (
  `id` int(20) NOT NULL,
  `id_proyecto` int(10) NOT NULL,
  `id_tramo` int(15) DEFAULT NULL,
  `id_tarea` int(10) DEFAULT '999',
  `bloques_Rea` int(5) DEFAULT NULL,
  `fecha` date NOT NULL,
  `horas` float NOT NULL,
  `id_usuario` int(5) NOT NULL,
  `cattarea` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargahoras`
--

INSERT INTO `cargahoras` (`id`, `id_proyecto`, `id_tramo`, `id_tarea`, `bloques_Rea`, `fecha`, `horas`, `id_usuario`, `cattarea`) VALUES
(3, 3, 4, 7, 58, '2021-07-02', 1.5, 14, 2),
(4, 3, 4, 2, 3, '2021-07-02', 6.5, 14, 0),
(5, 3, 4, 2, 56, '2021-07-05', 8, 14, 0),
(6, 3, 4, 1, 125, '2021-01-01', 5, 9, 1),
(7, 3, 5, 6, 12, '2021-09-02', 33, 1, 2),
(9, 3, 4, 1, 30, '2021-09-02', 16, 1, 1),
(10, 3, 4, 1, 30, '2021-09-02', 16, 1, 1),
(11, 3, 5, 1, 25, '2021-01-01', 8, 9, 1),
(12, 3, 5, 1, 0, '2021-01-01', 8, 9, 1),
(13, 10, 7, 1, 1, '2021-02-01', 2, 14, 1),
(15, 3, 5, 1, 0, '2021-01-01', 1, 9, 0),
(16, 10, 7, 1, 0, '2021-01-01', 1, 9, 5),
(17, 10, 7, 1, 0, '2021-01-01', 1, 9, 5),
(18, 3, 0, 9, 0, '2021-01-01', 3, 9, 5),
(19, 10, 7, 8, 0, '2021-01-01', 6, 9, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelacceso`
--

CREATE TABLE `nivelacceso` (
  `id` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivelacceso`
--

INSERT INTO `nivelacceso` (`id`, `nombre`) VALUES
(0, 'super usuario'),
(1, 'administrador'),
(2, 'operario'),
(3, 'campo'),
(4, 'altasbasicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planifdevuelo`
--

CREATE TABLE `planifdevuelo` (
  `id` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `area_HA` int(10) DEFAULT NULL,
  `altura_Vuelo` int(10) DEFAULT NULL,
  `velocidad` int(4) DEFAULT NULL,
  `fov` int(10) DEFAULT NULL,
  `ancho_barrido` int(10) DEFAULT NULL,
  `num_pia` int(10) DEFAULT NULL,
  `san_rate` float DEFAULT NULL,
  `densidad_m2` float DEFAULT NULL,
  `precision_H` float DEFAULT NULL,
  `precision_VPromedio` float DEFAULT NULL,
  `cantidad_lineas` int(10) DEFAULT NULL,
  `longitud_km` int(10) DEFAULT NULL,
  `tamanio_px` float DEFAULT NULL,
  `cantidad_imgs` int(10) DEFAULT NULL,
  `solapamiento_longitudinal` int(10) DEFAULT NULL,
  `solapamiento_transversal` int(10) DEFAULT NULL,
  `horas` float DEFAULT NULL,
  `potencia` int(10) DEFAULT NULL,
  `id_proyecto` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planifdevuelo`
--

INSERT INTO `planifdevuelo` (`id`, `nombre`, `area_HA`, `altura_Vuelo`, `velocidad`, `fov`, `ancho_barrido`, `num_pia`, `san_rate`, `densidad_m2`, `precision_H`, `precision_VPromedio`, `cantidad_lineas`, `longitud_km`, `tamanio_px`, `cantidad_imgs`, `solapamiento_longitudinal`, `solapamiento_transversal`, `horas`, `potencia`, `id_proyecto`) VALUES
(1, 'Planif rioD                   ', 88000, 2500, 100, 36, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(2, 'Jachal                        ', 35000, 2500, 100, 36, 785, 2, 46, 4, 0.2, 0.15, 60, 3510, 0.15, 3500, 60, 25, 11, 100, 10),
(3, 'ProyectoDePrueba demo01       ', 45, 45, 45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12);

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
  `factordeescala` varchar(5) NOT NULL,
  `id_proyInicial` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyeccion`
--

INSERT INTO `proyeccion` (`id`, `nombre`, `longcentral`, `latorigen`, `falsonorte`, `falsoeste`, `factordeescala`, `id_proyInicial`) VALUES
(1, 'Faja 1 - GK', -72, -90, 0, 1500000, '1', 1),
(2, 'Faja 2 - GK', -69, -90, 0, 2500000, '1', 1),
(3, 'Faja 3 - GK', -66, -90, 0, 3500000, '1', 1),
(4, 'Faja 4 - GK', -63, -90, 0, 4500000, '1', 1),
(5, 'Faja 5 - GK', -60, -90, 0, 5500000, '1', 1),
(6, 'Faja 6 - GK', -57, -90, 0, 6500000, '1', 1),
(7, 'Faja 7 - GK', -54, -90, 0, 7500000, '1', 1),
(8, 'col 18', 0, 0, 0, 0, '', 2),
(9, 'col 19', 0, 0, 0, 0, '', 2),
(10, 'col 20', 0, 0, 0, 0, '', 2),
(11, 'col 21', 0, 0, 0, 0, '', 2),
(12, 'Faja Local', 0, 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyeccionauxfila`
--

CREATE TABLE `proyeccionauxfila` (
  `id` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `id_proyeccion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyeccionauxfila`
--

INSERT INTO `proyeccionauxfila` (`id`, `nombre`, `id_proyeccion`) VALUES
(1, 'Fila K', 2),
(2, 'Fila J', 2),
(3, 'Fila H', 2),
(4, 'Fila G', 2),
(5, ' Fila F', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyeccioninicial`
--

CREATE TABLE `proyeccioninicial` (
  `id` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyeccioninicial`
--

INSERT INTO `proyeccioninicial` (`id`, `nombre`) VALUES
(1, 'gaussK'),
(2, 'UTM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `id_caracteristicas` int(10) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  `tamanoEnKm2` float DEFAULT NULL,
  `numbloques` int(5) DEFAULT NULL,
  `dgncalcado` varchar(50) DEFAULT NULL,
  `tamanoBloqueEnKm2` int(5) DEFAULT NULL,
  `id_sistema` int(10) DEFAULT NULL,
  `id_proyeccion` varchar(50) DEFAULT NULL,
  `lynx` tinyint(1) DEFAULT NULL,
  `als60` tinyint(1) DEFAULT NULL,
  `fotoaerea` tinyint(1) DEFAULT NULL,
  `als80` int(1) DEFAULT NULL,
  `id_requisitos` int(10) DEFAULT NULL,
  `id_kmHa` int(2) DEFAULT NULL,
  `faja_aclaraciones` varchar(254) DEFAULT NULL,
  `capaMDT` int(1) DEFAULT NULL,
  `capaVecto` int(1) DEFAULT NULL,
  `capaQA` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `nombre`, `id_caracteristicas`, `ubicacion`, `provincia`, `tamanoEnKm2`, `numbloques`, `dgncalcado`, `tamanoBloqueEnKm2`, `id_sistema`, `id_proyeccion`, `lynx`, `als60`, `fotoaerea`, `als80`, `id_requisitos`, `id_kmHa`, `faja_aclaraciones`, `capaMDT`, `capaVecto`, `capaQA`) VALUES
(3, 'Rio Diamante        ', 0, 'San Rafael                                        ', ' Mendoza                      ', 88000, 1100, 'riodiamante.dgn                                   ', 1, 0, 'gaussK Faja 3 - GK                                ', 0, 1, 0, 0, 2, 1, '                                                                                                                                                                                                                                                              ', 1, 1, 1),
(10, 'Jachal              ', 2, 'San Juan                                          ', '0', 5000, 760, '00_Calcado_Jachal_PTLA                            ', 1, 6, 'gaussK Faja 3 - GK ', 0, 1, 1, 0, 2, 1, 'La proyección es únicamente para el proceso de edición de superficie                                                                                                                                                                                          ', 1, 1, 1),
(12, 'ProyectoDePrueba    ', 0, 'Resistencia                                       ', ' Chaco                        ', 5000, 50, 'proyectoppp-ddd.dgn                               ', 1, 0, 'gaussK Faja 3 - GK                                ', 0, 1, 0, 1, 0, 1, 'la faja es tres pero va a ser verificada por el cliente en dos meses.                                                                                                                                                                                         ', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisitos`
--

CREATE TABLE `requisitos` (
  `id` int(20) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `ejeybordesinclasificar` tinyint(1) DEFAULT NULL,
  `agua` tinyint(1) DEFAULT NULL,
  `canal` tinyint(1) DEFAULT NULL,
  `cauceSeco` tinyint(1) DEFAULT NULL,
  `cementerio` tinyint(1) DEFAULT NULL,
  `dique` tinyint(1) NOT NULL,
  `autodromo` tinyint(1) DEFAULT NULL,
  `ejeybordeclasificados` tinyint(1) DEFAULT NULL,
  `banquinapavimentada` tinyint(1) DEFAULT NULL,
  `bordedecamino` tinyint(1) DEFAULT NULL,
  `caminoPrincipal` tinyint(1) DEFAULT NULL,
  `caminossecundarios` tinyint(1) DEFAULT NULL,
  `carrildesaceleracion` tinyint(1) DEFAULT NULL,
  `accesos` tinyint(1) DEFAULT NULL,
  `huellasentranqueras` tinyint(1) DEFAULT NULL,
  `darsenas` tinyint(1) DEFAULT NULL,
  `cordones` tinyint(1) DEFAULT NULL,
  `manzanas` tinyint(1) DEFAULT NULL,
  `limitedecalzada` tinyint(1) DEFAULT NULL,
  `cotasenbordesyeje` tinyint(1) DEFAULT NULL,
  `lineaselectricas` tinyint(1) DEFAULT NULL,
  `postesdelineaselectricas` tinyint(1) DEFAULT NULL,
  `transformadores` tinyint(1) DEFAULT NULL,
  `postesdeiluminacion` tinyint(1) DEFAULT NULL,
  `galibos` tinyint(1) DEFAULT NULL,
  `alambrados` tinyint(1) DEFAULT NULL,
  `tranqueras` tinyint(1) DEFAULT NULL,
  `guardaganados` tinyint(1) DEFAULT NULL,
  `postedetranquera` tinyint(1) DEFAULT NULL,
  `cercodemadera` tinyint(1) DEFAULT NULL,
  `cercometalico` tinyint(1) DEFAULT NULL,
  `edificaciones` tinyint(1) DEFAULT NULL,
  `perfilestransversales` tinyint(1) DEFAULT NULL,
  `garitas` tinyint(1) DEFAULT NULL,
  `alcantarillassindatos` tinyint(1) DEFAULT NULL,
  `alcantarillascondatos` tinyint(1) DEFAULT NULL,
  `alcantarillastransversales` tinyint(1) DEFAULT NULL,
  `alcantarillaslaterales` tinyint(1) DEFAULT NULL,
  `barandasmetalicas` tinyint(1) DEFAULT NULL,
  `carteles` tinyint(1) DEFAULT NULL,
  `pretiles` tinyint(1) DEFAULT NULL,
  `mojonkilometrico` tinyint(1) DEFAULT NULL,
  `senializacionhorizontal` tinyint(1) DEFAULT NULL,
  `espaciosverdes` tinyint(1) DEFAULT NULL,
  `destinos` tinyint(1) DEFAULT NULL,
  `puentes` tinyint(1) DEFAULT NULL,
  `luminarias` tinyint(1) DEFAULT NULL,
  `viasferrocarril` tinyint(1) DEFAULT NULL,
  `estacionesferroviarias` tinyint(1) DEFAULT NULL,
  `semaforos` tinyint(1) DEFAULT NULL,
  `telefoniadeemergencia` tinyint(1) DEFAULT NULL,
  `lomosdeburro` tinyint(1) DEFAULT NULL,
  `gasoducto` tinyint(1) DEFAULT NULL,
  `umbrales` tinyint(1) DEFAULT NULL,
  `puntosfijos` tinyint(1) DEFAULT NULL,
  `arboles` tinyint(1) DEFAULT NULL,
  `aguarios` tinyint(1) DEFAULT NULL,
  `basculas` tinyint(1) DEFAULT NULL,
  `lineasAltaTension` tinyint(1) DEFAULT NULL,
  `subestacionElectrica` tinyint(4) DEFAULT NULL,
  `Aclaraciones` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `requisitos`
--

INSERT INTO `requisitos` (`id`, `nombre`, `ejeybordesinclasificar`, `agua`, `canal`, `cauceSeco`, `cementerio`, `dique`, `autodromo`, `ejeybordeclasificados`, `banquinapavimentada`, `bordedecamino`, `caminoPrincipal`, `caminossecundarios`, `carrildesaceleracion`, `accesos`, `huellasentranqueras`, `darsenas`, `cordones`, `manzanas`, `limitedecalzada`, `cotasenbordesyeje`, `lineaselectricas`, `postesdelineaselectricas`, `transformadores`, `postesdeiluminacion`, `galibos`, `alambrados`, `tranqueras`, `guardaganados`, `postedetranquera`, `cercodemadera`, `cercometalico`, `edificaciones`, `perfilestransversales`, `garitas`, `alcantarillassindatos`, `alcantarillascondatos`, `alcantarillastransversales`, `alcantarillaslaterales`, `barandasmetalicas`, `carteles`, `pretiles`, `mojonkilometrico`, `senializacionhorizontal`, `espaciosverdes`, `destinos`, `puentes`, `luminarias`, `viasferrocarril`, `estacionesferroviarias`, `semaforos`, `telefoniadeemergencia`, `lomosdeburro`, `gasoducto`, `umbrales`, `puntosfijos`, `arboles`, `aguarios`, `basculas`, `lineasAltaTension`, `subestacionElectrica`, `Aclaraciones`) VALUES
(2, 'Jachal_PTL_A                  ', 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 'Badén                                                                                                                                                                '),
(3, 'ProyectoDePrueba              ', 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 'Badén                                                                                                                                                                                                                                                         ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema`
--

CREATE TABLE `sistema` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sistema`
--

INSERT INTO `sistema` (`id`, `nombre`, `descripcion`) VALUES
(6, 'POSGAR07            ', '                                                  '),
(8, 'Local', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id` int(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id`, `nombre`) VALUES
(1, 'Vectorizacion Microstation'),
(2, 'Edicion Nube Microstation'),
(3, 'Vectorizacion CAD'),
(6, 'Correccion Vectorizacion'),
(7, 'Correccion Nube'),
(8, 'Grillas'),
(9, 'Licencia medica'),
(10, 'Meet / reunion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramo`
--

CREATE TABLE `tramo` (
  `id` int(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cantBloq` int(10) DEFAULT NULL,
  `id_proyecto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tramo`
--

INSERT INTO `tramo` (`id`, `nombre`, `cantBloq`, `id_proyecto`) VALUES
(1, 'vcp1                          ', 500, 0),
(2, 'vcp2                          ', 400, 0),
(3, 'vcp3                          ', 700, 0),
(4, 'Centro                        ', 1000, 3),
(5, 'Este                          ', 1300, 3),
(7, 'PTL_A                         ', 2222, 10),
(9, 'Tramo1                        ', 50, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(15) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `nomUsuario` varchar(30) NOT NULL,
  `contrasena` varchar(10) NOT NULL,
  `id_nivelacceso` int(1) NOT NULL,
  `mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `nomUsuario`, `contrasena`, `id_nivelacceso`, `mail`) VALUES
(1, 'Daniela', 'Gonzalez', 'daniela_gonzalez', '123456', 2, 'dgonzalez@consularsa.com.ar'),
(3, 'Pablo', 'Quintanilla', 'pablo_quintanilla', '123456', 2, 'pquintanilla@consularsa.com.ar'),
(9, 'Gabriel', 'Gatti', 'gabriel_gatti', '123456    ', 1, 'ggarciagatti@consularsa.com.ar'),
(10, 'Leandro        ', 'Pinto                         ', 'lpinto                        ', '123456    ', 1, 'lpinto@consularsa.com.ar                          '),
(14, 'Natacha        ', 'Martinez                      ', 'nmartinez                     ', '123456    ', 0, 'nmartinez@consularsa.com.ar                       '),
(15, 'Sebastian      ', 'Casado                        ', 'sebastian_casado              ', '123456    ', 2, 'scasado@consularsa.com.ar             ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `patente` varchar(10) NOT NULL,
  `modelo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`id_proyecto`,`id_usuario`,`id_tarea`);

--
-- Indices de la tabla `campo`
--
ALTER TABLE `campo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caractproy`
--
ALTER TABLE `caractproy`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargahoras`
--
ALTER TABLE `cargahoras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivelacceso`
--
ALTER TABLE `nivelacceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planifdevuelo`
--
ALTER TABLE `planifdevuelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyeccionauxfila`
--
ALTER TABLE `proyeccionauxfila`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyeccioninicial`
--
ALTER TABLE `proyeccioninicial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `requisitos`
--
ALTER TABLE `requisitos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistema`
--
ALTER TABLE `sistema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tramo`
--
ALTER TABLE `tramo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campo`
--
ALTER TABLE `campo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caractproy`
--
ALTER TABLE `caractproy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cargahoras`
--
ALTER TABLE `cargahoras`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `planifdevuelo`
--
ALTER TABLE `planifdevuelo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `proyeccionauxfila`
--
ALTER TABLE `proyeccionauxfila`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proyeccioninicial`
--
ALTER TABLE `proyeccioninicial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `requisitos`
--
ALTER TABLE `requisitos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sistema`
--
ALTER TABLE `sistema`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tramo`
--
ALTER TABLE `tramo`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
