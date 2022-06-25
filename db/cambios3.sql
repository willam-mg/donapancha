-- agregar atributo autenficado en la tabla moto , para verificar si el usuario esta autentificado en la sucursal.ADD
ALTER TABLE
    `moto`
ADD
    `autentificado` TINYINT(1) NULL DEFAULT '0' COMMENT '0 = no autentificado , 1 = autentificado en la sucursal'
AFTER
    `estado`;