USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskTagCheckIsUnique`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskTagCheckIsUnique`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskTagCheckIsUnique`( 
	paramTagId INT,
    paramTaskId INT
)
BEGIN

	# Do not allow a task to have the same tag twice.
    SELECT TaskTagId
    FROM TaskTag
    WHERE TagId = paramTagId
		AND TaskId = paramTaskId
        AND IsDeleted = 0
	LIMIT 1;
    
END
$$

DELIMITER ;
;