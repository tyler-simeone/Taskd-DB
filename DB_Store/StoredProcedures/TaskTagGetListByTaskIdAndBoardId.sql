USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskTagGetListByTaskIdAndBoardId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskTagGetListByTaskIdAndBoardId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskTagGetListByTaskIdAndBoardId`(
	paramTaskId INT,
    paramBoardId INT
)
BEGIN

	SELECT t.TagId,
		   t.BoardId,
           tt.TaskId,
           tt.TaskTagId,
		   t.TagName,
		   t.CreateDatetime,
		   t.CreateUserId,
		   t.UpdateDatetime,
		   t.UpdateUserId
    FROM Tag t
    INNER JOIN TaskTag tt ON tt.TagId = t.TagId AND tt.TaskId = paramTaskId
    WHERE t.BoardId = paramBoardId
        AND t.IsDeleted = 0
        AND tt.IsDeleted = 0
	ORDER BY tt.CreateDatetime;

END$$

DELIMITER ;
;

