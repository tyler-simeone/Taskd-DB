DROP PROCEDURE BoardGetAllByUserId;


DELIMITER $$
CREATE PROCEDURE `BoardGetAllByUserId`( 
	paramUserId int
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
    WHERE UserId = paramUserId
		AND IsDeleted = 0;

END$$
DELIMITER ;


CALL ProjectB.BoardGetAllByUserId(2)