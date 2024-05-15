DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnUpdate`( 
    paramColumnId int,
    paramColumnName varchar(150),
    paramColumnDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE ProjectB.Column
    SET ColumnName = paramColumnName,
		ColumnDescription = paramColumnDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE ColumnId = paramColumnId;
    
END$$
DELIMITER ;
