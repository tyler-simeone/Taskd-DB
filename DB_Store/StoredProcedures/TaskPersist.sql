USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskPersist`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskPersist`( 
    paramColumnId INT,
    paramTaskName VARCHAR(150),
    paramTaskDescription VARCHAR(500),
    paramCreateUserId INT
)
BEGIN

	INSERT INTO Task (
		ColumnId, 
        TaskName, 
        TaskDescription, 
        CreateDatetime, 
        CreateUserId, 
        UpdateDatetime, 
        UpdateUserId
	)
    VALUES (
		paramColumnId, 
        paramTaskName, 
        paramTaskDescription, 
        CURRENT_TIMESTAMP, 
        paramCreateUserId, 
        CURRENT_TIMESTAMP, 
        paramCreateUserId
	);
    
    SELECT LAST_INSERT_ID() AS TaskId;
    
END$$

DELIMITER ;
;