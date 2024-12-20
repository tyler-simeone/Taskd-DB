USE `ProjectB`;
DROP procedure IF EXISTS `TaskGetAllByColumnId`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TaskGetAllByColumnId`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskGetAllByColumnId`( 
	paramColumnId int
)
BEGIN

    SELECT  TaskId,
            ColumnId,
            TaskName,
            TaskDescription,
            CreateDatetime,
            CreateUserId,
            UpdateDatetime,
            UpdateUserId,
            IsDeleted
    FROM Task
    WHERE ColumnId = paramColumnId
    AND IsDeleted = 0
    ORDER BY UpdateDatetime;

END$$

DELIMITER ;
;