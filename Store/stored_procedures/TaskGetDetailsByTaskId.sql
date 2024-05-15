DROP PROCEDURE TaskGetDetailsByTaskId;

DELIMITER $$
CREATE PROCEDURE `TaskGetDetailsByTaskId`( 
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

CALL TaskGetDetailsByTaskId(1);

