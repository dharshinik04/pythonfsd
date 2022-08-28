DROP DATABASE IF EXISTS `person_t3`;
CREATE DATABASE `person_t3`;
USE `person_t3`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `Emp` (
    `personID` INT(4) NOT NULL,
    `personName` VARCHAR(20),
    `Salary` int(6),
    `managerID` int(4),
    PRIMARY KEY (`personID`)
) 
ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;
                     insert into Emp (personID,personName,Salary,managerID) values(1,'Ash',60000,2),(2,'Dharshu',80000,3),(3,'Dinesh',90000,4),
                     (4,'suba',70000,Null);
                     
create table `Manager`(
                        `managerId` int(4) not null,
                        `salary` int(6),
                        primary key(`managerId`)
                        )ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
                        insert into Manager(managerId,salary) values(1,5060),(2,6575),(3,6550),(4,7050);

use `person_t3`;
select e.personName as 'Employee'
from Emp as e,
	 Manager as m
where e.salary> m.salary
and e.managerId=m.managerId