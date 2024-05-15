DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnDelete`( 
    paramColumnId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE ProjectB.Column
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE ColumnId = paramColumnId;
    
END$$
DELIMITER ;
