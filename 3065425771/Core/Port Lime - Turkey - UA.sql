-- Port Lime - Turkey - UA
-- Author: Lime
-- DateCreated: 5/26/2023 8:52:57 AM
--------------------------------------------------------------
--	UA: The People's Homes
--		Completing an Encampment, Campus, or Theatre Square project grants +2 Production, Science, 
--		or Culture respectively to adjacent farms. Farms may be affected by each of these once, and
--		one additional time for every building the district has.
--
--------------------------------------------------------------
INSERT INTO Types
		(Type,													Kind)
VALUES	('TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER',			'KIND_TRAIT'),
		('MODTYPE_LIME_TURKEY_PLOTS_ATTACH_MOD',				'KIND_MODIFIER');

INSERT INTO CivilizationTraits
		(TraitType,												CivilizationType)
VALUES	('TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER',			'CIVILIZATION_LIME_TURKEY');

INSERT INTO Traits
		(TraitType,												Name,													Description)
VALUES	('TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER',			'LOC_TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER_NAME',	'LOC_TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER_DESC');

INSERT INTO TraitModifiers
		(TraitType,												ModifierId)
VALUES	('TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER',			'MOD_LIME_TURKEY_FARM_PRODUCTION_ATTACH');

INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,								EffectType)
VALUES	('MODTYPE_LIME_TURKEY_PLOTS_ATTACH_MOD',				'COLLECTION_PLAYER_PLOT_YIELDS',			'EFFECT_ATTACH_MODIFIER');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId)
VALUES	('MOD_LIME_TURKEY_FARM_PRODUCTION_ATTACH',				'MODTYPE_LIME_TURKEY_PLOTS_ATTACH_MOD',			'REQSET_LIME_TURKEY_PLOT_HAS_PROPERTY'),
		('MOD_LIME_TURKEY_FARM_PRODUCTION',						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'PLOT_HAS_FARM_REQUIREMENTS');

INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	('MOD_LIME_TURKEY_FARM_PRODUCTION_ATTACH',				'ModifierId',		'MOD_LIME_TURKEY_FARM_PRODUCTION'),
		('MOD_LIME_TURKEY_FARM_PRODUCTION',						'YieldType',		'YIELD_PRODUCTION'),
		('MOD_LIME_TURKEY_FARM_PRODUCTION',						'Amount',			1);

INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('REQSET_LIME_TURKEY_PLOT_HAS_PROPERTY',				'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('REQSET_LIME_TURKEY_PLOT_HAS_PROPERTY',				'REQ_LIME_TURKEY_PLOT_IS_CITY_CENTER'),
		('REQSET_LIME_TURKEY_PLOT_HAS_PROPERTY',				'REQ_LIME_TURKEY_PLOT_HAS_PROPERTY');

INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('REQ_LIME_TURKEY_PLOT_IS_CITY_CENTER',					'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES'),
		('REQ_LIME_TURKEY_PLOT_HAS_PROPERTY',					'REQUIREMENT_PLOT_PROPERTY_MATCHES');

INSERT INTO RequirementArguments
		(RequirementId,											Name,				Value)
VALUES	('REQ_LIME_TURKEY_PLOT_IS_CITY_CENTER',					'DistrictType',		'DISTRICT_CITY_CENTER'),
		('REQ_LIME_TURKEY_PLOT_HAS_PROPERTY',					'PropertyName',		'Lime_Turkey_ProjectLive'),
		('REQ_LIME_TURKEY_PLOT_HAS_PROPERTY',					'PropertyMinimum',	1);