USE `ProjectB`;
DROP procedure IF EXISTS `ColumnGetByColumnIdAndUserId`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`ColumnGetByColumnIdAndUserId`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnGetByColumnIdAndUserId`( 
    paramColumnId INT,
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
    WHERE c.ColumnId = paramColumnId
		AND b.UserId = paramUserId
		AND c.IsDeleted = 0
        AND b.IsDeleted = 0;

END$$

DELIMITER ;
;