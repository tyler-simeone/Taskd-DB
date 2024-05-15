USE `ProjectB`;
CREATE TABLE `UserRole` (
  `UserRoleId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `UserId` INT NOT NULL,
  `RoleId` INT NOT NULL,
  `CreateDatetime` TIMESTAMP NOT NULL,
  `CreateUserId` INT NOT NULL,
  `UpdateDatetime` TIMESTAMP NULL DEFAULT NULL,
  `UpdateUserId` INT DEFAULT NULL,
  `IsDeleted` INT NOT NULL DEFAULT 0,
  CONSTRAINT fk_UserRole_User_UserId
    FOREIGN KEY (UserId)
    REFERENCES User(UserId),
  CONSTRAINT fk_UserRole_Role_RoleId
    FOREIGN KEY (RoleId)
    REFERENCES Role(RoleId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
