USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagTaskPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagTaskPersist`( 
    paramTagId INT,
    paramTaskId INT,
    paramCreateUserId INT
)
BEGIN

	INSERT INTO TaskTag
    (
        TagId,
        TaskId,
        CreateDatetime,
        CreateUserId,
        UpdateDatetime,
        UpdateUserId,
        IsDeleted
    )
    VALUES 
    (
        paramTagId, 
        paramTaskId, 
        CURRENT_TIMESTAMP, 
        paramCreateUserId,
        NULL,
        NULL,
        0
	);
    
    SELECT LAST_INSERT_ID() AS TaskTagId;
    
END$$

DELIMITER ;
;