DROP PROCEDURE TaskGetAllByColumnId;

DELIMITER $$
CREATE PROCEDURE `TaskGetAllByColumnId`( 
	paramColumnId int
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
    WHERE ColumnId = paramColumnId
		AND IsDeleted = 0;

END$$
DELIMITER ;


CALL TaskGetAllByColumnId(1);