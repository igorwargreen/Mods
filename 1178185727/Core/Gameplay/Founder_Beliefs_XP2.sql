--=============================================================================================================
-- RELIGION EXPANDED: FOUNDER BELIEFS (XP2)
--=============================================================================================================
-- Restore the June 2020 changes to Tithe and Church Property.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,							Kind)
VALUES	('BELIEF_P0K_CHURCH_PROPERTY',	'KIND_BELIEF');
---------------------------------------------------------------------------------------------------------------
-- Beliefs
---------------------------------------------------------------------------------------------------------------
INSERT INTO Beliefs		
		(BeliefType,					Name,									Description,									BeliefClassType) 
VALUES	('BELIEF_P0K_CHURCH_PROPERTY',	'LOC_BELIEF_P0K_CHURCH_PROPERTY_NAME',	'LOC_BELIEF_P0K_CHURCH_PROPERTY_DESCRIPTION',	'BELIEF_CLASS_FOUNDER');
---------------------------------------------------------------------------------------------------------------
-- BeliefModifiers
---------------------------------------------------------------------------------------------------------------
UPDATE BeliefModifiers SET ModifierId = 'TITHE_GOLD_FOLLOWER' WHERE BeliefType = 'BELIEF_TITHE';

INSERT INTO BeliefModifiers 
		(BeliefType,					ModifierId) 
VALUES	('BELIEF_P0K_CHURCH_PROPERTY',	'TITHE_GOLD_CITY');
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments SET Value = 2 WHERE ModifierId = 'TITHE_GOLD_FOLLOWER_MODIFIER' AND Name = 'Amount'; -- updating Gold value to be in line with June 2020 patch updates
--=============================================================================================================
-- Add new Beliefs that require a modifier introduced in Gathering Storm.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,								Kind)
VALUES	('BELIEF_P0K_SCHOLARLY_TRADITION',	'KIND_BELIEF'),
		('BELIEF_P0K_RELIGIOUS_SYNCRETISM',	'KIND_BELIEF'),
		('BELIEF_P0K_CHARITABLE_MISSIONS',	'KIND_BELIEF');
---------------------------------------------------------------------------------------------------------------
-- Beliefs
---------------------------------------------------------------------------------------------------------------
INSERT INTO Beliefs		
		(BeliefType,						Name,										Description,										BeliefClassType) 
VALUES	('BELIEF_P0K_SCHOLARLY_TRADITION',	'LOC_BELIEF_P0K_SCHOLARLY_TRADITION_NAME',	'LOC_BELIEF_P0K_SCHOLARLY_TRADITION_DESCRIPTION',	'BELIEF_CLASS_FOUNDER'),
		('BELIEF_P0K_RELIGIOUS_SYNCRETISM',	'LOC_BELIEF_P0K_RELIGIOUS_SYNCRETISM_NAME',	'LOC_BELIEF_P0K_RELIGIOUS_SYNCRETISM_DESCRIPTION',	'BELIEF_CLASS_FOUNDER'),
		('BELIEF_P0K_CHARITABLE_MISSIONS',	'LOC_BELIEF_P0K_CHARITABLE_MISSIONS_NAME',	'LOC_BELIEF_P0K_CHARITABLE_MISSIONS_DESCRIPTION',	'BELIEF_CLASS_FOUNDER');
---------------------------------------------------------------------------------------------------------------
-- BeliefModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BeliefModifiers 
		(BeliefType,						ModifierId) 
VALUES	('BELIEF_P0K_SCHOLARLY_TRADITION',	'P0K_SCHOLARLY_TRADITION_INITIATION_SCIENCE_POPULATION'),
		('BELIEF_P0K_RELIGIOUS_SYNCRETISM',	'P0K_RELIGIOUS_SYNCRETISM_INITIATION_CULTURE_POPULATION'),
		('BELIEF_P0K_CHARITABLE_MISSIONS',	'P0K_CHARITABLE_MISSIONS_INITIATION_GOLD_POPULATION');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,														ModifierType,												SubjectRequirementSetId) 
VALUES	('P0K_SCHOLARLY_TRADITION_INITIATION_SCIENCE_POPULATION',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_FOUNDED_RELIGION_REQUIREMENTS'),
		('P0K_SCHOLARLY_TRADITION_INITIATION_SCIENCE_POPULATION_MODIFIER',	'MODIFIER_PLAYER_UNITS_ADJUST_INITIATION_YIELD_POPULATION',	NULL),
		('P0K_RELIGIOUS_SYNCRETISM_INITIATION_CULTURE_POPULATION',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_FOUNDED_RELIGION_REQUIREMENTS'),
		('P0K_RELIGIOUS_SYNCRETISM_INITIATION_CULTURE_POPULATION_MODIFIER',	'MODIFIER_PLAYER_UNITS_ADJUST_INITIATION_YIELD_POPULATION',	NULL),
		('P0K_CHARITABLE_MISSIONS_INITIATION_GOLD_POPULATION',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_FOUNDED_RELIGION_REQUIREMENTS'),
		('P0K_CHARITABLE_MISSIONS_INITIATION_GOLD_POPULATION_MODIFIER',		'MODIFIER_PLAYER_UNITS_ADJUST_INITIATION_YIELD_POPULATION',	NULL);
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,														Name,			Value)
VALUES	('P0K_SCHOLARLY_TRADITION_INITIATION_SCIENCE_POPULATION',			'ModifierId',	'P0K_SCHOLARLY_TRADITION_INITIATION_SCIENCE_POPULATION_MODIFIER'),
		('P0K_SCHOLARLY_TRADITION_INITIATION_SCIENCE_POPULATION_MODIFIER',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_SCHOLARLY_TRADITION_INITIATION_SCIENCE_POPULATION_MODIFIER',	'Amount',		20),
		('P0K_RELIGIOUS_SYNCRETISM_INITIATION_CULTURE_POPULATION',			'ModifierId',	'P0K_RELIGIOUS_SYNCRETISM_INITIATION_CULTURE_POPULATION_MODIFIER'),
		('P0K_RELIGIOUS_SYNCRETISM_INITIATION_CULTURE_POPULATION_MODIFIER',	'YieldType',	'YIELD_CULTURE'),
		('P0K_RELIGIOUS_SYNCRETISM_INITIATION_CULTURE_POPULATION_MODIFIER',	'Amount',		20),
		('P0K_CHARITABLE_MISSIONS_INITIATION_GOLD_POPULATION',				'ModifierId',	'P0K_CHARITABLE_MISSIONS_INITIATION_GOLD_POPULATION_MODIFIER'),
		('P0K_CHARITABLE_MISSIONS_INITIATION_GOLD_POPULATION_MODIFIER',		'YieldType',	'YIELD_GOLD'),
		('P0K_CHARITABLE_MISSIONS_INITIATION_GOLD_POPULATION_MODIFIER',		'Amount',		50);


