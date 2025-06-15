USE `taskd_db_dev`;
DROP procedure IF EXISTS `TagPersist`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagPersist`( 
    paramTagName VARCHAR(50),
    paramBoardId INT,
    paramCreateUserId INT
)
BEGIN

	INSERT INTO Tag 
    (
        BoardId,
        TagName, 
        CreateDatetime, 
        CreateUserId, 
        UpdateDatetime, 
        UpdateUserId
	)
    VALUES 
    (
		paramBoardId,
        paramTagName, 
        CURRENT_TIMESTAMP, 
        paramCreateUserId, 
        NULL, 
        NULL
	);
    
    SELECT LAST_INSERT_ID() AS TagId;
    
END$$

DELIMITER ;
;