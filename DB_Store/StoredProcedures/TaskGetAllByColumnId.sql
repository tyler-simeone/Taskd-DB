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

    SELECT  t.TaskId,
            t.ColumnId,
            c.BoardId,
            t.TaskName,
            t.TaskDescription,
            t.CreateDatetime,
            t.CreateUserId,
            t.UpdateDatetime,
            t.UpdateUserId,
            t.IsDeleted
    FROM Task t
    INNER JOIN taskd_db_dev.Column c ON t.ColumnId = c.ColumnId
    WHERE t.ColumnId = paramColumnId
    AND t.IsDeleted = 0
    ORDER BY t.DroppedDatetime, t.UpdateDatetime;

END$$

DELIMITER ;
;

