USE `taskd_db_dev`;
DROP procedure IF EXISTS `ColumnGetByColumnIdAndUserId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`ColumnGetByColumnIdAndUserId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `ColumnGetByColumnIdAndUserId`( 
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
    FROM taskd_db_dev.Column c
    INNER JOIN taskd_db_dev.Board b ON c.BoardId = b.BoardId
    WHERE c.ColumnId = paramColumnId
		AND b.UserId = paramUserId
		AND c.IsDeleted = 0
        AND b.IsDeleted = 0;

END$$

DELIMITER ;
;