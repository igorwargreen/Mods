-- Port Lime - K Ataturk - LUA
-- Author: Lime
-- DateCreated: 5/26/2023 8:54:06 AM
--------------------------------------------------------------
--	LUA: Hero of Anafartalar
--		Great Generals recruited during wars gain an extra charge. Gain a Governor title when a 
--		Great General is fully expended during peacetime. 

INSERT INTO Types
		(Type,										Kind)
VALUES	('TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO',	'KIND_TRAIT');

INSERT INTO LeaderTraits
		(LeaderType,								TraitType)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',			'TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO');

INSERT INTO Traits
		(TraitType,									Name,												Description)
VALUES	('TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO',	'LOC_TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO_NAME',	'LOC_TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO_DESC');

INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO',	'MOD_LIME_ATATURK_GRANT_EXTRA_GG_CHARGE'); -- other half will have to be done with lua

INSERT INTO Modifiers --HALICARNASSUS_ADJUST_ENGINEER_CHARGES
		(ModifierId,								ModifierType,											Permanent,	NewOnly,	/*OwnerRequirementSetId,*/					SubjectRequirementSetId)
VALUES	('MOD_LIME_ATATURK_GRANT_EXTRA_GG_CHARGE',	'MODIFIER_PLAYER_UNITS_ADJUST_GREAT_PERSON_CHARGES',	1,			1,			/*'REQSET_LIME_ATATURK_PLAYER_AT_WAR',*/	'REQSET_LIME_ATATURK_UNIT_IS_GENERAL');

INSERT INTO ModifierArguments
		(ModifierId,								Name,		Value)
VALUES	('MOD_LIME_ATATURK_GRANT_EXTRA_GG_CHARGE',	'Amount',	1);

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('REQSET_LIME_ATATURK_PLAYER_AT_WAR',		'REQUIREMENTSET_TEST_ALL'),
		('REQSET_LIME_ATATURK_UNIT_IS_GENERAL',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('REQSET_LIME_ATATURK_UNIT_IS_GENERAL',		'REQ_LIME_ATATURK_PLAYER_AT_WAR'),
		('REQSET_LIME_ATATURK_UNIT_IS_GENERAL',		'REQ_LIME_ATATURK_UNIT_IS_GENERAL');

INSERT INTO Requirements
		(RequirementId,								RequirementType,							Inverse)
VALUES	('REQ_LIME_ATATURK_PLAYER_AT_WAR',			'REQUIREMENT_REQUIREMENTSET_IS_MET',		1),
		('REQ_LIME_ATATURK_UNIT_IS_GENERAL',		'REQUIREMENT_GREAT_PERSON_TYPE_MATCHES',	0);

INSERT INTO RequirementArguments
		(RequirementId,								Name,					Value)
VALUES	('REQ_LIME_ATATURK_PLAYER_AT_WAR',			'RequirementSetId',		'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS'),
		('REQ_LIME_ATATURK_UNIT_IS_GENERAL',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL');
--invert PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS lol