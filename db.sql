CREATE DATABASE IF NOT EXISTS `dummydb`;

DROP TABLE IF EXISTS `dummydb`.`tableA`;
CREATE TABLE `dummydb`.`tableA` (
  `id` int(11) unsigned NOT NULL,
  `name` char(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `dummydb`.`tableA` VALUES 
(1, '3wn0rbbu4u'),
(2, 'hjdq358k31'),
(3, 'f910css2rk'),
(4, 'f33iiugfzr'),
(5, 'bwsvu1iyp3'),
(6, 'odg3ghwr7y'),
(7, 'fapbrg8x6e'),
(8, '7v39nt6spa');

DROP TABLE IF EXISTS `dummydb`.`tableB`;
CREATE TABLE `dummydb`.`tableB` (
  `id` int(11) unsigned NOT NULL,
  `aId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_b_a` FOREIGN KEY (`aId`) REFERENCES `tableA` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `dummydb`.`tableB` VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);