ALTER TABLE TableName 
ADD CONSTRAINT fk_table_name_column_name 
FOREIGN KEY (SomeFkId) REFERENCES OtherTableName(SomePkId);