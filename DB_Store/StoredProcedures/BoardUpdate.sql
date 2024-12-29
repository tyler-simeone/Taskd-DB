USE `taskd_db_dev`;
DROP procedure IF EXISTS `BoardUpdate`;

USE `taskd_db_dev`;
DROP procedure IF EXISTS `taskd_db_dev`.`BoardUpdate`;
;

DELIMITER $$
USE `taskd_db_dev`$$
CREATE DEFINER=`admin`@`%` PROCEDURE `BoardUpdate`( 
    paramBoardId int,
    paramBoardName varchar(150),
    paramBoardDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE taskd_db_dev.Board
    SET BoardName = paramBoardName,
		BoardDescription = paramBoardDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE BoardId = paramBoardId;
    
END$$

DELIMITER ;
;