USE `taskd_db_dev`;
CREATE TABLE `Task` (
  `TaskId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `ColumnId` INT NOT NULL,
  `TaskName` VARCHAR(150) NOT NULL,
  `TaskDescription` VARCHAR(500) DEFAULT NULL,
  `CreateDatetime` TIMESTAMP NULL DEFAULT NULL,
  `CreateUserId` INT DEFAULT NULL,
  `UpdateDatetime` TIMESTAMP NULL DEFAULT NULL,
  `UpdateUserId` INT DEFAULT NULL,
  `IsDeleted` INT NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


  ALTER TABLE Task
  ADD CONSTRAINT fk_Task_Column_ColumnId
    FOREIGN KEY (ColumnId)
    REFERENCES taskd_db_dev.Column(ColumnId)