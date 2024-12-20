USE `ProjectB`;
DROP procedure IF EXISTS `BoardPersist`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`BoardPersist`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardPersist`( 
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