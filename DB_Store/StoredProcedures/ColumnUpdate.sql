USE `taskd_db_dev`;
DROP procedure IF EXISTS `ColumnUpdate`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`ColumnUpdate`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `ColumnUpdate`( 
    paramColumnId int,
    paramColumnName varchar(150),
    paramColumnDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE taskd_db_dev.Column
    SET ColumnName = paramColumnName,
		ColumnDescription = paramColumnDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE ColumnId = paramColumnId;
    
END$$

DELIMITER ;
;