USE `taskd_db_dev`;
DROP procedure IF EXISTS `UserDelete`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`UserDelete`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `UserDelete`( 
	paramUserId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE User
    SET IsDeleted = 1,
		UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP
    WHERE UserId = paramUserId;
    
END$$

DELIMITER ;
;