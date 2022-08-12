DROP DATABASE IF EXISTS `person`;
CREATE DATABASE `person`; 
USE `person`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `persons` (
  `id` tinyint(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `persons` VALUES (1,'dharshu0@gmail.com');
INSERT INTO `persons` VALUES (2,'ash6@gmail.com');
INSERT INTO `persons` VALUES (3,'dharshu0@gmail.com');
INSERT INTO `persons` VALUES (4,'charu7@gmail.com');
INSERT INTO `persons` VALUES (5,'ash6@gmail.com');
DELETE p2 FROM persons p1 JOIN persons p2 ON p1.email = p2.email AND p1.id>p2.id;