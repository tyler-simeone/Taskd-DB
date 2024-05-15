DROP PROCEDURE UserUpdateByUserId;

DELIMITER $$
CREATE PROCEDURE `UserUpdateByUserId`( 
	paramUserId int,
    paramEmail varchar(255),
    paramUpdateUserId int
)
BEGIN

	UPDATE User
    SET Email = paramEmail,
		UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP
    WHERE UserId = paramUserId;
    
END$$
DELIMITER ;

CALL ProjectB.UserUpdateByUserId(1, 'system@projectb.com', null);