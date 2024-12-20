USE `ProjectB`;
DROP procedure IF EXISTS `ColumnDelete`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`ColumnDelete`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnDelete`( 
    paramColumnId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE ProjectB.Column
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE ColumnId = paramColumnId;
    
END$$

DELIMITER ;
;