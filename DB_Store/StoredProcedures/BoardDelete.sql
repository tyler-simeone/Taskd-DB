USE `ProjectB`;
DROP procedure IF EXISTS `BoardDelete`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`BoardDelete`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardDelete`( 
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