DROP PROCEDURE UserGetById;

DELIMITER $$
CREATE PROCEDURE `UserGetById`( 
	paramUserId int
)
BEGIN

	SELECT UserId,
		   Email,
           CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM User
    WHERE UserId = paramUserId
		AND IsDeleted = 0;

END$$
DELIMITER ;

CALL ProjectB.UserGetById(2)