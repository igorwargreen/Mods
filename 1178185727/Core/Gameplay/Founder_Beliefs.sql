--=============================================================================================================
-- RELIGION EXPANDED: FOUNDER BELIEFS
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,								Kind)
VALUES	('BELIEF_P0K_ECUMENICAL_COUNCIL',	'KIND_BELIEF'),
		('BELIEF_P0K_VERNACULAR_LITURGY',	'KIND_BELIEF'),
		('BELIEF_P0K_EVANGELISM',			'KIND_BELIEF');
---------------------------------------------------------------------------------------------------------------
-- Beliefs
---------------------------------------------------------------------------------------------------------------
INSERT INTO Beliefs		
		(BeliefType,						Name,										Description,										BeliefClassType) 
VALUES	('BELIEF_P0K_ECUMENICAL_COUNCIL',	'LOC_BELIEF_P0K_ECUMENICAL_COUNCIL_NAME',	'LOC_BELIEF_P0K_ECUMENICAL_COUNCIL_DESCRIPTION',	'BELIEF_CLASS_FOUNDER'),
		('BELIEF_P0K_VERNACULAR_LITURGY',	'LOC_BELIEF_P0K_VERNACULAR_LITURGY_NAME',	'LOC_BELIEF_P0K_VERNACULAR_LITURGY_DESCRIPTION',	'BELIEF_CLASS_FOUNDER'),
		('BELIEF_P0K_EVANGELISM',			'LOC_BELIEF_P0K_EVANGELISM_NAME',			'LOC_BELIEF_P0K_EVANGELISM_DESCRIPTION',			'BELIEF_CLASS_FOUNDER');
---------------------------------------------------------------------------------------------------------------
-- BeliefModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BeliefModifiers 
		(BeliefType,						ModifierId) 
VALUES	('BELIEF_P0K_ECUMENICAL_COUNCIL',	'P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY'),
		('BELIEF_P0K_VERNACULAR_LITURGY',	'P0K_VERNACULAR_LITURGY_CULTURE_CITY'),
		('BELIEF_P0K_EVANGELISM',			'P0K_EVANGELISM_FAITH_FOLLOWER');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,										ModifierType,												SubjectRequirementSetId) 
VALUES	('P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_FOUNDED_RELIGION_REQUIREMENTS'),
		('P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY_MODIFIER',	'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BELIEF_YIELD',		NULL),
		('P0K_VERNACULAR_LITURGY_CULTURE_CITY',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_FOUNDED_RELIGION_REQUIREMENTS'),
		('P0K_VERNACULAR_LITURGY_CULTURE_CITY_MODIFIER',	'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BELIEF_YIELD',		NULL),
		('P0K_EVANGELISM_FAITH_FOLLOWER',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_FOUNDED_RELIGION_REQUIREMENTS'),
		('P0K_EVANGELISM_FAITH_FOLLOWER_MODIFIER',			'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BELIEF_YIELD',		NULL);
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,										Name,				Value)
VALUES	('P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY',				'ModifierId',		'P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY_MODIFIER'),
		('P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY_MODIFIER',	'BeliefYieldType',	'BELIEF_YIELD_PER_CITY'),
		('P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY_MODIFIER',	'YieldType',		'YIELD_SCIENCE'),
		('P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY_MODIFIER',	'Amount',			1),
		('P0K_ECUMENICAL_COUNCIL_SCIENCE_CITY_MODIFIER',	'PerXItems',		1),
		('P0K_VERNACULAR_LITURGY_CULTURE_CITY',				'ModifierId',		'P0K_VERNACULAR_LITURGY_CULTURE_CITY_MODIFIER'),
		('P0K_VERNACULAR_LITURGY_CULTURE_CITY_MODIFIER',	'BeliefYieldType',	'BELIEF_YIELD_PER_CITY'),
		('P0K_VERNACULAR_LITURGY_CULTURE_CITY_MODIFIER',	'YieldType',		'YIELD_CULTURE'),
		('P0K_VERNACULAR_LITURGY_CULTURE_CITY_MODIFIER',	'Amount',			1),
		('P0K_VERNACULAR_LITURGY_CULTURE_CITY_MODIFIER',	'PerXItems',		1),
		('P0K_EVANGELISM_FAITH_FOLLOWER',					'ModifierId',		'P0K_EVANGELISM_FAITH_FOLLOWER_MODIFIER'),
		('P0K_EVANGELISM_FAITH_FOLLOWER_MODIFIER',			'BeliefYieldType',	'BELIEF_YIELD_PER_FOLLOWER'),
		('P0K_EVANGELISM_FAITH_FOLLOWER_MODIFIER',			'YieldType',		'YIELD_FAITH'),
		('P0K_EVANGELISM_FAITH_FOLLOWER_MODIFIER',			'Amount',			1),
		('P0K_EVANGELISM_FAITH_FOLLOWER_MODIFIER',			'PerXItems',		4);
		