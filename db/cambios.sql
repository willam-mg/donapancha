-- agregar columna nueva precio delivery en pedido
ALTER TABLE `pedido_delivery` ADD `precio_delivery` FLOAT(10.2) NULL DEFAULT '0' AFTER `facturado`;