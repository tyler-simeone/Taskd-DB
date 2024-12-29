USE `taskd_db_dev`;
DROP procedure IF EXISTS `BoardPersist`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`BoardPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `BoardPersist`( 
    paramUserId int,
    paramBoardName varchar(150),
    paramBoardDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Board (UserId, BoardName, BoardDescription, CreateDatetime, CreateUserId)
    VALUES (paramUserId, paramBoardName, paramBoardDescription, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$

DELIMITER ;
;