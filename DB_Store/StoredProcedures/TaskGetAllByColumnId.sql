USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskGetAllByColumnId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskGetAllByColumnId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskGetAllByColumnId`( 
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