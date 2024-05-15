DROP PROCEDURE BoardGetOneByUserId;

DELIMITER $$
CREATE PROCEDURE `BoardGetOneByUserId`( 
	paramUserId int,
    paramBoardId int
)
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
    WHERE BoardId = paramBoardId
		AND UserId = paramUserId
		AND IsDeleted = 0;

END$$
DELIMITER ;


CALL ProjectB.BoardGetOneByUserId(1, 1)