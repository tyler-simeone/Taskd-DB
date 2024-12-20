USE `ProjectB`;
DROP procedure IF EXISTS `TaskDelete`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TaskDelete`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskDelete`( 
    paramTaskId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE Task
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TaskId = paramTaskId;
    
END$$

DELIMITER ;
;