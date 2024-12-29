USE `taskd_db_dev`;
DROP procedure IF EXISTS `BoardGetListByUserId`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`BoardGetListByUserId`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `BoardGetListByUserId`( 
	paramUserId int
)
BEGIN

	SELECT BoardId,
		   UserId,
           BoardName
    FROM Board
    WHERE UserId = paramUserId
		AND IsDeleted = 0;

END$$

DELIMITER ;
;