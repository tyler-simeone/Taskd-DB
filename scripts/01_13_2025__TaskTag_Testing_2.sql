

CALL `taskd_db_dev`.`TagGetListByTaskIdAndBoardId`(206, 51);

## Tags already assigned to task
select t.TagName, tt.* 
from taskd_db_dev.TaskTag tt
inner join taskd_db_dev.Tag t on tt.TagId = t.TagId
where tt.IsDeleted = 0
	and tt.TaskId = 206
order by TaskId;

## Available tags to be assigned to a task
SELECT t.TagId,
	   t.BoardId,
	   t.TagName,
       '' as TaskTagData,
	   tt.*
FROM taskd_db_dev.Tag t
LEFT JOIN taskd_db_dev.TaskTag tt ON tt.TagId = t.TagId AND tt.TaskId = 206 AND tt.IsDeleted = 0
WHERE t.BoardId = 51
	AND tt.TaskTagId IS NULL # Only tags that aren't mapped to this task ID
	AND t.IsDeleted = 0
ORDER BY t.TagName;
    
    
