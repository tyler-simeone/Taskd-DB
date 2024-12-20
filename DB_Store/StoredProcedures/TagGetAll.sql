USE `ProjectB`;
DROP procedure IF EXISTS `TagGetAll`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TagGetAll`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TagGetAll`()
BEGIN

	SELECT TagId,
		   TaskId,
           TagName,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Tag
    WHERE IsDeleted = 0;

END$$

DELIMITER ;
;