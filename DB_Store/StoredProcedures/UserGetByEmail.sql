USE `taskd_db_dev`;
DROP procedure IF EXISTS `UserGetByEmail`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`UserGetByEmail`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `UserGetByEmail`( 
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