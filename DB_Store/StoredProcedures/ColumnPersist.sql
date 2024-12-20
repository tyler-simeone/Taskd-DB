USE `ProjectB`;
DROP procedure IF EXISTS `ColumnPersist`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`ColumnPersist`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnPersist`( 
    paramBoardId int,
    paramColumnName varchar(150),
    paramColumnDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO ProjectB.Column (BoardId, ColumnName, ColumnDescription, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramBoardId, paramColumnName, paramColumnDescription, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$

DELIMITER ;
;