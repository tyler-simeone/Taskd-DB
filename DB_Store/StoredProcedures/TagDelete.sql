USE `taskd_db_dev`;
DROP procedure IF EXISTS `TagDelete`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagDelete`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagDelete`( 
	paramTagId INT,
    paramUpdateUserId INT
)
BEGIN

	UPDATE Tag
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TagId = paramTagId;
    
END$$

DELIMITER ;
;