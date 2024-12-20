USE `ProjectB`;
DROP procedure IF EXISTS `UserDelete`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`UserDelete`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserDelete`( 
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