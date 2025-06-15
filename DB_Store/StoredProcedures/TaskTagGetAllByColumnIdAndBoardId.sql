USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskTagGetAllByColumnIdAndBoardId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskTagGetAllByColumnIdAndBoardId`;
;

DELIMITER $$
USE `taskd_db_dev`$$

CREATE DEFINER=`admin`@`%` PROCEDURE `TaskTagGetAllByColumnIdAndBoardId`( 
	paramColumnId int,
    paramBoardId int
)
BEGIN

    SELECT  tg.TagName,
			tg.TagId,
            tt.TaskTagId,
            t.TaskId
    FROM Task t
    INNER JOIN taskd_db_dev.Column c ON t.ColumnId = c.ColumnId
    INNER JOIN TaskTag tt ON tt.TaskId = t.TaskId 
    INNER JOIN Tag tg ON tt.TagId = tg.TagId 
    WHERE t.ColumnId = paramColumnId
		AND c.BoardId = paramBoardId
        AND tt.IsDeleted = 0
        AND tg.IsDeleted = 0
        AND t.IsDeleted = 0
    ORDER BY tg.TagName;

END$$

DELIMITER ;
;