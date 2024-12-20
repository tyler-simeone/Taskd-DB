USE `ProjectB`;
DROP procedure IF EXISTS `TaskGetAll`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TaskGetAll`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskGetAll`()
BEGIN

	SELECT TaskId,
		   ColumnId,
           TaskName,
           TaskDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Task
    WHERE IsDeleted = 0;

END$$

DELIMITER ;
;