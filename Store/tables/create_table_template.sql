CREATE TABLE `TableName` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
