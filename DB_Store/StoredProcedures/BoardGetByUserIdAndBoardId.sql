USE `taskd_db_dev`;
DROP procedure IF EXISTS `BoardGetByUserIdAndBoardId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`BoardGetByUserIdAndBoardId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `BoardGetByUserIdAndBoardId`( 
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