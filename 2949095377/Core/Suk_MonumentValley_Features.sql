--==========================================================================================================================
-- Features
--==========================================================================================================================
	-- Types
	-------------------------------------
		INSERT INTO Types
				(Type,								Kind)
		VALUES	('FEATURE_SUK_MONUMENTVALLEY',		'KIND_FEATURE');
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

					SightThroughModifier,
					Impassable,

					NoRiver,
					NoCoast,
					Settlement,

					FollowRulesInWB,
					MinDistanceNW
				)
		VALUES	(
					'FEATURE_SUK_MONUMENTVALLEY',
					'LOC_FEATURE_SUK_MONUMENTVALLEY_NAME',
					'LOC_FEATURE_SUK_MONUMENTVALLEY_DESCRIPTION',
					'LOC_FEATURE_SUK_MONUMENTVALLEY_QUOTE',

					1,
					2,
					3,

					1,
					1,

					1,
					1,
					0,

					0,
					8
				);
	-------------------------------------
	-- Feature_ValidTerrains
	-------------------------------------
		INSERT INTO Feature_ValidTerrains
				(FeatureType, 					TerrainType)
		VALUES	('FEATURE_SUK_MONUMENTVALLEY',	'TERRAIN_DESERT');
	-------------------------------------
	-- Feature_NotAdjacentTerrains
	-------------------------------------
		INSERT INTO Feature_NotAdjacentTerrains
				(FeatureType, 					TerrainType)
		VALUES	('FEATURE_SUK_MONUMENTVALLEY',	'TERRAIN_COAST'),
				('FEATURE_SUK_MONUMENTVALLEY',	'TERRAIN_GRASS_MOUNTAIN'),
				('FEATURE_SUK_MONUMENTVALLEY',	'TERRAIN_PLAINS_MOUNTAIN'),
				('FEATURE_SUK_MONUMENTVALLEY',	'TERRAIN_DESERT_MOUNTAIN'),
				('FEATURE_SUK_MONUMENTVALLEY',	'TERRAIN_TUNDRA_MOUNTAIN'),
				('FEATURE_SUK_MONUMENTVALLEY',	'TERRAIN_SNOW_MOUNTAIN');
	-------------------------------------
	-- Feature_AdjacentYields
	-------------------------------------
		INSERT INTO Feature_AdjacentYields
				(FeatureType, 					YieldType,				YieldChange)
		VALUES	('FEATURE_SUK_MONUMENTVALLEY',	'YIELD_FAITH',			1),
				('FEATURE_SUK_MONUMENTVALLEY',	'YIELD_PRODUCTION',		1);
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
				'FEATURE_SUK_MONUMENTVALLEY',
				'Moment_Suk_MonumentValley'
			);
--==========================================================================================================================
-- Tiles of Monument Valley that are part of a National Park
-- also provide +2 [ICON_Gold] Gold to adjacent tiles
--==========================================================================================================================
	-- MODIFIERS
	----------------------------------------------------------------------------------------------------------------------------
		-- GameModifiers
		-------------------------------------
			INSERT INTO GameModifiers
					(ModifierId)
			VALUES	('SUK_MONUMENTVALLEY_GOLD_A'),
					('SUK_MONUMENTVALLEY_GOLD_B');
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
						'SUK_MONUMENTVALLEY_GOLD_A',
						'MODIFIER_GAME_ADJUST_PLOT_YIELD',
						'SUK_MONUMENTVALLEY_EXISTS',
						'SUK_NEXT_TO_MONUMENTVALLEY_PARK'
					),
					(
						'SUK_MONUMENTVALLEY_GOLD_B',
						'MODIFIER_GAME_ADJUST_PLOT_YIELD',
						'SUK_MONUMENTVALLEY_EXISTS',
						'SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK'
					);
		-------------------------------------
		-- ModifierArguments
		-------------------------------------
			INSERT INTO ModifierArguments
					(ModifierId,						Name,				Value)
			VALUES	('SUK_MONUMENTVALLEY_GOLD_A',		'YieldType',		'YIELD_GOLD'),
					('SUK_MONUMENTVALLEY_GOLD_A',		'Amount',			2),

					('SUK_MONUMENTVALLEY_GOLD_B',		'YieldType',		'YIELD_GOLD'),
					('SUK_MONUMENTVALLEY_GOLD_B',		'Amount',			2);
	----------------------------------------------------------------------------------------------------------------------------
	-- REQUIREMENTS
	----------------------------------------------------------------------------------------------------------------------------
		-- RequirementSets
		-------------------------------------
			INSERT INTO RequirementSets
					(RequirementSetId,							RequirementSetType)
			VALUES	('SUK_NEXT_TO_MONUMENTVALLEY_PARK',			'REQUIREMENTSET_TEST_ALL'),
					('SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK',		'REQUIREMENTSET_TEST_ALL'),
					('SUK_MONUMENTVALLEY_EXISTS',				'REQUIREMENTSET_TEST_ALL');
		-------------------------------------
		-- RequirementSetRequirements
		-------------------------------------
			INSERT INTO RequirementSetRequirements
					(RequirementSetId,							RequirementId)
			VALUES	('SUK_NEXT_TO_MONUMENTVALLEY_PARK',			'REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY'),
					('SUK_NEXT_TO_MONUMENTVALLEY_PARK',			'REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY_PARK'),

					('SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK',		'REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY'),
					('SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK',		'REQUIRES_SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK'),

					('SUK_MONUMENTVALLEY_EXISTS',				'REQUIRES_SUK_MONUMENTVALLEY_EXISTS');
		-------------------------------------
		-- Requirements
		-------------------------------------
			INSERT INTO Requirements
					(RequirementId, 									RequirementType)
			VALUES	('REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY',				'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
					('REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY_PARK',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
					('REQUIRES_SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK',	'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
					('REQUIRES_SUK_MONUMENTVALLEY_EXISTS',				'REQUIREMENT_MAP_HAS_FEATURE');
		-------------------------------------
		-- RequirementArguments
		-------------------------------------
			INSERT INTO RequirementArguments
					(RequirementId, 									Name,					Value)
			VALUES	('REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY', 			'FeatureType',			'FEATURE_SUK_MONUMENTVALLEY'),
					('REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY', 			'MinRange',				1),
					('REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY', 			'MaxRange',				1),

					('REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY_PARK', 		'PropertyName',			'Suk_Next_To_MonumentValley_Park'),
					('REQUIRES_SUK_NEXT_TO_MONUMENTVALLEY_PARK', 		'PropertyMinimum',		1),

					('REQUIRES_SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK', 	'PropertyName',			'Suk_Next_To_MonumentValley_Park'),
					('REQUIRES_SUK_NEXT_TO_TWO_MONUMENTVALLEY_PARK', 	'PropertyMinimum',		2),

					('REQUIRES_SUK_MONUMENTVALLEY_EXISTS', 				'FeatureType',			'FEATURE_SUK_MONUMENTVALLEY');
--==========================================================================================================================
-- and give the owner +1 [ICON_Favor] Diplomatic Favor.
--==========================================================================================================================
	-- MODIFIERS
	----------------------------------------------------------------------------------------------------------------------------
		-- GameModifiers
		-------------------------------------
			INSERT INTO GameModifiers
					(ModifierId)
			VALUES	('SUK_MONUMENTVALLEY_FAVOR_A'),
					('SUK_MONUMENTVALLEY_FAVOR_B'),
					('SUK_MONUMENTVALLEY_FAVOR_C');
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
						'SUK_MONUMENTVALLEY_FAVOR_A',
						'MODIFIER_MAJOR_PLAYERS_ATTACH_MODIFIER',
						'SUK_MONUMENTVALLEY_EXISTS',
						'SUK_OWNS_MONUMENTVALLEY'
					),
					(
						'SUK_MONUMENTVALLEY_FAVOR_B',
						'MODIFIER_MAJOR_PLAYERS_ATTACH_MODIFIER',
						'SUK_MONUMENTVALLEY_EXISTS',
						'SUK_OWNS_MONUMENTVALLEY'
					),
					(
						'SUK_MONUMENTVALLEY_FAVOR_C',
						'MODIFIER_MAJOR_PLAYERS_ATTACH_MODIFIER',
						'SUK_MONUMENTVALLEY_EXISTS',
						'SUK_OWNS_MONUMENTVALLEY'
					),


					(
						'SUK_MONUMENTVALLEY_FAVOR_A_MODIFIER',
						'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_FAVOR_PER_TURN',
						NULL,
						'SUK_OWNS_ONE_MONUMENTVALLEY_PARK'
					),
					(
						'SUK_MONUMENTVALLEY_FAVOR_B_MODIFIER',
						'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_FAVOR_PER_TURN',
						NULL,
						'SUK_OWNS_TWO_MONUMENTVALLEY_PARK'
					),
					(
						'SUK_MONUMENTVALLEY_FAVOR_C_MODIFIER',
						'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_FAVOR_PER_TURN',
						NULL,
						'SUK_OWNS_THREE_MONUMENTVALLEY_PARK'
					);
		-------------------------------------
		-- ModifierArguments
		-------------------------------------
			INSERT INTO ModifierArguments
					(ModifierId,								Name,				Value)
			VALUES	('SUK_MONUMENTVALLEY_FAVOR_A',				'ModifierId',		'SUK_MONUMENTVALLEY_FAVOR_A_MODIFIER'),
					('SUK_MONUMENTVALLEY_FAVOR_B',				'ModifierId',		'SUK_MONUMENTVALLEY_FAVOR_B_MODIFIER'),
					('SUK_MONUMENTVALLEY_FAVOR_C',				'ModifierId',		'SUK_MONUMENTVALLEY_FAVOR_C_MODIFIER'),

					('SUK_MONUMENTVALLEY_FAVOR_A_MODIFIER',		'Amount',			1),
					('SUK_MONUMENTVALLEY_FAVOR_B_MODIFIER',		'Amount',			1),
					('SUK_MONUMENTVALLEY_FAVOR_C_MODIFIER',		'Amount',			1);
	----------------------------------------------------------------------------------------------------------------------------
	-- REQUIREMENTS
	----------------------------------------------------------------------------------------------------------------------------
		-- RequirementSets
		-------------------------------------
			INSERT INTO RequirementSets
					(RequirementSetId,							RequirementSetType)
			VALUES	('SUK_OWNS_MONUMENTVALLEY',					'REQUIREMENTSET_TEST_ALL'),
					('SUK_OWNS_ONE_MONUMENTVALLEY_PARK',		'REQUIREMENTSET_TEST_ALL'),
					('SUK_OWNS_TWO_MONUMENTVALLEY_PARK',		'REQUIREMENTSET_TEST_ALL'),
					('SUK_OWNS_THREE_MONUMENTVALLEY_PARK',		'REQUIREMENTSET_TEST_ALL');
		-------------------------------------
		-- RequirementSetRequirements
		-------------------------------------
			INSERT INTO RequirementSetRequirements
					(RequirementSetId,							RequirementId)
			VALUES	('SUK_OWNS_MONUMENTVALLEY',					'REQUIRES_SUK_OWNS_MONUMENTVALLEY'),

					('SUK_OWNS_ONE_MONUMENTVALLEY_PARK',		'REQUIRES_CITY_HAS_PALACE'),
					('SUK_OWNS_ONE_MONUMENTVALLEY_PARK',		'REQUIRES_SUK_OWNS_ONE_MONUMENTVALLEY_PARK'),

					('SUK_OWNS_TWO_MONUMENTVALLEY_PARK',		'REQUIRES_CITY_HAS_PALACE'),
					('SUK_OWNS_TWO_MONUMENTVALLEY_PARK',		'REQUIRES_SUK_OWNS_TWO_MONUMENTVALLEY_PARK'),

					('SUK_OWNS_THREE_MONUMENTVALLEY_PARK',		'REQUIRES_CITY_HAS_PALACE'),
					('SUK_OWNS_THREE_MONUMENTVALLEY_PARK',		'REQUIRES_SUK_OWNS_THREE_MONUMENTVALLEY_PARK');
		-------------------------------------
		-- Requirements
		-------------------------------------
			INSERT INTO Requirements
					(RequirementId, 									RequirementType)
			VALUES	('REQUIRES_SUK_OWNS_MONUMENTVALLEY',				'REQUIREMENT_PLAYER_HAS_FEATURE'),
					('REQUIRES_SUK_OWNS_ONE_MONUMENTVALLEY_PARK',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
					('REQUIRES_SUK_OWNS_TWO_MONUMENTVALLEY_PARK',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
					('REQUIRES_SUK_OWNS_THREE_MONUMENTVALLEY_PARK',		'REQUIREMENT_PLOT_PROPERTY_MATCHES');
		-------------------------------------
		-- RequirementArguments
		-------------------------------------
			INSERT INTO RequirementArguments
					(RequirementId, 									Name,					Value)
			VALUES	('REQUIRES_SUK_OWNS_MONUMENTVALLEY', 				'FeatureType',			'FEATURE_SUK_MONUMENTVALLEY'),

					('REQUIRES_SUK_OWNS_ONE_MONUMENTVALLEY_PARK', 		'PropertyName',			'Suk_Owns_MonumentValley_Park'),
					('REQUIRES_SUK_OWNS_ONE_MONUMENTVALLEY_PARK', 		'PropertyMinimum',		1),

					('REQUIRES_SUK_OWNS_TWO_MONUMENTVALLEY_PARK', 		'PropertyName',			'Suk_Owns_MonumentValley_Park'),
					('REQUIRES_SUK_OWNS_TWO_MONUMENTVALLEY_PARK', 		'PropertyMinimum',		2),

					('REQUIRES_SUK_OWNS_THREE_MONUMENTVALLEY_PARK', 	'PropertyName',			'Suk_Owns_MonumentValley_Park'),
					('REQUIRES_SUK_OWNS_THREE_MONUMENTVALLEY_PARK', 	'PropertyMinimum',		3);
--==========================================================================================================================
--==========================================================================================================================