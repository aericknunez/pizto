DROP TABLE sync;
DROP TABLE sync_status;
DROP TABLE sync_up;

ALTER TABLE `alter_materiaprima_reporte` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `alter_opciones` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `alter_producto_reporte` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `categorias` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `config_master` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `config_root` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `control_cocina` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `control_panel_mostrar` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `corte_diario` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `facturar_cai` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `facturar_impresora` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `facturar_rtn` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `facturar_rtn_cliente` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `facturar_ticket` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `facturar_users` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `gastos` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `gastos_images` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `images` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `mesa` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `mesa_nombre` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `opciones` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `opciones_asig` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `opciones_name` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `opciones_ticket` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `precios` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `producto` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `productos_venta_especial` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_asignado` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_bruto` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_dependiente` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_historial_addpro` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_historial_averias` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_registro_averia` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_registro_up` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `pro_unidades_medida` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `ticket` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `ticket_num` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `ticket_propina` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;

ALTER TABLE `ticket_temp` ADD `hash` VARCHAR(12) NOT NULL AFTER `td`, ADD `time` INT(12) NOT NULL AFTER `hash`;



CREATE TABLE `sync_tabla` (
  `id` int(5) NOT NULL,
  `tabla` varchar(50) NOT NULL,
  `edo` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='las tablas que deben actualizarse';

ALTER TABLE `sync_tabla`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `sync_tabla`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;











  CREATE TABLE `sync_tables_updates` (
  `id` int(5) NOT NULL,
  `tabla` varchar(50) NOT NULL,
  `hash` varchar(12) NOT NULL COMMENT 'has de la tabla a eliminar',
  `time` int(12) NOT NULL,
  `action` int(2) NOT NULL COMMENT '1 =  borrar. 2= actualizar',
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `sync_tables_updates`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sync_tables_updates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;





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

ALTER TABLE `sync_up`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sync_up`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;





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


ALTER TABLE `sync_up_cloud`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sync_up_cloud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;


INSERT INTO `sync_tabla` (`id`, `tabla`, `edo`, `hash`, `time`, `td`) VALUES
(1, 'alter_materiaprima_reporte', 1, 'd5f4234af5', 1564698507, 3),
(2, 'alter_opciones', 1, 'b4d2506d0d', 1564698509, 3),
(3, 'alter_producto_reporte', 1, '34738426df', 1564698515, 3),
(4, 'categorias', 1, '5066ab080b', 1564698517, 3),
(5, 'config_master', 1, '66552e24f7', 1564698519, 3),
(6, 'config_root', 1, '505ff6e942', 1564698522, 3),
(7, 'control_cocina', 1, 'e23cc455df', 1564698524, 3),
(8, 'control_panel_mostrar', 1, '2f25ccd2bd', 1564698527, 3),
(9, 'corte_diario', 1, 'fd3b08ba9f', 1564698529, 3),
(10, 'facturar_cai', 1, '26436d0ac4', 1564698532, 3),
(11, 'facturar_impresora', 1, '28b56e4ded', 1564698535, 3),
(12, 'facturar_rtn', 1, 'f0df11e802', 1564698538, 3),
(13, 'facturar_rtn_cliente', 1, 'b314635ba1', 1564698541, 3),
(14, 'facturar_ticket', 1, '9b759b5ae6', 1564698545, 3),
(15, 'facturar_users', 1, '22b97c9b61', 1564698548, 3),
(16, 'gastos', 1, '18d9ef3501', 1564698550, 3),
(17, 'gastos_images', 1, 'e5336bec05', 1564698552, 3),
(18, 'images', 1, '99c7d2f0ca', 1564698554, 3),
(19, 'mesa', 1, 'bc14f1168d', 1564698568, 3),
(20, 'mesa_nombre', 1, '4c829ef26b', 1564698572, 3),
(21, 'opciones', 1, '86b58d68ae', 1564698575, 3),
(22, 'opciones_asig', 1, '6e84327d95', 1564698578, 3),
(23, 'opciones_name', 1, '593b218bed', 1564698581, 3),
(24, 'opciones_ticket', 1, '9fe4f7a719', 1564698584, 3),
(25, 'precios', 1, '95f0377715', 1564698588, 3),
(26, 'pro_asignado', 1, '91a907780e', 1564698591, 3),
(27, 'pro_bruto', 1, '939d6c0996', 1564698595, 3),
(28, 'pro_dependiente', 1, '6c881e04d9', 1564698598, 3),
(29, 'pro_dependiente', 1, 'b974660bc7', 1564698616, 3),
(30, 'pro_historial_addpro', 1, 'f839971f61', 1564698656, 3),
(31, 'pro_historial_averias', 1, 'c0bdc91b94', 1564698660, 3),
(32, 'pro_registro_averia', 1, '0eb76c6f95', 1564698664, 3),
(33, 'pro_registro_up', 1, '0dbec6a73e', 1564698673, 3),
(34, 'pro_unidades_medida', 1, '72bf81b22d', 1564698709, 3),
(35, 'producto', 1, 'b9218a9cd9', 1564698713, 3),
(36, 'productos_venta_especial', 1, '8f6f17af02', 1564698717, 3),
(41, 'ticket', 1, '7a9cfb6c6b', 1564698738, 3),
(42, 'ticket_num', 1, 'd0a02a2ba4', 1564698742, 3),
(43, 'ticket_propina', 1, '14459b72d6', 1564698746, 3),
(44, 'ticket_temp', 1, '40c42ccc74', 1564698750, 3);


UPDATE `sync_tabla` SET `td`= (SELECT td FROM config_root WHERE id=1);
