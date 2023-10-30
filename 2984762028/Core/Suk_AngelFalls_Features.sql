--==========================================================================================================================
-- Features
--==========================================================================================================================
	-- Types
	-------------------------------------
		INSERT INTO Types
				(Type,								Kind)
		VALUES	('FEATURE_SUK_ANGELFALLS',		'KIND_FEATURE');
	-------------------------------------
	-- Features
	-------------------------------------
		INSERT INTO Features
				(
					FeatureType,
					Name,
					Description,
					Quote,

					NaturalWonder,
					Appeal,
					Tiles,
					AddsFreshWater,

					SightThroughModifier,
					Impassable,

					NoRiver,
					NoCoast,
					Settlement,

					FollowRulesInWB,
					MinDistanceNW,

					CustomPlacement
				)
		VALUES	(
					'FEATURE_SUK_ANGELFALLS',
					'LOC_FEATURE_SUK_ANGELFALLS_NAME',
					'LOC_FEATURE_SUK_ANGELFALLS_DESCRIPTION',
					'LOC_FEATURE_SUK_ANGELFALLS_QUOTE',

					1,
					2,
					1,
					1,

					1,
					1,

					1,
					1,
					0,

					0,
					8,

					"PLACEMENT_SUK_ANGELFALLS"
				);
	-------------------------------------
	-- Feature_ValidTerrains
	-------------------------------------
		INSERT INTO Feature_ValidTerrains
				(FeatureType, 					TerrainType)
		VALUES	('FEATURE_SUK_ANGELFALLS',		'TERRAIN_GRASS_MOUNTAIN'),
				('FEATURE_SUK_ANGELFALLS',		'TERRAIN_GRASS_HILLS'),
				('FEATURE_SUK_ANGELFALLS',		'TERRAIN_GRASS'),
				('FEATURE_SUK_ANGELFALLS',		'TERRAIN_PLAINS_MOUNTAIN'),
				('FEATURE_SUK_ANGELFALLS',		'TERRAIN_PLAINS_HILLS'),
				('FEATURE_SUK_ANGELFALLS',		'TERRAIN_PLAINS');
	-------------------------------------
	-- Feature_AdjacentFeatures
	-------------------------------------
		-- INSERT INTO Feature_AdjacentFeatures
		-- 		(FeatureType, 					FeatureTypeAdjacent)
		-- VALUES	('FEATURE_SUK_ANGELFALLS',		'FEATURE_JUNGLE');
	-------------------------------------
	-- MomentIllustrations
	-------------------------------------
		INSERT INTO MomentIllustrations
			(
				MomentIllustrationType,
				MomentDataType,
				GameDataType,
				Texture
			)
		VALUES
			(
				'MOMENT_ILLUSTRATION_NATURAL_WONDER',
				'MOMENT_DATA_FEATURE',
				'FEATURE_SUK_ANGELFALLS',
				'Moment_Suk_AngelFalls'
			);
--==========================================================================================================================
-- This city receives +2 Gold from each unimproved feature.
-- After Flight is researched receive +1 Tourism on all of this city’s tiles with a feature or natural wonder.
-- +2 Appeal from Rainforest tiles in the city.
--==========================================================================================================================
		-- Types
		-------------------------------------
			INSERT OR IGNORE INTO Types
					(Type,													Kind)
			VALUES	('MODIFIER_CITY_ADJUST_FEATURE_APPEAL_MODIFIER',		'KIND_MODIFIER');
		-------------------------------------
		-- DynamicModifiers
		-------------------------------------
			INSERT OR IGNORE INTO DynamicModifiers
					(ModifierType,											CollectionType,				EffectType)
			VALUES	('MODIFIER_CITY_ADJUST_FEATURE_APPEAL_MODIFIER',		'COLLECTION_OWNER',			'EFFECT_ADJUST_FEATURE_APPEAL_MODIFIER');
	----------------------------------------------------------------------------------------------------------------------------
	-- MODIFIERS
	----------------------------------------------------------------------------------------------------------------------------
		-- GameModifiers
		-------------------------------------
			INSERT INTO GameModifiers
					(ModifierId)
			VALUES	('SUK_ANGELFALLS_GOLD'),
					('SUK_ANGELFALLS_APPEAL'),
					('SUK_ANGELFALLS_TOURISM');
		-------------------------------------
		-- Modifiers
		-------------------------------------
			INSERT INTO Modifiers
					(
						ModifierId,
						ModifierType,
						OwnerRequirementSetId,
						SubjectRequirementSetId
					)
			VALUES
					(
						'SUK_ANGELFALLS_GOLD',
						'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
						'SUK_ANGELFALLS_EXISTS',
						'SUK_CITY_HAS_ANGELFALLS'
					),
					(
						'SUK_ANGELFALLS_APPEAL',
						'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
						'SUK_ANGELFALLS_EXISTS',
						'SUK_CITY_HAS_ANGELFALLS'
					),
					(
						'SUK_ANGELFALLS_TOURISM',
						'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
						'SUK_ANGELFALLS_EXISTS',
						'SUK_CITY_HAS_ANGELFALLS_FLIGHT'
					),
					------------------------------------------------
					(
						'SUK_ANGELFALLS_GOLD_MODIFIER',
						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',
						NULL,
						'PLOT_HAS_ANY_FEATURE_NO_IMPROVEMENTS'
					),
					(
						'SUK_ANGELFALLS_APPEAL_MODIFIER',
						'MODIFIER_CITY_ADJUST_FEATURE_APPEAL_MODIFIER',
						NULL,
						NULL
					),
					(
						'SUK_ANGELFALLS_TOURISM_MODIFIER',
						'MODIFIER_SINGLE_CITY_ADJUST_TOURISM_PER_FEATURE',
						NULL,
						NULL
					);
		-------------------------------------
		-- ModifierArguments
		-------------------------------------
			INSERT INTO ModifierArguments
					(ModifierId,							Name,					Value)
			VALUES	('SUK_ANGELFALLS_GOLD',					'ModifierId',			'SUK_ANGELFALLS_GOLD_MODIFIER'),
					('SUK_ANGELFALLS_GOLD_MODIFIER',		'YieldType',			'YIELD_GOLD'),
					('SUK_ANGELFALLS_GOLD_MODIFIER',		'Amount',				2),

					('SUK_ANGELFALLS_APPEAL',				'ModifierId',			'SUK_ANGELFALLS_APPEAL_MODIFIER'),
					('SUK_ANGELFALLS_APPEAL_MODIFIER',		'FeatureType',			'FEATURE_JUNGLE'),
					('SUK_ANGELFALLS_APPEAL_MODIFIER',		'Amount',				2),

					('SUK_ANGELFALLS_TOURISM',				'ModifierId',			'SUK_ANGELFALLS_TOURISM_MODIFIER'),
					('SUK_ANGELFALLS_TOURISM_MODIFIER',		'Amount',				1);
	----------------------------------------------------------------------------------------------------------------------------
	-- REQUIREMENTS
	----------------------------------------------------------------------------------------------------------------------------
		-- RequirementSets
		-------------------------------------
		INSERT INTO RequirementSets
				(RequirementSetId,							RequirementSetType)
		VALUES	('SUK_CITY_HAS_ANGELFALLS',					'REQUIREMENTSET_TEST_ALL'),
				('SUK_CITY_HAS_ANGELFALLS_FLIGHT',			'REQUIREMENTSET_TEST_ALL'),

				('SUK_ANGELFALLS_EXISTS',					'REQUIREMENTSET_TEST_ALL');
		-------------------------------------
		-- RequirementSetRequirements
		-------------------------------------
		INSERT INTO RequirementSetRequirements
				(RequirementSetId,							RequirementId)
		VALUES	('SUK_CITY_HAS_ANGELFALLS',					'REQUIRES_SUK_CITY_HAS_ANGELFALLS'),
				('SUK_CITY_HAS_ANGELFALLS_FLIGHT',			'REQUIRES_SUK_CITY_HAS_ANGELFALLS'),
				('SUK_CITY_HAS_ANGELFALLS_FLIGHT',			'REQUIRES_PLAYER_HAS_FLIGHT'),

				('SUK_ANGELFALLS_EXISTS',					'REQUIRES_MAP_HAS_SUK_ANGELFALLS');
		-------------------------------------
		-- Requirements
		-------------------------------------
		INSERT INTO Requirements
				(RequirementId, 						RequirementType)
		VALUES	('REQUIRES_SUK_CITY_HAS_ANGELFALLS',	'REQUIREMENT_CITY_HAS_FEATURE'),
				('REQUIRES_MAP_HAS_SUK_ANGELFALLS',		'REQUIREMENT_MAP_HAS_FEATURE');
		-------------------------------------
		-- RequirementArguments
		-------------------------------------
		INSERT INTO RequirementArguments
				(RequirementId, 						Name,				Value)
		VALUES	('REQUIRES_SUK_CITY_HAS_ANGELFALLS', 	'FeatureType',		'FEATURE_SUK_ANGELFALLS'),
				('REQUIRES_MAP_HAS_SUK_ANGELFALLS', 	'FeatureType',		'FEATURE_SUK_ANGELFALLS');
--==========================================================================================================================
--==========================================================================================================================