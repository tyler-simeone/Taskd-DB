USE `ProjectB`;
DROP procedure IF EXISTS `UserGetByEmail`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`UserGetByEmail`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserGetByEmail`( 
	paramEmail varchar(255)
)
BEGIN

	SELECT UserId,
		   Email,
           FirstName,
           LastName,
           CreateDatetime,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM User
    WHERE Email = paramEmail
		AND IsDeleted = 0;

END$$

DELIMITER ;
;