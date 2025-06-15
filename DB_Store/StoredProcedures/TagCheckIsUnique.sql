USE `taskd_db_dev`;
DROP procedure IF EXISTS `TagCheckIsUnique`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagCheckIsUnique`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagCheckIsUnique`( 
    paramTagName VARCHAR(50),
    paramBoardId INT
)
BEGIN

	# Do not allow a board to have more than one tag with same name.
    SELECT TagId
    FROM Tag
    WHERE TagName = paramTagName
		AND BoardId = paramBoardId
        AND IsDeleted = 0
	LIMIT 1;
    
END$$

DELIMITER ;
;