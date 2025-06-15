USE `taskd_db_dev`;
DROP procedure IF EXISTS `SprocName`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`SprocName`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `SprocName`( 
	id INT
)
BEGIN


    
END$$

DELIMITER ;
;