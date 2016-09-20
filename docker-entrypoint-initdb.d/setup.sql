CREATE DATABASE IF NOT EXISTS app_test;

DROP TABLE IF EXISTS `app_test`.`user`;
CREATE TABLE `app_test`.`user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(8) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `postal_code` char(7) DEFAULT '',
  `character_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
