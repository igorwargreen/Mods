--=============================================================================================================
-- RELIGION EXPANDED: MAX RELIGIONS (13)
--=============================================================================================================
-- Map_GreatPersonClasses
---------------------------------------------------------------------------------------------------------------
UPDATE Map_GreatPersonClasses SET MaxWorldInstances = 12 WHERE NOT EXISTS
(SELECT 1 FROM Religions WHERE ReligionType = 'RELIGION_PESEDJET');

UPDATE Map_GreatPersonClasses SET MaxWorldInstances = 13 WHERE EXISTS 
(SELECT 1 FROM Religions WHERE ReligionType = 'RELIGION_PESEDJET');