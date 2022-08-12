DROP DATABASE IF EXISTS `world`;
CREATE DATABASE `world`; 
USE `world`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `worlds` (
  `name` varchar(50) NOT NULL,
  `continent` varchar(50) NULL,
  `area` int(4) NULL,
  `population` int(4) NULL,
  `gdp` int8(8) NULL,
  PRIMARY KEY (`name`)
  ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `worlds` VALUES ("Afghanistan", "Asia", 652230, 25500100, 20343000000);
INSERT INTO `worlds` VALUES ("Albania", "Europe", 28748, 2831741, 12960000000);
INSERT INTO `worlds` VALUES ("Algeria", "Africa", 2381741, 37100000, 188681000000);
INSERT INTO `worlds` VALUES ("Andorra", "Europe", 468, 78115, 3712000000);
INSERT INTO `worlds` VALUES ("Angola", "Africa", 1246700, 20609294, 100990000000);

SELECT name, population, area FROM worlds WHERE area >= 3000000 OR population >=25000000

