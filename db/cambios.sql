-- agregar columna nueva precio delivery en pedido
ALTER TABLE `pedido_delivery` ADD `precio_delivery` FLOAT(10.2) NULL DEFAULT '0' AFTER `facturado`;

-- agregar columna sucursal_id en precio_delivery
ALTER TABLE `precio_delivery` ADD `sucursal_id` INT NULL AFTER `estado`;

-- agregar tabl para horario de pedidos configurables por el admin
CREATE TABLE `horario` ( `id` INT NOT NULL AUTO_INCREMENT , `inicio` TIME NOT NULL , `fin` TIME NOT NULL , `atendiendo` TINYINT(1) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ENGINE = InnoDB;
ALTER TABLE `horario` ADD `hora_pickup` INT NOT NULL DEFAULT '0' AFTER `atendiendo`, ADD `hora_entrega_inmediata` INT NOT NULL DEFAULT '0' AFTER `hora_pickup`, ADD `hora_entrega_programada` INT NOT NULL DEFAULT '0' AFTER `hora_entrega_inmediata`;


-- agregar permiso al rol administrador para acceder a /horario/*
-- agregar permiso al rol administrador para acceder a /pedidodelivery/modificar-hora

-- registrar en horario el primer registro para controlar las hoaras de atencion
INSERT INTO `horario` (`id`, `inicio`, `fin`, `atendiendo`, `hora_pickup`, `hora_entrega_inmediata`, `hora_entrega_programada`) VALUES
(1, '13:23:00', '13:23:00', 1, 0, 0, 0);

-- incremetnar la longitud de lacolumnadireccion de pedidodelivery
ALTER TABLE `pedido_delivery` CHANGE `direccion` `direccion` VARCHAR(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL;