USE `ProjectB`;
DROP procedure IF EXISTS `TaskPersist`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`TaskPersist`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskPersist`( 
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