DROP TABLE alter_opciones, alter_producto_reporte, config_impresor;

CREATE TABLE `alter_opciones` (
  `id` int(5) NOT NULL,
  `icono_tipo` varchar(50) NOT NULL,
  `td` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO alter_opciones (id, icono_tipo, td) VALUES ("", "0", "5");

CREATE TABLE `alter_producto_reporte` (
  `id` int(6) NOT NULL,
  `producto` int(6) NOT NULL,
  `td` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla para los productos que se muestran en el reporte especial';


ALTER TABLE `alter_opciones`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `alter_producto_reporte`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `alter_opciones`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `alter_producto_reporte`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
