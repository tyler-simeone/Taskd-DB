DROP PROCEDURE ColumnGetAllByBoardId;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnGetAllByBoardAndUserId`( 
    paramBoardId INT,
    paramUserId INT
)
BEGIN

	SELECT ColumnId,
           b.BoardId,
           b.UserId,
           ColumnName,
           ColumnDescription,
		   c.CreateDatetime,
           c.CreateUserId,
           c.UpdateDatetime,
           c.UpdateUserId
    FROM ProjectB.Column c
    INNER JOIN ProjectB.Board b ON c.BoardId = b.BoardId
    WHERE c.BoardId = paramBoardId
		AND b.UserId = paramUserId
		AND c.IsDeleted = 0
        AND b.IsDeleted = 0;

END
DELIMITER ;


CALL ColumnGetAllByBoardId(1);