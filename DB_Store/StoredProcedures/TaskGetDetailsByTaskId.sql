USE `ProjectB`;
DROP procedure IF EXISTS `TaskGetDetailsByTaskId`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TaskGetDetailsByTaskId`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskGetDetailsByTaskId`( 
	paramTaskId int
)
BEGIN

	SELECT TaskId,
		   ColumnId,
           TaskName,
           TaskDescription,
           CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Task
    WHERE TaskId = paramTaskId
		AND IsDeleted = 0;

END$$

DELIMITER ;
;