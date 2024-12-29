USE `taskd_db_dev`;
DROP procedure IF EXISTS `BoardGetAll`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`BoardGetAll`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `BoardGetAll`()
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