DROP PROCEDURE TagGetAll;

DELIMITER $$
CREATE PROCEDURE `TagGetAll`()
BEGIN

	SELECT TagId,
		   TaskId,
           TagName,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Tag
    WHERE IsDeleted = 0;

END$$
DELIMITER ;


CALL TagGetAll();