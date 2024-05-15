DROP PROCEDURE TaskDelete;

DELIMITER $$
CREATE PROCEDURE `TaskDelete`( 
    paramTaskId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE Task
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TaskId = paramTaskId;
    
END$$
DELIMITER ;

CALL ProjectB.TaskDelete(3, 1);