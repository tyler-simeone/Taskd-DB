USE `taskd_db_dev`;
DROP PROCEDURE IF EXISTS `TaskTagPersist`;

USE `taskd_db_dev`;
DROP PROCEDURE IF EXISTS `taskd_db_dev`.`TaskTagPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskTagPersist`( 
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
    
END$$

DELIMITER ;
;