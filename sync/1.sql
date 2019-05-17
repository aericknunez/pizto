"DROP TABLE alter_opciones";

CREATE TABLE IF NOT EXISTS `alter_opciones` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `icono` varchar(50) NOT NULL,
  `up_fecha` varchar(30) NOT NULL,
  `up_hora` varchar(30) NOT NULL,
  `td` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `sync_up` (`id`, `tabla`, `edo`, `td`) VALUES
('', 'alter_opciones', 0, 1),
('', 'alter_producto_reporte', 0, 1),
('', 'facturar_cai', 0, 1),
('', 'facturar_impresora', 0, 1),
('', 'facturar_rtn', 0, 1),
('', 'facturar_rtn_cliente', 0, 1),
('', 'facturar_ticket', 0, 1),
('', 'facturar_users', 0, 1);