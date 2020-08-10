-- agregar columna nueva precio delivery en pedido
ALTER TABLE `pedido_delivery` ADD `precio_delivery` FLOAT(10.2) NULL DEFAULT '0' AFTER `facturado`;

-- agregar columna sucursal_id en precio_delivery
ALTER TABLE `precio_delivery` ADD `sucursal_id` INT NULL AFTER `estado`;