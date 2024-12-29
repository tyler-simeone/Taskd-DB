USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskGetDetailsByTaskId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskGetDetailsByTaskId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskGetDetailsByTaskId`( 
	paramTaskId int
)
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
    WHERE TaskId = paramTaskId
		AND IsDeleted = 0;

END$$

DELIMITER ;
;