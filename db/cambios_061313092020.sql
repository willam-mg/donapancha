-- agregar descuento por producto
ALTER TABLE `producto` ADD `descuento` FLOAT NULL DEFAULT '0' AFTER `foto`;
ALTER TABLE `pedido_delivery_detalle` ADD `descuento` FLOAT NULL DEFAULT '0' AFTER `observacion`;