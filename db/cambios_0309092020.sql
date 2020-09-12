-- agregar corenadas en la tabla sucursal
ALTER TABLE `sucursal_delivery` ADD `latitude` VARCHAR(100) NULL AFTER `estado`, ADD `longitude` VARCHAR(100) NULL AFTER `latitude`;

-- agregar campo par guardar el porcentaje dde descuento para los clientes que usan la aplicacion mobile para hacer pedidos
ALTER TABLE `horario` ADD `descuento_app_movil` INT NOT NULL DEFAULT '0' AFTER `hora_entrega_programada`;
ALTER TABLE `pedido_delivery` ADD `descuento` FLOAT NULL DEFAULT '0' AFTER `is_temp`;