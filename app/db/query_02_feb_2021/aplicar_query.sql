-- agrega un campo extra en cliente para regisar y eliminar los numeros duplicados de todos los clientes
ALTER TABLE `cliente` ADD `is_duplicated` INT NULL DEFAULT '1' AFTER `longitude`;