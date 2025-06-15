USE `taskd_db_dev`;
DROP procedure IF EXISTS `TagGetListByUserIdAndBoardId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagGetListByUserIdAndBoardId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagGetListByUserIdAndBoardId`(
	paramUserId INT,
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
    INNER JOIN TaskTag tt ON tt.TagId = t.TagId
    WHERE t.CreateUserId = paramUserId
		AND t.BoardId = paramBoardId
        AND t.IsDeleted = 0
        AND tt.IsDeleted = 0
	ORDER BY tt.CreateDatetime;

END$$

DELIMITER ;
;