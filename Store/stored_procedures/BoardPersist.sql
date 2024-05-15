DROP PROCEDURE BoardPersist;

DELIMITER $$
CREATE PROCEDURE `BoardPersist`( 
    paramUserId int,
    paramBoardName varchar(150),
    paramBoardDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Board (UserId, BoardName, BoardDescription, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramUserId, paramBoardName, paramBoardDescription, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$
DELIMITER ;

CALL ProjectB.BoardPersist(2, 'Second test board', 'test board created by test user', 1);