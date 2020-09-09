-- agregar corenadas en la tabla sucursal
ALTER TABLE `sucursal_delivery` ADD `latitude` VARCHAR(100) NULL AFTER `estado`, ADD `longitude` VARCHAR(100) NULL AFTER `latitude`;