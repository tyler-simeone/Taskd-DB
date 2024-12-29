USE `taskd_db_dev`;
DROP procedure IF EXISTS `ColumnDelete`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`ColumnDelete`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `ColumnDelete`( 
    paramColumnId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE taskd_db_dev.Column
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE ColumnId = paramColumnId;
    
END$$

DELIMITER ;
;