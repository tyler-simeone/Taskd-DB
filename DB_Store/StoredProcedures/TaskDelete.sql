USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskDelete`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskDelete`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskDelete`( 
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