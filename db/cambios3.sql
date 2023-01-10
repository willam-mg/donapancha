-- agregar atributo autenficado en la tabla moto , para verificar si el usuario esta autentificado en la sucursal.ADD
ALTER TABLE
    `moto`
ADD
    `autentificado` TINYINT(1) NULL DEFAULT '0' COMMENT '0 = no autentificado , 1 = autentificado en la sucursal'
AFTER
    `estado`;

-- agregar atributo bloqueado en la tabla moto, para no permitir el acceso a usuarios de tipo moto al sistema.ADD
ALTER TABLE
    `moto`
ADD
    `bloqueado` TINYINT(1) NULL DEFAULT '0' COMMENT '0=no bloqueado, 1=bloqueado'
AFTER
    `autentificado`;