USE `ProjectB`;
DROP procedure IF EXISTS `UserUpdateByUserId`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`UserUpdateByUserId`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserUpdateByUserId`( 
	paramUserId int,
    paramEmail varchar(255),
    paramFirstName varchar(50),
    paramLastName varchar(100),
    paramUpdateUserId int
)
BEGIN

	UPDATE User
    SET Email = paramEmail,
		FirstName = paramFirstName,
        LastName = paramLastName,
		UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP
    WHERE UserId = paramUserId;
    
END$$

DELIMITER ;
;