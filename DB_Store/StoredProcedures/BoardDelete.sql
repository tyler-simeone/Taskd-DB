USE `taskd_db_dev`;
DROP procedure IF EXISTS `BoardDelete`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`BoardDelete`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `BoardDelete`( 
    paramBoardId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE Board
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE BoardId = paramBoardId;
    
END$$

DELIMITER ;
;