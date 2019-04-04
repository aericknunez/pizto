CREATE TABLE `facturar_cai` (
  `id` int(6) NOT NULL,
  `inicial` int(8) UNSIGNED ZEROFILL NOT NULL,
  `final` int(8) UNSIGNED ZEROFILL NOT NULL,
  `cai` varchar(100) NOT NULL,
  `fecha_limite` varchar(20) NOT NULL,
  `fechaF` varchar(30) NOT NULL,
  `td` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `facturar_rtn` (
  `id` int(5) NOT NULL,
  `rtn` varchar(100) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `td` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `facturar_cai`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `facturar_rtn`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `facturar_cai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `facturar_rtn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
