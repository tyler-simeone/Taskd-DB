USE `taskd_db_dev`;
CREATE TABLE `RoleFeature` (
  `RoleFeatureId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `RoleId` INT NOT NULL,
  `FeatureId` INT NOT NULL,
  `CreateDatetime` TIMESTAMP NULL DEFAULT NULL,
  `CreateUserId` INT DEFAULT NULL,
  `UpdateDatetime` TIMESTAMP NULL DEFAULT NULL,
  `UpdateUserId` INT DEFAULT NULL,
  `IsDeleted` INT NOT NULL DEFAULT '0', 
  CONSTRAINT fk_RoleFeature_Role_RoleId
    FOREIGN KEY (RoleId)
    REFERENCES Role(RoleId),
  CONSTRAINT fk_RoleFeature_Feature_FeatureId
    FOREIGN KEY (FeatureId)
    REFERENCES Feature(FeatureId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;