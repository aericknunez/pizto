-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-08-2019 a las 10:29:13
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizto_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alter_materiaprima_reporte`
--

CREATE TABLE `alter_materiaprima_reporte` (
  `id` int(6) NOT NULL,
  `producto` int(6) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla para los productos que se muestran en el reporte especial';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alter_opciones`
--

CREATE TABLE `alter_opciones` (
  `id` int(5) NOT NULL,
  `icono` varchar(50) NOT NULL,
  `up_fecha` varchar(30) NOT NULL,
  `actualizar` int(6) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alter_opciones`
--

INSERT INTO `alter_opciones` (`id`, `icono`, `up_fecha`, `actualizar`, `td`, `hash`, `time`) VALUES
(2, '23418', '', 1, 0, '3d0b3223a0', 1566686625);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alter_producto_reporte`
--

CREATE TABLE `alter_producto_reporte` (
  `id` int(6) NOT NULL,
  `producto` int(6) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla para los productos que se muestran en el reporte especial';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(4) NOT NULL,
  `cod` int(4) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `edo` int(2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `cod`, `categoria`, `edo`, `td`, `hash`, `time`) VALUES
(1, 9901, 'Clasicas', 0, 0, '2549f68fd4', 1565038137),
(2, 9902, 'Especialidades', 0, 0, '355bd133a6', 1565038137),
(3, 9903, 'Gourmet Esp', 0, 0, '509841b7d4', 1565038137),
(4, 9904, 'Alitas', 0, 0, '3e012209e2', 1565038137),
(5, 9905, 'Extras', 0, 0, '458381337c', 1565038137);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_master`
--

CREATE TABLE `config_master` (
  `id` int(6) NOT NULL,
  `sistema` varchar(60) NOT NULL,
  `cliente` varchar(60) NOT NULL,
  `slogan` varchar(60) NOT NULL,
  `propietario` varchar(60) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `giro` varchar(60) NOT NULL,
  `nit` varchar(40) NOT NULL,
  `imp` float(10,2) NOT NULL,
  `propina` float(10,2) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `skin` varchar(30) NOT NULL,
  `tipo_inicio` int(2) NOT NULL COMMENT '1= rapida 2 = mesas',
  `pais` varchar(50) NOT NULL,
  `moneda` varchar(30) NOT NULL,
  `moneda_simbolo` varchar(10) NOT NULL,
  `nombre_impuesto` varchar(10) NOT NULL,
  `nombre_documento` varchar(10) NOT NULL,
  `inicio_tx` int(2) NOT NULL,
  `otras_ventas` int(2) NOT NULL COMMENT '0 inactivo, 1 activo',
  `venta_especial` int(2) NOT NULL COMMENT '0 inactivo, 1 activo',
  `imprimir_antes` varchar(4) DEFAULT NULL COMMENT 'imprimir antes de cobrar',
  `cambio_tx` varchar(4) DEFAULT NULL COMMENT 'Permitir Cambio Tx',
  `td` int(5) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config_master`
--

INSERT INTO `config_master` (`id`, `sistema`, `cliente`, `slogan`, `propietario`, `telefono`, `giro`, `nit`, `imp`, `propina`, `direccion`, `email`, `imagen`, `logo`, `skin`, `tipo_inicio`, `pais`, `moneda`, `moneda_simbolo`, `nombre_impuesto`, `nombre_documento`, `inicio_tx`, `otras_ventas`, `venta_especial`, `imprimir_antes`, `cambio_tx`, `td`, `hash`, `time`) VALUES
(1, 'Sistema de Control', 'SISTEMA PIZTO', 'Desarrollo de Software', 'Erick Nunez', '27821595', 'Sistema de ventas', '0207-210386-102-9', 20.00, 0.00, 'Urb. Las Maericas', 'aerick.nunez@gmail.com', '220190828.jpg', 'pizto.png', 'cyan-skin', 1, '1', 'Dolares', '$', 'IVA', 'NIT', 0, 1, 1, 'on', 'on', 0, '1afcd4ad17', 1566984905);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_root`
--

CREATE TABLE `config_root` (
  `id` int(5) NOT NULL,
  `expira` varchar(100) NOT NULL,
  `expiracion` varchar(100) NOT NULL,
  `ftp_servidor` varchar(100) NOT NULL,
  `ftp_path` varchar(100) NOT NULL,
  `ftp_ruta` varchar(100) NOT NULL,
  `ftp_user` varchar(100) NOT NULL,
  `ftp_password` varchar(100) NOT NULL,
  `tipo_sistema` varchar(100) NOT NULL COMMENT '1 - basico, 2- profesionl, 3 -corporativo',
  `plataforma` varchar(100) NOT NULL COMMENT '0 local, 1, web',
  `pantallas` varchar(100) NOT NULL,
  `td` int(4) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config_root`
--

INSERT INTO `config_root` (`id`, `expira`, `expiracion`, `ftp_servidor`, `ftp_path`, `ftp_ruta`, `ftp_user`, `ftp_password`, `tipo_sistema`, `plataforma`, `pantallas`, `td`, `hash`, `time`) VALUES
(1, 'eElkVGNBeXVjVFA0TEZhSUQrT2ZkQT09', 'RWljZlFnUStlQ2F1SXExSTBNYXQ1dz09', 'MDQ1dmFqbzBod0Y3cjI2UFZFa1hyZz09', 'MDQ1dmFqbzBod0Y3cjI2UFZFa1hyZz09', 'MDQ1dmFqbzBod0Y3cjI2UFZFa1hyZz09', 'MDQ1dmFqbzBod0Y3cjI2UFZFa1hyZz09', 'MDQ1dmFqbzBod0Y3cjI2UFZFa1hyZz09', 'U2JlVVA4Q1RtZnM4ZG5neW9GN2k0dz09', 'aStLSk5WaFlmVG5sdG5rbnBWbk1vZz09', 'MDQ1dmFqbzBod0Y3cjI2UFZFa1hyZz09', 0, 'b6ca999160', 1566966885);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_cocina`
--

CREATE TABLE `control_cocina` (
  `id` int(6) NOT NULL,
  `cod` int(6) NOT NULL COMMENT 'numeracion segun candidad',
  `identificador` int(6) NOT NULL COMMENT 'el id del producto en ticket',
  `producto` int(5) NOT NULL,
  `mesa` int(6) NOT NULL,
  `cliente` int(6) NOT NULL,
  `opciones` int(2) NOT NULL COMMENT '0 - sin opciones, 1 con opciones',
  `panel` int(2) NOT NULL,
  `fecha` varchar(40) NOT NULL,
  `hora` varchar(40) NOT NULL,
  `hora_salida` varchar(30) NOT NULL,
  `edo` int(2) NOT NULL COMMENT '1 activo, 2 eliminado, 3 cancelado',
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `control_cocina`
--

INSERT INTO `control_cocina` (`id`, `cod`, `identificador`, `producto`, `mesa`, `cliente`, `opciones`, `panel`, `fecha`, `hora`, `hora_salida`, `edo`, `td`, `hash`, `time`) VALUES
(1, 1, 3, 1001, 1, 1, 0, 1, '29-05-2019', '09:14:55', '09:15:15', 3, 0, 'f7ff6f958b', 1565038138),
(2, 1, 5, 1003, 1, 1, 0, 1, '29-05-2019', '09:14:58', '', 3, 0, 'ef8a2ed463', 1565038138),
(3, 2, 5, 1003, 1, 1, 0, 1, '29-05-2019', '09:15:24', '', 3, 0, '94f9c4e6b9', 1565038138),
(4, 1, 51, 1001, 26, 1, 0, 1, '05-07-2019', '09:40:00', '', 3, 0, '33f3cb64bc', 1565038138),
(5, 1, 52, 1050, 26, 1, 0, 1, '05-07-2019', '09:40:04', '', 3, 0, '16ce6a896a', 1565038138),
(6, 1, 53, 1008, 26, 1, 0, 1, '05-07-2019', '09:40:37', '', 3, 0, 'a88b917a1f', 1565038138),
(7, 2, 53, 1008, 26, 1, 0, 1, '09-07-2019', '11:49:54', '', 3, 0, 'd933ae2f75', 1565038138),
(8, 1, 60, 1058, 27, 1, 0, 1, '09-07-2019', '11:59:12', '03:20:26', 2, 0, '41729e09ee', 1566984026),
(9, 1, 63, 1001, 28, 1, 0, 1, '09-07-2019', '11:59:42', '', 3, 0, '9c63d8541a', 1565038138),
(10, 1, 68, 1058, 28, 1, 0, 1, '09-07-2019', '12:03:52', '', 3, 0, 'd4a5f7557a', 1565038138),
(11, 1, 79, 1058, 29, 2, 0, 1, '09-07-2019', '12:33:02', '', 3, 0, 'bed5e08c97', 1565038138),
(12, 1, 81, 1001, 29, 1, 0, 1, '09-07-2019', '12:41:18', '', 3, 0, '550cc90164', 1565038138),
(13, 1, 83, 1008, 29, 2, 0, 1, '09-07-2019', '12:41:24', '', 3, 0, 'a04ff69f15', 1565038138),
(14, 1, 84, 1050, 30, 1, 0, 1, '16-07-2019', '22:38:25', '03:20:28', 2, 0, '0b62b791f5', 1566984028),
(15, 1, 92, 1001, 32, 1, 0, 1, '16-07-2019', '22:39:04', '03:20:31', 2, 0, '0433b54dad', 1566984031),
(16, 1, 107, 1008, 36, 3, 0, 1, '17-07-2019', '11:44:41', '', 3, 0, '788fd4f75b', 1566984095),
(17, 1, 104, 1058, 36, 1, 0, 1, '24-08-2019', '16:32:51', '', 3, 0, 'bba0baebae', 1566984095),
(18, 1, 104, 1001, 36, 1, 0, 1, '28-08-2019', '03:18:56', '', 3, 0, 'cdfc17ddc8', 1566984095),
(19, 1, 105, 1002, 36, 1, 0, 1, '28-08-2019', '03:18:58', '', 3, 0, '8eb916f232', 1566984095),
(20, 1, 105, 1002, 36, 1, 0, 1, '28-08-2019', '03:18:59', '', 3, 0, '9d250b4128', 1566984095);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_panel_mostrar`
--

CREATE TABLE `control_panel_mostrar` (
  `id` int(6) NOT NULL,
  `producto` int(6) DEFAULT NULL,
  `panel` int(4) DEFAULT NULL,
  `td` int(4) DEFAULT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='maneja en que pantalla se mostrara el producto';

--
-- Volcado de datos para la tabla `control_panel_mostrar`
--

INSERT INTO `control_panel_mostrar` (`id`, `producto`, `panel`, `td`, `hash`, `time`) VALUES
(1, 1001, 1, 0, '198a778517', 1565038138),
(2, 1008, 1, 0, 'f8f70e5521', 1565038138),
(3, 1050, 1, 0, '898912aaad', 1565038138),
(4, 1058, 1, 0, '4ce690ff91', 1565038138);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corte_diario`
--

CREATE TABLE `corte_diario` (
  `id` int(6) NOT NULL,
  `fecha` varchar(25) NOT NULL,
  `fecha_format` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `mesas` int(10) NOT NULL,
  `clientes` int(10) NOT NULL,
  `efectivo` float(10,2) NOT NULL,
  `propina` float(10,2) NOT NULL,
  `tx` float(10,2) NOT NULL,
  `no_tx` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `gastos` float(10,2) NOT NULL,
  `diferencia` float(10,2) NOT NULL,
  `user` varchar(100) NOT NULL,
  `edo` int(4) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `corte_diario`
--

INSERT INTO `corte_diario` (`id`, `fecha`, `fecha_format`, `hora`, `mesas`, `clientes`, `efectivo`, `propina`, `tx`, `no_tx`, `total`, `gastos`, `diferencia`, `user`, `edo`, `td`, `hash`, `time`) VALUES
(1, '04-06-2019', '1559628000', '23:02:08', 0, 0, 479.00, 0.00, 0.00, 0.00, 0.00, 0.00, 479.00, '3c67697e18899300a2648199a9798dffb359cab2', 2, 0, '73aadef052', 1565038139),
(2, '04-06-2019', '1559628000', '23:37:57', 0, 0, 479.00, 0.00, 0.00, 0.00, 0.00, 0.00, 479.00, '3c67697e18899300a2648199a9798dffb359cab2', 2, 0, '1232aa88cd', 1565038139),
(3, '04-06-2019', '1559628000', '23:39:34', 0, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '3c67697e18899300a2648199a9798dffb359cab2', 2, 0, '7462db5afd', 1565038139),
(4, '04-06-2019', '1559628000', '23:42:57', 0, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '3c67697e18899300a2648199a9798dffb359cab2', 2, 0, '911df5a649', 1565038139),
(5, '04-06-2019', '1559628000', '23:44:12', 0, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '3c67697e18899300a2648199a9798dffb359cab2', 2, 0, 'ac56c3c30c', 1565038139),
(6, '04-06-2019', '1559628000', '23:48:37', 0, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '8f23b74f56', 1565038139);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturar_cai`
--

CREATE TABLE `facturar_cai` (
  `id` int(6) NOT NULL,
  `inicial` int(8) UNSIGNED ZEROFILL NOT NULL,
  `final` int(8) UNSIGNED ZEROFILL NOT NULL,
  `cai` varchar(100) NOT NULL,
  `fecha_limite` varchar(20) NOT NULL,
  `fechaF` varchar(30) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturar_impresora`
--

CREATE TABLE `facturar_impresora` (
  `id` int(5) NOT NULL,
  `impresora` varchar(50) NOT NULL,
  `comentarios` varchar(100) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturar_rtn`
--

CREATE TABLE `facturar_rtn` (
  `id` int(5) NOT NULL,
  `rtn` varchar(100) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturar_rtn`
--

INSERT INTO `facturar_rtn` (`id`, `rtn`, `cliente`, `td`, `hash`, `time`) VALUES
(1, '465465465', 'ERICK', 6, 'c7e57d7c32', 1565038139);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturar_rtn_cliente`
--

CREATE TABLE `facturar_rtn_cliente` (
  `id` int(5) NOT NULL,
  `factura` int(5) NOT NULL,
  `rtn` varchar(50) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturar_ticket`
--

CREATE TABLE `facturar_ticket` (
  `id` int(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` int(3) NOT NULL COMMENT '1 ticket, 2 factura',
  `img` varchar(50) NOT NULL,
  `txt1` int(3) NOT NULL,
  `txt2` int(3) NOT NULL,
  `txt3` int(3) NOT NULL,
  `txt4` int(3) NOT NULL,
  `n1` int(3) NOT NULL,
  `n2` int(3) NOT NULL,
  `n3` int(3) NOT NULL,
  `n4` int(3) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturar_users`
--

CREATE TABLE `facturar_users` (
  `id` int(11) NOT NULL,
  `tipo` int(3) NOT NULL,
  `ticket` int(5) NOT NULL,
  `user` varchar(50) NOT NULL,
  `clase` varchar(30) NOT NULL,
  `impresora` varchar(50) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(6) NOT NULL,
  `tipo` int(2) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `fechaF` varchar(30) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `user` varchar(100) NOT NULL,
  `edo` int(2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `tipo`, `nombre`, `descripcion`, `cantidad`, `fecha`, `fechaF`, `hora`, `user`, `edo`, `td`, `hash`, `time`) VALUES
(1, 1, 'rryt', 'ryr', 0.00, '25-06-2019', '1561442400', '02:27:40', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '849f8363c6', 1565038139),
(2, 3, 'hhjkjhjk', 'hjkhjk', 0.00, '25-06-2019', '1561442400', '02:27:54', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '6e1a31d24c', 1565038139),
(3, 3, 'cbcvb', 'cvbcvb', 0.00, '25-06-2019', '1561442400', '02:28:09', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, 'e3ec6171ab', 1565038139),
(4, 2, 'dfgd', 'fdfgdfg', 5.00, '25-06-2019', '1561442400', '02:28:32', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, 'a8e44cce07', 1565038139),
(5, 2, 'dfgd', 'fdfgdfg', 5.00, '25-06-2019', '1561442400', '02:28:32', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '9f5904e33c', 1565038139),
(6, 3, 'gfghf', 'fghfg', 44.00, '25-06-2019', '1561442400', '02:28:52', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '49a1ca8aff', 1565038139),
(7, 3, 'gfghf', 'fghfg', 44.00, '25-06-2019', '1561442400', '02:28:52', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '343e3b8355', 1565038139),
(8, 1, 'rtry', 'rtytyu', 0.00, '25-06-2019', '1561442400', '02:29:42', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '29aaf95ddb', 1565038139),
(9, 1, 'rtry', 'rtytyu', 0.00, '25-06-2019', '1561442400', '02:29:42', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '4698d21fd9', 1565038140),
(10, 2, 'rtry', 'rtyrytr', 0.00, '25-06-2019', '1561442400', '02:34:25', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, 'd39229ac47', 1565038140),
(11, 3, 'tyutu', 'tyutyu', 0.00, '25-06-2019', '1561442400', '02:35:07', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, 'e3c110d94e', 1565038140),
(12, 3, 'uiui', 'uiui', 5.00, '25-06-2019', '1561442400', '02:35:15', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, 'b868e502fb', 1565038140),
(13, 2, 'uiuiouo', 'pp[p]45', 0.00, '25-06-2019', '1561442400', '02:35:29', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 0, 0, '6581d89075', 1565038140);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_images`
--

CREATE TABLE `gastos_images` (
  `id` int(6) NOT NULL,
  `gasto` int(5) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `fechaF` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `img_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_order` int(5) NOT NULL DEFAULT '0',
  `popup` int(3) NOT NULL,
  `cod` int(4) NOT NULL,
  `edo` int(3) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_order`, `popup`, `cod`, `edo`, `td`, `hash`, `time`) VALUES
(1, 'assets/img/ico/19.png', 1, 0, 9901, 1, 0, 'af020f14df', 1565038140),
(2, 'assets/img/ico/sfgeg.png', 2, 9901, 1001, 1, 0, '5c7a69a333', 1565038140),
(3, 'assets/img/ico/egrjy.png', 3, 9901, 1002, 1, 0, '9b99390f04', 1565038140),
(4, 'assets/img/ico/5.png', 4, 9901, 1003, 1, 0, '70ed4b3e19', 1565038140),
(5, 'assets/img/ico/6.png', 5, 0, 1004, 1, 0, '643d201da7', 1565038140),
(6, 'assets/img/ico/22..png', 6, 0, 1005, 1, 0, '93687601a2', 1565038140),
(7, 'assets/img/ico/alitas.png', 7, 0, 1006, 1, 0, 'cc44545350', 1565038140),
(8, 'assets/img/ico/6.png', 8, 0, 1007, 1, 0, '938a78a3ec', 1565038140),
(9, 'assets/img/ico/gegt.png', 9, 0, 1008, 1, 0, '72255bc99b', 1565038140),
(10, 'assets/img/ico/11.png', 10, 0, 9902, 1, 0, '189ce4f4ef', 1565038140),
(11, 'assets/img/ico/12.png', 11, 0, 9903, 1, 0, 'd130c461b6', 1565038140),
(12, 'assets/img/ico/ertry.png', 1, 0, 1001, 1, 0, '5bac5c0f99', 1565038140),
(13, 'assets/img/ico/ertry.png', 12, 9902, 1009, 1, 0, '9a71ba0e66', 1565038140),
(14, 'assets/img/ico/ertry.png', 13, 9902, 1010, 1, 0, '63465ba5d7', 1565038140),
(15, 'assets/img/ico/ertry.png', 14, 9902, 1011, 1, 0, '7f5f88e626', 1565038140),
(17, 'assets/img/ico/ert.png', 15, 9902, 1012, 1, 0, '733516bcc5', 1565038140),
(18, 'assets/img/ico/ert.png', 16, 9902, 1013, 1, 0, 'ebe4fc1f34', 1565038140),
(19, 'assets/img/ico/ert.png', 17, 9902, 1014, 1, 0, 'bacb2af3fd', 1565038141),
(20, 'assets/img/ico/23.png', 18, 9902, 1015, 1, 0, '77439069f3', 1565038141),
(21, 'assets/img/ico/23.png', 19, 9902, 1016, 1, 0, 'c213d85f38', 1565038141),
(22, 'assets/img/ico/23.png', 20, 9902, 1017, 1, 0, '33c65dbe78', 1565038141),
(23, 'assets/img/ico/7.png', 21, 9902, 1018, 1, 0, '0e42184521', 1565038141),
(24, 'assets/img/ico/7.png', 22, 9902, 1019, 1, 0, '4a0d9c6bb5', 1565038141),
(25, 'assets/img/ico/8.png', 23, 9902, 1020, 1, 0, '6ea4187fe9', 1565038141),
(26, 'assets/img/ico/sfgeg.png', 24, 9902, 1021, 1, 0, '63b62f8a6b', 1565038141),
(27, 'assets/img/ico/sfgeg.png', 25, 9902, 1022, 1, 0, '48b034383a', 1565038141),
(28, 'assets/img/ico/sfgeg.png', 26, 9902, 1023, 1, 0, '7e6e014b14', 1565038141),
(29, 'assets/img/ico/10.png', 27, 9902, 1024, 1, 0, '954142e968', 1565038141),
(30, 'assets/img/ico/10.png', 28, 9902, 1025, 1, 0, '9ce5ea03aa', 1565038141),
(31, 'assets/img/ico/10.png', 29, 9902, 1026, 1, 0, 'e6471f5efe', 1565038141),
(32, 'assets/img/ico/12.png', 30, 9902, 1027, 1, 0, 'c881c3b0be', 1565038141),
(33, 'assets/img/ico/12.png', 31, 9902, 1028, 1, 0, '12331bcb69', 1565038141),
(34, 'assets/img/ico/12.png', 32, 9902, 1029, 1, 0, 'f10bc6c406', 1565038141),
(35, 'assets/img/ico/7.png', 33, 9903, 1030, 1, 0, '2379ee73b4', 1565038141),
(36, 'assets/img/ico/7.png', 34, 9903, 1031, 1, 0, '28328dede7', 1565038141),
(37, 'assets/img/ico/7.png', 35, 9903, 1032, 1, 0, 'e404309a57', 1565038141),
(38, 'assets/img/ico/rt.png', 36, 9903, 1033, 1, 0, '27b4f1adfa', 1565038141),
(39, 'assets/img/ico/rt.png', 37, 9903, 1034, 1, 0, '57b7e9dfe7', 1565038141),
(40, 'assets/img/ico/rt.png', 38, 9903, 1035, 1, 0, 'ebb9387fc7', 1565038141),
(41, 'assets/img/ico/sfgeg.png', 39, 9903, 1036, 1, 0, '2ea72cfa67', 1565038141),
(42, 'assets/img/ico/sfgeg.png', 40, 9903, 1037, 1, 0, '4b610f42b1', 1565038142),
(43, 'assets/img/ico/sfgeg.png', 41, 9903, 1038, 1, 0, '88aca0be3f', 1565038142),
(44, 'assets/img/ico/fff.png', 42, 9903, 1039, 1, 0, '4688b62834', 1565038142),
(45, 'assets/img/ico/fff.png', 43, 9903, 1040, 1, 0, '4e2a071504', 1565038142),
(46, 'assets/img/ico/fff.png', 44, 9903, 1041, 1, 0, '2568917785', 1565038142),
(47, 'assets/img/ico/ert.png', 45, 9903, 1042, 1, 0, '88cb77d37a', 1565038142),
(48, 'assets/img/ico/ert.png', 46, 9903, 1043, 1, 0, '1f29459312', 1565038142),
(49, 'assets/img/ico/ert.png', 47, 9903, 1044, 1, 0, 'f07d9b7c02', 1565038142),
(50, 'assets/img/ico/25.png', 48, 0, 1045, 1, 0, '56a775ff6b', 1565038142),
(51, 'assets/img/ico/latas.png', 49, 0, 1046, 1, 0, '4ad2344196', 1565038142),
(52, 'assets/img/ico/39.png', 50, 0, 1047, 1, 0, 'a5a16a75bf', 1565038142),
(53, 'assets/img/ico/24.png', 51, 0, 1048, 1, 0, '743da21f62', 1565038142),
(54, 'assets/img/ico/jugodenaranja.png', 52, 0, 1049, 1, 0, '99d3752043', 1565038142),
(55, 'assets/img/ico/alitass.png', 53, 0, 9904, 1, 0, '21d5860e73', 1565038142),
(56, 'assets/img/ico/102.png', 54, 9904, 1050, 1, 0, 'fce64e0118', 1565038142),
(57, 'assets/img/ico/102.png', 55, 9904, 1051, 1, 0, 'ed7a005bfc', 1565038142),
(58, 'assets/img/ico/102.png', 56, 9904, 1052, 1, 0, '39fa2f3495', 1565038142),
(59, 'assets/img/ico/15.png', 57, 9905, 1053, 1, 0, '3189fccf85', 1565038142),
(60, 'assets/img/ico/15.png', 58, 9905, 1054, 1, 0, '8aac4f537c', 1565038142),
(61, 'assets/img/ico/15.png', 59, 0, 9905, 1, 0, '6a540aa90a', 1565038142),
(63, 'assets/img/ico/gegt.png', 60, 9905, 1055, 1, 0, 'e38be38fc6', 1565038142),
(64, 'assets/img/ico/gegt.png', 61, 9905, 1056, 1, 0, 'de90f3463d', 1565038142),
(65, 'assets/img/ico/gegt.png', 62, 9905, 1057, 1, 0, '810318162a', 1565038142),
(66, 'assets/img/ico/5.png', 63, 0, 1058, 1, 0, '9ae14ad558', 1565038142);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(12, '1561208196'),
(12, '1561263448'),
(12, '1561263458'),
(11, '1562451191'),
(11, '1562618591'),
(11, '1562692155'),
(1, '1566683656'),
(11, '1566984649');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_db_sync`
--

CREATE TABLE `login_db_sync` (
  `id` int(6) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lleva el control de los cambios en las bases de datos locales';

--
-- Volcado de datos para la tabla `login_db_sync`
--

INSERT INTO `login_db_sync` (`id`, `hash`, `fecha`, `hora`) VALUES
(1, '0-0-d7f8f7ac0c50bb1cda75cc85e944d120', '27-08-2019', '22:32:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_db_user`
--

CREATE TABLE `login_db_user` (
  `id` int(6) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `td` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_imagenes`
--

CREATE TABLE `login_imagenes` (
  `id` int(6) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `categoria` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login_imagenes`
--

INSERT INTO `login_imagenes` (`id`, `imagen`, `categoria`) VALUES
(1, '0808.png', 3),
(2, '1.png', 1),
(3, '101.png', 1),
(4, '102.png', 1),
(5, '103.png', 1),
(6, '104.png', 1),
(7, '1111.png', 1),
(8, '1787.png', 1),
(9, '1800.png', 3),
(10, '2.png', 1),
(11, '20.png', 3),
(12, '21.png', 3),
(13, '22.png', 3),
(14, '2222.png', 0),
(15, '24.png', 3),
(16, '25.png', 3),
(17, '26.png', 3),
(18, '28.png', 3),
(19, '29.png', 3),
(20, '3.png', 1),
(21, '30.png', 3),
(22, '31.png', 3),
(23, '32.png', 3),
(24, '33.png', 3),
(25, '332342.png', 1),
(26, '34.png', 3),
(27, '3435.png', 2),
(28, '344.png', 3),
(29, '35.png', 3),
(30, '3554.png', 2),
(31, '36.png', 3),
(32, '37.png', 3),
(33, '38 (2).png', 3),
(34, '38.png', 3),
(35, '39.png', 3),
(36, '4.png', 1),
(37, '44.png', 3),
(38, '4534.png', 2),
(39, '4566.png', 2),
(40, '501.png', 1),
(41, '502.png', 1),
(42, '503.png', 1),
(43, '504.png', 1),
(44, '505.png', 1),
(45, '506.png', 1),
(46, '510.png', 0),
(47, '5533.png', 2),
(48, '5777.png', 2),
(49, '633.png', 0),
(50, '655454.png', 2),
(51, '66586.png', 1),
(52, '6666.png', 0),
(53, '6787.png', 2),
(54, '70.png', 0),
(55, '71.png', 2),
(56, '72.png', 0),
(57, '73.png', 3),
(58, '7577.png', 3),
(59, '7777.png', 1),
(60, '78897978.png', 1),
(61, '7897.png', 2),
(62, '7979.png', 4),
(63, '8785.png', 3),
(64, '8799.png', 2),
(65, '8845.png', 2),
(66, '8888.png', 3),
(67, '9787.png', 4),
(68, '9879.png', 0),
(69, '9977.png', 2),
(70, '9999.png', 0),
(71, 'Alo1.png', 3),
(72, 'absolut.png', 3),
(73, 'aderezo.png', 2),
(74, 'aguacate.png', 0),
(75, 'aireytierra.png', 2),
(76, 'ajo.png', 0),
(77, 'alitas.png', 2),
(78, 'alitass.png', 2),
(79, 'arroz.png', 2),
(80, 'as.png', 0),
(81, 'blacklabel.png', 3),
(82, 'bluelabel.png', 3),
(83, 'buchanans12.png', 3),
(84, 'buchanans18.png', 3),
(85, 'cacillerodeldiablo.png', 3),
(86, 'cafeamericanp.png', 4),
(87, 'cafeconcremora.png', 4),
(88, 'cafeconleche.png', 4),
(89, 'camaronesalaplancla.png', 2),
(90, 'camaronesempanixados.png', 2),
(91, 'camaronesflamenco.png', 2),
(92, 'camaronesmojo.png', 2),
(93, 'camaronestequila.png', 2),
(94, 'carne.png', 2),
(95, 'cebolla.png', 0),
(96, 'chivas12.png', 3),
(97, 'chivas18.png', 3),
(98, 'chocolatenestle.png', 4),
(99, 'chorizo.png', 2),
(100, 'churrascoalaplancha.png', 2),
(101, 'churrascocopa.png', 2),
(102, 'coca.png', 3),
(103, 'corona.png', 3),
(104, 'corralejo.png', 3),
(105, 'costilla.png', 2),
(106, 'costillaimportada.png', 2),
(107, 'costillaitaliana.png', 2),
(108, 'costillasanluis.png', 2),
(109, 'cremadepapas.png', 2),
(110, 'croastini.png', 2),
(111, 'cubalibre.png', 2),
(112, 'deditosdepollo.png', 2),
(113, 'dfs.png', 0),
(114, 'donjulio.png', 3),
(115, 'enjoy.png', 3),
(116, 'ensaladaconatun.png', 2),
(117, 'ensaladaconpollo.png', 2),
(118, 'ensaladacopacabana.png', 2),
(119, 'enter.png', 0),
(120, 'entranaderes.png', 2),
(121, 'filetemigno.png', 2),
(122, 'finlandia.png', 3),
(123, 'flordecana.png', 3),
(124, 'fresa.png', 0),
(125, 'frijoles.png', 0),
(126, 'frontera.png', 3),
(127, 'golden.png', 3),
(128, 'goldlabel.png', 3),
(129, 'greeenlabel.png', 3),
(130, 'greygoose.png', 3),
(131, 'habitacion.png', 0),
(132, 'hamburguesa.png', 2),
(133, 'hamburguesapollo.png', 2),
(134, 'hamburguesares.png', 2),
(135, 'heineken.png', 3),
(136, 'hongos.png', 2),
(137, 'hongosespanoles.png', 2),
(138, 'ice.png', 3),
(139, 'jack.png', 3),
(140, 'jamon.png', 0),
(141, 'jarana.png', 3),
(142, 'jose.png', 3),
(143, 'jugodenaranja.png', 3),
(144, 'lata.png', 3),
(145, 'latas.png', 3),
(146, 'lechuga.png', 0),
(147, 'licores.png', 3),
(148, 'licuado.png', 2),
(149, 'limon.png', 0),
(150, 'limonada.png', 3),
(151, 'limonadaconsoda.png', 3),
(152, 'lomoalaparrilla.png', 2),
(153, 'mango.png', 0),
(154, 'margarita.png', 3),
(155, 'marquesdecaceres.png', 3),
(156, 'marytierra.png', 2),
(157, 'michelada.png', 2),
(158, 'milanesadepollo.png', 2),
(159, 'modelo.png', 3),
(160, 'mojito.png', 3),
(161, 'nachos.png', 2),
(162, 'nachosconchili.png', 2),
(163, 'oldparr.png', 3),
(164, 'palomaso.png', 3),
(165, 'panconajo.png', 2),
(166, 'panini.png', 2),
(167, 'papasconqueso.png', 1),
(168, 'papasfrancesas.png', 1),
(169, 'papassalteadas.png', 2),
(170, 'parrillada.png', 2),
(171, 'pechiguitasalaplancha.png', 2),
(172, 'pechuga.png', 2),
(173, 'pechugaalaplancha.png', 2),
(174, 'pechugas.png', 2),
(175, 'pepino.png', 0),
(176, 'pepsil.png', 3),
(177, 'pilsener.png', 3),
(178, 'pina.png', 0),
(179, 'pinacolada.png', 3),
(180, 'piscina.png', 0),
(181, 'pita.png', 2),
(182, 'platano.png', 2),
(183, 'platodebocas.png', 2),
(184, 'polloalaparmesana.png', 2),
(185, 'punta jalapena.png', 2),
(186, 'pure.png', 2),
(187, 'puyasoalaparrilla.png', 2),
(188, 'quesadilla.png', 2),
(189, 'quesadillacamaron.png', 2),
(190, 'queso.png', 0),
(191, 'red.png', 0),
(192, 'redbull.png', 3),
(193, 'redlabel.png', 3),
(194, 'reposado.png', 3),
(195, 'ronzacapa15.png', 3),
(196, 'ronzacapa23.png', 3),
(197, 'ronzacapaxi.png', 3),
(198, 'salmocopacabana.png', 3),
(199, 'sangredetoro.png', 3),
(200, 'santa elena.png', 3),
(201, 'santaelenecarmenere.png', 3),
(202, 'silver.png', 3),
(203, 'smirnof.png', 3),
(204, 'sopadetortilla.png', 2),
(205, 'suprema.png', 3),
(206, 'swing.png', 3),
(207, 'tacos.png', 2),
(208, 'tajada.png', 1),
(209, 'te.png', 4),
(210, 'tehelado.png', 3),
(211, 'tocino.png', 2),
(212, 'tomate.png', 0),
(213, 'torta 2.png', 2),
(214, 'torta.png', 2),
(215, 'vegetales.png', 0),
(216, 'william.png', 3),
(217, '10.png', 1),
(218, '11.png', 1),
(219, '12.png', 1),
(220, '13.png', 1),
(221, '14.png', 1),
(222, '15.png', 1),
(223, '16.png', 1),
(224, '17.png', 1),
(225, '18.png', 1),
(226, '19.png', 1),
(227, '22..png', 1),
(228, '23.png', 1),
(229, '27.png', 1),
(230, '30.jpg', 1),
(231, '5.png', 1),
(232, '6.png', 1),
(233, '7.png', 1),
(234, '8.png', 1),
(235, '9.png', 1),
(236, 'dg.png', 1),
(237, 'ert.png', 1),
(238, 'ertry.png', 1),
(239, 'etrty.png', 1),
(240, 'fg.png', 1),
(241, 'g.png', 1),
(242, 'gegt.png', 1),
(243, 're.png', 1),
(244, 'reyu.png', 1),
(245, 'rt.png', 1),
(246, 'ryy.png', 1),
(247, 'sfgeg.png', 1),
(248, 'egrjy.png', 1),
(249, 'fff.png', 1),
(250, 'afert.png', 1),
(251, 'dfhfh.png', 1),
(252, 'dgdffgd.png', 1),
(253, 'fdghf.png', 1),
(254, 'ffghd.png', 0),
(255, 'fgh.png', 0),
(256, 'fgjhg.png', 0),
(257, 'fhdfghfgh.png', 0),
(258, 'fhfgfgh.png', 1),
(259, 'ggfdg.png', 1),
(260, 'gjf.png', 2),
(261, 'hfdh.png', 1),
(262, 'hgkh.png', 1),
(263, 'hjkkh.png', 1),
(264, 'hjkl.png', 0),
(265, 'hk.png', 0),
(266, 'hretth.png', 1),
(267, 'jfgj.png', 1),
(268, 'jfgjh.png', 1),
(269, 'jhkljl.png', 1),
(270, 'jlkkl.png', 2),
(271, 'jyuku.png', 0),
(272, 'kkh.png', 1),
(273, 'pfh.png', 2),
(274, 'rtt.png', 2),
(275, 'sgfdfgd.png', 0),
(276, 'tr.png', 0),
(277, 'tre.png', 2),
(278, 'trs.png', 4),
(279, 'tutyu.png', 2),
(280, 'tyj.png', 1),
(281, 'uou.png', 1),
(282, 'wet.png', 2),
(283, 'wrwe.png', 0),
(284, 'x1.png', 1),
(285, 'x2.png', 1),
(286, 'xsdfs.png', 1),
(287, 'ytuytui.png', 1),
(288, 'yyu.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_images_categoria`
--

CREATE TABLE `login_images_categoria` (
  `id` int(6) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login_images_categoria`
--

INSERT INTO `login_images_categoria` (`id`, `categoria`) VALUES
(1, 'Comida Rapida'),
(2, 'Restaurante'),
(3, 'Bar'),
(4, 'Cafeteria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_inout`
--

CREATE TABLE `login_inout` (
  `id` int(6) NOT NULL,
  `user` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `accion` int(2) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `navegador` varchar(250) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `fechaF` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `td` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_members`
--

CREATE TABLE `login_members` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login_members`
--

INSERT INTO `login_members` (`id`, `username`, `email`, `password`, `salt`) VALUES
(1, 'Erick', 'aerick.nunez@gmail.com', '50236c59c304c8b5c2f6b5c1af94f4416d998e3ba3fd2fc5a795f740431c35e9bbd9d4439a3dad8a182173b14291a308e4716458278fc228ad7c8f9930d9547e', '5f1e8cce7a67bf3282acf41dee11c7c784b5c8b6687bc4a10b3a81e2af81f186402d4f19e545b62e474f308f9dbc142eb3c66c6033b264cd0e1ffe1209cdf57d'),
(11, 'Tatiana', 'jazmin@pizto.com', 'ceb3d2c8caba1d832ff9fb8399967fb4edef5a58211fcbceca9a60de0b45954df034d0e8e79224f8a6d991762c7f9524f1da5e6585787ed7e155f6de44cd36e2', 'b7f16ecd5adcd7e591a7b6fada49ff0033c8411220bda94b14fb23234a348ff9b476937cc03c1a3e5b2b29c962e85d6d40c2ac1587fe976f5f8e4bd68741040c'),
(13, '6a0cd0', 'neagan@gmail.com', 'a5d21c02950dda634c7f285368ca288a420a68336abd39836abf1d895861a21245716addaed51bcb7547eaa85a814712c6c7fff742872f8fe7a8fe7f6bfdee79', '2cce157e8d81e332528b1f591065620cb9b477edede466a788359282e1a54b05717a45a74d558cf43ea8e70e1d79a5009aad5ba9ae51877a9199a19597aa3575');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_sucursales`
--

CREATE TABLE `login_sucursales` (
  `id` int(5) NOT NULL,
  `user` varchar(50) NOT NULL,
  `sucursal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_sync`
--

CREATE TABLE `login_sync` (
  `id` int(6) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `tipo` int(2) NOT NULL,
  `edo` int(2) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `td` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Controla en remoto si se subio sql respaldo';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_userdata`
--

CREATE TABLE `login_userdata` (
  `id` int(6) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `tipo` int(2) NOT NULL COMMENT '1, root , 2 admin, 3 usuario',
  `user` varchar(100) NOT NULL,
  `tkn` varchar(200) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `td` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login_userdata`
--

INSERT INTO `login_userdata` (`id`, `nombre`, `tipo`, `user`, `tkn`, `avatar`, `td`) VALUES
(1, 'Erick Nunez', 1, '3c67697e18899300a2648199a9798dffb359cab2', '1', '11.png', 0),
(11, 'Jazmin Nunez', 2, 'fa41921830ab34ca55a31a2d6572d57d6b312e43', '1', '9.png', 0),
(13, 'Neagan Nunez', 4, '83e806629a4f71899c9eda9ef3d2f2e63323e20c', '1', 'neagan.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id` int(6) NOT NULL,
  `clientes` int(3) NOT NULL,
  `mesa` int(5) NOT NULL,
  `empleado` varchar(200) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `estado` int(1) NOT NULL COMMENT '1 activo , 2 cancelado',
  `tx` int(2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id`, `clientes`, `mesa`, `empleado`, `fecha`, `hora`, `estado`, `tx`, `td`, `hash`, `time`) VALUES
(1, 1, 1, 'Tatiana Cardenas', '29-05-2019', '08:42:34', 1, 1, 2, 'd2c5451e0c', 1565038143),
(56, 1, 1, 'Erick Nunez', '31-05-2019', '16:27:06', 2, 0, 0, 'fa86021f53', 1565038143),
(57, 1, 2, 'Erick Nunez', '31-05-2019', '16:28:23', 2, 0, 0, '7749966cbf', 1565038143),
(58, 1, 3, 'Erick Nunez', '31-05-2019', '16:28:38', 2, 0, 0, '8b5826a5c5', 1565038143),
(59, 1, 4, 'Erick Nunez', '31-05-2019', '16:28:52', 2, 0, 0, 'e00fa4c6c6', 1565038143),
(60, 1, 5, 'Erick Nunez', '31-05-2019', '16:29:51', 2, 0, 0, '9c970d0aa4', 1565038143),
(61, 1, 6, 'Erick Nunez', '31-05-2019', '16:29:58', 2, 0, 0, 'ac852b1316', 1565038143),
(62, 1, 7, 'Erick Nunez', '31-05-2019', '16:30:07', 2, 0, 0, '79dbbfbe93', 1565038143),
(63, 1, 8, 'Erick Nunez', '31-05-2019', '16:30:50', 2, 0, 0, 'c827d2bedf', 1565038143),
(64, 1, 9, 'Erick Nunez', '31-05-2019', '16:31:03', 2, 0, 0, 'ec7d866df7', 1565038143),
(65, 1, 10, 'Erick Nunez', '31-05-2019', '16:31:08', 2, 0, 0, 'f0cc83fa47', 1565038143),
(67, 1, 11, 'Erick Nunez', '31-05-2019', '16:31:16', 2, 0, 0, '88eefd1887', 1565038143),
(91, 1, 3, 'Erick Nunez', '31-05-2019', '17:53:53', 2, 1, 0, '20f189fcb0', 1565038143),
(92, 1, 4, 'Erick Nunez', '31-05-2019', '17:53:58', 2, 1, 0, '30324a9c79', 1565038143),
(93, 1, 5, 'Erick Nunez', '31-05-2019', '17:54:04', 2, 1, 0, '545df036e7', 1565038143),
(95, 1, 6, 'Erick Nunez', '31-05-2019', '18:03:42', 2, 1, 0, '033933873f', 1565038143),
(96, 1, 7, 'Erick Nunez', '31-05-2019', '18:34:41', 2, 1, 0, '3d58e622e6', 1565038143),
(97, 1, 8, 'Erick Nunez', '31-05-2019', '18:34:44', 2, 1, 0, 'd9d4082922', 1565038143),
(98, 1, 9, 'Erick Nunez', '31-05-2019', '18:34:48', 2, 1, 0, 'bc3a097a0b', 1565038143),
(99, 1, 10, 'Erick Nunez', '31-05-2019', '18:34:54', 2, 1, 0, '0c69201da3', 1565038143),
(110, 1, 12, 'Tatiana Cardenas', '02-06-2019', '18:15:57', 2, 1, 0, '18fe0be560', 1565038143),
(111, 1, 13, 'Tatiana Cardenas', '02-06-2019', '18:19:06', 2, 1, 0, 'b20ae737ef', 1565038144),
(112, 1, 13, 'Erick Nunez', '05-06-2019', '00:15:11', 2, 0, 0, '1458f9222b', 1565038144),
(113, 1, 14, 'Erick Nunez', '05-06-2019', '00:15:35', 2, 0, 0, '7215c8abd5', 1565038144),
(115, 2, 15, 'Erick Nunez', '05-06-2019', '00:16:21', 2, 0, 0, '8ef00067ca', 1565038144),
(120, 1, 16, 'Jazmin Nunez', '25-06-2019', '02:36:36', 2, 0, 0, '78bc87e5fe', 1565038144),
(121, 1, 17, 'Jazmin Nunez', '25-06-2019', '02:36:50', 2, 0, 0, 'e0de261666', 1565038144),
(122, 1, 18, 'Jazmin Nunez', '25-06-2019', '02:37:09', 2, 0, 0, '01d8667341', 1565038144),
(123, 1, 19, 'Jazmin Nunez', '25-06-2019', '02:37:20', 2, 0, 0, '7284565034', 1565038144),
(124, 1, 20, 'Jazmin Nunez', '25-06-2019', '02:37:32', 2, 0, 0, 'cf34fda1fd', 1565038144),
(125, 1, 21, 'Jazmin Nunez', '25-06-2019', '02:37:40', 2, 0, 0, '0e8095b76b', 1565038144),
(126, 1, 22, 'Jazmin Nunez', '25-06-2019', '02:38:15', 2, 0, 0, '1f572e0253', 1565038144),
(127, 1, 23, 'Jazmin Nunez', '25-06-2019', '02:40:59', 2, 0, 0, '3489591c18', 1565038144),
(128, 1, 24, 'Jazmin Nunez', '25-06-2019', '02:41:06', 2, 0, 0, 'f276a4fc35', 1565038144),
(129, 1, 25, 'Jazmin Nunez', '05-07-2019', '09:35:25', 2, 0, 0, 'a5c89e5c31', 1565038144),
(142, 1, 27, 'Jazmin Nunez', '09-07-2019', '11:59:10', 2, 0, 0, '7d71c86358', 1565038144),
(169, 2, 28, 'Jazmin Nunez', '09-07-2019', '12:29:48', 2, 0, 0, '5a212f5b24', 1565038144),
(170, 1, 29, 'Jazmin Nunez', '16-07-2019', '22:38:00', 2, 0, 0, '131024ab82', 1565038144),
(171, 1, 30, 'Jazmin Nunez', '16-07-2019', '22:38:17', 2, 0, 0, '748eb9ad3d', 1565038144),
(172, 1, 31, 'Jazmin Nunez', '16-07-2019', '22:38:30', 2, 0, 0, 'f6e03f8b9b', 1565038144),
(174, 2, 32, 'Jazmin Nunez', '16-07-2019', '22:39:01', 2, 0, 0, '986a28cfc0', 1565038144),
(175, 3, 33, 'Jazmin Nunez', '16-07-2019', '22:39:13', 2, 0, 0, 'ede110e3b0', 1565038144),
(182, 3, 34, 'Jazmin Nunez', '16-07-2019', '22:40:24', 2, 0, 0, 'b25c7a93cb', 1565038144),
(183, 1, 35, 'Jazmin Nunez', '17-07-2019', '11:43:42', 2, 0, 0, '2f3670bce3', 1565038144);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa_nombre`
--

CREATE TABLE `mesa_nombre` (
  `id` int(6) NOT NULL,
  `mesa` int(6) NOT NULL,
  `tx` int(2) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cod` int(5) NOT NULL,
  `edo` int(2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_asig`
--

CREATE TABLE `opciones_asig` (
  `id` int(4) NOT NULL,
  `producto` int(4) NOT NULL,
  `opcion` int(4) NOT NULL,
  `edo` int(2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_name`
--

CREATE TABLE `opciones_name` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cod` int(4) NOT NULL,
  `opcion` int(4) NOT NULL,
  `edo` int(2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_ticket`
--

CREATE TABLE `opciones_ticket` (
  `id` int(6) NOT NULL,
  `cod` int(6) NOT NULL,
  `identificador` int(6) NOT NULL,
  `opcion` int(6) NOT NULL,
  `mesa` int(6) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` int(4) NOT NULL,
  `cod` int(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cat` int(2) NOT NULL,
  `precio` float(10,2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id`, `cod`, `nombre`, `cat`, `precio`, `td`, `hash`, `time`) VALUES
(1, 1001, 'Clasica Jamon', 9901, 99.00, 0, '0f99402ff6', 1565038145),
(2, 1002, 'Clasica Pepperoni', 9901, 99.00, 0, '3a13fd2699', 1565038145),
(3, 1003, 'Clasica Extraqueso', 9901, 99.00, 0, 'efa901fd65', 1565038145),
(4, 1004, '2 x 1 Suprema', 0, 269.00, 0, 'bbd6adefa3', 1565038145),
(5, 1005, 'Orilla de queso', 0, 155.00, 0, '6154f71a9b', 1565038145),
(6, 1006, 'Combo Wings', 0, 195.00, 0, 'a438cba4b1', 1565038145),
(7, 1007, 'Super Suprema', 0, 175.00, 0, 'cfa59ae41b', 1565038145),
(8, 1008, 'Calzone Italiano', 0, 85.00, 0, 'f958a94c5d', 1565038145),
(9, 1001, 'Personal 4 Estaciones', 0, 125.00, 0, 'f4bca09cf1', 1565038145),
(10, 1009, 'Personal 4 Estaciones', 9902, 125.00, 0, '18e18c5047', 1565038145),
(11, 1010, 'Grande 4 Estaciones', 9902, 175.00, 0, 'cc92bf31e0', 1565038145),
(12, 1011, 'Gigante 4 Estaciones', 9902, 269.00, 0, '77fe8fb930', 1565038145),
(14, 1012, 'Personal Super Suprema', 9902, 125.00, 0, '00020a6a86', 1565038145),
(15, 1013, 'Grande Super Suprema', 9902, 175.00, 0, 'ccfce6cc2c', 1565038145),
(16, 1014, 'Gigante Super Suprema', 9902, 269.00, 0, '4427687552', 1565038145),
(17, 1015, 'Personal Margarita', 9902, 125.00, 0, 'd22e8b88a1', 1565038145),
(18, 1016, 'Grande Margarita', 9902, 175.00, 0, '1b5a44a55b', 1565038145),
(19, 1017, 'Gigante Margarita', 9902, 269.00, 0, '9ce304c945', 1565038145),
(20, 1018, 'Normal Chicken', 9902, 125.00, 0, '7825ea9dbd', 1565038145),
(21, 1019, 'Grande Chicken', 9902, 175.00, 0, '3c09a6323a', 1565038145),
(22, 1020, 'Gigante Chicken', 9902, 269.00, 0, '8c2134e18f', 1565038145),
(23, 1021, 'Normal Choriqueso', 9902, 125.00, 0, 'c227414ee3', 1565038145),
(24, 1022, 'Grande Choriqueso', 9902, 175.00, 0, '213c516489', 1565038145),
(25, 1023, 'Gigante Choriqueso', 9902, 269.00, 0, '3ae057df7f', 1565038145),
(26, 1024, 'Personal Vegetariana', 9902, 125.00, 0, 'cbbf80eca8', 1565038145),
(27, 1025, 'Grande Vegetariana', 9902, 175.00, 0, '1e94ad3647', 1565038146),
(28, 1026, 'Gigante Vegetariana', 9902, 269.00, 0, '9ca471ca54', 1565038146),
(29, 1027, 'Normal Hawaiana', 9902, 125.00, 0, '84089e0dff', 1565038146),
(30, 1028, 'Grande Hawaiana', 9902, 175.00, 0, 'f5f233e262', 1565038146),
(31, 1029, 'Gigante Hawaiana', 9902, 169.00, 0, '6f2782d74c', 1565038146),
(32, 1030, 'Personal Catracha', 9903, 125.00, 0, '39e08eafdb', 1565038146),
(33, 1031, 'Grande Catracha', 9903, 224.00, 0, 'fc3818a3a6', 1565038146),
(34, 1032, 'Gigante Catracha', 9903, 365.00, 0, '629cb7fad0', 1565038146),
(35, 1033, 'Normal de Camaron', 9903, 125.00, 0, 'c9df84268d', 1565038146),
(36, 1034, 'Grande  de Camaron', 9903, 224.00, 0, '5e8c8b56a0', 1565038146),
(37, 1035, 'Gigante  de Camaron', 9903, 365.00, 0, '215cd0dd12', 1565038146),
(38, 1036, 'Personal Bacon con Maiz', 9903, 125.00, 0, '8cba368664', 1565038146),
(39, 1037, 'Grande Bacon con Maiz', 9903, 224.00, 0, 'f88a1f9adb', 1565038146),
(40, 1038, 'Gigante Bacon con Maiz', 9903, 365.00, 0, '4a9828319d', 1565038146),
(41, 1039, 'Normal Mediterranea', 9903, 125.00, 0, '95f14caa71', 1565038146),
(42, 1040, 'Grande Mediterranea', 9903, 224.00, 0, '7647f8b377', 1565038146),
(43, 1041, 'Gigante  Mediterranea', 9903, 365.00, 0, '2e9110cb40', 1565038146),
(44, 1042, 'Personal Tropical', 9903, 125.00, 0, '79cd1d44b5', 1565038146),
(45, 1043, 'Grande Tropical', 9903, 224.00, 0, '9d306f0679', 1565038146),
(46, 1044, 'Gigante  Tropical', 9903, 365.00, 0, '9d3990efe6', 1565038146),
(47, 1045, 'Fresco 1.5 Lts', 0, 35.00, 0, '1d9594e3e2', 1565038147),
(48, 1046, 'Fresco Lata', 0, 20.00, 0, 'b4a4f780d6', 1565038147),
(49, 1047, 'Bote de Agua', 0, 15.00, 0, '11196ef3c0', 1565038147),
(50, 1048, 'Fresco Jumbo', 0, 60.00, 0, '74672ed7f2', 1565038147),
(51, 1049, 'Fresco Natural', 0, 20.00, 0, 'c516758ac1', 1565038147),
(52, 1050, '6 Alitas', 9904, 95.00, 0, '147f660339', 1565038147),
(53, 1051, '12 Alitas', 9904, 155.00, 0, '1cbc7e596b', 1565038147),
(54, 1052, '24 Alitas', 9904, 299.00, 0, '50886f1dfd', 1565038147),
(55, 1053, 'Pan con Ajo 6 U', 9905, 75.00, 0, '43bd78b994', 1565038147),
(56, 1054, 'Pan con Ajo 12 U', 9905, 110.00, 0, '5a35713edf', 1565038147),
(58, 1055, 'Orilla de queso Pesonal', 9905, 30.00, 0, 'a397103d0b', 1565038147),
(59, 1056, 'Orilla de queso Grande', 9905, 55.00, 0, '11e08cffc6', 1565038147),
(60, 1057, 'Orilla de queso Gigante', 9905, 65.00, 0, 'b1fb259bd1', 1565038147),
(61, 1058, 'Combo Orilla de Queso', 0, 190.00, 0, 'ffb7f0c860', 1565038147),
(62, 1059, '', 0, 0.00, 0, 'fd14f33c82', 1566684023);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(10) NOT NULL,
  `cod` int(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `cantidad` int(6) NOT NULL,
  `gravado` int(2) NOT NULL,
  `fecha_registro` varchar(30) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `cod`, `nombre`, `categoria`, `cantidad`, `gravado`, `fecha_registro`, `td`, `hash`, `time`) VALUES
(1, 1001, 'Clasica Jamon', '9901', 0, 1, '29-05-2019', 0, '32518b12d4', 1565038149),
(2, 1002, 'Clasica Pepperoni', '9901', 0, 1, '29-05-2019', 0, '2bf762629c', 1565038149),
(3, 1003, 'Clasica Extraqueso', '9901', 0, 1, '29-05-2019', 0, '55468ac54e', 1565038149),
(4, 1004, '2 x 1 Suprema', '0', 0, 1, '29-05-2019', 0, 'aeb6cd2e24', 1565038149),
(5, 1005, 'Orilla de queso', '0', 0, 1, '29-05-2019', 0, '0af6cfb9e8', 1565038149),
(6, 1006, 'Combo Wings', '0', 0, 1, '29-05-2019', 0, '319ca804f2', 1565038149),
(7, 1007, 'Super Suprema', '0', 0, 1, '29-05-2019', 0, '328cdfa10d', 1565038149),
(8, 1008, 'Calzone Italiano', '0', 0, 1, '29-05-2019', 0, 'd172e818bb', 1565038149),
(9, 1001, 'Personal 4 Estaciones', '0', 0, 1, '29-05-2019', 0, '4724869c21', 1565038149),
(10, 1009, 'Personal 4 Estaciones', '9902', 0, 1, '29-05-2019', 0, '7bdc054370', 1565038149),
(11, 1010, 'Grande 4 Estaciones', '9902', 0, 1, '29-05-2019', 0, 'dd08dbe2ee', 1565038149),
(12, 1011, 'Gigante 4 Estaciones', '9902', 0, 1, '29-05-2019', 0, 'c32ac3ce39', 1565038149),
(14, 1012, 'Personal Super Suprema', '9902', 0, 1, '29-05-2019', 0, '6b86211551', 1565038149),
(15, 1013, 'Grande Super Suprema', '9902', 0, 1, '29-05-2019', 0, '73b01f72c0', 1565038149),
(16, 1014, 'Gigante Super Suprema', '9902', 0, 1, '29-05-2019', 0, 'd87463c139', 1565038149),
(17, 1015, 'Personal Margarita', '9902', 0, 1, '29-05-2019', 0, '77cc4bf1b4', 1565038149),
(18, 1016, 'Grande Margarita', '9902', 0, 1, '29-05-2019', 0, 'fa005b6097', 1565038149),
(19, 1017, 'Gigante Margarita', '9902', 0, 1, '29-05-2019', 0, '83d79f0478', 1565038149),
(20, 1018, 'Normal Chicken', '9902', 0, 1, '29-05-2019', 0, '0b6ea66dc0', 1565038150),
(21, 1019, 'Grande Chicken', '9902', 0, 1, '29-05-2019', 0, '9f9b8cc52f', 1565038150),
(22, 1020, 'Gigante Chicken', '9902', 0, 1, '29-05-2019', 0, '5e2c1097be', 1565038150),
(23, 1021, 'Normal Choriqueso', '9902', 0, 1, '29-05-2019', 0, '6dded1ce32', 1565038150),
(24, 1022, 'Grande Choriqueso', '9902', 0, 1, '29-05-2019', 0, '01451e56f4', 1565038150),
(25, 1023, 'Gigante Choriqueso', '9902', 0, 1, '29-05-2019', 0, 'd801395595', 1565038150),
(26, 1024, 'Personal Vegetariana', '9902', 0, 1, '29-05-2019', 0, 'e94702ed83', 1565038150),
(27, 1025, 'Grande Vegetariana', '9902', 0, 1, '29-05-2019', 0, '276b113bc5', 1565038150),
(28, 1026, 'Gigante Vegetariana', '9902', 0, 1, '29-05-2019', 0, 'ba69115232', 1565038150),
(29, 1027, 'Normal Hawaiana', '9902', 0, 1, '29-05-2019', 0, 'ca665d7f7a', 1565038150),
(30, 1028, 'Grande Hawaiana', '9902', 0, 1, '29-05-2019', 0, 'd8b2283b35', 1565038150),
(31, 1029, 'Gigante Hawaiana', '9902', 0, 1, '29-05-2019', 0, '39ef76d1ee', 1565038150),
(32, 1030, 'Personal Catracha', '9903', 0, 1, '29-05-2019', 0, 'a2b65f9449', 1565038150),
(33, 1031, 'Grande Catracha', '9903', 0, 1, '29-05-2019', 0, 'e987f0b055', 1565038150),
(34, 1032, 'Gigante Catracha', '9903', 0, 1, '29-05-2019', 0, '34bea54ce0', 1565038150),
(35, 1033, 'Normal de Camaron', '9903', 0, 1, '29-05-2019', 0, '6b436f25f4', 1565038150),
(36, 1034, 'Grande  de Camaron', '9903', 0, 1, '29-05-2019', 0, 'ef51b2d08c', 1565038150),
(37, 1035, 'Gigante  de Camaron', '9903', 0, 1, '29-05-2019', 0, '50e37d481b', 1565038150),
(38, 1036, 'Personal Bacon con Maiz', '9903', 0, 1, '29-05-2019', 0, '1d01597c59', 1565038150),
(39, 1037, 'Grande Bacon con Maiz', '9903', 0, 1, '29-05-2019', 0, '0ba073ae4b', 1565038150),
(40, 1038, 'Gigante Bacon con Maiz', '9903', 0, 1, '29-05-2019', 0, '786278f014', 1565038150),
(41, 1039, 'Normal Mediterranea', '9903', 0, 1, '29-05-2019', 0, '10cc20c027', 1565038150),
(42, 1040, 'Grande Mediterranea', '9903', 0, 1, '29-05-2019', 0, '164a41ad02', 1565038150),
(43, 1041, 'Gigante  Mediterranea', '9903', 0, 1, '29-05-2019', 0, '80ca003642', 1565038150),
(44, 1042, 'Personal Tropical', '9903', 0, 1, '29-05-2019', 0, '486baf1aec', 1565038150),
(45, 1043, 'Grande Tropical', '9903', 0, 1, '29-05-2019', 0, 'b9cd0d837a', 1565038150),
(46, 1044, 'Gigante  Tropical', '9903', 0, 1, '29-05-2019', 0, 'e3fc43e604', 1565038150),
(47, 1045, 'Fresco 1.5 Lts', '0', 0, 1, '29-05-2019', 0, '1be7b8142f', 1565038151),
(48, 1046, 'Fresco Lata', '0', 0, 1, '29-05-2019', 0, 'dae7f44920', 1565038151),
(49, 1047, 'Bote de Agua', '0', 0, 1, '29-05-2019', 0, '656de0ea3f', 1565038151),
(50, 1048, 'Fresco Jumbo', '0', 0, 1, '29-05-2019', 0, '52237f0692', 1565038151),
(51, 1049, 'Fresco Natural', '0', 0, 1, '29-05-2019', 0, 'b0f8c21df2', 1565038151),
(52, 1050, '6 Alitas', '9904', 0, 1, '29-05-2019', 0, '62bfd6b888', 1565038151),
(53, 1051, '12 Alitas', '9904', 0, 1, '29-05-2019', 0, 'ca6684bbee', 1565038151),
(54, 1052, '24 Alitas', '9904', 0, 1, '29-05-2019', 0, '0050fd31e5', 1565038151),
(55, 1053, 'Pan con Ajo 6 U', '9905', 0, 1, '29-05-2019', 0, 'dcc1d7039d', 1565038151),
(56, 1054, 'Pan con Ajo 12 U', '9905', 0, 1, '29-05-2019', 0, '3b05ea2e79', 1565038151),
(58, 1055, 'Orilla de queso Pesonal', '9905', 0, 1, '29-05-2019', 0, '5180498ad3', 1565038151),
(59, 1056, 'Orilla de queso Grande', '9905', 0, 1, '29-05-2019', 0, '87dcb59e7f', 1565038151),
(60, 1057, 'Orilla de queso Gigante', '9905', 0, 1, '29-05-2019', 0, 'a70c112ddd', 1565038151),
(61, 1058, 'Combo Orilla de Queso', '0', 0, 1, '29-05-2019', 0, 'affec36829', 1565038151),
(62, 1059, '', '', 0, 1, '24-08-2019', 0, '0d73fa3765', 1566684023);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta_especial`
--

CREATE TABLE `productos_venta_especial` (
  `id` int(5) NOT NULL,
  `producto` int(5) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_venta_especial`
--

INSERT INTO `productos_venta_especial` (`id`, `producto`, `td`, `hash`, `time`) VALUES
(1, 1045, 0, '8693b08dfb', 1565038151),
(2, 1046, 0, '9b564fc549', 1565038151);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_asignado`
--

CREATE TABLE `pro_asignado` (
  `id` int(6) NOT NULL,
  `iden` int(6) NOT NULL,
  `cod` int(6) NOT NULL,
  `dependiente` varchar(60) NOT NULL,
  `td` int(5) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pro_asignado`
--

INSERT INTO `pro_asignado` (`id`, `iden`, `cod`, `dependiente`, `td`, `hash`, `time`) VALUES
(1, 1, 1001, '2', 0, '5c029d00da', 1565038147),
(2, 2, 1004, '5', 0, '7e1abdba64', 1565038147),
(4, 4, 1058, '5', 0, '79d0a1b62b', 1565038147),
(5, 5, 1045, '5', 0, '3dee266984', 1565038147),
(6, 6, 1046, '4', 0, 'b4d77bf11f', 1565038147),
(7, 7, 1048, '6', 0, '6ce479d2ee', 1565038147),
(8, 8, 1047, '7', 0, '7001f0cb77', 1565038147);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_bruto`
--

CREATE TABLE `pro_bruto` (
  `id` int(6) NOT NULL,
  `iden` int(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cantidad` float(10,4) NOT NULL,
  `um` varchar(50) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pro_bruto`
--

INSERT INTO `pro_bruto` (`id`, `iden`, `nombre`, `cantidad`, `um`, `td`, `hash`, `time`) VALUES
(1, 1, 'Alitas', 15.0000, '1', 0, '4314aa8bfa', 1565038147),
(2, 2, 'Fresco Lata', 20.0000, '1', 0, 'adb5c4fd01', 1565038148),
(3, 3, 'Fresco 1.5 ', 20.0000, '1', 0, '7f42f12446', 1565038148),
(4, 4, 'Arina', 20.0000, '2', 0, 'd3ecd9ff97', 1565038148),
(5, 5, 'Fresco Jumbo', 20.0000, '1', 0, '06bfcbc822', 1565038148),
(6, 6, 'Bote de Agua', 20.0000, '1', 0, '0ff5e8d48c', 1565038148);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_dependiente`
--

CREATE TABLE `pro_dependiente` (
  `id` int(6) NOT NULL,
  `iden` int(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `producto` int(5) NOT NULL,
  `cantidad` float(10,4) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pro_dependiente`
--

INSERT INTO `pro_dependiente` (`id`, `iden`, `nombre`, `producto`, `cantidad`, `td`, `hash`, `time`) VALUES
(1, 1, 'Arina Personal', 4, 0.5000, 0, '89418c2105', 1565038148),
(2, 2, 'Arina grande', 4, 0.7000, 0, '575d822982', 1565038148),
(3, 3, 'Arina Gigante', 4, 1.2000, 0, '78eaf2866d', 1565038148),
(4, 4, 'Fresco lata', 2, 1.0000, 0, '9f0782e790', 1565038148),
(5, 5, 'Fresco 1.5 Lts', 3, 1.0000, 0, 'eac275211f', 1565038148),
(6, 6, 'Fresco Jumbo', 5, 1.0000, 0, '0791a8411b', 1565038148),
(7, 7, 'Bote de Agua', 6, 1.0000, 0, '5538075459', 1565038148);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_historial_addpro`
--

CREATE TABLE `pro_historial_addpro` (
  `id` int(5) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `comentarios` varchar(100) NOT NULL,
  `descuenta` varchar(50) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `td` int(5) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pro_historial_addpro`
--

INSERT INTO `pro_historial_addpro` (`id`, `producto`, `cantidad`, `comentarios`, `descuenta`, `fecha`, `hora`, `usuario`, `td`, `hash`, `time`) VALUES
(1, '4', 5.00, 'Ingreso de producto', '+ 5 Unidades a Fresco Lata', '29-05-2019', '11:14:17', 'Erick Nunez', 0, '61d4838982', 1565038148);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_historial_averias`
--

CREATE TABLE `pro_historial_averias` (
  `id` int(5) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `comentarios` varchar(100) NOT NULL,
  `descuenta` varchar(50) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `td` int(5) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pro_historial_averias`
--

INSERT INTO `pro_historial_averias` (`id`, `producto`, `cantidad`, `comentarios`, `descuenta`, `fecha`, `hora`, `usuario`, `td`, `hash`, `time`) VALUES
(1, '4', 5.00, 'Rebaja de producto', '- 5 Unidades a Fresco Lata', '29-05-2019', '11:14:53', 'Erick Nunez', 0, 'a660325c19', 1565038148);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_registro_averia`
--

CREATE TABLE `pro_registro_averia` (
  `id` int(5) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cantidad` float(10,4) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `hora` varchar(50) NOT NULL,
  `td` int(3) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_registro_up`
--

CREATE TABLE `pro_registro_up` (
  `id` int(5) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `hora` varchar(50) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pro_registro_up`
--

INSERT INTO `pro_registro_up` (`id`, `fecha`, `hora`, `td`, `hash`, `time`) VALUES
(6, '04-06-2019', '23:48:38', 0, '1bb1f3d170', 1565038149);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_unidades_medida`
--

CREATE TABLE `pro_unidades_medida` (
  `id` int(5) NOT NULL,
  `iden` int(6) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `abreviacion` varchar(30) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pro_unidades_medida`
--

INSERT INTO `pro_unidades_medida` (`id`, `iden`, `unidad`, `abreviacion`, `td`, `hash`, `time`) VALUES
(1, 1, 'Unidades', 'U', 0, 'a466b4a233', 1565038149),
(2, 2, 'Libras', 'Lbs', 0, 'd9c7f73e2d', 1565038149),
(3, 3, 'Paquetes', 'Paq', 0, '30be7597d7', 1565038149);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sync_tabla`
--

CREATE TABLE `sync_tabla` (
  `id` int(5) NOT NULL,
  `tabla` varchar(50) NOT NULL,
  `edo` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='las tablas que deben actualizarse';

--
-- Volcado de datos para la tabla `sync_tabla`
--

INSERT INTO `sync_tabla` (`id`, `tabla`, `edo`, `hash`, `time`, `td`) VALUES
(1, 'alter_materiaprima_reporte', 1, 'd5f4234af5', 1564698507, 0),
(2, 'alter_opciones', 1, 'b4d2506d0d', 1564698509, 0),
(3, 'alter_producto_reporte', 1, '34738426df', 1564698515, 0),
(4, 'categorias', 1, '5066ab080b', 1564698517, 0),
(5, 'config_master', 1, '66552e24f7', 1564698519, 0),
(6, 'config_root', 1, '505ff6e942', 1564698522, 0),
(7, 'control_cocina', 1, 'e23cc455df', 1564698524, 0),
(8, 'control_panel_mostrar', 1, '2f25ccd2bd', 1564698527, 0),
(9, 'corte_diario', 1, 'fd3b08ba9f', 1564698529, 0),
(10, 'facturar_cai', 1, '26436d0ac4', 1564698532, 0),
(11, 'facturar_impresora', 1, '28b56e4ded', 1564698535, 0),
(12, 'facturar_rtn', 1, 'f0df11e802', 1564698538, 0),
(13, 'facturar_rtn_cliente', 1, 'b314635ba1', 1564698541, 0),
(14, 'facturar_ticket', 1, '9b759b5ae6', 1564698545, 0),
(15, 'facturar_users', 1, '22b97c9b61', 1564698548, 0),
(16, 'gastos', 1, '18d9ef3501', 1564698550, 0),
(17, 'gastos_images', 1, 'e5336bec05', 1564698552, 0),
(18, 'images', 1, '99c7d2f0ca', 1564698554, 0),
(19, 'mesa', 1, 'bc14f1168d', 1564698568, 0),
(20, 'mesa_nombre', 1, '4c829ef26b', 1564698572, 0),
(21, 'opciones', 1, '86b58d68ae', 1564698575, 0),
(22, 'opciones_asig', 1, '6e84327d95', 1564698578, 0),
(23, 'opciones_name', 1, '593b218bed', 1564698581, 0),
(24, 'opciones_ticket', 1, '9fe4f7a719', 1564698584, 0),
(25, 'precios', 1, '95f0377715', 1564698588, 0),
(26, 'pro_asignado', 1, '91a907780e', 1564698591, 0),
(27, 'pro_bruto', 1, '939d6c0996', 1564698595, 0),
(28, 'pro_dependiente', 1, '6c881e04d9', 1564698598, 0),
(29, 'pro_dependiente', 1, 'b974660bc7', 1564698616, 0),
(30, 'pro_historial_addpro', 1, 'f839971f61', 1564698656, 0),
(31, 'pro_historial_averias', 1, 'c0bdc91b94', 1564698660, 0),
(32, 'pro_registro_averia', 1, '0eb76c6f95', 1564698664, 0),
(33, 'pro_registro_up', 1, '0dbec6a73e', 1564698673, 0),
(34, 'pro_unidades_medida', 1, '72bf81b22d', 1564698709, 0),
(35, 'producto', 1, 'b9218a9cd9', 1564698713, 0),
(36, 'productos_venta_especial', 1, '8f6f17af02', 1564698717, 0),
(41, 'ticket', 1, '7a9cfb6c6b', 1564698738, 0),
(42, 'ticket_num', 1, 'd0a02a2ba4', 1564698742, 0),
(43, 'ticket_propina', 1, '14459b72d6', 1564698746, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sync_tables_updates`
--

CREATE TABLE `sync_tables_updates` (
  `id` int(5) NOT NULL,
  `tabla` varchar(50) NOT NULL,
  `hash` varchar(12) NOT NULL COMMENT 'has de la tabla a eliminar',
  `time` int(12) NOT NULL,
  `action` int(2) NOT NULL COMMENT '1 =  borrar. 2= actualizar',
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sync_tables_updates`
--

INSERT INTO `sync_tables_updates` (`id`, `tabla`, `hash`, `time`, `action`, `td`) VALUES
(1, 'mesa', '37f40cb796', 1565902952, 1, 0),
(2, 'alter_opciones', '3d0b3223a0', 1566686625, 2, 0),
(3, 'ticket_temp', '0efc7d3393', 1566686010, 1, 0),
(4, 'mesa', '1959282079', 1566686010, 1, 0),
(5, 'control_cocina', '788fd4f75b', 1566984095, 2, 0),
(6, 'mesa', 'f404be2c4f', 1566686140, 1, 0),
(7, 'mesa', '41ec32cdd5', 1566686494, 1, 0),
(8, 'mesa', 'a61ed5f6a6', 1566686618, 1, 0),
(9, 'config_root', 'b6ca999160', 1566966885, 2, 0),
(10, 'ticket_temp', '4a3d1bde43', 1566983939, 2, 0),
(11, 'ticket_temp', '2524719029', 1566983940, 2, 0),
(12, 'ticket_temp', '4a3d1bde43', 1566983943, 1, 0),
(13, 'mesa', '9c3a021896', 1566983943, 1, 0),
(14, 'ticket_temp', 'a56381f607', 1566983953, 1, 0),
(15, 'mesa', 'ef2c57c4be', 1566983953, 1, 0),
(16, 'mesa', 'eea2e61066', 1566983960, 1, 0),
(17, 'mesa', 'bffb055daf', 1566983999, 1, 0),
(18, 'control_cocina', '41729e09ee', 1566984026, 2, 0),
(19, 'control_cocina', '0b62b791f5', 1566984028, 2, 0),
(20, 'control_cocina', '0433b54dad', 1566984031, 2, 0),
(21, 'ticket_temp', 'e2188e38a2', 1566984094, 1, 0),
(22, 'mesa', '6b555bdb1a', 1566984094, 1, 0),
(23, 'mesa', '51c35c01f6', 1566984155, 1, 0),
(24, 'config_master', '1afcd4ad17', 1566984905, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sync_up`
--

CREATE TABLE `sync_up` (
  `id` int(6) NOT NULL,
  `creado` int(2) NOT NULL COMMENT '0 = no, 1 = si',
  `subido` int(2) NOT NULL COMMENT '0 = no, 1 = si',
  `ejecutado` int(2) NOT NULL COMMENT '0 = no, 1 = si',
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `fechaF` varchar(40) NOT NULL,
  `comprobacion` varchar(100) NOT NULL,
  `inicio` int(12) NOT NULL,
  `final` int(12) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sync_up`
--

INSERT INTO `sync_up` (`id`, `creado`, `subido`, `ejecutado`, `fecha`, `hora`, `fechaF`, `comprobacion`, `inicio`, `final`, `hash`, `time`, `td`) VALUES
(1, 1, 1, 1, '05-08-2019', '14:49:16', '1564984800', 'hashdeiniciodesistema', 1565038156, 1565038156, 'a5933b5e11', 1565038156, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sync_up_cloud`
--

CREATE TABLE `sync_up_cloud` (
  `id` int(6) NOT NULL,
  `creado` int(2) NOT NULL COMMENT '0 = no, 1 = si',
  `subido` int(2) NOT NULL COMMENT '0 = no, 1 = si',
  `ejecutado` int(2) NOT NULL COMMENT '0 = no, 1 = si',
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `fechaF` varchar(40) NOT NULL,
  `comprobacion` varchar(100) NOT NULL,
  `inicio` int(12) NOT NULL,
  `final` int(12) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(6) NOT NULL,
  `cod` int(4) NOT NULL,
  `cant` int(4) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `pv` float(10,2) NOT NULL,
  `stotal` float(10,2) NOT NULL,
  `imp` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `num_fac` int(6) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `mesa` int(6) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `cancela` varchar(100) NOT NULL COMMENT 'si la cuenta la pagara otro cliente',
  `cajero` varchar(100) NOT NULL,
  `tipo_pago` varchar(30) NOT NULL,
  `user` varchar(100) NOT NULL,
  `gravado` int(2) NOT NULL,
  `tx` int(2) NOT NULL,
  `fechaF` varchar(50) NOT NULL,
  `edo` int(2) NOT NULL COMMENT 'a= activo, 2= eliminada',
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `cod`, `cant`, `producto`, `pv`, `stotal`, `imp`, `total`, `num_fac`, `fecha`, `hora`, `mesa`, `cliente`, `cancela`, `cajero`, `tipo_pago`, `user`, `gravado`, `tx`, `fechaF`, `edo`, `td`, `hash`, `time`) VALUES
(1, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 1, '31-05-2019', '16:28:18', 1, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'd50aba9686', 1565038151),
(2, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 1, '31-05-2019', '16:28:18', 1, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '3c709bff26', 1565038151),
(4, 1019, 1, 'Grande Chicken', 175.00, 152.17, 22.83, 175.00, 2, '31-05-2019', '16:28:28', 2, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '31aabccbf8', 1565038151),
(5, 1025, 1, 'Grande Vegetariana', 175.00, 152.17, 22.83, 175.00, 2, '31-05-2019', '16:28:29', 2, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '7cec5d9e6f', 1565038151),
(6, 1052, 1, '24 Alitas', 299.00, 260.00, 39.00, 299.00, 2, '31-05-2019', '16:28:32', 2, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'e780377134', 1565038151),
(7, 1019, 1, 'Grande Chicken', 175.00, 152.17, 22.83, 175.00, 3, '31-05-2019', '16:28:40', 3, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '2a57766c53', 1565038151),
(8, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 3, '31-05-2019', '16:28:45', 3, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '895de4abc9', 1565038152),
(10, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 4, '31-05-2019', '16:28:54', 4, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '2a08bc3c78', 1565038152),
(11, 1004, 1, '2 x 1 Suprema', 269.00, 233.91, 35.09, 269.00, 5, '31-05-2019', '16:29:53', 5, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '527f6e432e', 1565038152),
(12, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 5, '31-05-2019', '16:29:54', 5, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '11093971ca', 1565038152),
(14, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 6, '31-05-2019', '16:30:02', 6, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '0552b4aa20', 1565038152),
(15, 1050, 1, '6 Alitas', 95.00, 82.61, 12.39, 95.00, 6, '31-05-2019', '16:30:03', 6, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '43d54d7db4', 1565038152),
(16, 1052, 1, '24 Alitas', 299.00, 260.00, 39.00, 299.00, 6, '31-05-2019', '16:30:04', 6, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'c5531762bf', 1565038152),
(17, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 7, '31-05-2019', '16:30:29', 7, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'c7f763ffa6', 1565038152),
(18, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 8, '31-05-2019', '16:30:58', 8, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'f51336e512', 1565038152),
(19, 1056, 1, 'Orilla de queso Grande', 55.00, 47.83, 7.17, 55.00, 8, '31-05-2019', '16:30:59', 8, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'd39295bbde', 1565038152),
(21, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 9, '31-05-2019', '16:31:04', 9, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'c16bc0f2ba', 1565038152),
(22, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 10, '31-05-2019', '16:31:09', 10, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '1d5c65532e', 1565038152),
(23, 1020, 1, 'Gigante Chicken', 269.00, 233.91, 35.09, 269.00, 10, '31-05-2019', '16:31:11', 10, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '0431b8b5f2', 1565038152),
(25, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 11, '31-05-2019', '16:33:28', 11, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, 'e3a5155c59', 1565038152),
(26, 1056, 1, 'Orilla de queso Grande', 55.00, 47.83, 7.17, 55.00, 11, '31-05-2019', '16:33:30', 11, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559282400', 1, 0, '511a84575d', 1565038152),
(27, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 1, '02-06-2019', '18:17:58', 12, '1', '1', 'Tatiana Cardenas', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 1, '1559455200', 1, 0, 'eb3d334f38', 1565038152),
(28, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 1, '02-06-2019', '18:18:08', 12, '1', '1', 'Tatiana Cardenas', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 1, '1559455200', 1, 0, 'f9ebe157b9', 1565038152),
(29, 1055, 1, 'Orilla de queso Pesonal', 30.00, 26.09, 3.91, 30.00, 1, '02-06-2019', '18:18:14', 12, '1', '1', 'Tatiana Cardenas', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 1, '1559455200', 1, 0, '3bb92451df', 1565038152),
(30, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 2, '02-06-2019', '18:19:07', 13, '1', '1', 'Tatiana Cardenas', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 1, '1559455200', 1, 0, 'e88bce4605', 1565038152),
(31, 1005, 1, 'Orilla de queso', 155.00, 134.78, 20.22, 155.00, 2, '02-06-2019', '18:19:08', 13, '1', '1', 'Tatiana Cardenas', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 1, '1559455200', 1, 0, '48af6abdd3', 1565038152),
(32, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 12, '05-06-2019', '00:15:18', 13, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '3dd07fa7b7', 1565038153),
(33, 1058, 1, 'Combo Orilla de Queso', 190.00, 165.22, 24.78, 190.00, 12, '05-06-2019', '00:15:20', 13, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '605632f1cc', 1565038153),
(34, 1045, 1, 'Fresco 1.5 Lts', 35.00, 30.43, 4.57, 35.00, 12, '05-06-2019', '00:15:23', 13, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '640722d128', 1565038153),
(35, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 13, '05-06-2019', '00:15:42', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, 'd6deb70428', 1565038153),
(36, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 13, '05-06-2019', '00:15:45', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '7ba5d916f7', 1565038153),
(37, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 13, '05-06-2019', '00:15:51', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '56184dcbf9', 1565038153),
(38, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 13, '05-06-2019', '00:15:54', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '97b042cade', 1565038153),
(42, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 14, '05-06-2019', '00:16:26', 15, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '0803efb64a', 1565038153),
(43, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 14, '05-06-2019', '00:16:30', 15, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '6108fcf768', 1565038153),
(44, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 14, '05-06-2019', '00:16:42', 15, '2', '2', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, 'e969bdd6eb', 1565038153),
(45, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 14, '05-06-2019', '00:16:44', 15, '2', '2', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '93a220d4d2', 1565038153),
(46, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 15, '25-06-2019', '02:36:39', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'd9d215508f', 1565038153),
(47, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 15, '25-06-2019', '02:36:40', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '063e71f9e4', 1565038153),
(48, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 15, '25-06-2019', '02:36:40', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '8710b9d8b4', 1565038153),
(49, 1050, 1, '6 Alitas', 95.00, 82.61, 12.39, 95.00, 15, '25-06-2019', '02:36:43', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '5a61fcd406', 1565038153),
(50, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 15, '25-06-2019', '02:36:46', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'b3b8eb47de', 1565038153),
(53, 1058, 1, 'Combo Orilla de Queso', 190.00, 165.22, 24.78, 190.00, 16, '25-06-2019', '02:36:59', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '7b113f7ff0', 1565038153),
(54, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 16, '25-06-2019', '02:37:00', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'b01ccc8716', 1565038153),
(55, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 16, '25-06-2019', '02:37:01', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '0f3be00efa', 1565038153),
(56, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 16, '25-06-2019', '02:37:03', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'cd0af31cb3', 1565038153),
(57, 1013, 1, 'Grande Super Suprema', 175.00, 152.17, 22.83, 175.00, 16, '25-06-2019', '02:37:05', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'bf0edff15a', 1565038153),
(60, 1003, 1, 'Clasica Extraqueso', 99.00, 86.09, 12.91, 99.00, 17, '25-06-2019', '02:37:12', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '49db6fd0dd', 1565038153),
(61, 1002, 1, 'Clasica Pepperoni', 99.00, 86.09, 12.91, 99.00, 17, '25-06-2019', '02:37:13', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '42f793564f', 1565038153),
(62, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 17, '25-06-2019', '02:37:15', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '37cb4b90ab', 1565038153),
(63, 1056, 1, 'Orilla de queso Grande', 55.00, 47.83, 7.17, 55.00, 17, '25-06-2019', '02:37:16', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'f82e1d17e2', 1565038154),
(67, 1004, 1, '2 x 1 Suprema', 269.00, 233.91, 35.09, 269.00, 18, '25-06-2019', '02:37:28', 19, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '07406dec4b', 1565038154),
(68, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 18, '25-06-2019', '02:37:29', 19, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '8ee53e234f', 1565038154),
(69, 1005, 1, 'Orilla de queso', 155.00, 134.78, 20.22, 155.00, 18, '25-06-2019', '02:37:29', 19, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '864ac472db', 1565038154),
(70, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 19, '25-06-2019', '02:37:36', 20, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '56489a782a', 1565038154),
(71, 1002, 1, 'Clasica Pepperoni', 99.00, 86.09, 12.91, 99.00, 19, '25-06-2019', '02:37:36', 20, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '7e3ff7ba13', 1565038154),
(72, 1003, 1, 'Clasica Extraqueso', 99.00, 86.09, 12.91, 99.00, 19, '25-06-2019', '02:37:37', 20, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '75d218e086', 1565038154),
(73, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 20, '25-06-2019', '02:38:09', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '61386ce580', 1565038154),
(74, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 20, '25-06-2019', '02:38:09', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '7ac5258b4f', 1565038154),
(75, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 20, '25-06-2019', '02:38:10', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '1051c468f4', 1565038154),
(76, 1005, 1, 'Orilla de queso', 155.00, 134.78, 20.22, 155.00, 20, '25-06-2019', '02:38:11', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'dfb3cc38e2', 1565038154),
(77, 1004, 1, '2 x 1 Suprema', 269.00, 233.91, 35.09, 269.00, 20, '25-06-2019', '02:38:11', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '6d81a92a70', 1565038154),
(78, 1045, 1, 'Fresco 1.5 Lts', 35.00, 30.43, 4.57, 35.00, 20, '25-06-2019', '02:38:12', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '4fe7919110', 1565038154),
(80, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 21, '25-06-2019', '02:40:54', 22, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'dff4bcd6d6', 1565038154),
(81, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 21, '25-06-2019', '02:40:56', 22, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'd99b34c4b9', 1565038154),
(82, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 21, '25-06-2019', '02:40:56', 22, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '2452406cc9', 1565038154),
(83, 1004, 1, '2 x 1 Suprema', 269.00, 233.91, 35.09, 269.00, 22, '25-06-2019', '02:41:02', 23, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'b94eab0de2', 1565038154),
(84, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 22, '25-06-2019', '02:41:02', 23, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '9016ed0c93', 1565038154),
(85, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 22, '25-06-2019', '02:41:03', 23, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'f532b394fa', 1565038154),
(86, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 23, '25-06-2019', '02:41:12', 24, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'd706d36236', 1565038154),
(87, 1026, 1, 'Gigante Vegetariana', 269.00, 233.91, 35.09, 269.00, 23, '25-06-2019', '02:41:14', 24, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, 'a10e971c2c', 1565038154),
(88, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 24, '05-07-2019', '09:35:43', 25, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562306400', 1, 0, 'c698c682d6', 1565038154),
(89, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 24, '05-07-2019', '09:35:44', 25, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562306400', 1, 0, 'df82c1dc58', 1565038154),
(91, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 25, '05-07-2019', '09:40:00', 26, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562306400', 1, 0, '69475bb58c', 1565038154),
(92, 1050, 1, '6 Alitas', 95.00, 82.61, 12.39, 95.00, 25, '05-07-2019', '09:40:04', 26, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562306400', 1, 0, '14e637212b', 1565038154),
(93, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 25, '05-07-2019', '09:40:37', 26, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562306400', 1, 0, '0d8c09c6d4', 1565038154),
(94, 1058, 1, 'Combo Orilla de Queso', 190.00, 158.33, 31.67, 190.00, 26, '09-07-2019', '11:59:12', 27, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562652000', 1, 0, '1c7bedec2c', 1565038155),
(95, 1007, 1, 'Super Suprema', 175.00, 145.83, 29.17, 175.00, 27, '09-07-2019', '12:29:52', 28, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562652000', 1, 0, '157ede4f2c', 1565038155),
(96, 1006, 1, 'Combo Wings', 195.00, 162.50, 32.50, 195.00, 1, '16-07-2019', '22:38:05', 29, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '24299dd8d2', 1565038155),
(97, 1052, 1, '24 Alitas', 299.00, 249.17, 49.83, 299.00, 1, '16-07-2019', '22:38:07', 29, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '97496c021d', 1565038155),
(99, 1004, 1, '2 x 1 Suprema', 269.00, 224.17, 44.83, 269.00, 2, '16-07-2019', '22:38:19', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, 'c0ad6ce225', 1565038155),
(100, 1005, 1, 'Orilla de queso', 155.00, 129.17, 25.83, 155.00, 2, '16-07-2019', '22:38:20', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '3c25d05ac6', 1565038155),
(101, 1048, 1, 'Fresco Jumbo', 60.00, 50.00, 10.00, 60.00, 2, '16-07-2019', '22:38:20', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '3733ff4f18', 1565038155),
(102, 1053, 1, 'Pan con Ajo 6 U', 75.00, 62.50, 12.50, 75.00, 2, '16-07-2019', '22:38:23', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '6508a7bdd9', 1565038155),
(103, 1054, 1, 'Pan con Ajo 12 U', 110.00, 91.67, 18.33, 110.00, 2, '16-07-2019', '22:38:23', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '6301d37cad', 1565038155),
(104, 1050, 1, '6 Alitas', 95.00, 79.17, 15.83, 95.00, 2, '16-07-2019', '22:38:25', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '84bf49c31a', 1565038155),
(106, 1046, 1, 'Fresco Lata', 20.00, 16.67, 3.33, 20.00, 3, '16-07-2019', '22:38:32', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '076c63d2ce', 1565038155),
(107, 1054, 1, 'Pan con Ajo 12 U', 110.00, 91.67, 18.33, 110.00, 3, '16-07-2019', '22:38:35', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, 'dc258fd5a7', 1565038155),
(108, 1045, 1, 'Fresco 1.5 Lts', 35.00, 29.17, 5.83, 35.00, 3, '16-07-2019', '22:38:37', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '142695cb01', 1565038155),
(109, 1019, 1, 'Grande Chicken', 175.00, 145.83, 29.17, 175.00, 3, '16-07-2019', '22:38:38', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, 'e16d12fba9', 1565038155),
(110, 1025, 1, 'Grande Vegetariana', 175.00, 145.83, 29.17, 175.00, 3, '16-07-2019', '22:38:39', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '6cacef8715', 1565038155),
(111, 1024, 1, 'Personal Vegetariana', 125.00, 104.17, 20.83, 125.00, 3, '16-07-2019', '22:38:39', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '35c32d129a', 1565038155),
(112, 1010, 1, 'Grande 4 Estaciones', 175.00, 145.83, 29.17, 175.00, 3, '16-07-2019', '22:38:40', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, 'dd50d73616', 1565038155),
(113, 1001, 1, 'Clasica Jamon', 99.00, 82.50, 16.50, 99.00, 4, '16-07-2019', '22:39:04', 32, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '61fc05ef63', 1565038155),
(114, 1004, 1, '2 x 1 Suprema', 269.00, 224.17, 44.83, 269.00, 4, '16-07-2019', '22:39:05', 32, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '8c5ca6c91b', 1565038155),
(116, 1052, 1, '24 Alitas', 299.00, 249.17, 49.83, 299.00, 5, '16-07-2019', '22:39:18', 33, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '81465b36c9', 1565038155),
(117, 1007, 1, 'Super Suprema', 175.00, 145.83, 29.17, 175.00, 5, '16-07-2019', '22:39:20', 33, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, 'e31563704e', 1565038155),
(118, 1018, 1, 'Normal Chicken', 125.00, 104.17, 20.83, 125.00, 5, '16-07-2019', '22:39:23', 33, '3', '3', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '1ddaf7a5ba', 1565038155),
(119, 1024, 1, 'Personal Vegetariana', 125.00, 104.17, 20.83, 125.00, 5, '16-07-2019', '22:39:23', 33, '3', '3', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '35da29d530', 1565038155),
(123, 1019, 1, 'Grande Chicken', 175.00, 145.83, 29.17, 175.00, 6, '16-07-2019', '22:40:37', 34, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '78d1f05c2e', 1565038156),
(124, 1025, 1, 'Grande Vegetariana', 175.00, 145.83, 29.17, 175.00, 6, '16-07-2019', '22:40:37', 34, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '99d41bce95', 1565038156),
(125, 1024, 1, 'Personal Vegetariana', 125.00, 104.17, 20.83, 125.00, 6, '16-07-2019', '22:40:38', 34, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '7d16b02485', 1565038156),
(126, 1006, 1, 'Combo Wings', 195.00, 162.50, 32.50, 195.00, 7, '17-07-2019', '11:44:18', 35, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563343200', 1, 0, 'db15fde821', 1565038156),
(127, 1007, 1, 'Super Suprema', 175.00, 145.83, 29.17, 175.00, 7, '17-07-2019', '11:44:19', 35, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563343200', 1, 0, 'edc74f02b5', 1565038156),
(128, 1054, 1, 'Pan con Ajo 12 U', 110.00, 91.67, 18.33, 110.00, 7, '17-07-2019', '11:44:21', 35, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563343200', 1, 0, '24f9001b3b', 1565038156);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_num`
--

CREATE TABLE `ticket_num` (
  `id` int(5) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `num_fac` int(6) NOT NULL,
  `mesa` int(5) NOT NULL,
  `efectivo` float(10,2) NOT NULL,
  `edo` int(2) NOT NULL COMMENT '1 = activo , 2= Eliminada',
  `tx` int(2) NOT NULL,
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket_num`
--

INSERT INTO `ticket_num` (`id`, `fecha`, `hora`, `num_fac`, `mesa`, `efectivo`, `edo`, `tx`, `td`, `hash`, `time`) VALUES
(1, '16-07-2019', '22:38:13', 1, 29, 0.00, 1, 0, 0, '833cfdde18', 1565038156),
(2, '16-07-2019', '22:38:28', 2, 30, 0.00, 1, 0, 0, '66b3f42ede', 1565038156),
(3, '16-07-2019', '22:38:42', 3, 31, 0.00, 1, 0, 0, '2cf4793c06', 1565038156),
(4, '16-07-2019', '22:39:06', 4, 32, 0.00, 1, 0, 0, '93d2068b30', 1565038156),
(5, '16-07-2019', '22:39:36', 5, 33, 0.00, 1, 0, 0, '7c54fad8c1', 1565038156),
(6, '16-07-2019', '22:40:50', 6, 34, 0.00, 1, 0, 0, '7d1642fe20', 1565038156),
(7, '17-07-2019', '11:44:24', 7, 35, 0.00, 1, 0, 0, '438bd188d6', 1565038156);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_propina`
--

CREATE TABLE `ticket_propina` (
  `id` int(6) NOT NULL,
  `num_fac` int(6) NOT NULL,
  `propina` float(10,2) NOT NULL,
  `efectivo` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `tx` int(2) NOT NULL,
  `td` int(4) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_temp`
--

CREATE TABLE `ticket_temp` (
  `id` int(6) NOT NULL,
  `cod` int(4) NOT NULL,
  `cant` int(4) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `pv` float(10,2) NOT NULL,
  `stotal` float(10,2) NOT NULL,
  `imp` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `num_fac` int(6) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `mesa` int(6) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `cancela` varchar(100) NOT NULL COMMENT 'si la cuenta la pagara otro cliente',
  `cajero` varchar(100) NOT NULL,
  `tipo_pago` varchar(30) NOT NULL,
  `user` varchar(100) NOT NULL,
  `gravado` int(2) NOT NULL,
  `tx` int(2) NOT NULL,
  `fechaF` varchar(50) NOT NULL,
  `edo` int(2) NOT NULL COMMENT 'a= activo, 2= eliminada',
  `td` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket_temp`
--

INSERT INTO `ticket_temp` (`id`, `cod`, `cant`, `producto`, `pv`, `stotal`, `imp`, `total`, `num_fac`, `fecha`, `hora`, `mesa`, `cliente`, `cancela`, `cajero`, `tipo_pago`, `user`, `gravado`, `tx`, `fechaF`, `edo`, `td`, `hash`, `time`) VALUES
(1, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 12, '05-06-2019', '00:15:18', 13, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(2, 1058, 1, 'Combo Orilla de Queso', 190.00, 165.22, 24.78, 190.00, 12, '05-06-2019', '00:15:20', 13, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(3, 1045, 1, 'Fresco 1.5 Lts', 35.00, 30.43, 4.57, 35.00, 12, '05-06-2019', '00:15:23', 13, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(4, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 13, '05-06-2019', '00:15:42', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(5, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 13, '05-06-2019', '00:15:45', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(6, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 13, '05-06-2019', '00:15:51', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(7, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 13, '05-06-2019', '00:15:54', 14, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(8, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 14, '05-06-2019', '00:16:26', 15, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(9, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 14, '05-06-2019', '00:16:30', 15, '1', '1', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(11, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 14, '05-06-2019', '00:16:42', 15, '2', '2', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(12, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 14, '05-06-2019', '00:16:44', 15, '2', '2', 'Erick Nunez', '1', '3c67697e18899300a2648199a9798dffb359cab2', 1, 0, '1559714400', 1, 0, '', 0),
(15, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 15, '25-06-2019', '02:36:39', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(16, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 15, '25-06-2019', '02:36:40', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(17, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 15, '25-06-2019', '02:36:40', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(18, 1050, 1, '6 Alitas', 95.00, 82.61, 12.39, 95.00, 15, '25-06-2019', '02:36:43', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(19, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 15, '25-06-2019', '02:36:46', 16, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(20, 1058, 1, 'Combo Orilla de Queso', 190.00, 165.22, 24.78, 190.00, 16, '25-06-2019', '02:36:59', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(21, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 16, '25-06-2019', '02:37:00', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(22, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 16, '25-06-2019', '02:37:01', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(23, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 16, '25-06-2019', '02:37:03', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(24, 1013, 1, 'Grande Super Suprema', 175.00, 152.17, 22.83, 175.00, 16, '25-06-2019', '02:37:05', 17, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(25, 1003, 1, 'Clasica Extraqueso', 99.00, 86.09, 12.91, 99.00, 17, '25-06-2019', '02:37:12', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(26, 1002, 1, 'Clasica Pepperoni', 99.00, 86.09, 12.91, 99.00, 17, '25-06-2019', '02:37:13', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(27, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 17, '25-06-2019', '02:37:15', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(28, 1056, 1, 'Orilla de queso Grande', 55.00, 47.83, 7.17, 55.00, 17, '25-06-2019', '02:37:16', 18, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(29, 1004, 1, '2 x 1 Suprema', 269.00, 233.91, 35.09, 269.00, 18, '25-06-2019', '02:37:28', 19, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(30, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 18, '25-06-2019', '02:37:29', 19, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(31, 1005, 1, 'Orilla de queso', 155.00, 134.78, 20.22, 155.00, 18, '25-06-2019', '02:37:29', 19, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(32, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 19, '25-06-2019', '02:37:36', 20, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(33, 1002, 1, 'Clasica Pepperoni', 99.00, 86.09, 12.91, 99.00, 19, '25-06-2019', '02:37:36', 20, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(34, 1003, 1, 'Clasica Extraqueso', 99.00, 86.09, 12.91, 99.00, 19, '25-06-2019', '02:37:37', 20, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(35, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 20, '25-06-2019', '02:38:09', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(36, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 20, '25-06-2019', '02:38:09', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(37, 1006, 1, 'Combo Wings', 195.00, 169.57, 25.43, 195.00, 20, '25-06-2019', '02:38:10', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(38, 1005, 1, 'Orilla de queso', 155.00, 134.78, 20.22, 155.00, 20, '25-06-2019', '02:38:11', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(39, 1004, 1, '2 x 1 Suprema', 269.00, 233.91, 35.09, 269.00, 20, '25-06-2019', '02:38:11', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(40, 1045, 1, 'Fresco 1.5 Lts', 35.00, 30.43, 4.57, 35.00, 20, '25-06-2019', '02:38:12', 21, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(41, 1007, 1, 'Super Suprema', 175.00, 152.17, 22.83, 175.00, 21, '25-06-2019', '02:40:54', 22, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(42, 1049, 1, 'Fresco Natural', 20.00, 17.39, 2.61, 20.00, 21, '25-06-2019', '02:40:56', 22, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(43, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 21, '25-06-2019', '02:40:56', 22, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(44, 1004, 1, '2 x 1 Suprema', 269.00, 233.91, 35.09, 269.00, 22, '25-06-2019', '02:41:02', 23, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(45, 1046, 1, 'Fresco Lata', 20.00, 17.39, 2.61, 20.00, 22, '25-06-2019', '02:41:02', 23, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(46, 1047, 1, 'Bote de Agua', 15.00, 13.04, 1.96, 15.00, 22, '25-06-2019', '02:41:03', 23, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(47, 1048, 1, 'Fresco Jumbo', 60.00, 52.17, 7.83, 60.00, 23, '25-06-2019', '02:41:12', 24, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(48, 1026, 1, 'Gigante Vegetariana', 269.00, 233.91, 35.09, 269.00, 23, '25-06-2019', '02:41:14', 24, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1561442400', 1, 0, '', 0),
(49, 1001, 1, 'Clasica Jamon', 99.00, 86.09, 12.91, 99.00, 24, '05-07-2019', '09:35:43', 25, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562306400', 1, 0, '', 0),
(50, 1008, 1, 'Calzone Italiano', 85.00, 73.91, 11.09, 85.00, 24, '05-07-2019', '09:35:44', 25, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562306400', 1, 0, '', 0),
(60, 1058, 1, 'Combo Orilla de Queso', 190.00, 158.33, 31.67, 190.00, 26, '09-07-2019', '11:59:12', 27, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562652000', 1, 0, '', 0),
(75, 1007, 1, 'Super Suprema', 175.00, 145.83, 29.17, 175.00, 27, '09-07-2019', '12:29:52', 28, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1562652000', 1, 0, '', 0),
(77, 1006, 1, 'Combo Wings', 195.00, 162.50, 32.50, 195.00, 1, '16-07-2019', '22:38:05', 29, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(78, 1052, 1, '24 Alitas', 299.00, 249.17, 49.83, 299.00, 1, '16-07-2019', '22:38:07', 29, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(79, 1004, 1, '2 x 1 Suprema', 269.00, 224.17, 44.83, 269.00, 2, '16-07-2019', '22:38:19', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(80, 1005, 1, 'Orilla de queso', 155.00, 129.17, 25.83, 155.00, 2, '16-07-2019', '22:38:20', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(81, 1048, 1, 'Fresco Jumbo', 60.00, 50.00, 10.00, 60.00, 2, '16-07-2019', '22:38:20', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(82, 1053, 1, 'Pan con Ajo 6 U', 75.00, 62.50, 12.50, 75.00, 2, '16-07-2019', '22:38:23', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(83, 1054, 1, 'Pan con Ajo 12 U', 110.00, 91.67, 18.33, 110.00, 2, '16-07-2019', '22:38:23', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(84, 1050, 1, '6 Alitas', 95.00, 79.17, 15.83, 95.00, 2, '16-07-2019', '22:38:25', 30, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(85, 1046, 1, 'Fresco Lata', 20.00, 16.67, 3.33, 20.00, 3, '16-07-2019', '22:38:32', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(86, 1054, 1, 'Pan con Ajo 12 U', 110.00, 91.67, 18.33, 110.00, 3, '16-07-2019', '22:38:35', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(87, 1045, 1, 'Fresco 1.5 Lts', 35.00, 29.17, 5.83, 35.00, 3, '16-07-2019', '22:38:37', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(88, 1019, 1, 'Grande Chicken', 175.00, 145.83, 29.17, 175.00, 3, '16-07-2019', '22:38:38', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(89, 1025, 1, 'Grande Vegetariana', 175.00, 145.83, 29.17, 175.00, 3, '16-07-2019', '22:38:39', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(90, 1024, 1, 'Personal Vegetariana', 125.00, 104.17, 20.83, 125.00, 3, '16-07-2019', '22:38:39', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(91, 1010, 1, 'Grande 4 Estaciones', 175.00, 145.83, 29.17, 175.00, 3, '16-07-2019', '22:38:40', 31, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(92, 1001, 1, 'Clasica Jamon', 99.00, 82.50, 16.50, 99.00, 4, '16-07-2019', '22:39:04', 32, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(93, 1004, 1, '2 x 1 Suprema', 269.00, 224.17, 44.83, 269.00, 4, '16-07-2019', '22:39:05', 32, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(94, 1052, 1, '24 Alitas', 299.00, 249.17, 49.83, 299.00, 5, '16-07-2019', '22:39:18', 33, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(95, 1007, 1, 'Super Suprema', 175.00, 145.83, 29.17, 175.00, 5, '16-07-2019', '22:39:20', 33, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(96, 1018, 1, 'Normal Chicken', 125.00, 104.17, 20.83, 125.00, 5, '16-07-2019', '22:39:23', 33, '3', '3', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(97, 1024, 1, 'Personal Vegetariana', 125.00, 104.17, 20.83, 125.00, 5, '16-07-2019', '22:39:23', 33, '3', '3', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(98, 1019, 1, 'Grande Chicken', 175.00, 145.83, 29.17, 175.00, 6, '16-07-2019', '22:40:37', 34, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(99, 1025, 1, 'Grande Vegetariana', 175.00, 145.83, 29.17, 175.00, 6, '16-07-2019', '22:40:37', 34, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(100, 1024, 1, 'Personal Vegetariana', 125.00, 104.17, 20.83, 125.00, 6, '16-07-2019', '22:40:38', 34, '2', '2', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563256800', 1, 0, '', 0),
(101, 1006, 1, 'Combo Wings', 195.00, 162.50, 32.50, 195.00, 7, '17-07-2019', '11:44:18', 35, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563343200', 1, 0, '', 0),
(102, 1007, 1, 'Super Suprema', 175.00, 145.83, 29.17, 175.00, 7, '17-07-2019', '11:44:19', 35, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563343200', 1, 0, '', 0),
(103, 1054, 1, 'Pan con Ajo 12 U', 110.00, 91.67, 18.33, 110.00, 7, '17-07-2019', '11:44:21', 35, '1', '1', 'Jazmin Nunez', '1', 'fa41921830ab34ca55a31a2d6572d57d6b312e43', 1, 0, '1563343200', 1, 0, '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alter_materiaprima_reporte`
--
ALTER TABLE `alter_materiaprima_reporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alter_opciones`
--
ALTER TABLE `alter_opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alter_producto_reporte`
--
ALTER TABLE `alter_producto_reporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config_master`
--
ALTER TABLE `config_master`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config_root`
--
ALTER TABLE `config_root`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `control_cocina`
--
ALTER TABLE `control_cocina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `control_panel_mostrar`
--
ALTER TABLE `control_panel_mostrar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `corte_diario`
--
ALTER TABLE `corte_diario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturar_cai`
--
ALTER TABLE `facturar_cai`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturar_impresora`
--
ALTER TABLE `facturar_impresora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturar_rtn`
--
ALTER TABLE `facturar_rtn`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturar_rtn_cliente`
--
ALTER TABLE `facturar_rtn_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturar_ticket`
--
ALTER TABLE `facturar_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturar_users`
--
ALTER TABLE `facturar_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos_images`
--
ALTER TABLE `gastos_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `login_db_sync`
--
ALTER TABLE `login_db_sync`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_db_user`
--
ALTER TABLE `login_db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_imagenes`
--
ALTER TABLE `login_imagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_images_categoria`
--
ALTER TABLE `login_images_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_inout`
--
ALTER TABLE `login_inout`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_members`
--
ALTER TABLE `login_members`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_sucursales`
--
ALTER TABLE `login_sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_sync`
--
ALTER TABLE `login_sync`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_userdata`
--
ALTER TABLE `login_userdata`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fecha` (`fecha`),
  ADD KEY `fecha_2` (`fecha`);

--
-- Indices de la tabla `mesa_nombre`
--
ALTER TABLE `mesa_nombre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones_asig`
--
ALTER TABLE `opciones_asig`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones_name`
--
ALTER TABLE `opciones_name`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones_ticket`
--
ALTER TABLE `opciones_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_venta_especial`
--
ALTER TABLE `productos_venta_especial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_asignado`
--
ALTER TABLE `pro_asignado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_bruto`
--
ALTER TABLE `pro_bruto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_dependiente`
--
ALTER TABLE `pro_dependiente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_historial_addpro`
--
ALTER TABLE `pro_historial_addpro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_historial_averias`
--
ALTER TABLE `pro_historial_averias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_registro_averia`
--
ALTER TABLE `pro_registro_averia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_registro_up`
--
ALTER TABLE `pro_registro_up`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_unidades_medida`
--
ALTER TABLE `pro_unidades_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sync_tabla`
--
ALTER TABLE `sync_tabla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sync_tables_updates`
--
ALTER TABLE `sync_tables_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sync_up`
--
ALTER TABLE `sync_up`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sync_up_cloud`
--
ALTER TABLE `sync_up_cloud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fecha` (`fecha`),
  ADD KEY `fecha_2` (`fecha`);

--
-- Indices de la tabla `ticket_num`
--
ALTER TABLE `ticket_num`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fecha` (`fecha`);

--
-- Indices de la tabla `ticket_propina`
--
ALTER TABLE `ticket_propina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_temp`
--
ALTER TABLE `ticket_temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alter_materiaprima_reporte`
--
ALTER TABLE `alter_materiaprima_reporte`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `alter_opciones`
--
ALTER TABLE `alter_opciones`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `alter_producto_reporte`
--
ALTER TABLE `alter_producto_reporte`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `config_master`
--
ALTER TABLE `config_master`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `config_root`
--
ALTER TABLE `config_root`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `control_cocina`
--
ALTER TABLE `control_cocina`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `control_panel_mostrar`
--
ALTER TABLE `control_panel_mostrar`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `corte_diario`
--
ALTER TABLE `corte_diario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `facturar_cai`
--
ALTER TABLE `facturar_cai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `facturar_impresora`
--
ALTER TABLE `facturar_impresora`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `facturar_rtn`
--
ALTER TABLE `facturar_rtn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `facturar_rtn_cliente`
--
ALTER TABLE `facturar_rtn_cliente`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `facturar_ticket`
--
ALTER TABLE `facturar_ticket`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `facturar_users`
--
ALTER TABLE `facturar_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `gastos_images`
--
ALTER TABLE `gastos_images`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `login_db_sync`
--
ALTER TABLE `login_db_sync`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `login_db_user`
--
ALTER TABLE `login_db_user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `login_imagenes`
--
ALTER TABLE `login_imagenes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT de la tabla `login_images_categoria`
--
ALTER TABLE `login_images_categoria`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `login_inout`
--
ALTER TABLE `login_inout`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `login_members`
--
ALTER TABLE `login_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `login_sucursales`
--
ALTER TABLE `login_sucursales`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `login_sync`
--
ALTER TABLE `login_sync`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `login_userdata`
--
ALTER TABLE `login_userdata`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT de la tabla `mesa_nombre`
--
ALTER TABLE `mesa_nombre`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opciones_asig`
--
ALTER TABLE `opciones_asig`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opciones_name`
--
ALTER TABLE `opciones_name`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opciones_ticket`
--
ALTER TABLE `opciones_ticket`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `productos_venta_especial`
--
ALTER TABLE `productos_venta_especial`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pro_asignado`
--
ALTER TABLE `pro_asignado`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `pro_bruto`
--
ALTER TABLE `pro_bruto`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `pro_dependiente`
--
ALTER TABLE `pro_dependiente`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `pro_historial_addpro`
--
ALTER TABLE `pro_historial_addpro`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pro_historial_averias`
--
ALTER TABLE `pro_historial_averias`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pro_registro_averia`
--
ALTER TABLE `pro_registro_averia`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_registro_up`
--
ALTER TABLE `pro_registro_up`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `pro_unidades_medida`
--
ALTER TABLE `pro_unidades_medida`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `sync_tabla`
--
ALTER TABLE `sync_tabla`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `sync_tables_updates`
--
ALTER TABLE `sync_tables_updates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `sync_up`
--
ALTER TABLE `sync_up`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `sync_up_cloud`
--
ALTER TABLE `sync_up_cloud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT de la tabla `ticket_num`
--
ALTER TABLE `ticket_num`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ticket_propina`
--
ALTER TABLE `ticket_propina`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_temp`
--
ALTER TABLE `ticket_temp`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
