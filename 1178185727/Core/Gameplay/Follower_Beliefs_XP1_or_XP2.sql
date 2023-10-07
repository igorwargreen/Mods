--=============================================================================================================
-- RELIGION EXPANDED: FOLLOWER BELIEFS (XP1 OR XP2)
--=============================================================================================================
-- Beliefs
---------------------------------------------------------------------------------------------------------------
UPDATE Beliefs SET Description = 'LOC_BELIEF_P0K_PROSPERITY_DOCTRINE_DESCRIPTION_XP' 
WHERE BeliefType = 'BELIEF_P0K_PROSPERITY_DOCTRINE';
---------------------------------------------------------------------------------------------------------------
-- BeliefModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BeliefModifiers 
		(BeliefType,						ModifierId) 
VALUES	('BELIEF_P0K_PROSPERITY_DOCTRINE',	'P0K_PROSPERITY_DOCTRINE_AMENITY_BUILDINGS_XP'); -- adding the Water Park to this Belief (defined in Follower_Beliefs.sql)
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,												ModifierType,									SubjectRequirementSetId) 
VALUES	('P0K_PROSPERITY_DOCTRINE_AMENITY_BUILDINGS_XP',			'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',			'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_PROSPERITY_DOCTRINE_AMENITY_BUILDINGS_XP_MODIFIER',	'MODIFIER_CITY_ENABLE_BUILDING_FAITH_PURCHASE',	NULL);
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,												Name,			Value)
VALUES	('P0K_PROSPERITY_DOCTRINE_AMENITY_BUILDINGS_XP',			'ModifierId',	'P0K_PROSPERITY_DOCTRINE_AMENITY_BUILDINGS_XP_MODIFIER'),
		('P0K_PROSPERITY_DOCTRINE_AMENITY_BUILDINGS_XP_MODIFIER',	'DistrictType',	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX');










