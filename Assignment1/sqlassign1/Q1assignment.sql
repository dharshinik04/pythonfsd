DROP DATABASE IF EXISTS `person_t2`;
CREATE DATABASE `person_t2`;
USE `person_t2`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `person` (

    `personID` INT(4) NOT NULL,
    `lastName` VARCHAR(20),
    `firstName` VARCHAR(20),
    PRIMARY KEY (`personID`)
)  ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;
                     insert into person (personID,lastName,firstName) values(1,'Dharshu','k'),(2,'Aswini','k'),(3,'dinesh','kc'),
                     (5,'charu','s');
				
CREATE TABLE `address` (
    `addressId` INT(4) NOT NULL,
    `personID` INT(4),
    `city` VARCHAR(20),
    `state` VARCHAR(20),
    PRIMARY KEY (`addressId`)
)  ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;
                          insert into address(addressId,personID,city,state) values(1,2,'Chennai','Tamil nadu'),(2,1,'Bangalore','Karnataka'),(3,3,'Hyderabad','Telangana'),(4,5,'Nellore','Andhra Pradesh');
                          
use `person_t2`;
select p.firstName as 'First Name',
		p.lastName as 'Last Name' ,
        a.city ,
        a.state
        from person as p
         left join address a  on a.personId= p.personId;