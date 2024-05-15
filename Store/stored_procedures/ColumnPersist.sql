DROP PROCEDURE ColumnPersist;

DELIMITER $$
CREATE PROCEDURE `ColumnPersist`( 
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

CALL ProjectB.ColumnPersist(1, 'Second test column', 'Second test column created by system user', 1);