USE `ProjectB`;
DROP procedure IF EXISTS `ColumnGetAll`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`ColumnGetAll`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnGetAll`()
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
    FROM ProjectB.Column
    WHERE IsDeleted = 0;

END$$

DELIMITER ;
;