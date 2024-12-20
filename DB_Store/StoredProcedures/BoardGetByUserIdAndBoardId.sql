USE `ProjectB`;
DROP procedure IF EXISTS `BoardGetByUserIdAndBoardId`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`BoardGetByUserIdAndBoardId`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardGetByUserIdAndBoardId`( 
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
;