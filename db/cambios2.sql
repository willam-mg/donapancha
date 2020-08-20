-- aumentar un nuevo campo en delivery 
ALTER TABLE `pedido_delivery` ADD `is_temp` INT NULL DEFAULT '0' AFTER `tipo_pago`;