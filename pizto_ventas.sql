-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-10-2019 a las 18:30:37
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
(1, '337', '', 1, 100, 'ca5ae271bd', 1570478100);

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
(1, 'Sistema de Control', 'RESTAURANTE METAPAN', 'La mejor comida de El Salvador', 'Erick Nunez', '27821595', 'Resturante', '0207-210386-102-9', 13.00, 0.00, 'Urb. Las Americas', 'aerick.nunez@gmail.com', '220190828.jpg', 'pizto.png', 'cyan-skin', 1, '1', 'Dolares', '$', 'IVA', 'NIT', 0, 1, 1, '', '', 100, '1afcd4ad17', 1570479216);

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
(1, 'Zk95a3cwVzk1SjNSbXlxYmJEUXhudz09', 'YWZRMkFFa1ZsTExCTDJHV1BFelNhQT09', 'SkdSdGE0RFBBZlZ4V0VaMU9GUjNEZz09', 'SkdSdGE0RFBBZlZ4V0VaMU9GUjNEZz09', 'SkdSdGE0RFBBZlZ4V0VaMU9GUjNEZz09', 'SkdSdGE0RFBBZlZ4V0VaMU9GUjNEZz09', 'SkdSdGE0RFBBZlZ4V0VaMU9GUjNEZz09', 'WFo3YlpPc1NEand3ZEsxT0plMWhJUT09', 'WFo3YlpPc1NEand3ZEsxT0plMWhJUT09', 'cFFwNXhjeTk0c2NyZitMRHVMN3Nrdz09', 100, 'b6ca999160', 1570479254);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(14, '77a806', 'gerencia@pizto.com', '3eb2d6e9da651a6dca7944de032d717affe81dd60f726eeea5f2e8b8c741e5a29be738f24118e5896a1bd17e3d8a5e8be3a93171226ab17a4968b618a4853a25', '52664ef95eab2b752f287519f403b1c0ec793e5befe728b4ce9694794b6b3a5f29cc32cf49511f259234297a38c4949ab632b2f834acce0e6eec7f56a476f12b');

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
(1, 'Erick Nunez', 1, '3c67697e18899300a2648199a9798dffb359cab2', '0', '11.png', 100),
(14, 'Gerencia Restaurante', 5, '8075249e279a3e96f15963ea9ab1821f33a44adc', '0', '1.png', 100);

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
(1, 'alter_opciones', 'ca5ae271bd', 1570478100, 2, 100),
(2, 'config_master', '1afcd4ad17', 1570479216, 2, 100),
(3, 'config_root', 'b6ca999160', 1570479254, 2, 100),
(4, 'mesa', '2381c94899', 1570479489, 1, 100);

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `alter_producto_reporte`
--
ALTER TABLE `alter_producto_reporte`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `control_panel_mostrar`
--
ALTER TABLE `control_panel_mostrar`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `corte_diario`
--
ALTER TABLE `corte_diario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gastos_images`
--
ALTER TABLE `gastos_images`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `login_db_sync`
--
ALTER TABLE `login_db_sync`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos_venta_especial`
--
ALTER TABLE `productos_venta_especial`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_asignado`
--
ALTER TABLE `pro_asignado`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_bruto`
--
ALTER TABLE `pro_bruto`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_dependiente`
--
ALTER TABLE `pro_dependiente`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_historial_addpro`
--
ALTER TABLE `pro_historial_addpro`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_historial_averias`
--
ALTER TABLE `pro_historial_averias`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_registro_averia`
--
ALTER TABLE `pro_registro_averia`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_registro_up`
--
ALTER TABLE `pro_registro_up`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pro_unidades_medida`
--
ALTER TABLE `pro_unidades_medida`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sync_tabla`
--
ALTER TABLE `sync_tabla`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sync_tables_updates`
--
ALTER TABLE `sync_tables_updates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sync_up`
--
ALTER TABLE `sync_up`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sync_up_cloud`
--
ALTER TABLE `sync_up_cloud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_num`
--
ALTER TABLE `ticket_num`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_propina`
--
ALTER TABLE `ticket_propina`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_temp`
--
ALTER TABLE `ticket_temp`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
