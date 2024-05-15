DROP PROCEDURE UserGetAll;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserGetAll`()
BEGIN

	SELECT UserId,
		   Email,
           CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM User
    WHERE IsDeleted = 0;

END$$
DELIMITER ;

CALL ProjectB.UserGetAll()