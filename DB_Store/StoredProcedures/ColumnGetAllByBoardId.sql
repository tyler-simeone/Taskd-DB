USE `taskd_db_dev`;
DROP procedure IF EXISTS `ColumnGetAllByBoardAndUserId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`ColumnGetAllByBoardAndUserId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `ColumnGetAllByBoardAndUserId`( 
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
    FROM taskd_db_dev.Column c
    INNER JOIN taskd_db_dev.Board b ON c.BoardId = b.BoardId
    LEFT JOIN taskd_db_dev.Task t ON t.ColumnId = c.ColumnId AND t.IsDeleted = 0
    WHERE b.BoardId = paramBoardId
		AND b.UserId = paramUserId
		AND c.IsDeleted = 0
        AND b.IsDeleted = 0
	GROUP BY c.ColumnId, b.BoardId, b.UserId, c.ColumnName, c.ColumnDescription, 
			 c.CreateDatetime, c.CreateUserId, c.UpdateDatetime, c.UpdateUserId;

END$$

DELIMITER ;
;