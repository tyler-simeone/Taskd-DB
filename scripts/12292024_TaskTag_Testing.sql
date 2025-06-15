
# UID: 69
#select * from taskd_db_dev.User order by CreateDatetime desc;

select * from taskd_db_dev.Board where UserId = 69 order by CreateDatetime desc;

select * from taskd_db_dev.Task where IsDeleted = 0 order by CreateDatetime desc;

select * from taskd_db_dev.Tag where IsDeleted = 0 order by CreateDatetime desc;

select distinct t.TagName, tsk.TaskName, tt.*
from taskd_db_dev.TaskTag tt
inner join taskd_db_dev.Tag t on tt.TagId = t.TagId
inner join taskd_db_dev.Task tsk on tt.TaskId = tsk.TaskId
where tt.IsDeleted = 0
	#and t.IsDeleted = 1
	#and CreateDatetime > date_add(current_timestamp, interval -1 hour)
order by tt.CreateDatetime desc;
#order by tt.UpdateDatetime desc;

#update taskd_db_dev.Tag
#set IsDeleted = 0 
#where TagId in (43, 42, 40)

#update taskd_db_dev.TaskTag
#set IsDeleted = 1 
#where IsDeleted = 0

#call taskd_db_dev.TagGetListByTaskIdAndBoardId(119, 51);

#CALL `taskd_db_dev`.`TaskTagDelete`(2, 69);

#delete from taskd_db_dev.TaskTag where TaskTagId in (4,5,6);

#CALL `taskd_db_dev`.`TagPersist`('Test Tag 1', 69);

#CALL `taskd_db_dev`.`TaskTagPersist`(3, 199, 69);
