USE `taskd_db_dev`;
DROP procedure IF EXISTS `UserUpdateByUserId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`UserUpdateByUserId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `UserUpdateByUserId`( 
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