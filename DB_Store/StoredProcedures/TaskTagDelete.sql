USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskTagDelete`;
;
USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskTagDelete`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskTagDelete`( 
    paramTaskTagId INT,
    paramUpdateUserId INT
)
BEGIN

	UPDATE TaskTag
    SET IsDeleted = 1,
		UpdateUserId = paramUpdateUserId,
		UpdateDatetime = CURRENT_TIMESTAMP()
    WHERE TaskTagId = paramTaskTagId;
    
END$$

DELIMITER ;
;