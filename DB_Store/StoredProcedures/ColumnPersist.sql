USE `taskd_db_dev`;
DROP procedure IF EXISTS `ColumnPersist`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`ColumnPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `ColumnPersist`( 
    paramBoardId int,
    paramColumnName varchar(150),
    paramColumnDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO taskd_db_dev.Column (BoardId, ColumnName, ColumnDescription, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramBoardId, paramColumnName, paramColumnDescription, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$

DELIMITER ;
;