USE `taskd_db_dev`;
DROP procedure IF EXISTS `TagGetAll`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagGetAll`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagGetAll`()
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
;