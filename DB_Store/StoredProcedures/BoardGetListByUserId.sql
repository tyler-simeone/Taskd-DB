USE `ProjectB`;
DROP procedure IF EXISTS `BoardGetListByUserId`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`BoardGetListByUserId`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardGetListByUserId`( 
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