CREATE TABLE `taskd_db_dev`.`TaskTag` (
  `TaskTagId` INT NOT NULL AUTO_INCREMENT,
  `TagId` INT NOT NULL,
  `TaskId` INT NOT NULL,
  `CreateDatetime` TIMESTAMP DEFAULT NULL,
  `CreateUserId` INT DEFAULT NULL,
  `UpdateDatetime` TIMESTAMP DEFAULT NULL,
  `UpdateUserId` INT DEFAULT NULL,
  `IsDeleted` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`TaskTagId`),
  KEY `fk_task_tag_task_id` (`TaskId`),
  KEY `fk_task_tag_tag_id` (`TagId`),
  CONSTRAINT `fk_task_tag_task_id` FOREIGN KEY (`TaskId`) REFERENCES `Task` (`TaskId`),
  CONSTRAINT `fk_task_tag_tag_id` FOREIGN KEY (`TagId`) REFERENCES `Tag` (`TagId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
