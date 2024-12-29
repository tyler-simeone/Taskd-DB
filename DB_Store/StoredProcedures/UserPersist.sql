USE `taskd_db_dev`;
DROP procedure IF EXISTS `UserPersist`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`UserPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `UserPersist`( 
	paramEmail varchar(255),
    paramFirstName varchar(50),
    paramLastName varchar(100)
)
BEGIN

	INSERT INTO User (Email, FirstName, LastName, CreateDatetime)
    VALUES (paramEmail, paramFirstName, paramLastName, CURRENT_TIMESTAMP);
    
END$$

DELIMITER ;
;