DROP DATABASE IF EXISTS `scores`;
CREATE DATABASE `scores`; 
USE `scores`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `scores` (
  `id` tinyint(6) NOT NULL AUTO_INCREMENT,
  `score` float8 NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `scores` VALUES (1,3.50);
INSERT INTO `scores` VALUES (2,3.65);
INSERT INTO `scores` VALUES (3,4.00);
INSERT INTO `scores` VALUES (4,3.85);
INSERT INTO `scores` VALUES (5,4.00);
INSERT INTO `scores` VALUES (6,3.65);

SELECT score,
  DENSE_RANK() OVER (ORDER BY score) AS 'rank'
  FROM scores;
  