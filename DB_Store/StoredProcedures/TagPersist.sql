USE `ProjectB`;
DROP procedure IF EXISTS `TagPersist`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TagPersist`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TagPersist`( 
    paramTaskId int,
    paramTagName varchar(50),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Tag (TaskId, TagName, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramTaskId, paramTagName, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$

DELIMITER ;
;