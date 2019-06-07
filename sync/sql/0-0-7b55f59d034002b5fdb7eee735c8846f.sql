DROP TABLE alter_opciones;

CREATE TABLE IF NOT EXISTS `alter_opciones` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `icono` varchar(50) NOT NULL,
  `up_fecha` varchar(30) NOT NULL,
  `up_hora` varchar(30) NOT NULL,
  `td` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE ticket_temp;

CREATE TABLE IF NOT EXISTS `ticket_temp` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `alter_materiaprima_reporte` (
  `id` int(6) NOT NULL,
  `producto` int(6) NOT NULL,
  `td` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla para los productos que se muestran en el reporte especial';


ALTER TABLE `alter_materiaprima_reporte`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `alter_materiaprima_reporte`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `pro_bruto` ADD `iden` INT(6) NOT NULL AFTER `id`;
ALTER TABLE `pro_dependiente` ADD `iden` INT(6) NOT NULL AFTER `id`;
ALTER TABLE `pro_unidades_medida` ADD `iden` INT(6) NOT NULL AFTER `id`;
ALTER TABLE `pro_asignado` ADD `iden` INT(6) NOT NULL AFTER `id`;

UPDATE pro_asignado SET iden = id;
UPDATE pro_dependiente SET iden = id;
UPDATE pro_unidades_medida SET iden = id;
UPDATE pro_asignado SET iden = id;


CREATE TABLE `login_db_sync` (
  `id` int(6) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lleva el control de los cambios en las bases de datos locales';



CREATE TABLE `login_db_user` (
  `id` int(6) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `td` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `login_db_sync`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `login_db_user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `login_db_sync`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `login_db_user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



CREATE TABLE `login_imagenes` (
  `id` int(6) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `categoria` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
(249, 'fff.png', 1);


ALTER TABLE `login_imagenes`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `login_imagenes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

  CREATE TABLE `login_images_categoria` (
  `id` int(6) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `login_images_categoria` (`id`, `categoria`) VALUES
(1, 'Comida Rapida'),
(2, 'Restaurante'),
(3, 'Bar'),
(4, 'Cafeteria');


ALTER TABLE `login_images_categoria`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `login_images_categoria`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

TRUNCATE sync_up;

INSERT INTO `sync_up` (`id`, `tabla`, `edo`, `td`) VALUES
('', 'alter_materiaprima_reporte', 0, 1),
('', 'alter_opciones', 0, 1),
('', 'alter_producto_reporte', 0, 1),
('', 'categorias', 0, 1),
('', 'config_master', 0, 1),
('', 'config_root', 0, 1),
('', 'control_cocina', 0, 1),

('', 'control_panel_mostrar', 0, 1),
('', 'corte_diario', 0, 1),
('', 'facturar_cai', 0, 1),
('', 'facturar_impresora', 0, 1),
('', 'facturar_rtn', 0, 1),
('', 'facturar_rtn_cliente', 0, 1),
('', 'facturar_ticket', 0, 1),
('', 'facturar_users', 0, 1),

('', 'gastos', 1, 1),
('', 'gastos_images', 0, 1),
('', 'images', 0, 1),
('', 'mesa', 1, 1),
('', 'mesa_nombre', 1, 1),
('', 'opciones', 0, 1),
('', 'opciones_asig', 0, 1),
('', 'opciones_name', 0, 1),
('', 'opciones_ticket', 1, 1),

('', 'precios', 0, 1),
('', 'producto', 0, 1),
('', 'productos_venta_especial', 0, 1),
('', 'pro_asignado', 0, 1),
('', 'pro_bruto', 0, 1),
('', 'pro_dependiente', 0, 1),
('', 'pro_historial_addpro', 0, 1),
('', 'pro_historial_averias', 0, 1),
('', 'pro_registro_averia', 0, 1),
('', 'pro_registro_up', 0, 1),
('', 'pro_unidades_medida', 0, 1),

('', 'sync', 0, 1),
('', 'sync_status', 0, 1),
('', 'sync_up', 0, 1),
('', 'ticket', 1, 1),
('', 'ticket_num', 1, 1),
('', 'ticket_propina', 0, 1);

UPDATE `sync_up` SET `td`= (SELECT td FROM config_root WHERE id=1) WHERE td = 1;

ALTER TABLE `alter_opciones` CHANGE `up_hora` `actualizar` INT(6) NOT NULL; 

CREATE TABLE `ticket_propina` (
  `id` int(6) NOT NULL,
  `num_fac` int(6) NOT NULL,
  `propina` float(10,2) NOT NULL,
  `efectivo` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `tx` int(2) NOT NULL,
  `td` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `ticket_propina`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ticket_propina`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `config_master` ADD `imprimir_antes` varchar(4) NULL COMMENT 'imprimir antes de cobrar' AFTER `venta_especial`;
ALTER TABLE `config_master` ADD `cambio_tx` varchar(4) NULL COMMENT 'Permitir Cambio Tx' AFTER `imprimir_antes`;

ALTER TABLE `corte_diario` ADD `propina` FLOAT(10,2) NOT NULL AFTER `efectivo`;