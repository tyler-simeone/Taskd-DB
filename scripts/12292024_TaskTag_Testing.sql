
# UID: 69
#select * from taskd_db_dev.User order by CreateDatetime desc;

select * from taskd_db_dev.Task order by CreateDatetime desc;

select * from taskd_db_dev.Tag order by CreateDatetime desc;

select * from taskd_db_dev.TaskTag where IsDeleted = 0 order by CreateDatetime desc;

#CALL `taskd_db_dev`.`TaskTagDelete`(2, 69);

#delete from taskd_db_dev.TaskTag where TaskTagId in (4,5,6);

#CALL `taskd_db_dev`.`TagPersist`('Test Tag 1', 69);

#CALL `taskd_db_dev`.`TaskTagPersist`(3, 199, 69);
