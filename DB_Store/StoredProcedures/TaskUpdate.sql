USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskUpdate`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskUpdate`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskUpdate`( 
    paramTaskId int,
    paramColumnId int,
    paramTaskName varchar(150),
    paramTaskDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE Task
    SET ColumnId = paramColumnId,
		TaskName = paramTaskName,
		TaskDescription = paramTaskDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TaskId = paramTaskId;
    
END$$

DELIMITER ;
;