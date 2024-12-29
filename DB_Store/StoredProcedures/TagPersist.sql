USE `taskd_db_dev`;
DROP procedure IF EXISTS `TagPersist`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`TagPersist`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `TagPersist`( 
    paramTagName VARCHAR(50),
    paramCreateUserId INT
)
BEGIN

	INSERT INTO Tag 
    (
        TagName, 
        CreateDatetime, 
        CreateUserId, 
        UpdateDatetime, 
        UpdateUserId
	)
    VALUES 
    (
        paramTagName, 
        CURRENT_TIMESTAMP, 
        paramCreateUserId, 
        NULL, 
        NULL
	);
    
END$$

DELIMITER ;
;

