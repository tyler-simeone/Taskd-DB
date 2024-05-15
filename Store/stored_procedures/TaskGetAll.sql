DROP PROCEDURE TaskGetAll;

DELIMITER $$
CREATE PROCEDURE `TaskGetAll`()
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


CALL TaskGetAll();