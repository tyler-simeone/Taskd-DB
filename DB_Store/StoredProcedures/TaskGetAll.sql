USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskGetAll`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskGetAll`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskGetAll`()
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