DROP PROCEDURE UserDelete;

DELIMITER $$
CREATE PROCEDURE `UserDelete`( 
	paramUserId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE User
    SET IsDeleted = 1,
		UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP
    WHERE UserId = paramUserId;
    
END$$
DELIMITER ;

CALL ProjectB.UserDelete(3, 1);