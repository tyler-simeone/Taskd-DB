USE `ProjectB`;
DROP procedure IF EXISTS `BoardUpdate`;

USE `ProjectB`;
DROP procedure IF EXISTS `ProjectB`.`BoardUpdate`;
;

DELIMITER $$
USE `ProjectB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardUpdate`( 
    paramBoardId int,
    paramBoardName varchar(150),
    paramBoardDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE ProjectB.Board
    SET BoardName = paramBoardName,
		BoardDescription = paramBoardDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE BoardId = paramBoardId;
    
END$$

DELIMITER ;
;