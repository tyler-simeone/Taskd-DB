DROP PROCEDURE ColumnGetAll;

DELIMITER $$
CREATE PROCEDURE `ColumnGetAll`()
BEGIN

	SELECT ColumnId,
		   BoardId,
           ColumnName,
           ColumnDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM ProjectB.Column
    WHERE IsDeleted = 0;

END$$
DELIMITER ;

CALL ProjectB.ColumnGetAll();