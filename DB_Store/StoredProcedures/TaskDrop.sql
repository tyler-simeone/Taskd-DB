USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskDrop`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskDrop`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskDrop`( 
    paramTaskId int,
    paramColumnId int,
    paramUserId int
)
BEGIN

	UPDATE Task
    SET ColumnId = paramColumnId,
		DroppedDatetime = CURRENT_TIMESTAMP(),
        UpdateUserId = paramUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TaskId = paramTaskId;
    
END$$

DELIMITER ;
;