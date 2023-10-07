--=============================================================================================================
-- RELIGION EXPANDED: FOLLOWER BELIEFS (XP2)
--=============================================================================================================
-- Add a new Belief that restores the original Work Ethic ability.
-- Buff the updated Religious Community Belief (name changed to Indulgences in Updated_Belief_Text_XP2.sql)
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,							Kind)
VALUES	('BELIEF_P0K_FRUITS_OF_LABOR',	'KIND_BELIEF');
---------------------------------------------------------------------------------------------------------------
-- Beliefs
---------------------------------------------------------------------------------------------------------------
INSERT INTO Beliefs		
		(BeliefType,					Name,									Description,									BeliefClassType) 
VALUES	('BELIEF_P0K_FRUITS_OF_LABOR',	'LOC_BELIEF_P0K_FRUITS_OF_LABOR_NAME',	'LOC_BELIEF_P0K_FRUITS_OF_LABOR_DESCRIPTION',	'BELIEF_CLASS_FOLLOWER');
---------------------------------------------------------------------------------------------------------------
-- BeliefModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM BeliefModifiers WHERE BeliefType = 'BELIEF_RELIGIOUS_COMMUNITY';

INSERT INTO BeliefModifiers 
		(BeliefType,					ModifierId) 
VALUES	('BELIEF_P0K_FRUITS_OF_LABOR',	'WORK_ETHIC_FOLLOWER_PRODUCTION'), -- restoring old version of Work Ethic
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_HOLY_SITE_TRADING_DOMESTIC'),
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_SHRINE_TRADING_DOMESTIC'),
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_TEMPLE_TRADING_DOMESTIC'),
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_WORSHIP_TRADING_DOMESTIC'),
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_HOLY_SITE_TRADING_INTERNATIONAL'),
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_SHRINE_TRADING_INTERNATIONAL'),
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_TEMPLE_TRADING_INTERNATIONAL'),
		('BELIEF_RELIGIOUS_COMMUNITY',	'P0K_INDULGENCES_WORSHIP_TRADING_INTERNATIONAL');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
SELECT	'P0K_RELIGION_REQUIRES_CITY_HAS_' ||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM Buildings WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
SELECT	'P0K_RELIGION_REQUIRES_CITY_HAS_' ||BuildingType,	'BuildingType',	BuildingType
FROM Buildings WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_RELIGION_CITY_HAS_WORSHIP_BUILDING',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
SELECT	'P0K_RELIGION_CITY_HAS_WORSHIP_BUILDING',	'P0K_RELIGION_REQUIRES_CITY_HAS_' ||BuildingType
FROM Buildings WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,													ModifierType,														SubjectRequirementSetId) 
VALUES	('P0K_INDULGENCES_HOLY_SITE_TRADING_DOMESTIC',					'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_DOMESTIC_MODIFIER',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'CITY_HAS_HOLY_SITE'),
		('P0K_INDULGENCES_SHRINE_TRADING_DOMESTIC',						'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_SHRINE_TRADING_DOMESTIC_MODIFIER',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'BUILDING_IS_SHRINE'),
		('P0K_INDULGENCES_TEMPLE_TRADING_DOMESTIC',						'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_TEMPLE_TRADING_DOMESTIC_MODIFIER',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'BUILDING_IS_TEMPLE_XP2'),
		('P0K_INDULGENCES_WORSHIP_TRADING_DOMESTIC',					'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_WORSHIP_TRADING_DOMESTIC_MODIFIER',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'P0K_RELIGION_CITY_HAS_WORSHIP_BUILDING'),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_INTERNATIONAL',				'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_INTERNATIONAL_MODIFIER',	'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	'CITY_HAS_HOLY_SITE'),
		('P0K_INDULGENCES_SHRINE_TRADING_INTERNATIONAL',				'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_SHRINE_TRADING_INTERNATIONAL_MODIFIER',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	'BUILDING_IS_SHRINE'),
		('P0K_INDULGENCES_TEMPLE_TRADING_INTERNATIONAL',				'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_TEMPLE_TRADING_INTERNATIONAL_MODIFIER',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	'BUILDING_IS_TEMPLE_XP2'),
		('P0K_INDULGENCES_WORSHIP_TRADING_INTERNATIONAL',				'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'CITY_FOLLOWS_RELIGION_REQUIREMENTS'),
		('P0K_INDULGENCES_WORSHIP_TRADING_INTERNATIONAL_MODIFIER',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	'P0K_RELIGION_CITY_HAS_WORSHIP_BUILDING');
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,													Name,			Value)
VALUES	('P0K_INDULGENCES_HOLY_SITE_TRADING_DOMESTIC',					'ModifierId',	'P0K_INDULGENCES_HOLY_SITE_TRADING_DOMESTIC_MODIFIER'),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_DOMESTIC_MODIFIER',			'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_DOMESTIC_MODIFIER',			'Amount',		1),
		('P0K_INDULGENCES_SHRINE_TRADING_DOMESTIC',						'ModifierId',	'P0K_INDULGENCES_SHRINE_TRADING_DOMESTIC_MODIFIER'),
		('P0K_INDULGENCES_SHRINE_TRADING_DOMESTIC_MODIFIER',			'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_SHRINE_TRADING_DOMESTIC_MODIFIER',			'Amount',		1),
		('P0K_INDULGENCES_TEMPLE_TRADING_DOMESTIC',						'ModifierId',	'P0K_INDULGENCES_TEMPLE_TRADING_DOMESTIC_MODIFIER'),
		('P0K_INDULGENCES_TEMPLE_TRADING_DOMESTIC_MODIFIER',			'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_TEMPLE_TRADING_DOMESTIC_MODIFIER',			'Amount',		1),
		('P0K_INDULGENCES_WORSHIP_TRADING_DOMESTIC',					'ModifierId',	'P0K_INDULGENCES_WORSHIP_TRADING_DOMESTIC_MODIFIER'),
		('P0K_INDULGENCES_WORSHIP_TRADING_DOMESTIC_MODIFIER',			'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_WORSHIP_TRADING_DOMESTIC_MODIFIER',			'Amount',		1),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_INTERNATIONAL',				'ModifierId',	'P0K_INDULGENCES_HOLY_SITE_TRADING_INTERNATIONAL_MODIFIER'),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_INTERNATIONAL_MODIFIER',	'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_HOLY_SITE_TRADING_INTERNATIONAL_MODIFIER',	'Amount',		1),
		('P0K_INDULGENCES_SHRINE_TRADING_INTERNATIONAL',				'ModifierId',	'P0K_INDULGENCES_SHRINE_TRADING_INTERNATIONAL_MODIFIER'),
		('P0K_INDULGENCES_SHRINE_TRADING_INTERNATIONAL_MODIFIER',		'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_SHRINE_TRADING_INTERNATIONAL_MODIFIER',		'Amount',		1),
		('P0K_INDULGENCES_TEMPLE_TRADING_INTERNATIONAL',				'ModifierId',	'P0K_INDULGENCES_TEMPLE_TRADING_INTERNATIONAL_MODIFIER'),
		('P0K_INDULGENCES_TEMPLE_TRADING_INTERNATIONAL_MODIFIER',		'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_TEMPLE_TRADING_INTERNATIONAL_MODIFIER',		'Amount',		1),
		('P0K_INDULGENCES_WORSHIP_TRADING_INTERNATIONAL',				'ModifierId',	'P0K_INDULGENCES_WORSHIP_TRADING_INTERNATIONAL_MODIFIER'),
		('P0K_INDULGENCES_WORSHIP_TRADING_INTERNATIONAL_MODIFIER',		'YieldType',	'YIELD_GOLD'),
		('P0K_INDULGENCES_WORSHIP_TRADING_INTERNATIONAL_MODIFIER',		'Amount',		1);


