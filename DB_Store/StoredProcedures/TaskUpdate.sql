USE `ProjectB`;
DROP procedure IF EXISTS `TaskUpdate`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TaskUpdate`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskUpdate`( 
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