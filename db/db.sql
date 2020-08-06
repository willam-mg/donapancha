-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para db_copacabana
CREATE DATABASE IF NOT EXISTS `db_copacabana` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_copacabana`;

-- Volcando estructura para tabla db_copacabana.about
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.about: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` (`id`, `titulo`, `descripcion`, `foto`) VALUES
	(1, 'Misión', '“Nuestra misión consiste en generar una experiencia de viaje excepcional, superando las expectativas de nuestros clientes, a través de un servicio con los más altos estándares de calidad, seguridad y eficiencia. Alcanzaremos nuestra visión aprovechando economías de escala a través de un proceso de expansión, generando un crecimiento sostenible en la rentabilidad a largo plazo, maximizando el nivel de satisfacción de nuestros clientes, manteniendo un equipo profesional de excelencia, haciendo uso de nuevas tecnologías y entornos digitales.”', 'about_1200312142036.jpg');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.auth_assignment
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla db_copacabana.auth_assignment: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
	('Administrador', '1', 1575585406);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.auth_item
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla db_copacabana.auth_item: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
	('/*', 2, NULL, NULL, NULL, 1575585377, 1575585377),
	('Administrador', 1, NULL, NULL, NULL, 1575585392, 1575585392);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.auth_item_child
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla db_copacabana.auth_item_child: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
	('Administrador', '/*');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.auth_rule
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla db_copacabana.auth_rule: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.beneficio
CREATE TABLE IF NOT EXISTS `beneficio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.beneficio: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `beneficio` DISABLE KEYS */;
INSERT INTO `beneficio` (`id`, `titulo`, `descripcion`, `foto`) VALUES
	(2, 'COMODIDAD', 'La comodidad de recibir en destino la encomienda y pagarla, optimizando de esta manera el tiempo y el orden de su mercadería.', 'beneficio_2200313152024.jpg');
/*!40000 ALTER TABLE `beneficio` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mensaje` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.contacto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`) VALUES
	(2, 'Luis', 'Prueba@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque faucibus ligula laoreet, scelerisque lacus sed, ultricies nisl. Maecenas tempus molestie elementum. Praesent porttitor, nisl vitae viverra cursus, lorem mi euismod lorem, ac interdum nisi nulla non arcu. Ut ut purus eu nibh efficitur eleifend. Vestibulum sodales gravida orci in porta. Proin dapibus neque turpis, et euismod metus porta quis. Etiam convallis semper fermentum. Mauris mattis dignissim libero at dapibus. Donec consequat volutpat urna, vitae scelerisque nisi convallis accumsan. Aliquam pretium rutrum nisi eu ornare.');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.filosofia
CREATE TABLE IF NOT EXISTS `filosofia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL DEFAULT '0',
  `titulo` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.filosofia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `filosofia` DISABLE KEYS */;
/*!40000 ALTER TABLE `filosofia` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.historia
CREATE TABLE IF NOT EXISTS `historia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.historia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historia` DISABLE KEYS */;
/*!40000 ALTER TABLE `historia` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.historia_img
CREATE TABLE IF NOT EXISTS `historia_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.historia_img: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historia_img` DISABLE KEYS */;
INSERT INTO `historia_img` (`id`, `descripcion`, `foto`) VALUES
	(1, 'Imagen 1', 'historiaimg_1200313162128.jpg');
/*!40000 ALTER TABLE `historia_img` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.pcounter_save
CREATE TABLE IF NOT EXISTS `pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`save_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.pcounter_save: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `pcounter_save` DISABLE KEYS */;
INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES
	('counter', 29),
	('day_time', 2458929),
	('max_count', 2),
	('max_time', 1579536000),
	('yesterday', 0);
/*!40000 ALTER TABLE `pcounter_save` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.pcounter_users
CREATE TABLE IF NOT EXISTS `pcounter_users` (
  `user_ip` varchar(255) NOT NULL,
  `user_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.pcounter_users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `pcounter_users` DISABLE KEYS */;
INSERT INTO `pcounter_users` (`user_ip`, `user_time`) VALUES
	('f528764d624db129b32c21fbca0cb8d6', 1584724532);
/*!40000 ALTER TABLE `pcounter_users` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.ruta
CREATE TABLE IF NOT EXISTS `ruta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.ruta: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` (`id`, `nombre`, `imagen`) VALUES
	(4, 'Ruta', 'ruta_4200320123527.png');
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.servicio
CREATE TABLE IF NOT EXISTS `servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.servicio: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` (`id`, `titulo`, `foto`, `descripcion`) VALUES
	(3, 'Servicio 1', 'servicio_3200320131017.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at arcu in leo rutrum tempus. Fusce vitae diam efficitur, feugiat tortor non, malesuada magna. Nam ultrices, dui et faucibus pharetra, eros diam finibus tortor, a porta risus justo suscipit leo. Ut pharetra laoreet dui. In justo lorem, iaculis eget mauris in, volutpat mollis sapien. Donec facilisis fringilla pellentesque. Aliquam venenatis scelerisque dolor non volutpat. Phasellus id felis ac metus eleifend tempus. Nunc porttitor aliquam ultrices.</p>\r\n');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.session
CREATE TABLE IF NOT EXISTS `session` (
  `id` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla db_copacabana.session: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` (`id`, `expire`, `data`) VALUES
	('6hc167jvb5pb60t4jtputtvjav', 1584174684, _binary 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31303A222F62656E65666963696F223B5F5F69647C693A313B),
	('e6tbatpujqr0mfjef9j7fh3lab', 1584760532, _binary 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A313A222F223B5F5F69647C693A313B);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.slider
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `estado` enum('Habilitado','Deshabilitado') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.slider: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` (`id`, `titulo`, `descripcion`, `foto`, `estado`) VALUES
	(1, 'Image 1', 'Lorem Ipsum', 'slider_1200313154010.jpg', 'Habilitado'),
	(2, 'Image 2', 'Lorem Ipsum', 'slider_2200313154026.jpg', 'Habilitado');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.sucursal
CREATE TABLE IF NOT EXISTS `sucursal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '0',
  `telefono` varchar(100) NOT NULL DEFAULT '0',
  `celular` varchar(100) NOT NULL DEFAULT '0',
  `direccion` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.sucursal: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.testimonio
CREATE TABLE IF NOT EXISTS `testimonio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_copacabana.testimonio: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `testimonio` DISABLE KEYS */;
INSERT INTO `testimonio` (`id`, `nombre`, `descripcion`) VALUES
	(1, 'Testimonio 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at arcu in leo rutrum tempus. Fusce vitae diam efficitur, feugiat tortor non, malesuada magna. Nam ultrices, dui et faucibus pharetra, eros diam finibus tortor, a porta risus justo suscipit leo. Ut pharetra laoreet dui. In justo lorem, iaculis eget mauris in, volutpat mollis sapien. Donec facilisis fringilla pellentesque. Aliquam venenatis scelerisque dolor non volutpat. Phasellus id felis ac metus eleifend tempus. Nunc porttitor aliquam ultrices.</p>\r\n');
/*!40000 ALTER TABLE `testimonio` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.trails_log
CREATE TABLE IF NOT EXISTS `trails_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla db_copacabana.trails_log: ~44 rows (aproximadamente)
/*!40000 ALTER TABLE `trails_log` DISABLE KEYS */;
INSERT INTO `trails_log` (`id`, `description`, `action`, `model`, `id_model`, `ip`, `creation_date`, `user_id`) VALUES
	(1, 'El usuario anonimo: Registro app\\models\\User[1].', 'create', 'app\\models\\User', 1, '127.0.0.1', 1575585349, NULL),
	(2, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575585436, 1),
	(3, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575663460, 1),
	(4, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575914346, 1),
	(5, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575929553, 1),
	(6, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575929564, 1),
	(7, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1576603908, 1),
	(8, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1576683310, 1),
	(9, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1576766108, 1),
	(10, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1578531623, 1),
	(11, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1578583379, 1),
	(12, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1578591943, 1),
	(13, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1578592041, 1),
	(14, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1578592045, 1),
	(15, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1580510916, 1),
	(16, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1580758005, 1),
	(17, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581354731, 1),
	(18, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581446298, 1),
	(19, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450797, 1),
	(20, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450803, 1),
	(21, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450816, 1),
	(22, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450843, 1),
	(23, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450866, 1),
	(24, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581451116, 1),
	(25, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581532511, 1),
	(26, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581534252, 1),
	(27, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581535114, 1),
	(28, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581603484, 1),
	(29, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581608872, 1),
	(30, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581690911, 1),
	(31, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581977145, 1),
	(32, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582034756, 1),
	(33, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1582042051, 1),
	(34, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582051150, 1),
	(35, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1582051171, 1),
	(36, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582062556, 1),
	(37, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582144731, 1),
	(38, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582210637, 1),
	(39, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582311686, 1),
	(40, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582728260, 1),
	(41, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582816316, 1),
	(42, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582920906, 1),
	(43, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1583162825, 1),
	(44, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1584029406, 1),
	(45, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1584110309, 1),
	(46, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1584715630, 1);
/*!40000 ALTER TABLE `trails_log` ENABLE KEYS */;

-- Volcando estructura para tabla db_copacabana.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla db_copacabana.user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `rol`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'gLQrZjrqpehandifWOHefcoB-0yg762j', '$2y$13$DDOkriGRphO93Wqe6ABzyOSEeC3NV.GZRzGuhaxADB07d5iyLToXO', NULL, 'admin@rnovaacademy.com', 'administrador', 10, 1575585349, 1575585349);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
