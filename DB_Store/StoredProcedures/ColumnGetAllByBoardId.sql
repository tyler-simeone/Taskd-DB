USE `ProjectB`;
DROP procedure IF EXISTS `ColumnGetAllByBoardAndUserId`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`ColumnGetAllByBoardAndUserId`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnGetAllByBoardAndUserId`( 
    paramBoardId INT,
    paramUserId INT
)
BEGIN

	SELECT c.ColumnId,
           b.BoardId,
           b.UserId,
           c.ColumnName,
           COUNT(t.TaskId) as TaskCount,
           c.ColumnDescription,
		   c.CreateDatetime,
           c.CreateUserId,
           c.UpdateDatetime,
           c.UpdateUserId
    FROM ProjectB.Column c
    INNER JOIN ProjectB.Board b ON c.BoardId = b.BoardId
    LEFT JOIN ProjectB.Task t ON t.ColumnId = c.ColumnId
    WHERE b.BoardId = paramBoardId
		AND b.UserId = paramUserId
		AND c.IsDeleted = 0
        AND b.IsDeleted = 0
	GROUP BY c.ColumnId, b.BoardId, b.UserId, c.ColumnName, c.ColumnDescription, 
			 c.CreateDatetime, c.CreateUserId, c.UpdateDatetime, c.UpdateUserId;

END$$

DELIMITER ;
;