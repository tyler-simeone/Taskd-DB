USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagTaskDelete`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagTaskDelete`( 
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