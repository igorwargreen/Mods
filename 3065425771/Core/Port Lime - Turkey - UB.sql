-- Port Lime - Turkey - UB
-- Author: Lime
-- DateCreated: 5/26/2023 8:53:49 AM
--------------------------------------------------------------
--	UB: Esnaf Lokanta
--		Neighborhood Building. Unlocks at Economics. 
--		This neighborhood gains a Major Food Adjacency bonus from Farm Improvements, and if powered a Standard Production Adjacency bonus.
--		Grants +1 Amenity to adjacent Districts. 
--		+50% production towards Projects in this city.
--
--------------------------------------------------------------
INSERT INTO Types
		(Type,														Kind)
VALUES	('TRAIT_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA',			'KIND_TRAIT'),
		('BUILDING_LIME_TURKEY_LOKANTA',							'KIND_BUILDING');

INSERT INTO CivilizationTraits
		(TraitType,												CivilizationType)
VALUES	('TRAIT_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA',		'CIVILIZATION_LIME_TURKEY');

INSERT INTO Traits
		(TraitType,												Name,													Description)
VALUES	('TRAIT_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA',		'LOC_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA_NAME',	NULL);

INSERT INTO Buildings
		(BuildingType,							Name,													Description,												PrereqTech,			Cost,	MaxPlayerInstances,	MaxWorldInstances,	Capital,	PrereqDistrict,	RequiresPlacement,	RequiresRiver,	Housing,	Entertainment,	EnabledByReligion,	AllowsHolyCity,	PurchaseYield,	MustPurchase,	Maintenance,	IsWonder,	TraitType,											OuterDefenseStrength,	CitizenSlots,	MustBeLake,	MustNotBeLake,	RegionalRange,	AdjacentToMountain,	ObsoleteEra,	RequiresReligion,	GrantFortification,	DefenseModifier,	InternalOnly,	RequiresAdjacentRiver,	MustBeAdjacentLand,	AdvisorType,	AdjacentCapital,	UnlocksGovernmentPolicy)
SELECT	'BUILDING_LIME_TURKEY_LOKANTA',			'LOC_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA_NAME',	'LOC_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA_DESC',		'TECH_ECONOMICS',	Cost,	MaxPlayerInstances,	MaxWorldInstances,	Capital,	PrereqDistrict,	RequiresPlacement,	RequiresRiver,	0,			0,				EnabledByReligion,	AllowsHolyCity,	PurchaseYield,	MustPurchase,	Maintenance,	IsWonder,	'TRAIT_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA',	OuterDefenseStrength,	CitizenSlots,	MustBeLake,	MustNotBeLake,	RegionalRange,	AdjacentToMountain,	ObsoleteEra,	RequiresReligion,	GrantFortification,	DefenseModifier,	InternalOnly,	RequiresAdjacentRiver,	MustBeAdjacentLand,	AdvisorType,	AdjacentCapital,	UnlocksGovernmentPolicy
FROM Buildings
	WHERE BuildingType = 'BUILDING_FOOD_MARKET';

INSERT INTO Buildings_XP2
		(BuildingType,							RequiredPower,	ResourceTypeConvertedToPower,	PreventsFloods,	PreventsDrought,	BlocksCoastalFlooding,	CostMultiplierPerTile,	CostMultiplierPerSeaLevel,	Bridge,	CanalWonder,	EntertainmentBonusWithPower,	NuclearReactor,	Pillage)
SELECT	'BUILDING_LIME_TURKEY_LOKANTA',			RequiredPower,	ResourceTypeConvertedToPower,	PreventsFloods,	PreventsDrought,	BlocksCoastalFlooding,	CostMultiplierPerTile,	CostMultiplierPerSeaLevel,	Bridge,	CanalWonder,	0,								NuclearReactor,	Pillage
FROM Buildings_XP2
	WHERE BuildingType = 'BUILDING_FOOD_MARKET';

INSERT INTO MutuallyExclusiveBuildings
		(Building,								MutuallyExclusiveBuilding)
VALUES	('BUILDING_LIME_TURKEY_LOKANTA',		'BUILDING_FOOD_MARKET'),		
		('BUILDING_LIME_TURKEY_LOKANTA',		'BUILDING_SHOPPING_MALL'),
		('BUILDING_FOOD_MARKET',				'BUILDING_LIME_TURKEY_LOKANTA'),
		('BUILDING_SHOPPING_MALL',				'BUILDING_LIME_TURKEY_LOKANTA');

--		+2 Food from adjacent Farm Improvements. +1 Production from adjacent Farm Improvements if powered. 
INSERT INTO TraitModifiers
		(TraitType,											ModifierId)
VALUES	('TRAIT_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA',	'MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_FOOD'),
		('TRAIT_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA',	'MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_PROD');

INSERT INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId)
VALUES	('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_FOOD',		'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY',	'REQSET_LIME_TURKEY_CITY_HAS_LOKANTA'),--THEODORA_HOLY_SITE_ADJACENCY_FARM
		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_PROD',		'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY',	'REQSET_LIME_TURKEY_CITY_HAS_POWERED_LOKANTA');

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_FOOD',		'DistrictType',	'DISTRICT_NEIGHBORHOOD'),
		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_PROD',		'DistrictType',	'DISTRICT_NEIGHBORHOOD'),

		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_FOOD',		'YieldType',	'YIELD_FOOD'),
		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_PROD',		'YieldType',	'YIELD_PRODUCTION'),

		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_FOOD',		'ImprovementType',	'IMPROVEMENT_FARM'),
		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_PROD',		'ImprovementType',	'IMPROVEMENT_FARM'),

		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_FOOD',		'Amount',		2),
		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_PROD',		'Amount',		1),

		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_FOOD',		'Description',	'LOC_LIME_TURKEY_LOKANTA_FOOD'),
		('MOD_LIME_TURKEY_NEIGHBORHOODS_GET_FARM_PROD',		'Description',	'LOC_LIME_TURKEY_LOKANTA_PROD');

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('REQSET_LIME_TURKEY_CITY_HAS_LOKANTA',				'REQUIREMENTSET_TEST_ALL'),
		('REQSET_LIME_TURKEY_CITY_HAS_POWERED_LOKANTA',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('REQSET_LIME_TURKEY_CITY_HAS_LOKANTA',				'REQ_LIME_TURKEY_CITY_HAS_LOKANTA'),
		('REQSET_LIME_TURKEY_CITY_HAS_POWERED_LOKANTA',		'REQ_LIME_TURKEY_CITY_HAS_LOKANTA'),
		('REQSET_LIME_TURKEY_CITY_HAS_POWERED_LOKANTA',		'REQUIRES_CITY_IS_POWERED');

INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('REQ_LIME_TURKEY_CITY_HAS_LOKANTA',				'REQUIREMENT_PLAYER_HAS_BUILDING');

INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
VALUES	('REQ_LIME_TURKEY_CITY_HAS_LOKANTA',				'BuildingType',	'BUILDING_LIME_TURKEY_LOKANTA');

--		Grants +1 Amenity to adjacent Districts. 
INSERT INTO TraitModifiers
		(TraitType,											ModifierId)
VALUES	('TRAIT_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA',	'MOD_LIME_TURKEY_ALL_SPECIAL_DISTRICTS_AMENITY');

INSERT INTO Modifiers
		(ModifierId,										ModifierType,											SubjectRequirementSetId)
VALUES	('MOD_LIME_TURKEY_ALL_SPECIAL_DISTRICTS_AMENITY',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_DISTRICT_AMENITY',	'REQSET_LIME_TURKEY_DISTRICT_HAS_LOKANTA_ADJACENT'); --INDUSTRIAL_ZONE_ADDAMENITIES

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('MOD_LIME_TURKEY_ALL_SPECIAL_DISTRICTS_AMENITY',	'Amount',		1);

INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('REQSET_LIME_TURKEY_DISTRICT_HAS_LOKANTA_ADJACENT',	'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('REQSET_LIME_TURKEY_DISTRICT_HAS_LOKANTA_ADJACENT',	'REQ_LIME_TURKEY_DISTRICT_HAS_LOKANTA_ADJACENT');

INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('REQ_LIME_TURKEY_DISTRICT_HAS_LOKANTA_ADJACENT',	'REQUIREMENT_PLOT_ADJACENT_BUILDING_TYPE_MATCHES');

INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
VALUES	('REQ_LIME_TURKEY_DISTRICT_HAS_LOKANTA_ADJACENT',	'BuildingType',	'BUILDING_LIME_TURKEY_LOKANTA');

--		+50% Production towards city projects
--	For some reason Firaxis decided to put a 'ProjectType' argument in as well as an 'Amount' argument
--	so we need better sql inserts
INSERT INTO BuildingModifiers
		(BuildingType,									ModifierId)
SELECT	'BUILDING_LIME_TURKEY_LOKANTA',					'MOD_LIME_TURKEY_LOKANTA_PRODUCTION_'||ProjectType
FROM Projects;

INSERT INTO Modifiers
		(ModifierId,										ModifierType)
SELECT	'MOD_LIME_TURKEY_LOKANTA_PRODUCTION_'||ProjectType,	'MODIFIER_SINGLE_CITY_ADJUST_PROJECT_PRODUCTION'
FROM Projects;

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
SELECT	'MOD_LIME_TURKEY_LOKANTA_PRODUCTION_'||ProjectType,	'ProjectType',	ProjectType
FROM Projects;

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
SELECT	'MOD_LIME_TURKEY_LOKANTA_PRODUCTION_'||ProjectType,	'Amount',		50	
FROM Projects;

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,							Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_BUILDING',	'MOMENT_DATA_BUILDING',	'BUILDING_LIME_TURKEY_LOKANTA',			'LokantaHM.dds');
