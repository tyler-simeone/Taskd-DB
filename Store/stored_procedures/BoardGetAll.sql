DROP PROCEDURE BoardGetAll;

DELIMITER $$
CREATE PROCEDURE `BoardGetAll`()
BEGIN

	SELECT BoardId,
		   UserId,
           BoardName,
           BoardDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Board
    WHERE IsDeleted = 0;

END$$
DELIMITER ;

CALL ProjectB.BoardGetAll();