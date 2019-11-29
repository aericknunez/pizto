
CREATE TABLE `planilla_descuentos` (
  `id` int(5) NOT NULL,
  `descuento` varchar(50) NOT NULL,
  `porcentaje` float(10,2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='descuentos que se pueden establecer a cada empleado';

CREATE TABLE `planilla_descuentos_asig` (
  `id` int(5) NOT NULL,
  `descuento` varchar(12) NOT NULL,
  `empleado` varchar(12) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Empleados que se le han asignado un descuento';


CREATE TABLE `planilla_empleados` (
  `id` int(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `puesto` varchar(30) NOT NULL,
  `documento` varchar(25) NOT NULL,
  `nit` varchar(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `sueldo` float(10,2) NOT NULL COMMENT 'sueldo por 30 dias',
  `entradas` varchar(2) NOT NULL,
  `extra` varchar(2) NOT NULL,
  `nocturnas` varchar(2) NOT NULL,
  `comentarios` varchar(200) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='registra los empleados del negocio';


CREATE TABLE `planilla_extras` (
  `id` int(5) NOT NULL,
  `empleado` varchar(12) NOT NULL,
  `extra` varchar(100) NOT NULL COMMENT 'extra 1, adelanto 2, descuentos 3',
  `cantidad` float(10,2) NOT NULL,
  `tipo` int(2) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `fechaF` varchar(20) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='extras -  adelantos, descuentos o extras';


CREATE TABLE `planilla_pagos` (
  `id` int(5) NOT NULL,
  `empleado` varchar(12) NOT NULL,
  `fecha_inicio` varchar(20) NOT NULL,
  `fecha_fin` varchar(20) NOT NULL,
  `inicioF` int(20) NOT NULL,
  `finF` varchar(20) NOT NULL,
  `dias` int(20) NOT NULL,
  `sueldo` float(10,2) NOT NULL,
  `extras` float(10,2) NOT NULL,
  `descuentos` float(10,2) NOT NULL,
  `liquido` float(10,2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='control de las planillas generadas';

ALTER TABLE `planilla_descuentos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `planilla_descuentos_asig`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `planilla_empleados`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `planilla_extras`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `planilla_pagos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `planilla_descuentos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `planilla_descuentos_asig`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `planilla_empleados`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `planilla_extras`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `planilla_pagos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
