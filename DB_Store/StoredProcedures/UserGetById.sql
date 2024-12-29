USE `taskd_db_dev`;
DROP procedure IF EXISTS `UserGetById`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`UserGetById`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `UserGetById`( 
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