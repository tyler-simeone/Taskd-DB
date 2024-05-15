DROP PROCEDURE TaskPersist;

DELIMITER $$
CREATE PROCEDURE `TaskPersist`( 
    paramColumnId int,
    paramTaskName varchar(150),
    paramTaskDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Task (ColumnId, TaskName, TaskDescription, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramColumnId, paramTaskName, paramTaskDescription, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$
DELIMITER ;

CALL ProjectB.TaskPersist(1, 'First task for column 1', 'First test task for column 1', 1);