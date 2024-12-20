USE `ProjectB`;
DROP procedure IF EXISTS `BoardGetAll`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`BoardGetAll`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardGetAll`()
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
;