DROP PROCEDURE TaskUpdate;

DELIMITER $$
CREATE PROCEDURE `TaskUpdate`( 
    paramTaskId int,
    paramTaskName varchar(150),
    paramTaskDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE Task
    SET TaskName = paramTaskName,
		TaskDescription = paramTaskDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TaskId = paramTaskId;
    
END$$
DELIMITER ;

CALL ProjectB.TaskUpdate(2, 'testing first task from swagger! :)', 'this is a description!', 1);