USE `taskd_db_dev`;
DROP procedure IF EXISTS `ColumnGetAll`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`ColumnGetAll`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `ColumnGetAll`()
BEGIN

	SELECT ColumnId,
		   BoardId,
           ColumnName,
           ColumnDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM taskd_db_dev.Column
    WHERE IsDeleted = 0;

END$$

DELIMITER ;
;