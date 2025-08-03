DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `BoardUpdateBoardName`( 
    paramUserId INT,
    paramBoardId INT,
    paramBoardName VARCHAR(50)
)
BEGIN

	UPDATE Board
    SET BoardName = paramBoardName,
		UpdateDatetime = CURRENT_TIMESTAMP(),
        UpdateUserId = paramUserId
    WHERE BoardId = paramBoardId
		AND UserId = paramUserId
        AND IsDeleted = 0;

END$$
DELIMITER ;
