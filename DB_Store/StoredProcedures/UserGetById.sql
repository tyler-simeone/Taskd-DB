USE `ProjectB`;
DROP procedure IF EXISTS `UserGetById`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`UserGetById`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserGetById`( 
	paramUserId int
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
    WHERE UserId = paramUserId
		AND IsDeleted = 0;

END$$

DELIMITER ;
;