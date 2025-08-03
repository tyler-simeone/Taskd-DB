USE `taskd_db_dev`;
DROP procedure IF EXISTS `TagGetAllByUserIdAndBoardId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagGetAllByUserIdAndBoardId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagGetAllByUserIdAndBoardId`(
    paramUserId INT,
    paramBoardId INT
)
BEGIN

	SELECT  TagId,
            BoardId,
            TagName,
            CreateDatetime,
            CreateUserId,
            UpdateDatetime,
            UpdateUserId,
            IsDeleted
    FROM Tag
    WHERE CreateUserId = paramUserId
        AND BoardId = paramBoardId
        AND IsDeleted = 0;

END$$

DELIMITER ;
;

