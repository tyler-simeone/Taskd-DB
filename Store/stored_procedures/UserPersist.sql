DROP PROCEDURE UserPersist;

DELIMITER $$
CREATE PROCEDURE `UserPersist`( 
	paramEmail varchar(255),
    paramCreateUserId int
)
BEGIN

	INSERT INTO User (Email, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramEmail, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$
DELIMITER ;

CALL ProjectB.UserPersist('test@test.net', 1);