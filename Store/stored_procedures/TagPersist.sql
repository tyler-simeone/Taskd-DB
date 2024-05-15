DROP PROCEDURE TagPersist;

DELIMITER $$
CREATE PROCEDURE `TagPersist`( 
    paramTaskId int,
    paramTagName varchar(50),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Tag (TaskId, TagName, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramTaskId, paramTagName, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END$$
DELIMITER ;

CALL ProjectB.TagPersist(1, 'test tag for task 1', 1);