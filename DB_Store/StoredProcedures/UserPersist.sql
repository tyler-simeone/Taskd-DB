USE `ProjectB`;
DROP procedure IF EXISTS `UserPersist`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`UserPersist`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserPersist`( 
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