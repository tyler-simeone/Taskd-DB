

alter table taskd_db_dev.Task 
add column DroppedDatetime datetime default current_timestamp()
after TaskDescription;

