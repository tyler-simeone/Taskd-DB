USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagGetAvailableListByTaskIdAndBoardId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagGetAvailableListByTaskIdAndBoardId`( 
	paramTaskId INT,
    paramBoardId INT
)
BEGIN

	SELECT t.TagId,
		   t.BoardId,
		   t.TagName,
		   t.CreateDatetime,
		   t.CreateUserId,
		   t.UpdateDatetime,
		   t.UpdateUserId
	FROM taskd_db_dev.Tag t
    LEFT JOIN taskd_db_dev.TaskTag tt ON tt.TagId = t.TagId AND tt.TaskId = paramTaskId AND tt.IsDeleted = 0
	WHERE t.BoardId = paramBoardId
		AND tt.TaskTagId IS NULL # Only tags that aren't mapped to this task ID
		AND t.IsDeleted = 0
	ORDER BY t.TagName;
    
END$$

DELIMITER ;
;