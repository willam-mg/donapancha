-- crear tabla par llenar el detalle de products de pedido
CREATE TABLE `c1600147_deli`.`pedido_delivery_detalle` ( `id` INT NOT NULL AUTO_INCREMENT , `pedido_delivery_id` INT NOT NULL , `producto_id` INT NOT NULL , `cantidad` INT NOT NULL , `observacion` VARCHAR(200) NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

-- agregar fevha y hora en la tabla de delivery_pedido
ALTER TABLE `pedido_delivery` ADD `fecha_entrega` DATE NOT NULL AFTER `tipo_pedido_id`, ADD `hora_entrega` TIME NOT NULL AFTER `fecha_entrega`;

-- agregar campo foto en la tabla producto
ALTER TABLE `producto` ADD `foto` VARCHAR(200) NULL AFTER `categoria_producto_id`;