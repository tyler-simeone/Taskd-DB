USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskTagGetUniqueAssignedListByUserIdAndBoardId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskTagGetUniqueAssignedListByUserIdAndBoardId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskTagGetUniqueAssignedListByUserIdAndBoardId`(
	paramUserId INT,
    paramBoardId INT
)
BEGIN

	SELECT DISTINCT t.TagId,
				    t.BoardId,
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

END
$$

DELIMITER ;
;

