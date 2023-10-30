-- Port Lime - Turkey - UU
-- Author: Lime
-- DateCreated: 5/26/2023 8:53:38 AM
--------------------------------------------------------------
--	UU: Kuva-Yi Düzenli
--		Replaces the Infantry unit. -5 Combat Strength when attacking, +5 Combat Strength when defending.
--		Cheaper, requires no oil, and gains tripled strength and movement bonuses from Great Generals.
--
--------------------------------------------------------------
INSERT INTO Types
		(Type,											Kind)
VALUES	('TRAIT_CIVILIZATION_UNIT_LIME_TURKEY_DUZENLI',	'KIND_TRAIT'),
		('ABILITY_LIME_TURKEY_GREAT_OFFENSIVE',			'KIND_ABILITY'),
		('ABILITY_LIME_TURKEY_DUZENLI',					'KIND_ABILITY'),
		('UNIT_LIME_TURKEY_DUZENLI',					'KIND_UNIT');

INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType)
VALUES	('TRAIT_CIVILIZATION_UNIT_LIME_TURKEY_DUZENLI',	'CIVILIZATION_LIME_TURKEY');

INSERT INTO Traits
		(TraitType,										Name,									Description)
VALUES	('TRAIT_CIVILIZATION_UNIT_LIME_TURKEY_DUZENLI',	'LOC_UNIT_LIME_TURKEY_DUZENLI_NAME',	NULL);

INSERT INTO Units
		(UnitType,					Name,									Description,								BaseSightRange,	BaseMoves,	Combat,		RangedCombat,	Range,	Bombard,	Domain,	FormationClass,	Cost,		FoundCity,	FoundReligion,	MakeTradeRoute,	EvangelizeBelief,	LaunchInquisition,	RequiresInquisition,	BuildCharges,	ReligiousStrength,	ReligionEvictPercent,	SpreadCharges,	ReligiousHealCharges,	ExtractsArtifacts,	CanCapture,	CanRetreatWhenCaptured,	TraitType,												AllowBarbarians,	CostProgressionModel,	CostProgressionParam1,	PromotionClass,	InitialLevel,	NumRandomChoices,	PrereqTech, PrereqCivic,	PrereqDistrict,	PrereqPopulation,	LeaderType,	CanTrain,	StrategicResource,	PurchaseYield,	MustPurchase,	Maintenance,	Stackable,	AirSlots,	CanTargetAir,	PseudoYieldType,	ZoneOfControl,	AntiAirCombat,	Spy,	WMDCapable,	ParkCharges,	IgnoreMoves,	TeamVisibility,	ObsoleteTech,	ObsoleteCivic,	MandatoryObsoleteTech,	MandatoryObsoleteCivic,	AdvisorType,	EnabledByReligion,	TrackReligion,	DisasterCharges,	UseMaxMeleeTrainedStrength,	ImmediatelyName,	CanEarnExperience)
SELECT	'UNIT_LIME_TURKEY_DUZENLI',	'LOC_UNIT_LIME_TURKEY_DUZENLI_NAME',	'LOC_UNIT_LIME_TURKEY_DUZENLI_DESC',		BaseSightRange,	BaseMoves,	Combat-7,	RangedCombat,	Range,	Bombard,	Domain,	FormationClass,	Cost*0.75,	FoundCity,	FoundReligion,	MakeTradeRoute,	EvangelizeBelief,	LaunchInquisition,	RequiresInquisition,	BuildCharges,	ReligiousStrength,	ReligionEvictPercent,	SpreadCharges,	ReligiousHealCharges,	ExtractsArtifacts,	CanCapture,	CanRetreatWhenCaptured,	'TRAIT_CIVILIZATION_UNIT_LIME_TURKEY_DUZENLI',		AllowBarbarians,	CostProgressionModel,	CostProgressionParam1,	PromotionClass,	InitialLevel,	NumRandomChoices,	NULL, 'CIVIC_NATIONALISM',	PrereqDistrict,	PrereqPopulation,	LeaderType,	CanTrain,	NULL,	PurchaseYield,	MustPurchase,	Maintenance,	Stackable,	AirSlots,	CanTargetAir,	PseudoYieldType,	ZoneOfControl,	AntiAirCombat,	Spy,	WMDCapable,	ParkCharges,	IgnoreMoves,	TeamVisibility,	ObsoleteTech,	ObsoleteCivic,	MandatoryObsoleteTech,	MandatoryObsoleteCivic,	AdvisorType,	EnabledByReligion,	TrackReligion,	DisasterCharges,	UseMaxMeleeTrainedStrength,	ImmediatelyName,	CanEarnExperience
FROM Units
	WHERE UnitType = 'UNIT_INFANTRY';

INSERT INTO UnitReplaces
		(CivUniqueUnitType,					ReplacesUnitType)
VALUES	('UNIT_LIME_TURKEY_DUZENLI',		'UNIT_INFANTRY');

INSERT INTO Tags
		(Tag,								Vocabulary)
VALUES	('CLASS_LIME_TURKEY_DUZENLI',		'ABILITY_CLASS');

INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('UNIT_LIME_TURKEY_DUZENLI',			'CLASS_LIME_TURKEY_DUZENLI'),
		('ABILITY_LIME_TURKEY_GREAT_OFFENSIVE',	'CLASS_LIME_TURKEY_DUZENLI');

INSERT INTO TypeTags
		(Type,								Tag)
SELECT 'UNIT_LIME_TURKEY_DUZENLI',	Tag
FROM TypeTags
	WHERE Type = 'UNIT_INFANTRY';

INSERT INTO UnitAiInfos
		(UnitType,							AiType)
SELECT 'UNIT_LIME_TURKEY_DUZENLI',		AiType
FROM UnitAiInfos
	WHERE UnitType = 'UNIT_INFANTRY';

INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,											Description,									Inactive,	ShowFloatTextWhenEarned,	Permanent)
VALUES	('ABILITY_LIME_TURKEY_GREAT_OFFENSIVE',	'LOC_ABILITY_LIME_TURKEY_GREAT_OFFENSIVE_NAME',	'LOC_ABILITY_LIME_TURKEY_GREAT_OFFENSIVE_DESC',	1,			0,							0);

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('ABILITY_LIME_TURKEY_GREAT_OFFENSIVE',	'MOD_LIME_TURKEY_GREAT_OFFENSIVE_STRENGTH'),
		('ABILITY_LIME_TURKEY_GREAT_OFFENSIVE',	'MOD_LIME_TURKEY_GREAT_OFFENSIVE_MOVEMENT');

INSERT INTO ModifierStrings
		(ModifierId,									Context,				Text)
VALUES	('MOD_LIME_TURKEY_GREAT_OFFENSIVE_STRENGTH',	'Summary',				'LOC_LIME_TURKEY_GREAT_OFFENSIVE_STRENGTH_STRING');

INSERT INTO Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId)
VALUES	('MOD_LIME_TURKEY_GREAT_OFFENSIVE_STRENGTH',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		NULL),
		('MOD_LIME_TURKEY_GREAT_OFFENSIVE_MOVEMENT',	'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',		NULL);

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value)
VALUES	('MOD_LIME_TURKEY_GREAT_OFFENSIVE_STRENGTH',	'Amount',			10),
		('MOD_LIME_TURKEY_GREAT_OFFENSIVE_MOVEMENT',	'Amount',			2);

INSERT INTO GreatPersonIndividualBirthModifiers
		(GreatPersonIndividualType,						ModifierId)
SELECT	GreatPersonIndividualType,						'MOD_LIME_TURKEY_GREAT_OFFENSIVE_ATTACH'
FROM GreatPersonIndividuals
	WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL' AND EraType IN ('ERA_MODERN', 'ERA_ATOMIC');

INSERT INTO Modifiers
		(ModifierId,									ModifierType,							SubjectRequirementSetId)
VALUES	('MOD_LIME_TURKEY_GREAT_OFFENSIVE_ATTACH',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	'AOE_MODERN_LAND_REQUIREMENTS');

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value)
VALUES	('MOD_LIME_TURKEY_GREAT_OFFENSIVE_ATTACH',		'AbilityType',		'ABILITY_LIME_TURKEY_GREAT_OFFENSIVE');

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,		GameDataType,				Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',	'UNIT_LIME_TURKEY_DUZENLI',	'kuvayimilliye_hm.dds');