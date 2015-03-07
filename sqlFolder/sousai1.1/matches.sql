CREATE TABLE `matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `matchType` varchar(255) DEFAULT NULL,
  `matchAddress` varchar(255) DEFAULT NULL,
  `matchStartTime` varchar(255) DEFAULT NULL,
  `matchDeadline` varchar(255) DEFAULT NULL,
  `matchIntroduction` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1367 DEFAULT CHARSET=utf8;
