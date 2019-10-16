CREATE TABLE `entradas_efectivo` (
  `id` int(6) NOT NULL,
  `descripcion` text NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `fechaF` varchar(30) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `user` varchar(100) NOT NULL,
  `edo` int(2) NOT NULL,
  `hash` varchar(12) NOT NULL,
  `time` int(12) NOT NULL,
  `td` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `entradas_efectivo`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `entradas_efectivo`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
