USE `LaborDrivenLLC`;
DROP procedure IF EXISTS `JobGroupContractorGet`;

USE `LaborDrivenLLC`;
DROP procedure IF EXISTS `LaborDrivenLLC`.`JobGroupContractorGet`;
;

DELIMITER $$
USE `LaborDrivenLLC`$$
CREATE DEFINER=`LaborDrivenLLC`@`%` PROCEDURE `JobGroupContractorGet`(
	paramUserId int,
    paramJobGroupId int
)
BEGIN
	
	SELECT DISTINCT CJG.id,
					CJG.JobGroupName,
					CJD.JobStreetAddress,
					CJD.JobCity,
					CJD.JobState,
					CJD.JobZip,
					CJG.CreateDatetime,
					CJG.UpdateDatetime
	FROM ContractorJobGroup CJG
	INNER JOIN ContractorJobData CJD on CJG.id = CJD.JobGroupId
	WHERE CJG.ContractorId = paramUserId
		AND CJG.id = paramJobGroupId
		AND CJG.IsDeleted = 0
		AND CJD.IsDeleted = 0;
	
END$$

DELIMITER ;
;