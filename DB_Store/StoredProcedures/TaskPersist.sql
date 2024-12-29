USE `taskd_db_dev`;
DROP procedure IF EXISTS `TaskPersist`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TaskPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TaskPersist`( 
    paramColumnId int,
    paramTaskName varchar(150),
    paramTaskDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Task (ColumnId, TaskName, TaskDescription, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramColumnId, paramTaskName, paramTaskDescription, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$

DELIMITER ;
;