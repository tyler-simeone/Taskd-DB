USE `LaborDrivenLLC`;
DROP procedure IF EXISTS `SyncJobGroupJobTrades`;

USE `LaborDrivenLLC`;
DROP procedure IF EXISTS `LaborDrivenLLC`.`SyncJobGroupJobTrades`;
;

DELIMITER $$
USE `LaborDrivenLLC`$$
CREATE DEFINER=`LaborDrivenLLC`@`%` PROCEDURE `SyncJobGroupJobTrades`(
	paramJobGroupId int,
    paramStreetAddress varchar(255),
    paramCity varchar(50),
    paramState varchar(2),
    paramZip varchar(9)
)
BEGIN
	
	UPDATE ContractorJobData CJD
    INNER JOIN ContractorJobGroup CJG ON CJD.JobGroupId = CJG.id
    SET CJD.JobStreetAddress = paramStreetAddress,
		CJD.JobCity = paramCity,
        CJD.JobState = paramState,
        CJD.JobZip = paramZip
	WHERE CJG.id = paramJobGroupId;
	
END$$

DELIMITER ;
;