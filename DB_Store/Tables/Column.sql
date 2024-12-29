USE `taskd_db_dev`;
CREATE TABLE `Column` (
  `ColumnId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `BoardId` INT NOT NULL,
  `ColumnName` VARCHAR(150) NOT NULL,
  `ColumnDescription` VARCHAR(500) DEFAULT NULL,
  `CreateDatetime` TIMESTAMP NULL DEFAULT NULL,
  `CreateUserId` INT DEFAULT NULL,
  `UpdateDatetime` TIMESTAMP NULL DEFAULT NULL,
  `UpdateUserId` INT DEFAULT NULL,
  `IsDeleted` INT NOT NULL DEFAULT '0',
  CONSTRAINT fk_Column_Board_BoardId
    FOREIGN KEY (BoardId)
    REFERENCES Board(BoardId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;